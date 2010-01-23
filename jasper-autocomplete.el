
(load-library "auto-complete")
(load-library "auto-complete-config")

(global-auto-complete-mode t)

(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

(define-key ac-complete-mode-map "\t" 'ac-expand)
(define-key ac-complete-mode-map "\M-n" 'ac-next)
(define-key ac-complete-mode-map "\M-p" 'ac-previous)

(setq ac-auto-start 0)
(setq ac-dwim t)

(set-default 'ac-sources '(ac-source-yasnippet
			   ac-source-abbrev
			   ac-source-words-in-buffer
			   ac-source-semantic))

(ac-ropemacs-initialize)
(ac-css-keywords-initialize)
(ac-emacs-lisp-features-initialize)
(ac-c++-keywords-initialize)
(ac-gtags-initialize)
(ac-yasnippet-initialize)
(ac-semantic-initialize)
