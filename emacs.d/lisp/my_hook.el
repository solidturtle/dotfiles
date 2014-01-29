(provide 'my_hook)

(add-hook 'lisp-mode-hook 'fci-mode)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'prog-mode-hook
          '(lambda()
             (fci-mode)
             (rainbow-delimiters-mode)
             (whitespace-mode)
             (setq
              tab-width 4)))
(add-hook 'lisp-interaction-mode-hook
          '(lambda()
             (fci-mode 0)
             (whitespace-mode 0)))
