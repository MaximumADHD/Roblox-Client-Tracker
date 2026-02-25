MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".Assistant-CustomIconButton-Disabled GuiButton"]
       26 DUPTABLE                         R7 K13 [{"BackgroundTransparency"}]
       27 LOADK                            R8 K14 [0.5]
       28 SETTABLEKS                       R8 R7 K12 ["BackgroundTransparency"]
       30 CALL                             R5 2 1
       31 MOVE                             R6 R2
       32 LOADK                            R7 K15 [".Assistant-CustomIconButton-Disabled"]
       33 DUPTABLE                         R8 K17 [{"ImageTransparency"}]
       34 LOADK                            R9 K14 [0.5]
       35 SETTABLEKS                       R9 R8 K16 ["ImageTransparency"]
       37 CALL                             R6 2 -1
       38 SETLIST                          R4 R5 -1 [1]
       40 NEWTABLE                         R5 0 0
       42 MOVE                             R6 R3
       43 LOADK                            R7 K2 ["Assistant"]
       44 MOVE                             R8 R4
       45 MOVE                             R9 R5
       46 CALL                             R6 3 -1
       47 RETURN                           R6 -1
