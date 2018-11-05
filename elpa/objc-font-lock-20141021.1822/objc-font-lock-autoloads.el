;;; objc-font-lock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "objc-font-lock" "objc-font-lock.el" (23520
;;;;;;  25199 933609 736000))
;;; Generated autoloads from objc-font-lock.el

(defvar objc-font-lock-modes '(objc-mode) "\
List of major modes where Objc Font Lock Global mode should be enabled.")

(custom-autoload 'objc-font-lock-modes "objc-font-lock" t)

(autoload 'objc-font-lock-mode "objc-font-lock" "\
Minor mode that highlights Objective-C method calls.

\(fn &optional ARG)" t nil)

(defvar objc-font-lock-global-mode nil "\
Non-nil if Objc-Font-Lock-Global mode is enabled.
See the `objc-font-lock-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `objc-font-lock-global-mode'.")

(custom-autoload 'objc-font-lock-global-mode "objc-font-lock" nil)

(autoload 'objc-font-lock-global-mode "objc-font-lock" "\
Toggle Objc-Font-Lock mode in all buffers.
With prefix ARG, enable Objc-Font-Lock-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Objc-Font-Lock mode is enabled in all buffers where
`(lambda nil (when (apply (quote derived-mode-p) objc-font-lock-modes) (objc-font-lock-mode 1)))' would do it.
See `objc-font-lock-mode' for more information on Objc-Font-Lock mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; objc-font-lock-autoloads.el ends here
