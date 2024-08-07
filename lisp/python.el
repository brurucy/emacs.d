(elpaca lsp-pyright (setq lsp-pyright-disable-organize-imports t)) 
(with-eval-after-load 'dap-python
  (setq dap-python-debugger 'debugpy)
  (defun dap-python--pyenv-executable-find (command)
    (with-venv (executable-find "python"))))

(with-eval-after-load 'apheleia
  (setf (alist-get 'python-ts-mode apheleia-mode-alist)
        '(ruff-isort ruff))) 

