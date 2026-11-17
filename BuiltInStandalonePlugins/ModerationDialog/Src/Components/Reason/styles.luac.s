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
       19 LOADK                            R4 K10 [".Component-Reason"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIListLayout"]
       26 DUPTABLE                         R9 K15 [{"FillDirection", "Padding", "SortOrder"}]
       27 GETIMPORT                        R10 K18 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R10 R9 K12 ["FillDirection"]
       31 GETIMPORT                        R10 K21 [UDim.new]
       33 LOADN                            R11 0
       34 LOADN                            R12 7
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K13 ["Padding"]
       38 GETIMPORT                        R10 K23 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R10 R9 K14 ["SortOrder"]
       42 CALL                             R7 2 -1
       43 SETLIST                          R6 R7 -1 [1]
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1
