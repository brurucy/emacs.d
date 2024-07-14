(elpaca nix-ts-mode
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-ts-mode))
  (add-to-list 'eglot-server-programs
	       '(nix-ts-mode . ("nil")))
  (add-hook 'nix-ts-mode-hook 'eglot-ensure))
