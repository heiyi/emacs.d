(require-package 'w3m)

(setq w3m-home-page "https://www.google.com.hk/")

;; show images in the browser
(setq w3m-default-display-inline-images 1)
(setq browse-url-browser-function 'w3m-browse-url)

(provide 'init-w3m)
