; @see http://blog.nethazard.net/post-to-wordpress-blogs-with-emacs-org-mode/
(require-package 'org2blog)
(require 'org2blog-autoloads)

(setq org2blog/wp-use-sourcecode-shortcode t)
(setq org2blog/wp-blog-alist
      '(("My Blog"
         :url "http://www.iheiyi.com/xmlrpc.php"
         :username "heiyi"                 ;;登陆账号
         :default-title ""		   ;;默认标签为空
         :default-categories ("点滴记录")   ;;默认分类目录
         :tags-as-categories nil           ;;将标签作为目录分类
         )))
(provide 'init-org2blog)
