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
       22 LOADN                            R9 10000
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
       24 JUMPIF                           R5 ; [+20]
       25 NEWTABLE                         R6 0 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["createElement"]
       30 LOADK                            R8 K6 ["ImageButton"]
       31 DUPTABLE                         R9 K11 [{["Size"], ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 1}]
       32 GETIMPORT                        R10 K14 [UDim2.new]
       34 LOADN                            R11 1
       35 LOADN                            R12 0
       36 LOADN                            R13 1
       37 LOADN                            R14 0
       38 CALL                             R10 4 1
       39 SETTABLEKS                       R10 R9 K7 ["Size"]
       41 CALL                             R7 2 -1
       42 SETLIST                          R6 R7 -1 [1]
       44 MOVE                             R4 R6
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K5 ["createElement"]
       48 GETUPVAL                         R7 1
       49 NEWTABLE                         R8 8 0
       51 GETIMPORT                        R9 K14 [UDim2.new]
       53 LOADN                            R10 1
       54 LOADN                            R11 9
       55 LOADN                            R12 1
       56 LOADN                            R13 0
       57 CALL                             R9 4 1
       58 SETTABLEKS                       R9 R8 K7 ["Size"]
       60 LOADN                            R9 1
       61 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R8 K15 ["ClipsDescendants"]
       66 LOADB                            R9 0
       67 SETTABLEKS                       R9 R8 K16 ["ShowBackground"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K17 ["Ref"]
       72 GETTABLEKS                       R10 R0 K18 ["frameRef"]
       74 SETTABLE                         R10 R8 R9
       75 DUPTABLE                         R9 K20 [{"Padding", "Text"}]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K5 ["createElement"]
       79 LOADK                            R11 K21 ["UIPadding"]
       80 DUPTABLE                         R12 K23 [{"PaddingRight"}]
       81 GETIMPORT                        R13 K25 [UDim.new]
       83 LOADN                            R14 0
       84 LOADN                            R15 9
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K22 ["PaddingRight"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K19 ["Padding"]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K5 ["createElement"]
       94 LOADK                            R11 K26 ["TextBox"]
       95 NEWTABLE                         R12 32 0
       97 SETTABLEKS                       R1 R12 K1 ["Visible"]
       99 LOADB                            R13 1
      100 SETTABLEKS                       R13 R12 K27 ["MultiLine"]
      102 LOADB                            R13 1
      103 SETTABLEKS                       R13 R12 K28 ["TextWrapped"]
      105 GETIMPORT                        R13 K14 [UDim2.new]
      107 LOADN                            R14 1
      108 LOADN                            R15 0
      109 LOADN                            R16 1
      110 LOADN                            R17 0
      111 CALL                             R13 4 1
      112 SETTABLEKS                       R13 R12 K7 ["Size"]
      114 LOADN                            R13 1
      115 SETTABLEKS                       R13 R12 K8 ["BackgroundTransparency"]
      117 LOADN                            R13 0
      118 SETTABLEKS                       R13 R12 K29 ["BorderSizePixel"]
      120 LOADB                            R13 0
      121 SETTABLEKS                       R13 R12 K30 ["ClearTextOnFocus"]
      123 GETIMPORT                        R13 K34 [Enum.Font.SourceSans]
      125 SETTABLEKS                       R13 R12 K32 ["Font"]
      127 LOADN                            R13 22
      128 SETTABLEKS                       R13 R12 K35 ["TextSize"]
      130 GETTABLEKS                       R13 R0 K0 ["props"]
      132 GETTABLEKS                       R13 R13 K36 ["HorizontalAlignment"]
      134 JUMPIF                           R13 ; [+2]
      135 GETIMPORT                        R13 K39 [Enum.TextXAlignment.Left]
      137 SETTABLEKS                       R13 R12 K37 ["TextXAlignment"]
      139 GETIMPORT                        R13 K42 [Enum.TextYAlignment.Top]
      141 SETTABLEKS                       R13 R12 K40 ["TextYAlignment"]
      143 SETTABLEKS                       R3 R12 K3 ["TextColor3"]
      145 SETTABLEKS                       R2 R12 K2 ["Text"]
      147 GETTABLEKS                       R13 R0 K0 ["props"]
      149 GETTABLEKS                       R13 R13 K43 ["PlaceholderText"]
      151 SETTABLEKS                       R13 R12 K43 ["PlaceholderText"]
      153 JUMPIF                           R5 ; [+2]
      154 LOADK                            R13 K44 [0.5]
      155 JUMP                             ; [+1]
      156 LOADN                            R13 0
      157 SETTABLEKS                       R13 R12 K45 ["TextTransparency"]
      159 GETUPVAL                         R13 0
      160 GETTABLEKS                       R13 R13 K46 ["Event"]
      162 GETTABLEKS                       R13 R13 K47 ["Focused"]
      164 NEWCLOSURE                       R14 P0
      165 CAPTURE                          VAL R0
      166 SETTABLE                         R14 R12 R13
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R13 R13 K46 ["Event"]
      170 GETTABLEKS                       R13 R13 K48 ["FocusLost"]
      172 NEWCLOSURE                       R14 P1
      173 CAPTURE                          VAL R0
      174 SETTABLE                         R14 R12 R13
      175 GETUPVAL                         R13 0
      176 GETTABLEKS                       R13 R13 K46 ["Event"]
      178 GETTABLEKS                       R13 R13 K49 ["MouseEnter"]
      180 GETTABLEKS                       R14 R0 K50 ["mouseEnter"]
      182 SETTABLE                         R14 R12 R13
      183 GETUPVAL                         R13 0
      184 GETTABLEKS                       R13 R13 K46 ["Event"]
      186 GETTABLEKS                       R13 R13 K51 ["MouseLeave"]
      188 GETTABLEKS                       R14 R0 K52 ["mouseLeave"]
      190 SETTABLE                         R14 R12 R13
      191 GETUPVAL                         R13 0
      192 GETTABLEKS                       R13 R13 K53 ["Change"]
      194 GETTABLEKS                       R13 R13 K2 ["Text"]
      196 GETTABLEKS                       R14 R0 K54 ["textChanged"]
      198 SETTABLE                         R14 R12 R13
      199 GETUPVAL                         R13 0
      200 GETTABLEKS                       R13 R13 K17 ["Ref"]
      202 GETTABLEKS                       R14 R0 K55 ["textBoxRef"]
      204 SETTABLE                         R14 R12 R13
      205 MOVE                             R13 R4
      206 CALL                             R10 3 1
      207 SETTABLEKS                       R10 R9 K2 ["Text"]
      209 CALL                             R6 3 -1
      210 RETURN                           R6 -1

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
