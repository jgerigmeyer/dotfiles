(add-to-list 'load-path "~/.emacs.d" load-path)

(require 'init-etags)
(require 'init-python)
(require 'init-django)
(require 'init-jinja)
(require 'init-git)
(require 'init-js)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key [f9] 'multi-term)

(require 'column-marker)
(autoload 'revbufs "revbufs" "Revert all buffers" t)

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))

; from http://www.emacswiki.org/emacs/CopyAndPaste
(global-set-key "\C-x\C-k" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

; from https://sites.google.com/site/steveyegge2/effective-emacs
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-m" 'execute-extended-command)

(ido-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "firefox")
 '(default-frame-alist (quote ((menu-bar-lines . 1))))
 '(etags-table-search-up-depth 10)
 '(fill-column 79)
 '(flymake-allowed-file-name-masks (quote (("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init) ("\\.xml\\'" flymake-xml-init) ("\\.cs\\'" flymake-simple-make-init) ("\\.py\\'" flymake-pyflakes-init) ("\\.p[ml]\\'" flymake-perl-init) ("\\.php[345]?\\'" flymake-php-init) ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup) ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup) ("\\.js\\'" flymake-jshint-init flymake-simple-cleanup flymake-get-real-file-name))))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(python-mode-hook (quote (imenu-add-menubar-index cjm-python-mode-hook)) t)
 '(require-final-newline (quote visit-save))
 '(same-window-buffer-names (quote ("*shell*" "*mail*" "*inferior-lisp*" "*ielm*" "*scheme*" "*Org Agenda*" "*Agenda Commands*")))
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tags-add-tables nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(when (require 'color-theme nil 'noerror)
  (when (require 'color-theme-solarized nil 'noerror)
    (color-theme-solarized-dark)))
