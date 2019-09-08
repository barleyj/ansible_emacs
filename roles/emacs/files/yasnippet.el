(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")

(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                   ;; personal snippets
        "~/.emacs.d/plugins/yasnippet/snippets" ;; the default collection
        ))
