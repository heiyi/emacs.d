;; Theme
(load-theme 'tango-dark 1)

;; Close startup screen
(setq inhibit-startup-screen t)

;; UI
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; Show a marker in the left fringe for lines not in the buffer
(set-default 'indicate-empty-lines t)

;; Title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Navigate window layouts with "C-c <left>" and "C-c <right>"
(winner-mode 1)

(provide 'init-gui)
