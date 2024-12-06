

(use-package hydra
  :config
  :ensure t
  ;(global-set-key (kbd "<f8>") 'hydra-major/body)
  ;(global-set-key (kbd "<f3>")   'hydra-bib-etc/body)
  ;(global-set-key (kbd "C-<f3>") 'hydra-dired/body)
)






(defhydra hydra-major (:color blue :columns 5)
  "Latex"
  ("w" org-beamer-export-to-pdf "Beamer PDF")
  ("e" org-beamer-export-to-latex "Beamer")
  ("r" org-latex-export-to-latex  "Latex")
  ("t" org-latex-export-to-pdf "Latex PDF")
  ("h" org-html-export-to-html "HTML"))

(global-set-key (kbd "C-c m") 'hydra-major/body)

; (defhydra hydra-major (:color blue :columns 4)
;   "major-mode"
;   ("b" bibtex-mode "bibtex")
;   ("l" latex-mode "latex")
;   ("o" org-mode "org")
;   ("s" lisp-mode "lisp")
;   ("t" text-mode "text")
;   ("c" 'toggle-truncate-lines "tog-trunc-lines")
;   ("f" auto-fill-mode "auto-fill")
;   ("h" html-mode "html")
;   ("m" message-mode "msg")
;   ("n" narrow-or-widen-dwim "narw-wide")
;   ("r" read-only-mode "read-only")
;   ("u" linum-mode "lin-num")
;   ("q" nil "cancel")
; )


; (use-package hydra-posframe
; :load-path hydra-posframe-p
; :config
; (require 'hydra-posframe)
; :custom
; (hydra-posframe-parameters
; '((left-fringe . 4) (right-fringe . 4) (top-fringe . 4) (bottom-fringe . 4) (height . 18) (width . 105) (min-height . 17) (max-height . 30) (top . 25)))
; :custom-face
; (hydra-posframe-border-face ((t (:background "#ffffff"))))
; (hydra-posframe-face ((t (:background-color "#6272a4"))))
; :hook
; (after-init . hydra-posframe-enable)
; );end use-package-hydra-posframe






; (major-mode-hydra-define emacs-lisp-mode nil
;   ("Eval"
;    (("b" eval-buffer "buffer")
;     ("e" eval-defun "defun")
;     ("r" eval-region "region"))
;    "REPL"
;    (("I" ielm "ielm"))
;    "Test"
;    (("t" ert "prompt")
;     ("T" (ert t) "all")
;     ("F" (ert :failed) "failed"))
;    "Doc"
;    (("d" describe-foo-at-point "thing-at-pt")
;     ("f" describe-function "function")
;     ("v" describe-variable "variable")
;     ("i" info-lookup-symbol "info lookup"))))


;; NOTE: hydra and posframe are required


; (use-package hydra-posframe
;   :after hydra
;   :straight (:host github :repo “Ladicle/hydra-posframe”)
;   :hook (after-init . hydra-posframe-enable)
;   :init
;   (setq hydra-posframe-poshandler ‘posframe-poshandler-frame-bottom-center)
;   (setq hydra-posframe-border-width 1)
;   (setq hydra-posframe-parameters ‘((left-fringe . 5)(right-fringe . 5)))
;   :custom-face (hydra-posframe-border-face ((t (:background “#bf616a”))))
;   :custom-face (hydra-posframe-face ((t (:background “#3b4252”)))))


;   (defhydra hydra-major (:color blue :columns 4). 
;     "major-mode". 
;     ("b" bibtex-mode "bibtex"). 
;     ("l" latex-mode "latex"))



; (pretty-hydra-define jp-toggles
;   (:color amaranth :quit-key "q" :title (with-faicon "toggle-on" "Titel"))
;   ("Basic"
;    (("n" linum-mode "line number" :toggle t)
;     ("w" whitespace-mode "whitespace" :toggle t)
;     ("W" whitespace-cleanup-mode "whitespace cleanup" :toggle t)
;     ("r" rainbow-mode "rainbow" :toggle t)
;     ("L" page-break-lines-mode "page break lines" :toggle t))))


; (defhydra hydra-org-template (:color blue :hint nil)
;   "
; _c_enter  _q_uote    _L_aTeX:
; _l_atex   _e_xample  _i_ndex:
; _a_scii   _v_erse    _I_NCLUDE:
; _s_rc     ^ ^        _H_TML:
; _h_tml    ^ ^        _A_SCII:
; "
;   ("s" (hot-expand "<s"))
;   ("e" (hot-expand "<e"))
;   ("q" (hot-expand "<q"))
;   ("v" (hot-expand "<v"))
;   ("c" (hot-expand "<c"))
;   ("l" (hot-expand "<l"))
;   ("h" (hot-expand "<h"))
;   ("a" (hot-expand "<a"))
;   ("L" (hot-expand "<L"))
;   ("i" (hot-expand "<i"))
;   ("I" (hot-expand "<I"))
;   ("H" (hot-expand "<H"))
;   ("A" (hot-expand "<A"))
;   ("<" self-insert-command "ins")
;   ("o" nil "quit"))


; (defun hot-expand (str)
;   "Expand org template."
;   (insert str)
;   (org-try-structure-completion))


; (define-key org-mode-map "<"
;   (lambda () (interactive)
;      (if (looking-back "^")
;          (hydra-org-template/body)
;        (self-insert-command 1))))


(provide 'config-hydra)
