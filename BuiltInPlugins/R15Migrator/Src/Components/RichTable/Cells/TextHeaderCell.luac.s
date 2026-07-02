PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 DUPTABLE                         R4 K11 [{["LayoutOrder"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Padding"], ["Style"] = "SubtleBox", ["StyleModifier"], ["Size"]}]
        8 GETTABLEKS                       R5 R0 K12 ["ColumnIndex"]
       10 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K7 ["Style"]
       14 GETTABLEKS                       R5 R5 K13 ["Border"]
       16 SETTABLEKS                       R5 R4 K3 ["BorderColor3"]
       18 GETTABLEKS                       R5 R0 K7 ["Style"]
       20 GETTABLEKS                       R5 R5 K14 ["HeaderCellPadding"]
       22 SETTABLEKS                       R5 R4 K6 ["Padding"]
       24 GETTABLEKS                       R6 R0 K15 ["OnPress"]
       26 JUMPIFEQKNIL                     R6 ; [+4]
       28 GETTABLEKS                       R5 R0 K9 ["StyleModifier"]
       30 JUMPIF                           R5 ; [+1]
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K9 ["StyleModifier"]
       34 GETIMPORT                        R5 K18 [UDim2.new]
       36 GETTABLEKS                       R6 R0 K19 ["Width"]
       38 GETTABLEKS                       R6 R6 K20 ["Scale"]
       40 GETTABLEKS                       R7 R0 K19 ["Width"]
       42 GETTABLEKS                       R7 R7 K21 ["Offset"]
       44 LOADN                            R8 1
       45 LOADN                            R9 0
       46 CALL                             R5 4 1
       47 SETTABLEKS                       R5 R4 K10 ["Size"]
       49 GETTABLEKS                       R5 R0 K22 ["WrapperProps"]
       51 CALL                             R3 2 1
       52 DUPTABLE                         R4 K26 [{"Text", "Icon", "Tooltip"}]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K0 ["createElement"]
       56 GETUPVAL                         R6 3
       57 DUPTABLE                         R7 K29 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
       58 GETTABLEKS                       R8 R0 K30 ["Name"]
       60 SETTABLEKS                       R8 R7 K23 ["Text"]
       62 GETIMPORT                        R8 K32 [UDim2.fromScale]
       64 LOADN                            R9 1
       65 LOADN                            R10 1
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K10 ["Size"]
       69 GETIMPORT                        R8 K35 [Enum.TextXAlignment.Left]
       71 SETTABLEKS                       R8 R7 K27 ["TextXAlignment"]
       73 GETIMPORT                        R8 K37 [Enum.TextTruncate.AtEnd]
       75 SETTABLEKS                       R8 R7 K28 ["TextTruncate"]
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R4 K23 ["Text"]
       80 GETTABLEKS                       R5 R0 K38 ["Order"]
       82 JUMPIFNOT                        R5 ; [+46]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K0 ["createElement"]
       86 GETUPVAL                         R6 4
       87 DUPTABLE                         R7 K45 [{["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/Table/sort_arrow.png", ["Size"], ["Position"], ["Rotation"], ["AnchorPoint"]}]
       88 GETTABLEKS                       R8 R0 K7 ["Style"]
       90 GETTABLEKS                       R8 R8 K46 ["IconColor"]
       92 SETTABLEKS                       R8 R7 K39 ["ImageColor3"]
       94 GETIMPORT                        R8 K48 [UDim2.fromOffset]
       96 LOADN                            R9 6
       97 LOADN                            R10 8
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K10 ["Size"]
      101 GETIMPORT                        R8 K18 [UDim2.new]
      103 LOADN                            R9 1
      104 LOADN                            R10 -10
      105 LOADK                            R11 K49 [0.5]
      106 LOADN                            R12 -4
      107 CALL                             R8 4 1
      108 SETTABLEKS                       R8 R7 K42 ["Position"]
      110 GETTABLEKS                       R9 R0 K38 ["Order"]
      112 GETIMPORT                        R10 K52 [Enum.SortDirection.Descending]
      114 JUMPIFNOTEQ                      R9 R10 ; [+3]
      116 LOADN                            R8 -90
      117 JUMP                             ; [+1]
      118 LOADN                            R8 90
      119 SETTABLEKS                       R8 R7 K43 ["Rotation"]
      121 GETIMPORT                        R8 K54 [Vector2.new]
      123 LOADN                            R9 1
      124 LOADN                            R10 0
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R7 K44 ["AnchorPoint"]
      128 CALL                             R5 2 1
      129 SETTABLEKS                       R5 R4 K24 ["Icon"]
      131 GETTABLEKS                       R5 R0 K25 ["Tooltip"]
      133 JUMPIFNOT                        R5 ; [+10]
      134 GETUPVAL                         R5 0
      135 GETTABLEKS                       R5 R5 K0 ["createElement"]
      137 GETUPVAL                         R6 5
      138 DUPTABLE                         R7 K55 [{"Text"}]
      139 GETTABLEKS                       R8 R0 K25 ["Tooltip"]
      141 SETTABLEKS                       R8 R7 K23 ["Text"]
      143 CALL                             R5 2 1
      144 SETTABLEKS                       R5 R4 K25 ["Tooltip"]
      146 CALL                             R1 3 -1
      147 RETURN                           R1 -1

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
