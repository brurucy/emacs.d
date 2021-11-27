(use-package doom-themes
  :straight t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config)
  (setq doom-themes-treemacs-theme 'doom-colors)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil :slant 'italic))

(use-package doom-modeline
  :straight t
  :init
  (doom-modeline-mode 1))

(set-face-attribute
 'default nil
 :family "Victor Mono"
 :height 130)

(use-package solaire-mode
  :straight t
  :config
  (solaire-global-mode +1))

(use-package smartparens
  :straight t
  :init
  :config
  (require 'smartparens-config)
  (smartparens-global-mode +1)
  (show-smartparens-global-mode +1))

(use-package rainbow-delimiters
  :straight t
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package marginalia
  :straight t
  :init
  (marginalia-mode +1)
  (custom-set-faces
   '(marginalia-documentation ((t :inherit :slant :italic (:foreground "#c678dd"))))))
