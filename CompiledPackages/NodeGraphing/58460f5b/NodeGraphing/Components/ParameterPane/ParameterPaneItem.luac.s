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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["renameParameter"]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

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
        4 DUPTABLE                         R2 K13 [{"LayoutOrder", "Value", "Type", "tags", "Name", "Label", "IsParameterOverridden", "IsDefaultValue", "OnParameterOverrideRevert", "NodeId", "OnChanged", "testId"}]
        5 LOADN                            R3 2
        6 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["Value"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K14 ["node"]
       14 GETTABLEKS                       R3 R3 K15 ["nodeType"]
       16 SETTABLEKS                       R3 R2 K3 ["Type"]
       18 LOADK                            R3 K16 ["align-y-center size-full-full"]
       19 SETTABLEKS                       R3 R2 K4 ["tags"]
       21 LOADK                            R3 K17 [""]
       22 SETTABLEKS                       R3 R2 K5 ["Name"]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K6 ["Label"]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K7 ["IsParameterOverridden"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K8 ["IsDefaultValue"]
       33 DUPCLOSURE                       R3 K18 [PROTO_8]
       34 SETTABLEKS                       R3 R2 K9 ["OnParameterOverrideRevert"]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K14 ["node"]
       39 GETTABLEKS                       R3 R3 K19 ["id"]
       41 SETTABLEKS                       R3 R2 K10 ["NodeId"]
       43 NEWCLOSURE                       R3 P1
       44 CAPTURE                          UPVAL U4
       45 SETTABLEKS                       R3 R2 K11 ["OnChanged"]
       47 LOADK                            R3 K20 ["ParameterPaneItem-PropertyInput"]
       48 SETTABLEKS                       R3 R2 K12 ["testId"]
       50 CALL                             R0 2 -1
       51 RETURN                           R0 -1

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
       86 NEWTABLE                         R16 0 2
       88 MOVE                             R17 R9
       89 GETTABLEKS                       R18 R2 K12 ["renameParameter"]
       91 SETLIST                          R16 R17 2 [1]
       93 CALL                             R14 2 1
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K11 ["useCallback"]
       97 NEWCLOSURE                       R16 P3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R9
      100 NEWTABLE                         R17 0 2
      102 MOVE                             R18 R9
      103 GETTABLEKS                       R19 R1 K13 ["setParameter"]
      105 SETLIST                          R17 R18 2 [1]
      107 CALL                             R15 2 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R16 R16 K11 ["useCallback"]
      111 NEWCLOSURE                       R17 P4
      112 CAPTURE                          VAL R8
      113 NEWTABLE                         R18 0 0
      115 CALL                             R16 2 1
      116 GETUPVAL                         R17 0
      117 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      119 NEWCLOSURE                       R18 P5
      120 CAPTURE                          VAL R8
      121 NEWTABLE                         R19 0 0
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 0
      125 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      127 NEWCLOSURE                       R19 P6
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 NEWTABLE                         R20 0 4
      136 MOVE                             R21 R9
      137 MOVE                             R22 R4
      138 MOVE                             R23 R5
      139 MOVE                             R24 R17
      140 SETLIST                          R20 R21 4 [1]
      142 CALL                             R18 2 1
      143 GETUPVAL                         R19 0
      144 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      146 NEWCLOSURE                       R20 P7
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R4
      151 NEWTABLE                         R21 0 4
      153 MOVE                             R22 R9
      154 MOVE                             R23 R10
      155 MOVE                             R24 R4
      156 MOVE                             R25 R14
      157 SETLIST                          R21 R22 4 [1]
      159 CALL                             R19 2 1
      160 GETUPVAL                         R20 0
      161 GETTABLEKS                       R20 R20 K6 ["useMemo"]
      163 NEWCLOSURE                       R21 P8
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R15
      169 NEWTABLE                         R22 0 3
      171 MOVE                             R23 R13
      172 GETTABLEKS                       R24 R0 K7 ["node"]
      174 GETTABLEKS                       R24 R24 K14 ["nodeType"]
      176 MOVE                             R25 R15
      177 SETLIST                          R22 R23 3 [1]
      179 CALL                             R20 2 1
      180 GETUPVAL                         R21 0
      181 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      183 NEWCLOSURE                       R22 P9
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R2
      188 NEWTABLE                         R23 0 3
      190 GETTABLEKS                       R24 R0 K7 ["node"]
      192 GETTABLEKS                       R24 R24 K8 ["name"]
      194 GETTABLEKS                       R25 R2 K15 ["selectAllParameterNodesWithName"]
      196 MOVE                             R26 R17
      197 SETLIST                          R23 R24 3 [1]
      199 CALL                             R21 2 1
      200 GETUPVAL                         R22 8
      201 GETTABLEKS                       R22 R22 K16 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      203 GETUPVAL                         R23 0
      204 GETTABLEKS                       R23 R23 K17 ["createElement"]
      206 GETUPVAL                         R24 9
      207 GETTABLEKS                       R24 R24 K18 ["View"]
      209 DUPTABLE                         R25 K24 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      210 LOADK                            R26 K25 ["row gap-none align-x-left align-y-center size-full-700 padding-y-xxsmall"]
      211 SETTABLEKS                       R26 R25 K19 ["tag"]
      213 GETTABLEKS                       R26 R0 K20 ["LayoutOrder"]
      215 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      217 SETTABLEKS                       R21 R25 K21 ["onActivated"]
      219 SETTABLEKS                       R16 R25 K22 ["onSecondaryActivated"]
      221 SETTABLEKS                       R6 R25 K23 ["ref"]
      223 DUPTABLE                         R26 K30 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      224 GETUPVAL                         R27 0
      225 GETTABLEKS                       R27 R27 K17 ["createElement"]
      227 GETUPVAL                         R28 9
      228 GETTABLEKS                       R28 R28 K18 ["View"]
      230 DUPTABLE                         R29 K31 [{"LayoutOrder", "tag"}]
      231 MOVE                             R30 R3
      232 CALL                             R30 0 1
      233 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      235 LOADK                            R30 K32 ["size-600-0"]
      236 SETTABLEKS                       R30 R29 K19 ["tag"]
      238 CALL                             R27 2 1
      239 SETTABLEKS                       R27 R26 K26 ["Spacer"]
      241 GETUPVAL                         R27 0
      242 GETTABLEKS                       R27 R27 K17 ["createElement"]
      244 GETUPVAL                         R28 9
      245 GETTABLEKS                       R28 R28 K18 ["View"]
      247 DUPTABLE                         R29 K31 [{"LayoutOrder", "tag"}]
      248 MOVE                             R30 R3
      249 CALL                             R30 0 1
      250 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      252 LOADK                            R30 K33 ["size-2000-full align-y-center"]
      253 SETTABLEKS                       R30 R29 K19 ["tag"]
      255 DUPTABLE                         R30 K36 [{"ParameterLabel", "ParameterLabelInput"}]
      256 GETUPVAL                         R31 0
      257 GETTABLEKS                       R31 R31 K17 ["createElement"]
      259 GETUPVAL                         R32 9
      260 GETTABLEKS                       R32 R32 K37 ["Text"]
      262 DUPTABLE                         R33 K42 [{"LayoutOrder", "tag", "Text", "size", "Visible", "onActivated", "width", "testId", "onSecondaryActivated"}]
      263 MOVE                             R34 R3
      264 CALL                             R34 0 1
      265 SETTABLEKS                       R34 R33 K20 ["LayoutOrder"]
      267 NEWTABLE                         R34 2 0
      269 LOADB                            R35 1
      270 SETTABLEKS                       R35 R34 K43 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      272 LOADB                            R35 1
      273 SETTABLEKS                       R35 R34 K44 ["text-truncate-split"]
      275 SETTABLEKS                       R34 R33 K19 ["tag"]
      277 SETTABLEKS                       R9 R33 K37 ["Text"]
      279 GETUPVAL                         R34 9
      280 GETTABLEKS                       R34 R34 K45 ["Enums"]
      282 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      284 GETTABLEKS                       R34 R34 K47 ["Small"]
      286 SETTABLEKS                       R34 R33 K38 ["size"]
      288 GETTABLEKS                       R35 R4 K48 ["enabled"]
      290 NOT                              R34 R35
      291 SETTABLEKS                       R34 R33 K39 ["Visible"]
      293 SETTABLEKS                       R18 R33 K21 ["onActivated"]
      295 SETTABLEKS                       R22 R33 K40 ["width"]
      297 LOADK                            R34 K49 ["ParameterPaneItem-InputLabel"]
      298 SETTABLEKS                       R34 R33 K41 ["testId"]
      300 GETUPVAL                         R35 6
      301 JUMPIFNOT                        R35 ; [+2]
      302 MOVE                             R34 R16
      303 JUMP                             ; [+1]
      304 LOADNIL                          R34
      305 SETTABLEKS                       R34 R33 K22 ["onSecondaryActivated"]
      307 CALL                             R31 2 1
      308 SETTABLEKS                       R31 R30 K34 ["ParameterLabel"]
      310 GETUPVAL                         R31 0
      311 GETTABLEKS                       R31 R31 K17 ["createElement"]
      313 GETUPVAL                         R32 9
      314 GETTABLEKS                       R32 R32 K50 ["TextInput"]
      316 DUPTABLE                         R33 K57 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "Visible", "textBoxRef", "onFocusLost", "testId"}]
      317 MOVE                             R34 R3
      318 CALL                             R34 0 1
      319 SETTABLEKS                       R34 R33 K20 ["LayoutOrder"]
      321 LOADK                            R34 K43 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      322 SETTABLEKS                       R34 R33 K19 ["tag"]
      324 SETTABLEKS                       R10 R33 K51 ["text"]
      326 LOADK                            R34 K58 [""]
      327 SETTABLEKS                       R34 R33 K52 ["label"]
      329 GETIMPORT                        R34 K62 [Enum.TextInputType.Default]
      331 SETTABLEKS                       R34 R33 K53 ["textInputType"]
      333 SETTABLEKS                       R11 R33 K54 ["onChanged"]
      335 GETUPVAL                         R34 9
      336 GETTABLEKS                       R34 R34 K45 ["Enums"]
      338 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      340 GETTABLEKS                       R34 R34 K47 ["Small"]
      342 SETTABLEKS                       R34 R33 K38 ["size"]
      344 SETTABLEKS                       R22 R33 K40 ["width"]
      346 GETTABLEKS                       R34 R4 K48 ["enabled"]
      348 SETTABLEKS                       R34 R33 K39 ["Visible"]
      350 SETTABLEKS                       R5 R33 K55 ["textBoxRef"]
      352 SETTABLEKS                       R19 R33 K56 ["onFocusLost"]
      354 LOADK                            R34 K63 ["ParameterPaneItem-TextInput"]
      355 SETTABLEKS                       R34 R33 K41 ["testId"]
      357 CALL                             R31 2 1
      358 SETTABLEKS                       R31 R30 K35 ["ParameterLabelInput"]
      360 CALL                             R27 3 1
      361 SETTABLEKS                       R27 R26 K27 ["ParameterLabelContainer"]
      363 GETUPVAL                         R27 0
      364 GETTABLEKS                       R27 R27 K17 ["createElement"]
      366 GETUPVAL                         R28 9
      367 GETTABLEKS                       R28 R28 K18 ["View"]
      369 DUPTABLE                         R29 K64 [{"LayoutOrder", "tag", "onActivated", "onSecondaryActivated"}]
      370 MOVE                             R30 R3
      371 CALL                             R30 0 1
      372 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      374 LOADK                            R30 K65 ["size-2200-600 align-y-center"]
      375 SETTABLEKS                       R30 R29 K19 ["tag"]
      377 GETUPVAL                         R31 6
      378 JUMPIFNOT                        R31 ; [+2]
      379 MOVE                             R30 R17
      380 JUMP                             ; [+1]
      381 LOADNIL                          R30
      382 SETTABLEKS                       R30 R29 K21 ["onActivated"]
      384 GETUPVAL                         R31 6
      385 JUMPIFNOT                        R31 ; [+2]
      386 MOVE                             R30 R16
      387 JUMP                             ; [+1]
      388 LOADNIL                          R30
      389 SETTABLEKS                       R30 R29 K22 ["onSecondaryActivated"]
      391 DUPTABLE                         R30 K67 [{"Input"}]
      392 SETTABLEKS                       R20 R30 K66 ["Input"]
      394 CALL                             R27 3 1
      395 SETTABLEKS                       R27 R26 K28 ["ParameterInputContainer"]
      397 GETUPVAL                         R27 0
      398 GETTABLEKS                       R27 R27 K17 ["createElement"]
      400 GETUPVAL                         R28 10
      401 DUPTABLE                         R29 K73 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      402 SETTABLEKS                       R7 R29 K68 ["isOpen"]
      404 SETTABLEKS                       R17 R29 K69 ["close"]
      406 GETTABLEKS                       R30 R0 K7 ["node"]
      408 GETTABLEKS                       R30 R30 K8 ["name"]
      410 SETTABLEKS                       R30 R29 K70 ["parameterName"]
      412 SETTABLEKS                       R18 R29 K71 ["triggerRename"]
      414 SETTABLEKS                       R6 R29 K72 ["anchorRef"]
      416 CALL                             R27 2 1
      417 SETTABLEKS                       R27 R26 K29 ["ParameterPaneItemContextMenu"]
      419 CALL                             R23 3 -1
      420 RETURN                           R23 -1

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
       37 GETTABLEKS                       R6 R6 K12 ["ParameterPane"]
       39 GETTABLEKS                       R6 R6 K13 ["Constants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Components"]
       46 GETTABLEKS                       R7 R7 K12 ["ParameterPane"]
       48 GETTABLEKS                       R7 R7 K14 ["ParameterPaneItemContextMenu"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Components"]
       55 GETTABLEKS                       R8 R8 K15 ["CompositorNodeProperty"]
       57 GETTABLEKS                       R8 R8 K16 ["PropertyComponent"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K17 ["React"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K18 ["ReactUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Parent"]
       78 GETTABLEKS                       R11 R11 K19 ["SignalsReact"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Util"]
       85 GETTABLEKS                       R12 R12 K21 ["sanitizeParameterNames"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K23 [game]
       90 LOADK                            R14 K24 ["AnimGraphUIImproveParameterPaneItemRightClick"]
       91 LOADB                            R15 0
       92 NAMECALL                         R12 R12 K25 ["DefineFastFlag"]
       94 CALL                             R12 3 1
       95 DUPCLOSURE                       R13 K26 [PROTO_12]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R6
      107 RETURN                           R13 1
