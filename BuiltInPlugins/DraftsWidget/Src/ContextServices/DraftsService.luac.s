MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R3 K8 ["ContextItem"]
       20 LOADK                            R5 K9 ["DraftsService"]
       21 NAMECALL                         R3 R2 K10 ["createSimple"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1
