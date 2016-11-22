(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-directory "/Users/jayson.barley/.emacs.d/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
