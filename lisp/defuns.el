;; Untabify a whole buffer
(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

;; Tabify a whole buffer
(defun tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

;; Toggle soft tabs
(defun toggle-soft-tabs ()
  (interactive)
  (setq soft-tabs (not soft-tabs)))

;; Properly indent a whole buffer
(defun indent-buffer ()
  (interactive)
  (delete-trailing-whitespace (point-min) (point-max))
  (indent-region (point-min) (point-max))
  (if soft-tabs
      (untabify-buffer)
    (tabify-buffer)))

;; Add hook to json-mode
(defun ajaymt/json-mode-hook ()
  (setq tab-width 2))
(add-hook 'json-mode-hook 'ajaymt/json-mode-hook)

;;; Advice

;; Indent with tabs when using go mode
(defadvice go-mode (after indent-with-tabs activate)
  (setq soft-tabs nil))

;; Turn on haskell indentation after activating haskell-mode
(defadvice haskell-mode (after turn-on-indentation activate)
  (turn-on-haskell-indentation))

;; Bind litable-refresh to a key
(defadvice litable-mode (after bind-litable-refresh activate)
  (define-key litable-mode-map (kbd "C-c C-j") 'litable-refresh))

;; Disable autopair-mode when we activate paredit-mode
(defadvice paredit-mode (after disable-autopair activate)
  (autopair-mode -1)
  (diminish 'paredit-mode "()"))

;; Rebind paredit-comment-dwim
(defadvice paredit-mode (after rebind-paredit-comment-dwim activate)
  (define-key paredit-mode-map (kbd "C-c C-;") 'paredit-comment-dwim)
  (define-key paredit-mode-map (kbd "M-;") nil))

;; Activate paredit-mode after activating emacs-lisp-mode or lisp-mode
(defadvice emacs-lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

;; Rebind C-j after activating lisp-interaction-mode
(defadvice lisp-interaction-mode (after rebind-c-j activate)
  (define-key paredit-mode-map (kbd "C-j") 'eval-print-last-sexp))

;; Bind auto-complete to a key
(defadvice auto-complete-mode (after bind-auto-complete activate)
  (define-key ac-mode-map (kbd "C-,") 'auto-complete))

;; Enable visual-line-mode after enabling markdown-mode
(defadvice markdown-mode (after activate-visual-line activate)
  (visual-line-mode 1))
