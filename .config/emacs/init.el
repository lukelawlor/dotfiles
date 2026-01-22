;; This is Luke Lawlor's GNU Emacs configuration, hosted at
;; <https://codeberg.org/lukelawlor/dotfiles>.
;; Last modified: 2026.01.21
					; variables
(setq-default
 auto-save-default nil
 default-input-method "russian-computer"
 display-fill-column-indicator-character ?.
 display-time-24hr-format t
 frame-title-format "emacs %b"
 icon-title-format "emacsóg"
 indent-tabs-mode nil
 initial-buffer-choice "~/i"
 initial-scratch-message ""
 outline-default-state 'outline-show-only-headings
 ;; rmail
 rmail-file-name "~/rmail/rmail"
 rmail-preserve-inbox nil
 rmail-primary-inbox-list (list (concat "/var/mail/"
                                        (user-login-name)))
 ;; security
 safe-local-variable-values '((eval toggle-truncate-lines 1))
 ;; my variables
 my-home-directory "~/"
 my-init-file "~/.config/emacs/init.el"
 ;;; my done text, see function 'my-done'
 my-dt "хорошо"
 )
(set-terminal-coding-system 'utf-8)
(put 'downcase-region 'disabled nil)
(put 'list-timers 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
					; modes
(display-time-mode 1)
(global-display-fill-column-indicator-mode 1)
;;(repeat-mode 1)
					; functions
(defun my-font-size (height)
  "Set the default font size by calling function
'set-face-attribute'. For more information, visit Info node
'(elisp)Attribute Functions'."
  (set-face-attribute 'default nil :height height))
(defun my-scratch nil
  "Switch to the *scratch* buffer"
  (interactive)
  (switch-to-buffer "*scratch*" ))
(defun my-done nil
  "For to-do lists, insert text to symbolize a completed task"
  (interactive)
  (move-beginning-of-line nil)
  (insert (concat "(" my-dt ") "))
  (move-beginning-of-line nil))
(defun tetris nil
  "Экономь время"
  (interactive)
  (message "Нет"))
					; aliases
(defalias 'd 'desktop-read)
(defalias 'dc 'describe-char)
(defalias 'ds 'desktop-save)
(defalias 'e 'eww-open-file)
(defalias 'yes-or-no-p 'y-or-n-p)
;; my functions
(defalias 'md 'my-done)
(defalias 'mf 'my-font-size)
(defalias 's 'my-scratch)
;; modes
(defalias 'f 'auto-fill-mode)
(defalias 'g 'gnus)
(defalias 'i 'paragraph-indent-minor-mode)
(defalias 'o 'outline-mode)
(defalias 'r 'repeat-mode)
(defalias 'v 'view-mode)
					; keys
(global-set-key (kbd "M-/") 'my-done)
;; custom prefix commands
(define-prefix-command 'my-ext-map)
(global-set-key (kbd "M-o") 'my-ext-map)
;; input methods
(global-set-key (kbd "M-n") #'(lambda nil (interactive)
                                (set-input-method
                                 "japanese-hankaku-kana")))
(global-set-key (kbd "M-N") #'(lambda nil (interactive)
                                (set-input-method "japanese")))
(global-set-key (kbd "M-]") #'(lambda nil (interactive)
                                (set-input-method
                                 "chinese-py-punct-b5")))
(global-set-key (kbd "M-.") #'(lambda nil (interactive)
                                (set-input-method
                                 "russian-computer")))
(global-set-key (kbd "M-O") #'(lambda nil (interactive)
                                (set-input-method "greek-postfix")))
(global-set-key (kbd "M-o v") #'(lambda nil (interactive)
                                  (set-input-method
                                   "vietnamese-telex")))
(global-set-key (kbd "M-o h") #'(lambda nil (interactive)
                                  (set-input-method "korean-hangul")))
(global-set-key (kbd "M-o j") #'(lambda nil (interactive)
                                  (set-input-method
                                   "japanese-hankaku-kana")))
(global-set-key (kbd "M-o z") #'(lambda nil (interactive)
                                  (set-input-method
                                   "chinese-py-punct")))
(global-set-key (kbd "M-o e") #'(lambda nil (interactive)
                                  (set-input-method
                                   "spanish-postfix")))
(global-set-key (kbd "M-o g") #'(lambda nil (interactive)
                                  (set-input-method
                                   "german-postfix")))
(global-set-key (kbd "M-o l") #'(lambda nil (interactive)
                                  (set-input-method
                                   "icelandic-keyboard")))
                                        ; function calls
;; show the clock at the start of the mode line
;;(setq mode-line-front-space mode-line-misc-info)
(if (window-system)
    (progn
      ;; modes
      (global-hl-line-mode 1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      ;; default font size
      ;;(my-font-size 180) ;; small
      ;;(my-font-size 380) ;; large
      (my-font-size 220))
  (progn
    ;; can load a terminal theme
    ))
