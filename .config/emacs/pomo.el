;;; pomo.el --- pomodoro timer
;; This is part of Luke Lawlor's GNU Emacs configuration, hosted at
;; <https://codeberg.org/lukelawlor/dotfiles>.
(defun pomo-start (work break lbreak)
  "Run a pomodoro timer with WORK seconds for work time, BREAK
seconds for break time & LBREAK seconds for long break time"
  (message "Starting pomodoro timer (%d %d %d)" work break lbreak)
  (setq
   pomo-seconds-work work
   pomo-seconds-break break
   pomo-seconds-lbreak lbreak)
  (pomo-section 0))
(defun pomo nil
  "Run 'pomo-start' but prompt for the values of the arguments
 interactively"
  (interactive)
  (pomo-start
   (* 60 (read-number "Minutes of work: "))
   (* 60 (read-number "Minutes of break: "))
   (* 60 (read-number "Minutes of long break: "))))
(defun pomo-section-end (iteration)
  "This function is to be called at the end of a pomodoro timer
section which is invoked by calling 'pomo-section'"
  (my-msg (concat "Section " pomo-name " is no more"))
  (pomo-section (+ 1 iteration)))
(defun pomo-section (iteration)
  "Execute a pomodoro timer section using number ITERATION to tell
whether it is work time, break time, or something else. ITERATION
must be in the range [0, 5]. The following text maps each
iteration value to a time:
0 = work #1
1 = break #1
2 = work #2
3 = break #2
4 = work #3
5 = long break"
  (if (> iteration 5) (setq iteration 0))
  (setq pomo-iteration iteration)
  ;; using ITERATION, pick the values for 'pomo-name' & 'pomo-seconds'
  ;; TODO: find out which syntax makes this better
  (if (= iteration 0) (setq pomo-name "work"
                            pomo-seconds pomo-seconds-work))
  (if (= iteration 1) (setq pomo-name "break"
                            pomo-seconds pomo-seconds-break))
  (if (= iteration 2) (setq pomo-name "work"
                            pomo-seconds pomo-seconds-work))
  (if (= iteration 3) (setq pomo-name "break"
                            pomo-seconds pomo-seconds-break))
  (if (= iteration 4) (setq pomo-name "work"
                            pomo-seconds pomo-seconds-work))
  (if (= iteration 5) (setq pomo-name "lbreak"
                            pomo-seconds pomo-seconds-lbreak))
  ;; cancel a previous timer if it exists
  (if pomo-timer-running (cancel-timer pomo-timer))
  ;; start the new timer
  (setq
   pomo-timer (run-at-time pomo-seconds nil 'pomo-section-end
                           iteration)
   pomo-timer-running t
   pomo-timer-start (time-convert (current-time) 'integer))
  (message "Pomo section %s lasts %d minutes, or %d seconds"
	   pomo-name
	   (/ pomo-seconds 60)
	   pomo-seconds))
(defun pomo-skip nil
  "Skip the current pomodoro timer section"
  (interactive)
  (if (not pomo-timer-running)
      (message "No pomo timer is running")
    (cancel-timer pomo-timer)
    (pomo-section (+ 1 pomo-iteration))))
(defun pomo-stop nil
  "Stop any existing pomodoro timer"
  (interactive)
  (if (not pomo-timer-running)
      (message "No pomo timer is running")
    (cancel-timer pomo-timer)
    (setq pomo-timer-running nil)
    (message "Stopped pomo timer")))
(defun pomo-info nil
  "Output info about the current pomo timer"
  (interactive)
  (if (not pomo-timer-running)
    (message "No pomo timer is running")
    (setq pomo-seconds-left (- pomo-seconds
			       (-
                                (time-convert (current-time) 'integer)
                                pomo-timer-start))
	  pomo-minutes-left (/ pomo-seconds-left 60))
    (message "Pomo section %s lasts %d minutes, or %d seconds"
	     pomo-name
	     pomo-minutes-left
	     pomo-seconds-left)))
(defun pomo-start-default nil
  "Run 'pomo-start' with default arguments"
  (interactive)
  (pomo-start (* 60 25) (* 60 5) (* 60 5)))
