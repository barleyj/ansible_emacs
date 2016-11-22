(add-to-list 'load-path "/Users/jayson.barley/.emacs.d/lisp/python-mode")
(setq py-install-directory "/Library/Frameworks/Python.framework/Versions/2.7")
(require 'python-mode)

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args "-i"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
 org-babel-python-command "ipython"
 org-babel-python-command "/usr/local/bin/python2.7"
 org-babel-python-mode 'python-mode
 py-python-command "/usr/local/bin/python2.7")
