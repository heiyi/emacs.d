;;; Basic ruby setup
(require-package 'ruby-mode)

(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

(setq ruby-use-encoding-map nil)

;;; Inferior ruby, run irb in emacs, M-x run ruby
(require-package 'inf-ruby)

;;; Ruby compilation
(require-package 'ruby-compilation)

;;; 若使用rvm安装ruby, emacs识别不了, 需要安装rvm插件
(require-package 'rvm)

;;; Rails Rinari
(require-package 'rinari)
(global-rinari-mode)

;;; Php-Mode
(require-package 'php-mode)

(provide 'init-ruby-mode)
