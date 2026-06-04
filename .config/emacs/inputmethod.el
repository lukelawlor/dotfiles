;;; inputmethod.el --- input methods using quail
;; This is part of Luke Lawlor's GNU Emacs configuration, hosted at
;; <https://codeberg.org/lukelawlor/dotfiles>.
(quail-define-package
 "manju" "ᠮᠠᠨᠵᡠ" "ᠮᠠᠨᠵᡠ" nil
 "Manchu (ᠮᠠᠨᠵᡠ ᡤᡳᠰᡠᠨ) input method" nil t nil nil nil nil nil
 nil nil nil t)
(quail-define-rules
 ("a" "ᠠ") ("e" "ᡝ") ("i" "ᡳ") ("o" "ᠣ") ("u" "ᡠ") ("v" "ᡡ")
 ("n" "ᠨ") ("k" "ᡴ") ("g" "ᡤ") ("h" "ᡭ") ("b" "ᠪ") ("p" "ᡦ")
 ("s" "ᠰ") ("x" "ᡧ") ("t" "ᡨ") ("d" "ᡩ") ("l" "ᠯ") ("m" "ᠮ")
 ("c" "ᠴ") ("j" "ᠵ") ("y" "ᠶ") ("r" "ᡵ") ("f" "ᡶ") ("w" "ᠸ")
 (";" "ᠩ") ("[" "ᡮ") ("\\" "ᡟ") ("]" "ᡯ") ("/" "ᡰ") ("q" "ᡱ")
 ("z" "ᡷ") ("'" "᠊") ("," "᠈") ("." "᠉"))
;;; inputmethod.el ends here
