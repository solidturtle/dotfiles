(provide 'my_window_system)
(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (require 'git-gutter-fringe))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-git-gutter-mode +1)
(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)
