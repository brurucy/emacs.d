(elpaca nix-ts-mode
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-ts-mode))
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
		 '(nix-ts-mode . ("nil"))))
  (with-eval-after-load 'apheleia
    (add-to-list 'apheleia-mode-alist '(nix-ts-mode . nixfmt)))
  (add-hook 'nix-ts-mode-hook 'eglot-ensure))
