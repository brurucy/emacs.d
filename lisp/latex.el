
(defun my-latex-mode-setup ()
  (setq-local company-backends
              (append '((company-math-symbols-latex))
                      company-backends)))

(use-package auctex
  :straight t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
  (add-hook 'LaTeX-mode-hook #'company-mode)
  (add-hook 'LaTeX-mode-hook #'lsp)
  (add-hook 'LaTeX-mode-hook 'my-latex-mode-setup)
  (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex))

(use-package company-math
  :straight t
  :defer t)

(use-package cdlatex
  :straight t
  :defer t
  :config
  (setq cdlatex-use-dollar-to-ensure-math nil)
  :bind(:map cdlatex-mode-map
	     ( "$" . nil)
	     (       "(" . nil)
	     (        "{" . nil)
	     (       "[" . nil)
	     (        "|" . nil)
	     (        "<" .  nil)
	     (        "^" .   nil)
	     (        "_" .  nil)
	     (             [(control return)] . nil)))

(use-package adaptive-wrap
  :straight t
  :defer t
  :config
  (add-hook 'LaTeX-mode-hook #'adaptive-wrap-prefix-mode)
  :init
  (setq-default adaptive-wrap-extra-indent 0))

(use-package latex-preview-pane
  :straight t
  :defer t
  :config
  (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)
  (setq-default preview-scale 1.4
		preview-scale-function
		(lambda () (* (/ 10.0 (preview-document-pt)) preview-scale))))
