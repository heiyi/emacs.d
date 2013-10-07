(require-package 'yasnippet)

;; C-h v yas-snippet-dirs
(yas-global-mode 1)

;; 文本提示候选项
(setq yas-prompt-functions '(yas-ido-prompt
                             yas-completing-prompt))

(provide 'init-yasnippet)
