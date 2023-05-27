(setq make-backup-files nil)
(setq auto-save-default nil)
(setq display-line-numbers-type 'relative)
(setq-default frame-title-format '("emacs@something:%b"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(evil-undo-system 'undo-redo)
 '(global-display-line-numbers-mode 1)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.2 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-preview-latex-image-directory "/tmp/ltximg/")
 '(org-startup-folded t)
 '(org-startup-truncated nil)
 '(org-startup-with-inline-images t)
 '(package-selected-packages '(key-chord evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "fixed" :foundry "misc" :slant normal :weight normal :height 105 :width normal)))))
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; evil
(require 'evil)
;;(evil-mode 1)
(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
;; emacs keys
;;(global-set-key (kbd "C-j") (lambda nil (interactive) (other-window 1)))
;;(global-set-key (kbd "C-k") (lambda nil (interactive) (other-window -1)))