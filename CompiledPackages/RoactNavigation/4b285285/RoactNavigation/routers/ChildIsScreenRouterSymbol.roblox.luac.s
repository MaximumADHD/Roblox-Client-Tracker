MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["NavigationSymbol"]
       11 CALL                             R1 1 1
       12 MOVE                             R2 R1
       13 LOADK                            R3 K6 ["CHILD_IS_SCREEN_ROUTER"]
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1
