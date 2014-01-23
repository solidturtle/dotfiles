;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier 'alt)

(require 'package)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'fill-column-indicator)
(require 'ido)
(require 'sr-speedbar)
(require 'whitespace)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(tool-bar-mode -1)

(ido-mode t)

;(setq epa-file-cache-passphrase-for-symmetric-encryption t)
;(if (file-exists-p "~/.authinfo.gpg")
;    (setq auth-sources '((:source "~/.authinfo.gpg" :host t :protocol t)))
;    (setq auth-sources '((:source "~/.authinfo" :host t :protocol t))))
;(setq (auth-sources (list nntp-authinfo-file)))
;(setq exec-path (append exec-path '("/usr/local/bin")))
;(setq nntp-authinfo-file "~/.authinfo.gpg")
;(setq erc-autojoin-channels-alist '(("freenode.net" "#emacs")))
;(erc :server "irc.freenode.net" :port 6667 :nick "opossomme")
(setq org-log-done 'note)               ;
(electric-pair-mode)                    ; Paire "" () []
(setq visible-bell 0)                   ; Enleve le son d'alerte
(setq ring-bell-function 'ignore)       ; Enleve le flash d'alerte
(setq org-directory "~/Documents personnels/Emacs/org/")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq inhibit-splash-scr t)
(setq locate-command "mdfind")
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 yas-snippets-dirs "~/snippets"
 version-control t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(require 'server)
(unless (server-running-p)
  (server-start))

(set-face-attribute 'default nil :family "Consolas")

;; Raccourcis clavier
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)
;; (global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cge" (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key "\C-cgx" 'eval-buffer)
(global-set-key "\C-c\C-c" 'switch-to-previous-buffer)
(global-set-key "\C-cgb" 'recentf-open-files)
(global-set-key "\C-cgp" 'package-list-packages)

(global-unset-key "\C-z")

(add-hook 'org-mode-hook 'turn-on-font-lock)
(setq projectile-completion-system 'grizzl)
(load-theme 'wombat t)

(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; (find-file "~/dotfiles/emacs.d/org/tp_suivi.org")
(setq inhibit-startup-message t)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

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
