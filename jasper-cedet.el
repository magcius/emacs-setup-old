
(require 'load-relative)
(load-relative "vendor/cedet/cedet-1.0pre7/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(global-srecode-minor-mode 1)

(provide 'jasper-cedet)
