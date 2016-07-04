;; See: http://www.swaroopch.com/2013/10/17/emacs-configuration-tutorial/
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(require 'zenburn-theme)

(load-theme 'zenburn)

(set-frame-font "Source Code Pro Bold 15" nil t)

;; Make sure that we don't clutter the init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
