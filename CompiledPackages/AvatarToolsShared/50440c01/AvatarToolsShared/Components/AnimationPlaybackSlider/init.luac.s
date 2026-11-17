PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnSliderPlayheadChanged"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onValueChanged"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TrackLength"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["TrackLength"]
        7 LOADN                            R2 0
        8 JUMPIFLT                         R2 R1 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["OnPlayPauseClicked"]
       16 GETUPVAL                         R3 1
       17 NOT                              R2 R3
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R4 R1 K3 ["Playhead"]
        6 ORK                              R3 R4 K2 [0]
        7 GETTABLEKS                       R4 R1 K4 ["IsPlaying"]
        9 GETTABLEKS                       R6 R1 K5 ["TrackLength"]
       11 ORK                              R5 R6 K2 [0]
       12 GETIMPORT                        R6 K8 [string.format]
       14 LOADK                            R7 K9 ["%.2f"]
       15 MOVE                             R8 R5
       16 CALL                             R6 2 1
       17 GETIMPORT                        R7 K8 [string.format]
       19 LOADK                            R8 K9 ["%.2f"]
       20 MOVE                             R9 R3
       21 CALL                             R7 2 1
       22 LOADN                            R9 0
       23 JUMPIFLE                         R5 R9 ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K10 ["new"]
       30 CALL                             R9 0 1
       31 GETTABLEKS                       R10 R1 K11 ["Stylizer"]
       33 GETTABLEKS                       R11 R10 K12 ["PlayImage"]
       35 GETTABLEKS                       R12 R10 K13 ["PauseImage"]
       37 GETTABLEKS                       R14 R1 K14 ["ShowTime"]
       39 JUMPIFNOTEQKNIL                  R14 ; [+3]
       41 LOADB                            R13 1
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R13 R1 K14 ["ShowTime"]
       45 JUMPIFNOT                        R13 ; [+3]
       46 GETTABLEKS                       R14 R10 K15 ["PlayTimeLabelWidth"]
       48 JUMP                             ; [+1]
       49 LOADN                            R14 0
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K16 ["createElement"]
       53 GETUPVAL                         R16 2
       54 DUPTABLE                         R17 K20 [{"Size", "Layout", "HorizontalAlignment", "Spacing"}]
       55 SETTABLEKS                       R2 R17 K1 ["Size"]
       57 GETIMPORT                        R18 K24 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R18 R17 K17 ["Layout"]
       61 GETIMPORT                        R18 K26 [Enum.HorizontalAlignment.Left]
       63 SETTABLEKS                       R18 R17 K18 ["HorizontalAlignment"]
       65 GETTABLEKS                       R18 R10 K27 ["Padding"]
       67 SETTABLEKS                       R18 R17 K19 ["Spacing"]
       69 DUPTABLE                         R18 K31 [{"PlayPauseButton", "ValueSlider", "PlayTimeLabel"}]
       70 GETUPVAL                         R19 1
       71 GETTABLEKS                       R19 R19 K16 ["createElement"]
       73 LOADK                            R20 K32 ["ImageButton"]
       74 NEWTABLE                         R21 16 0
       76 LOADN                            R22 1
       77 SETTABLEKS                       R22 R21 K33 ["BackgroundTransparency"]
       79 GETTABLEKS                       R22 R10 K34 ["BorderColor"]
       81 SETTABLEKS                       R22 R21 K35 ["BorderColor3"]
       83 GETIMPORT                        R22 K37 [Vector2.new]
       85 LOADN                            R23 0
       86 LOADK                            R24 K38 [0.5]
       87 CALL                             R22 2 1
       88 SETTABLEKS                       R22 R21 K39 ["AnchorPoint"]
       90 GETIMPORT                        R22 K41 [UDim2.new]
       92 LOADN                            R23 0
       93 LOADN                            R24 0
       94 LOADK                            R25 K38 [0.5]
       95 LOADN                            R26 0
       96 CALL                             R22 4 1
       97 SETTABLEKS                       R22 R21 K42 ["Position"]
       99 GETIMPORT                        R22 K41 [UDim2.new]
      101 LOADN                            R23 0
      102 GETTABLEKS                       R24 R10 K43 ["PlayButtonWidth"]
      104 LOADN                            R25 0
      105 GETTABLEKS                       R26 R10 K43 ["PlayButtonWidth"]
      107 CALL                             R22 4 1
      108 SETTABLEKS                       R22 R21 K1 ["Size"]
      110 JUMPIFNOT                        R4 ; [+2]
      111 MOVE                             R22 R12
      112 JUMPIF                           R22 ; [+1]
      113 MOVE                             R22 R11
      114 SETTABLEKS                       R22 R21 K44 ["Image"]
      116 LOADB                            R22 0
      117 SETTABLEKS                       R22 R21 K45 ["AutoButtonColor"]
      119 NAMECALL                         R22 R9 K46 ["getNextOrder"]
      121 CALL                             R22 1 1
      122 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      124 GETUPVAL                         R22 1
      125 GETTABLEKS                       R22 R22 K48 ["Event"]
      127 GETTABLEKS                       R22 R22 K49 ["Activated"]
      129 NEWCLOSURE                       R23 P0
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R4
      132 SETTABLE                         R23 R21 R22
      133 CALL                             R19 2 1
      134 SETTABLEKS                       R19 R18 K28 ["PlayPauseButton"]
      136 GETUPVAL                         R19 1
      137 GETTABLEKS                       R19 R19 K16 ["createElement"]
      139 GETUPVAL                         R20 3
      140 DUPTABLE                         R21 K55 [{["Disabled"], ["Min"] = 0, ["Max"], ["Value"], ["Size"], ["LayoutOrder"], ["OnValueChanged"]}]
      141 SETTABLEKS                       R8 R21 K50 ["Disabled"]
      143 SETTABLEKS                       R5 R21 K52 ["Max"]
      145 SETTABLEKS                       R3 R21 K53 ["Value"]
      147 GETIMPORT                        R22 K41 [UDim2.new]
      149 LOADN                            R23 1
      150 GETTABLEKS                       R27 R10 K43 ["PlayButtonWidth"]
      152 MINUS                            R26 R27
      153 SUB                              R25 R26 R14
      154 GETTABLEKS                       R26 R10 K27 ["Padding"]
      156 SUB                              R24 R25 R26
      157 LOADN                            R25 1
      158 LOADN                            R26 0
      159 CALL                             R22 4 1
      160 SETTABLEKS                       R22 R21 K1 ["Size"]
      162 NAMECALL                         R22 R9 K46 ["getNextOrder"]
      164 CALL                             R22 1 1
      165 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      167 GETTABLEKS                       R22 R0 K56 ["onValueChanged"]
      169 SETTABLEKS                       R22 R21 K54 ["OnValueChanged"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K29 ["ValueSlider"]
      174 JUMPIFNOT                        R13 ; [+36]
      175 GETUPVAL                         R19 1
      176 GETTABLEKS                       R19 R19 K16 ["createElement"]
      178 GETUPVAL                         R20 4
      179 DUPTABLE                         R21 K59 [{"Text", "TextColor", "Size", "LayoutOrder"}]
      180 MOVE                             R23 R7
      181 LOADK                            R24 K60 [" / "]
      182 MOVE                             R25 R6
      183 CONCAT                           R22 R23 R25
      184 SETTABLEKS                       R22 R21 K57 ["Text"]
      186 JUMPIFNOT                        R8 ; [+3]
      187 GETTABLEKS                       R22 R10 K61 ["TextDisabledColor"]
      189 JUMPIF                           R22 ; [+2]
      190 GETTABLEKS                       R22 R10 K58 ["TextColor"]
      192 SETTABLEKS                       R22 R21 K58 ["TextColor"]
      194 GETIMPORT                        R22 K41 [UDim2.new]
      196 LOADN                            R23 0
      197 GETTABLEKS                       R24 R10 K15 ["PlayTimeLabelWidth"]
      199 LOADN                            R25 1
      200 LOADN                            R26 0
      201 CALL                             R22 4 1
      202 SETTABLEKS                       R22 R21 K1 ["Size"]
      204 NAMECALL                         R22 R9 K46 ["getNextOrder"]
      206 CALL                             R22 1 1
      207 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      209 CALL                             R19 2 1
      210 JUMP                             ; [+1]
      211 LOADNIL                          R19
      212 SETTABLEKS                       R19 R18 K30 ["PlayTimeLabel"]
      214 CALL                             R15 3 -1
      215 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["Util"]
       25 GETTABLEKS                       R6 R5 K10 ["LayoutOrderIterator"]
       27 GETTABLEKS                       R7 R2 K11 ["UI"]
       29 GETTABLEKS                       R8 R7 K12 ["Slider"]
       31 GETTABLEKS                       R9 R7 K13 ["Pane"]
       33 GETTABLEKS                       R10 R7 K14 ["TextLabel"]
       35 GETTABLEKS                       R11 R1 K15 ["PureComponent"]
       37 LOADK                            R13 K16 ["AnimationPlaybackSlider"]
       38 NAMECALL                         R11 R11 K17 ["extend"]
       40 CALL                             R11 2 1
       41 GETTABLEKS                       R12 R5 K18 ["Typecheck"]
       43 GETTABLEKS                       R13 R12 K19 ["wrap"]
       45 MOVE                             R14 R11
       46 GETIMPORT                        R15 K1 [script]
       48 CALL                             R13 2 0
       49 DUPCLOSURE                       R13 K20 [PROTO_1]
       50 SETTABLEKS                       R13 R11 K21 ["init"]
       52 DUPCLOSURE                       R13 K22 [PROTO_3]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R13 R11 K23 ["render"]
       60 MOVE                             R13 R4
       61 DUPTABLE                         R14 K25 [{"Stylizer"}]
       62 GETTABLEKS                       R15 R3 K24 ["Stylizer"]
       64 SETTABLEKS                       R15 R14 K24 ["Stylizer"]
       66 CALL                             R13 1 1
       67 MOVE                             R14 R11
       68 CALL                             R13 1 1
       69 MOVE                             R11 R13
       70 RETURN                           R11 1
