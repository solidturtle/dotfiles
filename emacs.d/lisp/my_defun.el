(defun package-save-list ()
  "Save packages list in a file ~/dotfiles/emacs.d/packages"
  (interactive)
  (setq file "~/dotfiles/emacs.d/packages")
  (write-region "" nil file)
  (dolist (p package-activated-list)
    (append-to-file (format "%s\n" p)
		  nil
		  file)))

(defun package-load-list ()
  "Load packages from a file ~/dotfiles/emacs.d/packages"
  (interactive)
  (dolist (p (with-temp-buffer
	     (insert-file-contents "~/dotfiles/emacs.d/packages")
	     (split-string (buffer-string) "\n" )))
    (when (not (require (intern p) nil t))
	(package-install (intern p))))
)


