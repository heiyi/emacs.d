;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 make-backup-files nil
 auto-save-default nil
 column-number-mode t
 indent-tabs-mode nil
 size-indication-mode t
 show-trailing-whitespace t    ;; delete-trailing-space
 ediff-window-setup-function 'ediff-setup-windows-plain
 visible-bell t)

(blink-cursor-mode 0)

(fset 'yes-or-no-p 'y-or-n-p)

(setq ispell-dictionary "american")

;; Auto reload files
(global-auto-revert-mode 1)

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
(cua-selection-mode t)

;; C-h v yas-snippet-dirs
(require-package 'yasnippet)
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-ido-prompt
                             yas-completing-prompt))

(require-package 'god-mode)
(require 'god-mode)
(global-set-key (kbd "<escape>") 'god-local-mode)
(define-key god-local-mode-map (kbd "z") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require-package 'undo-tree)
(global-undo-tree-mode)

(require-package 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

;; it's cool
(require-package 'multiple-cursors)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; C-x C-u, C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; C-x n n --> C-x n w, inset ^L --> C-q C-l
(put 'narrow-to-region 'disabled nil)

;; Handy key bindings
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

(provide 'init-editing-utils)
