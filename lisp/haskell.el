(use-package haskell-mode
  :straight t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
  (add-hook 'haskell-mode-hook 'eglot-ensure))
