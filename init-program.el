;; For Css
(require-package 'rainbow-mode)
(dolist (hook '(css-mode-hook html-mode-hook))
   (add-hook hook 'rainbow-mode))

(provide 'init-program)
