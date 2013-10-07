;;; Find and load the correct package.el
(require 'package)

;; 增加源地址
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; 定义require-package函数
(defun require-package (package)
  (unless package-archive-contents (package-refresh-contents))
  (or (package-installed-p package) (package-install package)))

(provide 'init-elpa)
