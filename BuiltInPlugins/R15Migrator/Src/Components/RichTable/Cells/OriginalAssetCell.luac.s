PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 R6 K5 [UDim.new]
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K11 ["createElement"]
       26 GETUPVAL                         R6 1
       27 DUPTABLE                         R7 K19 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       28 GETTABLEKS                       R8 R0 K20 ["ColumnIndex"]
       30 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       32 DUPTABLE                         R8 K25 [{"Top", "Bottom", "Left", "Right"}]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K21 ["Top"]
       36 LOADN                            R9 1
       37 SETTABLEKS                       R9 R8 K22 ["Bottom"]
       39 LOADN                            R9 5
       40 SETTABLEKS                       R9 R8 K23 ["Left"]
       42 LOADN                            R9 5
       43 SETTABLEKS                       R9 R8 K24 ["Right"]
       45 SETTABLEKS                       R8 R7 K13 ["Padding"]
       47 LOADK                            R8 K26 ["Box"]
       48 SETTABLEKS                       R8 R7 K1 ["Style"]
       50 SETTABLEKS                       R4 R7 K14 ["BackgroundColor3"]
       52 LOADN                            R8 1
       53 SETTABLEKS                       R8 R7 K15 ["BorderSizePixel"]
       55 GETTABLEKS                       R8 R2 K27 ["Border"]
       57 SETTABLEKS                       R8 R7 K16 ["BorderColor3"]
       59 GETIMPORT                        R8 K29 [UDim2.new]
       61 GETTABLEKS                       R9 R3 K30 ["Scale"]
       63 GETTABLEKS                       R10 R3 K31 ["Offset"]
       65 LOADN                            R11 1
       66 LOADN                            R12 0
       67 CALL                             R8 4 1
       68 SETTABLEKS                       R8 R7 K17 ["Size"]
       70 LOADB                            R8 1
       71 SETTABLEKS                       R8 R7 K18 ["ClipsDescendants"]
       73 DUPTABLE                         R8 K34 [{"Text", "Arrow"}]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K11 ["createElement"]
       77 GETUPVAL                         R10 2
       78 DUPTABLE                         R11 K37 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       79 FASTCALL1                        TOSTRING R1 ; [+3]
       80 MOVE                             R13 R1
       81 GETIMPORT                        R12 K39 [tostring]
       83 CALL                             R12 1 1
       84 SETTABLEKS                       R12 R11 K32 ["Text"]
       86 GETIMPORT                        R12 K42 [Enum.TextTruncate.AtEnd]
       88 SETTABLEKS                       R12 R11 K35 ["TextTruncate"]
       90 GETIMPORT                        R12 K44 [UDim2.fromScale]
       92 LOADN                            R13 1
       93 LOADN                            R14 1
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K17 ["Size"]
       97 GETIMPORT                        R12 K45 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R12 R11 K36 ["TextXAlignment"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K32 ["Text"]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R9 R10 K11 ["createElement"]
      107 GETUPVAL                         R10 2
      108 DUPTABLE                         R11 K48 [{"AnchorPoint", "Position", "Size", "Style", "Text"}]
      109 GETIMPORT                        R12 K50 [Vector2.new]
      111 LOADN                            R13 1
      112 LOADK                            R14 K51 [0.5]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K46 ["AnchorPoint"]
      116 GETIMPORT                        R12 K29 [UDim2.new]
      118 LOADN                            R13 1
      119 LOADN                            R14 251
      120 LOADK                            R15 K51 [0.5]
      121 LOADN                            R16 0
      122 CALL                             R12 4 1
      123 SETTABLEKS                       R12 R11 K47 ["Position"]
      125 GETIMPORT                        R12 K29 [UDim2.new]
      127 LOADN                            R13 0
      128 LOADN                            R14 10
      129 LOADN                            R15 0
      130 LOADN                            R16 10
      131 CALL                             R12 4 1
      132 SETTABLEKS                       R12 R11 K17 ["Size"]
      134 LOADK                            R12 K52 ["Bold"]
      135 SETTABLEKS                       R12 R11 K1 ["Style"]
      137 LOADK                            R12 K53 ["→"]
      138 SETTABLEKS                       R12 R11 K32 ["Text"]
      140 CALL                             R9 2 1
      141 SETTABLEKS                       R9 R8 K33 ["Arrow"]
      143 CALL                             R5 3 -1
      144 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 RETURN                           R6 1
