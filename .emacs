
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Consolas 16")

(setq custom-safe-themes t)
(setq inhibit-splash-screen t)
(setq backup-directory-alist `(("." . "~/.saves")))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (general magit zenburn-theme use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

(use-package general
  :ensure t)

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
  :ensure t)
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"f" 'counsel-find-file))

(use-package magit
  :ensure t
  :config
  (general-evil-setup t)
  (nmap :prefix ","
	"g s" 'magit-status))

(use-package evil-magit
  :ensure t)

;; languages
(use-package php-mode
  :ensure t)
