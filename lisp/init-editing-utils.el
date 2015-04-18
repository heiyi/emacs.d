;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------
(setq-default
 make-backup-files nil
 auto-save-default nil
 column-number-mode t
 indent-tabs-mode nil
 show-trailing-whitespace t    ;; delete-trailing-space
 ediff-window-setup-function 'ediff-setup-windows-plain
 visible-bell t)

(fset 'yes-or-no-p 'y-or-n-p)

;; Auto reload files
(global-auto-revert-mode 1)

;; Enable ShowParenMode
(setq show-paren-delay 0)
(show-paren-mode 1)

;;----------------------------------------------------------------------------
;; Handy key bindings
;;----------------------------------------------------------------------------
(cua-selection-mode t)

;; C-h v yas-snippet-dirs
;(require-package 'yasnippet)
;(yas-global-mode 1)
;(setq yas-prompt-functions '(yas-ido-prompt yas-completing-prompt))

(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; p n b f t
(require-package 'undo-tree)
(global-undo-tree-mode)

(require-package 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-mode)

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
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;;----------------------------------------------------------------------------
;; Function
;;----------------------------------------------------------------------------
(defun sudo-save ()
  (interactive)
  (if (not buffer-file-name)
      (write-file (concat "/sudo:root@localhost:" (ido-read-file-name "File:")))
    (write-file (concat "/sudo:root@localhost:" buffer-file-name))))

(provide 'init-editing-utils)
