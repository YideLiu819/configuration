(setq gc-cons-threshold most-positive-fixnum)
;(tool-bar-mode 1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(defun disable-mode (mode)
  (funcall mode -1))
(disable-mode 'tool-bar-mode)
;(defun disable-mode-list (mode-list)
;  )
;; (setq inhibit-startup-message t
;;       initial-frame-alist '((width . 80)
;; 			    (height . 30))
;;       make-backup-files nil
;;       auto-save-default nil
;;       ;; warning-minimum-level :emergency
;;       )
(set-face-attribute 'default nil
		    :height 120
		    :family "Maple Mono NF CN")

(add-to-list 'load-path "~/Programs/emacs-related/plugin/themes/")
(require 'doom-themes)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t)
(load-theme 'doom-one t)


(add-to-list 'load-path "~/Programs/emacs-related/plugin/kbd-mode/")
;; (require 'kbd-mode)

(add-to-list 'load-path "~/Programs/emacs-related/plugin/blink-search")
(require 'blink-search)
(keymap-global-set "M-x" 'blink-search)

(add-to-list 'load-path "~/Programs/emacs-related/plugin/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(add-to-list 'load-path "~/Programs/emacs-related/plugin/markdown-mode")
(require 'markdown-mode)

(add-to-list 'load-path "~/Programs/emacs-related/plugin/lsp-bridge")
(require 'lsp-bridge)
(global-lsp-bridge-mode)
(setq lsp-bridge-python-lsp-server "pyright")
;; todo markdown-mode yasnippet theme eaf

(add-to-list 'load-path "~/Programs/emacs-related/plugin/emacs-application-framework")
(require 'eaf)
(setq eaf-enable-debug t)
(require 'eaf-browser)
(setq eaf-webengine-default-zoom 1.4)
(setq eaf-webengine-font-size 20)
(require 'eaf-pdf-viewer)
(require 'eaf-pyqterminal)
(setq eaf-pyqterminal-font-size 23)
(setq eaf-pyqterminal-font-family "SauceCodePro Nerd Font")
(require 'eaf-git)
