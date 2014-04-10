;; Theme
(load-theme 'wombat 1)

;; Close startup screen
(setq inhibit-startup-screen t)

;; UI
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Show a marker in the left fringe for lines not in the buffer
(set-default 'indicate-empty-lines t)

;; Title
(setq frame-title-format
      '("o.O?   ▂ξ   " (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Navigate window layouts with "C-c <left>" and "C-c <right>"
(winner-mode 1)

(provide 'init-gui)
