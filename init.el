
;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/static-plugins")
(add-to-list 'custom-theme-load-path "~/.emacs.d/static-themes") ; theme load path

;; Loading stuff
(require 'package)
(load "customize.el")
(load "ld-mode.el")
(load "llvm-mode.el")
(load "gas-mode.el")

;; Some org-mode stuff
(setq org-src-fontify-natively t)
(setq org-support-shift-select t)

;; Replace selection when typing
(delete-selection-mode 1)

;; Paren-matching stuff
(setq show-paren-style 'mixed)

;; Cursor type
(setq-default cursor-type 'bar)

;; Stop creating #autosave# files
(setq autosave-default nil)

;; Scroll by 1 line instead of pages
(setq scroll-step 1)

;; Enable column numbers
(column-number-mode 1)

;; File that `customize' will write to
(setq custom-file "~/.emacs.d/lisp/customize.el")

;; Package archives
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Initialize package.el
(package-initialize)

;; company-mode
(require 'company)
(global-company-mode 1)

;; helm-mode
(require 'helm)
(setq helm-boring-buffer-regexp-list '("\\*.*\\*"))
(setq helm-ff-auto-update-initial-value t)
(setq completion-styles '(helm-flex))
(helm-mode 1)

;; C/C++-mode hooks
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook #'irony-eldoc)

;; Markdown mode customization
(setq markdown-command "marked")

;; Enable projectile globally
(projectile-global-mode 1)

;; Paradox GitHub access token
(setq paradox-github-token "b935df237bbae047b8d2c1b1d9a7ecdbd5310a97")

;; Smartparens
(smartparens-global-mode 1)

;; Mo-vi-ment-mode
(mo-vi-ment-mode 1)

;; Load string manipulation functions
(require 's)

;; YASnippet
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; Don't use an audible bell
(setq visible-bell t)

;; JS2 Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js2-highlight-level 3)

;; edit golsp in python-mode for now
(add-to-list 'auto-mode-alist '("\\.golsp\\'" . python-mode))

;; edit charm interface (.ci) files in c-mode
(add-to-list 'auto-mode-alist '("\\.ci\\'" . c-mode))

;; edit assembly with nasm-mode by default
(add-to-list 'auto-mode-alist '("\\.s\\'" . nasm-mode))
(add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))

;; Load more stuff
(load "keybindings.el")
(load "defuns.el")

;; dumb-jump-mode
(dumb-jump-mode 1)

;; Diminish some minor modes
(require 'diminish)
(diminish 'yas-minor-mode)
(diminish 'mo-vi-ment-mode)
(diminish 'smartparens-mode)
(diminish 'projectile-mode "Pr")
(diminish 'company-mode)
(diminish 'helm-mode)
(diminish 'eldoc-mode)
(diminish 'irony-mode)
(diminish 'abbrev-mode)
(diminish 'projectile-mode)
(diminish 'dumb-jump-mode)

;; No scroll bars
(scroll-bar-mode -1)

;; Theme loading
(load-theme 'solarized-dark t)

;; ignore os x bell
(setq ring-bell-function 'ignore)

;; Extra stuff for Mac keyboards
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)

;; Enable mac ligatures
(mac-auto-operator-composition-mode 1)

;; Indentation stuff
(setq-default show-trailing-whitespace 1)
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)
(setq c-default-style "linux"
      c-basic-offset 2)

;; Frame size
(setq initial-frame-alist '((width . 88) (height . 54)))

;; Enabling things
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; merlin-mode
(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
    ;; Register Merlin
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (autoload 'merlin-mode "merlin" nil t nil)
    ;; Automatically start it in OCaml buffers
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)))
