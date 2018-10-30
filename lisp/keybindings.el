;; General keybindings
(global-set-key (kbd "M--") 'scroll-up-line)
(global-set-key (kbd "M-=") 'scroll-down-line)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "C-c n") 'indent-buffer)
(global-set-key [f5] 'eval-print-last-sexp)

;; multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; ace-jump-mode
(global-set-key (kbd "C-$") 'ace-jump-mode)

;; expand-region
(global-set-key (kbd "C-#") 'er/expand-region)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; iy-go-to-char
(key-chord-define-global "fj" 'iy-go-to-char)
