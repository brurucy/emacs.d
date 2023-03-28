(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)
;; Annoying as hell toolbar, jeez
;;(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode +1)
(add-hook 'focus-out-hook 'garbage-collect)
(setq gc-cons-threshold 100000000)
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold 800000)))
(setq read-process-output-max (* 100 1024 1024))
(setq straight-check-for-modifications nil)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setq straight-use-package-by-default nil)
(straight-use-package 'use-package)

(use-package exec-path-from-shell
  :straight t
  :init (exec-path-from-shell-initialize))

(setq package-enable-at-startup nil)

(use-package esup
  :straight t)

(mapc
 (lambda (x) (load x))
 (mapcar
  (lambda (x) (concat "~/.emacs.d/lisp/" x))
  ( list
    "visuals.el"
    "completion.el"
    "lsp.el"
    ;;"highlighting.el"
    "ccompletion.el"
    "common_utilities.el"
    ;;"go.el"
    ;;"rust.el"
    "dsls.el"
    "nix.el"
    ;;"js.el"
    "latex.el"
    )))
