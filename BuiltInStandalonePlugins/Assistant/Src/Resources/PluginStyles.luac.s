MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".Assistant-CustomIconButton-Disabled GuiButton"]
       26 DUPTABLE                         R7 K14 [{["BackgroundTransparency"] = 0.5}]
       27 CALL                             R5 2 1
       28 MOVE                             R6 R2
       29 LOADK                            R7 K15 [".Assistant-CustomIconButton-Disabled"]
       30 DUPTABLE                         R8 K17 [{["ImageTransparency"] = 0.5}]
       31 CALL                             R6 2 -1
       32 SETLIST                          R4 R5 -1 [1]
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R3
       37 LOADK                            R7 K2 ["Assistant"]
       38 MOVE                             R8 R4
       39 MOVE                             R9 R5
       40 CALL                             R6 3 -1
       41 RETURN                           R6 -1
