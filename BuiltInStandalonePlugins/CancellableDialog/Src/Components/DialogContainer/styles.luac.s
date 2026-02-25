MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DialogContainer"]
       20 DUPTABLE                         R5 K14 [{"BackgroundColor3", "BorderSizePixel", "BackgroundTransparency"}]
       21 LOADK                            R6 K15 ["$ForegroundMain"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 LOADN                            R6 0
       28 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R2
       33 LOADK                            R8 K16 ["::UIListLayout"]
       34 DUPTABLE                         R9 K20 [{"FillDirection", "Padding", "SortOrder"}]
       35 GETIMPORT                        R10 K23 [Enum.FillDirection.Vertical]
       37 SETTABLEKS                       R10 R9 K17 ["FillDirection"]
       39 GETIMPORT                        R10 K26 [UDim.new]
       41 LOADN                            R11 0
       42 LOADN                            R12 16
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K18 ["Padding"]
       46 GETIMPORT                        R10 K28 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R10 R9 K19 ["SortOrder"]
       50 CALL                             R7 2 1
       51 MOVE                             R8 R2
       52 LOADK                            R9 K29 ["::UIPadding"]
       53 DUPTABLE                         R10 K34 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
       54 GETIMPORT                        R11 K26 [UDim.new]
       56 LOADN                            R12 0
       57 LOADN                            R13 16
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K30 ["PaddingTop"]
       61 GETIMPORT                        R11 K26 [UDim.new]
       63 LOADN                            R12 0
       64 LOADN                            R13 16
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K31 ["PaddingRight"]
       68 GETIMPORT                        R11 K26 [UDim.new]
       70 LOADN                            R12 0
       71 LOADN                            R13 16
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K32 ["PaddingBottom"]
       75 GETIMPORT                        R11 K26 [UDim.new]
       77 LOADN                            R12 0
       78 LOADN                            R13 16
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K33 ["PaddingLeft"]
       82 CALL                             R8 2 -1
       83 SETLIST                          R6 R7 -1 [1]
       85 DUPTABLE                         R7 K36 [{"MinimumDialogSize"}]
       86 GETIMPORT                        R8 K38 [Vector2.new]
       88 LOADN                            R9 144
       89 LOADN                            R10 130
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K35 ["MinimumDialogSize"]
       93 CALL                             R3 4 -1
       94 RETURN                           R3 -1
