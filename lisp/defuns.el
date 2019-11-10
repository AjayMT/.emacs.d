
(require 'paredit)

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
  (setq indent-tabs-mode (not indent-tabs-mode)))

;; Properly indent a whole buffer
(defun indent-buffer ()
  (interactive)
  (delete-trailing-whitespace (point-min) (point-max))
  (indent-region (point-min) (point-max))
  (if (not indent-tabs-mode)
      (untabify-buffer)
    (tabify-buffer)))

;; Toggle mode-line appearance
(defun mode-line-visual-toggle ()
  (interactive)
  (let ((faces-to-toggle '(mode-line mode-line-inactive))
        (invisible-color "#e8e8e8")
        (visible-color "#a1b56c"))
    (cond ((string= visible-color (face-attribute 'mode-line :background))
           (mapcar (lambda (face)
                     (set-face-background face invisible-color)
                     (set-face-attribute face nil :height 20))
                   faces-to-toggle))
          (t
           (mapcar (lambda (face)
                     (set-face-background face visible-color)
                     (set-face-attribute face nil :height (face-attribute 'default :height)))
                   faces-to-toggle)))))

;; Add hook to json-mode
(defun ajaymt/json-mode-hook ()
  (setq tab-width 2))
(add-hook 'json-mode-hook 'ajaymt/json-mode-hook)

;; Add hook to java-mode
(defun ajaymt/java-mode-hook ()
  (setq c-basic-offset 4
        tab-width 4))
(add-hook 'java-mode-hook 'ajaymt/java-mode-hook)

;;; Advice

;; enable objc-font-lock-mode when using objc-mode
(defadvice objc-mode (after enable-font-lock-mode activate)
  (objc-font-lock-mode 1))

;; Indent with tabs when using go mode
(defadvice go-mode (after indent-with-tabs activate)
  (setq indent-tabs-mode t))

;; Turn on haskell indentation after activating haskell-mode
(defadvice haskell-mode (after turn-on-indentation activate)
  (haskell-indentation-mode))

;; Bind litable-refresh to a key
(defadvice litable-mode (after bind-litable-refresh activate)
  (define-key litable-mode-map (kbd "C-c C-j") 'litable-refresh))

;; Disable smartparens-mode when we activate paredit-mode
(defadvice paredit-mode (after disable-smartparens activate)
  (smartparens-mode -1)
  (diminish 'paredit-mode "()"))

;; Rebind paredit-comment-dwim
(defadvice paredit-mode (after rebind-paredit-comment-dwim activate)
  (define-key paredit-mode-map (kbd "C-c C-;") 'paredit-comment-dwim)
  (define-key paredit-mode-map (kbd "M-;") nil))

;; Activate paredit-mode after activating lisp modes
(defadvice emacs-lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice racket-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice clojure-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

;; Rebind C-j after activating lisp-interaction-mode
(defadvice lisp-interaction-mode (after rebind-c-j activate)
  (define-key paredit-mode-map (kbd "C-j") 'eval-print-last-sexp))

;; Enable visual-line-mode after enabling markdown-mode
(defadvice markdown-mode (after activate-visual-line activate)
  (visual-line-mode 1))
