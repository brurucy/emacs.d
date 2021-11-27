(use-package selectrum
  :straight (:host github :repo "raxod502/selectrum")
  :defer t
  :init
  (selectrum-mode +1)
  (custom-set-faces
 '(selectrum-current-candidate ((t (:foreground "#c678dd"))))
 '(selectrum-group-title ((t :inherit :slant :italic (:foreground "#c678dd"))))))

(use-package prescient
  :straight t
  :config
  (prescient-persist-mode +1)
  (setq prescient-history-length 1000))

(use-package selectrum-prescient
  :straight (:host github :repo "raxod502/prescient.el"
		   :files ("selectrum-prescient.el"))
  :demand t
  :after selectrum
  :config
  (selectrum-prescient-mode +1))


