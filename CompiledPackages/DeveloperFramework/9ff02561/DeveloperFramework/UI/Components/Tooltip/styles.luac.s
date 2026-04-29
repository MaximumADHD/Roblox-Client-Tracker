MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Tooltip"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 DUPTABLE                         R6 K15 [{"DropShadowPadding", "MaxWidth", "Offset", "Padding", "ShowDelay"}]
       23 LOADN                            R7 6
       24 SETTABLEKS                       R7 R6 K10 ["DropShadowPadding"]
       26 LOADN                            R7 200
       27 SETTABLEKS                       R7 R6 K11 ["MaxWidth"]
       29 GETIMPORT                        R7 K18 [Vector2.new]
       31 LOADN                            R8 10
       32 LOADN                            R9 5
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K12 ["Offset"]
       36 LOADN                            R7 5
       37 SETTABLEKS                       R7 R6 K13 ["Padding"]
       39 LOADK                            R7 K19 [0.3]
       40 SETTABLEKS                       R7 R6 K14 ["ShowDelay"]
       42 CALL                             R2 4 -1
       43 RETURN                           R2 -1
