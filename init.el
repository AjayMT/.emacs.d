
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/static-plugins")
(add-to-list 'custom-theme-load-path "~/.emacs.d/static-themes")

(load "customize.el")
(load "ld-mode.el")
(load "llvm-mode.el")
(load "gas-mode.el")

(setq org-src-fontify-natively t)
(setq org-support-shift-select t)
(delete-selection-mode 1)
(setq show-paren-style 'mixed)
(setq autosave-default nil)
(setq scroll-step 1)
(column-number-mode 1)
(setq visible-bell t)
(setq custom-file "~/.emacs.d/lisp/customize.el")
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)
(mac-auto-operator-composition-mode 1)
(setq-default show-trailing-whitespace 1)
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)
(setq c-default-style "linux")
(setq c-basic-offset 2)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(setq initial-frame-alist '((width . 88) (height . 54)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(require 'ivy)
(ivy-mode 1)
(require 'company)
(global-company-mode 1)
(projectile-global-mode 1)
(setq paradox-github-token "b935df237bbae047b8d2c1b1d9a7ecdbd5310a97")
(smartparens-global-mode 1)
(mo-vi-ment-mode 1)
(setq js2-highlight-level 3)
(dumb-jump-mode 1)

(require 'diminish)
(diminish 'ivy-mode)
(diminish 'mo-vi-ment-mode)
(diminish 'smartparens-mode)
(diminish 'projectile-mode "Pr")
(diminish 'company-mode)
(diminish 'eldoc-mode)
(diminish 'irony-mode)
(diminish 'abbrev-mode)
(diminish 'projectile-mode)
(diminish 'dumb-jump-mode)

(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook #'irony-eldoc)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.golsp\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.ci\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.s\\'" . nasm-mode))
(add-to-list 'auto-mode-alist '("\\.asm\\'" . nasm-mode))

;; load these later because they depend on packages
(load "keybindings.el")
(load "defuns.el")

(when (display-graphic-p)
  (load-theme 'acme t))

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
