(add-to-list 'load-path "/Users/jayson.barley/.emacs.d/lisp/magit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
	       "/Users/jayson.barley/.emacs.d/lisp/magit/Documentation/"))

(global-set-key (kbd "C-x g") 'magit-status)

(global-git-gutter-mode +1)


(add-to-list 'load-path "/Users/jayson.barley/.emacs.d/lisp/magit-gitflow")
(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
