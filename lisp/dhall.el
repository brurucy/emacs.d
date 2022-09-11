(use-package dhall-mode
  :straight t
  :defer t
  :init
  (add-hook 'dhall-mode-hook 'eglot-ensure))
