(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
						("gnu"       . "http://elpa.gnu.org/packages/")
						("melpa"     . "https://melpa.org/packages/")
						("marmalade" . "http://marmalade-repo.org/packages/")))

(load-theme 'gruber-darker t)
; Activate evil mode
(setq evil-want-keybinding nil)
(require 'evil)
(evil-mode 1)
(evil-collection-init)
(setq evil-insert-state-cursor 'bar)
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode 1)
(setq evil-want-C-u-scroll t)

(setq TeX-view-program-selection '((output-pdf "Zathura")))

; Change fonts
(setq inhibit-startup-screen t)
(set-frame-font "iosevka 16")

; Map ESC to jj
(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

; Disable bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

; Display relative numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

; Tab width
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

; Open .h in c++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; ocaml
(setq tuareg-prettify-symbols-full t)

(add-hook 'tuareg-mode-hook
          (lambda()
            (when (functionp 'prettify-symbols-mode)
              (prettify-symbols-mode))))


(global-set-key (kbd "C-c C-f") 'fzf)
