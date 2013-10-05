;; rainbow-mode needs color.el, bundled with Emacs >= 24.
(require-package 'rainbow-mode)

(dolist (hook '(css-mode-hook html-mode-hook))
   (add-hook hook 'rainbow-mode))

(provide 'init-css)
