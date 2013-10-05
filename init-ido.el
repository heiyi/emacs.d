;; Use C-f during file selection to switch to regular find-file && C-j
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)

(require-package 'smex)
(global-set-key (kbd "M-x") 'smex)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)

(provide 'init-ido)
