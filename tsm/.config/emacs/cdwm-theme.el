(require 'autothemer)

(autothemer-deftheme cdwm "CDWM"
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))

		      ;; Specify the color palette, color columsn correspond to each of the classes above

		      ;; cdwm
		      (cdwm-red     "#f07178")
		      (cdwm-green   "#c3e88d")
		      (cdwm-blue    "#82aaff")
		      (cdwm-magenta "#c792ea")
		      (cdwm-yellow  "#ffcb6b")
		      (cdwm-orange  "#ffcb6b")
		      (cdwm-cyan    "#89ddff")
		      (cdwm-gray    "#d0d0d0")
		      (cdwm-fvwm-fg "#82aaff")
		      (cdwm-fvwm-bg "#000000")
		      (cdwm-fvwm-hi "#ffcb6b")
		      (cdwm-fvwm-sh "#000000")
		      (cdwm-fg      "#bbc5ff")
		      (cdwm-bg      "#070711")
		      (cdwm-hl      "#0a103a")
                      )

		      ;; Specifications for Emacs faces.
		      ;; Simpler than deftheme, just specify a face name and
		      ;; a plist of face definitions (nested for :underline, :box etc.)
		     ((default (:foreground cdwm-fg :background cdwm-bg))
		      (bold (:weight 'bold))
		      (italic (:slant 'italic))
		      (bold-italic (:weight 'bold :slant 'italic))
		      (underline (:underline t))
		      (shadow (:foreground cdwm-gray))
		      (button (:underline t :foreground cdwm-blue))
		      (error (:foreground cdwm-red))
		      (warning (:foreground cdwm-yellow))
		      (success (:foreground cdwm-green))
		      (show-paren-match (:background cdwm-cyan))
		      (show-paren-mismatch (:foreground cdwm-bg :background cdwm-fg))
		      (link (:underline t :foreground cdwm-blue))
		      (link-visited (:foreground cdwm-magenta :inherit 'link))
		      (highlight (:background cdwm-hl))
		      (region (:extend t :background cdwm-blue :foreground cdwm-bg))
		      (mode-line
			(:foreground cdwm-fvwm-hi :background cdwm-fvwm-sh :weight 'normal :inverse-video nil))
		      (mode-line-inactive
			(:foreground cdwm-fvwm-fg :background cdwm-fvwm-bg :weight 'normal))
		      (window-divider (:foreground cdwm-fvwm-bg))
		      (window-divider-first-pixel (:foreground cdwm-fvwm-hi))
		      (window-divider-last-pixel (:foreground cdwm-fvwm-sh))
		      (minibuffer-prompt (:foreground cdwm-blue))
		      (fringe (:background cdwm-bg))
		      (mouse-drag-and-drop-region (:inherit 'region))
		      (isearch (:foreground cdwm-bg :background cdwm-fg))
		      (isearch-fail (:foreground cdwm-bg :background cdwm-red))
		      (lazy-highlight (:inherit 'highlight))
		      (isearch-group-1 (:foreground cdwm-bg :foreground cdwm-fg))
		      (isearch-group-2 (:foreground cdwm-bg :foreground cdwm-fg))
		      (file-name-shadow (:inherit 'shadow))
		      (query-replace (:inherit 'isearch))
		      (buffer-menu-buffer (:weight 'normal))
		      (hl-line (:extend t :inherit 'highlight))
		      (header-line (:foreground cdwm-fg :background cdwm-hl))
		      (widget-documentation (:foreground cdwm-green))
		      (widget-button (:weight 'bold))
		      (widget-field (:extend t :background cdwm-hl))
		      (widget-single-line-field (:background cdwm-hl))
		      (widget-inactive (:inherit 'shadow))
		      (widget-button-pressed (:foreground cdwm-red))
		      (custom-invalid (:foreground cdwm-bg :background cdwm-red))
		      (custom-rogue (:foreground cdwm-bg :background cdwm-fg))
		      (custom-modified (:foreground cdwm-bg :background cdwm-fg))
		      (custom-set (:foreground cdwm-fg :background cdwm-hl))
		      (custom-changed (:foreground cdwm-bg :background cdwm-fg))
		      (custom-themed (:foreground cdwm-bg :background cdwm-fg))
		      (custom-saved (:underline t))
		      (custom-button
		       (:box
			(:line-width 2 :style 'released-button)
			:inherit 'button))
		      (custom-button-mouse (:inherit 'custom-button))
		      (custom-button-unraised (:inherit 'underline))
		      (custom-button-pressed
		       (:box
			(:line-width 2 :style 'pressed-button)
			:foreground cdwm-fvwm-fg :background-cdwm-fvwm-bg))
		      (custom-button-pressed-unraised (:foreground cdwm-fg :inherit 'custom-button-unraised))
		      (custom-state (:foreground cdwm-green))
		      (custom-link (:inherit 'link))
		      (custom-comment (:inherit 'font-lock-comment-face))
		      (custom-comment-tag (:inherit 'font-lock-comment-face))
		      (custom-variable-obsolete (:inherit 'custom-invalid))
		      (custom-variable-tag (:weight 'bold))
		      (custom-variable-button (:weight 'bold :underline t))
		      (custom-visibility (:height 0.8 :inherit 'link))
		      (custom-face-tag (:inherit 'custom-variable-tag))
		      (custom-group-tag-1 (:height 1.2 :weight 'bold :foreground cdwm-red :inherit 'variable-pitch))
		      (custom-group-tag (:height 1.2 :weight 'bold :foreground cdwm-fg :inherit 'variable-pitch))
		      (custom-group-subtitled (:weight 'bold))
		      (calendar-today (:underline t))
		      (diary (:foreground cdwm-red))
		      (holiday (:background cdwm-fvwm-hi))
		      (calendar-weekday-header (:inherit 'font-lock-constant-face))
		      (calendar-weekend-header (:inherit 'font-lock-comment-face))
		      (calendar-month-header (:inherit 'font-lock-function-name-face))
		      (outline-1 (:foreground cdwm-blue))
		      (outline-2 (:foreground cdwm-green))
		      (outline-3 (:foreground cdwm-yellow))
		      (outline-4 (:foreground cdwm-magenta))
		      (outline-5 (:foreground cdwm-red))
		      (outline-6 (:foreground cdwm-cyan))
		      (outline-7 (:foreground cdwm-green))
		      (outline-8 (:foreground cdwm-yellow))
		      (help-key-binding (:foreground cdwm-fvwm-fg :background cdwm-fvwm-bg))
		      (secondary-selection (:background cdwm-hl))
		      
		      ;; font lock
		      (font-lock-comment-face              (:foreground cdwm-blue))
		      (font-lock-comment-delimiter-face    (:inherit 'font-lock-comment-face))
		      (font-lock-constant-face             (:foreground cdwm-green))
		      (font-lock-string-face               (:foreground cdwm-red))
		      (font-lock-doc-face                  (:inherit 'font-lock-string-face))
		      (font-lock-doc-markup-face           (:inherit 'font-lock-constant-face))
		      (font-lock-keyword-face              (:foreground cdwm-yellow))
		      (font-lock-builtin-face              (:foreground cdwm-yellow))
		      (font-lock-function-name-face        (:foreground cdwm-fg))
		      (font-lock-variable-name-face        (:foreground cdwm-fg))
		      (font-lock-type-face                 (:foreground cdwm-green))
		      (font-lock-constant-face             (:foreground cdwm-cyan))
		      (font-lock-warning-face              (:inherit 'error))
		      (font-lock-preprocessor-face         (:foreground cdwm-magenta))
		      (font-lock-regexp-grouping-backslash (:inherit 'bold))
		      (font-lock-regexp-grouping-construct (:inherit 'bold))
		      
		      ;; info
		      (info-node (:weight 'bold :slant 'italic :foreground cdwm-red))
		      (info-menu-star (:foreground cdwm-red))
		      (info-xref (:inherit 'link))
		      (info-xref-visited (:inherit ('link-visited 'info-xref)))

		      ;; ansi colors
		      (ansi-color-black (:foreground cdwm-fvwm-fg :background cdwm-fvwm-fg))
		      (ansi-color-red (:foreground cdwm-red :background cdwm-red))
		      (ansi-color-green (:foreground cdwm-green :background cdwm-green))
		      (ansi-color-yellow (:foreground cdwm-yellow :background cdwm-yellow))
		      (ansi-color-blue (:foreground cdwm-blue :background cdwm-blue))
		      (ansi-color-magenta (:foreground cdwm-magenta :background cdwm-magenta))
		      (ansi-color-cyan (:foreground cdwm-cyan :background cdwm-cyan))
		      (ansi-color-white (:foreground cdwm-bg :background cdwm-bg))
		      (ansi-color-bright-black (:inherit 'ansi-color-black))
		      (ansi-color-bright-red (:inherit 'ansi-color-red))
		      (ansi-color-bright-green (:inherit 'ansi-color-green))
		      (ansi-color-bright-yellow (:inherit 'ansi-color-yellow))
		      (ansi-color-bright-blue (:inherit 'ansi-color-blue))
		      (ansi-color-bright-magenta (:inherit 'ansi-color-magenta))
		      (ansi-color-bright-cyan (:inherit 'ansi-color-cyan))
		      (ansi-color-bright-white (:inherit 'ansi-color-white))

		      ;; flyspell
		      (flyspell-incorrect
		       (:underline
			(:style 'wave :color cdwm-red)))
		      (flyspell-duplicate
		       (:underline
			(:style 'wave :color cdwm-yellow)))

		      ;; ido
		      (ido-first-match (:weight 'bold))
		      (ido-only-match (:foreground cdwm-green))
		      (ido-subdir (:foreground cdwm-red))
		      (ido-virtual (:inherit 'font-lock-builtin-face))
		      (ido-indicator (:width 'condensed :foreground cdwm-bg :background cdwm-red))
		      (ido-incomplete-regexp (:inherit 'font-lock-warning-face))

		      ;; org
		      (org-default (:inherit 'default))
		      (org-hide (:foreground cdwm-gray))
		      (org-dispatcher-highlight (:weight 'bold :inherit 'highlight))
		      ;;(org-level-1 (:inherit 'outline-1 :height 1.25))
		      ;;(org-level-2 (:inherit 'outline-2 :height 1.1))
		      (org-level-1 (:inherit 'outline-1))
		      (org-level-2 (:inherit 'outline-2))
		      (org-level-3 (:inherit 'outline-3))
		      (org-level-4 (:inherit 'outline-4))
		      (org-level-5 (:inherit 'outline-5))
		      (org-level-6 (:inherit 'outline-6))
		      (org-level-7 (:inherit 'outline-7))
		      (org-level-8 (:inherit 'outline-8))
		      (org-special-keyword (:inherit 'font-lock-keyword-face))
		      (org-column (:weight 'normal :slant 'normal :underline nil :strike-through nil :background cdwm-hl))
		      (org-column-title (:weight 'bold :underline t :background cdwm-hl))
		      (org-footnote (:underline t :foreground cdwm-yellow))
		      (org-ellipsis (:underline t :foreground cdwm-yellow))
		      (org-target (:underline t))
		      (org-date (:foreground cdwm-magenta))
		      (org-date-selected (:inverse-video t :foreground cdwm-red))
		      (org-sexp-date (:foreground cdwm-red))
		      (org-todo (:weight 'bold :foreground cdwm-red))
		      (org-done (:weight 'bold :foreground cdwm-green))
		      (org-agenda-done (:foreground cdwm-green))
		      (org-headline-todo (:foreground cdwm-red))
		      (org-headline-done (:foreground cdwm-green))
		      (org-priority (:inherit 'font-lock-keyword-face))
		      (org-checkbox (:inherit 'bold :foreground cdwm-blue))
		      (org-checkbox-statistics-todo (:inherit 'org-todo :foreground cdwm-green))
		      (org-checkbox-statistics-done (:inherit 'org-done :foreground cdwm-green))
		      (org-table (:foreground cdwm-blue))
		      (org-table-header (:foreground cdwm-fg :background cdwm-hl :inherit 'org-table))
		      (org-formula (:foreground cdwm-magenta))
		      (org-code (:inherit 'shadow))
		      (org-meta-line (:inherit 'font-lock-comment-face))
		      (org-document-title (:weight 'normal :foreground cdwm-magenta))
		      (org-document-info (:foreground cdwm-fg))
		      (org-document-info-keyword (:inherit 'shadow))
		      (org-block (:extend t :inherit 'shadow))
		      (org-block-begin-line (:extend t :inherit 'org-meta-line))
		      (org-block-end-line (:extend t :inherit 'org-block-begin-line))
		      (org-clock-overlay (:foreground cdwm-magenta :background cdwm-hl))
		      (org-agenda-structure (:foreground cdwm-green))
		      (org-agenda-structure-secondary (:inherit 'org-agenda-structure))
		      (org-agenda-structure-filter (:inherit ('org-warning 'org-agenda-structure)))
		      (org-agenda-date (:inherit 'org-agenda-structure))
		      (org-agenda-date-today (:weight 'bold :slant 'italic :inherit 'org-agenda-date))
		      (org-agenda-date-weekend-today (:inherit 'org-agenda-date-today))
		      (org-agenda-clocking (:inherit 'secondary-selection))
		      (org-agenda-date-weekend (:weight 'bold :inherit 'org-agenda-date))
		      (org-scheduled (:foreground cdwm-green))
		      (org-scheduled-today (:foreground cdwm-green))
		      (org-agenda-dimmed-todo-face (:foreground cdwm-gray))
		      (org-scheduled-previously (:foreground cdwm-red))
		      (org-imminent-deadline (:inherit 'org-warning))
		      (org-upcoming-deadline (:foreground cdwm-red))
		      (org-upcoming-distant-deadline (:inherit 'org-default))
		      (org-agenda-restriction-lock (:background cdwm-hl))
		      (org-agenda-filter-tags (:inherit 'mode-line))
		      (org-agenda-filter-category (:inherit 'mode-line))
		      (org-agenda-filter-effort (:inherit 'mode-line))
		      (org-agenda-filter-regexp (:inherit 'mode-line))
		      (org-time-grid (:foreground cdwm-yellow))
		      (org-latex-and-related (:foreground cdwm-magenta))
		      (org-mode-line-clock-overrun (:background cdwm-red :inherit 'mode-line))

		      ;; dired
		      (dired-broken-symlink (:weight 'bold :foreground cdwm-bg :background cdwm-red))

		      ;; avy
		      (avy-lead-face (:foreground cdwm-bg :background cdwm-red))
		      (avy-lead-face-0 (:foreground cdwm-bg :background cdwm-blue))
		      (avy-lead-face-1 (:foreground cdwm-bg :background cdwm-gray))
		      (avy-lead-face-2 (:foreground cdwm-bg :background cdwm-magenta))
		      )

		     ;; transparent bg
		     (set-frame-parameter nil 'alpha-background 70)
		     (add-to-list 'default-frame-alist '(alpha-background . 70))

                     ;; set the fringe size to 2 pixels
		     ;; this is the border size for my terminals
                     (fringe-mode 2)

		     ;; set the cursor color and have it work in new frames using emacsclient
		     ;; light
		     (setq default-frame-alist '((cursor-color . "#bbc5ff")))
		     ;; dark
		     ;;(setq default-frame-alist '((cursor-color . "#AEB2C3")))
		     )

(provide-theme 'cdwm)
