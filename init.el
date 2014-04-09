;; reference purcell's emacs configuration
(add-to-list 'load-path "~/.emacs.d/")

;; Machinery for installing required
(require 'init-elpa)

;; Load configs for specific features and modes
(require 'init-gui)               ;; UI, Winner-Mode
(require 'init-ido)               ;; Smex && Hippie Expand
(require 'init-editing-utils)	  ;; C->, C-c C-<, M-m, C-c j, C-;
;;------------------------------END--------------------------------
