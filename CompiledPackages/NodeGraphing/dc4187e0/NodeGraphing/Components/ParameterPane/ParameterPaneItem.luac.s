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
        4 DUPTABLE                         R2 K20 [{["LayoutOrder"] = 2, ["Value"], ["Type"], ["tags"] = "align-y-center size-full-full", ["Name"] = "", ["Label"] = , ["IsParameterOverridden"] = False, ["IsDefaultValue"] = False, ["IsDisabled"], ["OnParameterOverrideRevert"], ["NodeId"], ["OnChanged"], ["testId"] = "ParameterPaneItem-PropertyInput"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K3 ["Value"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K21 ["node"]
       11 GETTABLEKS                       R3 R3 K22 ["nodeType"]
       13 SETTABLEKS                       R3 R2 K4 ["Type"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K23 ["readonly"]
       18 SETTABLEKS                       R3 R2 K14 ["IsDisabled"]
       20 DUPCLOSURE                       R3 K24 [PROTO_11]
       21 SETTABLEKS                       R3 R2 K15 ["OnParameterOverrideRevert"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K21 ["node"]
       26 GETTABLEKS                       R3 R3 K25 ["id"]
       28 SETTABLEKS                       R3 R2 K16 ["NodeId"]
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U4
       32 SETTABLEKS                       R3 R2 K17 ["OnChanged"]
       34 CALL                             R0 2 -1
       35 RETURN                           R0 -1

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
      202 NEWTABLE                         R24 0 4
      204 MOVE                             R25 R15
      205 GETTABLEKS                       R26 R0 K7 ["node"]
      207 GETTABLEKS                       R26 R26 K13 ["nodeType"]
      209 MOVE                             R27 R17
      210 GETTABLEKS                       R28 R0 K17 ["readonly"]
      212 SETLIST                          R24 R25 4 [1]
      214 CALL                             R22 2 1
      215 GETUPVAL                         R23 0
      216 GETTABLEKS                       R23 R23 K11 ["useCallback"]
      218 NEWCLOSURE                       R24 P10
      219 CAPTURE                          UPVAL U9
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R3
      223 NEWTABLE                         R25 0 3
      225 GETTABLEKS                       R26 R0 K7 ["node"]
      227 GETTABLEKS                       R26 R26 K8 ["name"]
      229 GETTABLEKS                       R27 R3 K18 ["selectAllParameterNodesWithName"]
      231 MOVE                             R28 R19
      232 SETLIST                          R25 R26 3 [1]
      234 CALL                             R23 2 1
      235 GETUPVAL                         R24 11
      236 GETTABLEKS                       R24 R24 K19 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      238 LOADK                            R25 K20 ["align-y-center text-title-small text-align-x-left text-align-y-center"]
      239 GETUPVAL                         R26 12
      240 JUMPIFNOT                        R26 ; [+4]
      241 MOVE                             R26 R25
      242 LOADK                            R27 K21 [" auto-xy"]
      243 CONCAT                           R25 R26 R27
      244 JUMP                             ; [+3]
      245 MOVE                             R26 R25
      246 LOADK                            R27 K22 [" size-full-full"]
      247 CONCAT                           R25 R26 R27
      248 GETUPVAL                         R26 0
      249 GETTABLEKS                       R26 R26 K23 ["createElement"]
      251 GETUPVAL                         R27 13
      252 GETTABLEKS                       R27 R27 K24 ["View"]
      254 DUPTABLE                         R28 K30 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      255 NEWTABLE                         R29 2 0
      257 LOADB                            R30 1
      258 SETTABLEKS                       R30 R29 K31 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      260 GETUPVAL                         R30 14
      261 CALL                             R30 0 1
      262 SETTABLEKS                       R30 R29 K32 ["flex-x-between padding-x-small"]
      264 SETTABLEKS                       R29 R28 K25 ["tag"]
      266 GETTABLEKS                       R29 R0 K26 ["LayoutOrder"]
      268 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      270 GETTABLEKS                       R30 R0 K17 ["readonly"]
      272 JUMPIFNOT                        R30 ; [+2]
      273 LOADNIL                          R29
      274 JUMP                             ; [+1]
      275 MOVE                             R29 R23
      276 SETTABLEKS                       R29 R28 K27 ["onActivated"]
      278 GETTABLEKS                       R30 R0 K17 ["readonly"]
      280 JUMPIFNOT                        R30 ; [+2]
      281 LOADNIL                          R29
      282 JUMP                             ; [+1]
      283 MOVE                             R29 R18
      284 SETTABLEKS                       R29 R28 K28 ["onSecondaryActivated"]
      286 SETTABLEKS                       R7 R28 K29 ["ref"]
      288 DUPTABLE                         R29 K37 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      289 GETUPVAL                         R31 14
      290 CALL                             R31 0 1
      291 NOT                              R30 R31
      292 JUMPIFNOT                        R30 ; [+12]
      293 GETUPVAL                         R30 0
      294 GETTABLEKS                       R30 R30 K23 ["createElement"]
      296 GETUPVAL                         R31 13
      297 GETTABLEKS                       R31 R31 K24 ["View"]
      299 DUPTABLE                         R32 K39 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      300 MOVE                             R33 R4
      301 CALL                             R33 0 1
      302 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K33 ["Spacer"]
      307 GETUPVAL                         R30 0
      308 GETTABLEKS                       R30 R30 K23 ["createElement"]
      310 GETUPVAL                         R31 13
      311 GETTABLEKS                       R31 R31 K24 ["View"]
      313 DUPTABLE                         R32 K41 [{"LayoutOrder", "tag", "Size"}]
      314 MOVE                             R33 R4
      315 CALL                             R33 0 1
      316 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      318 NEWTABLE                         R33 2 0
      320 LOADB                            R34 1
      321 SETTABLEKS                       R34 R33 K42 ["align-y-center"]
      323 GETUPVAL                         R35 15
      324 CALL                             R35 0 1
      325 NOT                              R34 R35
      326 JUMPIFNOT                        R34 ; [+3]
      327 GETUPVAL                         R35 14
      328 CALL                             R35 0 1
      329 NOT                              R34 R35
      330 SETTABLEKS                       R34 R33 K43 ["size-2000-full"]
      332 SETTABLEKS                       R33 R32 K25 ["tag"]
      334 GETUPVAL                         R34 14
      335 CALL                             R34 0 1
      336 JUMPIFNOT                        R34 ; [+11]
      337 GETIMPORT                        R33 K46 [UDim2.new]
      339 LOADN                            R34 1
      340 GETUPVAL                         R36 16
      341 GETTABLEKS                       R36 R36 K47 ["PROPERTY_WIDTH"]
      343 MINUS                            R35 R36
      344 LOADN                            R36 1
      345 LOADN                            R37 0
      346 CALL                             R33 4 1
      347 JUMP                             ; [+12]
      348 GETUPVAL                         R34 15
      349 CALL                             R34 0 1
      350 JUMPIFNOT                        R34 ; [+8]
      351 GETIMPORT                        R33 K46 [UDim2.new]
      353 LOADK                            R34 K48 [0.6]
      354 LOADN                            R35 0
      355 LOADN                            R36 1
      356 LOADN                            R37 0
      357 CALL                             R33 4 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R33
      360 SETTABLEKS                       R33 R32 K40 ["Size"]
      362 DUPTABLE                         R33 K51 [{"ParameterLabel", "ParameterLabelInput"}]
      363 GETUPVAL                         R34 0
      364 GETTABLEKS                       R34 R34 K23 ["createElement"]
      366 GETUPVAL                         R35 13
      367 GETTABLEKS                       R35 R35 K52 ["Text"]
      369 DUPTABLE                         R36 K58 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      370 MOVE                             R37 R4
      371 CALL                             R37 0 1
      372 SETTABLEKS                       R37 R36 K26 ["LayoutOrder"]
      374 NEWTABLE                         R37 2 0
      376 LOADB                            R38 1
      377 SETTABLE                         R38 R37 R25
      378 LOADB                            R38 1
      379 SETTABLEKS                       R38 R37 K59 ["text-truncate-split"]
      381 SETTABLEKS                       R37 R36 K25 ["tag"]
      383 SETTABLEKS                       R11 R36 K52 ["Text"]
      385 GETUPVAL                         R37 13
      386 GETTABLEKS                       R37 R37 K60 ["Enums"]
      388 GETTABLEKS                       R37 R37 K61 ["InputSize"]
      390 GETTABLEKS                       R37 R37 K62 ["Small"]
      392 SETTABLEKS                       R37 R36 K53 ["size"]
      394 GETTABLEKS                       R38 R5 K63 ["enabled"]
      396 NOT                              R37 R38
      397 SETTABLEKS                       R37 R36 K54 ["Visible"]
      399 GETTABLEKS                       R38 R0 K17 ["readonly"]
      401 JUMPIFNOT                        R38 ; [+2]
      402 LOADNIL                          R37
      403 JUMP                             ; [+1]
      404 MOVE                             R37 R20
      405 SETTABLEKS                       R37 R36 K27 ["onActivated"]
      407 SETTABLEKS                       R24 R36 K55 ["width"]
      409 GETUPVAL                         R38 9
      410 JUMPIFNOT                        R38 ; [+5]
      411 GETTABLEKS                       R38 R0 K17 ["readonly"]
      413 JUMPIF                           R38 ; [+2]
      414 MOVE                             R37 R18
      415 JUMP                             ; [+1]
      416 LOADNIL                          R37
      417 SETTABLEKS                       R37 R36 K28 ["onSecondaryActivated"]
      419 CALL                             R34 2 1
      420 SETTABLEKS                       R34 R33 K49 ["ParameterLabel"]
      422 GETUPVAL                         R34 0
      423 GETTABLEKS                       R34 R34 K23 ["createElement"]
      425 GETUPVAL                         R35 13
      426 GETTABLEKS                       R35 R35 K64 ["TextInput"]
      428 DUPTABLE                         R36 K73 [{["LayoutOrder"], ["tag"], ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      429 MOVE                             R37 R4
      430 CALL                             R37 0 1
      431 SETTABLEKS                       R37 R36 K26 ["LayoutOrder"]
      433 SETTABLEKS                       R25 R36 K25 ["tag"]
      435 SETTABLEKS                       R12 R36 K65 ["text"]
      437 GETIMPORT                        R37 K77 [Enum.TextInputType.Default]
      439 SETTABLEKS                       R37 R36 K68 ["textInputType"]
      441 SETTABLEKS                       R13 R36 K69 ["onChanged"]
      443 GETUPVAL                         R37 13
      444 GETTABLEKS                       R37 R37 K60 ["Enums"]
      446 GETTABLEKS                       R37 R37 K61 ["InputSize"]
      448 GETTABLEKS                       R37 R37 K62 ["Small"]
      450 SETTABLEKS                       R37 R36 K53 ["size"]
      452 GETUPVAL                         R38 12
      453 JUMPIFNOT                        R38 ; [+2]
      454 LOADNIL                          R37
      455 JUMP                             ; [+1]
      456 MOVE                             R37 R24
      457 SETTABLEKS                       R37 R36 K55 ["width"]
      459 GETTABLEKS                       R37 R5 K63 ["enabled"]
      461 SETTABLEKS                       R37 R36 K54 ["Visible"]
      463 SETTABLEKS                       R6 R36 K70 ["textBoxRef"]
      465 SETTABLEKS                       R21 R36 K71 ["onFocusLost"]
      467 CALL                             R34 2 1
      468 SETTABLEKS                       R34 R33 K50 ["ParameterLabelInput"]
      470 CALL                             R30 3 1
      471 SETTABLEKS                       R30 R29 K34 ["ParameterLabelContainer"]
      473 GETUPVAL                         R30 0
      474 GETTABLEKS                       R30 R30 K23 ["createElement"]
      476 GETUPVAL                         R31 13
      477 GETTABLEKS                       R31 R31 K24 ["View"]
      479 DUPTABLE                         R32 K79 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      480 MOVE                             R33 R4
      481 CALL                             R33 0 1
      482 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      484 NEWTABLE                         R33 2 0
      486 LOADB                            R34 1
      487 SETTABLEKS                       R34 R33 K42 ["align-y-center"]
      489 GETUPVAL                         R35 15
      490 CALL                             R35 0 1
      491 NOT                              R34 R35
      492 JUMPIFNOT                        R34 ; [+3]
      493 GETUPVAL                         R35 14
      494 CALL                             R35 0 1
      495 NOT                              R34 R35
      496 SETTABLEKS                       R34 R33 K80 ["size-2200-600"]
      498 SETTABLEKS                       R33 R32 K25 ["tag"]
      500 GETUPVAL                         R34 14
      501 CALL                             R34 0 1
      502 JUMPIFNOT                        R34 ; [+10]
      503 GETIMPORT                        R33 K46 [UDim2.new]
      505 LOADN                            R34 0
      506 GETUPVAL                         R35 16
      507 GETTABLEKS                       R35 R35 K47 ["PROPERTY_WIDTH"]
      509 LOADN                            R36 1
      510 LOADN                            R37 0
      511 CALL                             R33 4 1
      512 JUMP                             ; [+12]
      513 GETUPVAL                         R34 15
      514 CALL                             R34 0 1
      515 JUMPIFNOT                        R34 ; [+8]
      516 GETIMPORT                        R33 K46 [UDim2.new]
      518 LOADK                            R34 K81 [0.4]
      519 LOADN                            R35 0
      520 LOADN                            R36 1
      521 LOADN                            R37 0
      522 CALL                             R33 4 1
      523 JUMP                             ; [+1]
      524 LOADNIL                          R33
      525 SETTABLEKS                       R33 R32 K40 ["Size"]
      527 GETUPVAL                         R34 17
      528 CALL                             R34 0 1
      529 JUMPIFNOT                        R34 ; [+11]
      530 DUPTABLE                         R33 K83 [{"affordance"}]
      531 GETUPVAL                         R34 13
      532 GETTABLEKS                       R34 R34 K60 ["Enums"]
      534 GETTABLEKS                       R34 R34 K84 ["StateLayerAffordance"]
      536 GETTABLEKS                       R34 R34 K85 ["None"]
      538 SETTABLEKS                       R34 R33 K82 ["affordance"]
      540 JUMP                             ; [+1]
      541 LOADNIL                          R33
      542 SETTABLEKS                       R33 R32 K78 ["stateLayer"]
      544 GETUPVAL                         R34 9
      545 JUMPIFNOT                        R34 ; [+5]
      546 GETTABLEKS                       R34 R0 K17 ["readonly"]
      548 JUMPIF                           R34 ; [+2]
      549 MOVE                             R33 R19
      550 JUMP                             ; [+1]
      551 LOADNIL                          R33
      552 SETTABLEKS                       R33 R32 K27 ["onActivated"]
      554 GETUPVAL                         R34 9
      555 JUMPIFNOT                        R34 ; [+5]
      556 GETTABLEKS                       R34 R0 K17 ["readonly"]
      558 JUMPIF                           R34 ; [+2]
      559 MOVE                             R33 R18
      560 JUMP                             ; [+1]
      561 LOADNIL                          R33
      562 SETTABLEKS                       R33 R32 K28 ["onSecondaryActivated"]
      564 DUPTABLE                         R33 K87 [{"Input"}]
      565 SETTABLEKS                       R22 R33 K86 ["Input"]
      567 CALL                             R30 3 1
      568 SETTABLEKS                       R30 R29 K35 ["ParameterInputContainer"]
      570 GETTABLEKS                       R31 R0 K17 ["readonly"]
      572 JUMPIFNOT                        R31 ; [+2]
      573 LOADNIL                          R30
      574 JUMP                             ; [+20]
      575 GETUPVAL                         R30 0
      576 GETTABLEKS                       R30 R30 K23 ["createElement"]
      578 GETUPVAL                         R31 18
      579 DUPTABLE                         R32 K93 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      580 SETTABLEKS                       R8 R32 K88 ["isOpen"]
      582 SETTABLEKS                       R19 R32 K89 ["close"]
      584 GETTABLEKS                       R33 R0 K7 ["node"]
      586 GETTABLEKS                       R33 R33 K8 ["name"]
      588 SETTABLEKS                       R33 R32 K90 ["parameterName"]
      590 SETTABLEKS                       R20 R32 K91 ["triggerRename"]
      592 SETTABLEKS                       R7 R32 K92 ["anchorRef"]
      594 CALL                             R30 2 1
      595 SETTABLEKS                       R30 R29 K36 ["ParameterPaneItemContextMenu"]
      597 CALL                             R26 3 -1
      598 RETURN                           R26 -1

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
      136 GETTABLEKS                       R19 R19 K32 ["getFFlagAnimGraphUIParameterPaneHighlight"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K8 ["Flags"]
      143 GETTABLEKS                       R20 R20 K33 ["getFFlagAnimGraphUIParametersPanePosition"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K8 ["Flags"]
      150 GETTABLEKS                       R21 R21 K34 ["getFFlagAnimGraphUIResizeParameterPane"]
      152 CALL                             R20 1 1
      153 DUPCLOSURE                       R21 K35 [PROTO_15]
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R9
      173 RETURN                           R21 1
