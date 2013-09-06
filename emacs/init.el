(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
;;
;; Load before all
;;

(require 'yasnippet)
(require 'ido)

(add-to-list 'load-path "~/.emacs.d/lisp/")


(ido-mode t)
(yas-global-mode 1)

(defun save-packages-list ()
  "Method for saving packages list in a file ~/dotfiles/emacs/packages"
  (interactive)
  (let (var1)
    (setq var1 some)
    
    ))

(find-file "~/dotfiles/emacs/org/tp_suivi.org")

(setq inhibit-startup-message t)
