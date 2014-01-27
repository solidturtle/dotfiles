(provide 'my_variable)

;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier 'alt)

(setq
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 backup-directory-alist `((".*" . ,temporary-file-directory))
 default-directory "~/"
 delete-old-versions t
 history-length 250
 ido-enable-flex-matching t
 indent-tabs-mode nil
 inhibit-splash-scr t
 kept-new-versions 6
 kept-old-versions 2
 locate-command "mdfind"
 mouse-wheel-follow-mouse 't
 mouse-wheel-scroll-amount '(1 ((shift) . 1))
 projectile-completion-system 'grizzl
 redisplay-dont-pause t
 ring-bell-function 'ignore       ; Enleve le flash d'alerte
 scroll-conservatively 10000
 scroll-margin 1
 scroll-preserve-screen-position 1
 scroll-step 1
 tab-width 4
 version-control t
 visible-bell 0                   ; Enleve le son d'alerte
 yas-snippets-dirs "~/snippets"
;; org-default-notes-file (concat org-directory "/notes.org")
;; org-directory "~/Documents personnels/Emacs/org/"
)
