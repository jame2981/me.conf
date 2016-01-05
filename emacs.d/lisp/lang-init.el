(add-to-list 'load-path "~/.emacs.d/lang")

;; Protocol Buffer
(require 'protobuf-mode)
(add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
(add-to-list 'ac-modes 'protobuf-mode)

;; YAML
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode"
	"Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'ac-modes 'markdown-mode)

;; Dockerfile
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
(add-to-list 'ac-modes 'dockerfile-mode)

;; Flymake
(add-to-list 'load-path "~/.emacs.d/lang/flymake")
(require 'flymake-easy)
(flymake-mode t)

;; Ruby
(add-to-list 'load-path "~/.emacs.d/lang/ruby")
(require 'flymake-ruby)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
;; (add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)

;; Golang
(add-to-list 'load-path "~/.emacs.d/lang/golang")
(require 'go-mode-autoloads)
(require 'flymake-go)

;; Haml
(add-to-list 'load-path "~/.emacs.d/lang/haml")
(require 'haml-mode)
(require 'flymake-haml)
(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-to-list 'ac-modes 'haml-mode)

;; Haskell
(add-to-list 'load-path "~/.emacs.d/lang/haskell/haskell-mode")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/.emacs.d/lang/haskell/haskell-mode")

;; Erlang
(add-to-list 'load-path "~/.emacs.d/lang/erlang/erlware-mode")
(require 'erlang-start)
(add-to-list 'ac-modes 'erlang-mode)

;; Python
(setq py-install-directory "~/.emacs.d/lang/python")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; Swift
(add-to-list 'load-path "~/.emacs.d/lang/swift")
(require 'swift-mode)
(add-to-list 'ac-modes 'swift-mode)


(provide 'lang-init)
