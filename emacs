(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'uniquify)
(require 'auto-complete-init)
(require 'lang-init)

(setq inhibit-startup-message t)   ; Don't want any startup message
(setq visible-bell 1)
(setq make-backup-files nil) ; Don't want any backup files
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq uniquify-buffer-name-style 'post-forward)
(menu-bar-mode -1)
