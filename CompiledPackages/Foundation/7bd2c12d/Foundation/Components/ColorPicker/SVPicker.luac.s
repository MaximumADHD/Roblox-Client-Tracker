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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R1 K0 ["hue"]
        6 GETTABLEKS                       R3 R1 K1 ["saturation"]
        8 GETTABLEKS                       R4 R1 K2 ["value"]
       10 GETTABLEKS                       R5 R1 K3 ["onChanged"]
       12 GETUPVAL                         R6 2
       13 CALL                             R6 0 1
       14 DUPCLOSURE                       R9 K4 [PROTO_0]
       15 NAMECALL                         R7 R2 K5 ["map"]
       17 CALL                             R7 2 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K6 ["useRef"]
       21 LOADNIL                          R9
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       26 NEWCLOSURE                       R10 P1
       27 CAPTURE                          VAL R8
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R11 0 1
       32 MOVE                             R12 R5
       33 SETLIST                          R11 R12 1 [1]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       39 NEWCLOSURE                       R11 P2
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R9
       44 SETLIST                          R12 R13 1 [1]
       46 CALL                             R10 2 1
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       50 NEWCLOSURE                       R12 P3
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R13 0 1
       54 MOVE                             R14 R9
       55 SETLIST                          R13 R14 1 [1]
       57 CALL                             R11 2 1
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K8 ["createElement"]
       61 GETUPVAL                         R13 5
       62 GETUPVAL                         R14 6
       63 MOVE                             R15 R1
       64 DUPTABLE                         R16 K14 [{["tag"] = "size-full", ["ref"], ["ClipsDescendants"] = True}]
       65 SETTABLEKS                       R8 R16 K11 ["ref"]
       67 CALL                             R14 2 1
       68 DUPTABLE                         R15 K20 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       69 GETUPVAL                         R16 3
       70 GETTABLEKS                       R16 R16 K8 ["createElement"]
       72 LOADK                            R17 K21 ["UIDragDetector"]
       73 NEWTABLE                         R18 4 0
       75 GETIMPORT                        R19 K25 [Enum.UIDragDetectorDragStyle.Scriptable]
       77 SETTABLEKS                       R19 R18 K26 ["DragStyle"]
       79 GETUPVAL                         R19 3
       80 GETTABLEKS                       R19 R19 K27 ["Event"]
       82 GETTABLEKS                       R19 R19 K28 ["DragStart"]
       84 SETTABLE                         R10 R18 R19
       85 GETUPVAL                         R19 3
       86 GETTABLEKS                       R19 R19 K27 ["Event"]
       88 GETTABLEKS                       R19 R19 K29 ["DragContinue"]
       90 SETTABLE                         R11 R18 R19
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K15 ["DragDetector"]
       94 GETUPVAL                         R16 3
       95 GETTABLEKS                       R16 R16 K8 ["createElement"]
       97 LOADK                            R17 K30 ["Frame"]
       98 DUPTABLE                         R18 K37 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 1, ["BorderSizePixel"] = 0}]
       99 GETIMPORT                        R19 K40 [UDim2.fromScale]
      101 LOADN                            R20 1
      102 LOADN                            R21 1
      103 CALL                             R19 2 1
      104 SETTABLEKS                       R19 R18 K31 ["Size"]
      106 GETTABLEKS                       R19 R6 K41 ["Color"]
      108 GETTABLEKS                       R19 R19 K42 ["Extended"]
      110 GETTABLEKS                       R19 R19 K43 ["White"]
      112 GETTABLEKS                       R19 R19 K44 ["White_100"]
      114 GETTABLEKS                       R19 R19 K45 ["Color3"]
      116 SETTABLEKS                       R19 R18 K32 ["BackgroundColor3"]
      118 CALL                             R16 2 1
      119 SETTABLEKS                       R16 R15 K16 ["Base"]
      121 GETUPVAL                         R16 3
      122 GETTABLEKS                       R16 R16 K8 ["createElement"]
      124 LOADK                            R17 K30 ["Frame"]
      125 DUPTABLE                         R18 K47 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0}]
      126 GETIMPORT                        R19 K40 [UDim2.fromScale]
      128 LOADN                            R20 1
      129 LOADN                            R21 1
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K31 ["Size"]
      133 SETTABLEKS                       R7 R18 K32 ["BackgroundColor3"]
      135 DUPTABLE                         R19 K49 [{"Gradient"}]
      136 GETUPVAL                         R20 3
      137 GETTABLEKS                       R20 R20 K8 ["createElement"]
      139 LOADK                            R21 K50 ["UIGradient"]
      140 DUPTABLE                         R22 K52 [{"Transparency"}]
      141 GETIMPORT                        R23 K55 [NumberSequence.new]
      143 NEWTABLE                         R24 0 2
      145 GETIMPORT                        R25 K57 [NumberSequenceKeypoint.new]
      147 LOADN                            R26 0
      148 LOADN                            R27 1
      149 CALL                             R25 2 1
      150 GETIMPORT                        R26 K57 [NumberSequenceKeypoint.new]
      152 LOADN                            R27 1
      153 LOADN                            R28 0
      154 CALL                             R26 2 -1
      155 SETLIST                          R24 R25 -1 [1]
      157 CALL                             R23 1 1
      158 SETTABLEKS                       R23 R22 K51 ["Transparency"]
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K48 ["Gradient"]
      163 CALL                             R16 3 1
      164 SETTABLEKS                       R16 R15 K17 ["Saturation"]
      166 GETUPVAL                         R16 3
      167 GETTABLEKS                       R16 R16 K8 ["createElement"]
      169 LOADK                            R17 K30 ["Frame"]
      170 DUPTABLE                         R18 K59 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 3, ["BorderSizePixel"] = 0}]
      171 GETIMPORT                        R19 K40 [UDim2.fromScale]
      173 LOADN                            R20 1
      174 LOADN                            R21 1
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K31 ["Size"]
      178 GETTABLEKS                       R19 R6 K41 ["Color"]
      180 GETTABLEKS                       R19 R19 K42 ["Extended"]
      182 GETTABLEKS                       R19 R19 K60 ["Black"]
      184 GETTABLEKS                       R19 R19 K61 ["Black_100"]
      186 GETTABLEKS                       R19 R19 K45 ["Color3"]
      188 SETTABLEKS                       R19 R18 K32 ["BackgroundColor3"]
      190 DUPTABLE                         R19 K49 [{"Gradient"}]
      191 GETUPVAL                         R20 3
      192 GETTABLEKS                       R20 R20 K8 ["createElement"]
      194 LOADK                            R21 K50 ["UIGradient"]
      195 DUPTABLE                         R22 K64 [{["Rotation"] = 90, ["Transparency"]}]
      196 GETIMPORT                        R23 K55 [NumberSequence.new]
      198 NEWTABLE                         R24 0 2
      200 GETIMPORT                        R25 K57 [NumberSequenceKeypoint.new]
      202 LOADN                            R26 0
      203 LOADN                            R27 1
      204 CALL                             R25 2 1
      205 GETIMPORT                        R26 K57 [NumberSequenceKeypoint.new]
      207 LOADN                            R27 1
      208 LOADN                            R28 0
      209 CALL                             R26 2 -1
      210 SETLIST                          R24 R25 -1 [1]
      212 CALL                             R23 1 1
      213 SETTABLEKS                       R23 R22 K51 ["Transparency"]
      215 CALL                             R20 2 1
      216 SETTABLEKS                       R20 R19 K48 ["Gradient"]
      218 CALL                             R16 3 1
      219 SETTABLEKS                       R16 R15 K18 ["Value"]
      221 GETTABLEKS                       R17 R1 K65 ["showSelectionKnob"]
      223 JUMPIFNOT                        R17 ; [+81]
      224 GETUPVAL                         R16 3
      225 GETTABLEKS                       R16 R16 K8 ["createElement"]
      227 GETUPVAL                         R17 7
      228 DUPTABLE                         R18 K73 [{["size"], ["AnchorPoint"], ["Position"], ["style"], ["stroke"], ["hasShadow"] = True, ["ZIndex"] = 4}]
      229 GETUPVAL                         R19 8
      230 GETTABLEKS                       R19 R19 K74 ["Large"]
      232 SETTABLEKS                       R19 R18 K66 ["size"]
      234 GETIMPORT                        R19 K76 [Vector2.new]
      236 LOADK                            R20 K77 [0.5]
      237 LOADK                            R21 K77 [0.5]
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K67 ["AnchorPoint"]
      241 GETUPVAL                         R19 3
      242 GETTABLEKS                       R19 R19 K78 ["joinBindings"]
      244 NEWTABLE                         R20 0 2
      246 MOVE                             R21 R3
      247 MOVE                             R22 R4
      248 SETLIST                          R20 R21 2 [1]
      250 CALL                             R19 1 1
      251 DUPCLOSURE                       R21 K79 [PROTO_4]
      252 NAMECALL                         R19 R19 K5 ["map"]
      254 CALL                             R19 2 1
      255 SETTABLEKS                       R19 R18 K68 ["Position"]
      257 GETUPVAL                         R19 3
      258 GETTABLEKS                       R19 R19 K78 ["joinBindings"]
      260 NEWTABLE                         R20 0 3
      262 MOVE                             R21 R2
      263 MOVE                             R22 R3
      264 MOVE                             R23 R4
      265 SETLIST                          R20 R21 3 [1]
      267 CALL                             R19 1 1
      268 DUPCLOSURE                       R21 K80 [PROTO_5]
      269 NAMECALL                         R19 R19 K5 ["map"]
      271 CALL                             R19 2 1
      272 SETTABLEKS                       R19 R18 K69 ["style"]
      274 DUPTABLE                         R19 K82 [{"Color", "Thickness", "Transparency"}]
      275 GETTABLEKS                       R20 R6 K41 ["Color"]
      277 GETTABLEKS                       R20 R20 K83 ["System"]
      279 GETTABLEKS                       R20 R20 K84 ["Contrast"]
      281 GETTABLEKS                       R20 R20 K45 ["Color3"]
      283 SETTABLEKS                       R20 R19 K41 ["Color"]
      285 GETTABLEKS                       R20 R6 K85 ["Stroke"]
      287 GETTABLEKS                       R20 R20 K86 ["Thicker"]
      289 SETTABLEKS                       R20 R19 K81 ["Thickness"]
      291 GETTABLEKS                       R20 R6 K41 ["Color"]
      293 GETTABLEKS                       R20 R20 K83 ["System"]
      295 GETTABLEKS                       R20 R20 K84 ["Contrast"]
      297 GETTABLEKS                       R20 R20 K51 ["Transparency"]
      299 SETTABLEKS                       R20 R19 K51 ["Transparency"]
      301 SETTABLEKS                       R19 R18 K70 ["stroke"]
      303 CALL                             R16 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R16
      306 SETTABLEKS                       R16 R15 K19 ["Knob"]
      308 CALL                             R12 3 -1
      309 RETURN                           R12 -1

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
       62 GETTABLEKS                       R10 R0 K18 ["Utility"]
       64 GETTABLEKS                       R10 R10 K20 ["withDefaults"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K21 ["Types"]
       73 CALL                             R10 1 1
       74 DUPTABLE                         R11 K24 [{["showSelectionKnob"] = True}]
       75 DUPCLOSURE                       R12 K25 [PROTO_6]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 RETURN                           R12 1
