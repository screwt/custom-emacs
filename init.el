(setq make-backup-files nil) 
(add-to-list 'load-path "~/.emacs.d/auto-comp-install/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-comp-install//ac-dict")
(ac-config-default)

(windmove-default-keybindings)
(ido-mode)





(define-key input-decode-map "\e[D" [S-left])
(define-key input-decode-map "\e[C" [S-right])
(define-key input-decode-map "\e[B" [S-down])
(define-key input-decode-map "\e[A" [S-up])
(define-key input-decode-map "\e[F" [S-end])
(define-key input-decode-map "\e[H" [S-home])

(setq create-lockfiles nil)

;; MELPA REPO
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
