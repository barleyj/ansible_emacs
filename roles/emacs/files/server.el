;;; package -- Server package configuration
;;; Commentary:
;;; Configure server library
;;; Just used to configure the sever for connecting to.

;;; Code:
(load "server")
(unless (server-running-p) (server-start))
(desktop-save-mode 1)

;;;
