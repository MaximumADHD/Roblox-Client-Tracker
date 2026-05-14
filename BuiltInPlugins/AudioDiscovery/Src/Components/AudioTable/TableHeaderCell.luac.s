PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Name"]
        4 GETTABLEKS                       R3 R1 K2 ["Order"]
        6 GETTABLEKS                       R4 R1 K3 ["Width"]
        8 GETTABLEKS                       R5 R1 K4 ["ColumnIndex"]
       10 GETTABLEKS                       R6 R1 K5 ["Style"]
       12 GETTABLEKS                       R8 R1 K6 ["OnPress"]
       14 JUMPIFNOTEQKNIL                  R8 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K7 ["createElement"]
       21 GETUPVAL                         R9 1
       22 GETUPVAL                         R10 2
       23 DUPTABLE                         R11 K14 [{"LayoutOrder", "BorderColor3", "BorderSizePixel", "Padding", "Style", "StyleModifier", "Size"}]
       24 SETTABLEKS                       R5 R11 K8 ["LayoutOrder"]
       26 GETTABLEKS                       R12 R6 K15 ["Border"]
       28 SETTABLEKS                       R12 R11 K9 ["BorderColor3"]
       30 LOADN                            R12 1
       31 SETTABLEKS                       R12 R11 K10 ["BorderSizePixel"]
       33 GETTABLEKS                       R12 R6 K16 ["HeaderCellPadding"]
       35 SETTABLEKS                       R12 R11 K11 ["Padding"]
       37 LOADK                            R12 K17 ["SubtleBox"]
       38 SETTABLEKS                       R12 R11 K5 ["Style"]
       40 JUMPIFNOT                        R7 ; [+3]
       41 GETTABLEKS                       R12 R1 K12 ["StyleModifier"]
       43 JUMPIF                           R12 ; [+1]
       44 LOADNIL                          R12
       45 SETTABLEKS                       R12 R11 K12 ["StyleModifier"]
       47 GETIMPORT                        R12 K20 [UDim2.new]
       49 GETTABLEKS                       R13 R4 K21 ["Scale"]
       51 GETTABLEKS                       R14 R4 K22 ["Offset"]
       53 LOADN                            R15 1
       54 LOADN                            R16 0
       55 CALL                             R12 4 1
       56 SETTABLEKS                       R12 R11 K13 ["Size"]
       58 GETTABLEKS                       R12 R1 K23 ["WrapperProps"]
       60 CALL                             R10 2 1
       61 DUPTABLE                         R11 K27 [{"Text", "Icon", "Tooltip"}]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K7 ["createElement"]
       65 GETUPVAL                         R13 3
       66 DUPTABLE                         R14 K30 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
       67 SETTABLEKS                       R2 R14 K24 ["Text"]
       69 GETIMPORT                        R15 K32 [UDim2.fromScale]
       71 LOADN                            R16 1
       72 LOADN                            R17 1
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K13 ["Size"]
       76 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R15 R14 K28 ["TextXAlignment"]
       80 GETIMPORT                        R15 K37 [Enum.TextTruncate.AtEnd]
       82 SETTABLEKS                       R15 R14 K29 ["TextTruncate"]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K24 ["Text"]
       87 MOVE                             R12 R3
       88 JUMPIFNOT                        R12 ; [+45]
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R12 R12 K7 ["createElement"]
       92 GETUPVAL                         R13 4
       93 DUPTABLE                         R14 K43 [{"ImageColor3", "Image", "Size", "Position", "Rotation", "AnchorPoint"}]
       94 GETTABLEKS                       R15 R6 K44 ["IconColor"]
       96 SETTABLEKS                       R15 R14 K38 ["ImageColor3"]
       98 LOADK                            R15 K45 ["rbxasset://textures/DeveloperFramework/Table/sort_arrow.png"]
       99 SETTABLEKS                       R15 R14 K39 ["Image"]
      101 GETIMPORT                        R15 K47 [UDim2.fromOffset]
      103 LOADN                            R16 6
      104 LOADN                            R17 8
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K13 ["Size"]
      108 GETIMPORT                        R15 K20 [UDim2.new]
      110 LOADN                            R16 1
      111 LOADN                            R17 246
      112 LOADN                            R18 0
      113 LOADN                            R19 8
      114 CALL                             R15 4 1
      115 SETTABLEKS                       R15 R14 K40 ["Position"]
      117 GETIMPORT                        R16 K50 [Enum.SortDirection.Descending]
      119 JUMPIFNOTEQ                      R3 R16 ; [+3]
      121 LOADN                            R15 166
      122 JUMP                             ; [+1]
      123 LOADN                            R15 90
      124 SETTABLEKS                       R15 R14 K41 ["Rotation"]
      126 GETIMPORT                        R15 K52 [Vector2.new]
      128 LOADN                            R16 1
      129 LOADN                            R17 0
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K42 ["AnchorPoint"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K25 ["Icon"]
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R12 R12 K7 ["createElement"]
      139 GETUPVAL                         R13 5
      140 DUPTABLE                         R14 K53 [{"Text"}]
      141 SETTABLEKS                       R2 R14 K24 ["Text"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K26 ["Tooltip"]
      146 CALL                             R8 3 -1
      147 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["Dash"]
       27 GETTABLEKS                       R4 R3 K9 ["assign"]
       29 GETTABLEKS                       R5 R2 K10 ["UI"]
       31 GETTABLEKS                       R6 R5 K11 ["Pane"]
       33 GETTABLEKS                       R7 R5 K12 ["Image"]
       35 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       37 GETTABLEKS                       R9 R5 K14 ["Tooltip"]
       39 GETTABLEKS                       R10 R2 K15 ["Wrappers"]
       41 GETTABLEKS                       R10 R10 K16 ["withControl"]
       43 GETTABLEKS                       R11 R1 K17 ["PureComponent"]
       45 LOADK                            R13 K18 ["TableHeaderCell"]
       46 NAMECALL                         R11 R11 K19 ["extend"]
       48 CALL                             R11 2 1
       49 DUPCLOSURE                       R12 K20 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 SETTABLEKS                       R12 R11 K21 ["render"]
       58 MOVE                             R12 R10
       59 MOVE                             R13 R11
       60 CALL                             R12 1 -1
       61 RETURN                           R12 -1
