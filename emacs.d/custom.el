;;
;; Let's rock!
;;

(add-to-list 'load-path "~/.emacs.d/lisp/")

;;
;; Make sure my_require.el is loaded before all.
;;
(require 'my_require)

(require 'my_defun)
(require 'my_hook)
(require 'my_key)
(require 'my_main)
(require 'my_variable)
(require 'my_window_system)
