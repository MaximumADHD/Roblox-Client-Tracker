MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DialogContainer"]
       20 DUPTABLE                         R5 K16 [{["BackgroundColor3"] = "$ForegroundMain", ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 0}]
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 LOADK                            R8 K17 ["::UIListLayout"]
       25 DUPTABLE                         R9 K21 [{"FillDirection", "Padding", "SortOrder"}]
       26 GETIMPORT                        R10 K24 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R10 R9 K18 ["FillDirection"]
       30 GETIMPORT                        R10 K27 [UDim.new]
       32 LOADN                            R11 0
       33 LOADN                            R12 16
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K19 ["Padding"]
       37 GETIMPORT                        R10 K29 [Enum.SortOrder.LayoutOrder]
       39 SETTABLEKS                       R10 R9 K20 ["SortOrder"]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K30 ["::UIPadding"]
       44 DUPTABLE                         R10 K35 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
       45 GETIMPORT                        R11 K27 [UDim.new]
       47 LOADN                            R12 0
       48 LOADN                            R13 16
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K31 ["PaddingTop"]
       52 GETIMPORT                        R11 K27 [UDim.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 16
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K32 ["PaddingRight"]
       59 GETIMPORT                        R11 K27 [UDim.new]
       61 LOADN                            R12 0
       62 LOADN                            R13 16
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K33 ["PaddingBottom"]
       66 GETIMPORT                        R11 K27 [UDim.new]
       68 LOADN                            R12 0
       69 LOADN                            R13 16
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K34 ["PaddingLeft"]
       73 CALL                             R8 2 -1
       74 SETLIST                          R6 R7 -1 [1]
       76 DUPTABLE                         R7 K37 [{"MinimumDialogSize"}]
       77 GETIMPORT                        R8 K39 [Vector2.new]
       79 LOADN                            R9 400
       80 LOADN                            R10 130
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K36 ["MinimumDialogSize"]
       84 CALL                             R3 4 -1
       85 RETURN                           R3 -1
