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
        5 SUBRK                            R5 R3 K2 [UDim2.fromScale]
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 DUPTABLE                         R4 K2 [{"Color3", "Transparency"}]
        4 GETIMPORT                        R5 K4 [Color3.fromHSV]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K0 ["Color3"]
       12 LOADN                            R5 0
       13 SETTABLEKS                       R5 R4 K1 ["Transparency"]
       15 RETURN                           R4 1

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
       60 DUPTABLE                         R15 K12 [{"tag", "ref", "ClipsDescendants"}]
       61 LOADK                            R16 K13 ["size-full"]
       62 SETTABLEKS                       R16 R15 K9 ["tag"]
       64 SETTABLEKS                       R7 R15 K10 ["ref"]
       66 LOADB                            R16 1
       67 SETTABLEKS                       R16 R15 K11 ["ClipsDescendants"]
       69 CALL                             R13 2 1
       70 DUPTABLE                         R14 K19 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K8 ["createElement"]
       74 LOADK                            R16 K20 ["UIDragDetector"]
       75 NEWTABLE                         R17 4 0
       77 GETIMPORT                        R18 K24 [Enum.UIDragDetectorDragStyle.Scriptable]
       79 SETTABLEKS                       R18 R17 K25 ["DragStyle"]
       81 GETUPVAL                         R18 1
       82 GETTABLEKS                       R18 R18 K26 ["Event"]
       84 GETTABLEKS                       R18 R18 K27 ["DragStart"]
       86 SETTABLE                         R9 R17 R18
       87 GETUPVAL                         R18 1
       88 GETTABLEKS                       R18 R18 K26 ["Event"]
       90 GETTABLEKS                       R18 R18 K28 ["DragContinue"]
       92 SETTABLE                         R10 R17 R18
       93 CALL                             R15 2 1
       94 SETTABLEKS                       R15 R14 K14 ["DragDetector"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K8 ["createElement"]
       99 LOADK                            R16 K29 ["Frame"]
      100 DUPTABLE                         R17 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      101 GETIMPORT                        R18 K37 [UDim2.fromScale]
      103 LOADN                            R19 1
      104 LOADN                            R20 1
      105 CALL                             R18 2 1
      106 SETTABLEKS                       R18 R17 K30 ["Size"]
      108 GETTABLEKS                       R18 R5 K38 ["Color"]
      110 GETTABLEKS                       R18 R18 K39 ["Extended"]
      112 GETTABLEKS                       R18 R18 K40 ["White"]
      114 GETTABLEKS                       R18 R18 K41 ["White_100"]
      116 GETTABLEKS                       R18 R18 K42 ["Color3"]
      118 SETTABLEKS                       R18 R17 K31 ["BackgroundColor3"]
      120 LOADN                            R18 1
      121 SETTABLEKS                       R18 R17 K32 ["ZIndex"]
      123 LOADN                            R18 0
      124 SETTABLEKS                       R18 R17 K33 ["BorderSizePixel"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K15 ["Base"]
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K8 ["createElement"]
      132 LOADK                            R16 K29 ["Frame"]
      133 DUPTABLE                         R17 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      134 GETIMPORT                        R18 K37 [UDim2.fromScale]
      136 LOADN                            R19 1
      137 LOADN                            R20 1
      138 CALL                             R18 2 1
      139 SETTABLEKS                       R18 R17 K30 ["Size"]
      141 SETTABLEKS                       R6 R17 K31 ["BackgroundColor3"]
      143 LOADN                            R18 2
      144 SETTABLEKS                       R18 R17 K32 ["ZIndex"]
      146 LOADN                            R18 0
      147 SETTABLEKS                       R18 R17 K33 ["BorderSizePixel"]
      149 DUPTABLE                         R18 K44 [{"Gradient"}]
      150 GETUPVAL                         R19 1
      151 GETTABLEKS                       R19 R19 K8 ["createElement"]
      153 LOADK                            R20 K45 ["UIGradient"]
      154 DUPTABLE                         R21 K47 [{"Transparency"}]
      155 GETIMPORT                        R22 K50 [NumberSequence.new]
      157 NEWTABLE                         R23 0 2
      159 GETIMPORT                        R24 K52 [NumberSequenceKeypoint.new]
      161 LOADN                            R25 0
      162 LOADN                            R26 1
      163 CALL                             R24 2 1
      164 GETIMPORT                        R25 K52 [NumberSequenceKeypoint.new]
      166 LOADN                            R26 1
      167 LOADN                            R27 0
      168 CALL                             R25 2 -1
      169 SETLIST                          R23 R24 -1 [1]
      171 CALL                             R22 1 1
      172 SETTABLEKS                       R22 R21 K46 ["Transparency"]
      174 CALL                             R19 2 1
      175 SETTABLEKS                       R19 R18 K43 ["Gradient"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K16 ["Saturation"]
      180 GETUPVAL                         R15 1
      181 GETTABLEKS                       R15 R15 K8 ["createElement"]
      183 LOADK                            R16 K29 ["Frame"]
      184 DUPTABLE                         R17 K34 [{"Size", "BackgroundColor3", "ZIndex", "BorderSizePixel"}]
      185 GETIMPORT                        R18 K37 [UDim2.fromScale]
      187 LOADN                            R19 1
      188 LOADN                            R20 1
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K30 ["Size"]
      192 GETTABLEKS                       R18 R5 K38 ["Color"]
      194 GETTABLEKS                       R18 R18 K39 ["Extended"]
      196 GETTABLEKS                       R18 R18 K53 ["Black"]
      198 GETTABLEKS                       R18 R18 K54 ["Black_100"]
      200 GETTABLEKS                       R18 R18 K42 ["Color3"]
      202 SETTABLEKS                       R18 R17 K31 ["BackgroundColor3"]
      204 LOADN                            R18 3
      205 SETTABLEKS                       R18 R17 K32 ["ZIndex"]
      207 LOADN                            R18 0
      208 SETTABLEKS                       R18 R17 K33 ["BorderSizePixel"]
      210 DUPTABLE                         R18 K44 [{"Gradient"}]
      211 GETUPVAL                         R19 1
      212 GETTABLEKS                       R19 R19 K8 ["createElement"]
      214 LOADK                            R20 K45 ["UIGradient"]
      215 DUPTABLE                         R21 K56 [{"Rotation", "Transparency"}]
      216 LOADN                            R22 90
      217 SETTABLEKS                       R22 R21 K55 ["Rotation"]
      219 GETIMPORT                        R22 K50 [NumberSequence.new]
      221 NEWTABLE                         R23 0 2
      223 GETIMPORT                        R24 K52 [NumberSequenceKeypoint.new]
      225 LOADN                            R25 0
      226 LOADN                            R26 1
      227 CALL                             R24 2 1
      228 GETIMPORT                        R25 K52 [NumberSequenceKeypoint.new]
      230 LOADN                            R26 1
      231 LOADN                            R27 0
      232 CALL                             R25 2 -1
      233 SETLIST                          R23 R24 -1 [1]
      235 CALL                             R22 1 1
      236 SETTABLEKS                       R22 R21 K46 ["Transparency"]
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K43 ["Gradient"]
      241 CALL                             R15 3 1
      242 SETTABLEKS                       R15 R14 K17 ["Value"]
      244 GETUPVAL                         R15 1
      245 GETTABLEKS                       R15 R15 K8 ["createElement"]
      247 GETUPVAL                         R16 5
      248 DUPTABLE                         R17 K63 [{"size", "AnchorPoint", "Position", "style", "stroke", "hasShadow", "ZIndex"}]
      249 GETUPVAL                         R18 6
      250 GETTABLEKS                       R18 R18 K64 ["Large"]
      252 SETTABLEKS                       R18 R17 K57 ["size"]
      254 GETIMPORT                        R18 K66 [Vector2.new]
      256 LOADK                            R19 K67 [0.5]
      257 LOADK                            R20 K67 [0.5]
      258 CALL                             R18 2 1
      259 SETTABLEKS                       R18 R17 K58 ["AnchorPoint"]
      261 GETUPVAL                         R18 1
      262 GETTABLEKS                       R18 R18 K68 ["joinBindings"]
      264 NEWTABLE                         R19 0 2
      266 MOVE                             R20 R2
      267 MOVE                             R21 R3
      268 SETLIST                          R19 R20 2 [1]
      270 CALL                             R18 1 1
      271 DUPCLOSURE                       R20 K69 [PROTO_4]
      272 NAMECALL                         R18 R18 K5 ["map"]
      274 CALL                             R18 2 1
      275 SETTABLEKS                       R18 R17 K59 ["Position"]
      277 GETUPVAL                         R18 1
      278 GETTABLEKS                       R18 R18 K68 ["joinBindings"]
      280 NEWTABLE                         R19 0 3
      282 MOVE                             R20 R1
      283 MOVE                             R21 R2
      284 MOVE                             R22 R3
      285 SETLIST                          R19 R20 3 [1]
      287 CALL                             R18 1 1
      288 DUPCLOSURE                       R20 K70 [PROTO_5]
      289 NAMECALL                         R18 R18 K5 ["map"]
      291 CALL                             R18 2 1
      292 SETTABLEKS                       R18 R17 K60 ["style"]
      294 DUPTABLE                         R18 K72 [{"Color", "Thickness", "Transparency"}]
      295 GETTABLEKS                       R19 R5 K38 ["Color"]
      297 GETTABLEKS                       R19 R19 K73 ["System"]
      299 GETTABLEKS                       R19 R19 K74 ["Contrast"]
      301 GETTABLEKS                       R19 R19 K42 ["Color3"]
      303 SETTABLEKS                       R19 R18 K38 ["Color"]
      305 GETTABLEKS                       R19 R5 K75 ["Stroke"]
      307 GETTABLEKS                       R19 R19 K76 ["Thicker"]
      309 SETTABLEKS                       R19 R18 K71 ["Thickness"]
      311 GETTABLEKS                       R19 R5 K38 ["Color"]
      313 GETTABLEKS                       R19 R19 K73 ["System"]
      315 GETTABLEKS                       R19 R19 K74 ["Contrast"]
      317 GETTABLEKS                       R19 R19 K46 ["Transparency"]
      319 SETTABLEKS                       R19 R18 K46 ["Transparency"]
      321 SETTABLEKS                       R18 R17 K61 ["stroke"]
      323 LOADB                            R18 1
      324 SETTABLEKS                       R18 R17 K62 ["hasShadow"]
      326 LOADN                            R18 4
      327 SETTABLEKS                       R18 R17 K32 ["ZIndex"]
      329 CALL                             R15 2 1
      330 SETTABLEKS                       R15 R14 K18 ["Knob"]
      332 CALL                             R11 3 -1
      333 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R5 K12 ["View"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Knob"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Enums"]
       41 GETTABLEKS                       R7 R7 K15 ["InputSize"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Utility"]
       48 GETTABLEKS                       R8 R8 K17 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Components"]
       55 GETTABLEKS                       R9 R9 K18 ["ColorPicker"]
       57 GETTABLEKS                       R9 R9 K19 ["colorUtils"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K11 ["Components"]
       64 GETTABLEKS                       R10 R10 K20 ["Types"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K21 [PROTO_6]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 RETURN                           R10 1
