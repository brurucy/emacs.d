(elpaca rust-mode
  (setq rust-mode-treesitter-derive t)
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (add-hook 'rust-mode-hook 'eglot-ensure))
