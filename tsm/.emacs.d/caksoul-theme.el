(require 'autothemer)

(autothemer-deftheme caksoul "Cak Solarized"
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF)))

		      ;; Specify the color palette, color columsn correspond to each of the classes above
		      (caksoul-fg      "#586E75")
		      (caksoul-bg      "#FDF6E3")
		      (caksoul-hl      "#EEE8D5")
		      (caksoul-red     "#DC322F")
		      (caksoul-green   "#859900")
		      (caksoul-blue    "#268BD2")
		      (caksoul-magenta "#6C71C4")
		      (caksoul-yellow  "#B58900")
		      (caksoul-orange  "#B58900")
		      (caksoul-cyan    "#2AA198")
		      (caksoul-gray    "#849191")
		      (caksoul-fvwm-fg "#000000")
		      (caksoul-fvwm-bg "#AEB2C3")
		      (caksoul-fvwm-hi "#EDEEF3")
		      (caksoul-fvwm-sh "#74798E"))

		      ;; Specifications for Emacs faces.
		      ;; Simpler than deftheme, just specify a face name and
		      ;; a plist of face definitions (nested for :underline, :box etc.)
		     ((default (:foreground caksoul-fg :background caksoul-bg))
		      (bold (:weight 'bold))
		      (italic (:slant 'italic))
		      (bold-italic (:weight 'bold :slant 'italic))
		      (underline (:underline t))
		      (shadow (:foreground caksoul-gray))
		      (button (:underline t :foreground caksoul-blue))
		      (error (:foreground caksoul-red))
		      (warning (:foreground caksoul-yellow))
		      (success (:foreground caksoul-green))
		      (show-paren-match (:background caksoul-cyan))
		      (show-paren-mismatch (:foreground caksoul-bg :background caksoul-fg))
		      (link (:underline t :foreground caksoul-blue))
		      (link-visited (:foreground caksoul-magenta :inherit 'link))
		      (highlight (:background caksoul-hl))
		      (region (:extend t :background caksoul-blue :foreground caksoul-bg))
		      (mode-line
		       (:box
			(:line-width -1 :style 'released-button)
			:foreground caksoul-fvwm-fg :background caksoul-fvwm-bg :weight 'normal))
		      (mode-line-inactive
		       (:box
			(:line-width -1 :style 'released-button)
			:foreground caksoul-fvwm-fg :background caksoul-fvwm-bg :weight 'normal))
		      (window-divider (:foreground caksoul-fvwm-bg))
		      (window-divider-first-pixel (:foreground caksoul-fvwm-hi))
		      (window-divider-last-pixel (:foreground caksoul-fvwm-sh))
		      (minibuffer-prompt (:foreground caksoul-blue))
		      (fringe (:background caksoul-hl))
		      (mouse-drag-and-drop-region (:inherit 'region))
		      (isearch (:foreground caksoul-bg :background caksoul-fg))
		      (isearch-fail (:foreground caksoul-bg :background caksoul-red))
		      (lazy-highlight (:inherit 'highlight))
		      (isearch-group-1 (:foreground caksoul-bg :foreground caksoul-fg))
		      (isearch-group-2 (:foreground caksoul-bg :foreground caksoul-fg))
		      (file-name-shadow (:inherit 'shadow))
		      (query-replace (:inherit 'isearch))
		      (buffer-menu-buffer (:weight 'normal))
		      (hl-line (:extend t :inherit 'highlight))
		      (header-line (:foreground caksoul-fg :background caksoul-hl))
		      (widget-documentation (:foreground caksoul-green))
		      (widget-button (:weight 'bold))
		      (widget-field (:extend t :background caksoul-hl))
		      (widget-single-line-field (:background caksoul-hl))
		      (widget-inactive (:inherit 'shadow))
		      (widget-button-pressed (:foreground caksoul-red))
		      (custom-invalid (:foreground caksoul-bg :background caksoul-red))
		      (custom-rogue (:foreground caksoul-bg :background caksoul-fg))
		      (custom-modified (:foreground caksoul-bg :background caksoul-fg))
		      (custom-set (:foreground caksoul-fg :background caksoul-hl))
		      (custom-changed (:foreground caksoul-bg :background caksoul-fg))
		      (custom-themed (:foreground caksoul-bg :background caksoul-fg))
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
			:foreground caksoul-fvwm-fg :background-caksoul-fvwm-bg))
		      (custom-button-pressed-unraised (:foreground caksoul-fg :inherit 'custom-button-unraised))
		      (custom-state (:foreground caksoul-green))
		      (custom-link (:inherit 'link))
		      (custom-comment (:inherit 'font-lock-comment-face))
		      (custom-comment-tag (:inherit 'font-lock-comment-face))
		      (custom-variable-obsolete (:inherit 'custom-invalid))
		      (custom-variable-tag (:weight 'bold))
		      (custom-variable-button (:weight 'bold :underline t))
		      (custom-visibility (:height 0.8 :inherit 'link))
		      (custom-face-tag (:inherit 'custom-variable-tag))
		      (custom-group-tag-1 (:height 1.2 :weight 'bold :foreground caksoul-red :inherit 'variable-pitch))
		      (custom-group-tag (:height 1.2 :weight 'bold :foreground caksoul-fg :inherit 'variable-pitch))
		      (custom-group-subtitled (:weight 'bold))
		      (calendar-today (:underline t))
		      (diary (:foreground caksoul-red))
		      (holiday (:background caksoul-fvwm-hi))
		      (calendar-weekday-header (:inherit 'font-lock-constant-face))
		      (calendar-weekend-header (:inherit 'font-lock-comment-face))
		      (calendar-month-header (:inherit 'font-lock-function-name-face))
		      (outline-1 (:foreground caksoul-blue))
		      (outline-2 (:foreground caksoul-green))
		      (outline-3 (:foreground caksoul-yellow))
		      (outline-4 (:foreground caksoul-magenta))
		      (outline-5 (:foreground caksoul-red))
		      (outline-6 (:foreground caksoul-cyan))
		      (outline-7 (:foreground caksoul-green))
		      (outline-8 (:foreground caksoul-yellow))
		      (help-key-binding (:foreground caksoul-fvwm-fg :background caksoul-fvwm-bg))
		      (secondary-selection (:background caksoul-hl))
		      
		      ;; font lock
		      (font-lock-comment-face              (:foreground caksoul-blue))
		      (font-lock-comment-delimiter-face    (:inherit 'font-lock-comment-face))
		      (font-lock-constant-face             (:foreground caksoul-green))
		      (font-lock-string-face               (:foreground caksoul-red))
		      (font-lock-doc-face                  (:inherit 'font-lock-string-face))
		      (font-lock-doc-markup-face           (:inherit 'font-lock-constant-face))
		      (font-lock-keyword-face              (:foreground caksoul-yellow))
		      (font-lock-builtin-face              (:foreground caksoul-yellow))
		      (font-lock-function-name-face        (:foreground caksoul-fg))
		      (font-lock-variable-name-face        (:foreground caksoul-fg))
		      (font-lock-type-face                 (:foreground caksoul-green))
		      (font-lock-constant-face             (:foreground caksoul-cyan))
		      (font-lock-warning-face              (:inherit 'error))
		      (font-lock-preprocessor-face         (:foreground caksoul-magenta))
		      (font-lock-regexp-grouping-backslash (:inherit 'bold))
		      (font-lock-regexp-grouping-construct (:inherit 'bold))
		      
		      ;; info
		      (info-node (:weight 'bold :slant 'italic :foreground caksoul-red))
		      (info-menu-star (:foreground caksoul-red))
		      (info-xref (:inherit 'link))
		      (info-xref-visited (:inherit ('link-visited 'info-xref)))

		      ;; ansi colors
		      (ansi-color-black (:foreground caksoul-fvwm-fg :background caksoul-fvwm-fg))
		      (ansi-color-red (:foreground caksoul-red :background caksoul-red))
		      (ansi-color-green (:foreground caksoul-green :background caksoul-green))
		      (ansi-color-yellow (:foreground caksoul-yellow :background caksoul-yellow))
		      (ansi-color-blue (:foreground caksoul-blue :background caksoul-blue))
		      (ansi-color-magenta (:foreground caksoul-magenta :background caksoul-magenta))
		      (ansi-color-cyan (:foreground caksoul-cyan :background caksoul-cyan))
		      (ansi-color-white (:foreground caksoul-bg :background caksoul-bg))
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
			(:style 'wave :color caksoul-red)))
		      (flyspell-duplicate
		       (:underline
			(:style 'wave :color caksoul-yellow)))

		      ;; ido
		      (ido-first-match (:weight 'bold))
		      (ido-only-match (:foreground caksoul-green))
		      (ido-subdir (:foreground caksoul-red))
		      (ido-virtual (:inherit 'font-lock-builtin-face))
		      (ido-indicator (:width 'condensed :foreground caksoul-bg :background caksoul-red))
		      (ido-incomplete-regexp (:inherit 'font-lock-warning-face))

		      ;; org
		      (org-default (:inherit 'default))
		      (org-hide (:foreground caksoul-gray))
		      (org-dispatcher-highlight (:weight 'bold :inherit 'highlight))
		      (org-level-1 (:inherit 'outline-1))
		      (org-level-2 (:inherit 'outline-2))
		      (org-level-3 (:inherit 'outline-3))
		      (org-level-4 (:inherit 'outline-4))
		      (org-level-5 (:inherit 'outline-5))
		      (org-level-6 (:inherit 'outline-6))
		      (org-level-7 (:inherit 'outline-7))
		      (org-level-8 (:inherit 'outline-8))
		      (org-special-keyword (:inherit 'font-lock-keyword-face))
		      (org-column (:weight 'normal :slant 'normal :underline nil :strike-through nil :background caksoul-hl))
		      (org-column-title (:weight 'bold :underline t :background caksoul-hl))
		      (org-footnote (:underline t :foreground caksoul-yellow))
		      (org-ellipsis (:underline t :foreground caksoul-yellow))
		      (org-target (:underline t))
		      (org-date (:foreground caksoul-magenta))
		      (org-date-selected (:inverse-video t :foreground caksoul-red))
		      (org-sexp-date (:foreground caksoul-red))
		      (org-todo (:weight 'bold :foreground caksoul-red))
		      (org-done (:weight 'bold :foreground caksoul-green))
		      (org-agenda-done (:foreground caksoul-green))
		      (org-headline-todo (:foreground caksoul-red))
		      (org-headline-done (:foreground caksoul-green))
		      (org-priority (:inherit 'font-lock-keyword-face))
		      (org-checkbox (:inherit 'bold :foreground caksoul-blue))
		      (org-checkbox-statistics-todo (:inherit 'org-todo :foreground caksoul-green))
		      (org-checkbox-statistics-done (:inherit 'org-done :foreground caksoul-green))
		      (org-table (:foreground caksoul-blue))
		      (org-table-header (:foreground caksoul-fg :background caksoul-hl :inherit 'org-table))
		      (org-formula (:foreground caksoul-magenta))
		      (org-code (:inherit 'shadow))
		      (org-meta-line (:inherit 'font-lock-comment-face))
		      (org-document-title (:weight 'normal :foreground caksoul-magenta))
		      (org-document-info (:foreground caksoul-fg))
		      (org-document-info-keyword (:inherit 'shadow))
		      (org-block (:extend t :inherit 'shadow))
		      (org-block-begin-line (:extend t :inherit 'org-meta-line))
		      (org-block-end-line (:extend t :inherit 'org-block-begin-line))
		      (org-clock-overlay (:foreground caksoul-magenta :background caksoul-hl))
		      (org-agenda-structure (:foreground caksoul-green))
		      (org-agenda-structure-secondary (:inherit 'org-agenda-structure))
		      (org-agenda-structure-filter (:inherit ('org-warning 'org-agenda-structure)))
		      (org-agenda-date (:inherit 'org-agenda-structure))
		      (org-agenda-date-today (:weight 'bold :slant 'italic :inherit 'org-agenda-date))
		      (org-agenda-date-weekend-today (:inherit 'org-agenda-date-today))
		      (org-agenda-clocking (:inherit 'secondary-selection))
		      (org-agenda-date-weekend (:weight 'bold :inherit 'org-agenda-date))
		      (org-scheduled (:foreground caksoul-green))
		      (org-scheduled-today (:foreground caksoul-green))
		      (org-agenda-dimmed-todo-face (:foreground caksoul-gray))
		      (org-scheduled-previously (:foreground caksoul-red))
		      (org-imminent-deadline (:inherit 'org-warning))
		      (org-upcoming-deadline (:foreground caksoul-red))
		      (org-upcoming-distant-deadline (:inherit 'org-default))
		      (org-agenda-restriction-lock (:background caksoul-hl))
		      (org-agenda-filter-tags (:inherit 'mode-line))
		      (org-agenda-filter-category (:inherit 'mode-line))
		      (org-agenda-filter-effort (:inherit 'mode-line))
		      (org-agenda-filter-regexp (:inherit 'mode-line))
		      (org-time-grid (:foreground caksoul-yellow))
		      (org-latex-and-related (:foreground caksoul-magenta))
		      (org-mode-line-clock-overrun (:background caksoul-red :inherit 'mode-line))

		      ;; dired
		      (dired-broken-symlink (:weight 'bold :foreground caksoul-bg :background caksoul-red))

		      ;; avy
		      (avy-lead-face (:foreground caksoul-bg :background caksoul-red))
		      (avy-lead-face-0 (:foreground caksoul-bg :background caksoul-blue))
		      (avy-lead-face-1 (:foreground caksoul-bg :background caksoul-gray))
		      (avy-lead-face-2 (:foreground caksoul-bg :background caksoul-magenta))
		      ))

(provide-theme 'caksoul)
