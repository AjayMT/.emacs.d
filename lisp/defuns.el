
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
(add-hook 'json-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'java-mode-hook
          (lambda ()
            (setq c-basic-offset 4
                  tab-width 4)))
(add-hook 'objc-mode-hook (lambda () (objc-font-lock-mode 1)))
(add-hook 'go-mode-hook (lambda () (setq indent-tabs-mode t)))
(add-hook 'haskell-mode-hook (lambda () (haskell-indentation-mode 1)))
(add-hook 'litable-mode-hook
          (lambda ()
            (define-key litable-mode-map (kbd "C-c C-j") 'litable-refresh)))
(add-hook 'paredit-mode-hook
          (lambda ()
            (smartparens-mode -1)
            (diminish 'paredit-mode "()")
            (define-key paredit-mode-map (kbd "C-c C-;") 'paredit-comment-dwim)
            (define-key paredit-mode-map (kbd "M-;") nil)))
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'racket-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'clojure-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'lisp-interaction-mode-hook
          (lambda ()
            (define-key paredit-mode-map (kbd "C-j") 'eval-print-last-sexp)))
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode 1)))
