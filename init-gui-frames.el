;; Theme
(load-theme 'wombat 1)

(setq use-file-dialog nil)   ;;不弹出对话框
(setq use-dialog-box nil)    ;;关闭对话框提示，改用下方minibuffer提示错误信息
(setq inhibit-startup-screen t)  ;;close startup screen

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

;; English Font
(set-face-attribute
'default nil :font "Monaco 11")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "文泉驿微米黑" :size 15)))

;; Fullscreen--->F11
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

(global-set-key [f11] 'fullscreen)

(provide 'init-gui-frames)
