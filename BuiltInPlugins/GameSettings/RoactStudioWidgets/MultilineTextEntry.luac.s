PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R2 R0 K3 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R2 K4 ["x"]
        9 SUBK                             R1 R2 K2 [9]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["props"]
       14 GETTABLEKS                       R4 R4 K6 ["Text"]
       16 LOADN                            R5 22
       17 GETIMPORT                        R6 K10 [Enum.Font.SourceSans]
       19 GETIMPORT                        R7 K13 [Vector2.new]
       21 MOVE                             R8 R1
       22 LOADN                            R9 16
       23 CALL                             R7 2 -1
       24 NAMECALL                         R2 R2 K14 ["GetTextSize"]
       26 CALL                             R2 -1 1
       27 GETIMPORT                        R3 K16 [UDim2.new]
       29 LOADN                            R4 0
       30 LOADN                            R5 0
       31 LOADN                            R6 0
       32 GETTABLEKS                       R7 R2 K17 ["y"]
       34 CALL                             R3 4 1
       35 SETTABLEKS                       R3 R0 K18 ["CanvasSize"]
       37 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K0 ["Text"]
        7 JUMPIFEQ                         R1 R2 ; [+9]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["props"]
       12 GETTABLEKS                       R1 R1 K2 ["SetText"]
       14 GETTABLEKS                       R2 R0 K0 ["Text"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["HoverChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["HoverChanged"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["textBoxRef"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["textConnections"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K4 ["updateCanvas"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["textChanged"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K6 ["mouseEnter"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K7 ["mouseLeave"]
       32 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 GETTABLEKS                       R2 R0 K2 ["frameRef"]
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 NEWTABLE                         R3 0 2
       10 LOADK                            R6 K3 ["Text"]
       11 NAMECALL                         R4 R1 K4 ["GetPropertyChangedSignal"]
       13 CALL                             R4 2 1
       14 GETTABLEKS                       R6 R0 K5 ["updateCanvas"]
       16 NAMECALL                         R4 R4 K6 ["connect"]
       18 CALL                             R4 2 1
       19 LOADK                            R7 K7 ["AbsoluteSize"]
       20 NAMECALL                         R5 R2 K4 ["GetPropertyChangedSignal"]
       22 CALL                             R5 2 1
       23 GETTABLEKS                       R7 R0 K5 ["updateCanvas"]
       25 NAMECALL                         R5 R5 K6 ["connect"]
       27 CALL                             R5 2 -1
       28 SETLIST                          R3 R4 -1 [1]
       30 SETTABLEKS                       R3 R0 K8 ["textConnections"]
       32 GETTABLEKS                       R3 R0 K5 ["updateCanvas"]
       34 CALL                             R3 0 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["textConnections"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["textConnections"]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["FocusChanged"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["FocusChanged"]
        5 LOADB                            R3 0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Visible"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Text"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["TextColor3"]
       12 LOADNIL                          R4
       13 LOADB                            R5 1
       14 GETTABLEKS                       R6 R0 K0 ["props"]
       16 GETTABLEKS                       R6 R6 K4 ["Enabled"]
       18 JUMPIFEQKNIL                     R6 ; [+5]
       20 GETTABLEKS                       R5 R0 K0 ["props"]
       22 GETTABLEKS                       R5 R5 K4 ["Enabled"]
       24 JUMPIF                           R5 ; [+26]
       25 NEWTABLE                         R6 0 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["createElement"]
       30 LOADK                            R8 K6 ["ImageButton"]
       31 DUPTABLE                         R9 K10 [{"Size", "BackgroundTransparency", "ImageTransparency"}]
       32 GETIMPORT                        R10 K13 [UDim2.new]
       34 LOADN                            R11 1
       35 LOADN                            R12 0
       36 LOADN                            R13 1
       37 LOADN                            R14 0
       38 CALL                             R10 4 1
       39 SETTABLEKS                       R10 R9 K7 ["Size"]
       41 LOADN                            R10 1
       42 SETTABLEKS                       R10 R9 K8 ["BackgroundTransparency"]
       44 LOADN                            R10 1
       45 SETTABLEKS                       R10 R9 K9 ["ImageTransparency"]
       47 CALL                             R7 2 -1
       48 SETLIST                          R6 R7 -1 [1]
       50 MOVE                             R4 R6
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K5 ["createElement"]
       54 GETUPVAL                         R7 1
       55 NEWTABLE                         R8 8 0
       57 GETIMPORT                        R9 K13 [UDim2.new]
       59 LOADN                            R10 1
       60 LOADN                            R11 9
       61 LOADN                            R12 1
       62 LOADN                            R13 0
       63 CALL                             R9 4 1
       64 SETTABLEKS                       R9 R8 K7 ["Size"]
       66 LOADN                            R9 1
       67 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       69 LOADB                            R9 1
       70 SETTABLEKS                       R9 R8 K14 ["ClipsDescendants"]
       72 LOADB                            R9 0
       73 SETTABLEKS                       R9 R8 K15 ["ShowBackground"]
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R9 R9 K16 ["Ref"]
       78 GETTABLEKS                       R10 R0 K17 ["frameRef"]
       80 SETTABLE                         R10 R8 R9
       81 DUPTABLE                         R9 K19 [{"Padding", "Text"}]
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R10 R10 K5 ["createElement"]
       85 LOADK                            R11 K20 ["UIPadding"]
       86 DUPTABLE                         R12 K22 [{"PaddingRight"}]
       87 GETIMPORT                        R13 K24 [UDim.new]
       89 LOADN                            R14 0
       90 LOADN                            R15 9
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K21 ["PaddingRight"]
       94 CALL                             R10 2 1
       95 SETTABLEKS                       R10 R9 K18 ["Padding"]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K5 ["createElement"]
      100 LOADK                            R11 K25 ["TextBox"]
      101 NEWTABLE                         R12 32 0
      103 SETTABLEKS                       R1 R12 K1 ["Visible"]
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K26 ["MultiLine"]
      108 LOADB                            R13 1
      109 SETTABLEKS                       R13 R12 K27 ["TextWrapped"]
      111 GETIMPORT                        R13 K13 [UDim2.new]
      113 LOADN                            R14 1
      114 LOADN                            R15 0
      115 LOADN                            R16 1
      116 LOADN                            R17 0
      117 CALL                             R13 4 1
      118 SETTABLEKS                       R13 R12 K7 ["Size"]
      120 LOADN                            R13 1
      121 SETTABLEKS                       R13 R12 K8 ["BackgroundTransparency"]
      123 LOADN                            R13 0
      124 SETTABLEKS                       R13 R12 K28 ["BorderSizePixel"]
      126 LOADB                            R13 0
      127 SETTABLEKS                       R13 R12 K29 ["ClearTextOnFocus"]
      129 GETIMPORT                        R13 K33 [Enum.Font.SourceSans]
      131 SETTABLEKS                       R13 R12 K31 ["Font"]
      133 LOADN                            R13 22
      134 SETTABLEKS                       R13 R12 K34 ["TextSize"]
      136 GETTABLEKS                       R13 R0 K0 ["props"]
      138 GETTABLEKS                       R13 R13 K35 ["HorizontalAlignment"]
      140 JUMPIF                           R13 ; [+2]
      141 GETIMPORT                        R13 K38 [Enum.TextXAlignment.Left]
      143 SETTABLEKS                       R13 R12 K36 ["TextXAlignment"]
      145 GETIMPORT                        R13 K41 [Enum.TextYAlignment.Top]
      147 SETTABLEKS                       R13 R12 K39 ["TextYAlignment"]
      149 SETTABLEKS                       R3 R12 K3 ["TextColor3"]
      151 SETTABLEKS                       R2 R12 K2 ["Text"]
      153 GETTABLEKS                       R13 R0 K0 ["props"]
      155 GETTABLEKS                       R13 R13 K42 ["PlaceholderText"]
      157 SETTABLEKS                       R13 R12 K42 ["PlaceholderText"]
      159 JUMPIF                           R5 ; [+2]
      160 LOADK                            R13 K43 [0.5]
      161 JUMP                             ; [+1]
      162 LOADN                            R13 0
      163 SETTABLEKS                       R13 R12 K44 ["TextTransparency"]
      165 GETUPVAL                         R13 0
      166 GETTABLEKS                       R13 R13 K45 ["Event"]
      168 GETTABLEKS                       R13 R13 K46 ["Focused"]
      170 NEWCLOSURE                       R14 P0
      171 CAPTURE                          VAL R0
      172 SETTABLE                         R14 R12 R13
      173 GETUPVAL                         R13 0
      174 GETTABLEKS                       R13 R13 K45 ["Event"]
      176 GETTABLEKS                       R13 R13 K47 ["FocusLost"]
      178 NEWCLOSURE                       R14 P1
      179 CAPTURE                          VAL R0
      180 SETTABLE                         R14 R12 R13
      181 GETUPVAL                         R13 0
      182 GETTABLEKS                       R13 R13 K45 ["Event"]
      184 GETTABLEKS                       R13 R13 K48 ["MouseEnter"]
      186 GETTABLEKS                       R14 R0 K49 ["mouseEnter"]
      188 SETTABLE                         R14 R12 R13
      189 GETUPVAL                         R13 0
      190 GETTABLEKS                       R13 R13 K45 ["Event"]
      192 GETTABLEKS                       R13 R13 K50 ["MouseLeave"]
      194 GETTABLEKS                       R14 R0 K51 ["mouseLeave"]
      196 SETTABLE                         R14 R12 R13
      197 GETUPVAL                         R13 0
      198 GETTABLEKS                       R13 R13 K52 ["Change"]
      200 GETTABLEKS                       R13 R13 K2 ["Text"]
      202 GETTABLEKS                       R14 R0 K53 ["textChanged"]
      204 SETTABLE                         R14 R12 R13
      205 GETUPVAL                         R13 0
      206 GETTABLEKS                       R13 R13 K16 ["Ref"]
      208 GETTABLEKS                       R14 R0 K54 ["textBoxRef"]
      210 SETTABLE                         R14 R12 R13
      211 MOVE                             R13 R4
      212 CALL                             R10 3 1
      213 SETTABLEKS                       R10 R9 K2 ["Text"]
      215 CALL                             R6 3 -1
      216 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["Internal"]
       15 GETTABLEKS                       R2 R2 K10 ["RequireRoact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETIMPORT                        R3 K7 [script]
       22 GETTABLEKS                       R3 R3 K8 ["Parent"]
       24 GETTABLEKS                       R3 R3 K11 ["StyledScrollingFrame"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K12 ["PureComponent"]
       29 LOADK                            R5 K13 ["MultilineTextEntry"]
       30 NAMECALL                         R3 R3 K14 ["extend"]
       32 CALL                             R3 2 1
       33 DUPCLOSURE                       R4 K15 [PROTO_4]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R4 R3 K16 ["init"]
       38 DUPCLOSURE                       R4 K17 [PROTO_5]
       39 SETTABLEKS                       R4 R3 K18 ["didMount"]
       41 DUPCLOSURE                       R4 K19 [PROTO_6]
       42 SETTABLEKS                       R4 R3 K20 ["willUnmount"]
       44 DUPCLOSURE                       R4 K21 [PROTO_9]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R4 R3 K22 ["render"]
       49 RETURN                           R3 1
