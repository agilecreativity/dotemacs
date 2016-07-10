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

;; Toggle neotree with <f8>
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; May be it is a good idea to disable the mouse as we have bigger touchpad nowaday
(require 'disable-mouse)
(global-disable-mouse-mode)

;; NOTE: this will interfere with the flow of paredit so disable for now
;; From: https://www.gnu.org/software/emacs/manual/html_node/efaq/Matching-parentheses.html
;(global-set-key "%" 'match-paren)
(defun match-paren (arg)
 "Go to the matching paren if on a paren; otherwise insert %."
 (interactive "p")
 (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
       ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
       (t (self-insert-command (or arg 1)))))

;; Let's try different theme
;(load-theme 'sanityinc-tomorrow-night t)
