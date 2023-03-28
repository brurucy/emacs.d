(use-package prescient
  :straight (:host github :repo "radian-software/prescient.el"
		   :files ("prescient.el"))
  :config
  (prescient-persist-mode +1)
  (setq prescient-history-length 1000))

(use-package corfu-prescient
  :straight (:host github :repo "radian-software/prescient.el"
		   :files ("corfu-prescient.el"))
  :config
  (corfu-prescient-mode +1))

(use-package vertico-prescient
  :straight (:host github :repo "radian-software/prescient.el"
		   :files ("vertico-prescient.el"))
  :config
  (vertico-prescient-mode +1))

(use-package vertico
  :straight t
  :custom
  (vertico-count-format '("%-5s " . "%2$s"))
  (vertico-resize nil)
  :hook
  (after-init . vertico-mode))
