(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("MELPA Stable" . "http://stable.melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)
(package-install 'exec-path-from-shell)
(exec-path-from-shell-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; list the packages you want
(setq package-list '(better-defaults flycheck yasnippet workgroups2 flycheck))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
