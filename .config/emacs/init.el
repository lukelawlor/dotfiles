;; This is Luke Lawlor's GNU Emacs configuration, hosted at
;; <https://codeberg.org/lukelawlor/dotfiles>.
;; Last modified: 2026.01.26
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
(defun ding-much (number seconds)
  "Call 'ding' NUMBER times with SECONDS seconds between each ding"
  (ding)
  (setq ding-timer (run-at-time seconds seconds 'ding)
	ding-timer-stop (run-at-time
			 (* seconds (- number 1))
			 nil
			 'cancel-timer ding-timer)))
(defun ding-stop nil
  "Stop the dinging started by function 'ding-much'"
  (interactive)
  (cancel-timer ding-timer)
  (cancel-timer ding-timer-stop))
(defun my-msg (msg)
  "Display the message MSG to the user in a way that should catch
their attention"
  (ding-much 40 0.15)
  (message "Sending the following attention-catching message: %s" msg)
  (read-from-minibuffer (concat msg "! (press enter to continue) "))
  (ding-stop))
(defun my-timer nil
  "Create a simple timer to ding later"
  (interactive)
  (setq my-timer-purpose (read-string "To do: ")
	my-timer-seconds (* 60 (read-number "Minutes until ding: "))
	my-timer-object (run-at-time
			 my-timer-seconds
			 nil
			 'my-msg
			 (concat
                          "Timer for "
                          my-timer-purpose
                          " is over"))
        my-timer-start (time-convert (current-time) 'integer))
  (message "You have %d minutes to %s"
	   (/ my-timer-seconds 60)
	   my-timer-purpose))
(defun my-timer-info nil
  "Output info about the current timer created with 'my-timer'"
  (interactive)
  (unless my-timer-object (error "No timer exists"))
  (setq my-time-left-sec (- my-timer-seconds (-
                                              (time-convert
                                               (current-time)
                                               'integer)
                                              my-timer-start))
        my-time-left-min (/ my-time-left-sec 60))
  (message "The time left to %s is %d minutes, or %d seconds"
           my-timer-purpose
           my-time-left-min
           my-time-left-sec))
(defun my-timer-stop nil
  "Cancel the latest timer created with 'my-timer'"
  (interactive)
  (unless my-timer-object (error "No timer exists"))
  (cancel-timer my-timer-object)
  (setq my-timer-object nil)
  (message "The time to %s has been canceled" my-timer-purpose))
(defun tetris nil
  "Экономь время"
  (interactive)
  (message "Нет"))
                                        ; functions from other files
(load-file "~/.config/emacs/pomo.el")
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
;;; pomo
(defalias 'pm 'pomo)
(defalias 'pm-d 'pomo-start-default)
(defalias 'pm-n 'pomo-skip) ;; n for next pomodoro timer section
(defalias 'pm-s 'pomo-stop)
(defalias 'pm-i 'pomo-info)
(defalias 'p 'pomo-start-default)
;; modes
(defalias 'f 'auto-fill-mode)
(defalias 'g 'gnus)
(defalias 'i 'paragraph-indent-minor-mode)
(defalias 'o 'outline-mode)
(defalias 'r 'repeat-mode)
(defalias 'v 'view-mode)
					; keys
;; custom prefix commands
(define-prefix-command 'my-ext-map)
(global-set-key (kbd "M-o") 'my-ext-map)
;; basic functions
(global-set-key (kbd "M-/") 'my-done)
;; timer
(global-set-key (kbd "M-o t") 'my-timer)
(global-set-key (kbd "M-o i") 'my-timer-info)
(global-set-key (kbd "M-o s") 'my-timer-stop)
;; pomo
(global-set-key (kbd "M-o p") 'pomo)
(global-set-key (kbd "M-o d") 'pomo-start-default)
(global-set-key (kbd "M-i") 'pomo-info)
(global-set-key (kbd "M-o x") 'pomo-stop)
(global-set-key (kbd "M-o n") 'pomo-skip) ;; n for next pomodoro timer
                                          ;; section
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
