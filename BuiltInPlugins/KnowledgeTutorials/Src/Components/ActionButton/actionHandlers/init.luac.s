MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K11 [{"selectInstance", "openLink", "spotlight"}]
       15 GETIMPORT                        R3 K5 [require]
       17 GETIMPORT                        R5 K1 [script]
       19 GETTABLEKS                       R4 R5 K8 ["selectInstance"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["selectInstance"]
       24 GETIMPORT                        R3 K5 [require]
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R4 R5 K9 ["openLink"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K9 ["openLink"]
       33 GETIMPORT                        R3 K5 [require]
       35 GETIMPORT                        R5 K1 [script]
       37 GETTABLEKS                       R4 R5 K10 ["spotlight"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K10 ["spotlight"]
       42 RETURN                           R2 1
