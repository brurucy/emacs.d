(use-package nix-mode
  :straight t
  :defer t
  :init
  (add-hook 'nix-mode-hook 'eglot-ensure))
