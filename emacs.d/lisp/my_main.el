(provide 'my_main)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(load-theme 'cyberpunk t)

(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 120
                    :weight 'normal
                    :width 'normal)

(desktop-save-mode 1)
(evil-mode)
(ido-mode t)
(recentf-mode t)
(setq inhibit-startup-message t)
(smex-initialize)
(sml/setup)
(yas-global-mode 1)
