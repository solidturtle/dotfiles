(provide 'my_key)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "<f10>"))
(global-unset-key (kbd "<escape>"))
;;(global-unset-key (kbd "M-ESC"))

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'ibuffer-list-buffers)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
