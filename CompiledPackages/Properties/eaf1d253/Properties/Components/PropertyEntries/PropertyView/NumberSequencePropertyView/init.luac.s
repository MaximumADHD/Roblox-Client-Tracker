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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["Keypoints"]
        5 LENGTH                           R1 R2
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

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
       90 GETTABLEKS                       R11 R11 K12 ["useState"]
       92 LOADB                            R12 0
       93 CALL                             R11 1 2
       94 LOADB                            R13 0
       95 LENGTH                           R14 R9
       96 JUMPIFNOTEQKN                    R14 K13 [2] ; [+11]
       98 GETTABLEN                        R14 R9 1
       99 GETTABLEKS                       R14 R14 K14 ["Value"]
      101 GETTABLEN                        R15 R9 2
      102 GETTABLEKS                       R15 R15 K14 ["Value"]
      104 JUMPIFEQ                         R14 R15 ; [+2]
      106 LOADB                            R13 0 +1
      107 LOADB                            R13 1
      108 MOVE                             R14 R11
      109 JUMPIF                           R14 ; [+3]
      110 NOT                              R14 R13
      111 JUMPIF                           R14 ; [+1]
      112 MOVE                             R14 R5
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R15 R15 K0 ["useCallback"]
      116 NEWCLOSURE                       R16 P6
      117 CAPTURE                          VAL R8
      118 NEWTABLE                         R17 0 1
      120 GETTABLEKS                       R18 R8 K15 ["updateKeypoints"]
      122 SETLIST                          R17 R18 1 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R16 5
      126 GETTABLEKS                       R16 R16 K9 ["Bindings"]
      128 GETTABLEKS                       R16 R16 K10 ["map"]
      130 MOVE                             R17 R10
      131 DUPCLOSURE                       R18 K16 [PROTO_9]
      132 CAPTURE                          UPVAL U6
      133 CALL                             R16 2 1
      134 GETUPVAL                         R17 0
      135 GETTABLEKS                       R17 R17 K3 ["useMemo"]
      137 NEWCLOSURE                       R18 P8
      138 CAPTURE                          UPVAL U1
      139 CAPTURE                          VAL R3
      140 NEWTABLE                         R19 0 1
      142 MOVE                             R20 R3
      143 SETLIST                          R19 R20 1 [1]
      145 CALL                             R17 2 1
      146 GETUPVAL                         R18 7
      147 MOVE                             R19 R17
      148 CALL                             R18 1 1
      149 GETUPVAL                         R19 8
      150 CALL                             R19 0 1
      151 GETTABLEKS                       R20 R19 K6 ["NumberSequence"]
      153 GETTABLEKS                       R23 R20 K17 ["EditorYPadding"]
      155 MULK                             R22 R23 K13 [2]
      156 GETTABLEKS                       R23 R20 K18 ["EditorFillPadding"]
      158 ADD                              R21 R22 R23
      159 GETUPVAL                         R22 9
      160 MOVE                             R23 R19
      161 MOVE                             R24 R18
      162 GETTABLEKS                       R25 R20 K19 ["MaxRows"]
      164 CALL                             R22 3 1
      165 GETUPVAL                         R23 0
      166 GETTABLEKS                       R23 R23 K12 ["useState"]
      168 GETTABLEKS                       R24 R20 K20 ["EditorInitialSize"]
      170 CALL                             R23 1 2
      171 GETIMPORT                        R26 K23 [Vector2.new]
      173 LOADN                            R27 0
      174 ADD                              R28 R21 R22
      175 CALL                             R26 2 1
      176 ADD                              R25 R23 R26
      177 GETIMPORT                        R26 K23 [Vector2.new]
      179 GETTABLEKS                       R27 R20 K24 ["EditorMinWidth"]
      181 GETTABLEKS                       R30 R20 K25 ["EditorMinHeight"]
      183 ADD                              R29 R30 R21
      184 ADD                              R28 R29 R22
      185 CALL                             R26 2 1
      186 GETTABLEKS                       R29 R0 K26 ["specializedEditingUtils"]
      188 GETTABLEKS                       R29 R29 K27 ["usePropertyBoundWindow"]
      190 JUMPIFNOTEQKNIL                  R29 ; [+2]
      192 LOADB                            R28 0 +1
      193 LOADB                            R28 1
      194 FASTCALL2K                       ASSERT R28 K28 ; [+4]
      196 LOADK                            R29 K28 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
      197 GETIMPORT                        R27 K30 [assert]
      199 CALL                             R27 2 0
      200 GETTABLEKS                       R27 R0 K26 ["specializedEditingUtils"]
      202 GETTABLEKS                       R27 R27 K27 ["usePropertyBoundWindow"]
      204 DUPTABLE                         R28 K35 [{"Contents", "Size", "MinSize", "onStateChanged"}]
      205 GETUPVAL                         R29 0
      206 GETTABLEKS                       R29 R29 K36 ["createElement"]
      208 GETUPVAL                         R30 10
      209 DUPTABLE                         R31 K40 [{["tag"] = "size-full bg-surface-100", ["onAbsoluteSizeChanged"]}]
      210 NEWCLOSURE                       R32 P9
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R24
      215 SETTABLEKS                       R32 R31 K39 ["onAbsoluteSizeChanged"]
      217 DUPTABLE                         R32 K41 [{"NumberSequence"}]
      218 GETUPVAL                         R33 11
      219 GETUPVAL                         R34 12
      220 DUPTABLE                         R35 K46 [{"unorderedKeypoints", "unorderedKeypointsBinding", "controller", "GraphHeight"}]
      221 SETTABLEKS                       R6 R35 K42 ["unorderedKeypoints"]
      223 SETTABLEKS                       R7 R35 K43 ["unorderedKeypointsBinding"]
      225 SETTABLEKS                       R8 R35 K44 ["controller"]
      227 GETTABLEKS                       R36 R23 K47 ["Y"]
      229 SETTABLEKS                       R36 R35 K45 ["GraphHeight"]
      231 CALL                             R33 2 1
      232 SETTABLEKS                       R33 R32 K6 ["NumberSequence"]
      234 CALL                             R29 3 1
      235 SETTABLEKS                       R29 R28 K31 ["Contents"]
      237 SETTABLEKS                       R25 R28 K32 ["Size"]
      239 SETTABLEKS                       R26 R28 K33 ["MinSize"]
      241 NEWCLOSURE                       R29 P10
      242 CAPTURE                          VAL R12
      243 SETTABLEKS                       R29 R28 K34 ["onStateChanged"]
      245 CALL                             R27 1 1
      246 GETUPVAL                         R28 0
      247 GETTABLEKS                       R28 R28 K0 ["useCallback"]
      249 NEWCLOSURE                       R29 P11
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R0
      254 CAPTURE                          VAL R15
      255 NEWTABLE                         R30 0 4
      257 MOVE                             R31 R27
      258 GETTABLEKS                       R32 R0 K7 ["beginEditingAsync"]
      260 GETTABLEKS                       R33 R0 K2 ["finishEditing"]
      262 MOVE                             R34 R15
      263 SETLIST                          R30 R31 4 [1]
      265 CALL                             R28 2 1
      266 GETUPVAL                         R29 13
      267 CALL                             R29 0 1
      268 GETUPVAL                         R30 14
      269 CALL                             R30 0 1
      270 GETUPVAL                         R31 11
      271 GETUPVAL                         R32 10
      272 DUPTABLE                         R33 K49 [{["tag"] = "row flex-x-fill align-x-right align-y-center gap-xsmall size-full-0 auto-y"}]
      273 DUPTABLE                         R34 K54 [{"ConstantNumberInput", "GraphPreview", "ToggleButton", "WidgetPortal"}]
      274 GETUPVAL                         R35 11
      275 GETUPVAL                         R36 15
      276 DUPTABLE                         R37 K62 [{"LayoutOrder", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "Visible"}]
      277 MOVE                             R38 R30
      278 CALL                             R38 0 1
      279 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      281 SETTABLEKS                       R16 R37 K56 ["propertyPart"]
      283 GETTABLEKS                       R38 R0 K4 ["getInfo"]
      285 CALL                             R38 0 1
      286 GETTABLEKS                       R38 R38 K57 ["readonly"]
      288 SETTABLEKS                       R38 R37 K57 ["readonly"]
      290 GETTABLEKS                       R38 R0 K7 ["beginEditingAsync"]
      292 SETTABLEKS                       R38 R37 K58 ["onEditStart"]
      294 SETTABLEKS                       R15 R37 K59 ["onChange"]
      296 GETTABLEKS                       R38 R0 K2 ["finishEditing"]
      298 SETTABLEKS                       R38 R37 K60 ["onEditFinish"]
      300 NOT                              R38 R14
      301 SETTABLEKS                       R38 R37 K61 ["Visible"]
      303 CALL                             R35 2 1
      304 SETTABLEKS                       R35 R34 K50 ["ConstantNumberInput"]
      306 GETUPVAL                         R35 11
      307 GETUPVAL                         R36 10
      308 DUPTABLE                         R37 K66 [{["tag"] = "size-full-600 bg-surface-200 radius-small", ["sizeConstraint"], ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      309 DUPTABLE                         R38 K68 [{"MaxSize"}]
      310 GETIMPORT                        R39 K23 [Vector2.new]
      312 GETTABLEKS                       R41 R29 K32 ["Size"]
      314 GETTABLEKS                       R41 R41 K69 ["Size_3000"]
      316 MULK                             R40 R41 K13 [2]
      317 LOADK                            R41 K70 [∞]
      318 CALL                             R39 2 1
      319 SETTABLEKS                       R39 R38 K67 ["MaxSize"]
      321 SETTABLEKS                       R38 R37 K64 ["sizeConstraint"]
      323 MOVE                             R38 R30
      324 CALL                             R38 0 1
      325 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      327 SETTABLEKS                       R14 R37 K61 ["Visible"]
      329 GETTABLEKS                       R38 R27 K71 ["open"]
      331 SETTABLEKS                       R38 R37 K65 ["onActivated"]
      333 DUPTABLE                         R38 K73 [{"Graph"}]
      334 GETUPVAL                         R39 11
      335 GETUPVAL                         R40 16
      336 DUPTABLE                         R41 K75 [{"keypoints"}]
      337 SETTABLEKS                       R9 R41 K74 ["keypoints"]
      339 CALL                             R39 2 1
      340 SETTABLEKS                       R39 R38 K72 ["Graph"]
      342 CALL                             R35 3 1
      343 SETTABLEKS                       R35 R34 K51 ["GraphPreview"]
      345 GETUPVAL                         R35 11
      346 GETUPVAL                         R36 10
      347 DUPTABLE                         R37 K78 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center no-flex size-600-600 radius-small", ["backgroundStyle"], ["onActivated"]}]
      348 MOVE                             R38 R30
      349 CALL                             R38 0 1
      350 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      352 DUPTABLE                         R38 K81 [{"Color3", "Transparency"}]
      353 GETTABLEKS                       R39 R29 K82 ["Color"]
      355 GETTABLEKS                       R39 R39 K83 ["Surface"]
      357 GETTABLEKS                       R39 R39 K84 ["Surface_300"]
      359 GETTABLEKS                       R39 R39 K79 ["Color3"]
      361 SETTABLEKS                       R39 R38 K79 ["Color3"]
      363 JUMPIFNOT                        R14 ; [+2]
      364 LOADN                            R39 0
      365 JUMP                             ; [+1]
      366 LOADN                            R39 1
      367 SETTABLEKS                       R39 R38 K80 ["Transparency"]
      369 SETTABLEKS                       R38 R37 K77 ["backgroundStyle"]
      371 SETTABLEKS                       R28 R37 K65 ["onActivated"]
      373 DUPTABLE                         R38 K86 [{"Icon"}]
      374 GETUPVAL                         R39 11
      375 GETUPVAL                         R40 17
      376 DUPTABLE                         R41 K89 [{"name", "size"}]
      377 GETUPVAL                         R42 18
      378 GETTABLEKS                       R42 R42 K90 ["IconName"]
      380 GETTABLEKS                       R42 R42 K91 ["ChartLine"]
      382 SETTABLEKS                       R42 R41 K87 ["name"]
      384 GETUPVAL                         R42 18
      385 GETTABLEKS                       R42 R42 K92 ["IconSize"]
      387 GETTABLEKS                       R42 R42 K93 ["Small"]
      389 SETTABLEKS                       R42 R41 K88 ["size"]
      391 CALL                             R39 2 1
      392 SETTABLEKS                       R39 R38 K85 ["Icon"]
      394 CALL                             R35 3 1
      395 SETTABLEKS                       R35 R34 K52 ["ToggleButton"]
      397 GETTABLEKS                       R35 R27 K94 ["portal"]
      399 SETTABLEKS                       R35 R34 K53 ["WidgetPortal"]
      401 CALL                             R31 3 -1
      402 RETURN                           R31 -1

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
      139 GETTABLEKS                       R18 R12 K32 ["useSignalState"]
      141 GETTABLEKS                       R19 R10 K33 ["createNextOrder"]
      143 GETTABLEKS                       R20 R9 K34 ["createElement"]
      145 GETTABLEKS                       R21 R3 K30 ["Hooks"]
      147 GETTABLEKS                       R21 R21 K35 ["useTokens"]
      149 GETTABLEKS                       R22 R3 K36 ["View"]
      151 GETTABLEKS                       R23 R3 K37 ["Icon"]
      153 GETTABLEKS                       R24 R3 K38 ["Enums"]
      155 DUPCLOSURE                       R25 K39 [PROTO_15]
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R24
      175 RETURN                           R25 1
