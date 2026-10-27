PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["node"]
        3 GETTABLEKS                       R1 R1 K2 ["name"]
        5 ORK                              R0 R1 K0 ["Unnamed Parameter"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["node"]
        3 GETTABLEKS                       R0 R0 K1 ["name"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["node"]
       14 GETTABLEKS                       R2 R2 K1 ["name"]
       16 GETTABLE                         R0 R1 R2
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["renameParameter"]
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 3
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["renameParameter"]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setParameter"]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 LOADB                            R3 0
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["node"]
        3 GETTABLEKS                       R2 R2 K1 ["nodeType"]
        5 JUMPIFEQKS                       R2 K2 ["Trigger"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["setParameter"]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 NOT                              R5 R1
       15 CALL                             R2 3 0
       16 GETUPVAL                         R2 3
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R2 4
       20 JUMPIFEQ                         R0 R2 ; [+6]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K4 ["removeParameterOverride"]
       25 GETUPVAL                         R3 2
       26 CALL                             R2 1 0
       27 JUMPIFNOT                        R1 ; [+23]
       28 JUMPIFNOTEQKB                    R0 TRUE ; [+22]
       30 GETUPVAL                         R2 6
       31 GETTABLEKS                       R2 R2 K5 ["current"]
       33 JUMPIFNOT                        R2 ; [+6]
       34 GETIMPORT                        R2 K8 [task.cancel]
       36 GETUPVAL                         R3 6
       37 GETTABLEKS                       R3 R3 K5 ["current"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 6
       41 GETIMPORT                        R3 K10 [task.delay]
       43 LOADK                            R4 K11 [0.25]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U2
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K5 ["current"]
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 4
        8 GETTABLEKS                       R0 R0 K0 ["enable"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 5
       12 GETTABLEKS                       R0 R0 K1 ["current"]
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 5
       16 GETTABLEKS                       R0 R0 K1 ["current"]
       18 GETTABLEKS                       R0 R0 K2 ["focus"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+4]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["disable"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K19 [{["LayoutOrder"] = 2, ["Value"], ["Type"], ["tags"] = "align-y-center size-full-full", ["Name"] = "", ["Label"] = , ["IsParameterOverridden"] = False, ["IsDefaultValue"] = False, ["OnParameterOverrideRevert"], ["NodeId"], ["OnChanged"], ["testId"] = "ParameterPaneItem-PropertyInput"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K3 ["Value"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K20 ["node"]
       11 GETTABLEKS                       R3 R3 K21 ["nodeType"]
       13 SETTABLEKS                       R3 R2 K4 ["Type"]
       15 DUPCLOSURE                       R3 K22 [PROTO_11]
       16 SETTABLEKS                       R3 R2 K14 ["OnParameterOverrideRevert"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K20 ["node"]
       21 GETTABLEKS                       R3 R3 K23 ["id"]
       23 SETTABLEKS                       R3 R2 K15 ["NodeId"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R3 R2 K16 ["OnChanged"]
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["node"]
        7 GETTABLEKS                       R0 R0 K1 ["name"]
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["selectAllParameterNodesWithName"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K0 ["node"]
       17 GETTABLEKS                       R1 R1 K1 ["name"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_15:
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
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K2 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K3 ["useToggleState"]
       28 LOADB                            R6 0
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K4 ["useRef"]
       33 LOADNIL                          R7
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K4 ["useRef"]
       38 LOADNIL                          R8
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K5 ["useState"]
       43 LOADB                            R9 0
       44 CALL                             R8 1 2
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K4 ["useRef"]
       48 LOADNIL                          R11
       49 CALL                             R10 1 1
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K6 ["useMemo"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R13 0 1
       57 GETTABLEKS                       R14 R0 K7 ["node"]
       59 GETTABLEKS                       R14 R14 K8 ["name"]
       61 SETLIST                          R13 R14 1 [1]
       63 CALL                             R11 2 1
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K5 ["useState"]
       67 MOVE                             R13 R11
       68 CALL                             R12 1 2
       69 GETUPVAL                         R14 5
       70 GETTABLEKS                       R14 R14 K9 ["useSignalState"]
       72 GETTABLEKS                       R15 R1 K10 ["observeParameters"]
       74 CALL                             R14 1 1
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K6 ["useMemo"]
       78 NEWCLOSURE                       R16 P1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R14
       81 NEWTABLE                         R17 0 2
       83 GETTABLEKS                       R18 R0 K7 ["node"]
       85 GETTABLEKS                       R18 R18 K8 ["name"]
       87 MOVE                             R19 R14
       88 SETLIST                          R17 R18 2 [1]
       90 CALL                             R15 2 1
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K11 ["useCallback"]
       94 NEWCLOSURE                       R17 P2
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R11
       98 CAPTURE                          UPVAL U7
       99 NEWTABLE                         R18 0 2
      101 MOVE                             R19 R11
      102 GETTABLEKS                       R20 R3 K12 ["renameParameter"]
      104 SETLIST                          R18 R19 2 [1]
      106 CALL                             R16 2 1
      107 GETUPVAL                         R17 0
      108 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      110 NEWCLOSURE                       R18 P3
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R10
      118 NEWTABLE                         R19 0 5
      120 MOVE                             R20 R15
      121 MOVE                             R21 R11
      122 GETTABLEKS                       R22 R0 K7 ["node"]
      124 GETTABLEKS                       R22 R22 K13 ["nodeType"]
      126 GETTABLEKS                       R23 R1 K14 ["setParameter"]
      128 GETTABLEKS                       R24 R2 K15 ["removeParameterOverride"]
      130 SETLIST                          R19 R20 5 [1]
      132 CALL                             R17 2 1
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      136 NEWCLOSURE                       R19 P4
      137 CAPTURE                          VAL R10
      138 NEWTABLE                         R20 0 0
      140 CALL                             R18 2 0
      141 GETUPVAL                         R18 0
      142 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      144 NEWCLOSURE                       R19 P5
      145 CAPTURE                          VAL R9
      146 NEWTABLE                         R20 0 0
      148 CALL                             R18 2 1
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      152 NEWCLOSURE                       R20 P6
      153 CAPTURE                          VAL R9
      154 NEWTABLE                         R21 0 0
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      160 NEWCLOSURE                       R21 P7
      161 CAPTURE                          UPVAL U9
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R6
      167 NEWTABLE                         R22 0 4
      169 MOVE                             R23 R11
      170 MOVE                             R24 R5
      171 MOVE                             R25 R6
      172 MOVE                             R26 R19
      173 SETLIST                          R22 R23 4 [1]
      175 CALL                             R20 2 1
      176 GETUPVAL                         R21 0
      177 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      179 NEWCLOSURE                       R22 P8
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R5
      184 NEWTABLE                         R23 0 4
      186 MOVE                             R24 R11
      187 MOVE                             R25 R12
      188 MOVE                             R26 R5
      189 MOVE                             R27 R16
      190 SETLIST                          R23 R24 4 [1]
      192 CALL                             R21 2 1
      193 GETUPVAL                         R22 0
      194 GETTABLEKS                       R22 R22 K6 ["useMemo"]
      196 NEWCLOSURE                       R23 P9
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          UPVAL U10
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R17
      202 NEWTABLE                         R24 0 3
      204 MOVE                             R25 R15
      205 GETTABLEKS                       R26 R0 K7 ["node"]
      207 GETTABLEKS                       R26 R26 K13 ["nodeType"]
      209 MOVE                             R27 R17
      210 SETLIST                          R24 R25 3 [1]
      212 CALL                             R22 2 1
      213 GETUPVAL                         R23 0
      214 GETTABLEKS                       R23 R23 K11 ["useCallback"]
      216 NEWCLOSURE                       R24 P10
      217 CAPTURE                          UPVAL U9
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R0
      220 CAPTURE                          VAL R3
      221 NEWTABLE                         R25 0 3
      223 GETTABLEKS                       R26 R0 K7 ["node"]
      225 GETTABLEKS                       R26 R26 K8 ["name"]
      227 GETTABLEKS                       R27 R3 K17 ["selectAllParameterNodesWithName"]
      229 MOVE                             R28 R19
      230 SETLIST                          R25 R26 3 [1]
      232 CALL                             R23 2 1
      233 GETUPVAL                         R24 11
      234 GETTABLEKS                       R24 R24 K18 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      236 LOADK                            R25 K19 ["align-y-center text-title-small text-align-x-left text-align-y-center"]
      237 GETUPVAL                         R26 12
      238 JUMPIFNOT                        R26 ; [+4]
      239 MOVE                             R26 R25
      240 LOADK                            R27 K20 [" auto-xy"]
      241 CONCAT                           R25 R26 R27
      242 JUMP                             ; [+3]
      243 MOVE                             R26 R25
      244 LOADK                            R27 K21 [" size-full-full"]
      245 CONCAT                           R25 R26 R27
      246 GETUPVAL                         R26 0
      247 GETTABLEKS                       R26 R26 K22 ["createElement"]
      249 GETUPVAL                         R27 13
      250 GETTABLEKS                       R27 R27 K23 ["View"]
      252 DUPTABLE                         R28 K29 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      253 NEWTABLE                         R29 2 0
      255 LOADB                            R30 1
      256 SETTABLEKS                       R30 R29 K30 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      258 GETUPVAL                         R30 14
      259 CALL                             R30 0 1
      260 SETTABLEKS                       R30 R29 K31 ["flex-x-between padding-x-small"]
      262 SETTABLEKS                       R29 R28 K24 ["tag"]
      264 GETTABLEKS                       R29 R0 K25 ["LayoutOrder"]
      266 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      268 SETTABLEKS                       R23 R28 K26 ["onActivated"]
      270 SETTABLEKS                       R18 R28 K27 ["onSecondaryActivated"]
      272 SETTABLEKS                       R7 R28 K28 ["ref"]
      274 DUPTABLE                         R29 K36 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      275 GETUPVAL                         R31 14
      276 CALL                             R31 0 1
      277 NOT                              R30 R31
      278 JUMPIFNOT                        R30 ; [+12]
      279 GETUPVAL                         R30 0
      280 GETTABLEKS                       R30 R30 K22 ["createElement"]
      282 GETUPVAL                         R31 13
      283 GETTABLEKS                       R31 R31 K23 ["View"]
      285 DUPTABLE                         R32 K38 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      286 MOVE                             R33 R4
      287 CALL                             R33 0 1
      288 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      290 CALL                             R30 2 1
      291 SETTABLEKS                       R30 R29 K32 ["Spacer"]
      293 GETUPVAL                         R30 0
      294 GETTABLEKS                       R30 R30 K22 ["createElement"]
      296 GETUPVAL                         R31 13
      297 GETTABLEKS                       R31 R31 K23 ["View"]
      299 DUPTABLE                         R32 K40 [{"LayoutOrder", "tag", "Size"}]
      300 MOVE                             R33 R4
      301 CALL                             R33 0 1
      302 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      304 NEWTABLE                         R33 1 0
      306 LOADB                            R34 1
      307 SETTABLEKS                       R34 R33 K41 ["align-y-center"]
      309 SETTABLEKS                       R33 R32 K24 ["tag"]
      311 GETUPVAL                         R34 14
      312 CALL                             R34 0 1
      313 JUMPIFNOT                        R34 ; [+11]
      314 GETIMPORT                        R33 K44 [UDim2.new]
      316 LOADN                            R34 1
      317 GETUPVAL                         R36 15
      318 GETTABLEKS                       R36 R36 K45 ["PROPERTY_WIDTH"]
      320 MINUS                            R35 R36
      321 LOADN                            R36 1
      322 LOADN                            R37 0
      323 CALL                             R33 4 1
      324 JUMP                             ; [+7]
      325 GETIMPORT                        R33 K44 [UDim2.new]
      327 LOADK                            R34 K46 [0.6]
      328 LOADN                            R35 0
      329 LOADN                            R36 1
      330 LOADN                            R37 0
      331 CALL                             R33 4 1
      332 SETTABLEKS                       R33 R32 K39 ["Size"]
      334 DUPTABLE                         R33 K49 [{"ParameterLabel", "ParameterLabelInput"}]
      335 GETUPVAL                         R34 0
      336 GETTABLEKS                       R34 R34 K22 ["createElement"]
      338 GETUPVAL                         R35 13
      339 GETTABLEKS                       R35 R35 K50 ["Text"]
      341 DUPTABLE                         R36 K56 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      342 MOVE                             R37 R4
      343 CALL                             R37 0 1
      344 SETTABLEKS                       R37 R36 K25 ["LayoutOrder"]
      346 NEWTABLE                         R37 2 0
      348 LOADB                            R38 1
      349 SETTABLE                         R38 R37 R25
      350 LOADB                            R38 1
      351 SETTABLEKS                       R38 R37 K57 ["text-truncate-split"]
      353 SETTABLEKS                       R37 R36 K24 ["tag"]
      355 SETTABLEKS                       R11 R36 K50 ["Text"]
      357 GETUPVAL                         R37 13
      358 GETTABLEKS                       R37 R37 K58 ["Enums"]
      360 GETTABLEKS                       R37 R37 K59 ["InputSize"]
      362 GETTABLEKS                       R37 R37 K60 ["Small"]
      364 SETTABLEKS                       R37 R36 K51 ["size"]
      366 GETTABLEKS                       R38 R5 K61 ["enabled"]
      368 NOT                              R37 R38
      369 SETTABLEKS                       R37 R36 K52 ["Visible"]
      371 SETTABLEKS                       R20 R36 K26 ["onActivated"]
      373 SETTABLEKS                       R24 R36 K53 ["width"]
      375 GETUPVAL                         R38 9
      376 JUMPIFNOT                        R38 ; [+2]
      377 MOVE                             R37 R18
      378 JUMP                             ; [+1]
      379 LOADNIL                          R37
      380 SETTABLEKS                       R37 R36 K27 ["onSecondaryActivated"]
      382 CALL                             R34 2 1
      383 SETTABLEKS                       R34 R33 K47 ["ParameterLabel"]
      385 GETUPVAL                         R34 0
      386 GETTABLEKS                       R34 R34 K22 ["createElement"]
      388 GETUPVAL                         R35 13
      389 GETTABLEKS                       R35 R35 K62 ["TextInput"]
      391 DUPTABLE                         R36 K71 [{["LayoutOrder"], ["tag"], ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      392 MOVE                             R37 R4
      393 CALL                             R37 0 1
      394 SETTABLEKS                       R37 R36 K25 ["LayoutOrder"]
      396 SETTABLEKS                       R25 R36 K24 ["tag"]
      398 SETTABLEKS                       R12 R36 K63 ["text"]
      400 GETIMPORT                        R37 K75 [Enum.TextInputType.Default]
      402 SETTABLEKS                       R37 R36 K66 ["textInputType"]
      404 SETTABLEKS                       R13 R36 K67 ["onChanged"]
      406 GETUPVAL                         R37 13
      407 GETTABLEKS                       R37 R37 K58 ["Enums"]
      409 GETTABLEKS                       R37 R37 K59 ["InputSize"]
      411 GETTABLEKS                       R37 R37 K60 ["Small"]
      413 SETTABLEKS                       R37 R36 K51 ["size"]
      415 GETUPVAL                         R38 12
      416 JUMPIFNOT                        R38 ; [+2]
      417 LOADNIL                          R37
      418 JUMP                             ; [+1]
      419 MOVE                             R37 R24
      420 SETTABLEKS                       R37 R36 K53 ["width"]
      422 GETTABLEKS                       R37 R5 K61 ["enabled"]
      424 SETTABLEKS                       R37 R36 K52 ["Visible"]
      426 SETTABLEKS                       R6 R36 K68 ["textBoxRef"]
      428 SETTABLEKS                       R21 R36 K69 ["onFocusLost"]
      430 CALL                             R34 2 1
      431 SETTABLEKS                       R34 R33 K48 ["ParameterLabelInput"]
      433 CALL                             R30 3 1
      434 SETTABLEKS                       R30 R29 K33 ["ParameterLabelContainer"]
      436 GETUPVAL                         R30 0
      437 GETTABLEKS                       R30 R30 K22 ["createElement"]
      439 GETUPVAL                         R31 13
      440 GETTABLEKS                       R31 R31 K23 ["View"]
      442 DUPTABLE                         R32 K77 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      443 MOVE                             R33 R4
      444 CALL                             R33 0 1
      445 SETTABLEKS                       R33 R32 K25 ["LayoutOrder"]
      447 NEWTABLE                         R33 1 0
      449 LOADB                            R34 1
      450 SETTABLEKS                       R34 R33 K41 ["align-y-center"]
      452 SETTABLEKS                       R33 R32 K24 ["tag"]
      454 GETUPVAL                         R34 14
      455 CALL                             R34 0 1
      456 JUMPIFNOT                        R34 ; [+10]
      457 GETIMPORT                        R33 K44 [UDim2.new]
      459 LOADN                            R34 0
      460 GETUPVAL                         R35 15
      461 GETTABLEKS                       R35 R35 K45 ["PROPERTY_WIDTH"]
      463 LOADN                            R36 1
      464 LOADN                            R37 0
      465 CALL                             R33 4 1
      466 JUMP                             ; [+7]
      467 GETIMPORT                        R33 K44 [UDim2.new]
      469 LOADK                            R34 K78 [0.4]
      470 LOADN                            R35 0
      471 LOADN                            R36 1
      472 LOADN                            R37 0
      473 CALL                             R33 4 1
      474 SETTABLEKS                       R33 R32 K39 ["Size"]
      476 DUPTABLE                         R33 K80 [{"affordance"}]
      477 GETUPVAL                         R34 13
      478 GETTABLEKS                       R34 R34 K58 ["Enums"]
      480 GETTABLEKS                       R34 R34 K81 ["StateLayerAffordance"]
      482 GETTABLEKS                       R34 R34 K82 ["None"]
      484 SETTABLEKS                       R34 R33 K79 ["affordance"]
      486 SETTABLEKS                       R33 R32 K76 ["stateLayer"]
      488 GETUPVAL                         R34 9
      489 JUMPIFNOT                        R34 ; [+2]
      490 MOVE                             R33 R19
      491 JUMP                             ; [+1]
      492 LOADNIL                          R33
      493 SETTABLEKS                       R33 R32 K26 ["onActivated"]
      495 GETUPVAL                         R34 9
      496 JUMPIFNOT                        R34 ; [+2]
      497 MOVE                             R33 R18
      498 JUMP                             ; [+1]
      499 LOADNIL                          R33
      500 SETTABLEKS                       R33 R32 K27 ["onSecondaryActivated"]
      502 DUPTABLE                         R33 K84 [{"Input"}]
      503 SETTABLEKS                       R22 R33 K83 ["Input"]
      505 CALL                             R30 3 1
      506 SETTABLEKS                       R30 R29 K34 ["ParameterInputContainer"]
      508 GETUPVAL                         R30 0
      509 GETTABLEKS                       R30 R30 K22 ["createElement"]
      511 GETUPVAL                         R31 16
      512 DUPTABLE                         R32 K90 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      513 SETTABLEKS                       R8 R32 K85 ["isOpen"]
      515 SETTABLEKS                       R19 R32 K86 ["close"]
      517 GETTABLEKS                       R33 R0 K7 ["node"]
      519 GETTABLEKS                       R33 R33 K8 ["name"]
      521 SETTABLEKS                       R33 R32 K87 ["parameterName"]
      523 SETTABLEKS                       R20 R32 K88 ["triggerRename"]
      525 SETTABLEKS                       R7 R32 K89 ["anchorRef"]
      527 CALL                             R30 2 1
      528 SETTABLEKS                       R30 R29 K35 ["ParameterPaneItemContextMenu"]
      530 CALL                             R26 3 -1
      531 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_sanitizeParameterNames"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K13 ["GraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["NodeViewTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Components"]
       44 GETTABLEKS                       R7 R7 K15 ["ParameterContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Components"]
       51 GETTABLEKS                       R8 R8 K16 ["ParameterOverrideContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Components"]
       58 GETTABLEKS                       R9 R9 K17 ["ParameterPane"]
       60 GETTABLEKS                       R9 R9 K18 ["Constants"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Components"]
       67 GETTABLEKS                       R10 R10 K17 ["ParameterPane"]
       69 GETTABLEKS                       R10 R10 K19 ["ParameterPaneItemContextMenu"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Components"]
       76 GETTABLEKS                       R11 R11 K20 ["CompositorNodeProperty"]
       78 GETTABLEKS                       R11 R11 K21 ["PropertyComponent"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K12 ["Components"]
       85 GETTABLEKS                       R12 R12 K20 ["CompositorNodeProperty"]
       87 GETTABLEKS                       R12 R12 K22 ["PropertyConstants"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K10 ["Parent"]
       94 GETTABLEKS                       R13 R13 K23 ["React"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K10 ["Parent"]
      101 GETTABLEKS                       R14 R14 K24 ["ReactUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K10 ["Parent"]
      108 GETTABLEKS                       R15 R15 K25 ["SignalsReact"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K27 [game]
      113 LOADK                            R17 K28 ["AnimGraphUIImproveParameterPaneItemRightClick"]
      114 LOADB                            R18 0
      115 NAMECALL                         R15 R15 K29 ["DefineFastFlag"]
      117 CALL                             R15 3 1
      118 GETIMPORT                        R16 K27 [game]
      120 LOADK                            R18 K30 ["AnimGraphUISelectParameter"]
      121 LOADB                            R19 0
      122 NAMECALL                         R16 R16 K29 ["DefineFastFlag"]
      124 CALL                             R16 3 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K8 ["Flags"]
      129 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimGraphUIClearOverridesOnParameterPaneChanged"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K8 ["Flags"]
      136 GETTABLEKS                       R19 R19 K32 ["getFFlagAnimGraphUIResizeParameterPane"]
      138 CALL                             R18 1 1
      139 DUPCLOSURE                       R19 K33 [PROTO_15]
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R9
      157 RETURN                           R19 1
