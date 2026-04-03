PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["IsLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K2 ["IsPlaying"]
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["props"]
       16 GETTABLEKS                       R0 R1 K3 ["OnPause"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K0 ["props"]
       23 GETTABLEKS                       R0 R1 K4 ["OnPlay"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClickPlayPause"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Scrubber"]
        2 GETTABLEKS                       R1 R2 K1 ["Size"]
        4 GETTABLEKS                       R3 R0 K2 ["Controls"]
        6 GETTABLEKS                       R2 R3 K1 ["Size"]
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
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Stylizer"]
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
       24 GETTABLEKS                       R13 R2 K10 ["Controls"]
       26 GETTABLEKS                       R12 R13 K11 ["PauseButton"]
       28 JUMPIF                           R12 ; [+4]
       29 GETTABLEKS                       R13 R2 K10 ["Controls"]
       31 GETTABLEKS                       R12 R13 K12 ["PlayButton"]
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R13 R14 K13 ["createElement"]
       36 GETUPVAL                         R14 1
       37 DUPTABLE                         R15 K15 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
       38 SETTABLEKS                       R3 R15 K2 ["AnchorPoint"]
       40 SETTABLEKS                       R4 R15 K3 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R15 K6 ["Position"]
       44 GETUPVAL                         R17 2
       45 GETTABLEKS                       R16 R17 K16 ["calculateSize"]
       47 MOVE                             R17 R2
       48 CALL                             R16 1 1
       49 SETTABLEKS                       R16 R15 K14 ["Size"]
       51 DUPTABLE                         R16 K18 [{"Scrubber", "Controls"}]
       52 GETUPVAL                         R18 0
       53 GETTABLEKS                       R17 R18 K13 ["createElement"]
       55 GETUPVAL                         R18 3
       56 DUPTABLE                         R19 K25 [{"Style", "Min", "Max", "Value", "OnValueChanged", "Disabled"}]
       57 GETTABLEKS                       R20 R2 K17 ["Scrubber"]
       59 SETTABLEKS                       R20 R19 K19 ["Style"]
       61 LOADN                            R20 0
       62 SETTABLEKS                       R20 R19 K20 ["Min"]
       64 SETTABLEKS                       R8 R19 K21 ["Max"]
       66 LOADN                            R22 0
       67 FASTCALL3                        MATH_CLAMP R9 R22 R8
       69 MOVE                             R21 R9
       70 MOVE                             R23 R8
       71 GETIMPORT                        R20 K28 [math.clamp]
       73 CALL                             R20 3 1
       74 SETTABLEKS                       R20 R19 K22 ["Value"]
       76 JUMPIFNOT                        R11 ; [+2]
       77 GETUPVAL                         R20 4
       78 JUMPIF                           R20 ; [+1]
       79 MOVE                             R20 R10
       80 SETTABLEKS                       R20 R19 K23 ["OnValueChanged"]
       82 NOT                              R21 R5
       83 OR                               R20 R21 R11
       84 SETTABLEKS                       R20 R19 K24 ["Disabled"]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K17 ["Scrubber"]
       89 GETUPVAL                         R18 0
       90 GETTABLEKS                       R17 R18 K13 ["createElement"]
       92 GETUPVAL                         R18 1
       93 DUPTABLE                         R19 K30 [{"Position", "Size", "Padding"}]
       94 GETIMPORT                        R20 K33 [UDim2.new]
       96 GETIMPORT                        R21 K35 [UDim.new]
       98 LOADN                            R22 0
       99 LOADN                            R23 0
      100 CALL                             R21 2 1
      101 GETTABLEKS                       R24 R2 K17 ["Scrubber"]
      103 GETTABLEKS                       R23 R24 K14 ["Size"]
      105 GETTABLEKS                       R22 R23 K36 ["Y"]
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K6 ["Position"]
      110 GETTABLEKS                       R21 R2 K10 ["Controls"]
      112 GETTABLEKS                       R20 R21 K14 ["Size"]
      114 SETTABLEKS                       R20 R19 K14 ["Size"]
      116 GETTABLEKS                       R21 R2 K10 ["Controls"]
      118 GETTABLEKS                       R20 R21 K29 ["Padding"]
      120 SETTABLEKS                       R20 R19 K29 ["Padding"]
      122 DUPTABLE                         R20 K40 [{"PlayOrPauseButton", "TimeLabel", "LoadingIndicator"}]
      123 GETUPVAL                         R22 0
      124 GETTABLEKS                       R21 R22 K13 ["createElement"]
      126 GETUPVAL                         R22 5
      127 DUPTABLE                         R23 K43 [{"OnClick", "Style", "StyleModifier"}]
      128 GETTABLEKS                       R24 R0 K44 ["onClickPlayPause"]
      130 SETTABLEKS                       R24 R23 K41 ["OnClick"]
      132 SETTABLEKS                       R12 R23 K19 ["Style"]
      134 JUMPIF                           R5 ; [+4]
      135 GETUPVAL                         R25 6
      136 GETTABLEKS                       R24 R25 K24 ["Disabled"]
      138 JUMPIF                           R24 ; [+1]
      139 LOADNIL                          R24
      140 SETTABLEKS                       R24 R23 K42 ["StyleModifier"]
      142 DUPTABLE                         R24 K46 [{"HoverArea"}]
      143 MOVE                             R25 R5
      144 JUMPIFNOT                        R25 ; [+9]
      145 GETUPVAL                         R26 0
      146 GETTABLEKS                       R25 R26 K13 ["createElement"]
      148 GETUPVAL                         R26 7
      149 DUPTABLE                         R27 K48 [{"Cursor"}]
      150 LOADK                            R28 K49 ["PointingHand"]
      151 SETTABLEKS                       R28 R27 K47 ["Cursor"]
      153 CALL                             R25 2 1
      154 SETTABLEKS                       R25 R24 K45 ["HoverArea"]
      156 CALL                             R21 3 1
      157 SETTABLEKS                       R21 R20 K37 ["PlayOrPauseButton"]
      159 MOVE                             R21 R5
      160 JUMPIFNOT                        R21 ; [+57]
      161 GETUPVAL                         R22 0
      162 GETTABLEKS                       R21 R22 K13 ["createElement"]
      164 GETUPVAL                         R22 8
      165 DUPTABLE                         R23 K52 [{"AnchorPoint", "Position", "Size", "Text", "TextXAlignment"}]
      166 GETIMPORT                        R24 K54 [Vector2.new]
      168 LOADN                            R25 1
      169 LOADN                            R26 0
      170 CALL                             R24 2 1
      171 SETTABLEKS                       R24 R23 K2 ["AnchorPoint"]
      173 GETIMPORT                        R24 K33 [UDim2.new]
      175 LOADN                            R25 1
      176 LOADN                            R26 0
      177 LOADN                            R27 0
      178 LOADN                            R28 0
      179 CALL                             R24 4 1
      180 SETTABLEKS                       R24 R23 K6 ["Position"]
      182 GETIMPORT                        R24 K33 [UDim2.new]
      184 GETIMPORT                        R26 K35 [UDim.new]
      186 LOADN                            R27 1
      187 LOADN                            R28 0
      188 CALL                             R26 2 1
      189 GETTABLEKS                       R28 R12 K14 ["Size"]
      191 GETTABLEKS                       R27 R28 K55 ["X"]
      193 SUB                              R25 R26 R27
      194 GETIMPORT                        R26 K35 [UDim.new]
      196 LOADN                            R27 1
      197 LOADN                            R28 0
      198 CALL                             R26 2 -1
      199 CALL                             R24 -1 1
      200 SETTABLEKS                       R24 R23 K14 ["Size"]
      202 GETUPVAL                         R28 9
      203 MOVE                             R29 R9
      204 CALL                             R28 1 1
      205 MOVE                             R25 R28
      206 LOADK                            R26 K56 ["/"]
      207 GETUPVAL                         R27 9
      208 MOVE                             R28 R8
      209 CALL                             R27 1 1
      210 CONCAT                           R24 R25 R27
      211 SETTABLEKS                       R24 R23 K50 ["Text"]
      213 GETIMPORT                        R24 K59 [Enum.TextXAlignment.Right]
      215 SETTABLEKS                       R24 R23 K51 ["TextXAlignment"]
      217 CALL                             R21 2 1
      218 SETTABLEKS                       R21 R20 K38 ["TimeLabel"]
      220 NOT                              R21 R5
      221 JUMPIFNOT                        R21 ; [+31]
      222 GETUPVAL                         R22 0
      223 GETTABLEKS                       R21 R22 K13 ["createElement"]
      225 GETUPVAL                         R22 10
      226 DUPTABLE                         R23 K60 [{"AnchorPoint", "Position", "Size"}]
      227 GETIMPORT                        R24 K54 [Vector2.new]
      229 LOADN                            R25 1
      230 LOADN                            R26 0
      231 CALL                             R24 2 1
      232 SETTABLEKS                       R24 R23 K2 ["AnchorPoint"]
      234 GETIMPORT                        R24 K33 [UDim2.new]
      236 LOADN                            R25 1
      237 LOADN                            R26 0
      238 LOADN                            R27 0
      239 LOADN                            R28 0
      240 CALL                             R24 4 1
      241 SETTABLEKS                       R24 R23 K6 ["Position"]
      243 GETIMPORT                        R24 K33 [UDim2.new]
      245 LOADN                            R25 0
      246 LOADN                            R26 50
      247 LOADN                            R27 1
      248 LOADN                            R28 0
      249 CALL                             R24 4 1
      250 SETTABLEKS                       R24 R23 K14 ["Size"]
      252 CALL                             R21 2 1
      253 SETTABLEKS                       R21 R20 K39 ["LoadingIndicator"]
      255 CALL                             R17 3 1
      256 SETTABLEKS                       R17 R16 K10 ["Controls"]
      258 CALL                             R13 3 -1
      259 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["StyleModifier"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R7 K12 ["Typecheck"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Util"]
       43 GETTABLEKS                       R7 R8 K13 ["formatDuration"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETTABLEKS                       R9 R10 K14 ["Components"]
       52 GETTABLEKS                       R8 R9 K15 ["DEPRECATED_Button"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R11 R0 K2 ["UI"]
       59 GETTABLEKS                       R10 R11 K14 ["Components"]
       61 GETTABLEKS                       R9 R10 K16 ["Container"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R12 R0 K2 ["UI"]
       68 GETTABLEKS                       R11 R12 K14 ["Components"]
       70 GETTABLEKS                       R10 R11 K17 ["HoverArea"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R13 R0 K2 ["UI"]
       77 GETTABLEKS                       R12 R13 K14 ["Components"]
       79 GETTABLEKS                       R11 R12 K18 ["LoadingIndicator"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R14 R0 K2 ["UI"]
       86 GETTABLEKS                       R13 R14 K14 ["Components"]
       88 GETTABLEKS                       R12 R13 K19 ["Slider"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K6 [require]
       93 GETTABLEKS                       R15 R0 K2 ["UI"]
       95 GETTABLEKS                       R14 R15 K14 ["Components"]
       97 GETTABLEKS                       R13 R14 K20 ["TextLabel"]
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
