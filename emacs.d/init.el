;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier 'alt)

(add-to-list 'load-path "~/.emacs.d/lisp/")
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'fill-column-indicator)
(require 'ido)
(require 'sr-speedbar)
(require 'whitespace)
(require 'variable)
(require 'window-system)
;; (require 'session)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(global-unset-key "\C-z")

(add-hook 'org-mode-hook 'turn-on-font-lock)
(setq projectile-completion-system 'grizzl)
(load-theme 'wombat t)

(defun switch-to-previous-buffer ()
  (interactive)q
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; (find-file "~/dotfiles/emacs.d/org/tp_suivi.org")
(setq inhibit-startup-message t)



;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(evil-mode)

;; (add-hook 'kill-emacs-hook
;;        (append-to-file "brume"
;;                        nil
;;                        ((expand-file-name "dotfiles/emacs.d/packages" (getenv "HOME")))))

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'prog-mode-hook
          '(lambda()
             (fci-mode)
             (whitespace-mode)
             (setq
              tab-width 4)))
(add-hook 'lisp-interaction-mode-hook
          '(lambda()
             (fci-mode 0)
             (whitespace-mode 0)))

(recentf-mode t)
(ido-mode t)
(setq recentf-max-menu-items 25)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-debug t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
