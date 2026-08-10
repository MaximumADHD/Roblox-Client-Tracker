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
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R1 3
       10 JUMPIFEQ                         R0 R1 ; [+6]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K1 ["removeParameterOverride"]
       15 GETUPVAL                         R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

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
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R2
      111 NEWTABLE                         R18 0 4
      113 MOVE                             R19 R14
      114 MOVE                             R20 R10
      115 GETTABLEKS                       R21 R1 K13 ["setParameter"]
      117 GETTABLEKS                       R22 R2 K14 ["removeParameterOverride"]
      119 SETLIST                          R18 R19 4 [1]
      121 CALL                             R16 2 1
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      125 NEWCLOSURE                       R18 P4
      126 CAPTURE                          VAL R9
      127 NEWTABLE                         R19 0 0
      129 CALL                             R17 2 1
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      133 NEWCLOSURE                       R19 P5
      134 CAPTURE                          VAL R9
      135 NEWTABLE                         R20 0 0
      137 CALL                             R18 2 1
      138 GETUPVAL                         R19 0
      139 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      141 NEWCLOSURE                       R20 P6
      142 CAPTURE                          UPVAL U9
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R6
      148 NEWTABLE                         R21 0 4
      150 MOVE                             R22 R10
      151 MOVE                             R23 R5
      152 MOVE                             R24 R6
      153 MOVE                             R25 R18
      154 SETLIST                          R21 R22 4 [1]
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      160 NEWCLOSURE                       R21 P7
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R5
      165 NEWTABLE                         R22 0 4
      167 MOVE                             R23 R10
      168 MOVE                             R24 R11
      169 MOVE                             R25 R5
      170 MOVE                             R26 R15
      171 SETLIST                          R22 R23 4 [1]
      173 CALL                             R20 2 1
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R21 R21 K6 ["useMemo"]
      177 NEWCLOSURE                       R22 P8
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          UPVAL U10
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R16
      183 NEWTABLE                         R23 0 3
      185 MOVE                             R24 R14
      186 GETTABLEKS                       R25 R0 K7 ["node"]
      188 GETTABLEKS                       R25 R25 K15 ["nodeType"]
      190 MOVE                             R26 R16
      191 SETLIST                          R23 R24 3 [1]
      193 CALL                             R21 2 1
      194 GETUPVAL                         R22 0
      195 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      197 NEWCLOSURE                       R23 P9
      198 CAPTURE                          UPVAL U9
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R3
      202 NEWTABLE                         R24 0 3
      204 GETTABLEKS                       R25 R0 K7 ["node"]
      206 GETTABLEKS                       R25 R25 K8 ["name"]
      208 GETTABLEKS                       R26 R3 K16 ["selectAllParameterNodesWithName"]
      210 MOVE                             R27 R18
      211 SETLIST                          R24 R25 3 [1]
      213 CALL                             R22 2 1
      214 GETUPVAL                         R23 11
      215 GETTABLEKS                       R23 R23 K17 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      217 LOADK                            R24 K18 ["align-y-center text-title-small text-align-x-left text-align-y-center"]
      218 GETUPVAL                         R25 12
      219 JUMPIFNOT                        R25 ; [+4]
      220 MOVE                             R25 R24
      221 LOADK                            R26 K19 [" auto-xy"]
      222 CONCAT                           R24 R25 R26
      223 JUMP                             ; [+3]
      224 MOVE                             R25 R24
      225 LOADK                            R26 K20 [" size-full-full"]
      226 CONCAT                           R24 R25 R26
      227 GETUPVAL                         R25 0
      228 GETTABLEKS                       R25 R25 K21 ["createElement"]
      230 GETUPVAL                         R26 13
      231 GETTABLEKS                       R26 R26 K22 ["View"]
      233 DUPTABLE                         R27 K28 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      234 NEWTABLE                         R28 2 0
      236 LOADB                            R29 1
      237 SETTABLEKS                       R29 R28 K29 ["row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall"]
      239 GETUPVAL                         R29 14
      240 CALL                             R29 0 1
      241 SETTABLEKS                       R29 R28 K30 ["flex-x-between padding-x-small"]
      243 SETTABLEKS                       R28 R27 K23 ["tag"]
      245 GETTABLEKS                       R28 R0 K24 ["LayoutOrder"]
      247 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      249 SETTABLEKS                       R22 R27 K25 ["onActivated"]
      251 SETTABLEKS                       R17 R27 K26 ["onSecondaryActivated"]
      253 SETTABLEKS                       R7 R27 K27 ["ref"]
      255 DUPTABLE                         R28 K35 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      256 GETUPVAL                         R30 14
      257 CALL                             R30 0 1
      258 NOT                              R29 R30
      259 JUMPIFNOT                        R29 ; [+12]
      260 GETUPVAL                         R29 0
      261 GETTABLEKS                       R29 R29 K21 ["createElement"]
      263 GETUPVAL                         R30 13
      264 GETTABLEKS                       R30 R30 K22 ["View"]
      266 DUPTABLE                         R31 K37 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      267 MOVE                             R32 R4
      268 CALL                             R32 0 1
      269 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      271 CALL                             R29 2 1
      272 SETTABLEKS                       R29 R28 K31 ["Spacer"]
      274 GETUPVAL                         R29 0
      275 GETTABLEKS                       R29 R29 K21 ["createElement"]
      277 GETUPVAL                         R30 13
      278 GETTABLEKS                       R30 R30 K22 ["View"]
      280 DUPTABLE                         R31 K39 [{"LayoutOrder", "tag", "Size"}]
      281 MOVE                             R32 R4
      282 CALL                             R32 0 1
      283 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      285 NEWTABLE                         R32 2 0
      287 LOADB                            R33 1
      288 SETTABLEKS                       R33 R32 K40 ["align-y-center"]
      290 GETUPVAL                         R34 15
      291 CALL                             R34 0 1
      292 NOT                              R33 R34
      293 JUMPIFNOT                        R33 ; [+3]
      294 GETUPVAL                         R34 14
      295 CALL                             R34 0 1
      296 NOT                              R33 R34
      297 SETTABLEKS                       R33 R32 K41 ["size-2000-full"]
      299 SETTABLEKS                       R32 R31 K23 ["tag"]
      301 GETUPVAL                         R33 14
      302 CALL                             R33 0 1
      303 JUMPIFNOT                        R33 ; [+11]
      304 GETIMPORT                        R32 K44 [UDim2.new]
      306 LOADN                            R33 1
      307 GETUPVAL                         R35 16
      308 GETTABLEKS                       R35 R35 K45 ["PROPERTY_WIDTH"]
      310 MINUS                            R34 R35
      311 LOADN                            R35 1
      312 LOADN                            R36 0
      313 CALL                             R32 4 1
      314 JUMP                             ; [+12]
      315 GETUPVAL                         R33 15
      316 CALL                             R33 0 1
      317 JUMPIFNOT                        R33 ; [+8]
      318 GETIMPORT                        R32 K44 [UDim2.new]
      320 LOADK                            R33 K46 [0.6]
      321 LOADN                            R34 0
      322 LOADN                            R35 1
      323 LOADN                            R36 0
      324 CALL                             R32 4 1
      325 JUMP                             ; [+1]
      326 LOADNIL                          R32
      327 SETTABLEKS                       R32 R31 K38 ["Size"]
      329 DUPTABLE                         R32 K49 [{"ParameterLabel", "ParameterLabelInput"}]
      330 GETUPVAL                         R33 0
      331 GETTABLEKS                       R33 R33 K21 ["createElement"]
      333 GETUPVAL                         R34 13
      334 GETTABLEKS                       R34 R34 K50 ["Text"]
      336 DUPTABLE                         R35 K56 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      337 MOVE                             R36 R4
      338 CALL                             R36 0 1
      339 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      341 NEWTABLE                         R36 2 0
      343 LOADB                            R37 1
      344 SETTABLE                         R37 R36 R24
      345 LOADB                            R37 1
      346 SETTABLEKS                       R37 R36 K57 ["text-truncate-split"]
      348 SETTABLEKS                       R36 R35 K23 ["tag"]
      350 SETTABLEKS                       R10 R35 K50 ["Text"]
      352 GETUPVAL                         R36 13
      353 GETTABLEKS                       R36 R36 K58 ["Enums"]
      355 GETTABLEKS                       R36 R36 K59 ["InputSize"]
      357 GETTABLEKS                       R36 R36 K60 ["Small"]
      359 SETTABLEKS                       R36 R35 K51 ["size"]
      361 GETTABLEKS                       R37 R5 K61 ["enabled"]
      363 NOT                              R36 R37
      364 SETTABLEKS                       R36 R35 K52 ["Visible"]
      366 SETTABLEKS                       R19 R35 K25 ["onActivated"]
      368 SETTABLEKS                       R23 R35 K53 ["width"]
      370 GETUPVAL                         R37 9
      371 JUMPIFNOT                        R37 ; [+2]
      372 MOVE                             R36 R17
      373 JUMP                             ; [+1]
      374 LOADNIL                          R36
      375 SETTABLEKS                       R36 R35 K26 ["onSecondaryActivated"]
      377 CALL                             R33 2 1
      378 SETTABLEKS                       R33 R32 K47 ["ParameterLabel"]
      380 GETUPVAL                         R33 0
      381 GETTABLEKS                       R33 R33 K21 ["createElement"]
      383 GETUPVAL                         R34 13
      384 GETTABLEKS                       R34 R34 K62 ["TextInput"]
      386 DUPTABLE                         R35 K71 [{["LayoutOrder"], ["tag"], ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      387 MOVE                             R36 R4
      388 CALL                             R36 0 1
      389 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      391 SETTABLEKS                       R24 R35 K23 ["tag"]
      393 SETTABLEKS                       R11 R35 K63 ["text"]
      395 GETIMPORT                        R36 K75 [Enum.TextInputType.Default]
      397 SETTABLEKS                       R36 R35 K66 ["textInputType"]
      399 SETTABLEKS                       R12 R35 K67 ["onChanged"]
      401 GETUPVAL                         R36 13
      402 GETTABLEKS                       R36 R36 K58 ["Enums"]
      404 GETTABLEKS                       R36 R36 K59 ["InputSize"]
      406 GETTABLEKS                       R36 R36 K60 ["Small"]
      408 SETTABLEKS                       R36 R35 K51 ["size"]
      410 GETUPVAL                         R37 12
      411 JUMPIFNOT                        R37 ; [+2]
      412 LOADNIL                          R36
      413 JUMP                             ; [+1]
      414 MOVE                             R36 R23
      415 SETTABLEKS                       R36 R35 K53 ["width"]
      417 GETTABLEKS                       R36 R5 K61 ["enabled"]
      419 SETTABLEKS                       R36 R35 K52 ["Visible"]
      421 SETTABLEKS                       R6 R35 K68 ["textBoxRef"]
      423 SETTABLEKS                       R20 R35 K69 ["onFocusLost"]
      425 CALL                             R33 2 1
      426 SETTABLEKS                       R33 R32 K48 ["ParameterLabelInput"]
      428 CALL                             R29 3 1
      429 SETTABLEKS                       R29 R28 K32 ["ParameterLabelContainer"]
      431 GETUPVAL                         R29 0
      432 GETTABLEKS                       R29 R29 K21 ["createElement"]
      434 GETUPVAL                         R30 13
      435 GETTABLEKS                       R30 R30 K22 ["View"]
      437 DUPTABLE                         R31 K77 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      438 MOVE                             R32 R4
      439 CALL                             R32 0 1
      440 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      442 NEWTABLE                         R32 2 0
      444 LOADB                            R33 1
      445 SETTABLEKS                       R33 R32 K40 ["align-y-center"]
      447 GETUPVAL                         R34 15
      448 CALL                             R34 0 1
      449 NOT                              R33 R34
      450 JUMPIFNOT                        R33 ; [+3]
      451 GETUPVAL                         R34 14
      452 CALL                             R34 0 1
      453 NOT                              R33 R34
      454 SETTABLEKS                       R33 R32 K78 ["size-2200-600"]
      456 SETTABLEKS                       R32 R31 K23 ["tag"]
      458 GETUPVAL                         R33 14
      459 CALL                             R33 0 1
      460 JUMPIFNOT                        R33 ; [+10]
      461 GETIMPORT                        R32 K44 [UDim2.new]
      463 LOADN                            R33 0
      464 GETUPVAL                         R34 16
      465 GETTABLEKS                       R34 R34 K45 ["PROPERTY_WIDTH"]
      467 LOADN                            R35 1
      468 LOADN                            R36 0
      469 CALL                             R32 4 1
      470 JUMP                             ; [+12]
      471 GETUPVAL                         R33 15
      472 CALL                             R33 0 1
      473 JUMPIFNOT                        R33 ; [+8]
      474 GETIMPORT                        R32 K44 [UDim2.new]
      476 LOADK                            R33 K79 [0.4]
      477 LOADN                            R34 0
      478 LOADN                            R35 1
      479 LOADN                            R36 0
      480 CALL                             R32 4 1
      481 JUMP                             ; [+1]
      482 LOADNIL                          R32
      483 SETTABLEKS                       R32 R31 K38 ["Size"]
      485 GETUPVAL                         R33 17
      486 CALL                             R33 0 1
      487 JUMPIFNOT                        R33 ; [+11]
      488 DUPTABLE                         R32 K81 [{"affordance"}]
      489 GETUPVAL                         R33 13
      490 GETTABLEKS                       R33 R33 K58 ["Enums"]
      492 GETTABLEKS                       R33 R33 K82 ["StateLayerAffordance"]
      494 GETTABLEKS                       R33 R33 K83 ["None"]
      496 SETTABLEKS                       R33 R32 K80 ["affordance"]
      498 JUMP                             ; [+1]
      499 LOADNIL                          R32
      500 SETTABLEKS                       R32 R31 K76 ["stateLayer"]
      502 GETUPVAL                         R33 9
      503 JUMPIFNOT                        R33 ; [+2]
      504 MOVE                             R32 R18
      505 JUMP                             ; [+1]
      506 LOADNIL                          R32
      507 SETTABLEKS                       R32 R31 K25 ["onActivated"]
      509 GETUPVAL                         R33 9
      510 JUMPIFNOT                        R33 ; [+2]
      511 MOVE                             R32 R17
      512 JUMP                             ; [+1]
      513 LOADNIL                          R32
      514 SETTABLEKS                       R32 R31 K26 ["onSecondaryActivated"]
      516 DUPTABLE                         R32 K85 [{"Input"}]
      517 SETTABLEKS                       R21 R32 K84 ["Input"]
      519 CALL                             R29 3 1
      520 SETTABLEKS                       R29 R28 K33 ["ParameterInputContainer"]
      522 GETUPVAL                         R29 0
      523 GETTABLEKS                       R29 R29 K21 ["createElement"]
      525 GETUPVAL                         R30 18
      526 DUPTABLE                         R31 K91 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      527 SETTABLEKS                       R8 R31 K86 ["isOpen"]
      529 SETTABLEKS                       R18 R31 K87 ["close"]
      531 GETTABLEKS                       R32 R0 K7 ["node"]
      533 GETTABLEKS                       R32 R32 K8 ["name"]
      535 SETTABLEKS                       R32 R31 K88 ["parameterName"]
      537 SETTABLEKS                       R19 R31 K89 ["triggerRename"]
      539 SETTABLEKS                       R7 R31 K90 ["anchorRef"]
      541 CALL                             R29 2 1
      542 SETTABLEKS                       R29 R28 K34 ["ParameterPaneItemContextMenu"]
      544 CALL                             R25 3 -1
      545 RETURN                           R25 -1

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
