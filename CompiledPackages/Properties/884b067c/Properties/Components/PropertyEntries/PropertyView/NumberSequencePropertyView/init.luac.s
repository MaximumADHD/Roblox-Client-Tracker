PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["parts"]
        7 GETTABLEKS                       R1 R1 K2 ["value"]
        9 GETTABLEKS                       R2 R1 K3 ["multiple"]
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETTABLEKS                       R2 R1 K2 ["value"]
       14 JUMPIFNOTEQKNIL                  R2 ; [+7]
       16 GETIMPORT                        R2 K6 [NumberSequence.new]
       18 LOADN                            R3 0
       19 LOADN                            R4 0
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETTABLEKS                       R2 R1 K2 ["value"]
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["parts"]
        7 GETTABLEKS                       R1 R1 K2 ["value"]
        9 GETTABLEKS                       R2 R1 K3 ["multiple"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R3 R1 K2 ["value"]
       14 JUMPIFEQKNIL                     R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromUnorderedKeypoints"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K5 [NumberSequence.new]
       10 MOVE                             R2 R0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["updateKeypoints"]
       16 GETTABLEKS                       R3 R1 K7 ["Keypoints"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 2
        2 JUMPIFNOTLT                      R1 R2 ; [+3]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K3 [{[1], ["multiple"] = False}]
        7 GETTABLEN                        R2 R0 1
        8 GETTABLEKS                       R2 R2 K4 ["Value"]
       10 SETTABLEKS                       R2 R1 K0 ["value"]
       12 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 GETIMPORT                        R3 K3 [Vector2.new]
        6 LOADN                            R4 0
        7 GETUPVAL                         R6 2
        8 GETUPVAL                         R7 3
        9 ADD                              R5 R6 R7
       10 CALL                             R3 2 1
       11 ADD                              R1 R2 R3
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 GETIMPORT                        R1 K3 [Vector2.new]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K4 ["EditorMinWidth"]
       19 GETUPVAL                         R5 5
       20 GETTABLEKS                       R5 R5 K5 ["EditorMinHeight"]
       22 GETUPVAL                         R6 2
       23 ADD                              R4 R5 R6
       24 GETUPVAL                         R5 3
       25 ADD                              R3 R4 R5
       26 CALL                             R1 2 -1
       27 CALL                             R0 -1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 LOADN                            R4 0
        5 GETUPVAL                         R6 0
        6 GETUPVAL                         R7 1
        7 ADD                              R5 R6 R7
        8 CALL                             R3 2 1
        9 SUB                              R1 R2 R3
       10 GETUPVAL                         R2 2
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["open"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K1 ["getValue"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K2 ["value"]
       14 JUMPIFEQKNIL                     R1 ; [+14]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["beginEditingAsync"]
       19 CALL                             R2 0 0
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K4 ["finishEditing"]
       26 GETIMPORT                        R3 K8 [Enum.FinishRecordingOperation.Commit]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K9 ["close"]
       32 CALL                             R2 0 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["setPart"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R4 0 1
       19 GETTABLEKS                       R5 R0 K2 ["finishEditing"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R5 0 1
       32 GETTABLEKS                       R6 R0 K4 ["getInfo"]
       34 SETLIST                          R5 R6 1 [1]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 1
       45 GETTABLEKS                       R7 R0 K4 ["getInfo"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       53 MOVE                             R6 R4
       54 CALL                             R5 1 1
       55 GETUPVAL                         R6 3
       56 DUPTABLE                         R7 K8 [{"NumberSequence", "beginEditingAsync", "setPart", "finishEditing"}]
       57 SETTABLEKS                       R3 R7 K6 ["NumberSequence"]
       59 GETTABLEKS                       R9 R0 K7 ["beginEditingAsync"]
       61 SETTABLEKS                       R9 R7 K7 ["beginEditingAsync"]
       63 SETTABLEKS                       R1 R7 K1 ["setPart"]
       65 SETTABLEKS                       R2 R7 K2 ["finishEditing"]
       67 CALL                             R6 1 3
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       71 NEWCLOSURE                       R10 P4
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R6
       74 NEWTABLE                         R11 0 1
       76 MOVE                             R12 R6
       77 SETLIST                          R11 R12 1 [1]
       79 CALL                             R9 2 1
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R10 R10 K9 ["Bindings"]
       83 GETTABLEKS                       R10 R10 K10 ["map"]
       85 MOVE                             R11 R7
       86 DUPCLOSURE                       R12 K11 [PROTO_7]
       87 CAPTURE                          UPVAL U4
       88 CALL                             R10 2 1
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K3 ["useMemo"]
       92 DUPCLOSURE                       R12 K12 [PROTO_8]
       93 CAPTURE                          UPVAL U1
       94 NEWTABLE                         R13 0 0
       96 CALL                             R11 2 2
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K5 ["useSignalState"]
      100 MOVE                             R14 R11
      101 CALL                             R13 1 1
      102 LOADB                            R14 0
      103 LENGTH                           R15 R9
      104 JUMPIFNOTEQKN                    R15 K13 [2] ; [+11]
      106 GETTABLEN                        R15 R9 1
      107 GETTABLEKS                       R15 R15 K14 ["Value"]
      109 GETTABLEN                        R16 R9 2
      110 GETTABLEKS                       R16 R16 K14 ["Value"]
      112 JUMPIFEQ                         R15 R16 ; [+2]
      114 LOADB                            R14 0 +1
      115 LOADB                            R14 1
      116 MOVE                             R15 R13
      117 JUMPIF                           R15 ; [+3]
      118 NOT                              R15 R14
      119 JUMPIF                           R15 ; [+1]
      120 MOVE                             R15 R5
      121 GETUPVAL                         R16 0
      122 GETTABLEKS                       R16 R16 K0 ["useCallback"]
      124 NEWCLOSURE                       R17 P7
      125 CAPTURE                          VAL R8
      126 NEWTABLE                         R18 0 1
      128 GETTABLEKS                       R19 R8 K15 ["updateKeypoints"]
      130 SETLIST                          R18 R19 1 [1]
      132 CALL                             R16 2 1
      133 GETUPVAL                         R17 5
      134 GETTABLEKS                       R17 R17 K9 ["Bindings"]
      136 GETTABLEKS                       R17 R17 K10 ["map"]
      138 MOVE                             R18 R10
      139 DUPCLOSURE                       R19 K16 [PROTO_10]
      140 CAPTURE                          UPVAL U6
      141 CALL                             R17 2 1
      142 GETUPVAL                         R18 7
      143 CALL                             R18 0 1
      144 GETTABLEKS                       R19 R18 K6 ["NumberSequence"]
      146 GETTABLEKS                       R22 R19 K17 ["EditorYPadding"]
      148 MULK                             R21 R22 K13 [2]
      149 GETTABLEKS                       R22 R19 K18 ["EditorFillPadding"]
      151 ADD                              R20 R21 R22
      152 GETUPVAL                         R21 8
      153 MOVE                             R22 R18
      154 LENGTH                           R23 R6
      155 GETTABLEKS                       R24 R19 K19 ["MaxRows"]
      157 CALL                             R21 3 1
      158 GETUPVAL                         R22 0
      159 GETTABLEKS                       R22 R22 K20 ["useState"]
      161 GETTABLEKS                       R24 R19 K21 ["EditorInitialSize"]
      163 GETIMPORT                        R25 K24 [Vector2.new]
      165 LOADN                            R26 0
      166 ADD                              R27 R20 R21
      167 CALL                             R25 2 1
      168 ADD                              R23 R24 R25
      169 CALL                             R22 1 2
      170 GETUPVAL                         R24 0
      171 GETTABLEKS                       R24 R24 K20 ["useState"]
      173 GETIMPORT                        R25 K24 [Vector2.new]
      175 GETTABLEKS                       R26 R19 K25 ["EditorMinWidth"]
      177 GETTABLEKS                       R29 R19 K26 ["EditorMinHeight"]
      179 ADD                              R28 R29 R20
      180 ADD                              R27 R28 R21
      181 CALL                             R25 2 -1
      182 CALL                             R24 -1 2
      183 GETUPVAL                         R26 0
      184 GETTABLEKS                       R26 R26 K20 ["useState"]
      186 GETTABLEKS                       R27 R19 K21 ["EditorInitialSize"]
      188 CALL                             R26 1 2
      189 GETUPVAL                         R28 5
      190 GETTABLEKS                       R28 R28 K27 ["useRefToState"]
      192 MOVE                             R29 R26
      193 CALL                             R28 1 1
      194 GETUPVAL                         R29 0
      195 GETTABLEKS                       R29 R29 K28 ["useEffect"]
      197 NEWCLOSURE                       R30 P9
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R19
      204 NEWTABLE                         R31 0 3
      206 MOVE                             R32 R19
      207 MOVE                             R33 R20
      208 MOVE                             R34 R21
      209 SETLIST                          R31 R32 3 [1]
      211 CALL                             R29 2 0
      212 GETTABLEKS                       R31 R0 K29 ["specializedEditingUtils"]
      214 GETTABLEKS                       R31 R31 K30 ["usePropertyBoundWindow"]
      216 JUMPIFNOTEQKNIL                  R31 ; [+2]
      218 LOADB                            R30 0 +1
      219 LOADB                            R30 1
      220 FASTCALL2K                       ASSERT R30 K31 ; [+4]
      222 LOADK                            R31 K31 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
      223 GETIMPORT                        R29 K33 [assert]
      225 CALL                             R29 2 0
      226 GETTABLEKS                       R29 R0 K29 ["specializedEditingUtils"]
      228 GETTABLEKS                       R29 R29 K30 ["usePropertyBoundWindow"]
      230 DUPTABLE                         R30 K38 [{"Contents", "Size", "MinSize", "onStateChanged"}]
      231 GETUPVAL                         R31 0
      232 GETTABLEKS                       R31 R31 K39 ["createElement"]
      234 GETUPVAL                         R32 9
      235 DUPTABLE                         R33 K43 [{["tag"] = "size-full bg-surface-200", ["onAbsoluteSizeChanged"]}]
      236 NEWCLOSURE                       R34 P10
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R27
      241 SETTABLEKS                       R34 R33 K42 ["onAbsoluteSizeChanged"]
      243 DUPTABLE                         R34 K44 [{"NumberSequence"}]
      244 GETUPVAL                         R35 10
      245 GETUPVAL                         R36 11
      246 DUPTABLE                         R37 K50 [{"unorderedKeypoints", "unorderedKeypointsBinding", "controller", "WindowOpen", "GraphHeight"}]
      247 SETTABLEKS                       R6 R37 K45 ["unorderedKeypoints"]
      249 SETTABLEKS                       R7 R37 K46 ["unorderedKeypointsBinding"]
      251 SETTABLEKS                       R8 R37 K47 ["controller"]
      253 SETTABLEKS                       R11 R37 K48 ["WindowOpen"]
      255 GETTABLEKS                       R38 R26 K51 ["Y"]
      257 SETTABLEKS                       R38 R37 K49 ["GraphHeight"]
      259 CALL                             R35 2 1
      260 SETTABLEKS                       R35 R34 K6 ["NumberSequence"]
      262 CALL                             R31 3 1
      263 SETTABLEKS                       R31 R30 K34 ["Contents"]
      265 SETTABLEKS                       R22 R30 K35 ["Size"]
      267 SETTABLEKS                       R24 R30 K36 ["MinSize"]
      269 NEWCLOSURE                       R31 P11
      270 CAPTURE                          VAL R12
      271 SETTABLEKS                       R31 R30 K37 ["onStateChanged"]
      273 CALL                             R29 1 1
      274 GETUPVAL                         R30 0
      275 GETTABLEKS                       R30 R30 K0 ["useCallback"]
      277 NEWCLOSURE                       R31 P12
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R17
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R16
      283 NEWTABLE                         R32 0 4
      285 MOVE                             R33 R29
      286 GETTABLEKS                       R34 R0 K7 ["beginEditingAsync"]
      288 GETTABLEKS                       R35 R0 K2 ["finishEditing"]
      290 MOVE                             R36 R16
      291 SETLIST                          R32 R33 4 [1]
      293 CALL                             R30 2 1
      294 GETUPVAL                         R31 12
      295 CALL                             R31 0 1
      296 GETUPVAL                         R32 13
      297 CALL                             R32 0 1
      298 GETUPVAL                         R33 10
      299 GETUPVAL                         R34 9
      300 DUPTABLE                         R35 K53 [{["tag"] = "row flex-x-fill align-x-right align-y-center gap-xsmall size-full-0 auto-y"}]
      301 DUPTABLE                         R36 K58 [{"ConstantNumberInput", "GraphPreview", "ToggleButton", "WidgetPortal"}]
      302 GETUPVAL                         R37 10
      303 GETUPVAL                         R38 14
      304 DUPTABLE                         R39 K66 [{"LayoutOrder", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "Visible"}]
      305 MOVE                             R40 R32
      306 CALL                             R40 0 1
      307 SETTABLEKS                       R40 R39 K59 ["LayoutOrder"]
      309 SETTABLEKS                       R17 R39 K60 ["propertyPart"]
      311 GETTABLEKS                       R40 R0 K4 ["getInfo"]
      313 CALL                             R40 0 1
      314 GETTABLEKS                       R40 R40 K61 ["readonly"]
      316 SETTABLEKS                       R40 R39 K61 ["readonly"]
      318 GETTABLEKS                       R40 R0 K7 ["beginEditingAsync"]
      320 SETTABLEKS                       R40 R39 K62 ["onEditStart"]
      322 SETTABLEKS                       R16 R39 K63 ["onChange"]
      324 GETTABLEKS                       R40 R0 K2 ["finishEditing"]
      326 SETTABLEKS                       R40 R39 K64 ["onEditFinish"]
      328 NOT                              R40 R15
      329 SETTABLEKS                       R40 R39 K65 ["Visible"]
      331 CALL                             R37 2 1
      332 SETTABLEKS                       R37 R36 K54 ["ConstantNumberInput"]
      334 GETUPVAL                         R37 10
      335 GETUPVAL                         R38 9
      336 DUPTABLE                         R39 K70 [{["tag"] = "size-full-600 bg-surface-200 radius-small", ["sizeConstraint"], ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      337 DUPTABLE                         R40 K72 [{"MaxSize"}]
      338 GETIMPORT                        R41 K24 [Vector2.new]
      340 GETTABLEKS                       R43 R31 K35 ["Size"]
      342 GETTABLEKS                       R43 R43 K73 ["Size_3000"]
      344 MULK                             R42 R43 K13 [2]
      345 LOADK                            R43 K74 [∞]
      346 CALL                             R41 2 1
      347 SETTABLEKS                       R41 R40 K71 ["MaxSize"]
      349 SETTABLEKS                       R40 R39 K68 ["sizeConstraint"]
      351 MOVE                             R40 R32
      352 CALL                             R40 0 1
      353 SETTABLEKS                       R40 R39 K59 ["LayoutOrder"]
      355 SETTABLEKS                       R15 R39 K65 ["Visible"]
      357 GETTABLEKS                       R40 R29 K75 ["open"]
      359 SETTABLEKS                       R40 R39 K69 ["onActivated"]
      361 DUPTABLE                         R40 K77 [{"Graph"}]
      362 GETUPVAL                         R41 10
      363 GETUPVAL                         R42 15
      364 DUPTABLE                         R43 K79 [{"keypoints"}]
      365 SETTABLEKS                       R9 R43 K78 ["keypoints"]
      367 CALL                             R41 2 1
      368 SETTABLEKS                       R41 R40 K76 ["Graph"]
      370 CALL                             R37 3 1
      371 SETTABLEKS                       R37 R36 K55 ["GraphPreview"]
      373 GETUPVAL                         R37 10
      374 GETUPVAL                         R38 9
      375 DUPTABLE                         R39 K82 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center no-flex size-600-600 radius-small", ["backgroundStyle"], ["onActivated"]}]
      376 MOVE                             R40 R32
      377 CALL                             R40 0 1
      378 SETTABLEKS                       R40 R39 K59 ["LayoutOrder"]
      380 DUPTABLE                         R40 K85 [{"Color3", "Transparency"}]
      381 GETTABLEKS                       R41 R31 K86 ["Color"]
      383 GETTABLEKS                       R41 R41 K87 ["Surface"]
      385 GETTABLEKS                       R41 R41 K88 ["Surface_300"]
      387 GETTABLEKS                       R41 R41 K83 ["Color3"]
      389 SETTABLEKS                       R41 R40 K83 ["Color3"]
      391 JUMPIFNOT                        R15 ; [+2]
      392 LOADN                            R41 0
      393 JUMP                             ; [+1]
      394 LOADN                            R41 1
      395 SETTABLEKS                       R41 R40 K84 ["Transparency"]
      397 SETTABLEKS                       R40 R39 K81 ["backgroundStyle"]
      399 SETTABLEKS                       R30 R39 K69 ["onActivated"]
      401 DUPTABLE                         R40 K90 [{"Icon"}]
      402 GETUPVAL                         R41 10
      403 GETUPVAL                         R42 16
      404 DUPTABLE                         R43 K93 [{"name", "size"}]
      405 GETUPVAL                         R44 17
      406 GETTABLEKS                       R44 R44 K94 ["IconName"]
      408 GETTABLEKS                       R44 R44 K95 ["ChartLine"]
      410 SETTABLEKS                       R44 R43 K91 ["name"]
      412 GETUPVAL                         R44 17
      413 GETTABLEKS                       R44 R44 K96 ["IconSize"]
      415 GETTABLEKS                       R44 R44 K97 ["Small"]
      417 SETTABLEKS                       R44 R43 K92 ["size"]
      419 CALL                             R41 2 1
      420 SETTABLEKS                       R41 R40 K89 ["Icon"]
      422 CALL                             R37 3 1
      423 SETTABLEKS                       R37 R36 K56 ["ToggleButton"]
      425 GETTABLEKS                       R37 R29 K98 ["portal"]
      427 SETTABLEKS                       R37 R36 K57 ["WidgetPortal"]
      429 CALL                             R33 3 -1
      430 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyEntries"]
       27 GETTABLEKS                       R5 R5 K12 ["PropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequencePropertyView"]
       31 GETTABLEKS                       R5 R5 K14 ["NumberSequenceEditor"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K11 ["PropertyEntries"]
       40 GETTABLEKS                       R6 R6 K12 ["PropertyView"]
       42 GETTABLEKS                       R6 R6 K13 ["NumberSequencePropertyView"]
       44 GETTABLEKS                       R6 R6 K15 ["NumberSequenceInlineGraph"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K10 ["Components"]
       51 GETTABLEKS                       R7 R7 K11 ["PropertyEntries"]
       53 GETTABLEKS                       R7 R7 K12 ["PropertyView"]
       55 GETTABLEKS                       R7 R7 K13 ["NumberSequencePropertyView"]
       57 GETTABLEKS                       R7 R7 K16 ["NumberSequenceUtil"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K6 [require]
       62 GETTABLEKS                       R8 R0 K17 ["PropertyEditorTypes"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K6 [require]
       67 GETTABLEKS                       R9 R0 K18 ["PropertyTypes"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R1 K19 ["React"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R1 K20 ["ReactUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R1 K21 ["Signals"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R1 K22 ["SignalsReact"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Components"]
       94 GETTABLEKS                       R14 R14 K7 ["Util"]
       96 GETTABLEKS                       R14 R14 K23 ["Number"]
       98 GETTABLEKS                       R14 R14 K24 ["SingleNumberInput"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K10 ["Components"]
      105 GETTABLEKS                       R15 R15 K7 ["Util"]
      107 GETTABLEKS                       R15 R15 K25 ["RowStops"]
      109 GETTABLEKS                       R15 R15 K26 ["calculateRowStopsHeight"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R0 K27 ["PropertyInteraction"]
      116 GETTABLEKS                       R16 R16 K28 ["genericMultiplePart"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETTABLEKS                       R17 R0 K10 ["Components"]
      123 GETTABLEKS                       R17 R17 K11 ["PropertyEntries"]
      125 GETTABLEKS                       R17 R17 K12 ["PropertyView"]
      127 GETTABLEKS                       R17 R17 K13 ["NumberSequencePropertyView"]
      129 GETTABLEKS                       R17 R17 K29 ["useNumberSequence"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K6 [require]
      134 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      136 GETTABLEKS                       R18 R18 K31 ["useVisualValues"]
      138 CALL                             R17 1 1
      139 GETTABLEKS                       R18 R10 K32 ["createNextOrder"]
      141 GETTABLEKS                       R19 R9 K33 ["createElement"]
      143 GETTABLEKS                       R20 R3 K30 ["Hooks"]
      145 GETTABLEKS                       R20 R20 K34 ["useTokens"]
      147 GETTABLEKS                       R21 R3 K35 ["View"]
      149 GETTABLEKS                       R22 R3 K36 ["Icon"]
      151 GETTABLEKS                       R23 R3 K37 ["Enums"]
      153 DUPCLOSURE                       R24 K38 [PROTO_15]
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R23
      172 RETURN                           R24 1
