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
