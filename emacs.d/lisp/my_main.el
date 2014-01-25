(add-to-list 'load-path "~/.emacs.d/lisp/")

(eval-after-load "menu-bar" '(require 'menu-bar+))

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(global-unset-key "\C-z")

(add-hook 'org-mode-hook 'turn-on-font-lock)
(load-theme 'cyberpunk t)
;;
;; Nicer mode-line. (the bottom bar)
;;
(sml/setup)
(desktop-save-mode 1)

(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; (find-file "~/dotfiles/emacs.d/org/tp_suivi.org")
(setq inhibit-startup-message t)

(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 140
                    :weight 'normal
                    :width 'normal)

;; yasnippet
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
