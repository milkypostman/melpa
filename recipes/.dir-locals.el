((nil . ((eval . (when (and 
                        (buffer-file-name)
                        (file-regular-p (buffer-file-name))
                        (string-match-p "^[^.]" (buffer-file-name)))
                   (unless (featurep 'package-build)
                     (let ((load-path (cons "../package-build" load-path)))
                       (require 'package-build)))
                   (package-build-minor-mode)
                   (set (make-local-variable 'package-build-working-dir) (expand-file-name "../working/"))
                   (set (make-local-variable 'package-build-archive-dir) (expand-file-name "../packages/"))
                   (set (make-local-variable 'package-build-recipes-dir) default-directory))))))
