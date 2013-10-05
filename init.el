;; 参考purcell前辈的配置
(add-to-list 'load-path "~/.emacs.d")
(defconst *spell-check-support-enabled* nil)

;; Machinery for installing required
(require 'init-elpa)
;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-gui-frames)
(require 'init-uniquify)
(require 'init-misc)

(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-yasnippet)
(require 'init-windows)           ;;C-c<Left>, C-c<Right>, C-x |, C-x _

(require 'init-editing-utils)	  ;;M-z, C->, M-m, C-c j, C-;

(require 'init-css)
(require 'init-ruby-mode)         ;;RoR && php
(require 'init-w3m)
(require 'init-org2blog)

(when *spell-check-support-enabled*
  (require 'init-spelling))
;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
;(require 'server)
;(unless (server-running-p)
;  (server-start))
;;---------------------------------END----------------------------------------
