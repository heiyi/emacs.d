(require-package 'yasnippet)
(require 'yasnippet)

;; C-h v yas-snippet-dirs
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; 文本提示候选项
(setq yas-prompt-functions '(yas-ido-prompt
                             yas-completing-prompt))

(provide 'init-yasnippet)
