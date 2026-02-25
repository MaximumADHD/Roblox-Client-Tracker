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
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K12 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+15]
       31 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K16 [math.floor]
       35 CALL                             R6 1 1
       36 JUMPIFEQ                         R6 R1 ; [+8]
       38 LOADK                            R6 K17 ["%.3f"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K18 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+6]
       45 FASTCALL1                        TOSTRING R1 ; [+3]
       46 MOVE                             R7 R1
       47 GETIMPORT                        R6 K20 [tostring]
       49 CALL                             R6 1 1
       50 MOVE                             R5 R6
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K21 ["createElement"]
       54 GETUPVAL                         R7 1
       55 DUPTABLE                         R8 K32 [{"HorizontalAlignment", "LayoutOrder", "Layout", "Padding", "Spacing", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       56 GETIMPORT                        R9 K35 [Enum.HorizontalAlignment.Left]
       58 SETTABLEKS                       R9 R8 K22 ["HorizontalAlignment"]
       60 GETTABLEKS                       R9 R0 K36 ["ColumnIndex"]
       62 SETTABLEKS                       R9 R8 K23 ["LayoutOrder"]
       64 GETIMPORT                        R9 K39 [Enum.FillDirection.Horizontal]
       66 SETTABLEKS                       R9 R8 K24 ["Layout"]
       68 DUPTABLE                         R9 K43 [{"Top", "Bottom", "Left", "Right"}]
       69 LOADN                            R10 1
       70 SETTABLEKS                       R10 R9 K40 ["Top"]
       72 LOADN                            R10 1
       73 SETTABLEKS                       R10 R9 K41 ["Bottom"]
       75 LOADN                            R10 5
       76 SETTABLEKS                       R10 R9 K34 ["Left"]
       78 LOADN                            R10 5
       79 SETTABLEKS                       R10 R9 K42 ["Right"]
       81 SETTABLEKS                       R9 R8 K25 ["Padding"]
       83 LOADN                            R9 6
       84 SETTABLEKS                       R9 R8 K26 ["Spacing"]
       86 LOADK                            R9 K44 ["Box"]
       87 SETTABLEKS                       R9 R8 K1 ["Style"]
       89 SETTABLEKS                       R4 R8 K27 ["BackgroundColor3"]
       91 LOADN                            R9 1
       92 SETTABLEKS                       R9 R8 K28 ["BorderSizePixel"]
       94 GETTABLEKS                       R9 R2 K45 ["Border"]
       96 SETTABLEKS                       R9 R8 K29 ["BorderColor3"]
       98 GETIMPORT                        R9 K47 [UDim2.new]
      100 GETTABLEKS                       R10 R3 K48 ["Scale"]
      102 GETTABLEKS                       R11 R3 K49 ["Offset"]
      104 LOADN                            R12 1
      105 LOADN                            R13 0
      106 CALL                             R9 4 1
      107 SETTABLEKS                       R9 R8 K30 ["Size"]
      109 LOADB                            R9 1
      110 SETTABLEKS                       R9 R8 K31 ["ClipsDescendants"]
      112 DUPTABLE                         R9 K52 [{"Icon", "Text"}]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R10 R11 K21 ["createElement"]
      116 GETUPVAL                         R11 2
      117 DUPTABLE                         R12 K54 [{"LayoutOrder", "Size", "Image"}]
      118 LOADN                            R13 1
      119 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
      121 GETIMPORT                        R13 K56 [UDim2.fromOffset]
      123 LOADN                            R14 16
      124 LOADN                            R15 16
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K30 ["Size"]
      128 GETUPVAL                         R14 3
      129 GETTABLEKS                       R18 R0 K57 ["Row"]
      131 GETTABLEKS                       R17 R18 K58 ["Instance"]
      133 GETTABLEKS                       R16 R17 K59 ["ClassName"]
      135 NAMECALL                         R14 R14 K60 ["GetClassIcon"]
      137 CALL                             R14 2 1
      138 GETTABLEKS                       R13 R14 K53 ["Image"]
      140 SETTABLEKS                       R13 R12 K53 ["Image"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K50 ["Icon"]
      145 GETUPVAL                         R11 0
      146 GETTABLEKS                       R10 R11 K21 ["createElement"]
      148 GETUPVAL                         R11 4
      149 DUPTABLE                         R12 K63 [{"LayoutOrder", "Text", "TextTruncate", "Size", "TextXAlignment"}]
      150 LOADN                            R13 2
      151 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
      153 SETTABLEKS                       R5 R12 K51 ["Text"]
      155 GETIMPORT                        R13 K65 [Enum.TextTruncate.AtEnd]
      157 SETTABLEKS                       R13 R12 K61 ["TextTruncate"]
      159 GETIMPORT                        R13 K67 [UDim2.fromScale]
      161 LOADN                            R14 1
      162 LOADN                            R15 1
      163 CALL                             R13 2 1
      164 SETTABLEKS                       R13 R12 K30 ["Size"]
      166 GETIMPORT                        R13 K68 [Enum.TextXAlignment.Left]
      168 SETTABLEKS                       R13 R12 K62 ["TextXAlignment"]
      170 CALL                             R10 2 1
      171 SETTABLEKS                       R10 R9 K51 ["Text"]
      173 CALL                             R6 3 -1
      174 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["UI"]
       29 GETTABLEKS                       R5 R4 K14 ["Image"]
       31 GETTABLEKS                       R6 R4 K15 ["Pane"]
       33 GETTABLEKS                       R7 R4 K16 ["TextLabel"]
       35 DUPCLOSURE                       R8 K17 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 RETURN                           R8 1
