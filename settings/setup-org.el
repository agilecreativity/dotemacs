(defun myorg-update-parent-cookie ()
  (when (equal major-mode 'org-mode)
    (save-excursion
      (ignore-errors
        (org-back-to-heading)
        (org-update-parent-todo-statistics)))))

(defadvice org-kill-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(defadvice kill-whole-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map (kbd "M-<f6>") 'org-capture)

;; For org-journal
(setq org-journal-dir "~/Dropbox/org/journal")

;; Experimental use of `use-package' to install and config
(use-package org
  :config
  ;; Need to install `graphviz' locally first
  (add-to-list 'org-src-lang-modes '("dot" . "graphviz-dot"))

  ;; Add languages that we can use with org-babel
  (org-babel-do-load-languages 'org-babel-load-languages
                               '((sh . t)
                                 (js . t)
                                 (emacs-lisp . t)
                                 (clojure . t)
                                 (python . t)
                                 (dot . t)
                                 (ruby . t)
                                 (css . t))))

;; Use fancy list in org-mode
(use-package org-bullets
  :ensure t
  :config
  (progn
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))))

(use-package ob-clojure
  :init
  (setq org-babel-clojure-backend 'cider))

;; See: http://orgmode.org/cgit.cgi/org-mode.git/plain/lisp/ob-clojure.el

(provide 'setup-org)
