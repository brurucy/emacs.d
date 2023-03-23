(defun my/latex-buffer-setup ()
  (TeX-source-correlate-mode)
  (TeX-PDF-mode))

(use-package auctex
  :straight t
  :defer t
  :init
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
  (add-hook 'LaTeX-mode-hook 'eglot-ensure)
  (add-hook 'LaTeX-mode-hook 'my/latex-buffer-setup))

(use-package auctex-latexmk
  :straight t
  :init
  (setq auctex-latexmk-inherit-TeX-PDF-mode t)
  (setq TeX-command-default "LatexMk")
  :config
  (auctex-latexmk-setup))

(setq TeX-source-correlate-method 'synctex
      TeX-view-program-list   ;; Use Skim, it's awesome
      '(("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline -g -b %n %o %b"))
      TeX-view-program-selection '((output-pdf "Skim"))
      TeX-auto-save t
      TeX-parse-self t
      TeX-save-query nil
      TeX-master 'dwim)
