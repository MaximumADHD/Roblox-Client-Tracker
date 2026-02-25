PROTO_0:
        0 FASTCALL1                        MATH_LOG R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K3 [math.log]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [2.30258509299405]
        6 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R2 10
        1 FASTCALL2                        MATH_POW R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [math.pow]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        MATH_LOG R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K3 [math.log]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [2.30258509299405]
        6 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R2 10
        1 FASTCALL2                        MATH_POW R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [math.pow]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_4:
        0 ADDK                             R2 R0 K0 [0.1]
        1 FASTCALL1                        MATH_LOG R2 ; [+3]
        2 MOVE                             R4 R2
        3 GETIMPORT                        R3 K4 [math.log]
        5 CALL                             R3 1 1
        6 DIVK                             R1 R3 K1 [2.30258509299405]
        7 RETURN                           R1 1

PROTO_5:
        0 LOADN                            R3 10
        1 FASTCALL2                        MATH_POW R3 R0 ; [+4]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R2 K3 [math.pow]
        6 CALL                             R2 2 1
        7 SUBK                             R1 R2 K0 [0.1]
        8 RETURN                           R1 1

PROTO_6:
        0 ADDK                             R2 R0 K0 [1]
        1 FASTCALL1                        MATH_LOG R2 ; [+3]
        2 MOVE                             R4 R2
        3 GETIMPORT                        R3 K4 [math.log]
        5 CALL                             R3 1 1
        6 DIVK                             R1 R3 K1 [2.30258509299405]
        7 RETURN                           R1 1

