;;; xdg-paths.el --- XDG compliance paths. -*- lexical-binding: t; -*-
;;
;; Version: 0.0.1
;; Keywords: xdg
;; Package-Requires: ((emacs "28.1"))
;;
;;; Commentary:
;;
;; This package provided functions to set paths according to the XDG Base Directory Specification.
;;
;;; Code:

(require 'xdg)

(defcustom xdg-paths-appname "emacs"
  "App name, use for XDG dirs."
  :group 'xdg-paths
  :type 'string)

;;;###autoload
(defun xdg-paths-cache-home (&optional path)
  "The PATH for cache files."
  (file-name-concat (xdg-cache-home) xdg-paths-appname path))

;;;###autoload
(defun xdg-paths-config-home (&optional path)
  "The PATH for configuration files."
  (file-name-concat (xdg-config-home) xdg-paths-appname path))

;;;###autoload
(defun xdg-paths-data-home (&optional path)
  "The PATH for data files."
  (file-name-concat (xdg-data-home) xdg-paths-appname path))

;;;###autoload
(defun xdg-paths-state-home (&optional path)
  "The PATH for state files."
  (file-name-concat (xdg-state-home) xdg-paths-appname path))

(provide 'xdg-paths)
;;; xdg-paths.el ends here
