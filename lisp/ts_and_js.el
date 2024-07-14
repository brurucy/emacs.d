(add-hook 'tsx-ts-mode-hook 'eglot-ensure)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

(add-hook 'js-ts-mode-hook 'eglot-ensure)

(add-hook 'typescript-ts-mode-hook 'eglot-ensure)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
