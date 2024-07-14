(set-face-attribute
 'default nil
 :family "Berkeley Mono"
 :weight 'regular
 :height 130)

(elpaca doom-themes
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
  (load-theme 'doom-one t))

(elpaca doom-modeline
  (setq doom-modeline-icon nil)
  (add-hook 'elpaca-after-init-hook 'doom-modeline-mode))

(elpaca solaire-mode
  (add-hook 'elpaca-after-init-hook 'solaire-global-mode))

(define-globalized-minor-mode rainbow-global-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(elpaca rainbow-mode
  (add-hook 'elpaca-after-init-hook 'rainbow-global-mode))

(elpaca marginalia
  (custom-set-faces
   '(marginalia-documentation ((t (:slant italic :inherit completions-annotations :foreground "#c678dd")))))
  (add-hook 'elpaca-after-init-hook 'marginalia-mode))
