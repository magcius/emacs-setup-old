
(require 'yasnippet)
(require 'load-relative)

(yas/initialize)
(yas/load-directory (relative-expand-file-name
                     "vendor/yasnippet/snippets"))

(yas/load-directory (relative-expand-file-name
                     "snippets"))

(provide 'jasper-yasnippet)
