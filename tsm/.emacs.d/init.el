;; setup packages
(require 'package)
(setq package-enable-at-startup nil)
;; use melpa-stable archive
(add-to-list 'package-archives'("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; install use-package if it isn't installed already
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; whick-key
(use-package which-key
  :ensure t)
(which-key-mode 1)

;; evil
(use-package evil
  :ensure t)
;;(evil-mode 1)

;; key-chord
(use-package key-chord
  :ensure t)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)

;; autothemer
(use-package autothemer
  :ensure t)

;; use my theme
(load-theme 'caksoul t)

;; bindings
(global-set-key (kbd "M-j") (lambda nil (interactive) (other-window 1)))
(global-set-key (kbd "M-k") (lambda nil (interactive) (other-window -1)))
(global-set-key (kbd "M-r") '(repeat 0))

;; shut up
(setq ring-bell-function 'ignore)

;; use y/n instead of yes/no for prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable autosave and backups
(setq make-backup-files nil)
(setq auto-save-default nil)

;; use relative line numbers
(setq display-line-numbers-type 'relative)
(setq-default frame-title-format '("emacs@something:%b"))

;; don't reset view to center of screen when the bottom of the view is hit
(setq scroll-conservatively 100)

;; disable menu bar on terminal
(unless window-system (menu-bar-mode -1))

;; use cool symbols
(when window-system (global-prettify-symbols-mode t))

;; highlight the line that the cursor is on
(when window-system (global-hl-line-mode t))

;; don't use scroll bar
(scroll-bar-mode -1)

;; make emacs actually usable
(repeat-mode t)

;; ido-mode
(setq ido-enable-flex-matching nil)
(setq ido-enable-prefix t)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

;; org-mode
(setq org-hide-emphasis-markers t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   '("ac68145d839a4fdc56864646bdc7649db5c9b866b28abfe215bfe40eaf59646a" "fe174a7286efdf504ab6ef570eecc880a9933c9e3d170e6a62477be478ebc785" "3ab82a0848c0e65c52d474e43e08bdb2a9b80a334ed6d3f89454cdb1f9a26ce9" "a1b705b22e9777b87385b44f8fdebeab1f9099e72515684ea43905f4872eba25" "0690fbab6a52f88125e30c38deec60789658ea95486bcf003a9fdbb1f12fd6ff" "916d32fb9039a3cf50274efb3ad9e07d9d9d0f5e2e2231736b595ce32c4413cf" default))
 '(evil-undo-system 'undo-redo)
 '(org-display-custom-times t)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.2 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-preview-latex-image-directory "/tmp/ltximg/")
 '(org-startup-folded t)
 '(org-startup-truncated nil)
 '(org-startup-with-inline-images t)
 '(org-time-stamp-custom-formats '("<%a %-m.%-d.%y>" . "<%a %-I:%M %p>"))
 '(package-selected-packages '(autothemer use-package which-key key-chord evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family " Terminus (TTF)")))))
