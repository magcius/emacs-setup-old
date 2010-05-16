
(require 'load-relative)
(require 'espresso)

(add-to-list 'auto-mode-alist '("\\.js\\'" . espresso-mode))

(require 'flymake)
(require 'flymake-jslint)

(setq lintnode-node-program
      (relative-expand-file-name "vendor/lintnode/node/node/node"))

(setq lintnode-location
      (relative-expand-file-name "vendor/lintnode/lintnode/lintnode"))

(setq lintnode-port 1536)

(if (and (file-exists-p lintnode-location)
         (file-exists-p lintnode-node-program))
    (lintnode-start))

(add-hook 'espresso-mode-hook 'flymake-mode)

(provide 'jasper-espresso)
