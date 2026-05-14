PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["DragStartLocation"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Missing required property 'DragStartLocation'."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R1 K4 ["DragEndLocation"]
       10 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       12 LOADK                            R4 K5 ["Missing required property 'DragEndLocation'."]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["DragStartLocation"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["DragEndLocation"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 0
       13 NAMECALL                         R3 R3 K3 ["GetGuiInset"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K6 [Rect.new]
       18 SUB                              R5 R1 R3
       19 SUB                              R6 R2 R3
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K7 ["createElement"]
       24 LOADK                            R6 K8 ["ScreenGui"]
       25 DUPTABLE                         R7 K10 [{"ClipToDeviceSafeArea"}]
       26 LOADB                            R8 0
       27 SETTABLEKS                       R8 R7 K9 ["ClipToDeviceSafeArea"]
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K7 ["createElement"]
       34 LOADK                            R10 K11 ["Frame"]
       35 DUPTABLE                         R11 K17 [{"Position", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
       36 GETIMPORT                        R12 K19 [UDim2.new]
       38 LOADN                            R13 0
       39 GETTABLEKS                       R14 R4 K20 ["Min"]
       41 GETTABLEKS                       R14 R14 K21 ["X"]
       43 LOADN                            R15 0
       44 GETTABLEKS                       R16 R4 K20 ["Min"]
       46 GETTABLEKS                       R16 R16 K22 ["Y"]
       48 CALL                             R12 4 1
       49 SETTABLEKS                       R12 R11 K12 ["Position"]
       51 GETIMPORT                        R12 K19 [UDim2.new]
       53 LOADN                            R13 0
       54 GETTABLEKS                       R14 R4 K23 ["Width"]
       56 LOADN                            R15 0
       57 GETTABLEKS                       R16 R4 K24 ["Height"]
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 GETTABLEKS                       R12 R0 K0 ["props"]
       64 GETTABLEKS                       R12 R12 K14 ["BackgroundColor3"]
       66 SETTABLEKS                       R12 R11 K14 ["BackgroundColor3"]
       68 GETTABLEKS                       R12 R0 K0 ["props"]
       70 GETTABLEKS                       R12 R12 K15 ["BackgroundTransparency"]
       72 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       74 LOADN                            R12 0
       75 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
       77 DUPTABLE                         R12 K29 [{"Left", "Top", "Right", "Bottom"}]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K7 ["createElement"]
       81 LOADK                            R14 K11 ["Frame"]
       82 DUPTABLE                         R15 K30 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       83 GETIMPORT                        R16 K19 [UDim2.new]
       85 LOADN                            R17 0
       86 LOADN                            R18 1
       87 LOADN                            R19 1
       88 LOADN                            R20 0
       89 CALL                             R16 4 1
       90 SETTABLEKS                       R16 R15 K13 ["Size"]
       92 GETTABLEKS                       R16 R0 K0 ["props"]
       94 GETTABLEKS                       R16 R16 K31 ["BorderColor3"]
       96 SETTABLEKS                       R16 R15 K14 ["BackgroundColor3"]
       98 LOADN                            R16 0
       99 SETTABLEKS                       R16 R15 K16 ["BorderSizePixel"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K25 ["Left"]
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R13 R13 K7 ["createElement"]
      107 LOADK                            R14 K11 ["Frame"]
      108 DUPTABLE                         R15 K30 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      109 GETIMPORT                        R16 K19 [UDim2.new]
      111 LOADN                            R17 1
      112 LOADN                            R18 0
      113 LOADN                            R19 0
      114 LOADN                            R20 1
      115 CALL                             R16 4 1
      116 SETTABLEKS                       R16 R15 K13 ["Size"]
      118 GETTABLEKS                       R16 R0 K0 ["props"]
      120 GETTABLEKS                       R16 R16 K31 ["BorderColor3"]
      122 SETTABLEKS                       R16 R15 K14 ["BackgroundColor3"]
      124 LOADN                            R16 0
      125 SETTABLEKS                       R16 R15 K16 ["BorderSizePixel"]
      127 CALL                             R13 2 1
      128 SETTABLEKS                       R13 R12 K26 ["Top"]
      130 GETUPVAL                         R13 1
      131 GETTABLEKS                       R13 R13 K7 ["createElement"]
      133 LOADK                            R14 K11 ["Frame"]
      134 DUPTABLE                         R15 K33 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      135 GETIMPORT                        R16 K35 [Vector2.new]
      137 LOADN                            R17 1
      138 LOADN                            R18 0
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K32 ["AnchorPoint"]
      142 GETIMPORT                        R16 K19 [UDim2.new]
      144 LOADN                            R17 1
      145 LOADN                            R18 0
      146 LOADN                            R19 0
      147 LOADN                            R20 0
      148 CALL                             R16 4 1
      149 SETTABLEKS                       R16 R15 K12 ["Position"]
      151 GETIMPORT                        R16 K19 [UDim2.new]
      153 LOADN                            R17 0
      154 LOADN                            R18 1
      155 LOADN                            R19 1
      156 LOADN                            R20 0
      157 CALL                             R16 4 1
      158 SETTABLEKS                       R16 R15 K13 ["Size"]
      160 GETTABLEKS                       R16 R0 K0 ["props"]
      162 GETTABLEKS                       R16 R16 K31 ["BorderColor3"]
      164 SETTABLEKS                       R16 R15 K14 ["BackgroundColor3"]
      166 LOADN                            R16 0
      167 SETTABLEKS                       R16 R15 K16 ["BorderSizePixel"]
      169 CALL                             R13 2 1
      170 SETTABLEKS                       R13 R12 K27 ["Right"]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R13 R13 K7 ["createElement"]
      175 LOADK                            R14 K11 ["Frame"]
      176 DUPTABLE                         R15 K33 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      177 GETIMPORT                        R16 K35 [Vector2.new]
      179 LOADN                            R17 0
      180 LOADN                            R18 1
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K32 ["AnchorPoint"]
      184 GETIMPORT                        R16 K19 [UDim2.new]
      186 LOADN                            R17 0
      187 LOADN                            R18 0
      188 LOADN                            R19 1
      189 LOADN                            R20 0
      190 CALL                             R16 4 1
      191 SETTABLEKS                       R16 R15 K12 ["Position"]
      193 GETIMPORT                        R16 K19 [UDim2.new]
      195 LOADN                            R17 1
      196 LOADN                            R18 0
      197 LOADN                            R19 0
      198 LOADN                            R20 1
      199 CALL                             R16 4 1
      200 SETTABLEKS                       R16 R15 K13 ["Size"]
      202 GETTABLEKS                       R16 R0 K0 ["props"]
      204 GETTABLEKS                       R16 R16 K31 ["BorderColor3"]
      206 SETTABLEKS                       R16 R15 K14 ["BackgroundColor3"]
      208 LOADN                            R16 0
      209 SETTABLEKS                       R16 R15 K16 ["BorderSizePixel"]
      211 CALL                             R13 2 1
      212 SETTABLEKS                       R13 R12 K28 ["Bottom"]
      214 CALL                             R9 3 -1
      215 SETLIST                          R8 R9 -1 [1]
      217 CALL                             R5 3 -1
      218 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Utility"]
       28 GETTABLEKS                       R5 R5 K12 ["Colors"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R3 K13 ["PureComponent"]
       33 LOADK                            R7 K14 ["DragSelectionView"]
       34 NAMECALL                         R5 R5 K15 ["extend"]
       36 CALL                             R5 2 1
       37 DUPTABLE                         R6 K19 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3"}]
       38 GETTABLEKS                       R7 R4 K20 ["BLACK"]
       40 SETTABLEKS                       R7 R6 K16 ["BackgroundColor3"]
       42 LOADN                            R7 1
       43 SETTABLEKS                       R7 R6 K17 ["BackgroundTransparency"]
       45 GETTABLEKS                       R7 R4 K21 ["GRAY"]
       47 SETTABLEKS                       R7 R6 K18 ["BorderColor3"]
       49 SETTABLEKS                       R6 R5 K22 ["defaultProps"]
       51 DUPCLOSURE                       R6 K23 [PROTO_0]
       52 SETTABLEKS                       R6 R5 K24 ["init"]
       54 DUPCLOSURE                       R6 K25 [PROTO_1]
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R6 R5 K26 ["render"]
       59 RETURN                           R5 1
