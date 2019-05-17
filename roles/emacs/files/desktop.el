(require 'desktop)
(if (display-graphic-p)
    (progn
      (desktop-save-mode 1)
      (add-hook 'kill-emacs-hook
      `(lambda ()
         (desktop-save))))
  (progn
    (setq desktop-dirname default-directory)
    (if (file-exists-p
     (concat default-directory ".emacs.desktop"))
    (desktop-read default-directory))
    (add-hook 'kill-emacs-hook
              `(lambda ()
                 (desktop-save default-directory t)))
    ))
