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
       17 JUMPIFEQ                         R0 R2 ; [+15]
       19 GETUPVAL                         R2 4
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K4 ["removeParameterOverrides"]
       25 GETUPVAL                         R3 2
       26 CALL                             R2 1 0
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R2 6
       29 GETTABLEKS                       R2 R2 K5 ["removeParameterOverride"]
       31 GETUPVAL                         R3 2
       32 CALL                             R2 1 0
       33 JUMPIFNOT                        R1 ; [+23]
       34 JUMPIFNOTEQKB                    R0 TRUE ; [+22]
       36 GETUPVAL                         R2 7
       37 GETTABLEKS                       R2 R2 K6 ["current"]
       39 JUMPIFNOT                        R2 ; [+6]
       40 GETIMPORT                        R2 K9 [task.cancel]
       42 GETUPVAL                         R3 7
       43 GETTABLEKS                       R3 R3 K6 ["current"]
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 7
       47 GETIMPORT                        R3 K11 [task.delay]
       49 LOADK                            R4 K12 [0.25]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K6 ["current"]
       57 RETURN                           R0 0

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
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K2 ["createNextOrder"]
       31 CALL                             R5 0 1
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K3 ["useToggleState"]
       35 LOADB                            R7 0
       36 CALL                             R6 1 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K4 ["useRef"]
       40 LOADNIL                          R8
       41 CALL                             R7 1 1
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K4 ["useRef"]
       45 LOADNIL                          R9
       46 CALL                             R8 1 1
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K5 ["useState"]
       50 LOADB                            R10 0
       51 CALL                             R9 1 2
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K4 ["useRef"]
       55 LOADNIL                          R12
       56 CALL                             R11 1 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       60 NEWCLOSURE                       R13 P0
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R14 0 1
       64 GETTABLEKS                       R15 R0 K7 ["node"]
       66 GETTABLEKS                       R15 R15 K8 ["name"]
       68 SETLIST                          R14 R15 1 [1]
       70 CALL                             R12 2 1
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K5 ["useState"]
       74 MOVE                             R14 R12
       75 CALL                             R13 1 2
       76 GETUPVAL                         R15 6
       77 GETTABLEKS                       R15 R15 K9 ["useSignalState"]
       79 GETTABLEKS                       R16 R1 K10 ["observeParameters"]
       81 CALL                             R15 1 1
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K6 ["useMemo"]
       85 NEWCLOSURE                       R17 P1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R15
       88 NEWTABLE                         R18 0 2
       90 GETTABLEKS                       R19 R0 K7 ["node"]
       92 GETTABLEKS                       R19 R19 K8 ["name"]
       94 MOVE                             R20 R15
       95 SETLIST                          R18 R19 2 [1]
       97 CALL                             R16 2 1
       98 GETUPVAL                         R17 0
       99 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      101 NEWCLOSURE                       R18 P2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R12
      104 NEWTABLE                         R19 0 2
      106 MOVE                             R20 R12
      107 GETTABLEKS                       R21 R4 K12 ["renameParameter"]
      109 SETLIST                          R19 R20 2 [1]
      111 CALL                             R17 2 1
      112 GETUPVAL                         R18 0
      113 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      115 NEWCLOSURE                       R19 P3
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R16
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R11
      124 NEWTABLE                         R20 0 6
      126 MOVE                             R21 R16
      127 MOVE                             R22 R12
      128 GETTABLEKS                       R23 R0 K7 ["node"]
      130 GETTABLEKS                       R23 R23 K13 ["nodeType"]
      132 GETTABLEKS                       R24 R1 K14 ["setParameter"]
      134 GETTABLEKS                       R25 R2 K15 ["removeParameterOverride"]
      136 GETTABLEKS                       R26 R3 K16 ["removeParameterOverrides"]
      138 SETLIST                          R20 R21 6 [1]
      140 CALL                             R18 2 1
      141 GETUPVAL                         R19 0
      142 GETTABLEKS                       R19 R19 K17 ["useEffect"]
      144 NEWCLOSURE                       R20 P4
      145 CAPTURE                          VAL R11
      146 NEWTABLE                         R21 0 0
      148 CALL                             R19 2 0
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      152 NEWCLOSURE                       R20 P5
      153 CAPTURE                          VAL R10
      154 NEWTABLE                         R21 0 0
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      160 NEWCLOSURE                       R21 P6
      161 CAPTURE                          VAL R10
      162 NEWTABLE                         R22 0 0
      164 CALL                             R20 2 1
      165 GETUPVAL                         R21 0
      166 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      168 NEWCLOSURE                       R22 P7
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R7
      174 NEWTABLE                         R23 0 4
      176 MOVE                             R24 R12
      177 MOVE                             R25 R6
      178 MOVE                             R26 R7
      179 MOVE                             R27 R20
      180 SETLIST                          R23 R24 4 [1]
      182 CALL                             R21 2 1
      183 GETUPVAL                         R22 0
      184 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      186 NEWCLOSURE                       R23 P8
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R6
      191 NEWTABLE                         R24 0 4
      193 MOVE                             R25 R12
      194 MOVE                             R26 R13
      195 MOVE                             R27 R6
      196 MOVE                             R28 R17
      197 SETLIST                          R24 R25 4 [1]
      199 CALL                             R22 2 1
      200 GETUPVAL                         R23 0
      201 GETTABLEKS                       R23 R23 K6 ["useMemo"]
      203 NEWCLOSURE                       R24 P9
      204 CAPTURE                          UPVAL U0
      205 CAPTURE                          UPVAL U8
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R18
      209 NEWTABLE                         R25 0 3
      211 MOVE                             R26 R16
      212 GETTABLEKS                       R27 R0 K7 ["node"]
      214 GETTABLEKS                       R27 R27 K13 ["nodeType"]
      216 MOVE                             R28 R18
      217 SETLIST                          R25 R26 3 [1]
      219 CALL                             R23 2 1
      220 GETUPVAL                         R24 0
      221 GETTABLEKS                       R24 R24 K11 ["useCallback"]
      223 NEWCLOSURE                       R25 P10
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R0
      226 CAPTURE                          VAL R4
      227 NEWTABLE                         R26 0 3
      229 GETTABLEKS                       R27 R0 K7 ["node"]
      231 GETTABLEKS                       R27 R27 K8 ["name"]
      233 GETTABLEKS                       R28 R4 K18 ["selectAllParameterNodesWithName"]
      235 MOVE                             R29 R20
      236 SETLIST                          R26 R27 3 [1]
      238 CALL                             R24 2 1
      239 GETUPVAL                         R25 9
      240 GETTABLEKS                       R25 R25 K19 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      242 GETUPVAL                         R26 0
      243 GETTABLEKS                       R26 R26 K20 ["createElement"]
      245 GETUPVAL                         R27 10
      246 GETTABLEKS                       R27 R27 K21 ["View"]
      248 DUPTABLE                         R28 K28 [{["tag"] = "row align-x-left align-y-center gap-none size-full-700 padding-y-xxsmall flex-x-between padding-x-small", ["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["ref"]}]
      249 GETTABLEKS                       R29 R0 K24 ["LayoutOrder"]
      251 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      253 SETTABLEKS                       R24 R28 K25 ["onActivated"]
      255 SETTABLEKS                       R19 R28 K26 ["onSecondaryActivated"]
      257 SETTABLEKS                       R8 R28 K27 ["ref"]
      259 DUPTABLE                         R29 K32 [{"ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      260 GETUPVAL                         R30 0
      261 GETTABLEKS                       R30 R30 K20 ["createElement"]
      263 GETUPVAL                         R31 10
      264 GETTABLEKS                       R31 R31 K21 ["View"]
      266 DUPTABLE                         R32 K34 [{"LayoutOrder", "tag", "Size"}]
      267 MOVE                             R33 R5
      268 CALL                             R33 0 1
      269 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      271 NEWTABLE                         R33 1 0
      273 LOADB                            R34 1
      274 SETTABLEKS                       R34 R33 K35 ["align-y-center"]
      276 SETTABLEKS                       R33 R32 K22 ["tag"]
      278 GETIMPORT                        R33 K38 [UDim2.new]
      280 LOADN                            R34 1
      281 GETUPVAL                         R36 11
      282 GETTABLEKS                       R36 R36 K39 ["PROPERTY_WIDTH"]
      284 MINUS                            R35 R36
      285 LOADN                            R36 1
      286 LOADN                            R37 0
      287 CALL                             R33 4 1
      288 SETTABLEKS                       R33 R32 K33 ["Size"]
      290 DUPTABLE                         R33 K42 [{"ParameterLabel", "ParameterLabelInput"}]
      291 GETUPVAL                         R34 0
      292 GETTABLEKS                       R34 R34 K20 ["createElement"]
      294 GETUPVAL                         R35 10
      295 GETTABLEKS                       R35 R35 K43 ["Text"]
      297 DUPTABLE                         R36 K49 [{["LayoutOrder"], ["tag"], ["Text"], ["size"], ["Visible"], ["onActivated"], ["width"], ["testId"] = "ParameterPaneItem-InputLabel", ["onSecondaryActivated"]}]
      298 MOVE                             R37 R5
      299 CALL                             R37 0 1
      300 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      302 NEWTABLE                         R37 2 0
      304 LOADB                            R38 1
      305 SETTABLEKS                       R38 R37 K50 ["align-y-center text-title-small text-align-x-left text-align-y-center auto-xy"]
      307 LOADB                            R38 1
      308 SETTABLEKS                       R38 R37 K51 ["text-truncate-split"]
      310 SETTABLEKS                       R37 R36 K22 ["tag"]
      312 SETTABLEKS                       R12 R36 K43 ["Text"]
      314 GETUPVAL                         R37 10
      315 GETTABLEKS                       R37 R37 K52 ["Enums"]
      317 GETTABLEKS                       R37 R37 K53 ["InputSize"]
      319 GETTABLEKS                       R37 R37 K54 ["Small"]
      321 SETTABLEKS                       R37 R36 K44 ["size"]
      323 GETTABLEKS                       R38 R6 K55 ["enabled"]
      325 NOT                              R37 R38
      326 SETTABLEKS                       R37 R36 K45 ["Visible"]
      328 SETTABLEKS                       R21 R36 K25 ["onActivated"]
      330 SETTABLEKS                       R25 R36 K46 ["width"]
      332 SETTABLEKS                       R19 R36 K26 ["onSecondaryActivated"]
      334 CALL                             R34 2 1
      335 SETTABLEKS                       R34 R33 K40 ["ParameterLabel"]
      337 GETUPVAL                         R34 0
      338 GETTABLEKS                       R34 R34 K20 ["createElement"]
      340 GETUPVAL                         R35 10
      341 GETTABLEKS                       R35 R35 K56 ["TextInput"]
      343 DUPTABLE                         R36 K65 [{["LayoutOrder"], ["tag"] = "align-y-center text-title-small text-align-x-left text-align-y-center auto-xy", ["text"], ["label"] = "", ["textInputType"], ["onChanged"], ["size"], ["Visible"], ["textBoxRef"], ["onFocusLost"], ["testId"] = "ParameterPaneItem-TextInput"}]
      344 MOVE                             R37 R5
      345 CALL                             R37 0 1
      346 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      348 SETTABLEKS                       R13 R36 K57 ["text"]
      350 GETIMPORT                        R37 K69 [Enum.TextInputType.Default]
      352 SETTABLEKS                       R37 R36 K60 ["textInputType"]
      354 SETTABLEKS                       R14 R36 K61 ["onChanged"]
      356 GETUPVAL                         R37 10
      357 GETTABLEKS                       R37 R37 K52 ["Enums"]
      359 GETTABLEKS                       R37 R37 K53 ["InputSize"]
      361 GETTABLEKS                       R37 R37 K54 ["Small"]
      363 SETTABLEKS                       R37 R36 K44 ["size"]
      365 GETTABLEKS                       R37 R6 K55 ["enabled"]
      367 SETTABLEKS                       R37 R36 K45 ["Visible"]
      369 SETTABLEKS                       R7 R36 K62 ["textBoxRef"]
      371 SETTABLEKS                       R22 R36 K63 ["onFocusLost"]
      373 CALL                             R34 2 1
      374 SETTABLEKS                       R34 R33 K41 ["ParameterLabelInput"]
      376 CALL                             R30 3 1
      377 SETTABLEKS                       R30 R29 K29 ["ParameterLabelContainer"]
      379 GETUPVAL                         R30 0
      380 GETTABLEKS                       R30 R30 K20 ["createElement"]
      382 GETUPVAL                         R31 10
      383 GETTABLEKS                       R31 R31 K21 ["View"]
      385 DUPTABLE                         R32 K71 [{"LayoutOrder", "tag", "Size", "stateLayer", "onActivated", "onSecondaryActivated"}]
      386 MOVE                             R33 R5
      387 CALL                             R33 0 1
      388 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      390 NEWTABLE                         R33 1 0
      392 LOADB                            R34 1
      393 SETTABLEKS                       R34 R33 K35 ["align-y-center"]
      395 SETTABLEKS                       R33 R32 K22 ["tag"]
      397 GETIMPORT                        R33 K38 [UDim2.new]
      399 LOADN                            R34 0
      400 GETUPVAL                         R35 11
      401 GETTABLEKS                       R35 R35 K39 ["PROPERTY_WIDTH"]
      403 LOADN                            R36 1
      404 LOADN                            R37 0
      405 CALL                             R33 4 1
      406 SETTABLEKS                       R33 R32 K33 ["Size"]
      408 DUPTABLE                         R33 K73 [{"affordance"}]
      409 GETUPVAL                         R34 10
      410 GETTABLEKS                       R34 R34 K52 ["Enums"]
      412 GETTABLEKS                       R34 R34 K74 ["StateLayerAffordance"]
      414 GETTABLEKS                       R34 R34 K75 ["None"]
      416 SETTABLEKS                       R34 R33 K72 ["affordance"]
      418 SETTABLEKS                       R33 R32 K70 ["stateLayer"]
      420 SETTABLEKS                       R20 R32 K25 ["onActivated"]
      422 SETTABLEKS                       R19 R32 K26 ["onSecondaryActivated"]
      424 DUPTABLE                         R33 K77 [{"Input"}]
      425 SETTABLEKS                       R23 R33 K76 ["Input"]
      427 CALL                             R30 3 1
      428 SETTABLEKS                       R30 R29 K30 ["ParameterInputContainer"]
      430 GETUPVAL                         R30 0
      431 GETTABLEKS                       R30 R30 K20 ["createElement"]
      433 GETUPVAL                         R31 12
      434 DUPTABLE                         R32 K83 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      435 SETTABLEKS                       R9 R32 K78 ["isOpen"]
      437 SETTABLEKS                       R20 R32 K79 ["close"]
      439 GETTABLEKS                       R33 R0 K7 ["node"]
      441 GETTABLEKS                       R33 R33 K8 ["name"]
      443 SETTABLEKS                       R33 R32 K80 ["parameterName"]
      445 SETTABLEKS                       R21 R32 K81 ["triggerRename"]
      447 SETTABLEKS                       R8 R32 K82 ["anchorRef"]
      449 CALL                             R30 2 1
      450 SETTABLEKS                       R30 R29 K31 ["ParameterPaneItemContextMenu"]
      452 CALL                             R26 3 -1
      453 RETURN                           R26 -1

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
       23 GETTABLEKS                       R4 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodePropertyOverrideContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ParameterContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["ParameterOverrideContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K8 ["Components"]
       51 GETTABLEKS                       R8 R8 K14 ["ParameterPane"]
       53 GETTABLEKS                       R8 R8 K15 ["Constants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["ParameterPane"]
       62 GETTABLEKS                       R9 R9 K16 ["ParameterPaneItemContextMenu"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Components"]
       69 GETTABLEKS                       R10 R10 K17 ["CompositorNodeProperty"]
       71 GETTABLEKS                       R10 R10 K18 ["PropertyComponent"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Components"]
       78 GETTABLEKS                       R11 R11 K17 ["CompositorNodeProperty"]
       80 GETTABLEKS                       R11 R11 K19 ["PropertyConstants"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Parent"]
       87 GETTABLEKS                       R12 R12 K20 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Parent"]
       94 GETTABLEKS                       R13 R13 K21 ["ReactUtils"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K6 ["Parent"]
      101 GETTABLEKS                       R14 R14 K22 ["SignalsReact"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K23 ["Flags"]
      108 GETTABLEKS                       R15 R15 K24 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K25 [PROTO_15]
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R8
      125 RETURN                           R15 1
