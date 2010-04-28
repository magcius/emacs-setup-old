(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(require 'color-theme)
(require 'pager)
(global-font-lock-mode 1)
(setq use-file-dialog nil)
(color-theme-initialize)
;Show column numbers
(column-number-mode 1)
(setq show-paren-style 'expression)
(setq show-paren-delay 0)
;Show what's being selected
(transient-mark-mode 1)
;Show matching parentheses
(show-paren-mode 1)
;Line by line scrolling
(setq scroll-step 1)
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;Show newlines at end of file
(define-fringe-bitmap 'empty-line [0 0 #x3c #x3c #x3c #x3c 0 0])
(set-default 'indicate-empty-lines 'empty-line)
;Make C-x b bareable
(ido-mode t)

(require 'jasper-color)
(color-theme-jasper)

(provide 'jasper-visual)
