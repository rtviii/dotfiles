(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar


;; Set up the visible bell
;(setq visible-bell t)
(setq ring-bell-function 'ignore)

(set-face-attribute 'default nil :font "Fira Code Retina" :height 90)

(load-theme 'doom-wilmersdorf)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(column-number-mode)
(global-display-line-numbers-mode t)

(dolist (mode '(org-mode-hool
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package command-log-mode)

(use-package company
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  ;(setq company-idle-delay 0.3)
  (global-company-mode t))

(add-hook 'after-init-hook 'global-company-mode)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))


(global-set-key (kbd "C-M-j") 'counsel-switch-buffer)

(use-package all-the-icons)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package  doom-themes)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.001))


(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("C-0" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

(use-package general
  :config
  (general-create-definer rxz/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (rxz/leader-keys
    "t"  '(:ignore t :which-key "toggles")
    "tt" '(counsel-load-theme :which-key "choose theme")))

(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  
  (counsel-describe-variable-function #'helpful-variable)
  
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))


(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

  ;; Use visual line motions even outside of visual-line-mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))



(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(rxz/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))



(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(use-package forge)

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t))


(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))



(global-set-key (kbd "M-D") 'dired)

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; [ Windows ] ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)

(define-key evil-normal-state-map (kbd "C-a j") 'evil-window-split)
(define-key evil-normal-state-map (kbd "C-a l") 'evil-window-vsplit)
(define-key evil-normal-state-map (kbd "M-x") 'evil-window-delete)

(define-key evil-normal-state-map (kbd "M-x") 'evil-window-delete)
(define-key evil-normal-state-map (kbd "M-o") 'dired-other-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; [ Other Keybindings ] ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-H") 'help-command)
(global-unset-key (kbd "C-h"))

(define-key minibuffer-local-map (kbd "ESC") 'keyboard-escape-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(setq evil-want-minibuffer t)

(define-key evil-normal-state-map (kbd "J")
  (lambda nil (interactive) (evil-next-visual-line 5)))

(define-key evil-normal-state-map (kbd "K")
  (lambda nil (interactive) (evil-previous-visual-line 5)))

(windmove-default-keybindings)

(use-package rustic
  :ensure
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  ;; (setq lsp-enable-symbol-highlighting nil)
  ;; (setq lsp-signature-auto-activate nil)

  ;; comment to disable rustfmt on save
  (setq rustic-format-on-save t)
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

(defun rk/rustic-mode-hook ()
  (when buffer-file-name
    (setq-local buffer-save-without-query t)))



(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  ;; what to use when checking on-save. "check" is default, I prefer clippy
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-rust-analyzer-server-display-inlay-hints t)
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)

     

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-use-plists t)
(setq lsp-idle-delay 0.10)
  
  (lsp-ui-doc-enable nil))
(use-package company
  :ensure
  :custom
  (company-idle-delay 0) ;; how long to wait until popup
  ;; (company-begin-commands nil) ;; uncomment to disable popup
  :bind
  (:map company-active-map
	      ("C-n". company-select-next)
	      ("C-p". company-select-previous)
	      ("M-<". company-select-first)
	      ("M->". company-select-last)))

(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))
(use-package flycheck :ensure)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#282b33" "#e1c1ee" "#5b94ab" "#cfcf9c" "#819cd6" "#a6c1e0" "#7289bc" "#c6c6c6"])
 '(custom-safe-themes
   '("a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" default))
 '(exwm-floating-border-color "#141519")
 '(fci-rule-color "#888395")
 '(highlight-tail-colors ((("#2d353f" "#2d353f") . 0) (("#2f3440" "#2f3440") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#222228" "#819cd6"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#222228" "#5b94ab"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#222228" "#515462"))
 '(objed-cursor-color "#e1c1ee")
 '(package-selected-packages
   '(flycheck yasnippet lsp-ui company rustic which-key use-package typescript-mode rainbow-delimiters projectile lsp-mode ivy-rich hydra helpful general forge evil-surround evil-collection doom-themes doom-modeline counsel command-log-mode))
 '(pdf-view-midnight-colors (cons "#c6c6c6" "#282b33"))
 '(rustic-ansi-faces
   ["#282b33" "#e1c1ee" "#5b94ab" "#cfcf9c" "#819cd6" "#a6c1e0" "#7289bc" "#c6c6c6"])
 '(vc-annotate-background "#282b33")
 '(vc-annotate-color-map
   (list
    (cons 20 "#5b94ab")
    (cons 40 "#81a7a6")
    (cons 60 "#a8bba1")
    (cons 80 "#cfcf9c")
    (cons 100 "#c1cab2")
    (cons 120 "#b3c5c9")
    (cons 140 "#a6c1e0")
    (cons 160 "#a6c1e0")
    (cons 180 "#a6c1e0")
    (cons 200 "#a6c1e0")
    (cons 220 "#b9c1e4")
    (cons 240 "#cdc1e9")
    (cons 260 "#e1c1ee")
    (cons 280 "#bda5cb")
    (cons 300 "#998aa8")
    (cons 320 "#756f85")
    (cons 340 "#888395")
    (cons 360 "#888395")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
