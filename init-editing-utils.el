;;系统内置的括号补全
(electric-pair-mode t)

;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 case-fold-search t            ;;搜索时小写不敏感，大写敏感
 column-number-mode t          ;;列号
 compilation-scroll-output t   ;;编译结果输出显示
 delete-selection-mode t       ;;Backspace删除选中文字
 ediff-split-window-function 'split-window-horizontally  ;;左右两窗口比较文件
 ediff-window-setup-function 'ediff-setup-windows-plain  ;;比较文件时在同一frame打开所有窗口
 indent-tabs-mode nil
 make-backup-files nil
 size-indication-mode t        ;;显示文件大小
 save-interprogram-paste-before-kill t       ;;保存剪贴板内容
 scroll-preserve-screen-position 'always     ;;平滑滚动,鼠标定位
 show-trailing-whitespace t    ;;显示尾部空格，可以用delete-trailing-space删掉

 truncate-lines nil
 truncate-partial-width-windows nil  ;;强制自动换行
 visible-bell t)               ;;关闭响铃

(global-auto-revert-mode)      ;;自动加载外部修改的文件
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; But don't show trailing whitespace in SQLi, inf-ruby etc.
(dolist (hook '(term-mode-hook comint-mode-hook compilation-mode-hook))
  (add-hook hook
            (lambda () (setq show-trailing-whitespace nil))))
;;----------------------------------------------------------------------------
(transient-mark-mode t)  ;;高亮显示标记内容

;; undo-tree
(require-package 'undo-tree)
(global-undo-tree-mode)

;;----------------------------------------------------------------------------
;; Enable ShowParenMode
;;----------------------------------------------------------------------------
(setq show-paren-delay 0)
(show-paren-mode 1)

;;----------------------------------------------------------------------------
;; Expand region
;;----------------------------------------------------------------------------
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;;----------------------------------------------------------------------------
;; C-x C-u, C-x C-l 更改标记内大小写
;;----------------------------------------------------------------------------
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; 分页符C-x[, C-x]跳转, C-q C-l插入分页符, C-x n w exit narrow
(put 'narrow-to-region 'disabled nil)    ;;C-x n n
(put 'narrow-to-page 'disabled nil)      ;;C-x n p
(put 'narrow-to-defun 'disabled nil)     ;;C-x n d

;;----------------------------------------------------------------------------
;; Rectangle selections, and overwrite text when the selection is active
;;----------------------------------------------------------------------------
(cua-selection-mode t)                  ;矩形操作, C-Enter

;;----------------------------------------------------------------------------
;; Handy key bindings
;;----------------------------------------------------------------------------
(global-set-key (kbd "C-c j") 'join-line)

(global-set-key (kbd "C-.") 'set-mark-command)

(require-package 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; 多点编辑, it's cool
(require-package 'multiple-cursors)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(defun kill-back-to-indentation ()
  "Kill from point back to the first non-whitespace character on the line."
  (interactive)
  (let ((prev-pos (point)))
    (back-to-indentation)
    (kill-region (point) prev-pos)))

(global-set-key (kbd "C-M-<backspace>") 'kill-back-to-indentation)

;;----------------------------------------------------------------------------
;; Shift lines up and down with M-up and M-down.
;;----------------------------------------------------------------------------
(require-package 'move-text)
(move-text-default-bindings)

;;----------------------------------------------------------------------------
;; 跳转匹配括号  C-M-u
;;----------------------------------------------------------------------------
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
