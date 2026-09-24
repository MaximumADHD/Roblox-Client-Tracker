PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["IsPlaying"]
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K3 ["OnPause"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["props"]
       23 GETTABLEKS                       R0 R0 K4 ["OnPlay"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClickPlayPause"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Scrubber"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 GETTABLEKS                       R2 R0 K2 ["Controls"]
        6 GETTABLEKS                       R2 R2 K1 ["Size"]
        8 GETIMPORT                        R3 K5 [UDim2.new]
       10 GETIMPORT                        R4 K7 [UDim.new]
       12 LOADN                            R5 1
       13 LOADN                            R6 0
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R6 R1 K8 ["Y"]
       17 GETTABLEKS                       R7 R2 K8 ["Y"]
       19 ADD                              R5 R6 R7
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        8 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
       10 GETTABLEKS                       R5 R1 K4 ["IsLoaded"]
       12 GETTABLEKS                       R6 R1 K5 ["IsPlaying"]
       14 GETTABLEKS                       R7 R1 K6 ["Position"]
       16 GETTABLEKS                       R8 R1 K7 ["TimeLength"]
       18 GETTABLEKS                       R9 R1 K8 ["CurrentTime"]
       20 GETTABLEKS                       R10 R1 K9 ["OnScrub"]
       22 NOT                              R11 R10
       23 JUMPIFNOT                        R6 ; [+5]
       24 GETTABLEKS                       R12 R2 K10 ["Controls"]
       26 GETTABLEKS                       R12 R12 K11 ["PauseButton"]
       28 JUMPIF                           R12 ; [+4]
       29 GETTABLEKS                       R12 R2 K10 ["Controls"]
       31 GETTABLEKS                       R12 R12 K12 ["PlayButton"]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K13 ["createElement"]
       36 GETUPVAL                         R14 1
       37 DUPTABLE                         R15 K15 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
       38 SETTABLEKS                       R3 R15 K2 ["AnchorPoint"]
       40 SETTABLEKS                       R4 R15 K3 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R15 K6 ["Position"]
       44 GETUPVAL                         R16 2
       45 GETTABLEKS                       R16 R16 K16 ["calculateSize"]
       47 MOVE                             R17 R2
       48 CALL                             R16 1 1
       49 SETTABLEKS                       R16 R15 K14 ["Size"]
       51 DUPTABLE                         R16 K18 [{"Scrubber", "Controls"}]
       52 GETUPVAL                         R17 0
       53 GETTABLEKS                       R17 R17 K13 ["createElement"]
       55 GETUPVAL                         R18 3
       56 DUPTABLE                         R19 K26 [{["Style"], ["Min"] = 0, ["Max"], ["Value"], ["OnValueChanged"], ["Disabled"]}]
       57 GETTABLEKS                       R20 R2 K17 ["Scrubber"]
       59 SETTABLEKS                       R20 R19 K19 ["Style"]
       61 SETTABLEKS                       R8 R19 K22 ["Max"]
       63 LOADN                            R22 0
       64 FASTCALL3                        MATH_CLAMP R9 R22 R8
       66 MOVE                             R21 R9
       67 MOVE                             R23 R8
       68 GETIMPORT                        R20 K29 [math.clamp]
       70 CALL                             R20 3 1
       71 SETTABLEKS                       R20 R19 K23 ["Value"]
       73 JUMPIFNOT                        R11 ; [+2]
       74 GETUPVAL                         R20 4
       75 JUMPIF                           R20 ; [+1]
       76 MOVE                             R20 R10
       77 SETTABLEKS                       R20 R19 K24 ["OnValueChanged"]
       79 NOT                              R21 R5
       80 OR                               R20 R21 R11
       81 SETTABLEKS                       R20 R19 K25 ["Disabled"]
       83 CALL                             R17 2 1
       84 SETTABLEKS                       R17 R16 K17 ["Scrubber"]
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R17 R17 K13 ["createElement"]
       89 GETUPVAL                         R18 1
       90 DUPTABLE                         R19 K31 [{"Position", "Size", "Padding"}]
       91 GETIMPORT                        R20 K34 [UDim2.new]
       93 GETIMPORT                        R21 K36 [UDim.new]
       95 LOADN                            R22 0
       96 LOADN                            R23 0
       97 CALL                             R21 2 1
       98 GETTABLEKS                       R22 R2 K17 ["Scrubber"]
      100 GETTABLEKS                       R22 R22 K14 ["Size"]
      102 GETTABLEKS                       R22 R22 K37 ["Y"]
      104 CALL                             R20 2 1
      105 SETTABLEKS                       R20 R19 K6 ["Position"]
      107 GETTABLEKS                       R20 R2 K10 ["Controls"]
      109 GETTABLEKS                       R20 R20 K14 ["Size"]
      111 SETTABLEKS                       R20 R19 K14 ["Size"]
      113 GETTABLEKS                       R20 R2 K10 ["Controls"]
      115 GETTABLEKS                       R20 R20 K30 ["Padding"]
      117 SETTABLEKS                       R20 R19 K30 ["Padding"]
      119 DUPTABLE                         R20 K41 [{"PlayOrPauseButton", "TimeLabel", "LoadingIndicator"}]
      120 GETUPVAL                         R21 0
      121 GETTABLEKS                       R21 R21 K13 ["createElement"]
      123 GETUPVAL                         R22 5
      124 DUPTABLE                         R23 K44 [{"OnClick", "Style", "StyleModifier"}]
      125 GETTABLEKS                       R24 R0 K45 ["onClickPlayPause"]
      127 SETTABLEKS                       R24 R23 K42 ["OnClick"]
      129 SETTABLEKS                       R12 R23 K19 ["Style"]
      131 JUMPIF                           R5 ; [+4]
      132 GETUPVAL                         R24 6
      133 GETTABLEKS                       R24 R24 K25 ["Disabled"]
      135 JUMPIF                           R24 ; [+1]
      136 LOADNIL                          R24
      137 SETTABLEKS                       R24 R23 K43 ["StyleModifier"]
      139 DUPTABLE                         R24 K47 [{"HoverArea"}]
      140 MOVE                             R25 R5
      141 JUMPIFNOT                        R25 ; [+6]
      142 GETUPVAL                         R25 0
      143 GETTABLEKS                       R25 R25 K13 ["createElement"]
      145 GETUPVAL                         R26 7
      146 DUPTABLE                         R27 K50 [{["Cursor"] = "PointingHand"}]
      147 CALL                             R25 2 1
      148 SETTABLEKS                       R25 R24 K46 ["HoverArea"]
      150 CALL                             R21 3 1
      151 SETTABLEKS                       R21 R20 K38 ["PlayOrPauseButton"]
      153 MOVE                             R21 R5
      154 JUMPIFNOT                        R21 ; [+57]
      155 GETUPVAL                         R21 0
      156 GETTABLEKS                       R21 R21 K13 ["createElement"]
      158 GETUPVAL                         R22 8
      159 DUPTABLE                         R23 K53 [{"AnchorPoint", "Position", "Size", "Text", "TextXAlignment"}]
      160 GETIMPORT                        R24 K55 [Vector2.new]
      162 LOADN                            R25 1
      163 LOADN                            R26 0
      164 CALL                             R24 2 1
      165 SETTABLEKS                       R24 R23 K2 ["AnchorPoint"]
      167 GETIMPORT                        R24 K34 [UDim2.new]
      169 LOADN                            R25 1
      170 LOADN                            R26 0
      171 LOADN                            R27 0
      172 LOADN                            R28 0
      173 CALL                             R24 4 1
      174 SETTABLEKS                       R24 R23 K6 ["Position"]
      176 GETIMPORT                        R24 K34 [UDim2.new]
      178 GETIMPORT                        R26 K36 [UDim.new]
      180 LOADN                            R27 1
      181 LOADN                            R28 0
      182 CALL                             R26 2 1
      183 GETTABLEKS                       R27 R12 K14 ["Size"]
      185 GETTABLEKS                       R27 R27 K56 ["X"]
      187 SUB                              R25 R26 R27
      188 GETIMPORT                        R26 K36 [UDim.new]
      190 LOADN                            R27 1
      191 LOADN                            R28 0
      192 CALL                             R26 2 -1
      193 CALL                             R24 -1 1
      194 SETTABLEKS                       R24 R23 K14 ["Size"]
      196 GETUPVAL                         R28 9
      197 MOVE                             R29 R9
      198 CALL                             R28 1 1
      199 MOVE                             R25 R28
      200 LOADK                            R26 K57 ["/"]
      201 GETUPVAL                         R27 9
      202 MOVE                             R28 R8
      203 CALL                             R27 1 1
      204 CONCAT                           R24 R25 R27
      205 SETTABLEKS                       R24 R23 K51 ["Text"]
      207 GETIMPORT                        R24 K60 [Enum.TextXAlignment.Right]
      209 SETTABLEKS                       R24 R23 K52 ["TextXAlignment"]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K39 ["TimeLabel"]
      214 NOT                              R21 R5
      215 JUMPIFNOT                        R21 ; [+31]
      216 GETUPVAL                         R21 0
      217 GETTABLEKS                       R21 R21 K13 ["createElement"]
      219 GETUPVAL                         R22 10
      220 DUPTABLE                         R23 K61 [{"AnchorPoint", "Position", "Size"}]
      221 GETIMPORT                        R24 K55 [Vector2.new]
      223 LOADN                            R25 1
      224 LOADN                            R26 0
      225 CALL                             R24 2 1
      226 SETTABLEKS                       R24 R23 K2 ["AnchorPoint"]
      228 GETIMPORT                        R24 K34 [UDim2.new]
      230 LOADN                            R25 1
      231 LOADN                            R26 0
      232 LOADN                            R27 0
      233 LOADN                            R28 0
      234 CALL                             R24 4 1
      235 SETTABLEKS                       R24 R23 K6 ["Position"]
      237 GETIMPORT                        R24 K34 [UDim2.new]
      239 LOADN                            R25 0
      240 LOADN                            R26 50
      241 LOADN                            R27 1
      242 LOADN                            R28 0
      243 CALL                             R24 4 1
      244 SETTABLEKS                       R24 R23 K14 ["Size"]
      246 CALL                             R21 2 1
      247 SETTABLEKS                       R21 R20 K40 ["LoadingIndicator"]
      249 CALL                             R17 3 1
      250 SETTABLEKS                       R17 R16 K10 ["Controls"]
      252 CALL                             R13 3 -1
      253 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["StyleModifier"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R6 K12 ["Typecheck"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Util"]
       43 GETTABLEKS                       R7 R7 K13 ["formatDuration"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K14 ["Components"]
       52 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Button"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K14 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["Container"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K2 ["UI"]
       68 GETTABLEKS                       R10 R10 K14 ["Components"]
       70 GETTABLEKS                       R10 R10 K17 ["HoverArea"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K2 ["UI"]
       77 GETTABLEKS                       R11 R11 K14 ["Components"]
       79 GETTABLEKS                       R11 R11 K18 ["LoadingIndicator"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K2 ["UI"]
       86 GETTABLEKS                       R12 R12 K14 ["Components"]
       88 GETTABLEKS                       R12 R12 K19 ["Slider"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETTABLEKS                       R13 R0 K2 ["UI"]
       95 GETTABLEKS                       R13 R13 K14 ["Components"]
       97 GETTABLEKS                       R13 R13 K20 ["TextLabel"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
      102 LOADK                            R15 K22 ["MediaPlayerControls"]
      103 NAMECALL                         R13 R13 K23 ["extend"]
      105 CALL                             R13 2 1
      106 GETTABLEKS                       R14 R5 K24 ["wrap"]
      108 MOVE                             R15 R13
      109 GETIMPORT                        R16 K1 [script]
      111 CALL                             R14 2 0
      112 DUPCLOSURE                       R14 K25 [PROTO_0]
      113 DUPCLOSURE                       R15 K26 [PROTO_2]
      114 SETTABLEKS                       R15 R13 K27 ["init"]
      116 DUPCLOSURE                       R15 K28 [PROTO_3]
      117 SETTABLEKS                       R15 R13 K29 ["calculateSize"]
      119 NEWCLOSURE                       R15 P3
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R8
      122 CAPTURE                          REF R13
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R15 R13 K30 ["render"]
      133 MOVE                             R15 R3
      134 DUPTABLE                         R16 K32 [{"Stylizer"}]
      135 GETTABLEKS                       R17 R2 K31 ["Stylizer"]
      137 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      139 CALL                             R15 1 1
      140 MOVE                             R16 R13
      141 CALL                             R15 1 1
      142 MOVE                             R13 R15
      143 CLOSEUPVALS                      R13
      144 RETURN                           R13 1
