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
       17 LOADK                            R3 K9 [".Component-DragBar"]
       18 DUPTABLE                         R4 K12 [{["BackgroundColor3"] = "$ForegroundMain"}]
       19 NEWTABLE                         R5 0 3
       21 MOVE                             R6 R1
       22 LOADK                            R7 K13 [":hover"]
       23 DUPTABLE                         R8 K15 [{["BackgroundColor3"] = "$ActionHover"}]
       24 CALL                             R6 2 1
       25 MOVE                             R7 R1
       26 LOADK                            R8 K16 [":press"]
       27 DUPTABLE                         R9 K18 [{["BackgroundColor3"] = "$ActionSelected"}]
       28 CALL                             R7 2 1
       29 MOVE                             R8 R1
       30 LOADK                            R9 K19 [".Transparent"]
       31 DUPTABLE                         R10 K22 [{["BackgroundTransparency"] = 1}]
       32 CALL                             R8 2 -1
       33 SETLIST                          R5 R6 -1 [1]
       35 DUPTABLE                         R6 K25 [{["Weight"] = 5}]
       36 CALL                             R2 4 -1
       37 RETURN                           R2 -1
