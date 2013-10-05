;;-------------------------------misc config------------------------------
(blink-cursor-mode 0)         ;;cursor fixed
(load-theme 'wombat 1)        ;;cursor color is #D2B48C
(setq auto-save-default nil)  ;;no save #file#
(fset 'yes-or-no-p 'y-or-n-p)

;; English Font
(set-face-attribute
'default nil :font "Monaco 11")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "文泉驿微米黑" :size 15)))

;; C-x C-b ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; C-o 搜索出匹配行
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;; Fullscreen F11
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))
(global-set-key [f11] 'fullscreen)

(provide 'init-misc)
