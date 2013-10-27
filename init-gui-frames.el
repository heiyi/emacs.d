;; Theme
(load-theme 'wombat 1)

;; Close startup screen
(setq inhibit-startup-screen t)

;; UI
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; Show a marker in the left fringe for lines not in the buffer
(set-default 'indicate-empty-lines t)

;; Title
(setq frame-title-format
      '("^w^  " (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Fullscreen--->F11
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

(global-set-key [f11] 'fullscreen)

(provide 'init-gui-frames)
