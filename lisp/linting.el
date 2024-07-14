(elpaca flymake-ruff
  (add-hook 'eglot-managed-mode-hook #'flymake-ruff-load))

(defun my-filter-eglot-diagnostics (diags)
  "Drop Pyright 'variable not accessed' notes from DIAGS."
  (list (seq-remove (lambda (d)
                      (and (eq (flymake-diagnostic-type d) 'eglot-note)
                           (s-starts-with? "Pyright:" (flymake-diagnostic-text d))
                           (s-ends-with? "is not accessed" (flymake-diagnostic-text d))))
                    (car diags))))

(advice-add 'eglot--report-to-flymake :filter-args #'my-filter-eglot-diagnostics)
