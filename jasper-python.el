
(load-library "python-mode")

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(load-library "pylint")
(load-library "pylint-flymake")

(load-library "pymacs")

(pymacs-load "ropemacs" "rope-")

(setq ropemacs-guess-project t)
(setq ropemacs-enable-autoimports t)
(setq ropemacs-separate-doc-buffer nil)

(load-library "pylookup")

(setq pylookup-dir "~/.emacs.d/vendor/pylookup")

(setq pylookup-program (concat pylookup-dir "pylookup.py"))
(setq pylookup-db-file (concat pylookup-dir "pylookup.db"))