PROTO_7:
        0 LOADN                            R3 10
        1 FASTCALL2                        MATH_POW R3 R0 ; [+4]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R2 K3 [math.pow]
        6 CALL                             R2 2 1
        7 SUBK                             R1 R2 K0 [1]
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetActiveControl"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["SetActiveControl"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWTABLE                         R3 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["SetActiveControl"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["DataHook"]
        2 GETTABLEKS                       R4 R0 K0 ["DataHook"]
        4 GETTABLEKS                       R3 R4 K1 ["instanceType"]
        6 JUMPIFEQKS                       R3 K2 ["AudioCompressor"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["Context"]
       14 GETTABLEKS                       R4 R5 K4 ["Consumer"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["Localization"]
       20 GETTABLEKS                       R5 R6 K6 ["Key"]
       22 GETTABLE                         R4 R3 R5
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 GETUPVAL                         R6 2
       27 LOADK                            R8 K7 ["Threshold"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R8
       31 NEWTABLE                         R8 0 1
       33 GETTABLEKS                       R9 R0 K8 ["SetActiveControl"]
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 2
       39 LOADK                            R9 K9 ["Ratio"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R9
       43 NEWTABLE                         R9 0 1
       45 GETTABLEKS                       R10 R0 K8 ["SetActiveControl"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 2
       51 LOADK                            R10 K10 ["Attack"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R10
       55 NEWTABLE                         R10 0 1
       57 GETTABLEKS                       R11 R0 K8 ["SetActiveControl"]
       59 SETLIST                          R10 R11 1 [1]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R9 2
       63 LOADK                            R11 K11 ["Release"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R11
       67 NEWTABLE                         R11 0 1
       69 GETTABLEKS                       R12 R0 K8 ["SetActiveControl"]
       71 SETLIST                          R11 R12 1 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 2
       75 LOADK                            R12 K12 ["MakeupGain"]
       76 NEWCLOSURE                       R11 P1
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R12
       79 NEWTABLE                         R12 0 1
       81 GETTABLEKS                       R13 R0 K8 ["SetActiveControl"]
       83 SETLIST                          R12 R13 1 [1]
       85 CALL                             R10 2 1
       86 GETUPVAL                         R11 2
       87 LOADK                            R13 K13 [""]
       88 NEWCLOSURE                       R12 P1
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R13
       91 NEWTABLE                         R13 0 1
       93 GETTABLEKS                       R14 R0 K8 ["SetActiveControl"]
       95 SETLIST                          R13 R14 1 [1]
       97 CALL                             R11 2 1
       98 GETUPVAL                         R13 3
       99 GETTABLEKS                       R12 R13 K14 ["createElement"]
      101 GETUPVAL                         R13 4
      102 NEWTABLE                         R14 2 0
      104 GETIMPORT                        R15 K17 [UDim2.fromScale]
      106 LOADN                            R16 1
      107 LOADN                            R17 1
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K18 ["Size"]
      111 GETUPVAL                         R16 3
      112 GETTABLEKS                       R15 R16 K19 ["Tag"]
      114 LOADK                            R16 K20 ["X-ColumnM"]
      115 SETTABLE                         R16 R14 R15
      116 DUPTABLE                         R15 K26 [{"ThresholdKnob", "RatioKnob", "AttackKnob", "ReleaseKnob", "MakeupGainKnob"}]
      117 GETUPVAL                         R17 3
      118 GETTABLEKS                       R16 R17 K14 ["createElement"]
      120 GETUPVAL                         R17 5
      121 DUPTABLE                         R18 K37 [{"Label", "Value", "Min", "Max", "Precision", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      122 LOADK                            R21 K27 ["Label"]
      123 JUMPIFNOT                        R2 ; [+2]
      124 LOADK                            R22 K7 ["Threshold"]
      125 JUMP                             ; [+1]
      126 LOADK                            R22 K38 ["MaxLevel"]
      127 NAMECALL                         R19 R4 K39 ["getText"]
      129 CALL                             R19 3 1
      130 SETTABLEKS                       R19 R18 K27 ["Label"]
      132 GETTABLEKS                       R19 R1 K40 ["threshold"]
      134 SETTABLEKS                       R19 R18 K28 ["Value"]
      136 JUMPIFNOT                        R2 ; [+2]
      137 LOADN                            R19 196
      138 JUMP                             ; [+1]
      139 LOADN                            R19 244
      140 SETTABLEKS                       R19 R18 K29 ["Min"]
      142 LOADN                            R19 0
      143 SETTABLEKS                       R19 R18 K30 ["Max"]
      145 JUMPIFNOT                        R2 ; [+2]
      146 LOADN                            R19 1
      147 JUMP                             ; [+1]
      148 LOADN                            R19 2
      149 SETTABLEKS                       R19 R18 K31 ["Precision"]
      151 LOADN                            R19 25
      152 SETTABLEKS                       R19 R18 K18 ["Size"]
      154 LOADN                            R19 70
      155 SETTABLEKS                       R19 R18 K32 ["DragRange"]
      157 GETUPVAL                         R19 6
      158 NAMECALL                         R19 R19 K41 ["getNextOrder"]
      160 CALL                             R19 1 1
      161 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      163 SETTABLEKS                       R6 R18 K34 ["OnInputBegan"]
      165 GETTABLEKS                       R19 R1 K42 ["setThreshold"]
      167 SETTABLEKS                       R19 R18 K35 ["OnInputChanged"]
      169 SETTABLEKS                       R11 R18 K36 ["OnInputEnded"]
      171 CALL                             R16 2 1
      172 SETTABLEKS                       R16 R15 K21 ["ThresholdKnob"]
      174 MOVE                             R16 R2
      175 JUMPIFNOT                        R16 ; [+49]
      176 GETUPVAL                         R17 3
      177 GETTABLEKS                       R16 R17 K14 ["createElement"]
      179 GETUPVAL                         R17 5
      180 DUPTABLE                         R18 K45 [{"Label", "Value", "Min", "Max", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      181 LOADK                            R21 K27 ["Label"]
      182 LOADK                            R22 K9 ["Ratio"]
      183 NAMECALL                         R19 R4 K39 ["getText"]
      185 CALL                             R19 3 1
      186 SETTABLEKS                       R19 R18 K27 ["Label"]
      188 GETTABLEKS                       R19 R1 K46 ["ratio"]
      190 SETTABLEKS                       R19 R18 K28 ["Value"]
      192 LOADN                            R19 1
      193 SETTABLEKS                       R19 R18 K29 ["Min"]
      195 LOADN                            R19 40
      196 SETTABLEKS                       R19 R18 K30 ["Max"]
      198 GETUPVAL                         R19 7
      199 SETTABLEKS                       R19 R18 K43 ["CurveFunction"]
      201 GETUPVAL                         R19 8
      202 SETTABLEKS                       R19 R18 K44 ["InverseCurveFunction"]
      204 LOADN                            R19 25
      205 SETTABLEKS                       R19 R18 K18 ["Size"]
      207 LOADN                            R19 70
      208 SETTABLEKS                       R19 R18 K32 ["DragRange"]
      210 GETUPVAL                         R19 6
      211 NAMECALL                         R19 R19 K41 ["getNextOrder"]
      213 CALL                             R19 1 1
      214 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      216 SETTABLEKS                       R7 R18 K34 ["OnInputBegan"]
      218 GETTABLEKS                       R19 R1 K47 ["setRatio"]
      220 SETTABLEKS                       R19 R18 K35 ["OnInputChanged"]
      222 SETTABLEKS                       R11 R18 K36 ["OnInputEnded"]
      224 CALL                             R16 2 1
      225 SETTABLEKS                       R16 R15 K22 ["RatioKnob"]
      227 MOVE                             R16 R2
      228 JUMPIFNOT                        R16 ; [+52]
      229 GETUPVAL                         R17 3
      230 GETTABLEKS                       R16 R17 K14 ["createElement"]
      232 GETUPVAL                         R17 5
      233 DUPTABLE                         R18 K48 [{"Label", "Value", "Min", "Max", "Precision", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      234 LOADK                            R21 K27 ["Label"]
      235 LOADK                            R22 K10 ["Attack"]
      236 NAMECALL                         R19 R4 K39 ["getText"]
      238 CALL                             R19 3 1
      239 SETTABLEKS                       R19 R18 K27 ["Label"]
      241 GETTABLEKS                       R19 R1 K49 ["attack"]
      243 SETTABLEKS                       R19 R18 K28 ["Value"]
      245 LOADK                            R19 K50 [0.0001]
      246 SETTABLEKS                       R19 R18 K29 ["Min"]
      248 LOADK                            R19 K51 [0.5]
      249 SETTABLEKS                       R19 R18 K30 ["Max"]
      251 LOADN                            R19 3
      252 SETTABLEKS                       R19 R18 K31 ["Precision"]
      254 GETUPVAL                         R19 9
      255 SETTABLEKS                       R19 R18 K43 ["CurveFunction"]
      257 GETUPVAL                         R19 10
      258 SETTABLEKS                       R19 R18 K44 ["InverseCurveFunction"]
      260 LOADN                            R19 25
      261 SETTABLEKS                       R19 R18 K18 ["Size"]
      263 LOADN                            R19 70
      264 SETTABLEKS                       R19 R18 K32 ["DragRange"]
      266 GETUPVAL                         R19 6
      267 NAMECALL                         R19 R19 K41 ["getNextOrder"]
      269 CALL                             R19 1 1
      270 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      272 SETTABLEKS                       R8 R18 K34 ["OnInputBegan"]
      274 GETTABLEKS                       R19 R1 K52 ["setAttack"]
      276 SETTABLEKS                       R19 R18 K35 ["OnInputChanged"]
      278 SETTABLEKS                       R11 R18 K36 ["OnInputEnded"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R15 K23 ["AttackKnob"]
      283 GETUPVAL                         R17 3
      284 GETTABLEKS                       R16 R17 K14 ["createElement"]
      286 GETUPVAL                         R17 5
      287 DUPTABLE                         R18 K48 [{"Label", "Value", "Min", "Max", "Precision", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      288 LOADK                            R21 K27 ["Label"]
      289 LOADK                            R22 K11 ["Release"]
      290 NAMECALL                         R19 R4 K39 ["getText"]
      292 CALL                             R19 3 1
      293 SETTABLEKS                       R19 R18 K27 ["Label"]
      295 GETTABLEKS                       R19 R1 K53 ["release"]
      297 SETTABLEKS                       R19 R18 K28 ["Value"]
      299 JUMPIFNOT                        R2 ; [+2]
      300 LOADK                            R19 K54 [0.01]
      301 JUMP                             ; [+1]
      302 LOADK                            R19 K55 [0.001]
      303 SETTABLEKS                       R19 R18 K29 ["Min"]
      305 JUMPIFNOT                        R2 ; [+2]
      306 LOADN                            R19 5
      307 JUMP                             ; [+1]
      308 LOADN                            R19 1
      309 SETTABLEKS                       R19 R18 K30 ["Max"]
      311 LOADN                            R19 3
      312 SETTABLEKS                       R19 R18 K31 ["Precision"]
      314 GETUPVAL                         R19 11
      315 SETTABLEKS                       R19 R18 K43 ["CurveFunction"]
      317 GETUPVAL                         R19 12
      318 SETTABLEKS                       R19 R18 K44 ["InverseCurveFunction"]
      320 LOADN                            R19 25
      321 SETTABLEKS                       R19 R18 K18 ["Size"]
      323 LOADN                            R19 70
      324 SETTABLEKS                       R19 R18 K32 ["DragRange"]
      326 GETUPVAL                         R19 6
      327 NAMECALL                         R19 R19 K41 ["getNextOrder"]
      329 CALL                             R19 1 1
      330 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      332 SETTABLEKS                       R9 R18 K34 ["OnInputBegan"]
      334 GETTABLEKS                       R19 R1 K56 ["setRelease"]
      336 SETTABLEKS                       R19 R18 K35 ["OnInputChanged"]
      338 SETTABLEKS                       R11 R18 K36 ["OnInputEnded"]
      340 CALL                             R16 2 1
      341 SETTABLEKS                       R16 R15 K24 ["ReleaseKnob"]
      343 MOVE                             R16 R2
      344 JUMPIFNOT                        R16 ; [+43]
      345 GETUPVAL                         R17 3
      346 GETTABLEKS                       R16 R17 K14 ["createElement"]
      348 GETUPVAL                         R17 5
      349 DUPTABLE                         R18 K57 [{"Label", "Value", "Min", "Max", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
      350 LOADK                            R21 K27 ["Label"]
      351 LOADK                            R22 K12 ["MakeupGain"]
      352 NAMECALL                         R19 R4 K39 ["getText"]
      354 CALL                             R19 3 1
      355 SETTABLEKS                       R19 R18 K27 ["Label"]
      357 GETTABLEKS                       R19 R1 K58 ["makeupGain"]
      359 SETTABLEKS                       R19 R18 K28 ["Value"]
      361 LOADN                            R19 226
      362 SETTABLEKS                       R19 R18 K29 ["Min"]
      364 LOADN                            R19 30
      365 SETTABLEKS                       R19 R18 K30 ["Max"]
      367 LOADN                            R19 25
      368 SETTABLEKS                       R19 R18 K18 ["Size"]
      370 LOADN                            R19 70
      371 SETTABLEKS                       R19 R18 K32 ["DragRange"]
      373 GETUPVAL                         R19 6
      374 NAMECALL                         R19 R19 K41 ["getNextOrder"]
      376 CALL                             R19 1 1
      377 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      379 SETTABLEKS                       R10 R18 K34 ["OnInputBegan"]
      381 GETTABLEKS                       R19 R1 K59 ["setMakeupGain"]
      383 SETTABLEKS                       R19 R18 K35 ["OnInputChanged"]
      385 SETTABLEKS                       R11 R18 K36 ["OnInputEnded"]
      387 CALL                             R16 2 1
      388 SETTABLEKS                       R16 R15 K25 ["MakeupGainKnob"]
      390 CALL                             R12 3 -1
      391 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioCompressorEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R4 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R2 K10 ["useContext"]
       20 GETIMPORT                        R5 K6 [require]
       22 GETTABLEKS                       R7 R1 K7 ["Packages"]
       24 GETTABLEKS                       R6 R7 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       29 GETTABLEKS                       R8 R5 K13 ["UI"]
       31 GETTABLEKS                       R7 R8 K14 ["Pane"]
       33 GETTABLEKS                       R9 R5 K15 ["Util"]
       35 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       37 GETTABLEKS                       R9 R8 K17 ["new"]
       39 CALL                             R9 0 1
       40 GETIMPORT                        R10 K6 [require]
       42 GETTABLEKS                       R11 R0 K18 ["Knob"]
       44 CALL                             R10 1 1
       45 GETIMPORT                        R11 K6 [require]
       47 GETTABLEKS                       R13 R1 K19 ["Src"]
       49 GETTABLEKS                       R12 R13 K20 ["Types"]
       51 CALL                             R11 1 1
       52 DUPCLOSURE                       R12 K21 [PROTO_0]
       53 DUPCLOSURE                       R13 K22 [PROTO_1]
       54 DUPCLOSURE                       R14 K23 [PROTO_2]
       55 DUPCLOSURE                       R15 K24 [PROTO_3]
       56 DUPCLOSURE                       R16 K25 [PROTO_4]
       57 DUPCLOSURE                       R17 K26 [PROTO_5]
       58 DUPCLOSURE                       R18 K27 [PROTO_6]
       59 DUPCLOSURE                       R19 K28 [PROTO_7]
       60 DUPCLOSURE                       R20 K29 [PROTO_10]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R15
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R17
       72 CAPTURE                          VAL R18
       73 CAPTURE                          VAL R19
       74 RETURN                           R20 1
