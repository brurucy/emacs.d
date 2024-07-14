(elpaca orderless
  (setq completion-styles '(orderless basic))
  (setq completion-category-defaults nil)
  (setq completion-category-overrides '((file (styles partial-completion)))))

(elpaca vertico
  (setq vertico-count-format '("%-5s " . "%2$s"))
  (setq vertico-resize nil)
  (add-hook 'elpaca-after-init-hook 'vertico-mode))
