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
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["removeParameterOverride"]
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

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
       46 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R12 0 1
       52 GETTABLEKS                       R13 R0 K7 ["node"]
       54 GETTABLEKS                       R13 R13 K8 ["name"]
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K5 ["useState"]
       62 MOVE                             R12 R10
       63 CALL                             R11 1 2
       64 GETUPVAL                         R13 5
       65 GETTABLEKS                       R13 R13 K9 ["useSignalState"]
       67 GETTABLEKS                       R14 R1 K10 ["observeParameters"]
       69 CALL                             R13 1 1
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K6 ["useMemo"]
       73 NEWCLOSURE                       R15 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R13
       76 NEWTABLE                         R16 0 2
       78 GETTABLEKS                       R17 R0 K7 ["node"]
       80 GETTABLEKS                       R17 R17 K8 ["name"]
       82 MOVE                             R18 R13
       83 SETLIST                          R16 R17 2 [1]
       85 CALL                             R14 2 1
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K11 ["useCallback"]
       89 NEWCLOSURE                       R16 P2
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          UPVAL U7
       94 NEWTABLE                         R17 0 2
       96 MOVE                             R18 R10
       97 GETTABLEKS                       R19 R3 K12 ["renameParameter"]
       99 SETLIST                          R17 R18 2 [1]
      101 CALL                             R15 2 1
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R16 R16 K11 ["useCallback"]
      105 NEWCLOSURE                       R17 P3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R10
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          VAL R2
      110 NEWTABLE                         R18 0 3
      112 MOVE                             R19 R10
      113 GETTABLEKS                       R20 R1 K13 ["setParameter"]
      115 GETTABLEKS                       R21 R2 K14 ["removeParameterOverride"]
      117 SETLIST                          R18 R19 3 [1]
      119 CALL                             R16 2 1
      120 GETUPVAL                         R17 0
      121 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      123 NEWCLOSURE                       R18 P4
      124 CAPTURE                          VAL R9
      125 NEWTABLE                         R19 0 0
      127 CALL                             R17 2 1
      128 GETUPVAL                         R18 0
      129 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      131 NEWCLOSURE                       R19 P5
      132 CAPTURE                          VAL R9
      133 NEWTABLE                         R20 0 0
      135 CALL                             R18 2 1
      136 GETUPVAL                         R19 0
      137 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      139 NEWCLOSURE                       R20 P6
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 NEWTABLE                         R21 0 4
      148 MOVE                             R22 R10
      149 MOVE                             R23 R5
      150 MOVE                             R24 R6
      151 MOVE                             R25 R18
      152 SETLIST                          R21 R22 4 [1]
      154 CALL                             R19 2 1
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      158 NEWCLOSURE                       R21 P7
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R5
      163 NEWTABLE                         R22 0 4
      165 MOVE                             R23 R10
      166 MOVE                             R24 R11
      167 MOVE                             R25 R5
      168 MOVE                             R26 R15
      169 SETLIST                          R22 R23 4 [1]
      171 CALL                             R20 2 1
      172 GETUPVAL                         R21 0
      173 GETTABLEKS                       R21 R21 K6 ["useMemo"]
      175 NEWCLOSURE                       R22 P8
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R16
      181 NEWTABLE                         R23 0 3
      183 MOVE                             R24 R14
      184 GETTABLEKS                       R25 R0 K7 ["node"]
      186 GETTABLEKS                       R25 R25 K15 ["nodeType"]
      188 MOVE                             R26 R16
      189 SETLIST                          R23 R24 3 [1]
      191 CALL                             R21 2 1
      192 GETUPVAL                         R22 0
      193 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      195 NEWCLOSURE                       R23 P9
      196 CAPTURE                          UPVAL U9
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R3
      200 NEWTABLE                         R24 0 3
      202 GETTABLEKS                       R25 R0 K7 ["node"]
      204 GETTABLEKS                       R25 R25 K8 ["name"]
      206 GETTABLEKS                       R26 R3 K16 ["selectAllParameterNodesWithName"]
      208 MOVE                             R27 R18
      209 SETLIST                          R24 R25 3 [1]
      211 CALL                             R22 2 1
      212 GETUPVAL                         R23 11
      213 GETTABLEKS                       R23 R23 K17 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      215 LOADK                            R24 K18 ["align-y-center text-title-small text-align-x-left text-align-y-center"]
      216 GETUPVAL                         R25 12
      217 JUMPIFNOT                        R25 ; [+4]
      218 MOVE                             R25 R24
      219 LOADK                            R26 K19 [" auto-xy"]
      220 CONCAT                           R24 R25 R26
      221 JUMP                             ; [+3]
      222 MOVE                             R25 R24
      223 LOADK                            R26 K20 [" size-full-full"]
      224 CONCAT                           R24 R25 R26
      225 GETUPVAL                         R25 0
      226 GETTABLEKS                       R25 R25 K21 ["createElement"]
      228 GETUPVAL                         R26 13
      229 GETTABLEKS                       R26 R26 K22 ["View"]
      231 DUPTABLE                         R27 K28 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      232 NEWTABLE                         R28 2 0
      234 LOADB                            R29 1
      235 SETTABLEKS                       R29 R28 K29 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      237 GETUPVAL                         R29 14
      238 CALL                             R29 0 1
      239 SETTABLEKS                       R29 R28 K30 ["flex-x-between padding-x-small"]
      241 SETTABLEKS                       R28 R27 K23 ["tag"]
      243 GETTABLEKS                       R28 R0 K24 ["LayoutOrder"]
      245 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      247 SETTABLEKS                       R22 R27 K25 ["onActivated"]
      249 SETTABLEKS                       R17 R27 K26 ["onSecondaryActivated"]
      251 SETTABLEKS                       R7 R27 K27 ["ref"]
      253 DUPTABLE                         R28 K35 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      254 GETUPVAL                         R30 14
      255 CALL                             R30 0 1
      256 NOT                              R29 R30
      257 JUMPIFNOT                        R29 ; [+12]
      258 GETUPVAL                         R29 0
      259 GETTABLEKS                       R29 R29 K21 ["createElement"]
      261 GETUPVAL                         R30 13
      262 GETTABLEKS                       R30 R30 K22 ["View"]
      264 DUPTABLE                         R31 K37 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      265 MOVE                             R32 R4
      266 CALL                             R32 0 1
      267 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K31 ["Spacer"]
      272 GETUPVAL                         R29 0
      273 GETTABLEKS                       R29 R29 K21 ["createElement"]
      275 GETUPVAL                         R30 13
      276 GETTABLEKS                       R30 R30 K22 ["View"]
      278 DUPTABLE                         R31 K39 [{"LayoutOrder", "tag", "Size"}]
      279 MOVE                             R32 R4
      280 CALL                             R32 0 1
      281 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      283 NEWTABLE                         R32 2 0
      285 LOADB                            R33 1
      286 SETTABLEKS                       R33 R32 K40 ["align-y-center"]
      288 GETUPVAL                         R34 15
      289 CALL                             R34 0 1
      290 NOT                              R33 R34
      291 JUMPIFNOT                        R33 ; [+3]
      292 GETUPVAL                         R34 14
      293 CALL                             R34 0 1
      294 NOT                              R33 R34
      295 SETTABLEKS                       R33 R32 K41 ["size-2000-full"]
      297 SETTABLEKS                       R32 R31 K23 ["tag"]
      299 GETUPVAL                         R33 14
      300 CALL                             R33 0 1
      301 JUMPIFNOT                        R33 ; [+11]
      302 GETIMPORT                        R32 K44 [UDim2.new]
      304 LOADN                            R33 1
      305 GETUPVAL                         R35 16
      306 GETTABLEKS                       R35 R35 K45 ["PROPERTY_WIDTH"]
      308 MINUS                            R34 R35
      309 LOADN                            R35 1
      310 LOADN                            R36 0
      311 CALL                             R32 4 1
      312 JUMP                             ; [+12]
      313 GETUPVAL                         R33 15
      314 CALL                             R33 0 1
      315 JUMPIFNOT                        R33 ; [+8]
      316 GETIMPORT                        R32 K44 [UDim2.new]
      318 LOADK                            R33 K46 [0.6]
      319 LOADN                            R34 0
      320 LOADN                            R35 1
      321 LOADN                            R36 0
      322 CALL                             R32 4 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R32
      325 SETTABLEKS                       R32 R31 K38 ["Size"]
      327 DUPTABLE                         R32 K49 [{"ParameterLabel", "ParameterLabelInput"}]
      328 GETUPVAL                         R33 0
      329 GETTABLEKS                       R33 R33 K21 ["createElement"]
      331 GETUPVAL                         R34 13
      332 GETTABLEKS                       R34 R34 K50 ["Text"]
      334 DUPTABLE                         R35 K56 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      335 MOVE                             R36 R4
      336 CALL                             R36 0 1
      337 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      339 NEWTABLE                         R36 2 0
      341 LOADB                            R37 1
      342 SETTABLE                         R37 R36 R24
      343 LOADB                            R37 1
      344 SETTABLEKS                       R37 R36 K57 ["text-truncate-split"]
      346 SETTABLEKS                       R36 R35 K23 ["tag"]
      348 SETTABLEKS                       R10 R35 K50 ["Text"]
      350 GETUPVAL                         R36 13
      351 GETTABLEKS                       R36 R36 K58 ["Enums"]
      353 GETTABLEKS                       R36 R36 K59 ["InputSize"]
      355 GETTABLEKS                       R36 R36 K60 ["Small"]
      357 SETTABLEKS                       R36 R35 K51 ["size"]
      359 GETTABLEKS                       R37 R5 K61 ["enabled"]
      361 NOT                              R36 R37
      362 SETTABLEKS                       R36 R35 K52 ["Visible"]
      364 SETTABLEKS                       R19 R35 K25 ["onActivated"]
      366 SETTABLEKS                       R23 R35 K53 ["width"]
      368 GETUPVAL                         R37 9
      369 JUMPIFNOT                        R37 ; [+2]
      370 MOVE                             R36 R17
      371 JUMP                             ; [+1]
      372 LOADNIL                          R36
      373 SETTABLEKS                       R36 R35 K26 ["onSecondaryActivated"]
      375 CALL                             R33 2 1
      376 SETTABLEKS                       R33 R32 K47 ["ParameterLabel"]
      378 GETUPVAL                         R33 0
      379 GETTABLEKS                       R33 R33 K21 ["createElement"]
      381 GETUPVAL                         R34 13
      382 GETTABLEKS                       R34 R34 K62 ["TextInput"]
      384 DUPTABLE                         R35 K71 [{["LayoutOrder"], ["tag"], ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      385 MOVE                             R36 R4
      386 CALL                             R36 0 1
      387 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      389 SETTABLEKS                       R24 R35 K23 ["tag"]
      391 SETTABLEKS                       R11 R35 K63 ["text"]
      393 GETIMPORT                        R36 K75 [Enum.TextInputType.Default]
      395 SETTABLEKS                       R36 R35 K66 ["textInputType"]
      397 SETTABLEKS                       R12 R35 K67 ["onChanged"]
      399 GETUPVAL                         R36 13
      400 GETTABLEKS                       R36 R36 K58 ["Enums"]
      402 GETTABLEKS                       R36 R36 K59 ["InputSize"]
      404 GETTABLEKS                       R36 R36 K60 ["Small"]
      406 SETTABLEKS                       R36 R35 K51 ["size"]
      408 GETUPVAL                         R37 12
      409 JUMPIFNOT                        R37 ; [+2]
      410 LOADNIL                          R36
      411 JUMP                             ; [+1]
      412 MOVE                             R36 R23
      413 SETTABLEKS                       R36 R35 K53 ["width"]
      415 GETTABLEKS                       R36 R5 K61 ["enabled"]
      417 SETTABLEKS                       R36 R35 K52 ["Visible"]
      419 SETTABLEKS                       R6 R35 K68 ["textBoxRef"]
      421 SETTABLEKS                       R20 R35 K69 ["onFocusLost"]
      423 CALL                             R33 2 1
      424 SETTABLEKS                       R33 R32 K48 ["ParameterLabelInput"]
      426 CALL                             R29 3 1
      427 SETTABLEKS                       R29 R28 K32 ["ParameterLabelContainer"]
      429 GETUPVAL                         R29 0
      430 GETTABLEKS                       R29 R29 K21 ["createElement"]
      432 GETUPVAL                         R30 13
      433 GETTABLEKS                       R30 R30 K22 ["View"]
      435 DUPTABLE                         R31 K77 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      436 MOVE                             R32 R4
      437 CALL                             R32 0 1
      438 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      440 NEWTABLE                         R32 2 0
      442 LOADB                            R33 1
      443 SETTABLEKS                       R33 R32 K40 ["align-y-center"]
      445 GETUPVAL                         R34 15
      446 CALL                             R34 0 1
      447 NOT                              R33 R34
      448 JUMPIFNOT                        R33 ; [+3]
      449 GETUPVAL                         R34 14
      450 CALL                             R34 0 1
      451 NOT                              R33 R34
      452 SETTABLEKS                       R33 R32 K78 ["size-2200-600"]
      454 SETTABLEKS                       R32 R31 K23 ["tag"]
      456 GETUPVAL                         R33 14
      457 CALL                             R33 0 1
      458 JUMPIFNOT                        R33 ; [+10]
      459 GETIMPORT                        R32 K44 [UDim2.new]
      461 LOADN                            R33 0
      462 GETUPVAL                         R34 16
      463 GETTABLEKS                       R34 R34 K45 ["PROPERTY_WIDTH"]
      465 LOADN                            R35 1
      466 LOADN                            R36 0
      467 CALL                             R32 4 1
      468 JUMP                             ; [+12]
      469 GETUPVAL                         R33 15
      470 CALL                             R33 0 1
      471 JUMPIFNOT                        R33 ; [+8]
      472 GETIMPORT                        R32 K44 [UDim2.new]
      474 LOADK                            R33 K79 [0.4]
      475 LOADN                            R34 0
      476 LOADN                            R35 1
      477 LOADN                            R36 0
      478 CALL                             R32 4 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R32
      481 SETTABLEKS                       R32 R31 K38 ["Size"]
      483 GETUPVAL                         R33 17
      484 CALL                             R33 0 1
      485 JUMPIFNOT                        R33 ; [+11]
      486 DUPTABLE                         R32 K81 [{"affordance"}]
      487 GETUPVAL                         R33 13
      488 GETTABLEKS                       R33 R33 K58 ["Enums"]
      490 GETTABLEKS                       R33 R33 K82 ["StateLayerAffordance"]
      492 GETTABLEKS                       R33 R33 K83 ["None"]
      494 SETTABLEKS                       R33 R32 K80 ["affordance"]
      496 JUMP                             ; [+1]
      497 LOADNIL                          R32
      498 SETTABLEKS                       R32 R31 K76 ["stateLayer"]
      500 GETUPVAL                         R33 9
      501 JUMPIFNOT                        R33 ; [+2]
      502 MOVE                             R32 R18
      503 JUMP                             ; [+1]
      504 LOADNIL                          R32
      505 SETTABLEKS                       R32 R31 K25 ["onActivated"]
      507 GETUPVAL                         R33 9
      508 JUMPIFNOT                        R33 ; [+2]
      509 MOVE                             R32 R17
      510 JUMP                             ; [+1]
      511 LOADNIL                          R32
      512 SETTABLEKS                       R32 R31 K26 ["onSecondaryActivated"]
      514 DUPTABLE                         R32 K85 [{"Input"}]
      515 SETTABLEKS                       R21 R32 K84 ["Input"]
      517 CALL                             R29 3 1
      518 SETTABLEKS                       R29 R28 K33 ["ParameterInputContainer"]
      520 GETUPVAL                         R29 0
      521 GETTABLEKS                       R29 R29 K21 ["createElement"]
      523 GETUPVAL                         R30 18
      524 DUPTABLE                         R31 K91 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      525 SETTABLEKS                       R8 R31 K86 ["isOpen"]
      527 SETTABLEKS                       R18 R31 K87 ["close"]
      529 GETTABLEKS                       R32 R0 K7 ["node"]
      531 GETTABLEKS                       R32 R32 K8 ["name"]
      533 SETTABLEKS                       R32 R31 K88 ["parameterName"]
      535 SETTABLEKS                       R19 R31 K89 ["triggerRename"]
      537 SETTABLEKS                       R7 R31 K90 ["anchorRef"]
      539 CALL                             R29 2 1
      540 SETTABLEKS                       R29 R28 K34 ["ParameterPaneItemContextMenu"]
      542 CALL                             R25 3 -1
      543 RETURN                           R25 -1

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
      153 DUPCLOSURE                       R21 K35 [PROTO_12]
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
