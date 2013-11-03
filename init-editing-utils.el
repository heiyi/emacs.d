;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 make-backup-files nil
 auto-save-default nil
 column-number-mode t
 indent-tabs-mode nil
 size-indication-mode t
 show-trailing-whitespace t     ;;delete-trailing-space
 ediff-window-setup-function 'ediff-setup-windows-plain
 visible-bell t)

(electric-pair-mode t)

(setq ispell-dictionary "american")

(fset 'yes-or-no-p 'y-or-n-p)

;; Auto reload files
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

;;----------------------------------------------------------------------------
;; Emacs is Magic
;;----------------------------------------------------------------------------
;; Expand region
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; undo-tree
(require-package 'undo-tree)
(global-undo-tree-mode)

;; C-x C-u, C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; C-Enter
(cua-selection-mode t)

;; Go to char--->C-;
(require-package 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; it's cool
(require-package 'multiple-cursors)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Handy key bindings
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-.") 'set-mark-command)

;; C-x C-b ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; C-o
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;; Move page --> C-x[, C-x], inset ^p --> C-q C-l, C-x n w exit narrow
(put 'narrow-to-region 'disabled nil)    ;;C-x n n
;;-------------------------- C-M-u------------------------------------
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
