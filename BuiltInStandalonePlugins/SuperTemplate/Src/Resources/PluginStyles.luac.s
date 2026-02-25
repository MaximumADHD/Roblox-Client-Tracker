MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 NEWTABLE                         R3 0 0
       20 NEWTABLE                         R4 0 0
       22 MOVE                             R5 R2
       23 LOADK                            R6 K2 ["SuperTemplate"]
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 CALL                             R5 3 -1
       27 RETURN                           R5 -1
