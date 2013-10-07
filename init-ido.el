;; Use C-f during file selection to switch to regular find-file && C-j
(ido-mode t)
(ido-everywhere t)

(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length 0)  ;; 自动搜索文件名

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)

;; Smex
(require-package 'smex)
(global-set-key (kbd "M-x") 'smex)

;; Hippie expand
(global-set-key (kbd "M-/") 'hippie-expand)

(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

(provide 'init-ido)
