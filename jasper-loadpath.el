(require 'grep)

(setq jasper-root-path
  (file-name-directory
    (or load-file-name (buffer-file-name) bytecomp-filename)))

(setq jasper-vendor-path (format "%s/vendor" jasper-root-path))

(setq load-path (append load-path
   (split-string (shell-command-to-string
      (format "find %s \\( %s \\) -prune -o -type d -print"
         jasper-root-path
         (mapconcat (lambda (item) (concat "-path \\*/" item))
		    grep-find-ignored-directories " -o "))))))

(provide 'jasper-loadpath)
