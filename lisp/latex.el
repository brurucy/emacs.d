(use-package auctex
  :straight t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
  (add-hook 'LaTeX-mode-hook 'eglot-ensure))

(use-package latex-preview-pane
  :straight t
  :defer t
  :config
  (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)
  (setq-default preview-scale 1.4
		preview-scale-function
		(lambda () (* (/ 10.0 (preview-document-pt)) preview-scale))))
