(use-package consult
  :straight t
  :bind (;; C-c bindings (mode-specific-map)
	 ("C-c h" . consult-history)
	 ("C-c m" . consult-mode-command)
	 ("C-c b" . consult-bookmark)
	 ("C-x M-:" . consult-complex-command)
	 ("C-x b" . consult-buffer)
	 ("C-x 4 b" . consult-buffer-other-window)
	 ("C-x 5 b" . consult-buffer-other-frame)
	 ("M-#" . consult-register-load)
	 ("M-'" . consult-register-store)
	 ("C-M-#" . consult-register)
	 ("M-g f" . consult-flycheck)
	 ("M-g g" . consult-goto-line)
	 ("M-g o" . consult-outline)
	 ("M-g m" . consult-mark)
	 ("M-g k" . consult-global-mark)
	 ("M-g i" . consult-imenu)
	 ("M-g I" . consult-project-imenu))
  :init
  (setq register-preview-delay 0
        register-preview-function #'consult-register-format)
  (advice-add #'register-preview :override #'consult-register-window)
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref)
  :config
  (consult-customize
   consult-ripgrep consult-git-grep consult-grep
   consult-bookmark consult-recent-file consult-xref
   consult--source-file consult--source-project-file consult--source-bookmark
   :preview-key (kbd "M-."))
  (setq consult-narrow-key "<")
  (autoload 'projectile-project-root "projectile")
  (setq consult-project-root-function #'projectile-project-root)
  (add-hook 'completion-list-mode-hook #'consult-preview-at-point-mode))

(use-package consult-flycheck
  :straight t
  :after(consult lsp))

(use-package magit
  :straight t
  :defer t)

(use-package multiple-cursors
  :straight t
  :defer t)

(setq indent-tabs-mode nil)

(use-package apheleia
  :straight t
  :config
  (setf (alist-get 'prettier apheleia-formatters)
	'(npx "prettier" file))
  (apheleia-global-mode +1))

(use-package editorconfig
  :straight t
  :config
  (editorconfig-mode +1))

(use-package projectile
  :straight t
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (projectile-mode +1))
