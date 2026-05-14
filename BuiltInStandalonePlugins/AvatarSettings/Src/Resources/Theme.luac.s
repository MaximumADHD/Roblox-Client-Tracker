MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Style"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleKey"]
       25 GETTABLEKS                       R5 R3 K11 ["ComponentSymbols"]
       27 NEWTABLE                         R6 0 0
       29 LOADK                            R9 K12 ["PresetTooltipCheck"]
       30 NAMECALL                         R7 R5 K13 ["add"]
       32 CALL                             R7 2 0
       33 GETTABLEKS                       R7 R5 K12 ["PresetTooltipCheck"]
       35 DUPTABLE                         R8 K15 [{"Image"}]
       36 GETTABLEKS                       R9 R4 K16 ["PresetTooltipCheckImage"]
       38 SETTABLEKS                       R9 R8 K14 ["Image"]
       40 SETTABLE                         R8 R6 R7
       41 LOADK                            R9 K17 ["PresetTooltipX"]
       42 NAMECALL                         R7 R5 K13 ["add"]
       44 CALL                             R7 2 0
       45 GETTABLEKS                       R7 R5 K17 ["PresetTooltipX"]
       47 DUPTABLE                         R8 K15 [{"Image"}]
       48 GETTABLEKS                       R9 R4 K18 ["PresetTooltipXImage"]
       50 SETTABLEKS                       R9 R8 K14 ["Image"]
       52 SETTABLE                         R8 R6 R7
       53 RETURN                           R6 1
