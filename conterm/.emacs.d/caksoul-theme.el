(require 'autothemer)

(autothemer-deftheme caksoul "Cak Solarized"
		     ;; Specify the color classes used by the theme
		     ((((class color) (min-colors #xFFFFFF))
		       ((class color) (min-colors #xFF)))

		      ;; Specify the color palette, color columsn correspond to each of the classes above
		      (caksoul-red     "#DC322F" nil)
		      (caksoul-green   "#859900" nil)
		      (caksoul-blue    "#268BD2" nil)
		      (caksoul-magenta "#6C71C4" nil)
		      (caksoul-yellow  "#B58900" nil)
		      (caksoul-orange  "#B58900" nil)
		      (caksoul-cyan    "#2AA198" nil))

		      ;; Specifications for Emacs faces.
		      ;; Simpler than deftheme, just specify a face name and
		      ;; a plist of face definitions (nested for :underline, :box etc.)
		      ((button (:underline t :weight 'bold :foreground caksoul-blue))
		       (error  (:foreground caksoul-red)))

		      ;; Forms after the face specifications are evaluated.
		      ;; (palette vars can be used, read below for details.)
		      
		      (custom-theme-set-variables 'caksoul
						  `(ansi-color-names-vector [,caksoul-red
									     ,caksoul-green
									     ,caksoul-blue
									     ,caksoul-magenta
									     ,caksoul-yellow
									     ,caksoul-orange
									     ,caksoul-cyan])))

(provide-theme 'caksoul)
