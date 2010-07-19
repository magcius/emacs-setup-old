
(require 'pkgbuild-mode)

(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                              auto-mode-alist))

(require 'load-relative)
(require 'loc-changes)
(require 'pager)
(require 'dbgr)
(require 'gist)

(require 'magit)

(server-start)

(provide 'jasper-misc)
