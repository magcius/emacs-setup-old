
(load-library "python-mode")

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(load-library "pylint")
(load-library "pylint-flymake")

(load-library "pymacs")