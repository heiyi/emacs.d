(require 'ispell)

(when (executable-find ispell-program-name)
  (require 'init-flyspell))

(ispell-change-dictionary "american" t)

(provide 'init-spelling)
