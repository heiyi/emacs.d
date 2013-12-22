;; reference purcell's emacs configuration
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; Machinery for installing required
(require 'init-elpa)

;; Load configs for specific features and modes
(require 'init-gui)               ;; UI, Winner-Mode, Switch-Window
(require 'init-ido)               ;; Smex && Hippie Expand
(require 'init-editing-utils)	  ;; C->, C-c C-<, M-m, C-c j, C-;

(require 'init-program)
;;---------------------------------END------------------------------------
