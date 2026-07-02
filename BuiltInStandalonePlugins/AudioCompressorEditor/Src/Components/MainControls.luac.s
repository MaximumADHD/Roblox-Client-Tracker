PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+21]
        2 ORK                              R1 R1 K0 [1E-05]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 ["min was nil"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 FASTCALL2                        MATH_MAX R0 R1 ; [+5]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 GETIMPORT                        R4 K7 [math.max]
       16 CALL                             R4 2 1
       17 FASTCALL1                        MATH_LOG R4 ; [+2]
       18 GETIMPORT                        R3 K9 [math.log]
       20 CALL                             R3 1 1
       21 DIVK                             R2 R3 K4 [2.30258509299405]
       22 RETURN                           R2 1
       23 FASTCALL1                        MATH_LOG R0 ; [+3]
       24 MOVE                             R4 R0
       25 GETIMPORT                        R3 K9 [math.log]
       27 CALL                             R3 1 1
       28 DIVK                             R2 R3 K4 [2.30258509299405]
       29 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R2 10
        1 FASTCALL2                        MATH_POW R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [math.pow]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+21]
        3 ORK                              R2 R2 K0 [1E-05]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["min was nil"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 FASTCALL2                        MATH_MAX R0 R2 ; [+5]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R2
       15 GETIMPORT                        R4 K7 [math.max]
       17 CALL                             R4 2 1
       18 FASTCALL1                        MATH_LOG R4 ; [+2]
       19 GETIMPORT                        R3 K9 [math.log]
       21 CALL                             R3 1 1
       22 DIVK                             R1 R3 K4 [2.30258509299405]
       23 RETURN                           R1 1
       24 FASTCALL1                        MATH_LOG R0 ; [+3]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K9 [math.log]
       28 CALL                             R3 1 1
       29 DIVK                             R1 R3 K4 [2.30258509299405]
       30 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R2 10
        1 FASTCALL2                        MATH_POW R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [math.pow]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_4:
        0 ADDK                             R2 R0 K0 [0.1]
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+21]
        4 ORK                              R3 R3 K1 [1E-05]
        5 FASTCALL2K                       ASSERT R3 K2 ; [+5]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K2 ["min was nil"]
        9 GETIMPORT                        R4 K4 [assert]
       11 CALL                             R4 2 0
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+5]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 GETIMPORT                        R5 K8 [math.max]
       18 CALL                             R5 2 1
       19 FASTCALL1                        MATH_LOG R5 ; [+2]
       20 GETIMPORT                        R4 K10 [math.log]
       22 CALL                             R4 1 1
       23 DIVK                             R1 R4 K5 [2.30258509299405]
       24 RETURN                           R1 1
       25 FASTCALL1                        MATH_LOG R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K10 [math.log]
       29 CALL                             R4 1 1
       30 DIVK                             R1 R4 K5 [2.30258509299405]
       31 RETURN                           R1 1

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
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+21]
        4 ORK                              R3 R3 K1 [1E-05]
        5 FASTCALL2K                       ASSERT R3 K2 ; [+5]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K2 ["min was nil"]
        9 GETIMPORT                        R4 K4 [assert]
       11 CALL                             R4 2 0
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+5]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 GETIMPORT                        R5 K8 [math.max]
       18 CALL                             R5 2 1
       19 FASTCALL1                        MATH_LOG R5 ; [+2]
       20 GETIMPORT                        R4 K10 [math.log]
       22 CALL                             R4 1 1
       23 DIVK                             R1 R4 K5 [2.30258509299405]
       24 RETURN                           R1 1
       25 FASTCALL1                        MATH_LOG R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K10 [math.log]
       29 CALL                             R4 1 1
       30 DIVK                             R1 R4 K5 [2.30258509299405]
       31 RETURN                           R1 1

