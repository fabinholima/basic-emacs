


(use-package auctex
  :defer t
  :ensure t)

(use-package latex
  :requires auctex
  :hook ((LaTeX-mode . turn-on-reftex))
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
			       (append org-babel-load-languages
				       '((latex . t)))))



(use-package ob-latex                                      ;
  ;;  :straight t
  :ensure nil
  :after org
  :defer
  :custom (org-latex-compiler "lualatex"))




(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))


(setq org-beamer-outline-frame-title "Sumário")


(with-eval-after-load "ox-latex"


  (add-to-list 'org-latex-classes
               '("beamer"
                 "\\documentclass{beamer}
                [PACKAGES]
                [NO-DEFAULT-PACKAGES]"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  )



(add-to-list 'org-latex-classes
             '("koma-article" "\\documentclass{scrartcl}
                            [NO-DEFAULT-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;;
;; Custom classes
;;;
(add-to-list 'org-latex-classes
             '("koma-book" "\\documentclass{scrbook}
                    [NO-DEFAULT-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



(add-to-list 'org-latex-classes
             '("memoir-article"
               "\\documentclass[12pt,oneside,article]{memoir}
                [PACKAGES]
                [NO-DEFAULT-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


;;;; Custom  title beamer


(setq org-latex-title-command
      "\\begingroup
  \\setbeamertemplate{headline}{}
  \\maketitle
  \\endgroup")


(provide 'config-tex)
