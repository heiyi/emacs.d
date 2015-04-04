(require 'package)

;; Use Melpa for most packages
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Installation of packages
(defun require-package (package)
  (unless package-archive-contents (package-refresh-contents))
  (or (package-installed-p package) (package-install package)))

(provide 'init-elpa)
