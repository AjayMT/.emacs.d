The theme attempts to reduce the usage of colors to a minimum based on my
personal preferences.  It's not fully monochrome, for example diffs and
active regions are distinguished via colors. The theme assumes no font-lock,
i.e. (global-font-lock-mode 0), so there is very little customization for
syntax aware faces. The used colors are from the base16 set that is available
at: https://github.com/chriskempson/base16 set.

More information: http://github.com/fgeller/basic-theme.el

Theme setup is based on flatui-theme.el available at:
https://github.com/john2x/flatui-theme.el

(deftheme basic "Minimalistic theme based on base16 colors.")

(defvar basic-colors-alist
  '(("black" . "#181818")
    ("gray1" . "#282828")
    ("gray2" . "#383838")
    ("gray3" . "#585858")
    ("gray4" . "#b8b8b8")
    ("gray5" . "#d8d8d8")
    ("gray6" . "#e8e8e8")
    ("white" . "#f8f8f8")
    ("red" . "#ab4642")
    ("orange" . "#dc9656")
    ("yellow" . "#f7ca88")
    ("green" . "#a1b56c")
    ("turquoise" . "#86c1b9")
    ("blue" . "#7cafc2")
    ("purple" . "#ba8baf")
    ("brown" . "#a16046"))
  "List of base16 colors.")

(defmacro basic-with-color-variables (&rest body)
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   basic-colors-alist))
     ,@body))

