(use-package prescient
  :straight (:host github :repo "radian-software/prescient.el"
		   :files ("prescient.el"))
  :config
  (prescient-persist-mode +1)
  (setq prescient-history-length 1000))

(use-package selectrum
  :straight (:host github :repo "radian-software/selectrum")
  :defer t
  :init
  (selectrum-mode +1)
  (custom-set-faces
 '(selectrum-current-candidate ((t (:foreground "#c678dd"))))
 '(selectrum-group-title ((t :inherit :slant :italic (:foreground "#c678dd"))))))

(use-package selectrum-prescient
  :straight (:host github :repo "radian-software/prescient.el"
		   :files ("selectrum-prescient.el"))
  :demand t
  :after selectrum
  :config
  (selectrum-prescient-mode +1))

(use-package vertico
  :straight t
  :custom
  (vertico-count-format '("%-5s " . "%2$s"))
  (vertico-resize nil)
  :hook
  (after-init . vertico-mode))
