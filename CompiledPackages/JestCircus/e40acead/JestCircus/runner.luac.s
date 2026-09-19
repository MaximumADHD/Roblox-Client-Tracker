MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K4 [script]
        5 GETTABLEKS                       R2 R2 K5 ["Parent"]
        7 GETTABLEKS                       R2 R2 K6 ["circus"]
        9 GETTABLEKS                       R1 R2 K2 ["legacy-code-todo-rewrite"]
       11 GETTABLEKS                       R1 R1 K7 ["jestAdapter"]
       13 CALL                             R0 1 1
       14 RETURN                           R0 1
