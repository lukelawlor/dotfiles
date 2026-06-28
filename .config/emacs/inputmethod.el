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
(quail-define-package
 "gaeilge" "Gaeılge" "GS" nil
 "Irish (Gaeılge) input method with postfix modifiers for séıṁıú &
dotless i & j

Doubling the postfix separates the letter and postfix

New letters: ḃċḋḟġṁṗṡṫ áéíóúıȷ
" nil t nil nil nil nil nil nil nil nil t)
(quail-define-rules
 ("BH" ?Ḃ) ("Bh" ?Ḃ) ("bH" ?ḃ) ("bh" ?ḃ)
 ("Ch" ?Ċ) ("CH" ?Ċ) ("ch" ?ċ) ("cH" ?ċ)
 ("DH" ?Ḋ) ("Dh" ?Ḋ) ("dH" ?ḋ) ("dh" ?ḋ)
 ("FH" ?Ḟ) ("Fh" ?Ḟ) ("fH" ?ḟ) ("fh" ?ḟ)
 ("Gh" ?Ġ) ("GH" ?Ġ) ("gh" ?ġ) ("gH" ?ġ)
 ("Mh" ?Ṁ) ("MH" ?Ṁ) ("mh" ?ṁ) ("mH" ?ṁ)
 ("Ph" ?Ṗ) ("PH" ?Ṗ) ("ph" ?ṗ) ("pH" ?ṗ)
 ("Sh" ?Ṡ) ("SH" ?Ṡ) ("sh" ?ṡ) ("sH" ?ṡ)
 ("Th" ?Ṫ) ("TH" ?Ṫ) ("th" ?ṫ) ("tH" ?ṫ)

 ("i" ?ı) ("j" ?ȷ)
 ("AA" ?Á) ("Aa" ?Á) ("aA" ?á) ("aa" ?á) ("A'" ?Á) ("a'" ?á)
 ("EE" ?É) ("Ee" ?É) ("ee" ?é) ("eE" ?é) ("E'" ?É) ("e'" ?é)
 ("II" ?Í) ("Ii" ?Í) ("iI" ?í) ("ii" ?í) ("I'" ?Í) ("i'" ?í)
 ("OO" ?Ó) ("Oo" ?Ó) ("oo" ?ó) ("oO" ?ó) ("O'" ?Ó) ("o'" ?ó)
 ("UU" ?Ú) ("Uu" ?Ú) ("uU" ?ú) ("uu" ?ú) ("U'" ?Ú) ("u'" ?ú)

 ("BHH" ["BH"]) ("Bhh" ["Bh"]) ("bhh" ["bh"])
 ("CHH" ["CH"]) ("Chh" ["Ch"]) ("chh" ["ch"])
 ("DHH" ["DH"]) ("Dhh" ["Dh"]) ("dhh" ["dh"])
 ("FHH" ["FH"]) ("Fhh" ["Fh"]) ("fhh" ["fh"])
 ("GHH" ["GH"]) ("Ghh" ["Gh"]) ("ghh" ["gh"])
 ("MHH" ["MH"]) ("Mhh" ["Mh"]) ("mhh" ["mh"])
 ("PHH" ["PH"]) ("Phh" ["Ph"]) ("phh" ["ph"])
 ("SHH" ["SH"]) ("Shh" ["Sh"]) ("shh" ["sh"])
 ("THH" ["TH"]) ("Thh" ["Th"]) ("thh" ["th"])

 ("AAA" ["AA"]) ("Aaa" ["Aa"]) ("aaa" ["aa"]) ("A''" ["A'"])
 ("a''" ["a'"])
 ("EEE" ["EE"]) ("Eee" ["Ee"]) ("eee" ["ee"]) ("E''" ["E'"])
 ("e''" ["e'"])
 ("III" ["II"]) ("Iii" ["Iı"]) ("iii" ["ıı"]) ("I''" ["I'"])
 ("i''" ["ı'"])
 ("OOO" ["OO"]) ("Ooo" ["Oo"]) ("ooo" ["oo"]) ("O''" ["O'"])
 ("o''" ["o'"])
 ("UUU" ["UU"]) ("Uuu" ["Uu"]) ("uuu" ["uu"]) ("U''" ["U'"])
 ("u''" ["u'"])
 )
;;; inputmethod.el ends here
