MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Tooltip"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 DUPTABLE                         R6 K19 [{["DropShadowPadding"] = 6, ["MaxWidth"] = 200, ["Offset"], ["Padding"] = 5, ["ShowDelay"] = 0.3}]
       23 GETIMPORT                        R7 K22 [Vector2.new]
       25 LOADN                            R8 10
       26 LOADN                            R9 5
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K14 ["Offset"]
       30 CALL                             R2 4 -1
       31 RETURN                           R2 -1
