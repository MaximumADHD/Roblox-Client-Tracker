MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["BadgeVariant"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R5 K10 ["StateLayerAffordance"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["StateLayerMode"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Enums"]
       39 GETTABLEKS                       R7 R7 K12 ["CursorType"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Enums"]
       46 GETTABLEKS                       R8 R8 K13 ["ControlState"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Enums"]
       53 GETTABLEKS                       R9 R9 K14 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Enums"]
       60 GETTABLEKS                       R10 R10 K15 ["InputFocusBehavior"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Enums"]
       67 GETTABLEKS                       R11 R11 K16 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Enums"]
       74 GETTABLEKS                       R12 R12 K17 ["InputVariant"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R1 K18 ["React"]
       81 CALL                             R12 1 1
       82 NEWTABLE                         R13 0 0
       84 RETURN                           R13 1
