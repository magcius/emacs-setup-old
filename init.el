;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   JASPER'S EMACS SETUP
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d")
(progn (cd "~/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/vendor")
(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

(load-library "jasper-visual")
(load-library "jasper-cc-mode")
(load-library "jasper-js2")
(load-library "jasper-autocomplete")
(load-library "jasper-python")
(load-library "jasper-pkgbuild")
(load-library "jasper-yasnippet")
(load-library "jasper-magit")
(load-library "jasper-misc")
