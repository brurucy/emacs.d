(elpaca consult
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref)
  (keymap-global-set "C-x b" #'consult-buffer))

