PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["onButtonClicked"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K1 ["onButtonClicked"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["containerRef"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K3 ["currentLayout"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K4 ["onButtonClicked"]
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R7 0
        1 MOVE                             R9 R2
        2 GETTABLEKS                       R11 R5 K0 ["radioButton"]
        4 GETTABLEKS                       R10 R11 K1 ["textSize"]
        6 GETTABLEKS                       R12 R5 K0 ["radioButton"]
        8 GETTABLEKS                       R11 R12 K2 ["font"]
       10 GETUPVAL                         R12 1
       11 NAMECALL                         R7 R7 K3 ["GetTextSize"]
       13 CALL                             R7 5 1
       14 GETTABLEKS                       R6 R7 K4 ["X"]
       16 GETTABLEKS                       R8 R5 K0 ["radioButton"]
       18 GETTABLEKS                       R7 R8 K5 ["buttonHeight"]
       20 GETIMPORT                        R8 K8 [UDim2.new]
       22 LOADN                            R9 1
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 MOVE                             R12 R7
       26 CALL                             R8 4 1
       27 GETTABLEKS                       R10 R0 K9 ["props"]
       29 GETTABLEKS                       R9 R10 K10 ["FillDirection"]
       31 GETIMPORT                        R10 K13 [Enum.FillDirection.Horizontal]
       33 JUMPIFNOTEQ                      R9 R10 ; [+9]
       35 GETIMPORT                        R9 K8 [UDim2.new]
       37 LOADN                            R10 0
       38 ADD                              R11 R6 R7
       39 LOADN                            R12 0
       40 MOVE                             R13 R7
       41 CALL                             R9 4 1
       42 MOVE                             R8 R9
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R9 R10 K14 ["createElement"]
       46 LOADK                            R10 K15 ["Frame"]
       47 DUPTABLE                         R11 K19 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
       48 NAMECALL                         R12 R0 K20 ["nextLayout"]
       50 CALL                             R12 1 1
       51 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       53 LOADN                            R12 1
       54 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
       56 SETTABLEKS                       R8 R11 K18 ["Size"]
       58 DUPTABLE                         R12 K24 [{"UIListLayout", "Background", "Text"}]
       59 GETUPVAL                         R14 2
       60 GETTABLEKS                       R13 R14 K14 ["createElement"]
       62 LOADK                            R14 K21 ["UIListLayout"]
       63 DUPTABLE                         R15 K28 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
       64 GETIMPORT                        R16 K13 [Enum.FillDirection.Horizontal]
       66 SETTABLEKS                       R16 R15 K10 ["FillDirection"]
       68 GETIMPORT                        R16 K30 [Enum.VerticalAlignment.Center]
       70 SETTABLEKS                       R16 R15 K25 ["VerticalAlignment"]
       72 GETIMPORT                        R16 K31 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R16 R15 K26 ["SortOrder"]
       76 GETIMPORT                        R16 K33 [UDim.new]
       78 LOADN                            R17 0
       79 GETTABLEKS                       R19 R5 K0 ["radioButton"]
       81 GETTABLEKS                       R18 R19 K34 ["buttonPadding"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K27 ["Padding"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K21 ["UIListLayout"]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R13 R14 K14 ["createElement"]
       92 LOADK                            R14 K35 ["ImageButton"]
       93 NEWTABLE                         R15 8 0
       95 LOADN                            R16 1
       96 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       98 GETIMPORT                        R16 K8 [UDim2.new]
      100 LOADN                            R17 0
      101 MOVE                             R18 R7
      102 LOADN                            R19 0
      103 MOVE                             R20 R7
      104 CALL                             R16 4 1
      105 SETTABLEKS                       R16 R15 K18 ["Size"]
      107 LOADN                            R16 1
      108 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      110 GETTABLEKS                       R17 R5 K0 ["radioButton"]
      112 GETTABLEKS                       R16 R17 K36 ["radioButtonColor"]
      114 SETTABLEKS                       R16 R15 K37 ["ImageColor3"]
      116 GETTABLEKS                       R17 R5 K0 ["radioButton"]
      118 GETTABLEKS                       R16 R17 K38 ["radioButtonBackground"]
      120 SETTABLEKS                       R16 R15 K39 ["Image"]
      122 GETUPVAL                         R18 2
      123 GETTABLEKS                       R17 R18 K40 ["Event"]
      125 GETTABLEKS                       R16 R17 K41 ["Activated"]
      127 NEWCLOSURE                       R17 P0
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R3
      131 SETTABLE                         R17 R15 R16
      132 DUPTABLE                         R16 K43 [{"Highlight"}]
      133 MOVE                             R17 R4
      134 JUMPIFNOT                        R17 ; [+40]
      135 GETUPVAL                         R18 2
      136 GETTABLEKS                       R17 R18 K14 ["createElement"]
      138 LOADK                            R18 K44 ["ImageLabel"]
      139 DUPTABLE                         R19 K47 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
      140 GETIMPORT                        R20 K8 [UDim2.new]
      142 LOADK                            R21 K48 [0.4]
      143 LOADN                            R22 0
      144 LOADK                            R23 K48 [0.4]
      145 LOADN                            R24 0
      146 CALL                             R20 4 1
      147 SETTABLEKS                       R20 R19 K18 ["Size"]
      149 GETIMPORT                        R20 K50 [Vector2.new]
      151 LOADK                            R21 K51 [0.5]
      152 LOADK                            R22 K51 [0.5]
      153 CALL                             R20 2 1
      154 SETTABLEKS                       R20 R19 K45 ["AnchorPoint"]
      156 GETIMPORT                        R20 K8 [UDim2.new]
      158 LOADK                            R21 K51 [0.5]
      159 LOADN                            R22 0
      160 LOADK                            R23 K51 [0.5]
      161 LOADN                            R24 0
      162 CALL                             R20 4 1
      163 SETTABLEKS                       R20 R19 K46 ["Position"]
      165 LOADN                            R20 1
      166 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      168 GETTABLEKS                       R21 R5 K0 ["radioButton"]
      170 GETTABLEKS                       R20 R21 K52 ["radioButtonSelected"]
      172 SETTABLEKS                       R20 R19 K39 ["Image"]
      174 CALL                             R17 2 1
      175 SETTABLEKS                       R17 R16 K42 ["Highlight"]
      177 CALL                             R13 3 1
      178 SETTABLEKS                       R13 R12 K22 ["Background"]
      180 GETUPVAL                         R14 2
      181 GETTABLEKS                       R13 R14 K14 ["createElement"]
      183 LOADK                            R14 K53 ["TextButton"]
      184 NEWTABLE                         R15 16 0
      186 LOADN                            R16 2
      187 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      189 SETTABLEKS                       R2 R15 K23 ["Text"]
      191 GETIMPORT                        R16 K8 [UDim2.new]
      193 LOADN                            R17 0
      194 MOVE                             R18 R6
      195 LOADN                            R19 1
      196 LOADN                            R20 0
      197 CALL                             R16 4 1
      198 SETTABLEKS                       R16 R15 K18 ["Size"]
      200 LOADN                            R16 1
      201 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      203 GETTABLEKS                       R17 R5 K0 ["radioButton"]
      205 GETTABLEKS                       R16 R17 K2 ["font"]
      207 SETTABLEKS                       R16 R15 K54 ["Font"]
      209 GETTABLEKS                       R17 R5 K0 ["radioButton"]
      211 GETTABLEKS                       R16 R17 K1 ["textSize"]
      213 SETTABLEKS                       R16 R15 K55 ["TextSize"]
      215 GETTABLEKS                       R17 R5 K0 ["radioButton"]
      217 GETTABLEKS                       R16 R17 K56 ["textColor"]
      219 SETTABLEKS                       R16 R15 K57 ["TextColor3"]
      221 GETIMPORT                        R16 K60 [Enum.TextXAlignment.Left]
      223 SETTABLEKS                       R16 R15 K58 ["TextXAlignment"]
      225 GETUPVAL                         R18 2
      226 GETTABLEKS                       R17 R18 K40 ["Event"]
      228 GETTABLEKS                       R16 R17 K41 ["Activated"]
      230 NEWCLOSURE                       R17 P1
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R3
      234 SETTABLE                         R17 R15 R16
      235 CALL                             R13 2 1
      236 SETTABLEKS                       R13 R12 K23 ["Text"]
      238 CALL                             R9 3 -1
      239 RETURN                           R9 -1

PROTO_5:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["currentLayout"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K1 ["currentLayout"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["currentLayout"]
        5 GETTABLEKS                       R1 R0 K1 ["currentLayout"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Selected"]
       10 GETTABLEKS                       R6 R1 K5 ["FillDirection"]
       12 GETUPVAL                         R7 0
       13 LOADK                            R8 K6 ["Frame"]
       14 LOADK                            R9 K7 ["UIListLayout"]
       15 DUPTABLE                         R10 K10 [{"FillDirection", "Padding", "SortOrder"}]
       16 MOVE                             R11 R6
       17 JUMPIF                           R11 ; [+2]
       18 GETIMPORT                        R11 K13 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R11 R10 K5 ["FillDirection"]
       22 GETIMPORT                        R11 K16 [UDim.new]
       24 LOADN                            R12 0
       25 GETTABLEKS                       R14 R2 K17 ["radioButton"]
       27 GETTABLEKS                       R13 R14 K18 ["contentPadding"]
       29 CALL                             R11 2 1
       30 SETTABLEKS                       R11 R10 K8 ["Padding"]
       32 GETIMPORT                        R11 K19 [Enum.SortOrder.LayoutOrder]
       34 SETTABLEKS                       R11 R10 K9 ["SortOrder"]
       36 CALL                             R7 3 1
       37 NAMECALL                         R8 R0 K20 ["resetLayout"]
       39 CALL                             R8 1 0
       40 NEWTABLE                         R8 0 0
       42 GETIMPORT                        R9 K22 [ipairs]
       44 MOVE                             R10 R3
       45 CALL                             R9 1 3
       46 FORGPREP_INEXT                   R9
       47 GETTABLEKS                       R14 R13 K23 ["Key"]
       49 GETTABLEKS                       R17 R13 K23 ["Key"]
       51 GETTABLEKS                       R18 R13 K24 ["Text"]
       53 MOVE                             R19 R12
       54 GETTABLEKS                       R21 R13 K23 ["Key"]
       56 JUMPIFEQ                         R5 R21 ; [+2]
       58 LOADB                            R20 0 +1
       59 LOADB                            R20 1
       60 MOVE                             R21 R2
       61 NAMECALL                         R15 R0 K25 ["createButton"]
       63 CALL                             R15 6 1
       64 SETTABLE                         R15 R8 R14
       65 FORGLOOP                         R9 2 [inext] ; [-19]
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K26 ["createElement"]
       70 MOVE                             R10 R7
       71 DUPTABLE                         R11 K28 [{"BackgroundTransparency", "LayoutOrder"}]
       72 LOADN                            R12 1
       73 SETTABLEKS                       R12 R11 K27 ["BackgroundTransparency"]
       75 SETTABLEKS                       R4 R11 K3 ["LayoutOrder"]
       77 MOVE                             R12 R8
       78 CALL                             R9 3 -1
       79 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADK                            R1 K3 [1000000]
        4 LOADN                            R2 50
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [game]
        8 LOADK                            R3 K6 ["TextService"]
        9 NAMECALL                         R1 R1 K7 ["GetService"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K9 [script]
       14 LOADK                            R4 K10 ["AnimationClipEditor"]
       15 NAMECALL                         R2 R2 K11 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K13 [require]
       20 GETTABLEKS                       R5 R2 K14 ["Packages"]
       22 GETTABLEKS                       R4 R5 K15 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K13 [require]
       27 GETIMPORT                        R7 K9 [script]
       29 GETTABLEKS                       R6 R7 K16 ["Parent"]
       31 GETTABLEKS                       R5 R6 K17 ["createFitToContent"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K13 [require]
       36 GETTABLEKS                       R7 R2 K14 ["Packages"]
       38 GETTABLEKS                       R6 R7 K18 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K19 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K20 ["withContext"]
       45 GETTABLEKS                       R8 R3 K21 ["PureComponent"]
       47 LOADK                            R10 K22 ["RadioButtons"]
       48 NAMECALL                         R8 R8 K23 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K24 [PROTO_1]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R9 R8 K25 ["init"]
       55 DUPCLOSURE                       R9 K26 [PROTO_4]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R9 R8 K27 ["createButton"]
       61 DUPCLOSURE                       R9 K28 [PROTO_5]
       62 SETTABLEKS                       R9 R8 K29 ["resetLayout"]
       64 DUPCLOSURE                       R9 K30 [PROTO_6]
       65 SETTABLEKS                       R9 R8 K31 ["nextLayout"]
       67 DUPCLOSURE                       R9 K32 [PROTO_7]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R9 R8 K33 ["render"]
       72 MOVE                             R9 R7
       73 DUPTABLE                         R10 K35 [{"Stylizer"}]
       74 GETTABLEKS                       R11 R6 K34 ["Stylizer"]
       76 SETTABLEKS                       R11 R10 K34 ["Stylizer"]
       78 CALL                             R9 1 1
       79 MOVE                             R10 R8
       80 CALL                             R9 1 1
       81 MOVE                             R8 R9
       82 RETURN                           R8 1
