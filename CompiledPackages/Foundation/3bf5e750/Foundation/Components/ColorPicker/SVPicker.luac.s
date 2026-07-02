PROTO_0:
        0 GETIMPORT                        R1 K2 [Color3.fromHSV]
        2 MOVE                             R2 R0
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["calculateSVFromPosition"]
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R1 K2 ["AbsolutePosition"]
       11 GETTABLEKS                       R5 R1 K3 ["AbsoluteSize"]
       13 CALL                             R2 3 2
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromScale]
        4 MOVE                             R4 R1
        5 SUBRK                            R5 K3 [1] R2
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 DUPTABLE                         R4 K3 [{[1], ["Transparency"] = 0}]
        4 GETIMPORT                        R5 K5 [Color3.fromHSV]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K0 ["Color3"]
       12 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["hue"]
        2 GETTABLEKS                       R2 R0 K1 ["saturation"]
        4 GETTABLEKS                       R3 R0 K2 ["value"]
        6 GETTABLEKS                       R4 R0 K3 ["onChanged"]
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 DUPCLOSURE                       R8 K4 [PROTO_0]
       11 NAMECALL                         R6 R1 K5 ["map"]
       13 CALL                             R6 2 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["useRef"]
       17 LOADNIL                          R8
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          VAL R7
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R10 0 1
       28 MOVE                             R11 R4
       29 SETLIST                          R10 R11 1 [1]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       35 NEWCLOSURE                       R10 P2
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R11 0 1
       39 MOVE                             R12 R8
       40 SETLIST                          R11 R12 1 [1]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       46 NEWCLOSURE                       R11 P3
       47 CAPTURE                          VAL R8
       48 NEWTABLE                         R12 0 1
       50 MOVE                             R13 R8
       51 SETLIST                          R12 R13 1 [1]
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K8 ["createElement"]
       57 GETUPVAL                         R12 3
       58 GETUPVAL                         R13 4
       59 MOVE                             R14 R0
       60 DUPTABLE                         R15 K14 [{["tag"] = "size-full", ["ref"], ["ClipsDescendants"] = True}]
       61 SETTABLEKS                       R7 R15 K11 ["ref"]
       63 CALL                             R13 2 1
       64 DUPTABLE                         R14 K20 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K8 ["createElement"]
       68 LOADK                            R16 K21 ["UIDragDetector"]
       69 NEWTABLE                         R17 4 0
       71 GETIMPORT                        R18 K25 [Enum.UIDragDetectorDragStyle.Scriptable]
       73 SETTABLEKS                       R18 R17 K26 ["DragStyle"]
       75 GETUPVAL                         R18 1
       76 GETTABLEKS                       R18 R18 K27 ["Event"]
       78 GETTABLEKS                       R18 R18 K28 ["DragStart"]
       80 SETTABLE                         R9 R17 R18
       81 GETUPVAL                         R18 1
       82 GETTABLEKS                       R18 R18 K27 ["Event"]
       84 GETTABLEKS                       R18 R18 K29 ["DragContinue"]
       86 SETTABLE                         R10 R17 R18
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K15 ["DragDetector"]
       90 GETUPVAL                         R15 1
       91 GETTABLEKS                       R15 R15 K8 ["createElement"]
       93 LOADK                            R16 K30 ["Frame"]
       94 DUPTABLE                         R17 K37 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 1, ["BorderSizePixel"] = 0}]
       95 GETIMPORT                        R18 K40 [UDim2.fromScale]
       97 LOADN                            R19 1
       98 LOADN                            R20 1
       99 CALL                             R18 2 1
      100 SETTABLEKS                       R18 R17 K31 ["Size"]
      102 GETTABLEKS                       R18 R5 K41 ["Color"]
      104 GETTABLEKS                       R18 R18 K42 ["Extended"]
      106 GETTABLEKS                       R18 R18 K43 ["White"]
      108 GETTABLEKS                       R18 R18 K44 ["White_100"]
      110 GETTABLEKS                       R18 R18 K45 ["Color3"]
      112 SETTABLEKS                       R18 R17 K32 ["BackgroundColor3"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K16 ["Base"]
      117 GETUPVAL                         R15 1
      118 GETTABLEKS                       R15 R15 K8 ["createElement"]
      120 LOADK                            R16 K30 ["Frame"]
      121 DUPTABLE                         R17 K47 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0}]
      122 GETIMPORT                        R18 K40 [UDim2.fromScale]
      124 LOADN                            R19 1
      125 LOADN                            R20 1
      126 CALL                             R18 2 1
      127 SETTABLEKS                       R18 R17 K31 ["Size"]
      129 SETTABLEKS                       R6 R17 K32 ["BackgroundColor3"]
      131 DUPTABLE                         R18 K49 [{"Gradient"}]
      132 GETUPVAL                         R19 1
      133 GETTABLEKS                       R19 R19 K8 ["createElement"]
      135 LOADK                            R20 K50 ["UIGradient"]
      136 DUPTABLE                         R21 K52 [{"Transparency"}]
      137 GETIMPORT                        R22 K55 [NumberSequence.new]
      139 NEWTABLE                         R23 0 2
      141 GETIMPORT                        R24 K57 [NumberSequenceKeypoint.new]
      143 LOADN                            R25 0
      144 LOADN                            R26 1
      145 CALL                             R24 2 1
      146 GETIMPORT                        R25 K57 [NumberSequenceKeypoint.new]
      148 LOADN                            R26 1
      149 LOADN                            R27 0
      150 CALL                             R25 2 -1
      151 SETLIST                          R23 R24 -1 [1]
      153 CALL                             R22 1 1
      154 SETTABLEKS                       R22 R21 K51 ["Transparency"]
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K48 ["Gradient"]
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K17 ["Saturation"]
      162 GETUPVAL                         R15 1
      163 GETTABLEKS                       R15 R15 K8 ["createElement"]
      165 LOADK                            R16 K30 ["Frame"]
      166 DUPTABLE                         R17 K59 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 3, ["BorderSizePixel"] = 0}]
      167 GETIMPORT                        R18 K40 [UDim2.fromScale]
      169 LOADN                            R19 1
      170 LOADN                            R20 1
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K31 ["Size"]
      174 GETTABLEKS                       R18 R5 K41 ["Color"]
      176 GETTABLEKS                       R18 R18 K42 ["Extended"]
      178 GETTABLEKS                       R18 R18 K60 ["Black"]
      180 GETTABLEKS                       R18 R18 K61 ["Black_100"]
      182 GETTABLEKS                       R18 R18 K45 ["Color3"]
      184 SETTABLEKS                       R18 R17 K32 ["BackgroundColor3"]
      186 DUPTABLE                         R18 K49 [{"Gradient"}]
      187 GETUPVAL                         R19 1
      188 GETTABLEKS                       R19 R19 K8 ["createElement"]
      190 LOADK                            R20 K50 ["UIGradient"]
      191 DUPTABLE                         R21 K64 [{["Rotation"] = 90, ["Transparency"]}]
      192 GETIMPORT                        R22 K55 [NumberSequence.new]
      194 NEWTABLE                         R23 0 2
      196 GETIMPORT                        R24 K57 [NumberSequenceKeypoint.new]
      198 LOADN                            R25 0
      199 LOADN                            R26 1
      200 CALL                             R24 2 1
      201 GETIMPORT                        R25 K57 [NumberSequenceKeypoint.new]
      203 LOADN                            R26 1
      204 LOADN                            R27 0
      205 CALL                             R25 2 -1
      206 SETLIST                          R23 R24 -1 [1]
      208 CALL                             R22 1 1
      209 SETTABLEKS                       R22 R21 K51 ["Transparency"]
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K48 ["Gradient"]
      214 CALL                             R15 3 1
      215 SETTABLEKS                       R15 R14 K18 ["Value"]
      217 GETUPVAL                         R15 1
      218 GETTABLEKS                       R15 R15 K8 ["createElement"]
      220 GETUPVAL                         R16 5
      221 DUPTABLE                         R17 K72 [{["size"], ["AnchorPoint"], ["Position"], ["style"], ["stroke"], ["hasShadow"] = True, ["ZIndex"] = 4}]
      222 GETUPVAL                         R18 6
      223 GETTABLEKS                       R18 R18 K73 ["Large"]
      225 SETTABLEKS                       R18 R17 K65 ["size"]
      227 GETIMPORT                        R18 K75 [Vector2.new]
      229 LOADK                            R19 K76 [0.5]
      230 LOADK                            R20 K76 [0.5]
      231 CALL                             R18 2 1
      232 SETTABLEKS                       R18 R17 K66 ["AnchorPoint"]
      234 GETUPVAL                         R18 1
      235 GETTABLEKS                       R18 R18 K77 ["joinBindings"]
      237 NEWTABLE                         R19 0 2
      239 MOVE                             R20 R2
      240 MOVE                             R21 R3
      241 SETLIST                          R19 R20 2 [1]
      243 CALL                             R18 1 1
      244 DUPCLOSURE                       R20 K78 [PROTO_4]
      245 NAMECALL                         R18 R18 K5 ["map"]
      247 CALL                             R18 2 1
      248 SETTABLEKS                       R18 R17 K67 ["Position"]
      250 GETUPVAL                         R18 1
      251 GETTABLEKS                       R18 R18 K77 ["joinBindings"]
      253 NEWTABLE                         R19 0 3
      255 MOVE                             R20 R1
      256 MOVE                             R21 R2
      257 MOVE                             R22 R3
      258 SETLIST                          R19 R20 3 [1]
      260 CALL                             R18 1 1
      261 DUPCLOSURE                       R20 K79 [PROTO_5]
      262 NAMECALL                         R18 R18 K5 ["map"]
      264 CALL                             R18 2 1
      265 SETTABLEKS                       R18 R17 K68 ["style"]
      267 DUPTABLE                         R18 K81 [{"Color", "Thickness", "Transparency"}]
      268 GETTABLEKS                       R19 R5 K41 ["Color"]
      270 GETTABLEKS                       R19 R19 K82 ["System"]
      272 GETTABLEKS                       R19 R19 K83 ["Contrast"]
      274 GETTABLEKS                       R19 R19 K45 ["Color3"]
      276 SETTABLEKS                       R19 R18 K41 ["Color"]
      278 GETTABLEKS                       R19 R5 K84 ["Stroke"]
      280 GETTABLEKS                       R19 R19 K85 ["Thicker"]
      282 SETTABLEKS                       R19 R18 K80 ["Thickness"]
      284 GETTABLEKS                       R19 R5 K41 ["Color"]
      286 GETTABLEKS                       R19 R19 K82 ["System"]
      288 GETTABLEKS                       R19 R19 K83 ["Contrast"]
      290 GETTABLEKS                       R19 R19 K51 ["Transparency"]
      292 SETTABLEKS                       R19 R18 K51 ["Transparency"]
      294 SETTABLEKS                       R18 R17 K69 ["stroke"]
      296 CALL                             R15 2 1
      297 SETTABLEKS                       R15 R14 K19 ["Knob"]
      299 CALL                             R11 3 -1
      300 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Knob"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["ColorPicker"]
       41 GETTABLEKS                       R7 R7 K14 ["colorUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Providers"]
       48 GETTABLEKS                       R8 R8 K16 ["Style"]
       50 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Utility"]
       57 GETTABLEKS                       R9 R9 K19 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K20 ["Types"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K21 [PROTO_6]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 RETURN                           R10 1
