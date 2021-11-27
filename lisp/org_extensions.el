(use-package org-superstar
  :straight t
  :defer t
  :config
  (add-hook 'org-mode-hook #'org-superstar-mode)
  (add-hook 'org-mode-hook #'org-indent-mode)
  (add-hook 'org-mode-hook #'visual-line-mode))

(use-package olivetti
  :straight t
  :config
  (add-hook 'org-mode-hook #'olivetti-mode)
  (olivetti-set-width 140))

;;(require 'org-roam)
;;(org-roam-setup)
(setq org-agenda-files (list "~/.agenda"))
;;(setq org-roam-completion-everywhere t)

