MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R4 K8 ["StateLayerAffordance"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Enums"]
       20 GETTABLEKS                       R4 R5 K9 ["StateLayerMode"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K7 ["Enums"]
       27 GETTABLEKS                       R5 R6 K10 ["CursorType"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K7 ["Enums"]
       34 GETTABLEKS                       R6 R7 K11 ["ControlState"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K7 ["Enums"]
       41 GETTABLEKS                       R7 R8 K12 ["ButtonVariant"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K7 ["Enums"]
       48 GETTABLEKS                       R8 R9 K13 ["InputSize"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R1 K14 ["React"]
       55 CALL                             R8 1 1
       56 NEWTABLE                         R9 0 0
       58 RETURN                           R9 1
