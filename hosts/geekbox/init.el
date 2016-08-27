;; Some theme and fonts
;;(load-theme 'misterioso)
;; Work best on big monitor screen e.g. 12 inc is good with 24+ inch monitor
(set-frame-font "Source Code Pro Bold 14" nil t)

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

;; See: https://www.emacswiki.org/emacs/NeoTree
;; Toggle neotree with <f8>
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(custom-set-variables
 ;; Default is to the left
 '(neo-window-position (quote left)))
(setq neo-smart-open t)

;; Let's try different theme
;;(load-theme 'sanityinc-tomorrow-night t)

;; Let's try to pretty print the result in Cider REPL
(setq cider-repl-use-pretty-printing t)

;; Let make the result look pretty
(setq cider-repl-result-prefix ";; => ")

;; See: [official documentation](https://cider.readthedocs.io/en/latest/configuration/)
(setq cider-eval-result-prefix ";; => ")

;; Let's try aggressive-indent mode
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)
;;(add-hook 'ruby-mode-hook #'aggressive-indent-mode)

;; Hook up the projectile
(add-hook 'projectile-mode-hook 'projectile-rails-on)
