(add-to-list 'load-path "/Users/jayson.barley/.emacs.d/lisp/idris-mode")
(require 'idris-mode)
(autoload 'idris-mode "idris-mode" "Idris Mode." t)
(add-to-list 'auto-mode-alist '("\\.idr\\'" . idris-mode))
