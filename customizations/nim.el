(add-to-list 'load-path "/Users/jayson.barley/.emacs.d/elpa/nim-mode-20150904.438")
(require 'nim-mode)
(autoload 'nim-mode "nim-mode" "Nim Mode." t)
(add-to-list 'auto-mode-alist '("\\.nim\\'" . nim-mode))
