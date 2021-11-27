(use-package proof-general
  :straight t
  :defer t)

(use-package company-coq
  :straight t
  :defer t
  :init
  (add-hook 'coq-mode-hook #'company-coq-mode))
