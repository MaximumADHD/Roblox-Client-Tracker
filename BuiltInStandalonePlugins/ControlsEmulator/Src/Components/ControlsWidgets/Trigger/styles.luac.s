MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["Constants"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"]
       29 MULK                             R6 R4 K15 [2]
       30 DIVRK                            R5 K14 [1] R6
       31 MOVE                             R6 R2
       32 LOADK                            R7 K16 [".TriggerFrame"]
       33 DUPTABLE                         R8 K21 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       34 GETIMPORT                        R9 K24 [Vector2.new]
       36 LOADK                            R10 K25 [0.5]
       37 LOADN                            R11 0
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       41 NEWTABLE                         R9 0 2
       43 MOVE                             R10 R2
       44 LOADK                            R11 K26 [":: UIListLayout"]
       45 DUPTABLE                         R12 K32 [{"Padding", "FillDirection", "VerticalFlex", "SortOrder", "ItemLineAlignment"}]
       46 GETIMPORT                        R13 K34 [UDim.new]
       48 LOADN                            R14 0
       49 MOVE                             R15 R5
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K27 ["Padding"]
       53 GETIMPORT                        R13 K37 [Enum.FillDirection.Vertical]
       55 SETTABLEKS                       R13 R12 K28 ["FillDirection"]
       57 GETIMPORT                        R13 K40 [Enum.UIFlexAlignment.SpaceBetween]
       59 SETTABLEKS                       R13 R12 K29 ["VerticalFlex"]
       61 GETIMPORT                        R13 K42 [Enum.SortOrder.LayoutOrder]
       63 SETTABLEKS                       R13 R12 K30 ["SortOrder"]
       65 GETIMPORT                        R13 K44 [Enum.ItemLineAlignment.Center]
       67 SETTABLEKS                       R13 R12 K31 ["ItemLineAlignment"]
       69 CALL                             R10 2 1
       70 MOVE                             R11 R2
       71 LOADK                            R12 K45 ["> .HorizontalBar"]
       72 DUPTABLE                         R13 K48 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$ControlInactiveColor"}]
       73 NEWTABLE                         R14 0 2
       75 MOVE                             R15 R2
       76 LOADK                            R16 K49 [".Hover"]
       77 DUPTABLE                         R17 K51 [{["BackgroundColor3"] = "$ControlHoverColor"}]
       78 CALL                             R15 2 1
       79 MOVE                             R16 R2
       80 LOADK                            R17 K52 [".SelectedBlue"]
       81 DUPTABLE                         R18 K54 [{["BackgroundColor3"] = "$ControlActiveColor"}]
       82 CALL                             R16 2 -1
       83 SETLIST                          R14 R15 -1 [1]
       85 CALL                             R11 3 -1
       86 SETLIST                          R9 R10 -1 [1]
       88 CALL                             R6 3 -1
       89 RETURN                           R6 -1
