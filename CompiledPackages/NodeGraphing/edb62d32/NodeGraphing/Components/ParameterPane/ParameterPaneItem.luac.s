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
        1 GETTABLEKS                       R1 R1 K0 ["renameParameter"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

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
       17 JUMPIFEQ                         R0 R2 ; [+6]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K4 ["removeParameterOverride"]
       22 GETUPVAL                         R3 2
       23 CALL                             R2 1 0
       24 JUMPIFNOT                        R1 ; [+23]
       25 JUMPIFNOTEQKB                    R0 TRUE ; [+22]
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K5 ["current"]
       30 JUMPIFNOT                        R2 ; [+6]
       31 GETIMPORT                        R2 K8 [task.cancel]
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R3 R3 K5 ["current"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 5
       38 GETIMPORT                        R3 K10 [task.delay]
       40 LOADK                            R4 K11 [0.25]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K5 ["current"]
       48 RETURN                           R0 0

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
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 3
        6 GETTABLEKS                       R0 R0 K0 ["enable"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 4
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 GETTABLEKS                       R0 R0 K2 ["focus"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

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
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["node"]
        5 GETTABLEKS                       R0 R0 K1 ["name"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K2 ["selectAllParameterNodesWithName"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["node"]
       15 GETTABLEKS                       R1 R1 K1 ["name"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R11
       97 NEWTABLE                         R18 0 2
       99 MOVE                             R19 R11
      100 GETTABLEKS                       R20 R3 K12 ["renameParameter"]
      102 SETLIST                          R18 R19 2 [1]
      104 CALL                             R16 2 1
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      108 NEWCLOSURE                       R18 P3
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R10
      115 NEWTABLE                         R19 0 5
      117 MOVE                             R20 R15
      118 MOVE                             R21 R11
      119 GETTABLEKS                       R22 R0 K7 ["node"]
      121 GETTABLEKS                       R22 R22 K13 ["nodeType"]
      123 GETTABLEKS                       R23 R1 K14 ["setParameter"]
      125 GETTABLEKS                       R24 R2 K15 ["removeParameterOverride"]
      127 SETLIST                          R19 R20 5 [1]
      129 CALL                             R17 2 1
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      133 NEWCLOSURE                       R19 P4
      134 CAPTURE                          VAL R10
      135 NEWTABLE                         R20 0 0
      137 CALL                             R18 2 0
      138 GETUPVAL                         R18 0
      139 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      141 NEWCLOSURE                       R19 P5
      142 CAPTURE                          VAL R9
      143 NEWTABLE                         R20 0 0
      145 CALL                             R18 2 1
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      149 NEWCLOSURE                       R20 P6
      150 CAPTURE                          VAL R9
      151 NEWTABLE                         R21 0 0
      153 CALL                             R19 2 1
      154 GETUPVAL                         R20 0
      155 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      157 NEWCLOSURE                       R21 P7
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R6
      163 NEWTABLE                         R22 0 4
      165 MOVE                             R23 R11
      166 MOVE                             R24 R5
      167 MOVE                             R25 R6
      168 MOVE                             R26 R19
      169 SETLIST                          R22 R23 4 [1]
      171 CALL                             R20 2 1
      172 GETUPVAL                         R21 0
      173 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      175 NEWCLOSURE                       R22 P8
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R5
      180 NEWTABLE                         R23 0 4
      182 MOVE                             R24 R11
      183 MOVE                             R25 R12
      184 MOVE                             R26 R5
      185 MOVE                             R27 R16
      186 SETLIST                          R23 R24 4 [1]
      188 CALL                             R21 2 1
      189 GETUPVAL                         R22 0
      190 GETTABLEKS                       R22 R22 K6 ["useMemo"]
      192 NEWCLOSURE                       R23 P9
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R0
      197 CAPTURE                          VAL R17
      198 NEWTABLE                         R24 0 3
      200 MOVE                             R25 R15
      201 GETTABLEKS                       R26 R0 K7 ["node"]
      203 GETTABLEKS                       R26 R26 K13 ["nodeType"]
      205 MOVE                             R27 R17
      206 SETLIST                          R24 R25 3 [1]
      208 CALL                             R22 2 1
      209 GETUPVAL                         R23 0
      210 GETTABLEKS                       R23 R23 K11 ["useCallback"]
      212 NEWCLOSURE                       R24 P10
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R3
      216 NEWTABLE                         R25 0 3
      218 GETTABLEKS                       R26 R0 K7 ["node"]
      220 GETTABLEKS                       R26 R26 K8 ["name"]
      222 GETTABLEKS                       R27 R3 K17 ["selectAllParameterNodesWithName"]
      224 MOVE                             R28 R19
      225 SETLIST                          R25 R26 3 [1]
      227 CALL                             R23 2 1
      228 GETUPVAL                         R24 7
      229 GETTABLEKS                       R24 R24 K18 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      231 GETUPVAL                         R25 0
      232 GETTABLEKS                       R25 R25 K19 ["createElement"]
      234 GETUPVAL                         R26 8
      235 GETTABLEKS                       R26 R26 K20 ["View"]
      237 DUPTABLE                         R27 K27 [{["tag"] = "row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall flex-x-between padding-x-small", ["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["ref"]}]
      238 GETTABLEKS                       R28 R0 K23 ["LayoutOrder"]
      240 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      242 SETTABLEKS                       R23 R27 K24 ["onActivated"]
      244 SETTABLEKS                       R18 R27 K25 ["onSecondaryActivated"]
      246 SETTABLEKS                       R7 R27 K26 ["ref"]
      248 DUPTABLE                         R28 K31 [{"ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      249 GETUPVAL                         R29 0
      250 GETTABLEKS                       R29 R29 K19 ["createElement"]
      252 GETUPVAL                         R30 8
      253 GETTABLEKS                       R30 R30 K20 ["View"]
      255 DUPTABLE                         R31 K33 [{"LayoutOrder", "tag", "Size"}]
      256 MOVE                             R32 R4
      257 CALL                             R32 0 1
      258 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      260 NEWTABLE                         R32 1 0
      262 LOADB                            R33 1
      263 SETTABLEKS                       R33 R32 K34 ["align-y-center"]
      265 SETTABLEKS                       R32 R31 K21 ["tag"]
      267 GETIMPORT                        R32 K37 [UDim2.new]
      269 LOADN                            R33 1
      270 GETUPVAL                         R35 9
      271 GETTABLEKS                       R35 R35 K38 ["PROPERTY_WIDTH"]
      273 MINUS                            R34 R35
      274 LOADN                            R35 1
      275 LOADN                            R36 0
      276 CALL                             R32 4 1
      277 SETTABLEKS                       R32 R31 K32 ["Size"]
      279 DUPTABLE                         R32 K41 [{"ParameterLabel", "ParameterLabelInput"}]
      280 GETUPVAL                         R33 0
      281 GETTABLEKS                       R33 R33 K19 ["createElement"]
      283 GETUPVAL                         R34 8
      284 GETTABLEKS                       R34 R34 K42 ["Text"]
      286 DUPTABLE                         R35 K48 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      287 MOVE                             R36 R4
      288 CALL                             R36 0 1
      289 SETTABLEKS                       R36 R35 K23 ["LayoutOrder"]
      291 NEWTABLE                         R36 2 0
      293 LOADB                            R37 1
      294 SETTABLEKS                       R37 R36 K49 ["align-y-center text-title-small text-align-x-left text-align-y-center auto-xy"]
      296 LOADB                            R37 1
      297 SETTABLEKS                       R37 R36 K50 ["text-truncate-split"]
      299 SETTABLEKS                       R36 R35 K21 ["tag"]
      301 SETTABLEKS                       R11 R35 K42 ["Text"]
      303 GETUPVAL                         R36 8
      304 GETTABLEKS                       R36 R36 K51 ["Enums"]
      306 GETTABLEKS                       R36 R36 K52 ["InputSize"]
      308 GETTABLEKS                       R36 R36 K53 ["Small"]
      310 SETTABLEKS                       R36 R35 K43 ["size"]
      312 GETTABLEKS                       R37 R5 K54 ["enabled"]
      314 NOT                              R36 R37
      315 SETTABLEKS                       R36 R35 K44 ["Visible"]
      317 SETTABLEKS                       R20 R35 K24 ["onActivated"]
      319 SETTABLEKS                       R24 R35 K45 ["width"]
      321 SETTABLEKS                       R18 R35 K25 ["onSecondaryActivated"]
      323 CALL                             R33 2 1
      324 SETTABLEKS                       R33 R32 K39 ["ParameterLabel"]
      326 GETUPVAL                         R33 0
      327 GETTABLEKS                       R33 R33 K19 ["createElement"]
      329 GETUPVAL                         R34 8
      330 GETTABLEKS                       R34 R34 K55 ["TextInput"]
      332 DUPTABLE                         R35 K64 [{["LayoutOrder"], ["tag"] = "align-y-center text-title-small text-align-x-left text-align-y-center auto-xy", ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      333 MOVE                             R36 R4
      334 CALL                             R36 0 1
      335 SETTABLEKS                       R36 R35 K23 ["LayoutOrder"]
      337 SETTABLEKS                       R12 R35 K56 ["text"]
      339 GETIMPORT                        R36 K68 [Enum.TextInputType.Default]
      341 SETTABLEKS                       R36 R35 K59 ["textInputType"]
      343 SETTABLEKS                       R13 R35 K60 ["onChanged"]
      345 GETUPVAL                         R36 8
      346 GETTABLEKS                       R36 R36 K51 ["Enums"]
      348 GETTABLEKS                       R36 R36 K52 ["InputSize"]
      350 GETTABLEKS                       R36 R36 K53 ["Small"]
      352 SETTABLEKS                       R36 R35 K43 ["size"]
      354 GETTABLEKS                       R36 R5 K54 ["enabled"]
      356 SETTABLEKS                       R36 R35 K44 ["Visible"]
      358 SETTABLEKS                       R6 R35 K61 ["textBoxRef"]
      360 SETTABLEKS                       R21 R35 K62 ["onFocusLost"]
      362 CALL                             R33 2 1
      363 SETTABLEKS                       R33 R32 K40 ["ParameterLabelInput"]
      365 CALL                             R29 3 1
      366 SETTABLEKS                       R29 R28 K28 ["ParameterLabelContainer"]
      368 GETUPVAL                         R29 0
      369 GETTABLEKS                       R29 R29 K19 ["createElement"]
      371 GETUPVAL                         R30 8
      372 GETTABLEKS                       R30 R30 K20 ["View"]
      374 DUPTABLE                         R31 K70 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      375 MOVE                             R32 R4
      376 CALL                             R32 0 1
      377 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      379 NEWTABLE                         R32 1 0
      381 LOADB                            R33 1
      382 SETTABLEKS                       R33 R32 K34 ["align-y-center"]
      384 SETTABLEKS                       R32 R31 K21 ["tag"]
      386 GETIMPORT                        R32 K37 [UDim2.new]
      388 LOADN                            R33 0
      389 GETUPVAL                         R34 9
      390 GETTABLEKS                       R34 R34 K38 ["PROPERTY_WIDTH"]
      392 LOADN                            R35 1
      393 LOADN                            R36 0
      394 CALL                             R32 4 1
      395 SETTABLEKS                       R32 R31 K32 ["Size"]
      397 DUPTABLE                         R32 K72 [{"affordance"}]
      398 GETUPVAL                         R33 8
      399 GETTABLEKS                       R33 R33 K51 ["Enums"]
      401 GETTABLEKS                       R33 R33 K73 ["StateLayerAffordance"]
      403 GETTABLEKS                       R33 R33 K74 ["None"]
      405 SETTABLEKS                       R33 R32 K71 ["affordance"]
      407 SETTABLEKS                       R32 R31 K69 ["stateLayer"]
      409 SETTABLEKS                       R19 R31 K24 ["onActivated"]
      411 SETTABLEKS                       R18 R31 K25 ["onSecondaryActivated"]
      413 DUPTABLE                         R32 K76 [{"Input"}]
      414 SETTABLEKS                       R22 R32 K75 ["Input"]
      416 CALL                             R29 3 1
      417 SETTABLEKS                       R29 R28 K29 ["ParameterInputContainer"]
      419 GETUPVAL                         R29 0
      420 GETTABLEKS                       R29 R29 K19 ["createElement"]
      422 GETUPVAL                         R30 10
      423 DUPTABLE                         R31 K82 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      424 SETTABLEKS                       R8 R31 K77 ["isOpen"]
      426 SETTABLEKS                       R19 R31 K78 ["close"]
      428 GETTABLEKS                       R32 R0 K7 ["node"]
      430 GETTABLEKS                       R32 R32 K8 ["name"]
      432 SETTABLEKS                       R32 R31 K79 ["parameterName"]
      434 SETTABLEKS                       R20 R31 K80 ["triggerRename"]
      436 SETTABLEKS                       R7 R31 K81 ["anchorRef"]
      438 CALL                             R29 2 1
      439 SETTABLEKS                       R29 R28 K30 ["ParameterPaneItemContextMenu"]
      441 CALL                             R25 3 -1
      442 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["ParameterContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ParameterOverrideContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["ParameterPane"]
       46 GETTABLEKS                       R7 R7 K14 ["Constants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Components"]
       53 GETTABLEKS                       R8 R8 K13 ["ParameterPane"]
       55 GETTABLEKS                       R8 R8 K15 ["ParameterPaneItemContextMenu"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Components"]
       62 GETTABLEKS                       R9 R9 K16 ["CompositorNodeProperty"]
       64 GETTABLEKS                       R9 R9 K17 ["PropertyComponent"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Components"]
       71 GETTABLEKS                       R10 R10 K16 ["CompositorNodeProperty"]
       73 GETTABLEKS                       R10 R10 K18 ["PropertyConstants"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Parent"]
       80 GETTABLEKS                       R11 R11 K19 ["React"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Parent"]
       87 GETTABLEKS                       R12 R12 K20 ["ReactUtils"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Parent"]
       94 GETTABLEKS                       R13 R13 K21 ["SignalsReact"]
       96 CALL                             R12 1 1
       97 DUPCLOSURE                       R13 K22 [PROTO_15]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R7
      109 RETURN                           R13 1
