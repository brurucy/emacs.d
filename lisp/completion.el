(setq text-mode-ispell-word-completion nil)
(setq read-extended-command-predicate #'command-completion-default-include-p)
(setq tab-always-indent 'complete)

(elpaca company (add-hook 'elpaca-after-init-hook 'global-company-mode))
(elpaca company-box (add-hook 'company-mode-hook 'company-box-mode))
