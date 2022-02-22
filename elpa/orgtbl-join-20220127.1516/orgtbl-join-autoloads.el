;;; orgtbl-join-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "orgtbl-join" "orgtbl-join.el" (0 0 0 0))
;;; Generated autoloads from orgtbl-join.el

(autoload 'orgtbl-join "orgtbl-join" "\
Add material from a reference table to the current table.

Optional REF-TABLE is the name of a reference table, in the
current buffer, as given by a #+NAME: name-of-reference
tag above the table.  If not given, it is prompted interactively.

Optional REF-COLUMN is the name of a column in the reference
table, to be compared with the column the point in on.  If not
given, it is prompted interactively.

Rows from the reference table are appended to rows of the current
table.  For each row of the current table, matching rows from the
reference table are searched and appended.  The matching is
performed by testing for equality of cells in the current column,
and a joining column in the reference table.

If a row in the current table matches several rows in the
reference table, then the current row is duplicated and each copy
is appended with a different reference row.

If no matching row is found in the reference table, then the
current row is kept, with empty cells appended to it.

\(fn &optional REF-TABLE REF-COLUMN FULL)" t nil)

(autoload 'orgtbl-to-joined-table "orgtbl-join" "\
Enrich the master TABLE with lines from a reference table.

PARAMS contains pairs of key-value with the following keys:

:ref-table   the reference table.
             Lines from the reference table will be added to the
             master table.

:mas-column  the master joining column.
             This column names one of the master table columns.

:ref-column  the reference joining column.
             This column names one of the reference table columns.

Columns names are either found in the header of the table, if the
table has a header, or a dollar form: $1, $2, and so on.

The destination must be specified somewhere in the
same file with a bloc like this:
#+BEGIN RECEIVE ORGTBL destination_table_name
#+END RECEIVE ORGTBL destination_table_name

\(fn TABLE PARAMS)" t nil)

(autoload 'org-insert-dblock:join "orgtbl-join" "\
Wizard to interactively insert a joined table as a dynamic block." t nil)

(autoload 'org-dblock-write:join "orgtbl-join" "\
Create a joined table out of a master and a reference table.

PARAMS contains pairs of key-value with the following keys:

:mas-table   the master table.
             This table will be copied and enriched with material
             from the reference table.

:ref-table   the reference table.
             Lines from the reference table will be added to the
             master table.

:mas-column  the master joining column.
             This column names one of the master table columns.

:ref-column  the reference joining column.
             This column names one of the reference table columns.

Columns names are either found in the header of the table, if the
table has a header, or a dollar form: $1, $2, and so on.

The
#+BEGIN RECEIVE ORGTBL destination_table_name
#+END RECEIVE ORGTBL destination_table_name

\(fn PARAMS)" t nil)

(autoload 'orgtbl-join-setup-keybindings "orgtbl-join" "\
Setup key-binding and menu entry.
This function can be called in your .emacs. It will add the `C-c
C-x j' key-binding for calling the orgtbl-join wizard, and a menu
entry under Tbl > Column > Join with another table." nil nil)

(eval-after-load 'org '(when (fboundp 'org-dynamic-block-define) (org-dynamic-block-define "join" #'org-insert-dblock:join)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "orgtbl-join" '("org" "pop-simple")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; orgtbl-join-autoloads.el ends here
