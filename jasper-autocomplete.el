
(require 'auto-complete)
(require 'auto-complete-config)

(setq ac-dwim t)
(setq ac-auto-start t)
(setq ac-auto-show-menu t)
(setq ac-quick-help-delay 0.2)
(setq popup-use-optimized-column-computation nil)

(ac-config-default)
(global-auto-complete-mode t)

(provide 'jasper-autocomplete)
