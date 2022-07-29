(ert-deftest test-ezf-1 ()
  (let ((test1 (ezf-1 '("autodep8 - générateur de fichiers de contrôle de test DEP-8") "1"))
        (test2 (ezf-1 '("autodep8 - générateur de fichiers de contrôle de test DEP-8") "2,4"))
        (test3 (ezf-1 '("1071 helmcd -nw") "1,"))
        (test4 (ezf-1 '("1071 helmcd -nw") "1,2"))
        (test4 (ezf-1 '("1071 helmcd -nw") "2")))
    (should (string= test1 "autodep8"))
    (should (string= test2 "g\\én\\érateur de fichiers"))
    (should (string= test3 "helmcd -nw"))
    (should (string= test4 "helmcd"))))
