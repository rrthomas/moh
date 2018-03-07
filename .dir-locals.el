;; Adapted from https://stackoverflow.com/questions/4012321/how-can-i-access-the-path-to-the-current-directory-in-an-emacs-directory-variabl
((nil . ((eval . (set (make-local-variable 'ispell-personal-dictionary)
                      (expand-file-name
                       "spelling-list.txt"
                       (file-name-directory
                        (let ((d (dir-locals-find-file ".")))
                          (if (stringp d) d (car d)))))))))
 (text-mode . ((eval . (add-hook 'after-save-hook
                                 (lambda () (shell-command "a2x mother_of_hydrogen.txt &"))
                                 nil t)))))
