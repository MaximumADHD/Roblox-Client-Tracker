PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K4 [{"Pressed"}]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K3 ["Pressed"]
       16 NAMECALL                         R0 R0 K5 ["setState"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Hovering", "Pressed"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Hovering"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["Pressed"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["mouseEnter"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["mouseLeave"]
       17 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["onEnter"]
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Mouse"]
        8 CALL                             R2 1 0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["onLeave"]
       13 GETTABLEKS                       R3 R0 K1 ["props"]
       15 GETTABLEKS                       R3 R3 K2 ["Mouse"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R2 R0 K1 ["props"]
       20 GETTABLEKS                       R2 R2 K4 ["OnHoverChanged"]
       22 JUMPIFEQKNIL                     R2 ; [+11]
       24 GETTABLEKS                       R2 R0 K1 ["props"]
       26 GETTABLEKS                       R2 R2 K4 ["OnHoverChanged"]
       28 GETTABLEKS                       R3 R0 K1 ["props"]
       30 GETTABLEKS                       R3 R3 K5 ["Value"]
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 DUPTABLE                         R4 K7 [{"Hovering"}]
       35 SETTABLEKS                       R1 R4 K6 ["Hovering"]
       37 NAMECALL                         R2 R0 K8 ["setState"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["props"]
        5 GETTABLEKS                       R0 R0 K1 ["OnClicked"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["Value"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+14]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+9]
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R4 K5 [{"Pressed"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K4 ["Pressed"]
       13 NAMECALL                         R2 R2 K6 ["setState"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+14]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+9]
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R4 K5 [{"Pressed"}]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K4 ["Pressed"]
       13 NAMECALL                         R2 R2 K6 ["setState"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["Hovering"]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K4 ["BorderMatchesBackground"]
       18 NEWTABLE                         R4 16 0
       20 LOADN                            R5 1
       21 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K6 ["ROUNDED_BACKGROUND_IMAGE"]
       26 SETTABLEKS                       R5 R4 K7 ["Image"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K8 ["ImageTransparency"]
       31 GETIMPORT                        R5 K12 [Enum.ScaleType.Slice]
       33 SETTABLEKS                       R5 R4 K10 ["ScaleType"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K13 ["ROUNDED_FRAME_SLICE"]
       38 SETTABLEKS                       R5 R4 K14 ["SliceCenter"]
       40 GETIMPORT                        R5 K17 [UDim2.new]
       42 LOADN                            R6 0
       43 LOADN                            R7 0
       44 LOADN                            R8 0
       45 LOADN                            R9 0
       46 CALL                             R5 4 1
       47 SETTABLEKS                       R5 R4 K18 ["Position"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K0 ["props"]
       52 GETTABLEKS                       R5 R5 K19 ["Size"]
       54 JUMPIF                           R5 ; [+11]
       55 GETIMPORT                        R5 K17 [UDim2.new]
       57 LOADN                            R6 0
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K20 ["BUTTON_WIDTH"]
       61 LOADN                            R8 0
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K21 ["BUTTON_HEIGHT"]
       65 CALL                             R5 4 1
       66 SETTABLEKS                       R5 R4 K19 ["Size"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K0 ["props"]
       71 GETTABLEKS                       R6 R6 K23 ["LayoutOrder"]
       73 ORK                              R5 R6 K22 [1]
       74 SETTABLEKS                       R5 R4 K23 ["LayoutOrder"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K0 ["props"]
       79 GETTABLEKS                       R6 R6 K24 ["ZIndex"]
       81 ORK                              R5 R6 K22 [1]
       82 SETTABLEKS                       R5 R4 K24 ["ZIndex"]
       84 GETUPVAL                         R5 3
       85 GETTABLEKS                       R5 R5 K25 ["Event"]
       87 GETTABLEKS                       R5 R5 K26 ["MouseEnter"]
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R6 R6 K27 ["mouseEnter"]
       92 SETTABLE                         R6 R4 R5
       93 GETUPVAL                         R5 3
       94 GETTABLEKS                       R5 R5 K25 ["Event"]
       96 GETTABLEKS                       R5 R5 K28 ["MouseLeave"]
       98 GETUPVAL                         R6 0
       99 GETTABLEKS                       R6 R6 K29 ["mouseLeave"]
      101 SETTABLE                         R6 R4 R5
      102 GETUPVAL                         R5 3
      103 GETTABLEKS                       R5 R5 K25 ["Event"]
      105 GETTABLEKS                       R5 R5 K30 ["Activated"]
      107 NEWCLOSURE                       R6 P0
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U0
      110 SETTABLE                         R6 R4 R5
      111 GETUPVAL                         R5 3
      112 GETTABLEKS                       R5 R5 K25 ["Event"]
      114 GETTABLEKS                       R5 R5 K31 ["InputBegan"]
      116 NEWCLOSURE                       R6 P1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U0
      119 SETTABLE                         R6 R4 R5
      120 GETUPVAL                         R5 3
      121 GETTABLEKS                       R5 R5 K25 ["Event"]
      123 GETTABLEKS                       R5 R5 K32 ["InputEnded"]
      125 NEWCLOSURE                       R6 P2
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U0
      128 SETTABLE                         R6 R4 R5
      129 JUMPIFNOT                        R0 ; [+26]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K0 ["props"]
      133 GETTABLEKS                       R5 R5 K33 ["ShowPressed"]
      135 JUMPIFNOT                        R5 ; [+11]
      136 GETUPVAL                         R5 0
      137 GETTABLEKS                       R5 R5 K2 ["state"]
      139 GETTABLEKS                       R5 R5 K34 ["Pressed"]
      141 JUMPIFNOT                        R5 ; [+5]
      142 GETTABLEKS                       R5 R2 K35 ["ButtonPressedColor"]
      144 SETTABLEKS                       R5 R4 K36 ["ImageColor3"]
      146 JUMP                             ; [+13]
      147 JUMPIFNOT                        R1 ; [+3]
      148 GETTABLEKS                       R5 R2 K37 ["ButtonHoverColor"]
      150 JUMPIF                           R5 ; [+2]
      151 GETTABLEKS                       R5 R2 K38 ["ButtonColor"]
      153 SETTABLEKS                       R5 R4 K36 ["ImageColor3"]
      155 JUMP                             ; [+4]
      156 GETTABLEKS                       R5 R2 K39 ["ButtonDisabledColor"]
      158 SETTABLEKS                       R5 R4 K36 ["ImageColor3"]
      160 GETUPVAL                         R5 3
      161 GETTABLEKS                       R5 R5 K40 ["createElement"]
      163 LOADK                            R6 K41 ["ImageButton"]
      164 MOVE                             R7 R4
      165 DUPTABLE                         R8 K44 [{"Border", "Text"}]
      166 GETUPVAL                         R9 3
      167 GETTABLEKS                       R9 R9 K40 ["createElement"]
      169 LOADK                            R10 K45 ["ImageLabel"]
      170 DUPTABLE                         R11 K46 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter", "ZIndex"}]
      171 GETIMPORT                        R12 K17 [UDim2.new]
      173 LOADN                            R13 1
      174 LOADN                            R14 0
      175 LOADN                            R15 1
      176 LOADN                            R16 0
      177 CALL                             R12 4 1
      178 SETTABLEKS                       R12 R11 K19 ["Size"]
      180 LOADN                            R12 1
      181 SETTABLEKS                       R12 R11 K5 ["BackgroundTransparency"]
      183 GETUPVAL                         R12 2
      184 GETTABLEKS                       R12 R12 K47 ["ROUNDED_BORDER_IMAGE"]
      186 SETTABLEKS                       R12 R11 K7 ["Image"]
      188 JUMPIFNOT                        R3 ; [+3]
      189 GETTABLEKS                       R12 R4 K36 ["ImageColor3"]
      191 JUMPIF                           R12 ; [+2]
      192 GETTABLEKS                       R12 R2 K48 ["BorderColor"]
      194 SETTABLEKS                       R12 R11 K36 ["ImageColor3"]
      196 GETIMPORT                        R12 K12 [Enum.ScaleType.Slice]
      198 SETTABLEKS                       R12 R11 K10 ["ScaleType"]
      200 GETUPVAL                         R12 2
      201 GETTABLEKS                       R12 R12 K13 ["ROUNDED_FRAME_SLICE"]
      203 SETTABLEKS                       R12 R11 K14 ["SliceCenter"]
      205 GETUPVAL                         R13 0
      206 GETTABLEKS                       R13 R13 K0 ["props"]
      208 GETTABLEKS                       R13 R13 K24 ["ZIndex"]
      210 ORK                              R12 R13 K22 [1]
      211 SETTABLEKS                       R12 R11 K24 ["ZIndex"]
      213 CALL                             R9 2 1
      214 SETTABLEKS                       R9 R8 K42 ["Border"]
      216 GETUPVAL                         R9 3
      217 GETTABLEKS                       R9 R9 K40 ["createElement"]
      219 LOADK                            R10 K49 ["TextLabel"]
      220 DUPTABLE                         R11 K54 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Font", "TextColor3", "TextSize", "Text", "ZIndex"}]
      221 GETIMPORT                        R12 K17 [UDim2.new]
      223 LOADN                            R13 1
      224 LOADN                            R14 0
      225 LOADN                            R15 1
      226 LOADN                            R16 0
      227 CALL                             R12 4 1
      228 SETTABLEKS                       R12 R11 K19 ["Size"]
      230 LOADN                            R12 1
      231 SETTABLEKS                       R12 R11 K5 ["BackgroundTransparency"]
      233 LOADN                            R12 0
      234 SETTABLEKS                       R12 R11 K50 ["BorderSizePixel"]
      236 GETIMPORT                        R12 K56 [Enum.Font.SourceSans]
      238 SETTABLEKS                       R12 R11 K51 ["Font"]
      240 JUMPIFNOT                        R0 ; [+3]
      241 GETTABLEKS                       R12 R2 K57 ["TextColor"]
      243 JUMPIF                           R12 ; [+2]
      244 GETTABLEKS                       R12 R2 K58 ["TextDisabledColor"]
      246 SETTABLEKS                       R12 R11 K52 ["TextColor3"]
      248 LOADN                            R12 22
      249 SETTABLEKS                       R12 R11 K53 ["TextSize"]
      251 GETUPVAL                         R12 0
      252 GETTABLEKS                       R12 R12 K0 ["props"]
      254 GETTABLEKS                       R12 R12 K59 ["Name"]
      256 SETTABLEKS                       R12 R11 K43 ["Text"]
      258 GETUPVAL                         R13 0
      259 GETTABLEKS                       R13 R13 K0 ["props"]
      261 GETTABLEKS                       R13 R13 K24 ["ZIndex"]
      263 ORK                              R12 R13 K22 [1]
      264 SETTABLEKS                       R12 R11 K24 ["ZIndex"]
      266 CALL                             R9 2 1
      267 SETTABLEKS                       R9 R8 K43 ["Text"]
      269 CALL                             R5 3 -1
      270 RETURN                           R5 -1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["createElement"]
        8 GETUPVAL                         R3 3
        9 DUPTABLE                         R4 K2 [{"render"}]
       10 SETTABLEKS                       R1 R4 K1 ["render"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDefaultButtonProps"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [pairs]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETTABLEKS                       R9 R0 K3 ["props"]
       13 GETTABLEKS                       R9 R9 K4 ["Style"]
       15 JUMPIFNOT                        R9 ; [+6]
       16 GETTABLEKS                       R9 R0 K3 ["props"]
       18 GETTABLEKS                       R9 R9 K4 ["Style"]
       20 GETTABLE                         R8 R9 R6
       21 JUMPIF                           R8 ; [+1]
       22 MOVE                             R8 R7
       23 SETTABLE                         R8 R2 R6
       24 FORGLOOP                         R3 2 ; [-14]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["Internal"]
       20 GETTABLEKS                       R2 R2 K7 ["Constants"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["Internal"]
       31 GETTABLEKS                       R3 R3 K8 ["Mouse"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K5 ["Internal"]
       42 GETTABLEKS                       R4 R4 K9 ["ThemeChangeListener"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K5 ["Internal"]
       53 GETTABLEKS                       R5 R5 K10 ["Theme"]
       55 CALL                             R4 1 1
       56 LOADNIL                          R5
       57 GETTABLEKS                       R6 R0 K11 ["PureComponent"]
       59 LOADK                            R8 K12 ["RoundTextButton"]
       60 NAMECALL                         R6 R6 K13 ["extend"]
       62 CALL                             R6 2 1
       63 DUPCLOSURE                       R7 K14 [PROTO_2]
       64 SETTABLEKS                       R7 R6 K15 ["init"]
       66 DUPCLOSURE                       R7 K16 [PROTO_3]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R7 R6 K17 ["mouseHoverChanged"]
       70 NEWCLOSURE                       R7 P2
       71 CAPTURE                          REF R5
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R7 R6 K18 ["render"]
       77 DUPCLOSURE                       R5 K19 [PROTO_9]
       78 CAPTURE                          VAL R4
       79 CLOSEUPVALS                      R5
       80 RETURN                           R6 1
