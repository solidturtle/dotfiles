(provide 'my_main)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(load-theme 'cyberpunk t)

(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 120
                    :weight 'normal
                    :width 'normal)

(desktop-save-mode 1)
(ido-mode 1)
(projectile-mode)
(auto-complete)
(recentf-mode 1)
(smex-initialize)
(sml/setup)
(yas-global-mode 1)
