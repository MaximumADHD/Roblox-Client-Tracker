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
       19 LOADK                            R4 K10 [".Component-ReactivateDateNote"]
       20 DUPTABLE                         R5 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
       21 LOADN                            R6 1
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R2
       30 LOADK                            R8 K14 ["::UIListLayout"]
       31 DUPTABLE                         R9 K18 [{"FillDirection", "Padding", "SortOrder"}]
       32 GETIMPORT                        R10 K21 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R10 R9 K15 ["FillDirection"]
       36 GETIMPORT                        R10 K24 [UDim.new]
       38 LOADN                            R11 0
       39 LOADN                            R12 4
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K16 ["Padding"]
       43 GETIMPORT                        R10 K26 [Enum.SortOrder.LayoutOrder]
       45 SETTABLEKS                       R10 R9 K17 ["SortOrder"]
       47 CALL                             R7 2 -1
       48 SETLIST                          R6 R7 -1 [1]
       50 CALL                             R3 3 -1
       51 RETURN                           R3 -1
