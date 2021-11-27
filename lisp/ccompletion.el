(use-package company
  :straight t
  :config
  (setq company-idle-overlay 0.15)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-minimum company-tooltip-limit)
  (setq company-show-numbers t)
  (setq company-require-match nil)
  (setq company-eclim-auto-save nil)
  (setq company-dabbrev-other-buffers nil)
  (setq company-dabbrev-ignore-case nil)
  (setq company-dabbrev-downcase nil)
  (setq company-tooltip-align-annotations t)
  (setq company-backends '((:separate company-yasnippet company-capf)))
  (add-hook 'emacs-lisp-mode-hook #'company-mode)
  (add-hook 'emacs-lisp-mode-hook #'yas-minor-mode)
  :bind (:filter company-mode
	 ([remap completion-at-point] . #'company-manual-begin)
         ([remap complete-symbol] . #'company-manual-begin)
	 :map company-active-map
	 ("<tab>" . #'company-complete-selection)
         ("TAB" . #'company-complete-selection)
	 ("C-s" . nil)
	 ([remap scroll-down-command] . nil)
	 ([remap complete-symbol] . nil)))

(use-package yasnippet-snippets
  :straight t
  :defer t)

(use-package yasnippet
  :straight t
  :after (yasnippet-snippets company-mode)
  :config
  (yas-reload-all))

(use-package lsp-mode
  :after company
  :straight t
  :custom
  (lsp-log-io nil)
  (lsp-restart 'auto-restart)
  :config
  (setq lsp-auto-configure t)
  (setq lsp-enable-snippet nil)
  (setq lsp-enable-semantic-highlighting nil)
  (setq lsp-enable-links nil)
  (setq lsp-diagnostics-provider :none)
  (add-hook 'lsp-after-open-hook (lambda () (setq company-backends (remove 'company-capf company-backends)))))

(use-package lsp-ui
  :straight t
  :after (lsp lsp-treemacs))
