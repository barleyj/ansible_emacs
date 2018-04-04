(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-directory "/Users/jayson.barley/.emacs.d/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;; org-mode
(add-hook 'org-load-hook
          (lambda ()
            (global-set-key (kbd "C-c C-l") 'org-insert-link)
            (global-set-key (kbd "C-c l") 'org-store-link)))
