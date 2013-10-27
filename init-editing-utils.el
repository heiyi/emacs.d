;; 系统内置括号补全
(electric-pair-mode t)

;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 make-backup-files nil
 auto-save-default nil         ;;don't save #file#
 column-number-mode t          ;;列号
 indent-tabs-mode nil          ;;关闭Tab缩进
 size-indication-mode t        ;;显示文件大小
 show-trailing-whitespace t    ;;显示尾部空格，可以用delete-trailing-space删除
 ediff-window-setup-function 'ediff-setup-windows-plain  ;;don't start another frame
 visible-bell t)               ;;关闭响铃

;; yes or no ---> y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; 自动加载外部修改文件
(global-auto-revert-mode 1)

;; No cursor Blinking
(blink-cursor-mode 0)

;; Enable ShowParenMode
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Nicer naming of buffers for files with identical names
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator " • ")

;; But don't show trailing whitespace in SQLi, inf-ruby etc.
(dolist (hook '(term-mode-hook comint-mode-hook compilation-mode-hook))
  (add-hook hook
            (lambda () (setq show-trailing-whitespace nil))))
;;----------------------------------------------------------------------------
;; Emacs is Magic
;;----------------------------------------------------------------------------
;; Expand region
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; undo-tree
(require-package 'undo-tree)
(global-undo-tree-mode)

;; C-x C-u, C-x C-l 标记内容大小写切换
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; 矩形操作, C-Enter
(cua-selection-mode t)

;; Go to char--->C-;
(require-package 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; 多点编辑, it's cool
(require-package 'multiple-cursors)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Handy key bindings
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-.") 'set-mark-command)

;; C-x C-b ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; C-o 搜索出匹配行
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;; 分页符C-x[, C-x]跳转, C-q C-l插入分页符, C-x n w exit narrow
(put 'narrow-to-region 'disabled nil)    ;;C-x n n
;;----------------------跳转匹配括号  C-M-u------------------------------
(defun backward-up-sexp (arg)
  "Jump up to the start of the ARG'th enclosing sexp."
  (interactive "p")
  (let ((ppss (syntax-ppss)))
    (cond ((elt ppss 3)
           (goto-char (elt ppss 8))
           (backward-up-sexp (1- arg)))
          ((backward-up-list arg)))))

(global-set-key [remap backward-up-list] 'backward-up-sexp)

(provide 'init-editing-utils)
