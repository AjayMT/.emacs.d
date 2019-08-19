;; General keybindings
(global-set-key (kbd "M--") 'scroll-up-line)
(global-set-key (kbd "M-=") 'scroll-down-line)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "C-c n") 'indent-buffer)
(global-set-key [f5] 'eval-print-last-sexp)
(global-unset-key (kbd "C-x f"))
(global-unset-key (kbd "C-x C-o"))
(global-unset-key (kbd "C-x s"))

;; multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; ace-jump-mode
(global-set-key (kbd "C-$") 'ace-jump-mode)

;; expand-region
(global-set-key (kbd "C-#") 'er/expand-region)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(define-key helm-buffer-map (kbd "C-k") 'helm-buffer-run-kill-persistent)
