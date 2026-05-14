PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 DUPTABLE                         R4 K9 [{"LayoutOrder", "BorderColor3", "BorderSizePixel", "Padding", "Style", "StyleModifier", "Size"}]
        8 GETTABLEKS                       R5 R0 K10 ["ColumnIndex"]
       10 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K6 ["Style"]
       14 GETTABLEKS                       R5 R5 K11 ["Border"]
       16 SETTABLEKS                       R5 R4 K3 ["BorderColor3"]
       18 LOADN                            R5 1
       19 SETTABLEKS                       R5 R4 K4 ["BorderSizePixel"]
       21 GETTABLEKS                       R5 R0 K6 ["Style"]
       23 GETTABLEKS                       R5 R5 K12 ["HeaderCellPadding"]
       25 SETTABLEKS                       R5 R4 K5 ["Padding"]
       27 LOADK                            R5 K13 ["SubtleBox"]
       28 SETTABLEKS                       R5 R4 K6 ["Style"]
       30 GETTABLEKS                       R6 R0 K14 ["OnPress"]
       32 JUMPIFEQKNIL                     R6 ; [+4]
       34 GETTABLEKS                       R5 R0 K7 ["StyleModifier"]
       36 JUMPIF                           R5 ; [+1]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K7 ["StyleModifier"]
       40 GETIMPORT                        R5 K17 [UDim2.new]
       42 GETTABLEKS                       R6 R0 K18 ["Width"]
       44 GETTABLEKS                       R6 R6 K19 ["Scale"]
       46 GETTABLEKS                       R7 R0 K18 ["Width"]
       48 GETTABLEKS                       R7 R7 K20 ["Offset"]
       50 LOADN                            R8 1
       51 LOADN                            R9 0
       52 CALL                             R5 4 1
       53 SETTABLEKS                       R5 R4 K8 ["Size"]
       55 GETTABLEKS                       R5 R0 K21 ["WrapperProps"]
       57 CALL                             R3 2 1
       58 DUPTABLE                         R4 K25 [{"Text", "Icon", "Tooltip"}]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["createElement"]
       62 GETUPVAL                         R6 3
       63 DUPTABLE                         R7 K28 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
       64 GETTABLEKS                       R8 R0 K29 ["Name"]
       66 SETTABLEKS                       R8 R7 K22 ["Text"]
       68 GETIMPORT                        R8 K31 [UDim2.fromScale]
       70 LOADN                            R9 1
       71 LOADN                            R10 1
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K8 ["Size"]
       75 GETIMPORT                        R8 K34 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R8 R7 K26 ["TextXAlignment"]
       79 GETIMPORT                        R8 K36 [Enum.TextTruncate.AtEnd]
       81 SETTABLEKS                       R8 R7 K27 ["TextTruncate"]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K22 ["Text"]
       86 GETTABLEKS                       R5 R0 K37 ["Order"]
       88 JUMPIFNOT                        R5 ; [+49]
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K0 ["createElement"]
       92 GETUPVAL                         R6 4
       93 DUPTABLE                         R7 K43 [{"ImageColor3", "Image", "Size", "Position", "Rotation", "AnchorPoint"}]
       94 GETTABLEKS                       R8 R0 K6 ["Style"]
       96 GETTABLEKS                       R8 R8 K44 ["IconColor"]
       98 SETTABLEKS                       R8 R7 K38 ["ImageColor3"]
      100 LOADK                            R8 K45 ["rbxasset://textures/DeveloperFramework/Table/sort_arrow.png"]
      101 SETTABLEKS                       R8 R7 K39 ["Image"]
      103 GETIMPORT                        R8 K47 [UDim2.fromOffset]
      105 LOADN                            R9 6
      106 LOADN                            R10 8
      107 CALL                             R8 2 1
      108 SETTABLEKS                       R8 R7 K8 ["Size"]
      110 GETIMPORT                        R8 K17 [UDim2.new]
      112 LOADN                            R9 1
      113 LOADN                            R10 246
      114 LOADK                            R11 K48 [0.5]
      115 LOADN                            R12 252
      116 CALL                             R8 4 1
      117 SETTABLEKS                       R8 R7 K40 ["Position"]
      119 GETTABLEKS                       R9 R0 K37 ["Order"]
      121 GETIMPORT                        R10 K51 [Enum.SortDirection.Descending]
      123 JUMPIFNOTEQ                      R9 R10 ; [+3]
      125 LOADN                            R8 166
      126 JUMP                             ; [+1]
      127 LOADN                            R8 90
      128 SETTABLEKS                       R8 R7 K41 ["Rotation"]
      130 GETIMPORT                        R8 K53 [Vector2.new]
      132 LOADN                            R9 1
      133 LOADN                            R10 0
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R7 K42 ["AnchorPoint"]
      137 CALL                             R5 2 1
      138 SETTABLEKS                       R5 R4 K23 ["Icon"]
      140 GETTABLEKS                       R5 R0 K24 ["Tooltip"]
      142 JUMPIFNOT                        R5 ; [+10]
      143 GETUPVAL                         R5 0
      144 GETTABLEKS                       R5 R5 K0 ["createElement"]
      146 GETUPVAL                         R6 5
      147 DUPTABLE                         R7 K54 [{"Text"}]
      148 GETTABLEKS                       R8 R0 K24 ["Tooltip"]
      150 SETTABLEKS                       R8 R7 K22 ["Text"]
      152 CALL                             R5 2 1
      153 SETTABLEKS                       R5 R4 K24 ["Tooltip"]
      155 CALL                             R1 3 -1
      156 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Pane"]
       32 GETTABLEKS                       R6 R4 K12 ["TextLabel"]
       34 GETTABLEKS                       R7 R4 K13 ["Image"]
       36 GETTABLEKS                       R8 R4 K14 ["Tooltip"]
       38 GETTABLEKS                       R9 R1 K15 ["Wrappers"]
       40 GETTABLEKS                       R9 R9 K16 ["withControl"]
       42 DUPCLOSURE                       R10 K17 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 MOVE                             R11 R9
       50 MOVE                             R12 R10
       51 CALL                             R11 1 -1
       52 RETURN                           R11 -1
