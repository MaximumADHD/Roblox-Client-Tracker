PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["onButtonClicked"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["onButtonClicked"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["containerRef"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K3 ["currentLayout"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K4 ["onButtonClicked"]
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R6 0
        1 MOVE                             R8 R2
        2 GETTABLEKS                       R9 R5 K0 ["radioButton"]
        4 GETTABLEKS                       R9 R9 K1 ["textSize"]
        6 GETTABLEKS                       R10 R5 K0 ["radioButton"]
        8 GETTABLEKS                       R10 R10 K2 ["font"]
       10 GETUPVAL                         R11 1
       11 NAMECALL                         R6 R6 K3 ["GetTextSize"]
       13 CALL                             R6 5 1
       14 GETTABLEKS                       R6 R6 K4 ["X"]
       16 GETTABLEKS                       R7 R5 K0 ["radioButton"]
       18 GETTABLEKS                       R7 R7 K5 ["buttonHeight"]
       20 GETIMPORT                        R8 K8 [UDim2.new]
       22 LOADN                            R9 1
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 MOVE                             R12 R7
       26 CALL                             R8 4 1
       27 GETTABLEKS                       R9 R0 K9 ["props"]
       29 GETTABLEKS                       R9 R9 K10 ["FillDirection"]
       31 GETIMPORT                        R10 K13 [Enum.FillDirection.Horizontal]
       33 JUMPIFNOTEQ                      R9 R10 ; [+9]
       35 GETIMPORT                        R9 K8 [UDim2.new]
       37 LOADN                            R10 0
       38 ADD                              R11 R6 R7
       39 LOADN                            R12 0
       40 MOVE                             R13 R7
       41 CALL                             R9 4 1
       42 MOVE                             R8 R9
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K14 ["createElement"]
       46 LOADK                            R10 K15 ["Frame"]
       47 DUPTABLE                         R11 K20 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"]}]
       48 NAMECALL                         R12 R0 K21 ["nextLayout"]
       50 CALL                             R12 1 1
       51 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       53 SETTABLEKS                       R8 R11 K19 ["Size"]
       55 DUPTABLE                         R12 K25 [{"UIListLayout", "Background", "Text"}]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K14 ["createElement"]
       59 LOADK                            R14 K22 ["UIListLayout"]
       60 DUPTABLE                         R15 K29 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
       61 GETIMPORT                        R16 K13 [Enum.FillDirection.Horizontal]
       63 SETTABLEKS                       R16 R15 K10 ["FillDirection"]
       65 GETIMPORT                        R16 K31 [Enum.VerticalAlignment.Center]
       67 SETTABLEKS                       R16 R15 K26 ["VerticalAlignment"]
       69 GETIMPORT                        R16 K32 [Enum.SortOrder.LayoutOrder]
       71 SETTABLEKS                       R16 R15 K27 ["SortOrder"]
       73 GETIMPORT                        R16 K34 [UDim.new]
       75 LOADN                            R17 0
       76 GETTABLEKS                       R18 R5 K0 ["radioButton"]
       78 GETTABLEKS                       R18 R18 K35 ["buttonPadding"]
       80 CALL                             R16 2 1
       81 SETTABLEKS                       R16 R15 K28 ["Padding"]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K22 ["UIListLayout"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K14 ["createElement"]
       89 LOADK                            R14 K36 ["ImageButton"]
       90 NEWTABLE                         R15 8 0
       92 LOADN                            R16 1
       93 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       95 GETIMPORT                        R16 K8 [UDim2.new]
       97 LOADN                            R17 0
       98 MOVE                             R18 R7
       99 LOADN                            R19 0
      100 MOVE                             R20 R7
      101 CALL                             R16 4 1
      102 SETTABLEKS                       R16 R15 K19 ["Size"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      107 GETTABLEKS                       R16 R5 K0 ["radioButton"]
      109 GETTABLEKS                       R16 R16 K37 ["radioButtonColor"]
      111 SETTABLEKS                       R16 R15 K38 ["ImageColor3"]
      113 GETTABLEKS                       R16 R5 K0 ["radioButton"]
      115 GETTABLEKS                       R16 R16 K39 ["radioButtonBackground"]
      117 SETTABLEKS                       R16 R15 K40 ["Image"]
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K41 ["Event"]
      122 GETTABLEKS                       R16 R16 K42 ["Activated"]
      124 NEWCLOSURE                       R17 P0
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R3
      128 SETTABLE                         R17 R15 R16
      129 DUPTABLE                         R16 K44 [{"Highlight"}]
      130 MOVE                             R17 R4
      131 JUMPIFNOT                        R17 ; [+37]
      132 GETUPVAL                         R17 2
      133 GETTABLEKS                       R17 R17 K14 ["createElement"]
      135 LOADK                            R18 K45 ["ImageLabel"]
      136 DUPTABLE                         R19 K48 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Image"]}]
      137 GETIMPORT                        R20 K8 [UDim2.new]
      139 LOADK                            R21 K49 [0.4]
      140 LOADN                            R22 0
      141 LOADK                            R23 K49 [0.4]
      142 LOADN                            R24 0
      143 CALL                             R20 4 1
      144 SETTABLEKS                       R20 R19 K19 ["Size"]
      146 GETIMPORT                        R20 K51 [Vector2.new]
      148 LOADK                            R21 K52 [0.5]
      149 LOADK                            R22 K52 [0.5]
      150 CALL                             R20 2 1
      151 SETTABLEKS                       R20 R19 K46 ["AnchorPoint"]
      153 GETIMPORT                        R20 K8 [UDim2.new]
      155 LOADK                            R21 K52 [0.5]
      156 LOADN                            R22 0
      157 LOADK                            R23 K52 [0.5]
      158 LOADN                            R24 0
      159 CALL                             R20 4 1
      160 SETTABLEKS                       R20 R19 K47 ["Position"]
      162 GETTABLEKS                       R20 R5 K0 ["radioButton"]
      164 GETTABLEKS                       R20 R20 K53 ["radioButtonSelected"]
      166 SETTABLEKS                       R20 R19 K40 ["Image"]
      168 CALL                             R17 2 1
      169 SETTABLEKS                       R17 R16 K43 ["Highlight"]
      171 CALL                             R13 3 1
      172 SETTABLEKS                       R13 R12 K23 ["Background"]
      174 GETUPVAL                         R13 2
      175 GETTABLEKS                       R13 R13 K14 ["createElement"]
      177 LOADK                            R14 K54 ["TextButton"]
      178 NEWTABLE                         R15 16 0
      180 LOADN                            R16 2
      181 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      183 SETTABLEKS                       R2 R15 K24 ["Text"]
      185 GETIMPORT                        R16 K8 [UDim2.new]
      187 LOADN                            R17 0
      188 MOVE                             R18 R6
      189 LOADN                            R19 1
      190 LOADN                            R20 0
      191 CALL                             R16 4 1
      192 SETTABLEKS                       R16 R15 K19 ["Size"]
      194 LOADN                            R16 1
      195 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      197 GETTABLEKS                       R16 R5 K0 ["radioButton"]
      199 GETTABLEKS                       R16 R16 K2 ["font"]
      201 SETTABLEKS                       R16 R15 K55 ["Font"]
      203 GETTABLEKS                       R16 R5 K0 ["radioButton"]
      205 GETTABLEKS                       R16 R16 K1 ["textSize"]
      207 SETTABLEKS                       R16 R15 K56 ["TextSize"]
      209 GETTABLEKS                       R16 R5 K0 ["radioButton"]
      211 GETTABLEKS                       R16 R16 K57 ["textColor"]
      213 SETTABLEKS                       R16 R15 K58 ["TextColor3"]
      215 GETIMPORT                        R16 K61 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R16 R15 K59 ["TextXAlignment"]
      219 GETUPVAL                         R16 2
      220 GETTABLEKS                       R16 R16 K41 ["Event"]
      222 GETTABLEKS                       R16 R16 K42 ["Activated"]
      224 NEWCLOSURE                       R17 P1
      225 CAPTURE                          VAL R0
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R3
      228 SETTABLE                         R17 R15 R16
      229 CALL                             R13 2 1
      230 SETTABLEKS                       R13 R12 K24 ["Text"]
      232 CALL                             R9 3 -1
      233 RETURN                           R9 -1

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
       25 GETTABLEKS                       R13 R2 K17 ["radioButton"]
       27 GETTABLEKS                       R13 R13 K18 ["contentPadding"]
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
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K26 ["createElement"]
       70 MOVE                             R10 R7
       71 DUPTABLE                         R11 K29 [{["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       72 SETTABLEKS                       R4 R11 K3 ["LayoutOrder"]
       74 MOVE                             R12 R8
       75 CALL                             R9 3 -1
       76 RETURN                           R9 -1

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
       20 GETTABLEKS                       R4 R2 K14 ["Packages"]
       22 GETTABLEKS                       R4 R4 K15 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K13 [require]
       27 GETIMPORT                        R5 K9 [script]
       29 GETTABLEKS                       R5 R5 K16 ["Parent"]
       31 GETTABLEKS                       R5 R5 K17 ["createFitToContent"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K13 [require]
       36 GETTABLEKS                       R6 R2 K14 ["Packages"]
       38 GETTABLEKS                       R6 R6 K18 ["Framework"]
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
