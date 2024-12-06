(use-package package
  :demand t
  :custom
  (package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
		      ("melpa" . "https://melpa.org/packages/")
          ("nongnu" . "https://elpa.nongnu.org/nongnu/")
          ;("melpa-cn" . "http://1.15.88.122/melpa")
          ))
  :config
  (package-initialize))

(provide 'config-package)
