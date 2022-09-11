(use-package js2-mode
  :straight t
  :defer t
  :mode (rx ".js" eos)
  :custom
  (js-indent-level 2)
  (js-switch-indent-offset 2)
  (js2-highlight-level 3)
  (js2-idle-timer-delay 0)
  (js2-mode-show-parse-errors nil)
  (js2-mode-show-strict-warnings nil))

(use-package rjsx-mode
  :straight t
  :defer t
  :mode (rx (or ".jsx" (and "components/" (* anything) ".js")) eos))

(use-package typescript-mode
  :straight t
  :defer t
  :init
  (define-derived-mode typescript-tsx-mode typescript-mode "TSX")
  (add-to-list 'auto-mode-alist `(,(rx ".tsx" eos) . typescript-tsx-mode))
  (add-hook 'typescript-mode-hook 'eglot-ensure)
  :custom
  (typescript-indent-level 2))
