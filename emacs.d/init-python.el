(defun cjm-python-mode-hook ()
  (column-marker-1 80)
  (ropemacs-mode)
  (define-key python-mode-map "

; requires pyflakes
(require 'flymake)
(require 'flymake-cursor)
(defun flymake-pyflakes-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "pyflakes" (list local-file))))

(add-hook 'find-file-hook 'flymake-find-file-hook)


(setq ropemacs-enable-shortcuts nil)
(setq ropemacs-local-prefix "C-c C-p")
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(provide 'init-python)