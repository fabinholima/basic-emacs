(defgroup mine nil
  "Custom configuration for mine"
  :group 'local)

(defcustom mine-appearance
  'elegant
  "The appearance to use."
  :type '(radio
	  (const :tag "default" default)
	  (const :tag "elegant" elegant))
  :group 'mine)

(defcustom mine-cache-directory
  (expand-file-name ".cache/" user-emacs-directory)
  "The storage location for various persistent files."
  :type 'directory
  :group 'mine)

(defcustom mine-second-brain-location
  (expand-file-name "Org/" "~")
  "The location for second brain."
  :type 'directory
  :group 'mine)

(defcustom mine-window-manager
  t
  "Whether emacs should be used as window manager or not."
  :type 'boolean
  :group 'mine)

;; Make sure you already installed `use-package` through package manager
;; In my case I am using debian, I just install with apt-get install elpa-usepackage
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/elpa/use-package-2.4")
(require 'use-package)

(use-package cus-edit  
  :demand t
  :custom
  (custom-file (expand-file-name "custom.el" user-emacs-directory))
  :init
  (when (file-exists-p custom-file)
    (load custom-file)))


(let ((config-directory (expand-file-name "config/" user-emacs-directory)))
  (load (expand-file-name "config-core.el" config-directory))
  (load (expand-file-name "config-tls.el" config-directory))
  (load (expand-file-name "config-package.el" config-directory))
  ;(load (expand-file-name "config-wm.el" config-directory))
  (load (expand-file-name "config-appearance.el" config-directory))
  (load (expand-file-name "config-time.el" config-directory))
  ;(load (expand-file-name "config-battery.el" config-directory))
  (load (expand-file-name "config-dired.el" config-directory))
  (load (expand-file-name "config-eshell.el" config-directory))
  (load (expand-file-name "config-crypt.el" config-directory))
  (load (expand-file-name "config-desktop.el" config-directory))
  (load (expand-file-name "config-prog.el" config-directory))
  (load (expand-file-name "config-org.el" config-directory))
  ;(load (expand-file-name "config-emms.el" config-directory))
  (load (expand-file-name "config-buffer.el" config-directory))
  (load (expand-file-name "config-ido.el" config-directory))
  (load (expand-file-name "config-windows.el" config-directory))
  ;(load (expand-file-name "config-calendar.el" config-directory))
  (load (expand-file-name "config-newsticker.el" config-directory))
  ;(load (expand-file-name "config-gnus.el" config-directory))
  ;(load (expand-file-name "config-grammar.el" config-directory))
  (load (expand-file-name "config-hydra.el" config-directory))
  ;(load (expand-file-name "config-web.el" config-directory))
  (load (expand-file-name "config-misc.el" config-directory))
  (load (expand-file-name "config-abbrev.el" config-directory))
  (load (expand-file-name "config-ediff.el" config-directory))
  (load (expand-file-name "config-vc.el" config-directory))    
  ;(load (expand-file-name "config-rust.el" config-directory))
  (load (expand-file-name "config-treemacs.el" config-directory))
  (load (expand-file-name "config-tex.el" config-directory))
  (load (expand-file-name "config-erc.el" config-directory))                     
  (require 'config-core)
  ;(require 'config-calendar)
  (require 'config-tls)
  (require 'config-package)
  ;(require 'config-wm)
  (require 'config-appearance)
  (require 'config-time)
  ;(require 'config-battery)
  (require 'config-dired)
  (require 'config-eshell)
  (require 'config-crypt)
  (require 'config-desktop)
  (require 'config-prog)
  (require 'config-org)
  ;(require 'config-emms)
  (require 'config-ido)
  (require 'config-buffer)
  (require 'config-windows)
  (require 'config-newsticker)
  ;(require 'config-gnus)
  ;;(require 'config-grammar)
  ;;(require 'config-web)
   (require 'config-hydra)
  (require 'config-misc)
  (require 'config-abbrev)
  (require 'config-ediff)
  (require 'config-vc)
  ;(require 'config-rust)
  (require 'config-treemacs)
  (require 'config-tex)
  (require 'config-erc))
