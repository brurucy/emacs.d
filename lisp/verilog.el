(elpaca verilog-ts-mode
  (add-hook 'verilog-ts-mode-hook 'eglot-ensure)
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
		 '(verilog-ts-mode . ("svls")))))
