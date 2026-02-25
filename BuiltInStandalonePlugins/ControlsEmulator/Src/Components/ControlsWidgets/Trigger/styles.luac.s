MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Util"]
       24 GETTABLEKS                       R4 R5 K12 ["Constants"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"]
       29 MULK                             R6 R4 K15 [2]
       30 DIVRK                            R5 R14 K6 ["Packages"]
       31 MOVE                             R6 R2
       32 LOADK                            R7 K16 [".TriggerFrame"]
       33 DUPTABLE                         R8 K20 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel"}]
       34 GETIMPORT                        R9 K23 [Vector2.new]
       36 LOADK                            R10 K24 [0.5]
       37 LOADN                            R11 0
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       41 LOADN                            R9 1
       42 SETTABLEKS                       R9 R8 K18 ["BackgroundTransparency"]
       44 LOADN                            R9 0
       45 SETTABLEKS                       R9 R8 K19 ["BorderSizePixel"]
       47 NEWTABLE                         R9 0 2
       49 MOVE                             R10 R2
       50 LOADK                            R11 K25 [":: UIListLayout"]
       51 DUPTABLE                         R12 K31 [{"Padding", "FillDirection", "VerticalFlex", "SortOrder", "ItemLineAlignment"}]
       52 GETIMPORT                        R13 K33 [UDim.new]
       54 LOADN                            R14 0
       55 MOVE                             R15 R5
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K26 ["Padding"]
       59 GETIMPORT                        R13 K36 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R13 R12 K27 ["FillDirection"]
       63 GETIMPORT                        R13 K39 [Enum.UIFlexAlignment.SpaceBetween]
       65 SETTABLEKS                       R13 R12 K28 ["VerticalFlex"]
       67 GETIMPORT                        R13 K41 [Enum.SortOrder.LayoutOrder]
       69 SETTABLEKS                       R13 R12 K29 ["SortOrder"]
       71 GETIMPORT                        R13 K43 [Enum.ItemLineAlignment.Center]
       73 SETTABLEKS                       R13 R12 K30 ["ItemLineAlignment"]
       75 CALL                             R10 2 1
       76 MOVE                             R11 R2
       77 LOADK                            R12 K44 ["> .HorizontalBar"]
       78 DUPTABLE                         R13 K46 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
       79 LOADN                            R14 0
       80 SETTABLEKS                       R14 R13 K18 ["BackgroundTransparency"]
       82 LOADN                            R14 0
       83 SETTABLEKS                       R14 R13 K19 ["BorderSizePixel"]
       85 LOADK                            R14 K47 ["$ControlInactiveColor"]
       86 SETTABLEKS                       R14 R13 K45 ["BackgroundColor3"]
       88 NEWTABLE                         R14 0 2
       90 MOVE                             R15 R2
       91 LOADK                            R16 K48 [".Hover"]
       92 DUPTABLE                         R17 K49 [{"BackgroundColor3"}]
       93 LOADK                            R18 K50 ["$ControlHoverColor"]
       94 SETTABLEKS                       R18 R17 K45 ["BackgroundColor3"]
       96 CALL                             R15 2 1
       97 MOVE                             R16 R2
       98 LOADK                            R17 K51 [".SelectedBlue"]
       99 DUPTABLE                         R18 K49 [{"BackgroundColor3"}]
      100 LOADK                            R19 K52 ["$ControlActiveColor"]
      101 SETTABLEKS                       R19 R18 K45 ["BackgroundColor3"]
      103 CALL                             R16 2 -1
      104 SETLIST                          R14 R15 -1 [1]
      106 CALL                             R11 3 -1
      107 SETLIST                          R9 R10 -1 [1]
      109 CALL                             R6 3 -1
      110 RETURN                           R6 -1
