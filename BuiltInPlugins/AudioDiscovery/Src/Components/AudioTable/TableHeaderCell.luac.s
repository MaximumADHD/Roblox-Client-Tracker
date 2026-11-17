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
       23 DUPTABLE                         R11 K16 [{["LayoutOrder"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Padding"], ["Style"] = "SubtleBox", ["StyleModifier"], ["Size"]}]
       24 SETTABLEKS                       R5 R11 K8 ["LayoutOrder"]
       26 GETTABLEKS                       R12 R6 K17 ["Border"]
       28 SETTABLEKS                       R12 R11 K9 ["BorderColor3"]
       30 GETTABLEKS                       R12 R6 K18 ["HeaderCellPadding"]
       32 SETTABLEKS                       R12 R11 K12 ["Padding"]
       34 JUMPIFNOT                        R7 ; [+3]
       35 GETTABLEKS                       R12 R1 K14 ["StyleModifier"]
       37 JUMPIF                           R12 ; [+1]
       38 LOADNIL                          R12
       39 SETTABLEKS                       R12 R11 K14 ["StyleModifier"]
       41 GETIMPORT                        R12 K21 [UDim2.new]
       43 GETTABLEKS                       R13 R4 K22 ["Scale"]
       45 GETTABLEKS                       R14 R4 K23 ["Offset"]
       47 LOADN                            R15 1
       48 LOADN                            R16 0
       49 CALL                             R12 4 1
       50 SETTABLEKS                       R12 R11 K15 ["Size"]
       52 GETTABLEKS                       R12 R1 K24 ["WrapperProps"]
       54 CALL                             R10 2 1
       55 DUPTABLE                         R11 K28 [{"Text", "Icon", "Tooltip"}]
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K7 ["createElement"]
       59 GETUPVAL                         R13 3
       60 DUPTABLE                         R14 K31 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
       61 SETTABLEKS                       R2 R14 K25 ["Text"]
       63 GETIMPORT                        R15 K33 [UDim2.fromScale]
       65 LOADN                            R16 1
       66 LOADN                            R17 1
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K15 ["Size"]
       70 GETIMPORT                        R15 K36 [Enum.TextXAlignment.Left]
       72 SETTABLEKS                       R15 R14 K29 ["TextXAlignment"]
       74 GETIMPORT                        R15 K38 [Enum.TextTruncate.AtEnd]
       76 SETTABLEKS                       R15 R14 K30 ["TextTruncate"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K25 ["Text"]
       81 MOVE                             R12 R3
       82 JUMPIFNOT                        R12 ; [+42]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K7 ["createElement"]
       86 GETUPVAL                         R13 4
       87 DUPTABLE                         R14 K45 [{["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/Table/sort_arrow.png", ["Size"], ["Position"], ["Rotation"], ["AnchorPoint"]}]
       88 GETTABLEKS                       R15 R6 K46 ["IconColor"]
       90 SETTABLEKS                       R15 R14 K39 ["ImageColor3"]
       92 GETIMPORT                        R15 K48 [UDim2.fromOffset]
       94 LOADN                            R16 6
       95 LOADN                            R17 8
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K15 ["Size"]
       99 GETIMPORT                        R15 K21 [UDim2.new]
      101 LOADN                            R16 1
      102 LOADN                            R17 -10
      103 LOADN                            R18 0
      104 LOADN                            R19 8
      105 CALL                             R15 4 1
      106 SETTABLEKS                       R15 R14 K42 ["Position"]
      108 GETIMPORT                        R16 K51 [Enum.SortDirection.Descending]
      110 JUMPIFNOTEQ                      R3 R16 ; [+3]
      112 LOADN                            R15 -90
      113 JUMP                             ; [+1]
      114 LOADN                            R15 90
      115 SETTABLEKS                       R15 R14 K43 ["Rotation"]
      117 GETIMPORT                        R15 K53 [Vector2.new]
      119 LOADN                            R16 1
      120 LOADN                            R17 0
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K44 ["AnchorPoint"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K26 ["Icon"]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K7 ["createElement"]
      130 GETUPVAL                         R13 5
      131 DUPTABLE                         R14 K54 [{"Text"}]
      132 SETTABLEKS                       R2 R14 K25 ["Text"]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K27 ["Tooltip"]
      137 CALL                             R8 3 -1
      138 RETURN                           R8 -1

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
