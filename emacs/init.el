(require 'package)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'ido)

(ido-mode t)
(package-initialize)
