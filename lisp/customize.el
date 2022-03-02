(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-irony-c-headers
     kosmos-theme
     reverse-theme
     crdt
     selectrum
     arduino-mode
     arduino-cli-mode
     modus-themes
     cdlatex
     graphviz-dot-mode
     dumb-jump
     orgtbl-join
     ag
     htmlize
     company-auctex
     auctex
     habamax-theme
     ir-black-theme
     smartparens
     dune
     mips-mode
     utop
     merlin
     tuareg
     tango-plus-theme
     adoc-mode
     flycheck-irony
     company-irony
     irony
     company-go
     company-quickhelp
     company-dict
     company-suggest
     company-c-headers
     company
     nasm-mode
     clojure-mode
     proof-general
     dockerfile-mode
     kotlin-mode
     glsl-mode
     cmake-mode
     gradle-mode
     dracula-theme
     flycheck-gometalinter
     rust-mode
     racket-mode
     rjsx-mode
     objc-font-lock
     js2-mode
     yasnippet
     yaml-mode
     writeroom-mode
     sws-mode
     swift-mode
     solarized-theme
     scala-mode
     projectile
     paredit
     multiple-cursors
     mo-vi-ment-mode
     markdown-mode
     magit
     lua-mode
     less-css-mode
     json-mode
     jinja2-mode
     haskell-mode
     go-mode
     git-rebase-mode
     git-commit-mode
     fold-this
     expand-region
     diminish
     dart-mode
     d-mode
     color-theme
     basic-theme
     ace-window
     xref
     eldoc
     irony-eldoc
     flymake))
 '(safe-local-variable-values
   '((flycheck-gcc-language-standard . c++17)
     (eval when
           (and
            (buffer-file-name)
            (file-regular-p
             (buffer-file-name))
            (string-match-p "^[^.]"
                            (buffer-file-name)))
           (emacs-lisp-mode)
           (unless
               (featurep 'package-build)
             (let
                 ((load-path
                   (cons ".." load-path)))
               (require 'package-build)))
           (package-build-minor-mode)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
