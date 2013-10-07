;; 参考purcell前辈的配置
(add-to-list 'load-path "~/.emacs.d")

;; Machinery for installing required
(require 'init-elpa)
;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-gui-frames)
(require 'init-ido)               ;; Smex && Hippie expand
(require 'init-yasnippet)
(require 'init-windows)           ;; C-c<Left>, C-c<Right>, C-x |, C-x _

(require 'init-editing-utils)	  ;; C->, C-c C-<,  M-m, C-c j, C-;

(require 'init-ruby-mode)         ;; RoR && CSS && PHP
(require 'init-w3m)
(require 'init-org2blog)
;;---------------------------------END----------------------------------------
