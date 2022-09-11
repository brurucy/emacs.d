(use-package consult
  :straight t
  :bind (;; C-c bindings (mode-specific-map)
	 ("C-c h" . consult-history)
	 ("C-x b" . consult-buffer))
  :init
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref)
  :config
  (consult-customize
   consult-ripgrep consult-git-grep consult-grep
   consult-bookmark consult-recent-file consult-xref   
   :preview-key (kbd "M-."))
  (setq consult-narrow-key "<")
  (autoload 'projectile-project-root "projectile")
  (setq consult-project-root-function #'projectile-project-root)
  (add-hook 'completion-list-mode-hook #'consult-preview-at-point-mode))

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
