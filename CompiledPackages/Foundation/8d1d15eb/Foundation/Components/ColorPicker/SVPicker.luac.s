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
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

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
       12 GETTABLEKS                       R6 R1 K4 ["onDragStarted"]
       14 GETTABLEKS                       R7 R1 K5 ["onDragEnded"]
       16 GETUPVAL                         R8 2
       17 CALL                             R8 0 1
       18 DUPCLOSURE                       R11 K6 [PROTO_0]
       19 NAMECALL                         R9 R2 K7 ["map"]
       21 CALL                             R9 2 1
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R10 R10 K8 ["useRef"]
       25 LOADNIL                          R11
       26 CALL                             R10 1 1
       27 GETUPVAL                         R11 3
       28 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       30 NEWCLOSURE                       R12 P1
       31 CAPTURE                          VAL R10
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R13 0 1
       36 MOVE                             R14 R5
       37 SETLIST                          R13 R14 1 [1]
       39 CALL                             R11 2 1
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       43 NEWCLOSURE                       R13 P2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R11
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R11
       49 MOVE                             R16 R6
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       56 NEWCLOSURE                       R14 P3
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R15 0 1
       60 MOVE                             R16 R11
       61 SETLIST                          R15 R16 1 [1]
       63 CALL                             R13 2 1
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K10 ["createElement"]
       67 GETUPVAL                         R15 5
       68 GETUPVAL                         R16 6
       69 MOVE                             R17 R1
       70 DUPTABLE                         R18 K15 [{["tag"], ["ref"], ["ClipsDescendants"] = True}]
       71 GETUPVAL                         R20 7
       72 GETTABLEKS                       R20 R20 K16 ["FoundationColorPickerDesignUpdate"]
       74 JUMPIFNOT                        R20 ; [+2]
       75 LOADK                            R19 K17 ["size-full radius-small"]
       76 JUMP                             ; [+1]
       77 LOADK                            R19 K18 ["size-full"]
       78 SETTABLEKS                       R19 R18 K11 ["tag"]
       80 SETTABLEKS                       R10 R18 K12 ["ref"]
       82 CALL                             R16 2 1
       83 DUPTABLE                         R17 K24 [{"DragDetector", "Base", "Saturation", "Value", "Knob"}]
       84 GETUPVAL                         R18 3
       85 GETTABLEKS                       R18 R18 K10 ["createElement"]
       87 LOADK                            R19 K25 ["UIDragDetector"]
       88 NEWTABLE                         R20 4 0
       90 GETIMPORT                        R21 K29 [Enum.UIDragDetectorDragStyle.Scriptable]
       92 SETTABLEKS                       R21 R20 K30 ["DragStyle"]
       94 GETUPVAL                         R21 3
       95 GETTABLEKS                       R21 R21 K31 ["Event"]
       97 GETTABLEKS                       R21 R21 K32 ["DragStart"]
       99 SETTABLE                         R12 R20 R21
      100 GETUPVAL                         R21 3
      101 GETTABLEKS                       R21 R21 K31 ["Event"]
      103 GETTABLEKS                       R21 R21 K33 ["DragContinue"]
      105 SETTABLE                         R13 R20 R21
      106 GETUPVAL                         R21 3
      107 GETTABLEKS                       R21 R21 K31 ["Event"]
      109 GETTABLEKS                       R21 R21 K34 ["DragEnd"]
      111 SETTABLE                         R7 R20 R21
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K19 ["DragDetector"]
      115 GETUPVAL                         R18 3
      116 GETTABLEKS                       R18 R18 K10 ["createElement"]
      118 LOADK                            R19 K35 ["Frame"]
      119 DUPTABLE                         R20 K42 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 1, ["BorderSizePixel"] = 0}]
      120 GETIMPORT                        R21 K45 [UDim2.fromScale]
      122 LOADN                            R22 1
      123 LOADN                            R23 1
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K36 ["Size"]
      127 GETTABLEKS                       R21 R8 K46 ["Color"]
      129 GETTABLEKS                       R21 R21 K47 ["Extended"]
      131 GETTABLEKS                       R21 R21 K48 ["White"]
      133 GETTABLEKS                       R21 R21 K49 ["White_100"]
      135 GETTABLEKS                       R21 R21 K50 ["Color3"]
      137 SETTABLEKS                       R21 R20 K37 ["BackgroundColor3"]
      139 CALL                             R18 2 1
      140 SETTABLEKS                       R18 R17 K20 ["Base"]
      142 GETUPVAL                         R18 3
      143 GETTABLEKS                       R18 R18 K10 ["createElement"]
      145 LOADK                            R19 K35 ["Frame"]
      146 DUPTABLE                         R20 K52 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0}]
      147 GETIMPORT                        R21 K45 [UDim2.fromScale]
      149 LOADN                            R22 1
      150 LOADN                            R23 1
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K36 ["Size"]
      154 SETTABLEKS                       R9 R20 K37 ["BackgroundColor3"]
      156 DUPTABLE                         R21 K54 [{"Gradient"}]
      157 GETUPVAL                         R22 3
      158 GETTABLEKS                       R22 R22 K10 ["createElement"]
      160 LOADK                            R23 K55 ["UIGradient"]
      161 DUPTABLE                         R24 K57 [{"Transparency"}]
      162 GETIMPORT                        R25 K60 [NumberSequence.new]
      164 NEWTABLE                         R26 0 2
      166 GETIMPORT                        R27 K62 [NumberSequenceKeypoint.new]
      168 LOADN                            R28 0
      169 LOADN                            R29 1
      170 CALL                             R27 2 1
      171 GETIMPORT                        R28 K62 [NumberSequenceKeypoint.new]
      173 LOADN                            R29 1
      174 LOADN                            R30 0
      175 CALL                             R28 2 -1
      176 SETLIST                          R26 R27 -1 [1]
      178 CALL                             R25 1 1
      179 SETTABLEKS                       R25 R24 K56 ["Transparency"]
      181 CALL                             R22 2 1
      182 SETTABLEKS                       R22 R21 K53 ["Gradient"]
      184 CALL                             R18 3 1
      185 SETTABLEKS                       R18 R17 K21 ["Saturation"]
      187 GETUPVAL                         R18 3
      188 GETTABLEKS                       R18 R18 K10 ["createElement"]
      190 LOADK                            R19 K35 ["Frame"]
      191 DUPTABLE                         R20 K64 [{["Size"], ["BackgroundColor3"], ["ZIndex"] = 3, ["BorderSizePixel"] = 0}]
      192 GETIMPORT                        R21 K45 [UDim2.fromScale]
      194 LOADN                            R22 1
      195 LOADN                            R23 1
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K36 ["Size"]
      199 GETTABLEKS                       R21 R8 K46 ["Color"]
      201 GETTABLEKS                       R21 R21 K47 ["Extended"]
      203 GETTABLEKS                       R21 R21 K65 ["Black"]
      205 GETTABLEKS                       R21 R21 K66 ["Black_100"]
      207 GETTABLEKS                       R21 R21 K50 ["Color3"]
      209 SETTABLEKS                       R21 R20 K37 ["BackgroundColor3"]
      211 DUPTABLE                         R21 K54 [{"Gradient"}]
      212 GETUPVAL                         R22 3
      213 GETTABLEKS                       R22 R22 K10 ["createElement"]
      215 LOADK                            R23 K55 ["UIGradient"]
      216 DUPTABLE                         R24 K69 [{["Rotation"] = 90, ["Transparency"]}]
      217 GETIMPORT                        R25 K60 [NumberSequence.new]
      219 NEWTABLE                         R26 0 2
      221 GETIMPORT                        R27 K62 [NumberSequenceKeypoint.new]
      223 LOADN                            R28 0
      224 LOADN                            R29 1
      225 CALL                             R27 2 1
      226 GETIMPORT                        R28 K62 [NumberSequenceKeypoint.new]
      228 LOADN                            R29 1
      229 LOADN                            R30 0
      230 CALL                             R28 2 -1
      231 SETLIST                          R26 R27 -1 [1]
      233 CALL                             R25 1 1
      234 SETTABLEKS                       R25 R24 K56 ["Transparency"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K53 ["Gradient"]
      239 CALL                             R18 3 1
      240 SETTABLEKS                       R18 R17 K22 ["Value"]
      242 GETTABLEKS                       R19 R1 K70 ["showSelectionKnob"]
      244 JUMPIFNOT                        R19 ; [+89]
      245 GETUPVAL                         R18 3
      246 GETTABLEKS                       R18 R18 K10 ["createElement"]
      248 GETUPVAL                         R19 8
      249 DUPTABLE                         R20 K78 [{["size"], ["AnchorPoint"], ["Position"], ["style"], ["stroke"], ["hasShadow"] = True, ["ZIndex"] = 4}]
      250 GETUPVAL                         R22 7
      251 GETTABLEKS                       R22 R22 K16 ["FoundationColorPickerDesignUpdate"]
      253 JUMPIFNOT                        R22 ; [+4]
      254 GETUPVAL                         R21 9
      255 GETTABLEKS                       R21 R21 K79 ["Medium"]
      257 JUMP                             ; [+3]
      258 GETUPVAL                         R21 9
      259 GETTABLEKS                       R21 R21 K80 ["Large"]
      261 SETTABLEKS                       R21 R20 K71 ["size"]
      263 GETIMPORT                        R21 K82 [Vector2.new]
      265 LOADK                            R22 K83 [0.5]
      266 LOADK                            R23 K83 [0.5]
      267 CALL                             R21 2 1
      268 SETTABLEKS                       R21 R20 K72 ["AnchorPoint"]
      270 GETUPVAL                         R21 3
      271 GETTABLEKS                       R21 R21 K84 ["joinBindings"]
      273 NEWTABLE                         R22 0 2
      275 MOVE                             R23 R3
      276 MOVE                             R24 R4
      277 SETLIST                          R22 R23 2 [1]
      279 CALL                             R21 1 1
      280 DUPCLOSURE                       R23 K85 [PROTO_4]
      281 NAMECALL                         R21 R21 K7 ["map"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K73 ["Position"]
      286 GETUPVAL                         R21 3
      287 GETTABLEKS                       R21 R21 K84 ["joinBindings"]
      289 NEWTABLE                         R22 0 3
      291 MOVE                             R23 R2
      292 MOVE                             R24 R3
      293 MOVE                             R25 R4
      294 SETLIST                          R22 R23 3 [1]
      296 CALL                             R21 1 1
      297 DUPCLOSURE                       R23 K86 [PROTO_5]
      298 NAMECALL                         R21 R21 K7 ["map"]
      300 CALL                             R21 2 1
      301 SETTABLEKS                       R21 R20 K74 ["style"]
      303 DUPTABLE                         R21 K88 [{"Color", "Thickness", "Transparency"}]
      304 GETTABLEKS                       R22 R8 K46 ["Color"]
      306 GETTABLEKS                       R22 R22 K89 ["System"]
      308 GETTABLEKS                       R22 R22 K90 ["Contrast"]
      310 GETTABLEKS                       R22 R22 K50 ["Color3"]
      312 SETTABLEKS                       R22 R21 K46 ["Color"]
      314 GETTABLEKS                       R22 R8 K91 ["Stroke"]
      316 GETTABLEKS                       R22 R22 K92 ["Thicker"]
      318 SETTABLEKS                       R22 R21 K87 ["Thickness"]
      320 GETTABLEKS                       R22 R8 K46 ["Color"]
      322 GETTABLEKS                       R22 R22 K89 ["System"]
      324 GETTABLEKS                       R22 R22 K90 ["Contrast"]
      326 GETTABLEKS                       R22 R22 K56 ["Transparency"]
      328 SETTABLEKS                       R22 R21 K56 ["Transparency"]
      330 SETTABLEKS                       R21 R20 K75 ["stroke"]
      332 CALL                             R18 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R18
      335 SETTABLEKS                       R18 R17 K23 ["Knob"]
      337 CALL                             R14 3 -1
      338 RETURN                           R14 -1

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
       69 GETTABLEKS                       R11 R0 K18 ["Utility"]
       71 GETTABLEKS                       R11 R11 K21 ["Flags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Components"]
       78 GETTABLEKS                       R12 R12 K22 ["Types"]
       80 CALL                             R11 1 1
       81 DUPTABLE                         R12 K25 [{["showSelectionKnob"] = True}]
       82 DUPCLOSURE                       R13 K26 [PROTO_6]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 RETURN                           R13 1
