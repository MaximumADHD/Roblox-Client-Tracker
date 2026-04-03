PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["node"]
        3 GETTABLEKS                       R1 R2 K2 ["name"]
        5 ORK                              R0 R1 K0 ["Unnamed Parameter"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["node"]
        3 GETTABLEKS                       R0 R1 K1 ["name"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["animationParameters"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["node"]
       14 GETTABLEKS                       R2 R3 K1 ["name"]
       16 GETTABLE                         R0 R1 R2
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["node"]
        3 GETTABLEKS                       R3 R4 K1 ["nodeType"]
        5 FASTCALL1                        TYPE R3 ; [+2]
        6 GETIMPORT                        R2 K3 [type]
        8 CALL                             R2 1 1
        9 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       15 LOADK                            R2 K5 ["Expected nodeType to be a string for parameter nodes"]
       16 GETIMPORT                        R0 K7 [assert]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K0 ["node"]
       22 GETTABLEKS                       R0 R1 K1 ["nodeType"]
       24 JUMPIFEQKS                       R0 K8 ["Enum"] ; [+7]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K0 ["node"]
       29 GETTABLEKS                       R0 R1 K1 ["nodeType"]
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 1
       33 JUMPIFEQKNIL                     R0 ; [+6]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R0 R1 K9 ["EnumType"]
       38 JUMPIFNOTEQKNIL                  R0 ; [+7]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K0 ["node"]
       43 GETTABLEKS                       R0 R1 K1 ["nodeType"]
       45 RETURN                           R0 1
       46 LOADK                            R1 K10 ["Enum."]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R3 R4 K9 ["EnumType"]
       50 FASTCALL1                        TOSTRING R3 ; [+2]
       51 GETIMPORT                        R2 K12 [tostring]
       53 CALL                             R2 1 1
       54 CONCAT                           R0 R1 R2
       55 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["santizeParameterNames"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["renameParameterAsync"]
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setAnimationNodeParameterAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["enable"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K1 ["current"]
       14 GETTABLEKS                       R0 R1 K2 ["focus"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+4]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R0 R1 K0 ["disable"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{"LayoutOrder", "Value", "Type", "tags", "Name", "Label", "OnChanged", "testId"}]
        5 LOADN                            R3 2
        6 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["Value"]
       11 GETUPVAL                         R3 3
       12 SETTABLEKS                       R3 R2 K3 ["Type"]
       14 LOADK                            R3 K10 ["align-y-center size-full-full"]
       15 SETTABLEKS                       R3 R2 K4 ["tags"]
       17 LOADK                            R3 K11 [""]
       18 SETTABLEKS                       R3 R2 K5 ["Name"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["Label"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R3 R2 K7 ["OnChanged"]
       27 LOADK                            R3 K12 ["ParameterPaneItem-PropertyInput"]
       28 SETTABLEKS                       R3 R2 K8 ["testId"]
       30 CALL                             R0 2 -1
       31 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["node"]
        3 GETTABLEKS                       R0 R1 K1 ["name"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K2 ["selectAllParameterNodesWithNameAsync"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["node"]
       13 GETTABLEKS                       R1 R2 K1 ["name"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["createNextOrder"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K3 ["useToggleState"]
       21 LOADB                            R5 0
       22 CALL                             R4 1 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K4 ["useRef"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["useRef"]
       31 LOADNIL                          R7
       32 CALL                             R6 1 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K5 ["useState"]
       36 LOADB                            R8 0
       37 CALL                             R7 1 2
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K6 ["useMemo"]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R11 0 1
       45 GETTABLEKS                       R13 R0 K7 ["node"]
       47 GETTABLEKS                       R12 R13 K8 ["name"]
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R10 R11 K5 ["useState"]
       55 MOVE                             R11 R9
       56 CALL                             R10 1 2
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       60 NEWCLOSURE                       R13 P1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 NEWTABLE                         R14 0 2
       65 GETTABLEKS                       R16 R0 K7 ["node"]
       67 GETTABLEKS                       R15 R16 K8 ["name"]
       69 GETTABLEKS                       R16 R1 K9 ["animationParameters"]
       71 SETLIST                          R14 R15 2 [1]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K6 ["useMemo"]
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R12
       80 NEWTABLE                         R15 0 2
       82 MOVE                             R16 R12
       83 GETTABLEKS                       R18 R0 K7 ["node"]
       85 GETTABLEKS                       R17 R18 K10 ["nodeType"]
       87 SETLIST                          R15 R16 2 [1]
       89 CALL                             R13 2 1
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R14 R15 K11 ["useCallback"]
       93 NEWCLOSURE                       R15 P3
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R9
       97 NEWTABLE                         R16 0 2
       99 MOVE                             R17 R9
      100 GETTABLEKS                       R18 R2 K12 ["renameParameterAsync"]
      102 SETLIST                          R16 R17 2 [1]
      104 CALL                             R14 2 1
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R15 R16 K11 ["useCallback"]
      108 NEWCLOSURE                       R16 P4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R9
      111 NEWTABLE                         R17 0 1
      113 MOVE                             R18 R9
      114 SETLIST                          R17 R18 1 [1]
      116 CALL                             R15 2 1
      117 GETUPVAL                         R17 0
      118 GETTABLEKS                       R16 R17 K11 ["useCallback"]
      120 NEWCLOSURE                       R17 P5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 NEWTABLE                         R18 0 3
      127 MOVE                             R19 R9
      128 MOVE                             R20 R4
      129 MOVE                             R21 R5
      130 SETLIST                          R18 R19 3 [1]
      132 CALL                             R16 2 1
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      136 NEWCLOSURE                       R18 P6
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R4
      141 NEWTABLE                         R19 0 4
      143 MOVE                             R20 R9
      144 MOVE                             R21 R10
      145 MOVE                             R22 R4
      146 MOVE                             R23 R14
      147 SETLIST                          R19 R20 4 [1]
      149 CALL                             R17 2 1
      150 GETUPVAL                         R19 0
      151 GETTABLEKS                       R18 R19 K6 ["useMemo"]
      153 NEWCLOSURE                       R19 P7
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R15
      159 NEWTABLE                         R20 0 3
      161 MOVE                             R21 R12
      162 MOVE                             R22 R13
      163 MOVE                             R23 R15
      164 SETLIST                          R20 R21 3 [1]
      166 CALL                             R18 2 1
      167 GETUPVAL                         R20 0
      168 GETTABLEKS                       R19 R20 K11 ["useCallback"]
      170 NEWCLOSURE                       R20 P8
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R2
      173 NEWTABLE                         R21 0 2
      175 GETTABLEKS                       R23 R0 K7 ["node"]
      177 GETTABLEKS                       R22 R23 K8 ["name"]
      179 GETTABLEKS                       R23 R2 K13 ["selectAllParameterNodesWithNameAsync"]
      181 SETLIST                          R21 R22 2 [1]
      183 CALL                             R19 2 1
      184 GETUPVAL                         R21 6
      185 GETTABLEKS                       R20 R21 K14 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      187 GETUPVAL                         R22 0
      188 GETTABLEKS                       R21 R22 K11 ["useCallback"]
      190 NEWCLOSURE                       R22 P9
      191 CAPTURE                          VAL R8
      192 NEWTABLE                         R23 0 0
      194 CALL                             R21 2 1
      195 GETUPVAL                         R23 0
      196 GETTABLEKS                       R22 R23 K11 ["useCallback"]
      198 NEWCLOSURE                       R23 P10
      199 CAPTURE                          VAL R8
      200 NEWTABLE                         R24 0 0
      202 CALL                             R22 2 1
      203 GETUPVAL                         R24 0
      204 GETTABLEKS                       R23 R24 K15 ["createElement"]
      206 GETUPVAL                         R25 7
      207 GETTABLEKS                       R24 R25 K16 ["View"]
      209 DUPTABLE                         R25 K22 [{"tag", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref"}]
      210 LOADK                            R26 K23 ["row gap-none align-x-left align-y-center size-full-700 padding-y-xxsmall"]
      211 SETTABLEKS                       R26 R25 K17 ["tag"]
      213 GETTABLEKS                       R26 R0 K18 ["LayoutOrder"]
      215 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      217 SETTABLEKS                       R19 R25 K19 ["onActivated"]
      219 SETTABLEKS                       R21 R25 K20 ["onSecondaryActivated"]
      221 SETTABLEKS                       R6 R25 K21 ["ref"]
      223 DUPTABLE                         R26 K28 [{"Spacer", "ParameterLabelContainer", "ParameterInputContainer", "ParameterPaneItemContextMenu"}]
      224 GETUPVAL                         R28 0
      225 GETTABLEKS                       R27 R28 K15 ["createElement"]
      227 GETUPVAL                         R29 7
      228 GETTABLEKS                       R28 R29 K16 ["View"]
      230 DUPTABLE                         R29 K29 [{"LayoutOrder", "tag"}]
      231 MOVE                             R30 R3
      232 CALL                             R30 0 1
      233 SETTABLEKS                       R30 R29 K18 ["LayoutOrder"]
      235 LOADK                            R30 K30 ["size-600-0"]
      236 SETTABLEKS                       R30 R29 K17 ["tag"]
      238 CALL                             R27 2 1
      239 SETTABLEKS                       R27 R26 K24 ["Spacer"]
      241 GETUPVAL                         R28 0
      242 GETTABLEKS                       R27 R28 K15 ["createElement"]
      244 GETUPVAL                         R29 7
      245 GETTABLEKS                       R28 R29 K16 ["View"]
      247 DUPTABLE                         R29 K29 [{"LayoutOrder", "tag"}]
      248 MOVE                             R30 R3
      249 CALL                             R30 0 1
      250 SETTABLEKS                       R30 R29 K18 ["LayoutOrder"]
      252 LOADK                            R30 K31 ["size-2000-full align-y-center"]
      253 SETTABLEKS                       R30 R29 K17 ["tag"]
      255 DUPTABLE                         R30 K34 [{"ParameterLabel", "ParameterLabelInput"}]
      256 GETUPVAL                         R32 0
      257 GETTABLEKS                       R31 R32 K15 ["createElement"]
      259 GETUPVAL                         R33 7
      260 GETTABLEKS                       R32 R33 K35 ["Text"]
      262 DUPTABLE                         R33 K40 [{"LayoutOrder", "tag", "Text", "size", "Visible", "onActivated", "width", "testId"}]
      263 MOVE                             R34 R3
      264 CALL                             R34 0 1
      265 SETTABLEKS                       R34 R33 K18 ["LayoutOrder"]
      267 NEWTABLE                         R34 2 0
      269 LOADB                            R35 1
      270 SETTABLEKS                       R35 R34 K41 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      272 LOADB                            R35 1
      273 SETTABLEKS                       R35 R34 K42 ["text-truncate-split"]
      275 SETTABLEKS                       R34 R33 K17 ["tag"]
      277 SETTABLEKS                       R9 R33 K35 ["Text"]
      279 GETUPVAL                         R37 7
      280 GETTABLEKS                       R36 R37 K43 ["Enums"]
      282 GETTABLEKS                       R35 R36 K44 ["InputSize"]
      284 GETTABLEKS                       R34 R35 K45 ["Small"]
      286 SETTABLEKS                       R34 R33 K36 ["size"]
      288 GETTABLEKS                       R35 R4 K46 ["enabled"]
      290 NOT                              R34 R35
      291 SETTABLEKS                       R34 R33 K37 ["Visible"]
      293 SETTABLEKS                       R16 R33 K19 ["onActivated"]
      295 SETTABLEKS                       R20 R33 K38 ["width"]
      297 LOADK                            R34 K47 ["ParameterPaneItem-InputLabel"]
      298 SETTABLEKS                       R34 R33 K39 ["testId"]
      300 CALL                             R31 2 1
      301 SETTABLEKS                       R31 R30 K32 ["ParameterLabel"]
      303 GETUPVAL                         R32 0
      304 GETTABLEKS                       R31 R32 K15 ["createElement"]
      306 GETUPVAL                         R33 7
      307 GETTABLEKS                       R32 R33 K48 ["TextInput"]
      309 DUPTABLE                         R33 K55 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "Visible", "textBoxRef", "onFocusLost", "testId"}]
      310 MOVE                             R34 R3
      311 CALL                             R34 0 1
      312 SETTABLEKS                       R34 R33 K18 ["LayoutOrder"]
      314 LOADK                            R34 K41 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      315 SETTABLEKS                       R34 R33 K17 ["tag"]
      317 SETTABLEKS                       R10 R33 K49 ["text"]
      319 LOADK                            R34 K56 [""]
      320 SETTABLEKS                       R34 R33 K50 ["label"]
      322 GETIMPORT                        R34 K60 [Enum.TextInputType.Default]
      324 SETTABLEKS                       R34 R33 K51 ["textInputType"]
      326 SETTABLEKS                       R11 R33 K52 ["onChanged"]
      328 GETUPVAL                         R37 7
      329 GETTABLEKS                       R36 R37 K43 ["Enums"]
      331 GETTABLEKS                       R35 R36 K44 ["InputSize"]
      333 GETTABLEKS                       R34 R35 K45 ["Small"]
      335 SETTABLEKS                       R34 R33 K36 ["size"]
      337 SETTABLEKS                       R20 R33 K38 ["width"]
      339 GETTABLEKS                       R34 R4 K46 ["enabled"]
      341 SETTABLEKS                       R34 R33 K37 ["Visible"]
      343 SETTABLEKS                       R5 R33 K53 ["textBoxRef"]
      345 SETTABLEKS                       R17 R33 K54 ["onFocusLost"]
      347 LOADK                            R34 K61 ["ParameterPaneItem-TextInput"]
      348 SETTABLEKS                       R34 R33 K39 ["testId"]
      350 CALL                             R31 2 1
      351 SETTABLEKS                       R31 R30 K33 ["ParameterLabelInput"]
      353 CALL                             R27 3 1
      354 SETTABLEKS                       R27 R26 K25 ["ParameterLabelContainer"]
      356 GETUPVAL                         R28 0
      357 GETTABLEKS                       R27 R28 K15 ["createElement"]
      359 GETUPVAL                         R29 7
      360 GETTABLEKS                       R28 R29 K16 ["View"]
      362 DUPTABLE                         R29 K29 [{"LayoutOrder", "tag"}]
      363 MOVE                             R30 R3
      364 CALL                             R30 0 1
      365 SETTABLEKS                       R30 R29 K18 ["LayoutOrder"]
      367 LOADK                            R30 K62 ["size-2200-600 align-y-center"]
      368 SETTABLEKS                       R30 R29 K17 ["tag"]
      370 DUPTABLE                         R30 K64 [{"Input"}]
      371 SETTABLEKS                       R18 R30 K63 ["Input"]
      373 CALL                             R27 3 1
      374 SETTABLEKS                       R27 R26 K26 ["ParameterInputContainer"]
      376 GETUPVAL                         R28 0
      377 GETTABLEKS                       R27 R28 K15 ["createElement"]
      379 GETUPVAL                         R28 8
      380 DUPTABLE                         R29 K70 [{"isOpen", "close", "parameterName", "triggerRename", "anchorRef"}]
      381 SETTABLEKS                       R7 R29 K65 ["isOpen"]
      383 SETTABLEKS                       R22 R29 K66 ["close"]
      385 GETTABLEKS                       R31 R0 K7 ["node"]
      387 GETTABLEKS                       R30 R31 K8 ["name"]
      389 SETTABLEKS                       R30 R29 K67 ["parameterName"]
      391 SETTABLEKS                       R16 R29 K68 ["triggerRename"]
      393 SETTABLEKS                       R6 R29 K69 ["anchorRef"]
      395 CALL                             R27 2 1
      396 SETTABLEKS                       R27 R26 K27 ["ParameterPaneItemContextMenu"]
      398 CALL                             R23 3 -1
      399 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R6 R7 K10 ["NativeGraphContext"]
       34 GETTABLEKS                       R5 R6 K11 ["NativeGraphUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["NodeViewTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Components"]
       46 GETTABLEKS                       R9 R10 K14 ["NodeView"]
       48 GETTABLEKS                       R8 R9 K15 ["ParameterPane"]
       50 GETTABLEKS                       R7 R8 K16 ["Constants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R11 R0 K13 ["Components"]
       57 GETTABLEKS                       R10 R11 K14 ["NodeView"]
       59 GETTABLEKS                       R9 R10 K15 ["ParameterPane"]
       61 GETTABLEKS                       R8 R9 K17 ["ParameterPaneItemContextMenu"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R12 R0 K13 ["Components"]
       68 GETTABLEKS                       R11 R12 K14 ["NodeView"]
       70 GETTABLEKS                       R10 R11 K18 ["CompositorNodeProperty"]
       72 GETTABLEKS                       R9 R10 K19 ["PropertyComponent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K8 ["Parent"]
       79 GETTABLEKS                       R10 R11 K20 ["React"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R12 R0 K8 ["Parent"]
       86 GETTABLEKS                       R11 R12 K21 ["ReactUtils"]
       88 CALL                             R10 1 1
       89 DUPCLOSURE                       R11 K22 [PROTO_14]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R7
       99 RETURN                           R11 1