PROTO_7:
        0 LOADN                            R3 10
        1 FASTCALL2                        MATH_POW R3 R0 ; [+4]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R2 K3 [math.pow]
        6 CALL                             R2 2 1
        7 SUBK                             R1 R2 K0 [1]
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetActiveControl"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["SetActiveControl"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWTABLE                         R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["SetActiveControl"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["DataHook"]
        2 GETTABLEKS                       R3 R0 K0 ["DataHook"]
        4 GETTABLEKS                       R3 R3 K1 ["instanceType"]
        6 JUMPIFEQKS                       R3 K2 ["AudioCompressor"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["Context"]
       14 GETTABLEKS                       R4 R4 K4 ["Consumer"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["Localization"]
       20 GETTABLEKS                       R5 R5 K6 ["Key"]
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
       98 GETUPVAL                         R12 3
       99 GETTABLEKS                       R12 R12 K14 ["createElement"]
      101 GETUPVAL                         R13 4
      102 NEWTABLE                         R14 2 0
      104 GETIMPORT                        R15 K17 [UDim2.fromScale]
      106 LOADN                            R16 1
      107 LOADN                            R17 1
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K18 ["Size"]
      111 GETUPVAL                         R15 3
      112 GETTABLEKS                       R15 R15 K19 ["Tag"]
      114 LOADK                            R16 K20 ["X-ColumnM"]
      115 SETTABLE                         R16 R14 R15
      116 DUPTABLE                         R15 K26 [{"ThresholdKnob", "RatioKnob", "AttackKnob", "ReleaseKnob", "MakeupGainKnob"}]
      117 GETUPVAL                         R16 3
      118 GETTABLEKS                       R16 R16 K14 ["createElement"]
      120 GETUPVAL                         R17 5
      121 DUPTABLE                         R18 K40 [{["Label"], ["Value"], ["Min"], ["Max"] = 0, ["Precision"], ["Size"] = 25, ["DragRange"] = 70, ["LayoutOrder"], ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      122 LOADK                            R21 K27 ["Label"]
      123 JUMPIFNOT                        R2 ; [+2]
      124 LOADK                            R22 K7 ["Threshold"]
      125 JUMP                             ; [+1]
      126 LOADK                            R22 K41 ["MaxLevel"]
      127 NAMECALL                         R19 R4 K42 ["getText"]
      129 CALL                             R19 3 1
      130 SETTABLEKS                       R19 R18 K27 ["Label"]
      132 GETTABLEKS                       R19 R1 K43 ["threshold"]
      134 SETTABLEKS                       R19 R18 K28 ["Value"]
      136 JUMPIFNOT                        R2 ; [+2]
      137 LOADN                            R19 -60
      138 JUMP                             ; [+1]
      139 LOADN                            R19 -12
      140 SETTABLEKS                       R19 R18 K29 ["Min"]
      142 JUMPIFNOT                        R2 ; [+2]
      143 LOADN                            R19 1
      144 JUMP                             ; [+1]
      145 LOADN                            R19 2
      146 SETTABLEKS                       R19 R18 K32 ["Precision"]
      148 GETUPVAL                         R19 6
      149 NAMECALL                         R19 R19 K44 ["getNextOrder"]
      151 CALL                             R19 1 1
      152 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      154 SETTABLEKS                       R6 R18 K37 ["OnInputBegan"]
      156 GETTABLEKS                       R19 R1 K45 ["setThreshold"]
      158 SETTABLEKS                       R19 R18 K38 ["OnInputChanged"]
      160 SETTABLEKS                       R11 R18 K39 ["OnInputEnded"]
      162 CALL                             R16 2 1
      163 SETTABLEKS                       R16 R15 K21 ["ThresholdKnob"]
      165 MOVE                             R16 R2
      166 JUMPIFNOT                        R16 ; [+37]
      167 GETUPVAL                         R16 3
      168 GETTABLEKS                       R16 R16 K14 ["createElement"]
      170 GETUPVAL                         R17 5
      171 DUPTABLE                         R18 K50 [{["Label"], ["Value"], ["Min"] = 1, ["Max"] = 40, ["CurveFunction"], ["InverseCurveFunction"], ["Size"] = 25, ["DragRange"] = 70, ["LayoutOrder"], ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      172 LOADK                            R21 K27 ["Label"]
      173 LOADK                            R22 K9 ["Ratio"]
      174 NAMECALL                         R19 R4 K42 ["getText"]
      176 CALL                             R19 3 1
      177 SETTABLEKS                       R19 R18 K27 ["Label"]
      179 GETTABLEKS                       R19 R1 K51 ["ratio"]
      181 SETTABLEKS                       R19 R18 K28 ["Value"]
      183 GETUPVAL                         R19 7
      184 SETTABLEKS                       R19 R18 K48 ["CurveFunction"]
      186 GETUPVAL                         R19 8
      187 SETTABLEKS                       R19 R18 K49 ["InverseCurveFunction"]
      189 GETUPVAL                         R19 6
      190 NAMECALL                         R19 R19 K44 ["getNextOrder"]
      192 CALL                             R19 1 1
      193 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      195 SETTABLEKS                       R7 R18 K37 ["OnInputBegan"]
      197 GETTABLEKS                       R19 R1 K52 ["setRatio"]
      199 SETTABLEKS                       R19 R18 K38 ["OnInputChanged"]
      201 SETTABLEKS                       R11 R18 K39 ["OnInputEnded"]
      203 CALL                             R16 2 1
      204 SETTABLEKS                       R16 R15 K22 ["RatioKnob"]
      206 MOVE                             R16 R2
      207 JUMPIFNOT                        R16 ; [+37]
      208 GETUPVAL                         R16 3
      209 GETTABLEKS                       R16 R16 K14 ["createElement"]
      211 GETUPVAL                         R17 5
      212 DUPTABLE                         R18 K56 [{["Label"], ["Value"], ["Min"] = 0.0001, ["Max"] = 0.5, ["Precision"] = 3, ["CurveFunction"], ["InverseCurveFunction"], ["Size"] = 25, ["DragRange"] = 70, ["LayoutOrder"], ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      213 LOADK                            R21 K27 ["Label"]
      214 LOADK                            R22 K10 ["Attack"]
      215 NAMECALL                         R19 R4 K42 ["getText"]
      217 CALL                             R19 3 1
      218 SETTABLEKS                       R19 R18 K27 ["Label"]
      220 GETTABLEKS                       R19 R1 K57 ["attack"]
      222 SETTABLEKS                       R19 R18 K28 ["Value"]
      224 GETUPVAL                         R19 9
      225 SETTABLEKS                       R19 R18 K48 ["CurveFunction"]
      227 GETUPVAL                         R19 10
      228 SETTABLEKS                       R19 R18 K49 ["InverseCurveFunction"]
      230 GETUPVAL                         R19 6
      231 NAMECALL                         R19 R19 K44 ["getNextOrder"]
      233 CALL                             R19 1 1
      234 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      236 SETTABLEKS                       R8 R18 K37 ["OnInputBegan"]
      238 GETTABLEKS                       R19 R1 K58 ["setAttack"]
      240 SETTABLEKS                       R19 R18 K38 ["OnInputChanged"]
      242 SETTABLEKS                       R11 R18 K39 ["OnInputEnded"]
      244 CALL                             R16 2 1
      245 SETTABLEKS                       R16 R15 K23 ["AttackKnob"]
      247 GETUPVAL                         R16 3
      248 GETTABLEKS                       R16 R16 K14 ["createElement"]
      250 GETUPVAL                         R17 5
      251 DUPTABLE                         R18 K59 [{["Label"], ["Value"], ["Min"], ["Max"], ["Precision"] = 3, ["CurveFunction"], ["InverseCurveFunction"], ["Size"] = 25, ["DragRange"] = 70, ["LayoutOrder"], ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      252 LOADK                            R21 K27 ["Label"]
      253 LOADK                            R22 K11 ["Release"]
      254 NAMECALL                         R19 R4 K42 ["getText"]
      256 CALL                             R19 3 1
      257 SETTABLEKS                       R19 R18 K27 ["Label"]
      259 GETTABLEKS                       R19 R1 K60 ["release"]
      261 SETTABLEKS                       R19 R18 K28 ["Value"]
      263 JUMPIFNOT                        R2 ; [+2]
      264 LOADK                            R19 K61 [0.01]
      265 JUMP                             ; [+1]
      266 LOADK                            R19 K62 [0.001]
      267 SETTABLEKS                       R19 R18 K29 ["Min"]
      269 JUMPIFNOT                        R2 ; [+2]
      270 LOADN                            R19 5
      271 JUMP                             ; [+1]
      272 LOADN                            R19 1
      273 SETTABLEKS                       R19 R18 K30 ["Max"]
      275 GETUPVAL                         R19 11
      276 SETTABLEKS                       R19 R18 K48 ["CurveFunction"]
      278 GETUPVAL                         R19 12
      279 SETTABLEKS                       R19 R18 K49 ["InverseCurveFunction"]
      281 GETUPVAL                         R19 6
      282 NAMECALL                         R19 R19 K44 ["getNextOrder"]
      284 CALL                             R19 1 1
      285 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      287 SETTABLEKS                       R9 R18 K37 ["OnInputBegan"]
      289 GETTABLEKS                       R19 R1 K63 ["setRelease"]
      291 SETTABLEKS                       R19 R18 K38 ["OnInputChanged"]
      293 SETTABLEKS                       R11 R18 K39 ["OnInputEnded"]
      295 CALL                             R16 2 1
      296 SETTABLEKS                       R16 R15 K24 ["ReleaseKnob"]
      298 MOVE                             R16 R2
      299 JUMPIFNOT                        R16 ; [+31]
      300 GETUPVAL                         R16 3
      301 GETTABLEKS                       R16 R16 K14 ["createElement"]
      303 GETUPVAL                         R17 5
      304 DUPTABLE                         R18 K66 [{["Label"], ["Value"], ["Min"] = -30, ["Max"] = 30, ["Size"] = 25, ["DragRange"] = 70, ["LayoutOrder"], ["OnInputBegan"], ["OnInputChanged"], ["OnInputEnded"]}]
      305 LOADK                            R21 K27 ["Label"]
      306 LOADK                            R22 K12 ["MakeupGain"]
      307 NAMECALL                         R19 R4 K42 ["getText"]
      309 CALL                             R19 3 1
      310 SETTABLEKS                       R19 R18 K27 ["Label"]
      312 GETTABLEKS                       R19 R1 K67 ["makeupGain"]
      314 SETTABLEKS                       R19 R18 K28 ["Value"]
      316 GETUPVAL                         R19 6
      317 NAMECALL                         R19 R19 K44 ["getNextOrder"]
      319 CALL                             R19 1 1
      320 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      322 SETTABLEKS                       R10 R18 K37 ["OnInputBegan"]
      324 GETTABLEKS                       R19 R1 K68 ["setMakeupGain"]
      326 SETTABLEKS                       R19 R18 K38 ["OnInputChanged"]
      328 SETTABLEKS                       R11 R18 K39 ["OnInputEnded"]
      330 CALL                             R16 2 1
      331 SETTABLEKS                       R16 R15 K25 ["MakeupGainKnob"]
      333 CALL                             R12 3 -1
      334 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioCompressorEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R2 K10 ["useContext"]
       20 GETIMPORT                        R5 K6 [require]
       22 GETTABLEKS                       R6 R1 K7 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       29 GETTABLEKS                       R7 R5 K13 ["UI"]
       31 GETTABLEKS                       R7 R7 K14 ["Pane"]
       33 GETTABLEKS                       R8 R5 K15 ["Util"]
       35 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       37 GETTABLEKS                       R9 R8 K17 ["new"]
       39 CALL                             R9 0 1
       40 GETIMPORT                        R10 K6 [require]
       42 GETTABLEKS                       R11 R0 K18 ["Knob"]
       44 CALL                             R10 1 1
       45 GETIMPORT                        R11 K6 [require]
       47 GETTABLEKS                       R12 R1 K19 ["Src"]
       49 GETTABLEKS                       R12 R12 K20 ["Types"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K6 [require]
       54 GETTABLEKS                       R13 R1 K21 ["Bin"]
       56 GETTABLEKS                       R13 R13 K22 ["Common"]
       58 GETTABLEKS                       R13 R13 K23 ["defineLuaFlags"]
       60 CALL                             R12 1 1
       61 GETTABLEKS                       R13 R12 K24 ["getFFlagAudioCompressorEditorFixLogCurveInf"]
       63 CALL                             R13 0 1
       64 DUPCLOSURE                       R14 K25 [PROTO_0]
       65 CAPTURE                          VAL R13
       66 DUPCLOSURE                       R15 K26 [PROTO_1]
       67 DUPCLOSURE                       R16 K27 [PROTO_2]
       68 CAPTURE                          VAL R13
       69 DUPCLOSURE                       R17 K28 [PROTO_3]
       70 DUPCLOSURE                       R18 K29 [PROTO_4]
       71 CAPTURE                          VAL R13
       72 DUPCLOSURE                       R19 K30 [PROTO_5]
       73 DUPCLOSURE                       R20 K31 [PROTO_6]
       74 CAPTURE                          VAL R13
       75 DUPCLOSURE                       R21 K32 [PROTO_7]
       76 DUPCLOSURE                       R22 K33 [PROTO_10]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R18
       87 CAPTURE                          VAL R19
       88 CAPTURE                          VAL R20
       89 CAPTURE                          VAL R21
       90 RETURN                           R22 1
