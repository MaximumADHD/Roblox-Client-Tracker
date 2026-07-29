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
       25 DUPTABLE                         R7 K11 [{["ClipToDeviceSafeArea"] = False}]
       26 NEWTABLE                         R8 0 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K7 ["createElement"]
       31 LOADK                            R10 K12 ["Frame"]
       32 DUPTABLE                         R11 K19 [{["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
       33 GETIMPORT                        R12 K21 [UDim2.new]
       35 LOADN                            R13 0
       36 GETTABLEKS                       R14 R4 K22 ["Min"]
       38 GETTABLEKS                       R14 R14 K23 ["X"]
       40 LOADN                            R15 0
       41 GETTABLEKS                       R16 R4 K22 ["Min"]
       43 GETTABLEKS                       R16 R16 K24 ["Y"]
       45 CALL                             R12 4 1
       46 SETTABLEKS                       R12 R11 K13 ["Position"]
       48 GETIMPORT                        R12 K21 [UDim2.new]
       50 LOADN                            R13 0
       51 GETTABLEKS                       R14 R4 K25 ["Width"]
       53 LOADN                            R15 0
       54 GETTABLEKS                       R16 R4 K26 ["Height"]
       56 CALL                             R12 4 1
       57 SETTABLEKS                       R12 R11 K14 ["Size"]
       59 GETTABLEKS                       R12 R0 K0 ["props"]
       61 GETTABLEKS                       R12 R12 K15 ["BackgroundColor3"]
       63 SETTABLEKS                       R12 R11 K15 ["BackgroundColor3"]
       65 GETTABLEKS                       R12 R0 K0 ["props"]
       67 GETTABLEKS                       R12 R12 K16 ["BackgroundTransparency"]
       69 SETTABLEKS                       R12 R11 K16 ["BackgroundTransparency"]
       71 DUPTABLE                         R12 K31 [{"Left", "Top", "Right", "Bottom"}]
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R13 R13 K7 ["createElement"]
       75 LOADK                            R14 K12 ["Frame"]
       76 DUPTABLE                         R15 K32 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       77 GETIMPORT                        R16 K21 [UDim2.new]
       79 LOADN                            R17 0
       80 LOADN                            R18 1
       81 LOADN                            R19 1
       82 LOADN                            R20 0
       83 CALL                             R16 4 1
       84 SETTABLEKS                       R16 R15 K14 ["Size"]
       86 GETTABLEKS                       R16 R0 K0 ["props"]
       88 GETTABLEKS                       R16 R16 K33 ["BorderColor3"]
       90 SETTABLEKS                       R16 R15 K15 ["BackgroundColor3"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K27 ["Left"]
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K7 ["createElement"]
       98 LOADK                            R14 K12 ["Frame"]
       99 DUPTABLE                         R15 K32 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      100 GETIMPORT                        R16 K21 [UDim2.new]
      102 LOADN                            R17 1
      103 LOADN                            R18 0
      104 LOADN                            R19 0
      105 LOADN                            R20 1
      106 CALL                             R16 4 1
      107 SETTABLEKS                       R16 R15 K14 ["Size"]
      109 GETTABLEKS                       R16 R0 K0 ["props"]
      111 GETTABLEKS                       R16 R16 K33 ["BorderColor3"]
      113 SETTABLEKS                       R16 R15 K15 ["BackgroundColor3"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K28 ["Top"]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R13 R13 K7 ["createElement"]
      121 LOADK                            R14 K12 ["Frame"]
      122 DUPTABLE                         R15 K35 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      123 GETIMPORT                        R16 K37 [Vector2.new]
      125 LOADN                            R17 1
      126 LOADN                            R18 0
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K34 ["AnchorPoint"]
      130 GETIMPORT                        R16 K21 [UDim2.new]
      132 LOADN                            R17 1
      133 LOADN                            R18 0
      134 LOADN                            R19 0
      135 LOADN                            R20 0
      136 CALL                             R16 4 1
      137 SETTABLEKS                       R16 R15 K13 ["Position"]
      139 GETIMPORT                        R16 K21 [UDim2.new]
      141 LOADN                            R17 0
      142 LOADN                            R18 1
      143 LOADN                            R19 1
      144 LOADN                            R20 0
      145 CALL                             R16 4 1
      146 SETTABLEKS                       R16 R15 K14 ["Size"]
      148 GETTABLEKS                       R16 R0 K0 ["props"]
      150 GETTABLEKS                       R16 R16 K33 ["BorderColor3"]
      152 SETTABLEKS                       R16 R15 K15 ["BackgroundColor3"]
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K29 ["Right"]
      157 GETUPVAL                         R13 1
      158 GETTABLEKS                       R13 R13 K7 ["createElement"]
      160 LOADK                            R14 K12 ["Frame"]
      161 DUPTABLE                         R15 K35 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      162 GETIMPORT                        R16 K37 [Vector2.new]
      164 LOADN                            R17 0
      165 LOADN                            R18 1
      166 CALL                             R16 2 1
      167 SETTABLEKS                       R16 R15 K34 ["AnchorPoint"]
      169 GETIMPORT                        R16 K21 [UDim2.new]
      171 LOADN                            R17 0
      172 LOADN                            R18 0
      173 LOADN                            R19 1
      174 LOADN                            R20 0
      175 CALL                             R16 4 1
      176 SETTABLEKS                       R16 R15 K13 ["Position"]
      178 GETIMPORT                        R16 K21 [UDim2.new]
      180 LOADN                            R17 1
      181 LOADN                            R18 0
      182 LOADN                            R19 0
      183 LOADN                            R20 1
      184 CALL                             R16 4 1
      185 SETTABLEKS                       R16 R15 K14 ["Size"]
      187 GETTABLEKS                       R16 R0 K0 ["props"]
      189 GETTABLEKS                       R16 R16 K33 ["BorderColor3"]
      191 SETTABLEKS                       R16 R15 K15 ["BackgroundColor3"]
      193 CALL                             R13 2 1
      194 SETTABLEKS                       R13 R12 K30 ["Bottom"]
      196 CALL                             R9 3 -1
      197 SETLIST                          R8 R9 -1 [1]
      199 CALL                             R5 3 -1
      200 RETURN                           R5 -1

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
       37 DUPTABLE                         R6 K20 [{["BackgroundColor3"], ["BackgroundTransparency"] = 1, ["BorderColor3"]}]
       38 GETTABLEKS                       R7 R4 K21 ["BLACK"]
       40 SETTABLEKS                       R7 R6 K16 ["BackgroundColor3"]
       42 GETTABLEKS                       R7 R4 K22 ["GRAY"]
       44 SETTABLEKS                       R7 R6 K19 ["BorderColor3"]
       46 SETTABLEKS                       R6 R5 K23 ["defaultProps"]
       48 DUPCLOSURE                       R6 K24 [PROTO_0]
       49 SETTABLEKS                       R6 R5 K25 ["init"]
       51 DUPCLOSURE                       R6 K26 [PROTO_1]
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K27 ["render"]
       56 RETURN                           R5 1
