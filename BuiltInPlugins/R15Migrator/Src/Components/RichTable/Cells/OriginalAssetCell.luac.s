PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 K6 [1] R5
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K11 ["createElement"]
       26 GETUPVAL                         R6 1
       27 DUPTABLE                         R7 K21 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       28 GETTABLEKS                       R8 R0 K22 ["ColumnIndex"]
       30 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       32 DUPTABLE                         R8 K28 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       33 SETTABLEKS                       R8 R7 K13 ["Padding"]
       35 SETTABLEKS                       R4 R7 K15 ["BackgroundColor3"]
       37 GETTABLEKS                       R8 R2 K29 ["Border"]
       39 SETTABLEKS                       R8 R7 K17 ["BorderColor3"]
       41 GETIMPORT                        R8 K31 [UDim2.new]
       43 GETTABLEKS                       R9 R3 K32 ["Scale"]
       45 GETTABLEKS                       R10 R3 K33 ["Offset"]
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 CALL                             R8 4 1
       50 SETTABLEKS                       R8 R7 K18 ["Size"]
       52 DUPTABLE                         R8 K36 [{"Text", "Arrow"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K11 ["createElement"]
       56 GETUPVAL                         R10 2
       57 DUPTABLE                         R11 K39 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       58 FASTCALL1                        TOSTRING R1 ; [+3]
       59 MOVE                             R13 R1
       60 GETIMPORT                        R12 K41 [tostring]
       62 CALL                             R12 1 1
       63 SETTABLEKS                       R12 R11 K34 ["Text"]
       65 GETIMPORT                        R12 K44 [Enum.TextTruncate.AtEnd]
       67 SETTABLEKS                       R12 R11 K37 ["TextTruncate"]
       69 GETIMPORT                        R12 K46 [UDim2.fromScale]
       71 LOADN                            R13 1
       72 LOADN                            R14 1
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K18 ["Size"]
       76 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R12 R11 K38 ["TextXAlignment"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K34 ["Text"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K11 ["createElement"]
       86 GETUPVAL                         R10 2
       87 DUPTABLE                         R11 K52 [{["AnchorPoint"], ["Position"], ["Size"], ["Style"] = "Bold", ["Text"] = "→"}]
       88 GETIMPORT                        R12 K54 [Vector2.new]
       90 LOADN                            R13 1
       91 LOADK                            R14 K55 [0.5]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K48 ["AnchorPoint"]
       95 GETIMPORT                        R12 K31 [UDim2.new]
       97 LOADN                            R13 1
       98 LOADN                            R14 -5
       99 LOADK                            R15 K55 [0.5]
      100 LOADN                            R16 0
      101 CALL                             R12 4 1
      102 SETTABLEKS                       R12 R11 K49 ["Position"]
      104 GETIMPORT                        R12 K31 [UDim2.new]
      106 LOADN                            R13 0
      107 LOADN                            R14 10
      108 LOADN                            R15 0
      109 LOADN                            R16 10
      110 CALL                             R12 4 1
      111 SETTABLEKS                       R12 R11 K18 ["Size"]
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R8 K35 ["Arrow"]
      116 CALL                             R5 3 -1
      117 RETURN                           R5 -1

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
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 RETURN                           R6 1
