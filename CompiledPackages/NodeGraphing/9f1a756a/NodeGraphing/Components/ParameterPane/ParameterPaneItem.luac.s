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
      236 GETUPVAL                         R25 0
      237 GETTABLEKS                       R25 R25 K19 ["createElement"]
      239 GETUPVAL                         R26 12
      240 GETTABLEKS                       R26 R26 K20 ["View"]
      242 DUPTABLE                         R27 K26 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      243 NEWTABLE                         R28 2 0
      245 LOADB                            R29 1
      246 SETTABLEKS                       R29 R28 K27 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      248 GETUPVAL                         R29 13
      249 CALL                             R29 0 1
      250 SETTABLEKS                       R29 R28 K28 ["flex-x-between padding-x-small"]
      252 SETTABLEKS                       R28 R27 K21 ["tag"]
      254 GETTABLEKS                       R28 R0 K22 ["LayoutOrder"]
      256 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      258 SETTABLEKS                       R23 R27 K23 ["onActivated"]
      260 SETTABLEKS                       R18 R27 K24 ["onSecondaryActivated"]
      262 SETTABLEKS                       R7 R27 K25 ["ref"]
      264 DUPTABLE                         R28 K33 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      265 GETUPVAL                         R30 13
      266 CALL                             R30 0 1
      267 NOT                              R29 R30
      268 JUMPIFNOT                        R29 ; [+12]
      269 GETUPVAL                         R29 0
      270 GETTABLEKS                       R29 R29 K19 ["createElement"]
      272 GETUPVAL                         R30 12
      273 GETTABLEKS                       R30 R30 K20 ["View"]
      275 DUPTABLE                         R31 K35 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      276 MOVE                             R32 R4
      277 CALL                             R32 0 1
      278 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      280 CALL                             R29 2 1
      281 SETTABLEKS                       R29 R28 K29 ["Spacer"]
      283 GETUPVAL                         R29 0
      284 GETTABLEKS                       R29 R29 K19 ["createElement"]
      286 GETUPVAL                         R30 12
      287 GETTABLEKS                       R30 R30 K20 ["View"]
      289 DUPTABLE                         R31 K37 [{"LayoutOrder", "tag", "Size"}]
      290 MOVE                             R32 R4
      291 CALL                             R32 0 1
      292 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      294 NEWTABLE                         R32 1 0
      296 LOADB                            R33 1
      297 SETTABLEKS                       R33 R32 K38 ["align-y-center"]
      299 SETTABLEKS                       R32 R31 K21 ["tag"]
      301 GETUPVAL                         R33 13
      302 CALL                             R33 0 1
      303 JUMPIFNOT                        R33 ; [+11]
      304 GETIMPORT                        R32 K41 [UDim2.new]
      306 LOADN                            R33 1
      307 GETUPVAL                         R35 14
      308 GETTABLEKS                       R35 R35 K42 ["PROPERTY_WIDTH"]
      310 MINUS                            R34 R35
      311 LOADN                            R35 1
      312 LOADN                            R36 0
      313 CALL                             R32 4 1
      314 JUMP                             ; [+7]
      315 GETIMPORT                        R32 K41 [UDim2.new]
      317 LOADK                            R33 K43 [0.6]
      318 LOADN                            R34 0
      319 LOADN                            R35 1
      320 LOADN                            R36 0
      321 CALL                             R32 4 1
      322 SETTABLEKS                       R32 R31 K36 ["Size"]
      324 DUPTABLE                         R32 K46 [{"ParameterLabel", "ParameterLabelInput"}]
      325 GETUPVAL                         R33 0
      326 GETTABLEKS                       R33 R33 K19 ["createElement"]
      328 GETUPVAL                         R34 12
      329 GETTABLEKS                       R34 R34 K47 ["Text"]
      331 DUPTABLE                         R35 K53 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      332 MOVE                             R36 R4
      333 CALL                             R36 0 1
      334 SETTABLEKS                       R36 R35 K22 ["LayoutOrder"]
      336 NEWTABLE                         R36 2 0
      338 LOADB                            R37 1
      339 SETTABLEKS                       R37 R36 K54 ["align-y-center text-title-small text-align-x-left text-align-y-center auto-xy"]
      341 LOADB                            R37 1
      342 SETTABLEKS                       R37 R36 K55 ["text-truncate-split"]
      344 SETTABLEKS                       R36 R35 K21 ["tag"]
      346 SETTABLEKS                       R11 R35 K47 ["Text"]
      348 GETUPVAL                         R36 12
      349 GETTABLEKS                       R36 R36 K56 ["Enums"]
      351 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      353 GETTABLEKS                       R36 R36 K58 ["Small"]
      355 SETTABLEKS                       R36 R35 K48 ["size"]
      357 GETTABLEKS                       R37 R5 K59 ["enabled"]
      359 NOT                              R36 R37
      360 SETTABLEKS                       R36 R35 K49 ["Visible"]
      362 SETTABLEKS                       R20 R35 K23 ["onActivated"]
      364 SETTABLEKS                       R24 R35 K50 ["width"]
      366 GETUPVAL                         R37 9
      367 JUMPIFNOT                        R37 ; [+2]
      368 MOVE                             R36 R18
      369 JUMP                             ; [+1]
      370 LOADNIL                          R36
      371 SETTABLEKS                       R36 R35 K24 ["onSecondaryActivated"]
      373 CALL                             R33 2 1
      374 SETTABLEKS                       R33 R32 K44 ["ParameterLabel"]
      376 GETUPVAL                         R33 0
      377 GETTABLEKS                       R33 R33 K19 ["createElement"]
      379 GETUPVAL                         R34 12
      380 GETTABLEKS                       R34 R34 K60 ["TextInput"]
      382 DUPTABLE                         R35 K69 [{["LayoutOrder"], ["tag"] = "align-y-center text-title-small text-align-x-left text-align-y-center auto-xy", ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      383 MOVE                             R36 R4
      384 CALL                             R36 0 1
      385 SETTABLEKS                       R36 R35 K22 ["LayoutOrder"]
      387 SETTABLEKS                       R12 R35 K61 ["text"]
      389 GETIMPORT                        R36 K73 [Enum.TextInputType.Default]
      391 SETTABLEKS                       R36 R35 K64 ["textInputType"]
      393 SETTABLEKS                       R13 R35 K65 ["onChanged"]
      395 GETUPVAL                         R36 12
      396 GETTABLEKS                       R36 R36 K56 ["Enums"]
      398 GETTABLEKS                       R36 R36 K57 ["InputSize"]
      400 GETTABLEKS                       R36 R36 K58 ["Small"]
      402 SETTABLEKS                       R36 R35 K48 ["size"]
      404 GETTABLEKS                       R36 R5 K59 ["enabled"]
      406 SETTABLEKS                       R36 R35 K49 ["Visible"]
      408 SETTABLEKS                       R6 R35 K66 ["textBoxRef"]
      410 SETTABLEKS                       R21 R35 K67 ["onFocusLost"]
      412 CALL                             R33 2 1
      413 SETTABLEKS                       R33 R32 K45 ["ParameterLabelInput"]
      415 CALL                             R29 3 1
      416 SETTABLEKS                       R29 R28 K30 ["ParameterLabelContainer"]
      418 GETUPVAL                         R29 0
      419 GETTABLEKS                       R29 R29 K19 ["createElement"]
      421 GETUPVAL                         R30 12
      422 GETTABLEKS                       R30 R30 K20 ["View"]
      424 DUPTABLE                         R31 K75 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      425 MOVE                             R32 R4
      426 CALL                             R32 0 1
      427 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      429 NEWTABLE                         R32 1 0
      431 LOADB                            R33 1
      432 SETTABLEKS                       R33 R32 K38 ["align-y-center"]
      434 SETTABLEKS                       R32 R31 K21 ["tag"]
      436 GETUPVAL                         R33 13
      437 CALL                             R33 0 1
      438 JUMPIFNOT                        R33 ; [+10]
      439 GETIMPORT                        R32 K41 [UDim2.new]
      441 LOADN                            R33 0
      442 GETUPVAL                         R34 14
      443 GETTABLEKS                       R34 R34 K42 ["PROPERTY_WIDTH"]
      445 LOADN                            R35 1
      446 LOADN                            R36 0
      447 CALL                             R32 4 1
      448 JUMP                             ; [+7]
      449 GETIMPORT                        R32 K41 [UDim2.new]
      451 LOADK                            R33 K76 [0.4]
      452 LOADN                            R34 0
      453 LOADN                            R35 1
      454 LOADN                            R36 0
      455 CALL                             R32 4 1
      456 SETTABLEKS                       R32 R31 K36 ["Size"]
      458 DUPTABLE                         R32 K78 [{"affordance"}]
      459 GETUPVAL                         R33 12
      460 GETTABLEKS                       R33 R33 K56 ["Enums"]
      462 GETTABLEKS                       R33 R33 K79 ["StateLayerAffordance"]
      464 GETTABLEKS                       R33 R33 K80 ["None"]
      466 SETTABLEKS                       R33 R32 K77 ["affordance"]
      468 SETTABLEKS                       R32 R31 K74 ["stateLayer"]
      470 GETUPVAL                         R33 9
      471 JUMPIFNOT                        R33 ; [+2]
      472 MOVE                             R32 R19
      473 JUMP                             ; [+1]
      474 LOADNIL                          R32
      475 SETTABLEKS                       R32 R31 K23 ["onActivated"]
      477 GETUPVAL                         R33 9
      478 JUMPIFNOT                        R33 ; [+2]
      479 MOVE                             R32 R18
      480 JUMP                             ; [+1]
      481 LOADNIL                          R32
      482 SETTABLEKS                       R32 R31 K24 ["onSecondaryActivated"]
      484 DUPTABLE                         R32 K82 [{"Input"}]
      485 SETTABLEKS                       R22 R32 K81 ["Input"]
      487 CALL                             R29 3 1
      488 SETTABLEKS                       R29 R28 K31 ["ParameterInputContainer"]
      490 GETUPVAL                         R29 0
      491 GETTABLEKS                       R29 R29 K19 ["createElement"]
      493 GETUPVAL                         R30 15
      494 DUPTABLE                         R31 K88 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      495 SETTABLEKS                       R8 R31 K83 ["isOpen"]
      497 SETTABLEKS                       R19 R31 K84 ["close"]
      499 GETTABLEKS                       R32 R0 K7 ["node"]
      501 GETTABLEKS                       R32 R32 K8 ["name"]
      503 SETTABLEKS                       R32 R31 K85 ["parameterName"]
      505 SETTABLEKS                       R20 R31 K86 ["triggerRename"]
      507 SETTABLEKS                       R7 R31 K87 ["anchorRef"]
      509 CALL                             R29 2 1
      510 SETTABLEKS                       R29 R28 K32 ["ParameterPaneItemContextMenu"]
      512 CALL                             R25 3 -1
      513 RETURN                           R25 -1

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
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K8 ["Flags"]
      122 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUIClearOverridesOnParameterPaneChanged"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K8 ["Flags"]
      129 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimGraphUIResizeParameterPane"]
      131 CALL                             R17 1 1
      132 DUPCLOSURE                       R18 K32 [PROTO_15]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R9
      149 RETURN                           R18 1
