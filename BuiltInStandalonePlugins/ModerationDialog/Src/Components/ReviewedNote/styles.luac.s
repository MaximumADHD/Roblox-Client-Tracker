MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-ReviewedNote"]
       20 DUPTABLE                         R5 K15 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["::UIListLayout"]
       25 DUPTABLE                         R9 K20 [{"FillDirection", "Padding", "SortOrder"}]
       26 GETIMPORT                        R10 K23 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R10 R9 K17 ["FillDirection"]
       30 GETIMPORT                        R10 K26 [UDim.new]
       32 LOADN                            R11 0
       33 LOADN                            R12 4
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K18 ["Padding"]
       37 GETIMPORT                        R10 K28 [Enum.SortOrder.LayoutOrder]
       39 SETTABLEKS                       R10 R9 K19 ["SortOrder"]
       41 CALL                             R7 2 -1
       42 SETLIST                          R6 R7 -1 [1]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1
