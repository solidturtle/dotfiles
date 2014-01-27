(provide 'my_key)

(global-unset-key "\C-z")

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'ibuffer-list-buffers)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-/") 'hippie-expand)
