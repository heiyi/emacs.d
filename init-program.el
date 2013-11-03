;; For Lisp
(require-package 'paredit)

(add-hook 'scheme-mode-hook      #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook  #'enable-paredit-mode)

;; For Css
(require-package 'rainbow-mode)

(dolist (hook '(css-mode-hook html-mode-hook))
  (add-hook hook 'rainbow-mode))

(provide 'init-program)
