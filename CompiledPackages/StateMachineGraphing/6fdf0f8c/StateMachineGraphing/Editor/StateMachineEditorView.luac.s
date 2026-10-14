PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K3 ["getterRef"]
       11 GETTABLEKS                       R3 R1 K4 ["observeViewportRect"]
       13 SETTABLEKS                       R3 R2 K5 ["current"]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"nodeLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["NODE_LIBRARY"]
        4 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        6 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["renderProperty"]
       11 SETTABLEKS                       R1 R0 K1 ["renderProperty"]
       13 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["getState"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["isSynthetic"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+3]
       18 GETUPVAL                         R2 0
       19 LOADB                            R3 1
       20 SETTABLE                         R3 R0 R2
       21 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K5 [{[1], ["selectionStyle"] = "emphasis", ["activeStyle"] = "shift400"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["activeStateIds"]
        4 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["Vector2"] ; [+12]
        8 DUPTABLE                         R2 K5 [{"x", "y"}]
        9 GETTABLEKS                       R3 R0 K6 ["X"]
       11 SETTABLEKS                       R3 R2 K3 ["x"]
       13 GETTABLEKS                       R3 R0 K7 ["Y"]
       15 SETTABLEKS                       R3 R2 K4 ["y"]
       17 MOVE                             R1 R2
       18 JUMP                             ; [+14]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["current"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K9 ["newStatePosition"]
       25 JUMPIFNOT                        R2 ; [+4]
       26 MOVE                             R4 R2
       27 LOADB                            R5 0
       28 CALL                             R4 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 CALL                             R3 1 1
       32 MOVE                             R1 R3
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K10 ["findFreePosition"]
       36 GETUPVAL                         R3 3
       37 MOVE                             R4 R1
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K11 ["createState"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K12 ["nextStateName"]
       46 GETUPVAL                         R4 3
       47 CALL                             R3 1 1
       48 MOVE                             R4 R1
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["getState"]
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R6
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+13]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K1 ["isSynthetic"]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIF                           R8 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R6
       23 GETIMPORT                        R8 K4 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R2 2 ; [-21]
       28 LENGTH                           R2 R1
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+6]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K5 ["deleteStates"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTransition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createStateAndTransition"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["nextStateName"]
        7 GETUPVAL                         R5 2
        8 CALL                             R4 1 1
        9 DUPTABLE                         R5 K4 [{"x", "y"}]
       10 GETTABLEKS                       R6 R1 K5 ["X"]
       12 SETTABLEKS                       R6 R5 K2 ["x"]
       14 GETTABLEKS                       R6 R1 K6 ["Y"]
       16 SETTABLEKS                       R6 R5 K3 ["y"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getState"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["isSynthetic"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["getState"]
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+12]
       23 GETTABLEKS                       R4 R3 K2 ["isStart"]
       25 JUMPIFNOT                        R4 ; [+9]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["hasOutgoingTransition"]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R0
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADB                            R4 0
       34 RETURN                           R4 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["hasTransition"]
       38 GETUPVAL                         R6 1
       39 MOVE                             R7 R0
       40 MOVE                             R8 R1
       41 CALL                             R5 3 1
       42 NOT                              R4 R5
       43 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasTransition"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K2 ["NodeLibraryContext"]
       20 GETTABLEKS                       R4 R4 K1 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 1
       31 GETTABLEKS                       R7 R3 K4 ["renderProperty"]
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       39 GETTABLEKS                       R6 R2 K6 ["observeData"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R0 K7 ["debugData"]
       44 JUMPIFNOT                        R6 ; [+3]
       45 GETTABLEKS                       R7 R6 K8 ["activeStateId"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R10 0 2
       58 MOVE                             R11 R7
       59 MOVE                             R12 R5
       60 SETLIST                          R10 R11 2 [1]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       66 NEWCLOSURE                       R10 P2
       67 CAPTURE                          VAL R8
       68 NEWTABLE                         R11 0 3
       70 MOVE                             R12 R8
       71 LOADK                            R13 K9 ["emphasis"]
       72 LOADK                            R14 K10 ["shift400"]
       73 SETLIST                          R11 R12 3 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K11 ["useRef"]
       79 LOADNIL                          R11
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 7
       82 GETTABLEKS                       R11 R11 K12 ["useEventCallback"]
       84 NEWCLOSURE                       R12 P3
       85 CAPTURE                          VAL R10
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CALL                             R11 1 1
       91 GETUPVAL                         R12 7
       92 GETTABLEKS                       R12 R12 K12 ["useEventCallback"]
       94 NEWCLOSURE                       R13 P4
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R2
       98 CALL                             R12 1 1
       99 GETUPVAL                         R13 7
      100 GETTABLEKS                       R13 R13 K12 ["useEventCallback"]
      102 NEWCLOSURE                       R14 P5
      103 CAPTURE                          VAL R2
      104 CALL                             R13 1 1
      105 GETUPVAL                         R14 7
      106 GETTABLEKS                       R14 R14 K12 ["useEventCallback"]
      108 NEWCLOSURE                       R15 P6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R5
      112 CALL                             R14 1 1
      113 GETUPVAL                         R15 7
      114 GETTABLEKS                       R15 R15 K12 ["useEventCallback"]
      116 NEWCLOSURE                       R16 P7
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          VAL R5
      119 CALL                             R15 1 1
      120 GETUPVAL                         R16 7
      121 GETTABLEKS                       R16 R16 K12 ["useEventCallback"]
      123 NEWCLOSURE                       R17 P8
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          VAL R5
      126 CALL                             R16 1 1
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K13 ["createElement"]
      130 LOADK                            R18 K14 ["Frame"]
      131 DUPTABLE                         R19 K23 [{["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10}]
      132 GETIMPORT                        R20 K26 [Vector2.new]
      134 LOADK                            R21 K27 [0.5]
      135 LOADN                            R22 0
      136 CALL                             R20 2 1
      137 SETTABLEKS                       R20 R19 K15 ["AnchorPoint"]
      139 GETIMPORT                        R20 K29 [UDim2.new]
      141 LOADK                            R21 K27 [0.5]
      142 LOADN                            R22 0
      143 LOADN                            R23 0
      144 LOADN                            R24 12
      145 CALL                             R20 4 1
      146 SETTABLEKS                       R20 R19 K16 ["Position"]
      148 GETIMPORT                        R20 K31 [UDim2.fromOffset]
      150 LOADN                            R21 0
      151 LOADN                            R22 0
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K17 ["Size"]
      155 GETIMPORT                        R20 K34 [Enum.AutomaticSize.XY]
      157 SETTABLEKS                       R20 R19 K18 ["AutomaticSize"]
      159 DUPTABLE                         R20 K36 [{"Buttons"}]
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R21 R21 K13 ["createElement"]
      163 GETUPVAL                         R22 9
      164 GETTABLEKS                       R22 R22 K37 ["View"]
      166 DUPTABLE                         R23 K40 [{["tag"] = "row auto-xy gap-small padding-small radius-small bg-surface-200 stroke-muted"}]
      167 DUPTABLE                         R24 K43 [{"BackButton", "CreateState"}]
      168 GETUPVAL                         R25 0
      169 GETTABLEKS                       R25 R25 K13 ["createElement"]
      171 GETUPVAL                         R26 9
      172 GETTABLEKS                       R26 R26 K44 ["Button"]
      174 DUPTABLE                         R27 K53 [{["tag"] = "auto-xy", ["text"], ["icon"] = "arrow-large-left", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1}]
      175 LOADK                            R28 K54 ["Back to %*"]
      176 GETTABLEKS                       R31 R0 K56 ["backLabel"]
      178 ORK                              R30 R31 K55 ["Graph"]
      179 NAMECALL                         R28 R28 K57 ["format"]
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K46 ["text"]
      184 GETUPVAL                         R28 9
      185 GETTABLEKS                       R28 R28 K58 ["Enums"]
      187 GETTABLEKS                       R28 R28 K59 ["InputSize"]
      189 GETTABLEKS                       R28 R28 K60 ["Small"]
      191 SETTABLEKS                       R28 R27 K49 ["size"]
      193 GETUPVAL                         R28 9
      194 GETTABLEKS                       R28 R28 K58 ["Enums"]
      196 GETTABLEKS                       R28 R28 K61 ["ButtonVariant"]
      198 GETTABLEKS                       R28 R28 K62 ["Standard"]
      200 SETTABLEKS                       R28 R27 K50 ["variant"]
      202 GETTABLEKS                       R28 R1 K63 ["close"]
      204 SETTABLEKS                       R28 R27 K51 ["onActivated"]
      206 CALL                             R25 2 1
      207 SETTABLEKS                       R25 R24 K41 ["BackButton"]
      209 GETUPVAL                         R25 0
      210 GETTABLEKS                       R25 R25 K13 ["createElement"]
      212 GETUPVAL                         R26 9
      213 GETTABLEKS                       R26 R26 K44 ["Button"]
      215 DUPTABLE                         R27 K67 [{["tag"] = "auto-xy", ["text"] = "Create State", ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 2}]
      216 GETUPVAL                         R28 9
      217 GETTABLEKS                       R28 R28 K58 ["Enums"]
      219 GETTABLEKS                       R28 R28 K59 ["InputSize"]
      221 GETTABLEKS                       R28 R28 K60 ["Small"]
      223 SETTABLEKS                       R28 R27 K49 ["size"]
      225 GETUPVAL                         R28 9
      226 GETTABLEKS                       R28 R28 K58 ["Enums"]
      228 GETTABLEKS                       R28 R28 K61 ["ButtonVariant"]
      230 GETTABLEKS                       R28 R28 K62 ["Standard"]
      232 SETTABLEKS                       R28 R27 K50 ["variant"]
      234 SETTABLEKS                       R11 R27 K51 ["onActivated"]
      236 CALL                             R25 2 1
      237 SETTABLEKS                       R25 R24 K42 ["CreateState"]
      239 CALL                             R21 3 1
      240 SETTABLEKS                       R21 R20 K35 ["Buttons"]
      242 CALL                             R17 3 1
      243 GETUPVAL                         R18 0
      244 GETTABLEKS                       R18 R18 K13 ["createElement"]
      246 GETUPVAL                         R19 9
      247 GETTABLEKS                       R19 R19 K37 ["View"]
      249 DUPTABLE                         R20 K69 [{["tag"] = "size-full-full"}]
      250 DUPTABLE                         R21 K71 [{"Contexts"}]
      251 GETUPVAL                         R22 0
      252 GETTABLEKS                       R22 R22 K13 ["createElement"]
      254 GETUPVAL                         R23 10
      255 GETTABLEKS                       R23 R23 K72 ["Provider"]
      257 DUPTABLE                         R24 K74 [{"children"}]
      258 GETUPVAL                         R25 0
      259 GETTABLEKS                       R25 R25 K13 ["createElement"]
      261 GETUPVAL                         R26 11
      262 GETTABLEKS                       R26 R26 K72 ["Provider"]
      264 DUPTABLE                         R27 K79 [{"onCreateTransition", "onCreateStateAndTransition", "isValidTarget", "hasReverseTransition", "children"}]
      265 SETTABLEKS                       R13 R27 K75 ["onCreateTransition"]
      267 SETTABLEKS                       R14 R27 K76 ["onCreateStateAndTransition"]
      269 SETTABLEKS                       R15 R27 K77 ["isValidTarget"]
      271 SETTABLEKS                       R16 R27 K78 ["hasReverseTransition"]
      273 GETUPVAL                         R28 0
      274 GETTABLEKS                       R28 R28 K13 ["createElement"]
      276 GETUPVAL                         R29 7
      277 GETTABLEKS                       R29 R29 K80 ["ContextStack"]
      279 DUPTABLE                         R30 K82 [{"providers"}]
      280 NEWTABLE                         R31 0 5
      282 GETUPVAL                         R32 0
      283 GETTABLEKS                       R32 R32 K13 ["createElement"]
      285 GETUPVAL                         R33 3
      286 GETTABLEKS                       R33 R33 K2 ["NodeLibraryContext"]
      288 GETTABLEKS                       R33 R33 K72 ["Provider"]
      290 DUPTABLE                         R34 K84 [{"value"}]
      291 SETTABLEKS                       R4 R34 K83 ["value"]
      293 CALL                             R32 2 1
      294 GETUPVAL                         R33 0
      295 GETTABLEKS                       R33 R33 K13 ["createElement"]
      297 GETUPVAL                         R34 3
      298 GETTABLEKS                       R34 R34 K85 ["ContextMenuOverrideContext"]
      300 GETTABLEKS                       R34 R34 K1 ["Context"]
      302 GETTABLEKS                       R34 R34 K72 ["Provider"]
      304 DUPTABLE                         R35 K84 [{"value"}]
      305 GETUPVAL                         R36 12
      306 SETTABLEKS                       R36 R35 K83 ["value"]
      308 CALL                             R33 2 1
      309 GETUPVAL                         R34 0
      310 GETTABLEKS                       R34 R34 K13 ["createElement"]
      312 GETUPVAL                         R35 13
      313 GETTABLEKS                       R35 R35 K1 ["Context"]
      315 GETTABLEKS                       R35 R35 K72 ["Provider"]
      317 DUPTABLE                         R36 K84 [{"value"}]
      318 SETTABLEKS                       R9 R36 K83 ["value"]
      320 CALL                             R34 2 1
      321 GETUPVAL                         R35 0
      322 GETTABLEKS                       R35 R35 K13 ["createElement"]
      324 GETUPVAL                         R36 14
      325 DUPTABLE                         R37 K90 [{"onCreateState", "onDeleteStates", "parameters", "parameterGraphContext"}]
      326 SETTABLEKS                       R11 R37 K86 ["onCreateState"]
      328 SETTABLEKS                       R12 R37 K87 ["onDeleteStates"]
      330 GETTABLEKS                       R38 R0 K88 ["parameters"]
      332 SETTABLEKS                       R38 R37 K88 ["parameters"]
      334 GETTABLEKS                       R38 R0 K89 ["parameterGraphContext"]
      336 SETTABLEKS                       R38 R37 K89 ["parameterGraphContext"]
      338 CALL                             R35 2 1
      339 GETUPVAL                         R36 0
      340 GETTABLEKS                       R36 R36 K13 ["createElement"]
      342 GETUPVAL                         R37 15
      343 GETTABLEKS                       R37 R37 K72 ["Provider"]
      345 NEWTABLE                         R38 0 0
      347 CALL                             R36 2 -1
      348 SETLIST                          R31 R32 -1 [1]
      350 SETTABLEKS                       R31 R30 K81 ["providers"]
      352 DUPTABLE                         R31 K91 [{"Graph"}]
      353 GETUPVAL                         R32 0
      354 GETTABLEKS                       R32 R32 K13 ["createElement"]
      356 GETUPVAL                         R33 3
      357 GETTABLEKS                       R33 R33 K92 ["GraphingCanvas"]
      359 DUPTABLE                         R34 K95 [{"initialGraphRect", "childrenBehindNodes"}]
      360 GETUPVAL                         R35 16
      361 SETTABLEKS                       R35 R34 K93 ["initialGraphRect"]
      363 GETUPVAL                         R35 0
      364 GETTABLEKS                       R35 R35 K13 ["createElement"]
      366 GETUPVAL                         R36 17
      367 DUPTABLE                         R37 K98 [{"fillTransitionId", "fillFraction"}]
      368 JUMPIFNOT                        R6 ; [+3]
      369 GETTABLEKS                       R38 R6 K99 ["activeTransitionId"]
      371 JUMP                             ; [+1]
      372 LOADNIL                          R38
      373 SETTABLEKS                       R38 R37 K96 ["fillTransitionId"]
      375 JUMPIFNOT                        R6 ; [+4]
      376 GETTABLEKS                       R39 R6 K101 ["transitionProgress"]
      378 ORK                              R38 R39 K100 [0]
      379 JUMP                             ; [+1]
      380 LOADN                            R38 0
      381 SETTABLEKS                       R38 R37 K97 ["fillFraction"]
      383 CALL                             R35 2 1
      384 SETTABLEKS                       R35 R34 K94 ["childrenBehindNodes"]
      386 GETUPVAL                         R35 0
      387 GETTABLEKS                       R35 R35 K13 ["createElement"]
      389 GETUPVAL                         R36 0
      390 GETTABLEKS                       R36 R36 K102 ["Fragment"]
      392 LOADNIL                          R37
      393 GETTABLEKS                       R38 R0 K73 ["children"]
      395 CALL                             R35 3 1
      396 GETUPVAL                         R36 0
      397 GETTABLEKS                       R36 R36 K13 ["createElement"]
      399 GETUPVAL                         R37 18
      400 DUPTABLE                         R38 K104 [{"getterRef"}]
      401 SETTABLEKS                       R10 R38 K103 ["getterRef"]
      403 CALL                             R36 2 1
      404 MOVE                             R37 R17
      405 CALL                             R32 5 1
      406 SETTABLEKS                       R32 R31 K55 ["Graph"]
      408 CALL                             R28 3 1
      409 SETTABLEKS                       R28 R27 K73 ["children"]
      411 CALL                             R25 2 1
      412 SETTABLEKS                       R25 R24 K73 ["children"]
      414 CALL                             R22 2 1
      415 SETTABLEKS                       R22 R21 K70 ["Contexts"]
      417 CALL                             R18 3 -1
      418 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K14 ["StateMachineConnectContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineContextMenu"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Data"]
       67 GETTABLEKS                       R10 R10 K18 ["StateMachineData"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K19 ["StateMachineDataContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K15 ["Components"]
       81 GETTABLEKS                       R12 R12 K20 ["StateMachineEdges"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       88 GETTABLEKS                       R13 R13 K21 ["StateMachineGeometryContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K22 ["StateMachineGraphContext"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K13 ["Contexts"]
      102 GETTABLEKS                       R15 R15 K23 ["StateMachineNavContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K13 ["Contexts"]
      109 GETTABLEKS                       R16 R16 K24 ["StateMachineNodeLibrary"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      116 GETTABLEKS                       R17 R17 K25 ["StateMachinePreviewContext"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      123 GETTABLEKS                       R18 R18 K26 ["StateMachineSelectionContext"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K17 ["Data"]
      130 GETTABLEKS                       R19 R19 K27 ["StateMachineTypes"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K28 ["Util"]
      137 GETTABLEKS                       R20 R20 K29 ["StateMachineUtils"]
      139 CALL                             R19 1 1
      140 DUPTABLE                         R20 K31 [{"contextMenuComponent"}]
      141 SETTABLEKS                       R8 R20 K30 ["contextMenuComponent"]
      143 GETIMPORT                        R21 K34 [Rect.new]
      145 LOADN                            R22 0
      146 LOADN                            R23 -60
      147 LOADN                            R24 0
      148 LOADN                            R25 -60
      149 CALL                             R21 4 1
      150 DUPCLOSURE                       R22 K35 [PROTO_0]
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R2
      153 DUPCLOSURE                       R23 K36 [PROTO_10]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R22
      173 RETURN                           R23 1
