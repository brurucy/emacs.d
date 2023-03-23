(use-package rust-mode
  :straight t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (add-hook 'rust-mode-hook 'eglot-ensure))