Theme Faces
(basic-with-color-variables
  (custom-theme-set-faces
   'basic
   `(button ((t (:foreground ,blue :underline nil :weight normal))))
   `(compilation-mode-line-exit ((t (:foreground ,gray6 :background ,gray6))))
   `(cursor ((t (:foreground nil :background ,red))))
   `(default ((t (:foreground ,black :background ,white))))
   `(fringe ((t (:foreground ,gray6 :background ,white))))
   `(header-line ((t (:inherit mode-line))))
   `(hi-yellow ((t (:foreground ,red :background ,nil))))
   `(isearch ((t (:foreground nil :background ,gray6))))
   `(isearch-fail ((t (:foreground nil :background ,orange))))
   `(lazy-highlight ((t (:foreground nil :background ,gray6))))
   `(linum  ((t (:foreground ,gray4 :background ,white))))
   `(match ((t (:foreground nil :background ,gray6))))
   `(minibuffer-prompt ((t (:foreground ,gray4 :background nil))))
   `(mode-line ((t (:foreground ,gray6 :background ,gray6 :box nil))))
   `(mode-line-buffer-id ((t (:weight normal))))
   `(mode-line-inactive ((t (:inherit mode-line :box nil))))
   `(region ((t (:foreground nil :background ,green))))
   `(secondary-selection ((t (:foreground nil :background ,gray6))))
   `(trailing-whitespace ((t (:foreground nil :background ,red))))

   `(ace-jump-face-background ((t (:foreground ,gray4 :background nil))))
   `(ace-jump-face-foreground ((t (:foreground ,red :background nil))))

   `(anzu-mode-line ((t (:inherit mode-line))))
   `(anzu-replace-highlight ((t (:foreground nil :background ,gray6))))
   `(anzu-replace-to ((t (:foreground ,red :background ,gray6))))

   `(custom-face-tag ((t (:foreground nil :background nil))))
   `(custom-visibility ((t (:foreground ,blue :background nil))))
   `(custom-link ((t (:foreground ,blue :background nil))))

   `(diff-added ((t (:foreground ,green :background nil))))
   `(diff-removed ((t (:foreground ,red :background nil))))
   `(diff-context ((t (:foreground ,black :background nil))))
   `(diff-refine-added ((t :inherit diff-added :foreground nil :weight bold)))
   `(diff-refine-change ((t :inherit diff-changed :foreground nil :weight bold)))
   `(diff-refine-removed ((t :inherit diff-removed :foreground nil :weight bold)))
   `(diff-header ((t (:foreground ,black :background nil))))
   `(diff-file-header ((t (:foreground ,black :background nil))))
   `(diff-hunk-header ((t (:foreground ,black :background nil))))

   `(eldoc-highlight-function-argument ((t (:weight normal :background ,gray6))))

   `(eshell-prompt ((t (:foreground ,gray4 :background nil :weight normal))))
   `(eshell-ls-directory ((t (:foreground nil :background nil :weight normal))))
   `(eshell-ls-executable ((t (:foreground nil :background nil :weight normal))))

   `(font-lock-function-name-face ((t (:foreground ,red :background nil))))

   `(helm-action ((t (:foreground ,black :background ,white :underline nil))))
   `(helm-candidate-number ((t (:foreground ,gray6 :background ,gray6))))
   `(helm-header ((t (:inherit mode-line))))
   `(helm-selection ((t (:foreground ,black :background ,gray6 :underline nil))))
   `(helm-source-header ((t (:inherit default :foreground ,black :background ,white :underline nil :weight normal :family ,(face-attribute 'default :family) :height ,(face-attribute 'default :height)))))
   `(helm-buffer-file ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-directory ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-process ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-size ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-buffer-not-saved ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-directory ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-executable ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-file ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-invalid-symlink ((t (:foreground ,black :background ,red :underline nil :italic nil))))
   `(helm-ff-prefix ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-ff-symlink ((t (:foreground ,black :background ,white :underline nil :italic nil))))
   `(helm-history-remote ((t (:foreground ,black :background ,orange :underline nil :italic nil))))
   `(helm-history-deleted ((t (:foreground ,black :background ,red :underline nil :italic nil))))
   `(helm-visible-mark ((t (:foreground ,black :background ,yellow :underline nil :italic nil))))
   `(helm-separator ((t (:foreground ,gray6 :background nil :underline nil :italic nil))))
   `(helm-prefarg ((t (:foreground ,red :background ,white :underline nil :italic nil))))
   `(helm-M-x-key ((t (:foreground ,blue :background ,white :underline nil :italic nil))))

   `(magit-section-title ((t (:inherit default))))
   `(magit-item-highlight ((t (:foreground nil :background nil))))
   `(magit-process-ok ((t (:foreground nil :background nil))))
   `(magit-process-ng ((t (:foreground nil :background ,orange))))
   `(magit-branch ((t (:foreground nil :background nil))))
   `(magit-log-sha1 ((t (:foreground ,black :background nil))))
   `(magit-log-author ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-head ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-local ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-default ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-remote ((t (:foreground ,black :background nil))))
   `(magit-log-head-label-tags ((t (:foreground ,black :background nil))))
   `(magit-key-mode-button-face ((t (:foreground ,black :background nil))))
   `(magit-key-mode-header-face ((t (:foreground ,black :background nil))))
   `(magit-key-mode-switch-face ((t (:foreground ,green :background nil))))
   `(magit-diff-merge-current ((t (:foreground ,black :background nil))))
   `(magit-tag ((t (:foreground ,black :background nil))))

   `(org-done ((t (:foreground ,black :background ,white :weight normal))))
   `(org-todo ((t (:foreground ,black :background ,white :weight normal))))

   `(rng-error ((t (:foreground nil :background ,orange))))

   `(show-paren-match ((t (:foreground nil :background ,green))))
   `(show-paren-mismatch ((t (:foreground nil :background ,orange))))

   `(wgrep-face ((t (:foreground ,green :background nil))))
   `(wgrep-done-face ((t (:foreground ,black :background nil))))
   ))

(basic-with-color-variables
  (custom-theme-set-variables
   'basic
   `(ansi-color-names-vector [
			      (,black . ,gray1)
			      (,red . ,orange)
			      (,green . ,gray2)
			      (,yellow . ,gray2)
			      (,blue . ,gray3)
			      (,purple . ,gray4)
			      (,turquoise . ,gray5)
			      (,white . ,gray6)
			      ])
   `(vc-annotate-very-old-color ,gray3)
   `(vc-annotate-background ,white)
   `(vc-annotate-color-map
     '((20 . ,red)
       (50 . ,orange)
       (80 . ,yellow)
       (110 . ,green)
       (140 . ,turquoise)
       (170 . ,blue)
       (200 . ,purple)
       (230 . ,brown)
       (260 . ,black)
       (290 . ,gray1)
       (320 . ,gray2)
       (350 . ,gray3)))
   ))

###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'basic)

Local Variables:
no-byte-compile: t
indent-tabs-mode: nil
End:
basic-theme.el ends here
