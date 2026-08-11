;;; mswindows.el --- Utilities for use on MS-Windows
                                        ; Variables to configure
                                        ; yourself
(setq-default
 ;; Configure yourself
 mswindows-username ""
 dir-mswindows-home (concat "c:/users/" mswindows-username)
 bin-web-browser "c:/program files/.exe"
 ;;; Cygwin installation directory
 dir-cygwin (concat dir-mswindows-home "/cygwin")
 dir-cygwin-package (concat dir-mswindows-home "/cygwinpkg")
 bin-cygwin-setup (concat dir-mswindows-home
                          "/downloads/setup-x86_64.exe")
 ;;; See <https://cygwin.com/mirrors.html>
 mirror-cygwin "")
                                        ; Functions
(defun my-shell-command (command output-buffer)
  "Run 'command' in the background without changing the window
configuration"
  (setq my-window-configuration (current-window-configuration))
  (shell-command (concat command " &") output-buffer)
  (set-window-configuration my-window-configuration))
;; Run various programs
(defun my-run-web-browser nil
  (interactive) (my-shell-command path-web-browser "output-web"))
;;; Cygwin -- Get that GNU+Linux feel on MS-Windows & whatnot
(defun my-run-cygwin-setup (package-list)
  "Install Cygwin packages"
  (interactive)
  (my-shell-command
   (concat bin-cygwin-setup " "
           "-d -B -n -N -g -q "
           "-s " mirror-cygwin " "
           "-R " dir-cygwin " -l " dir-cygwin-package " "
           "-P " package-list) "output-setup"))
(defun my-run-cygwin-setup-manual nil
  "Run Cygwin setup without '-q' so you can search for packages
manually"
  (interactive)
  (my-shell-command
   (concat bin-cygwin-setup " "
           "-d -B -n -N -g "
           "-s " mirror-cygwin " "
           "-R " dir-cygwin " -l " dir-cygwin-package " "
           ) "output-setup"))
(defun my-run-cygwin nil
  (interactive)
  (my-shell-command
   (concat dir-cygwin "/bin/mintty.exe"
           "--window full --option FontHeight=18 "
           "/bin/bash ") "output-bash"))
;;; If you want to run a command in bash at startup, use this:
;;; "/bin/bash --login -c COMMAND") "output-bash"))
;; Key bindings
(define-prefix-command 'my-run-map)
(global-set-key (kbd "M-o r") 'my-run-map)
(global-set-key (kbd "M-o r w") 'my-run-web-browser)
(global-set-key (kbd "M-o r c") 'my-run-cygwin)
(global-set-key (kbd "M-o r s") 'my-run-cygwin-setup-manual)
;; P.S. here's how you can check your remaining battery percentage
;; on MS-Windows in PowerShell:
;; Get-CimInstance Win32_Battery | Select EstimatedChargeRemaining, EstimatedRunTime
;;; mswindows.el ends here
