
(load-library "pkgbuild-mode")
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                                auto-mode-alist))
