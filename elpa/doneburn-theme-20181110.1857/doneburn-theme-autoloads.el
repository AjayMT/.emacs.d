;;; doneburn-theme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "doneburn-theme" "doneburn-theme.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from doneburn-theme.el

(defvar doneburn-override-colors-alist 'nil "\
Place to override default theme colors.

You can override a subset of the theme's default colors by
defining them in this alist.")

(custom-autoload 'doneburn-override-colors-alist "doneburn-theme" t)

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "doneburn-theme" '("doneburn")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; doneburn-theme-autoloads.el ends here
