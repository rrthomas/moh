((text-mode . ((eval . (add-hook 'after-save-hook
                                 (lambda () (shell-command "a2x --dblatex-opts \"-P latex.output.revhistory=0 --texstyle=moh\" -d book mother_of_hydrogen.txt &"))
                                 nil t)))))
