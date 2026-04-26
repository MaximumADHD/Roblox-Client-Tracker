MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-TreeViewRow"]
       18 DUPTABLE                         R4 K11 [{"Size"}]
       19 GETIMPORT                        R5 K14 [UDim2.new]
       21 LOADN                            R6 1
       22 LOADN                            R7 0
       23 LOADN                            R8 0
       24 LOADN                            R9 24
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K10 ["Size"]
       28 NEWTABLE                         R5 0 3
       30 MOVE                             R6 R1
       31 LOADK                            R7 K15 ["::UIPadding"]
       32 DUPTABLE                         R8 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       33 GETIMPORT                        R9 K22 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 1
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K16 ["PaddingTop"]
       40 GETIMPORT                        R9 K22 [UDim.new]
       42 LOADN                            R10 0
       43 LOADN                            R11 1
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K17 ["PaddingBottom"]
       47 GETIMPORT                        R9 K22 [UDim.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 5
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K18 ["PaddingLeft"]
       54 GETIMPORT                        R9 K22 [UDim.new]
       56 LOADN                            R10 0
       57 LOADN                            R11 5
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K19 ["PaddingRight"]
       61 CALL                             R6 2 1
       62 MOVE                             R7 R1
       63 LOADK                            R8 K23 [">> .Arrow"]
       64 DUPTABLE                         R9 K28 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "ImageRectSize"}]
       65 GETIMPORT                        R10 K30 [UDim2.fromOffset]
       67 LOADN                            R11 12
       68 LOADN                            R12 12
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K10 ["Size"]
       72 LOADN                            R10 1
       73 SETTABLEKS                       R10 R9 K24 ["BackgroundTransparency"]
       75 LOADK                            R10 K31 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       76 SETTABLEKS                       R10 R9 K25 ["Image"]
       78 LOADK                            R10 K32 ["$TextPrimary"]
       79 SETTABLEKS                       R10 R9 K26 ["ImageColor3"]
       81 GETIMPORT                        R10 K34 [Vector2.new]
       83 LOADN                            R11 12
       84 LOADN                            R12 12
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K27 ["ImageRectSize"]
       88 CALL                             R7 2 1
       89 MOVE                             R8 R1
       90 LOADK                            R9 K35 ["> .Tail"]
       91 DUPTABLE                         R10 K40 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "ZIndex"}]
       92 GETIMPORT                        R11 K34 [Vector2.new]
       94 LOADN                            R12 1
       95 LOADN                            R13 0
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K36 ["AnchorPoint"]
       99 GETIMPORT                        R11 K43 [Enum.AutomaticSize.X]
      101 SETTABLEKS                       R11 R10 K37 ["AutomaticSize"]
      103 GETIMPORT                        R11 K45 [UDim2.fromScale]
      105 LOADN                            R12 1
      106 LOADN                            R13 0
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K38 ["Position"]
      110 GETIMPORT                        R11 K45 [UDim2.fromScale]
      112 LOADN                            R12 0
      113 LOADN                            R13 1
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K10 ["Size"]
      117 LOADN                            R11 2
      118 SETTABLEKS                       R11 R10 K39 ["ZIndex"]
      120 NEWTABLE                         R11 0 1
      122 MOVE                             R12 R1
      123 LOADK                            R13 K15 ["::UIPadding"]
      124 DUPTABLE                         R14 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      125 GETIMPORT                        R15 K22 [UDim.new]
      127 LOADN                            R16 0
      128 LOADN                            R17 0
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K16 ["PaddingTop"]
      132 GETIMPORT                        R15 K22 [UDim.new]
      134 LOADN                            R16 0
      135 LOADN                            R17 0
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K17 ["PaddingBottom"]
      139 GETIMPORT                        R15 K22 [UDim.new]
      141 LOADN                            R16 0
      142 LOADN                            R17 3
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K18 ["PaddingLeft"]
      146 GETIMPORT                        R15 K22 [UDim.new]
      148 LOADN                            R16 0
      149 LOADN                            R17 10
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K19 ["PaddingRight"]
      153 CALL                             R12 2 -1
      154 SETLIST                          R11 R12 -1 [1]
      156 CALL                             R8 3 -1
      157 SETLIST                          R5 R6 -1 [1]
      159 DUPTABLE                         R6 K51 [{"ArrowSize", "ArrowExpandedOffset", "ArrowCollapsedOffset", "RowHeight", "Indent"}]
      160 LOADN                            R7 12
      161 SETTABLEKS                       R7 R6 K46 ["ArrowSize"]
      163 GETIMPORT                        R7 K34 [Vector2.new]
      165 LOADN                            R8 24
      166 LOADN                            R9 0
      167 CALL                             R7 2 1
      168 SETTABLEKS                       R7 R6 K47 ["ArrowExpandedOffset"]
      170 GETIMPORT                        R7 K34 [Vector2.new]
      172 LOADN                            R8 12
      173 LOADN                            R9 0
      174 CALL                             R7 2 1
      175 SETTABLEKS                       R7 R6 K48 ["ArrowCollapsedOffset"]
      177 LOADN                            R7 24
      178 SETTABLEKS                       R7 R6 K49 ["RowHeight"]
      180 LOADN                            R7 17
      181 SETTABLEKS                       R7 R6 K50 ["Indent"]
      183 CALL                             R2 4 -1
      184 RETURN                           R2 -1
