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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setParameter"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
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
       15 DUPCLOSURE                       R3 K22 [PROTO_8]
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

PROTO_11:
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

PROTO_12:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["createNextOrder"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["useToggleState"]
       21 LOADB                            R5 0
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["useRef"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["useRef"]
       31 LOADNIL                          R7
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K5 ["useState"]
       36 LOADB                            R8 0
       37 CALL                             R7 1 2
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R11 0 1
       45 GETTABLEKS                       R12 R0 K7 ["node"]
       47 GETTABLEKS                       R12 R12 K8 ["name"]
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K5 ["useState"]
       55 MOVE                             R11 R9
       56 CALL                             R10 1 2
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K9 ["useSignalState"]
       60 GETTABLEKS                       R13 R1 K10 ["observeParameters"]
       62 CALL                             R12 1 1
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       66 NEWCLOSURE                       R14 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R12
       69 NEWTABLE                         R15 0 2
       71 GETTABLEKS                       R16 R0 K7 ["node"]
       73 GETTABLEKS                       R16 R16 K8 ["name"]
       75 MOVE                             R17 R12
       76 SETLIST                          R15 R16 2 [1]
       78 CALL                             R13 2 1
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K11 ["useCallback"]
       82 NEWCLOSURE                       R15 P2
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          UPVAL U6
       87 NEWTABLE                         R16 0 2
       89 MOVE                             R17 R9
       90 GETTABLEKS                       R18 R2 K12 ["renameParameter"]
       92 SETLIST                          R16 R17 2 [1]
       94 CALL                             R14 2 1
       95 GETUPVAL                         R15 0
       96 GETTABLEKS                       R15 R15 K11 ["useCallback"]
       98 NEWCLOSURE                       R16 P3
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R9
      101 NEWTABLE                         R17 0 2
      103 MOVE                             R18 R9
      104 GETTABLEKS                       R19 R1 K13 ["setParameter"]
      106 SETLIST                          R17 R18 2 [1]
      108 CALL                             R15 2 1
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R16 R16 K11 ["useCallback"]
      112 NEWCLOSURE                       R17 P4
      113 CAPTURE                          VAL R8
      114 NEWTABLE                         R18 0 0
      116 CALL                             R16 2 1
      117 GETUPVAL                         R17 0
      118 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      120 NEWCLOSURE                       R18 P5
      121 CAPTURE                          VAL R8
      122 NEWTABLE                         R19 0 0
      124 CALL                             R17 2 1
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      128 NEWCLOSURE                       R19 P6
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 NEWTABLE                         R20 0 4
      137 MOVE                             R21 R9
      138 MOVE                             R22 R4
      139 MOVE                             R23 R5
      140 MOVE                             R24 R17
      141 SETLIST                          R20 R21 4 [1]
      143 CALL                             R18 2 1
      144 GETUPVAL                         R19 0
      145 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      147 NEWCLOSURE                       R20 P7
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R4
      152 NEWTABLE                         R21 0 4
      154 MOVE                             R22 R9
      155 MOVE                             R23 R10
      156 MOVE                             R24 R4
      157 MOVE                             R25 R14
      158 SETLIST                          R21 R22 4 [1]
      160 CALL                             R19 2 1
      161 GETUPVAL                         R20 0
      162 GETTABLEKS                       R20 R20 K6 ["useMemo"]
      164 NEWCLOSURE                       R21 P8
      165 CAPTURE                          UPVAL U0
      166 CAPTURE                          UPVAL U8
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R15
      170 NEWTABLE                         R22 0 3
      172 MOVE                             R23 R13
      173 GETTABLEKS                       R24 R0 K7 ["node"]
      175 GETTABLEKS                       R24 R24 K14 ["nodeType"]
      177 MOVE                             R25 R15
      178 SETLIST                          R22 R23 3 [1]
      180 CALL                             R20 2 1
      181 GETUPVAL                         R21 0
      182 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      184 NEWCLOSURE                       R22 P9
      185 CAPTURE                          UPVAL U7
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R2
      189 NEWTABLE                         R23 0 3
      191 GETTABLEKS                       R24 R0 K7 ["node"]
      193 GETTABLEKS                       R24 R24 K8 ["name"]
      195 GETTABLEKS                       R25 R2 K15 ["selectAllParameterNodesWithName"]
      197 MOVE                             R26 R17
      198 SETLIST                          R23 R24 3 [1]
      200 CALL                             R21 2 1
      201 GETUPVAL                         R22 9
      202 GETTABLEKS                       R22 R22 K16 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      204 LOADK                            R23 K17 ["align-y-center text-title-small text-align-x-left text-align-y-center"]
      205 GETUPVAL                         R24 10
      206 JUMPIFNOT                        R24 ; [+4]
      207 MOVE                             R24 R23
      208 LOADK                            R25 K18 [" auto-xy"]
      209 CONCAT                           R23 R24 R25
      210 JUMP                             ; [+3]
      211 MOVE                             R24 R23
      212 LOADK                            R25 K19 [" size-full-full"]
      213 CONCAT                           R23 R24 R25
      214 GETUPVAL                         R24 0
      215 GETTABLEKS                       R24 R24 K20 ["createElement"]
      217 GETUPVAL                         R25 11
      218 GETTABLEKS                       R25 R25 K21 ["View"]
      220 DUPTABLE                         R26 K27 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      221 NEWTABLE                         R27 2 0
      223 LOADB                            R28 1
      224 SETTABLEKS                       R28 R27 K28 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      226 GETUPVAL                         R28 12
      227 CALL                             R28 0 1
      228 SETTABLEKS                       R28 R27 K29 ["flex-x-between padding-x-small"]
      230 SETTABLEKS                       R27 R26 K22 ["tag"]
      232 GETTABLEKS                       R27 R0 K23 ["LayoutOrder"]
      234 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      236 SETTABLEKS                       R21 R26 K24 ["onActivated"]
      238 SETTABLEKS                       R16 R26 K25 ["onSecondaryActivated"]
      240 SETTABLEKS                       R6 R26 K26 ["ref"]
      242 DUPTABLE                         R27 K34 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      243 GETUPVAL                         R29 12
      244 CALL                             R29 0 1
      245 NOT                              R28 R29
      246 JUMPIFNOT                        R28 ; [+12]
      247 GETUPVAL                         R28 0
      248 GETTABLEKS                       R28 R28 K20 ["createElement"]
      250 GETUPVAL                         R29 11
      251 GETTABLEKS                       R29 R29 K21 ["View"]
      253 DUPTABLE                         R30 K36 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      254 MOVE                             R31 R3
      255 CALL                             R31 0 1
      256 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      258 CALL                             R28 2 1
      259 SETTABLEKS                       R28 R27 K30 ["Spacer"]
      261 GETUPVAL                         R28 0
      262 GETTABLEKS                       R28 R28 K20 ["createElement"]
      264 GETUPVAL                         R29 11
      265 GETTABLEKS                       R29 R29 K21 ["View"]
      267 DUPTABLE                         R30 K38 [{"LayoutOrder", "tag", "Size"}]
      268 MOVE                             R31 R3
      269 CALL                             R31 0 1
      270 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      272 NEWTABLE                         R31 2 0
      274 LOADB                            R32 1
      275 SETTABLEKS                       R32 R31 K39 ["align-y-center"]
      277 GETUPVAL                         R33 13
      278 CALL                             R33 0 1
      279 NOT                              R32 R33
      280 JUMPIFNOT                        R32 ; [+3]
      281 GETUPVAL                         R33 12
      282 CALL                             R33 0 1
      283 NOT                              R32 R33
      284 SETTABLEKS                       R32 R31 K40 ["size-2000-full"]
      286 SETTABLEKS                       R31 R30 K22 ["tag"]
      288 GETUPVAL                         R32 12
      289 CALL                             R32 0 1
      290 JUMPIFNOT                        R32 ; [+11]
      291 GETIMPORT                        R31 K43 [UDim2.new]
      293 LOADN                            R32 1
      294 GETUPVAL                         R34 14
      295 GETTABLEKS                       R34 R34 K44 ["PROPERTY_WIDTH"]
      297 MINUS                            R33 R34
      298 LOADN                            R34 1
      299 LOADN                            R35 0
      300 CALL                             R31 4 1
      301 JUMP                             ; [+12]
      302 GETUPVAL                         R32 13
      303 CALL                             R32 0 1
      304 JUMPIFNOT                        R32 ; [+8]
      305 GETIMPORT                        R31 K43 [UDim2.new]
      307 LOADK                            R32 K45 [0.6]
      308 LOADN                            R33 0
      309 LOADN                            R34 1
      310 LOADN                            R35 0
      311 CALL                             R31 4 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R31
      314 SETTABLEKS                       R31 R30 K37 ["Size"]
      316 DUPTABLE                         R31 K48 [{"ParameterLabel", "ParameterLabelInput"}]
      317 GETUPVAL                         R32 0
      318 GETTABLEKS                       R32 R32 K20 ["createElement"]
      320 GETUPVAL                         R33 11
      321 GETTABLEKS                       R33 R33 K49 ["Text"]
      323 DUPTABLE                         R34 K55 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      324 MOVE                             R35 R3
      325 CALL                             R35 0 1
      326 SETTABLEKS                       R35 R34 K23 ["LayoutOrder"]
      328 NEWTABLE                         R35 2 0
      330 LOADB                            R36 1
      331 SETTABLE                         R36 R35 R23
      332 LOADB                            R36 1
      333 SETTABLEKS                       R36 R35 K56 ["text-truncate-split"]
      335 SETTABLEKS                       R35 R34 K22 ["tag"]
      337 SETTABLEKS                       R9 R34 K49 ["Text"]
      339 GETUPVAL                         R35 11
      340 GETTABLEKS                       R35 R35 K57 ["Enums"]
      342 GETTABLEKS                       R35 R35 K58 ["InputSize"]
      344 GETTABLEKS                       R35 R35 K59 ["Small"]
      346 SETTABLEKS                       R35 R34 K50 ["size"]
      348 GETTABLEKS                       R36 R4 K60 ["enabled"]
      350 NOT                              R35 R36
      351 SETTABLEKS                       R35 R34 K51 ["Visible"]
      353 SETTABLEKS                       R18 R34 K24 ["onActivated"]
      355 SETTABLEKS                       R22 R34 K52 ["width"]
      357 GETUPVAL                         R36 7
      358 JUMPIFNOT                        R36 ; [+2]
      359 MOVE                             R35 R16
      360 JUMP                             ; [+1]
      361 LOADNIL                          R35
      362 SETTABLEKS                       R35 R34 K25 ["onSecondaryActivated"]
      364 CALL                             R32 2 1
      365 SETTABLEKS                       R32 R31 K46 ["ParameterLabel"]
      367 GETUPVAL                         R32 0
      368 GETTABLEKS                       R32 R32 K20 ["createElement"]
      370 GETUPVAL                         R33 11
      371 GETTABLEKS                       R33 R33 K61 ["TextInput"]
      373 DUPTABLE                         R34 K70 [{["LayoutOrder"], ["tag"], ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      374 MOVE                             R35 R3
      375 CALL                             R35 0 1
      376 SETTABLEKS                       R35 R34 K23 ["LayoutOrder"]
      378 SETTABLEKS                       R23 R34 K22 ["tag"]
      380 SETTABLEKS                       R10 R34 K62 ["text"]
      382 GETIMPORT                        R35 K74 [Enum.TextInputType.Default]
      384 SETTABLEKS                       R35 R34 K65 ["textInputType"]
      386 SETTABLEKS                       R11 R34 K66 ["onChanged"]
      388 GETUPVAL                         R35 11
      389 GETTABLEKS                       R35 R35 K57 ["Enums"]
      391 GETTABLEKS                       R35 R35 K58 ["InputSize"]
      393 GETTABLEKS                       R35 R35 K59 ["Small"]
      395 SETTABLEKS                       R35 R34 K50 ["size"]
      397 GETUPVAL                         R36 10
      398 JUMPIFNOT                        R36 ; [+2]
      399 LOADNIL                          R35
      400 JUMP                             ; [+1]
      401 MOVE                             R35 R22
      402 SETTABLEKS                       R35 R34 K52 ["width"]
      404 GETTABLEKS                       R35 R4 K60 ["enabled"]
      406 SETTABLEKS                       R35 R34 K51 ["Visible"]
      408 SETTABLEKS                       R5 R34 K67 ["textBoxRef"]
      410 SETTABLEKS                       R19 R34 K68 ["onFocusLost"]
      412 CALL                             R32 2 1
      413 SETTABLEKS                       R32 R31 K47 ["ParameterLabelInput"]
      415 CALL                             R28 3 1
      416 SETTABLEKS                       R28 R27 K31 ["ParameterLabelContainer"]
      418 GETUPVAL                         R28 0
      419 GETTABLEKS                       R28 R28 K20 ["createElement"]
      421 GETUPVAL                         R29 11
      422 GETTABLEKS                       R29 R29 K21 ["View"]
      424 DUPTABLE                         R30 K76 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      425 MOVE                             R31 R3
      426 CALL                             R31 0 1
      427 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      429 NEWTABLE                         R31 2 0
      431 LOADB                            R32 1
      432 SETTABLEKS                       R32 R31 K39 ["align-y-center"]
      434 GETUPVAL                         R33 13
      435 CALL                             R33 0 1
      436 NOT                              R32 R33
      437 JUMPIFNOT                        R32 ; [+3]
      438 GETUPVAL                         R33 12
      439 CALL                             R33 0 1
      440 NOT                              R32 R33
      441 SETTABLEKS                       R32 R31 K77 ["size-2200-600"]
      443 SETTABLEKS                       R31 R30 K22 ["tag"]
      445 GETUPVAL                         R32 12
      446 CALL                             R32 0 1
      447 JUMPIFNOT                        R32 ; [+10]
      448 GETIMPORT                        R31 K43 [UDim2.new]
      450 LOADN                            R32 0
      451 GETUPVAL                         R33 14
      452 GETTABLEKS                       R33 R33 K44 ["PROPERTY_WIDTH"]
      454 LOADN                            R34 1
      455 LOADN                            R35 0
      456 CALL                             R31 4 1
      457 JUMP                             ; [+12]
      458 GETUPVAL                         R32 13
      459 CALL                             R32 0 1
      460 JUMPIFNOT                        R32 ; [+8]
      461 GETIMPORT                        R31 K43 [UDim2.new]
      463 LOADK                            R32 K78 [0.4]
      464 LOADN                            R33 0
      465 LOADN                            R34 1
      466 LOADN                            R35 0
      467 CALL                             R31 4 1
      468 JUMP                             ; [+1]
      469 LOADNIL                          R31
      470 SETTABLEKS                       R31 R30 K37 ["Size"]
      472 GETUPVAL                         R32 15
      473 CALL                             R32 0 1
      474 JUMPIFNOT                        R32 ; [+11]
      475 DUPTABLE                         R31 K80 [{"affordance"}]
      476 GETUPVAL                         R32 11
      477 GETTABLEKS                       R32 R32 K57 ["Enums"]
      479 GETTABLEKS                       R32 R32 K81 ["StateLayerAffordance"]
      481 GETTABLEKS                       R32 R32 K82 ["None"]
      483 SETTABLEKS                       R32 R31 K79 ["affordance"]
      485 JUMP                             ; [+1]
      486 LOADNIL                          R31
      487 SETTABLEKS                       R31 R30 K75 ["stateLayer"]
      489 GETUPVAL                         R32 7
      490 JUMPIFNOT                        R32 ; [+2]
      491 MOVE                             R31 R17
      492 JUMP                             ; [+1]
      493 LOADNIL                          R31
      494 SETTABLEKS                       R31 R30 K24 ["onActivated"]
      496 GETUPVAL                         R32 7
      497 JUMPIFNOT                        R32 ; [+2]
      498 MOVE                             R31 R16
      499 JUMP                             ; [+1]
      500 LOADNIL                          R31
      501 SETTABLEKS                       R31 R30 K25 ["onSecondaryActivated"]
      503 DUPTABLE                         R31 K84 [{"Input"}]
      504 SETTABLEKS                       R20 R31 K83 ["Input"]
      506 CALL                             R28 3 1
      507 SETTABLEKS                       R28 R27 K32 ["ParameterInputContainer"]
      509 GETUPVAL                         R28 0
      510 GETTABLEKS                       R28 R28 K20 ["createElement"]
      512 GETUPVAL                         R29 16
      513 DUPTABLE                         R30 K90 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      514 SETTABLEKS                       R7 R30 K85 ["isOpen"]
      516 SETTABLEKS                       R17 R30 K86 ["close"]
      518 GETTABLEKS                       R31 R0 K7 ["node"]
      520 GETTABLEKS                       R31 R31 K8 ["name"]
      522 SETTABLEKS                       R31 R30 K87 ["parameterName"]
      524 SETTABLEKS                       R18 R30 K88 ["triggerRename"]
      526 SETTABLEKS                       R6 R30 K89 ["anchorRef"]
      528 CALL                             R28 2 1
      529 SETTABLEKS                       R28 R27 K33 ["ParameterPaneItemContextMenu"]
      531 CALL                             R24 3 -1
      532 RETURN                           R24 -1

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
       51 GETTABLEKS                       R8 R8 K16 ["ParameterPane"]
       53 GETTABLEKS                       R8 R8 K17 ["Constants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K12 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["ParameterPane"]
       62 GETTABLEKS                       R9 R9 K18 ["ParameterPaneItemContextMenu"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["CompositorNodeProperty"]
       71 GETTABLEKS                       R10 R10 K20 ["PropertyComponent"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Components"]
       78 GETTABLEKS                       R11 R11 K19 ["CompositorNodeProperty"]
       80 GETTABLEKS                       R11 R11 K21 ["PropertyConstants"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K10 ["Parent"]
       87 GETTABLEKS                       R12 R12 K22 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K10 ["Parent"]
       94 GETTABLEKS                       R13 R13 K23 ["ReactUtils"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K10 ["Parent"]
      101 GETTABLEKS                       R14 R14 K24 ["SignalsReact"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K26 [game]
      106 LOADK                            R16 K27 ["AnimGraphUIImproveParameterPaneItemRightClick"]
      107 LOADB                            R17 0
      108 NAMECALL                         R14 R14 K28 ["DefineFastFlag"]
      110 CALL                             R14 3 1
      111 GETIMPORT                        R15 K26 [game]
      113 LOADK                            R17 K29 ["AnimGraphUISelectParameter"]
      114 LOADB                            R18 0
      115 NAMECALL                         R15 R15 K28 ["DefineFastFlag"]
      117 CALL                             R15 3 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K8 ["Flags"]
      122 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUIParameterPaneHighlight"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K8 ["Flags"]
      129 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimGraphUIParametersPanePosition"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K8 ["Flags"]
      136 GETTABLEKS                       R19 R19 K32 ["getFFlagAnimGraphUIResizeParameterPane"]
      138 CALL                             R18 1 1
      139 DUPCLOSURE                       R19 K33 [PROTO_12]
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R8
      157 RETURN                           R19 1
