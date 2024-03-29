;; set startup file
(setq initial-buffer-choice "~/notes/journal/todo.org")

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

;; god-mode
(use-package god-mode
  :ensure t)
(global-set-key (kbd "C-x C-1") #'delete-other-windows)
(global-set-key (kbd "C-x C-2") #'split-window-below)
(global-set-key (kbd "C-x C-3") #'split-window-right)
(global-set-key (kbd "C-x C-0") #'delete-window)
(define-key god-local-mode-map (kbd ".") #'repeat)
(define-key god-local-mode-map (kbd "i") #'god-local-mode)

;; functions for when god mode is enabled & disabled
(defun my-god-cursor-enable ()
  (setq cursor-type t)
  (blink-cursor-mode 0)
  )
(defun my-god-cursor-disable ()
  (setq cursor-type 'hbar)
  (blink-cursor-mode t)
  )
(add-hook 'god-mode-enabled-hook #'my-god-cursor-enable)
(add-hook 'god-mode-disabled-hook #'my-god-cursor-disable)

(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(god-mode-all)

;; which-key
(use-package which-key
  :ensure t)
(which-key-mode 1)

;; key-chord
(use-package key-chord
  :ensure t)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define global-map "jj" #'god-local-mode)

;; avy
(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

;; rainbow-mode (show colors of hex values)
(use-package rainbow-mode
  :ensure t
  :init (rainbow-mode 1))

;; autothemer
(use-package autothemer
  :ensure t)

;; use my autothemer theme
(load-theme 'caksoul t)

;; bindings
(global-set-key (kbd "M-j") (lambda nil (interactive) (other-window 1)))
(global-set-key (kbd "M-k") (lambda nil (interactive) (other-window -1)))

;; shut up
(setq ring-bell-function 'ignore)

;; use y/n instead of yes/no for prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable autosave and backups
(setq make-backup-files nil)
(setq auto-save-default nil)

;; use relative line numbers
(setq display-line-numbers-type 'relative)
(setq-default frame-title-format '("emacs@tsm:%b"))

;; don't reset view to center of screen when the bottom of the view is hit
(setq scroll-conservatively 101)

;; resize by pixel on all frames
(setq frame-resize-pixelwise t)

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

;; swap C-x b and C-x C-b and use ibuffer because
(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; don't ask for confirmation when doing things in ibuffer
;;(setq ibuffer-expert t)

;; ido-vertical
(use-package ido-vertical-mode
  :ensure t
  :init (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; smex
(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind ("M-x" . smex))

;; org-mode
;;(setq org-hide-emphasis-markers t)

;; allow execution of C, C++, and Python code blocks
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (python . t)))

;; indentation

;; allow automatic indentation to insert tabs
(setq-default indent-tabs-mode nil)

;; Org mode
(setq org-edit-src-content-indentation 8)

;; CC mode
(require 'cc-mode)

;; indent style
(setq c-default-style "linux")

;; style additions
(c-set-offset 'inline-open 0)

;; display line numbers
(add-hook 'c-mode-common-hook (lambda () (display-line-numbers-mode t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(bookmark-set-fringe-mark nil)
 '(evil-undo-system 'undo-redo)
 '(indent-tabs-mode t)
 '(max-mini-window-height 12)
 '(org-babel-remote-temporary-directory "/tmp/org/babeltmp/")
 '(org-display-custom-times t)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.2 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-preview-latex-image-directory "/tmp/org/ltximg/")
 '(org-startup-folded t)
 '(org-startup-truncated nil)
 '(org-startup-with-inline-images t)
 '(org-time-stamp-custom-formats '("<%a %-m.%-d.%y>" . "<%-m.%-d %a %-I:%M %p>"))
 '(package-selected-packages
   '(god-mode rainbow-mode rainbow avy smex ido-vertical-mode autothemer use-package which-key key-chord evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family " Terminus (TTF)")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
