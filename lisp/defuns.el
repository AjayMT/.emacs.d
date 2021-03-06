
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

;;; Hooks

(defun ajaymt/json-mode-hook ()
  (setq tab-width 2))
(add-hook 'json-mode-hook 'ajaymt/json-mode-hook)

(defun ajaymt/java-mode-hook ()
  (setq c-basic-offset 4
        tab-width 4))
(add-hook 'java-mode-hook 'ajaymt/java-mode-hook)

;;; Advice

(defadvice objc-mode (after enable-font-lock-mode activate)
  (objc-font-lock-mode 1))

(defadvice go-mode (after indent-with-tabs activate)
  (setq indent-tabs-mode t))

(defadvice haskell-mode (after turn-on-indentation activate)
  (haskell-indentation-mode))

(defadvice litable-mode (after bind-litable-refresh activate)
  (define-key litable-mode-map (kbd "C-c C-j") 'litable-refresh))

(defadvice paredit-mode (after disable-smartparens activate)
  (smartparens-mode -1)
  (diminish 'paredit-mode "()"))

(defadvice paredit-mode (after rebind-paredit-comment-dwim activate)
  (define-key paredit-mode-map (kbd "C-c C-;") 'paredit-comment-dwim)
  (define-key paredit-mode-map (kbd "M-;") nil))

(defadvice emacs-lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice lisp-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice racket-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice clojure-mode (after activate-paredit-mode activate)
  (paredit-mode 1))

(defadvice lisp-interaction-mode (after rebind-c-j activate)
  (define-key paredit-mode-map (kbd "C-j") 'eval-print-last-sexp))

(defadvice markdown-mode (after activate-visual-line activate)
  (visual-line-mode 1))
