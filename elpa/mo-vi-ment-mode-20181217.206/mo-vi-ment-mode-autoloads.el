;;; mo-vi-ment-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mo-vi-ment-mode" "mo-vi-ment-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from mo-vi-ment-mode.el

(defvar mo-vi-ment-mode nil "\
Non-nil if mo-vi-ment mode is enabled.
See the `mo-vi-ment-mode' command
for a description of this minor mode.")

(custom-autoload 'mo-vi-ment-mode "mo-vi-ment-mode" nil)

(autoload 'mo-vi-ment-mode "mo-vi-ment-mode" "\
Toggle Mo-vi-ment mode.
Interactively with no argument, this command toggles mo-vi-ment mode.
A positive prefix argument enables the mode, any other prefix
argument disables it. From Lisp, argument omitted or nil enables
the mode, `toggle' toggles the state.

When mo-vi-ment mode is enabled, the following key bindings are set -

    \\{mo-vi-ment-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mo-vi-ment-mode" '("mo-vi-ment-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mo-vi-ment-mode-autoloads.el ends here
