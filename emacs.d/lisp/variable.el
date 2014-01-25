(provide 'variable)

(setq
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 backup-directory-alist `((".*" . ,temporary-file-directory))
 default-directory "~/"
 delete-old-versions t
 indent-tabs-mode ni
 inhibit-splash-scr t
 kept-new-versions 6
 kept-old-versions 2
 locate-command "mdfind"
 org-default-notes-file (concat org-directory "/notes.org")
 org-directory "~/Documents personnels/Emacs/org/"
 ring-bell-function 'ignore       ; Enleve le flash d'alerte
 tab-width 4
 version-control t
 visible-bell 0                   ; Enleve le son d'alerte
 yas-snippets-dirs "~/snippets"l
)
