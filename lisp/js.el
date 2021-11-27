(use-package  add-node-modules-path
  :straight t)

(use-package js2-mode
  :straight t
  :defer t
  :init
  (add-to-list 'auto-mode-alist `(,(rx ".js" string-end) . js2-mode))
  :config
  (add-hook 'js2-mode-hook 'lsp)
  (add-hook 'js2-mode-hook 'yas-minor-mode)
  (add-hook 'js2-mode-hook (lambda () (setq js-indent-level 2)))
  (add-hook 'js2-mode-hook (lambda () (setq tab-width 2)))
  (add-hook 'js2-mode-hook (lambda () (setq indent-tabs-mode nil)))
  (add-hook 'js2-mode-hook #'add-node-modules-path))

(use-package json-mode
  :straight t
  :defer t)

(use-package js2-refactor
  :straight t
  :after js2-mode dap-mode
  :config
  (js2r-add-keybindings-with-prefix "C-c C-m")
  (add-hook 'js2-mode-hook #'js2-refactor-mode))
  
(use-package nodejs-repl
  :straight t
  :ensure t
  :after (js2-mode js2-refactor)
  :config
  (add-hook 'js2-mode-hook
	    (lambda ()
	      (define-key js2-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
              (define-key js2-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
              (define-key js2-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
              (define-key js2-mode-map (kbd "C-c C-c") 'nodejs-repl-send-buffer)
              (define-key js2-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
              (define-key js2-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))
  (add-hook 'nodejs-repl-mode-hook #'company-mode))
