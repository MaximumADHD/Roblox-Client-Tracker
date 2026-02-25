MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Util"]
       11 GETTABLEKS                       R4 R5 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R3 R4 K8 ["Interactors"]
       15 GETTABLEKS                       R2 R3 K9 ["InteractorTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["PropertyTypes"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1
