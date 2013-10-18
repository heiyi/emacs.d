;; Basic ruby setup
(require-package 'ruby-mode)

(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

(setq ruby-use-encoding-map nil)

;; Inferior ruby, run irb in emacs, M-x run ruby
(require-package 'inf-ruby)

;; Ruby compilation
(require-package 'ruby-compilation)
(add-hook 'ruby-mode-hook (lambda () (local-set-key [f7] 'ruby-compilation-this-buffer)))

;; 使用rvm安装ruby, emacs识别不了, 需安装rvm.el
(require-package 'rvm)

;; PhP-Mode
(require-package 'php-mode)

;; For Css
(require-package 'rainbow-mode)
(dolist (hook '(css-mode-hook html-mode-hook))
   (add-hook hook 'rainbow-mode))

(provide 'init-ruby-mode)
