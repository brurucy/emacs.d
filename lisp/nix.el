(elpaca nix-ts-mode
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-ts-mode))
  (with-eval-after-load 'apheleia
    (add-to-list 'apheleia-mode-alist '(nix-ts-mode . nixfmt)))) 
