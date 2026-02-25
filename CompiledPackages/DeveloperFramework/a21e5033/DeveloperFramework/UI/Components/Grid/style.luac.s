MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["UIFolderData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R5 R2 K11 ["ExpandablePane"]
       29 GETTABLEKS                       R4 R5 K12 ["style"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R3 K13 ["Header"]
       34 GETTABLEKS                       R4 R5 K14 ["Arrow"]
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R7 R0 K4 ["Parent"]
       40 GETTABLEKS                       R6 R7 K15 ["Dash"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K16 ["join"]
       45 DUPTABLE                         R7 K23 [{"BackgroundColor", "CellGroupHeader", "CellSize", "CellPadding", "GridCell", "ScrollingFrame"}]
       46 GETTABLEKS                       R8 R1 K24 ["ScrollBarBackground"]
       48 SETTABLEKS                       R8 R7 K17 ["BackgroundColor"]
       50 DUPTABLE                         R8 K31 [{"Arrow", "ArrowButtonSize", "BackgroundColor", "Padding", "Size", "Spacing", "Style", "TextColor", "TextSize"}]
       51 MOVE                             R9 R6
       52 MOVE                             R10 R4
       53 DUPTABLE                         R11 K33 [{"ImageColor3"}]
       54 GETTABLEKS                       R12 R1 K34 ["TextSecondary"]
       56 SETTABLEKS                       R12 R11 K32 ["ImageColor3"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K14 ["Arrow"]
       61 GETIMPORT                        R9 K37 [UDim2.fromOffset]
       63 LOADN                            R10 16
       64 LOADN                            R11 16
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K25 ["ArrowButtonSize"]
       68 GETTABLEKS                       R9 R1 K38 ["CategoryItem"]
       70 SETTABLEKS                       R9 R8 K17 ["BackgroundColor"]
       72 DUPTABLE                         R9 K40 [{"Left"}]
       73 LOADN                            R10 8
       74 SETTABLEKS                       R10 R9 K39 ["Left"]
       76 SETTABLEKS                       R9 R8 K26 ["Padding"]
       78 GETIMPORT                        R9 K42 [UDim2.new]
       80 LOADN                            R10 1
       81 LOADN                            R11 0
       82 LOADN                            R12 0
       83 LOADN                            R13 28
       84 CALL                             R9 4 1
       85 SETTABLEKS                       R9 R8 K27 ["Size"]
       87 LOADN                            R9 6
       88 SETTABLEKS                       R9 R8 K28 ["Spacing"]
       90 LOADK                            R9 K43 ["RoundBox"]
       91 SETTABLEKS                       R9 R8 K7 ["Style"]
       93 GETTABLEKS                       R9 R1 K34 ["TextSecondary"]
       95 SETTABLEKS                       R9 R8 K29 ["TextColor"]
       97 LOADN                            R9 16
       98 SETTABLEKS                       R9 R8 K30 ["TextSize"]
      100 SETTABLEKS                       R8 R7 K18 ["CellGroupHeader"]
      102 GETIMPORT                        R8 K37 [UDim2.fromOffset]
      104 LOADN                            R9 64
      105 LOADN                            R10 64
      106 CALL                             R8 2 1
      107 SETTABLEKS                       R8 R7 K19 ["CellSize"]
      109 GETIMPORT                        R8 K45 [UDim2.fromScale]
      111 LOADN                            R9 0
      112 LOADN                            R10 0
      113 CALL                             R8 2 1
      114 SETTABLEKS                       R8 R7 K20 ["CellPadding"]
      116 DUPTABLE                         R8 K46 [{"Padding", "Spacing"}]
      117 LOADN                            R9 5
      118 SETTABLEKS                       R9 R8 K26 ["Padding"]
      120 LOADN                            R9 10
      121 SETTABLEKS                       R9 R8 K28 ["Spacing"]
      123 SETTABLEKS                       R8 R7 K21 ["GridCell"]
      125 DUPTABLE                         R8 K57 [{"BackgroundTransparency", "BorderSizePixel", "TopImage", "MidImage", "BottomImage", "ScrollBarThickness", "ScrollBarImageTransparency", "ScrollBarImageColor3", "VerticalScrollBarInset", "HorizontalScrollBarInset"}]
      126 LOADN                            R9 1
      127 SETTABLEKS                       R9 R8 K47 ["BackgroundTransparency"]
      129 LOADN                            R9 0
      130 SETTABLEKS                       R9 R8 K48 ["BorderSizePixel"]
      132 LOADK                            R9 K58 ["rbxasset://textures/StudioSharedUI/ScrollBarTop.png"]
      133 SETTABLEKS                       R9 R8 K49 ["TopImage"]
      135 LOADK                            R9 K59 ["rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png"]
      136 SETTABLEKS                       R9 R8 K50 ["MidImage"]
      138 LOADK                            R9 K60 ["rbxasset://textures/StudioSharedUI/ScrollBarBottom.png"]
      139 SETTABLEKS                       R9 R8 K51 ["BottomImage"]
      141 LOADN                            R9 8
      142 SETTABLEKS                       R9 R8 K52 ["ScrollBarThickness"]
      144 LOADN                            R9 0
      145 SETTABLEKS                       R9 R8 K53 ["ScrollBarImageTransparency"]
      147 GETTABLEKS                       R9 R1 K61 ["ScrollBar"]
      149 SETTABLEKS                       R9 R8 K54 ["ScrollBarImageColor3"]
      151 GETIMPORT                        R9 K65 [Enum.ScrollBarInset.Always]
      153 SETTABLEKS                       R9 R8 K55 ["VerticalScrollBarInset"]
      155 GETIMPORT                        R9 K66 [Enum.ScrollBarInset.ScrollBar]
      157 SETTABLEKS                       R9 R8 K56 ["HorizontalScrollBarInset"]
      159 SETTABLEKS                       R8 R7 K22 ["ScrollingFrame"]
      161 RETURN                           R7 1
