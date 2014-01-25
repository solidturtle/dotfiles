(provide 'window-system)
(when (window-system)
  (require 'git-gutter-fringe))

(global-git-gutter-mode +1)
(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)
