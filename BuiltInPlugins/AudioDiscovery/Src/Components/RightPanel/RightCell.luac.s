PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Value"]
        4 FASTCALL1                        TYPE R3 ; [+2]
        5 GETIMPORT                        R2 K3 [type]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K4 ["userdata"] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R4 R1 K1 ["Value"]
       14 GETTABLEKS                       R4 R4 K5 ["ClassName"]
       16 NAMECALL                         R2 R2 K6 ["GetClassIcon"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K7 ["ImageRectSize"]
       21 JUMPIF                           R3 ; [+3]
       22 GETIMPORT                        R3 K10 [Vector2.new]
       24 CALL                             R3 0 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K11 ["createElement"]
       28 LOADK                            R5 K12 ["ImageLabel"]
       29 DUPTABLE                         R6 K20 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageRectSize"], ["ImageRectOffset"], ["Position"], ["AnchorPoint"]}]
       30 GETIMPORT                        R7 K23 [UDim2.fromOffset]
       32 GETTABLEKS                       R8 R3 K24 ["X"]
       34 GETTABLEKS                       R9 R3 K25 ["Y"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K13 ["Size"]
       39 GETTABLEKS                       R7 R2 K16 ["Image"]
       41 SETTABLEKS                       R7 R6 K16 ["Image"]
       43 SETTABLEKS                       R3 R6 K7 ["ImageRectSize"]
       45 GETTABLEKS                       R7 R2 K17 ["ImageRectOffset"]
       47 SETTABLEKS                       R7 R6 K17 ["ImageRectOffset"]
       49 GETIMPORT                        R7 K26 [UDim2.new]
       51 LOADN                            R8 0
       52 LOADN                            R9 2
       53 LOADK                            R10 K27 [0.5]
       54 LOADN                            R11 0
       55 CALL                             R7 4 1
       56 SETTABLEKS                       R7 R6 K18 ["Position"]
       58 GETIMPORT                        R7 K10 [Vector2.new]
       60 LOADN                            R8 0
       61 LOADK                            R9 K27 [0.5]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K19 ["AnchorPoint"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R5 R1 K3 ["RowIndex"]
        6 MODK                             R4 R5 K2 [2]
        7 JUMPIFNOTEQKN                    R4 K4 [1] ; [+4]
        9 GETTABLEKS                       R3 R2 K5 ["BackgroundOdd"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R2 K6 ["BackgroundEven"]
       14 GETTABLEKS                       R4 R1 K7 ["Width"]
       16 JUMPIF                           R4 ; [+8]
       17 GETIMPORT                        R4 K10 [UDim.new]
       19 GETTABLEKS                       R7 R1 K11 ["Columns"]
       21 LENGTH                           R6 R7
       22 DIVRK                            R5 K4 [1] R6
       23 LOADN                            R6 0
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R6 R1 K12 ["Value"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 GETTABLEKS                       R6 R1 K12 ["Value"]
       30 FASTCALL1                        TOSTRING R6 ; [+2]
       31 GETIMPORT                        R5 K14 [tostring]
       33 CALL                             R5 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 NAMECALL                         R6 R0 K15 ["getIcon"]
       38 CALL                             R6 1 1
       39 LOADNIL                          R7
       40 JUMPIFNOT                        R6 ; [+50]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K16 ["createElement"]
       44 GETUPVAL                         R9 1
       45 DUPTABLE                         R10 K24 [{"TextColor", "TextTruncate", "Position", "Size", "TextXAlignment", "LayoutOrder", "Text"}]
       46 GETTABLEKS                       R11 R1 K1 ["Style"]
       48 GETTABLEKS                       R11 R11 K23 ["Text"]
       50 SETTABLEKS                       R11 R10 K17 ["TextColor"]
       52 GETIMPORT                        R11 K27 [Enum.TextTruncate.AtEnd]
       54 SETTABLEKS                       R11 R10 K18 ["TextTruncate"]
       56 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       58 LOADN                            R12 24
       59 LOADN                            R13 0
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K19 ["Position"]
       63 GETIMPORT                        R11 K31 [UDim2.new]
       65 LOADN                            R12 1
       66 LOADN                            R13 -24
       67 LOADN                            R14 1
       68 LOADN                            R15 0
       69 CALL                             R11 4 1
       70 SETTABLEKS                       R11 R10 K20 ["Size"]
       72 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
       74 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
       76 GETTABLEKS                       R11 R1 K34 ["ColumnIndex"]
       78 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
       80 GETTABLEKS                       R12 R1 K12 ["Value"]
       82 FASTCALL1                        TOSTRING R12 ; [+2]
       83 GETIMPORT                        R11 K14 [tostring]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K23 ["Text"]
       88 CALL                             R8 2 1
       89 MOVE                             R7 R8
       90 JUMP                             ; [+36]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K16 ["createElement"]
       94 GETUPVAL                         R9 2
       95 DUPTABLE                         R10 K35 [{"TextColor", "Size", "TextXAlignment", "LayoutOrder", "Text"}]
       96 GETTABLEKS                       R11 R1 K1 ["Style"]
       98 GETTABLEKS                       R11 R11 K23 ["Text"]
      100 SETTABLEKS                       R11 R10 K17 ["TextColor"]
      102 GETIMPORT                        R11 K37 [UDim2.fromScale]
      104 LOADN                            R12 1
      105 LOADN                            R13 1
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K20 ["Size"]
      109 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R11 R10 K21 ["TextXAlignment"]
      113 GETTABLEKS                       R11 R1 K34 ["ColumnIndex"]
      115 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      117 GETTABLEKS                       R12 R1 K12 ["Value"]
      119 FASTCALL1                        TOSTRING R12 ; [+2]
      120 GETIMPORT                        R11 K14 [tostring]
      122 CALL                             R11 1 1
      123 SETTABLEKS                       R11 R10 K23 ["Text"]
      125 CALL                             R8 2 1
      126 MOVE                             R7 R8
      127 GETUPVAL                         R8 0
      128 GETTABLEKS                       R8 R8 K16 ["createElement"]
      130 GETUPVAL                         R9 3
      131 DUPTABLE                         R10 K43 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"]}]
      132 GETTABLEKS                       R11 R1 K34 ["ColumnIndex"]
      134 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      136 DUPTABLE                         R11 K48 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
      137 SETTABLEKS                       R11 R10 K38 ["Padding"]
      139 SETTABLEKS                       R3 R10 K40 ["BackgroundColor3"]
      141 GETTABLEKS                       R11 R2 K49 ["Border"]
      143 SETTABLEKS                       R11 R10 K42 ["BorderColor3"]
      145 GETIMPORT                        R11 K31 [UDim2.new]
      147 GETTABLEKS                       R12 R4 K50 ["Scale"]
      149 GETTABLEKS                       R13 R4 K51 ["Offset"]
      151 LOADN                            R14 1
      152 LOADN                            R15 0
      153 CALL                             R11 4 1
      154 SETTABLEKS                       R11 R10 K20 ["Size"]
      156 DUPTABLE                         R11 K55 [{"Icon", "Label", "Tooltip"}]
      157 SETTABLEKS                       R6 R11 K52 ["Icon"]
      159 SETTABLEKS                       R7 R11 K53 ["Label"]
      161 MOVE                             R12 R5
      162 JUMPIFNOT                        R12 ; [+18]
      163 GETUPVAL                         R12 0
      164 GETTABLEKS                       R12 R12 K16 ["createElement"]
      166 GETUPVAL                         R13 4
      167 DUPTABLE                         R14 K57 [{"MaxWidth", "Text", "TextXAlignment"}]
      168 GETTABLEKS                       R15 R2 K54 ["Tooltip"]
      170 GETTABLEKS                       R15 R15 K56 ["MaxWidth"]
      172 SETTABLEKS                       R15 R14 K56 ["MaxWidth"]
      174 SETTABLEKS                       R5 R14 K23 ["Text"]
      176 GETIMPORT                        R15 K33 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R15 R14 K21 ["TextXAlignment"]
      180 CALL                             R12 2 1
      181 SETTABLEKS                       R12 R11 K54 ["Tooltip"]
      183 CALL                             R8 3 -1
      184 RETURN                           R8 -1

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
       25 GETTABLEKS                       R3 R2 K8 ["UI"]
       27 GETTABLEKS                       R4 R3 K9 ["Pane"]
       29 GETTABLEKS                       R5 R3 K10 ["Tooltip"]
       31 GETTABLEKS                       R6 R3 K11 ["TextLabel"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Src"]
       37 GETTABLEKS                       R8 R8 K13 ["Components"]
       39 GETTABLEKS                       R8 R8 K14 ["LeftTruncateTextLabel"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K16 [game]
       44 LOADK                            R10 K17 ["StudioService"]
       45 NAMECALL                         R8 R8 K18 ["GetService"]
       47 CALL                             R8 2 1
       48 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       50 LOADK                            R11 K20 ["RightCell"]
       51 NAMECALL                         R9 R9 K21 ["extend"]
       53 CALL                             R9 2 1
       54 DUPCLOSURE                       R10 K22 [PROTO_0]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R10 R9 K23 ["getIcon"]
       59 DUPCLOSURE                       R10 K24 [PROTO_1]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R10 R9 K25 ["render"]
       67 RETURN                           R9 1
