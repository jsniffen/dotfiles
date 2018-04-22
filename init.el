;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Hack 18")

(setq custom-safe-themes t)
(setq vc-follow-symlinks t)
(setq make-backup-files nil)
(setq inhibit-splash-screen t)
(setq ring-bell-function 'ignore)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark))

(use-package linum-relative
  :ensure t
  :config
  (setq linum-relative-current-symbol "")
  (linum-relative-global-mode 1))

(use-package general
  :ensure t
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"x" 'execute-extended-command
	"d" 'switch-to-buffer))

(use-package projectile
  :ensure t
  :config
  (projectile-mode 1))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

(use-package swiper
  :ensure t
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"l" 'swiper))

(use-package counsel
  :ensure t
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"f" 'counsel-find-file))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-on))

(use-package magit
  :ensure t
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"g s" 'magit-status))

(use-package evil-magit
  :ensure t)

(use-package autopair
  :ensure t
  :config
  (autopair-global-mode 1))

(use-package rainbow-delimiters
  :ensure t
  :config
  (rainbow-delimiters-mode))

(use-package company
  :ensure t
  :config
  (global-company-mode 1))

(use-package ag
  :ensure t)

;; languages
(use-package php-mode
  :ensure t)

(use-package php-extras
  :ensure t)

(use-package web-mode
  :ensure t)
