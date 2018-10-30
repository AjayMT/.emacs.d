;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/static-plugins")
(add-to-list 'load-path "~/.emacs.d/static-plugins/auto-complete")
(add-to-list 'custom-theme-load-path "~/.emacs.d/static-themes") ; theme load path

;; Loading stuff
(require 'package)
(require 'auto-complete-config)
(load "customize.el")

;; Indentation stuff
(setq indent-tabs-mode nil)
(setq js-indent-level 2)
(setq soft-tabs t)
(setq c-default-style "linux"
      c-basic-offset 2)


;; Some org-mode stuff
(setq org-src-fontify-natively t)
(setq org-support-shift-select t)

;; Replace selection when typing
(delete-selection-mode 1)

;; Paren-matching stuff
(setq show-paren-style 'expression)

;; Enable ido-mode
(ido-mode 1)

;; Stop creating #autosave# files
(setq autosave-default nil)

;; Highlight current line
(global-hl-line-mode 1)

;; Scroll by 1 line instead of pages
(setq scroll-step 1)

;; Enable column numbers
(column-number-mode 1)

;; File that `customize' will write to
(setq custom-file "~/.emacs.d/lisp/customize.el")

;; Package archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Initialize package.el
(package-initialize)

;; Markdown mode customization
(setq markdown-command "marked")

;; Enable flx-ido mode
(flx-ido-mode 1)

;; Enable projectile globally
(projectile-global-mode 1)

;; Paradox GitHub access token
(setq paradox-github-token "b935df237bbae047b8d2c1b1d9a7ecdbd5310a97")

;; Autopair
(autopair-global-mode 1)

;; Mo-vi-ment-mode
(mo-vi-ment-mode 1)

;; Load string manipulation functions
(require 's)

;; YASnippet
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; AutoComplete
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "<s-tab>")

;; Don't use an audible bell
(setq visible-bell t)

;; JS2 Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js2-highlight-level 3)

;; Key-chord
(key-chord-mode 1)

;; Load more stuff
(load "keybindings.el")
(load "defuns.el")

;; Diminish some minor modes
(require 'diminish)
(diminish 'yas-minor-mode)
(diminish 'mo-vi-ment-mode)
(diminish 'autopair-mode)
(diminish 'auto-complete-mode)
(diminish 'projectile-mode "Pr")

;; We don't need no scroll bars
(scroll-bar-mode -1)

;; Theme loading
(load-theme 'monokai t)

;; Extra stuff for Mac keyboards
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)

;; Frame size
(setq initial-frame-alist '((width . 82) (height . 43)))
