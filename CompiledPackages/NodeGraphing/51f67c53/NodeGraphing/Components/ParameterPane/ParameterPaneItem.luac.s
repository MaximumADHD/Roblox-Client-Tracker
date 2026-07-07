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
      204 GETUPVAL                         R23 0
      205 GETTABLEKS                       R23 R23 K17 ["createElement"]
      207 GETUPVAL                         R24 10
      208 GETTABLEKS                       R24 R24 K18 ["View"]
      210 DUPTABLE                         R25 K25 [{["tag"] = "row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall", ["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["ref"]}]
      211 GETTABLEKS                       R26 R0 K21 ["LayoutOrder"]
      213 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      215 SETTABLEKS                       R21 R25 K22 ["onActivated"]
      217 SETTABLEKS                       R16 R25 K23 ["onSecondaryActivated"]
      219 SETTABLEKS                       R6 R25 K24 ["ref"]
      221 DUPTABLE                         R26 K30 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      222 GETUPVAL                         R27 0
      223 GETTABLEKS                       R27 R27 K17 ["createElement"]
      225 GETUPVAL                         R28 10
      226 GETTABLEKS                       R28 R28 K18 ["View"]
      228 DUPTABLE                         R29 K32 [{["LayoutOrder"], ["tag"] = "size-600-0"}]
      229 MOVE                             R30 R3
      230 CALL                             R30 0 1
      231 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      233 CALL                             R27 2 1
      234 SETTABLEKS                       R27 R26 K26 ["Spacer"]
      236 GETUPVAL                         R27 0
      237 GETTABLEKS                       R27 R27 K17 ["createElement"]
      239 GETUPVAL                         R28 10
      240 GETTABLEKS                       R28 R28 K18 ["View"]
      242 DUPTABLE                         R29 K34 [{["LayoutOrder"], ["tag"] = "align-y-center size-2000-full"}]
      243 MOVE                             R30 R3
      244 CALL                             R30 0 1
      245 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      247 DUPTABLE                         R30 K37 [{"ParameterLabel", "ParameterLabelInput"}]
      248 GETUPVAL                         R31 0
      249 GETTABLEKS                       R31 R31 K17 ["createElement"]
      251 GETUPVAL                         R32 10
      252 GETTABLEKS                       R32 R32 K38 ["Text"]
      254 DUPTABLE                         R33 K44 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      255 MOVE                             R34 R3
      256 CALL                             R34 0 1
      257 SETTABLEKS                       R34 R33 K21 ["LayoutOrder"]
      259 NEWTABLE                         R34 2 0
      261 LOADB                            R35 1
      262 SETTABLEKS                       R35 R34 K45 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      264 LOADB                            R35 1
      265 SETTABLEKS                       R35 R34 K46 ["text-truncate-split"]
      267 SETTABLEKS                       R34 R33 K19 ["tag"]
      269 SETTABLEKS                       R9 R33 K38 ["Text"]
      271 GETUPVAL                         R34 10
      272 GETTABLEKS                       R34 R34 K47 ["Enums"]
      274 GETTABLEKS                       R34 R34 K48 ["InputSize"]
      276 GETTABLEKS                       R34 R34 K49 ["Small"]
      278 SETTABLEKS                       R34 R33 K39 ["size"]
      280 GETTABLEKS                       R35 R4 K50 ["enabled"]
      282 NOT                              R34 R35
      283 SETTABLEKS                       R34 R33 K40 ["Visible"]
      285 SETTABLEKS                       R18 R33 K22 ["onActivated"]
      287 SETTABLEKS                       R22 R33 K41 ["width"]
      289 GETUPVAL                         R35 7
      290 JUMPIFNOT                        R35 ; [+2]
      291 MOVE                             R34 R16
      292 JUMP                             ; [+1]
      293 LOADNIL                          R34
      294 SETTABLEKS                       R34 R33 K23 ["onSecondaryActivated"]
      296 CALL                             R31 2 1
      297 SETTABLEKS                       R31 R30 K35 ["ParameterLabel"]
      299 GETUPVAL                         R31 0
      300 GETTABLEKS                       R31 R31 K17 ["createElement"]
      302 GETUPVAL                         R32 10
      303 GETTABLEKS                       R32 R32 K51 ["TextInput"]
      305 DUPTABLE                         R33 K60 [{["LayoutOrder"], ["tag"] = "align-y-center text-title-small text-align-x-left text-align-y-center size-full-full", ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["width"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      306 MOVE                             R34 R3
      307 CALL                             R34 0 1
      308 SETTABLEKS                       R34 R33 K21 ["LayoutOrder"]
      310 SETTABLEKS                       R10 R33 K52 ["text"]
      312 GETIMPORT                        R34 K64 [Enum.TextInputType.Default]
      314 SETTABLEKS                       R34 R33 K55 ["textInputType"]
      316 SETTABLEKS                       R11 R33 K56 ["onChanged"]
      318 GETUPVAL                         R34 10
      319 GETTABLEKS                       R34 R34 K47 ["Enums"]
      321 GETTABLEKS                       R34 R34 K48 ["InputSize"]
      323 GETTABLEKS                       R34 R34 K49 ["Small"]
      325 SETTABLEKS                       R34 R33 K39 ["size"]
      327 SETTABLEKS                       R22 R33 K41 ["width"]
      329 GETTABLEKS                       R34 R4 K50 ["enabled"]
      331 SETTABLEKS                       R34 R33 K40 ["Visible"]
      333 SETTABLEKS                       R5 R33 K57 ["textBoxRef"]
      335 SETTABLEKS                       R19 R33 K58 ["onFocusLost"]
      337 CALL                             R31 2 1
      338 SETTABLEKS                       R31 R30 K36 ["ParameterLabelInput"]
      340 CALL                             R27 3 1
      341 SETTABLEKS                       R27 R26 K27 ["ParameterLabelContainer"]
      343 GETUPVAL                         R27 0
      344 GETTABLEKS                       R27 R27 K17 ["createElement"]
      346 GETUPVAL                         R28 10
      347 GETTABLEKS                       R28 R28 K18 ["View"]
      349 DUPTABLE                         R29 K66 [{["LayoutOrder"], ["tag"] = "align-y-center size-2200-600", ["onActivated"], ["onSecondaryActivated"]}]
      350 MOVE                             R30 R3
      351 CALL                             R30 0 1
      352 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      354 GETUPVAL                         R31 7
      355 JUMPIFNOT                        R31 ; [+2]
      356 MOVE                             R30 R17
      357 JUMP                             ; [+1]
      358 LOADNIL                          R30
      359 SETTABLEKS                       R30 R29 K22 ["onActivated"]
      361 GETUPVAL                         R31 7
      362 JUMPIFNOT                        R31 ; [+2]
      363 MOVE                             R30 R16
      364 JUMP                             ; [+1]
      365 LOADNIL                          R30
      366 SETTABLEKS                       R30 R29 K23 ["onSecondaryActivated"]
      368 DUPTABLE                         R30 K68 [{"Input"}]
      369 SETTABLEKS                       R20 R30 K67 ["Input"]
      371 CALL                             R27 3 1
      372 SETTABLEKS                       R27 R26 K28 ["ParameterInputContainer"]
      374 GETUPVAL                         R27 0
      375 GETTABLEKS                       R27 R27 K17 ["createElement"]
      377 GETUPVAL                         R28 11
      378 DUPTABLE                         R29 K74 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      379 SETTABLEKS                       R7 R29 K69 ["isOpen"]
      381 SETTABLEKS                       R17 R29 K70 ["close"]
      383 GETTABLEKS                       R30 R0 K7 ["node"]
      385 GETTABLEKS                       R30 R30 K8 ["name"]
      387 SETTABLEKS                       R30 R29 K71 ["parameterName"]
      389 SETTABLEKS                       R18 R29 K72 ["triggerRename"]
      391 SETTABLEKS                       R6 R29 K73 ["anchorRef"]
      393 CALL                             R27 2 1
      394 SETTABLEKS                       R27 R26 K29 ["ParameterPaneItemContextMenu"]
      396 CALL                             R23 3 -1
      397 RETURN                           R23 -1

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
       76 GETTABLEKS                       R11 R0 K10 ["Parent"]
       78 GETTABLEKS                       R11 R11 K21 ["React"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K10 ["Parent"]
       85 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K10 ["Parent"]
       92 GETTABLEKS                       R13 R13 K23 ["SignalsReact"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K25 [game]
       97 LOADK                            R15 K26 ["AnimGraphUIImproveParameterPaneItemRightClick"]
       98 LOADB                            R16 0
       99 NAMECALL                         R13 R13 K27 ["DefineFastFlag"]
      101 CALL                             R13 3 1
      102 DUPCLOSURE                       R14 K28 [PROTO_12]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R8
      115 RETURN                           R14 1
