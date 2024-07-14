(setq treesit-language-source-alist
      '((rust . "https://github.com/tree-sitter/tree-sitter-rust")
        (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" "v0.20.1" "src"))
        (json . ("https://github.com/tree-sitter/tree-sitter-json" "v0.20.2"))
        (python . ("https://github.com/tree-sitter/tree-sitter-python" "v0.20.4"))
        (toml "https://github.com/tree-sitter/tree-sitter-toml")
        (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "tsx/src"))
        (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "typescript/src"))
        (yaml . ("https://github.com/ikatyang/tree-sitter-yaml" "v0.5.0"))
	(nix . "https://github.com/nix-community/tree-sitter-nix")
	(verilog . "https://github.com/tree-sitter/tree-sitter-verilog")
	(dockerfile . "https://github.com/camdencheek/tree-sitter-dockerfile")))

(mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))
