(global-flycheck-mode)

;; C-M-u C-M-SPC to select quoted string
(modify-syntax-entry ?^ "(\"")
(modify-syntax-entry ?$ ")\"")

;; Copy commands
(autoload 'copy-from-above-command "misc"
    "Copy characters from previous nonblank line, starting just above point.
  
  \(fn &optional arg)"
    'interactive)
(global-set-key [up] 'copy-from-above-command)
(global-set-key [down] (lambda ()
                           (interactive)
                           (forward-line 1)
                           (open-line 1)
                           (copy-from-above-command)))
(global-set-key [right] (lambda ()
                            (interactive)
                            (copy-from-above-command 1)))
(global-set-key [left] (lambda ()
                           (interactive)
                            (copy-from-above-command -1)
                            (forward-char -1)
                            (delete-char -1)))
