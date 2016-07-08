;; Default js indentation levels
(setq-default js2-basic-offset 2)
(setq js-indent-level 2)

;; Disallow scrolling with mouse wheel
; (when window-system
;   (mouse-wheel-mode -1))

;; Monday ftw
(set-variable 'calendar-week-start-day 1)

;; Font size
(define-key global-map (kbd "C-+") 'zoom-in)
;(define-key global-map (kbd "C--") 'zoom-out)

;; rainbow-delimeters-mode settings
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; starting directory
;(setq default-directory (concat (getenv "HOME") "/codes/others/gh-utils"))

;; Make sure that the `lein` command is in our exec-path
(add-to-list 'exec-path "~/apps/dotfiles/bin")

;; Add sensible default settings
(sensible-defaults/open-files-from-home-directory)
(sensible-defaults/increase-gc-threshold)
(sensible-defaults/backup-to-temp-directory)
(sensible-defaults/delete-trailing-whitespace)
(sensible-defaults/treat-camelcase-as-separate-words)
(sensible-defaults/automatically-follow-symlinks)
(sensible-defaults/single-space-after-periods)
(sensible-defaults/offer-to-create-parent-directories-on-save)
(sensible-defaults/apply-changes-to-highlighted-region)
(sensible-defaults/overwrite-selected-text)

;; Experimental for Org mode
(setq org-cycle-emulate-tab 'white)
