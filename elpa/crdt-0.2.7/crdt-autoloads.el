;;; crdt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "crdt" "crdt.el" (0 0 0 0))
;;; Generated autoloads from crdt.el

(autoload 'crdt-list-sessions "crdt" "\
Display a list of active CRDT sessions.
If DISPLAY-BUFFER is provided, display the output there.

\(fn &optional DISPLAY-BUFFER)" t nil)

(autoload 'crdt-list-buffers "crdt" "\
Display a list of buffers shared in SESSION.

\(fn &optional SESSION)" t nil)

(autoload 'crdt-list-users "crdt" "\
Display a list of active users working on a SESSION.

\(fn &optional SESSION)" t nil)

(autoload 'crdt-share-buffer "crdt" "\
Share the current buffer in the CRDT session with name SESSION-NAME.
Create a new one if such a CRDT session doesn't exist.  When PORT
is non-NIL use when creating a new session, otherwise prompt
from minibuffer.  If SESSION-NAME is empty, use the buffer name
of the current buffer.

\(fn SESSION-NAME &optional PORT)" t nil)

(autoload 'crdt-connect "crdt" "\
Connect to a CRDT server running at URL.
Open a new buffer to display the shared content.
Join with DISPLAY-NAME.

\(fn URL &optional DISPLAY-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "crdt" '("add" "challenge" "crdt-" "cursor" "delete" "error" "focus" "get" "insert" "leave" "login" "overlay-" "process" "ready" "remove" "return" "sync" "var")))

;;;***

;;;### (autoloads nil nil ("crdt-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; crdt-autoloads.el ends here
