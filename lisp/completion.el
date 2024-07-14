(setq text-mode-ispell-word-completion nil)
(setq read-extended-command-predicate #'command-completion-default-include-p)
(setq tab-always-indent 'complete)

(elpaca corfu
  (setq corfu-separator ?\s)
  (setq corfu-auto t)
  (setq corfu-auto-delay 0.2)
  (setq corfu-auto-prefix 2)
  (add-hook 'elpaca-after-init-hook 'global-corfu-mode)
  (add-hook 'eshell-mode-hook (lambda ()
				(setq-local corfu-auto nil) (corfu-mode))))

(elpaca kind-icon
  (setq kind-icon-default-face 'corfu-default)
  (add-hook 'elpaca-after-init-hook (lambda ()
				      (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))))

(elpaca cape
  (add-hook 'completion-at-point-functions #'cape-dabbrev)
  (add-hook 'completion-at-point-functions #'cape-file))

(defface corfu-candidate-overlay-face
  '((((background light))
     :foreground "wheat")
    (((background dark))
     :foreground "#c678dd"))
  "Face used for the overlay with the first candidate.")

(elpaca corfu-candidate-overlay
  (global-set-key (kbd "C-<tab>") 'completion-at-point)
  (global-set-key (kbd "<tab>") 'corfu-candidate-overlay-complete-at-point)
  (add-hook 'elpaca-after-init-hook 'corfu-candidate-overlay-mode))
