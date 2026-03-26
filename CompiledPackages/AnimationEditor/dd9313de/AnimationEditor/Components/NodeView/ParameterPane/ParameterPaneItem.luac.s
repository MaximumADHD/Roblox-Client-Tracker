PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["node"]
        3 GETTABLEKS                       R1 R2 K2 ["name"]
        5 ORK                              R0 R1 K0 ["Unnamed Parameter"]
        6 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
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
       32 GETUPVAL                         R3 1
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K10 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFEQKS                       R2 K11 ["EnumItem"] ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 FASTCALL1                        ASSERT R1 ; [+2]
       42 GETIMPORT                        R0 K7 [assert]
       44 CALL                             R0 1 0
       45 LOADK                            R1 K12 ["Enum."]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K13 ["EnumType"]
       49 FASTCALL1                        TOSTRING R3 ; [+2]
       50 GETIMPORT                        R2 K15 [tostring]
       52 CALL                             R2 1 1
       53 CONCAT                           R0 R1 R2
       54 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["renameAnimationParameterAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setAnimationNodeParameterAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectNodeFromNodeIdAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["node"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
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
       15 GETTABLEKS                       R3 R4 K2 ["useSignalState"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R8 R0 K4 ["node"]
       27 GETTABLEKS                       R7 R8 K5 ["id"]
       29 GETTABLEKS                       R8 R2 K6 ["observeNodeRenderInfoById"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 -1
       34 CALL                             R3 -1 1
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R4 R5 K7 ["useToggleState"]
       38 LOADB                            R5 0
       39 CALL                             R4 1 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K8 ["useRef"]
       43 LOADNIL                          R6
       44 CALL                             R5 1 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K8 ["useRef"]
       48 LOADNIL                          R7
       49 CALL                             R6 1 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K9 ["useState"]
       53 LOADB                            R8 0
       54 CALL                             R7 1 2
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K3 ["useMemo"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R11 0 1
       62 GETTABLEKS                       R13 R0 K4 ["node"]
       64 GETTABLEKS                       R12 R13 K10 ["name"]
       66 SETLIST                          R11 R12 1 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R10 R11 K9 ["useState"]
       72 MOVE                             R11 R9
       73 CALL                             R10 1 2
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R12 R13 K3 ["useMemo"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 NEWTABLE                         R14 0 2
       82 GETTABLEKS                       R16 R0 K4 ["node"]
       84 GETTABLEKS                       R15 R16 K10 ["name"]
       86 GETTABLEKS                       R16 R1 K11 ["animationParameters"]
       88 SETLIST                          R14 R15 2 [1]
       90 CALL                             R12 2 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R13 R14 K3 ["useMemo"]
       94 NEWCLOSURE                       R14 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R12
       97 NEWTABLE                         R15 0 2
       99 MOVE                             R16 R12
      100 GETTABLEKS                       R18 R0 K4 ["node"]
      102 GETTABLEKS                       R17 R18 K12 ["nodeType"]
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 1
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R14 R15 K13 ["useCallback"]
      110 NEWCLOSURE                       R15 P4
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R9
      114 NEWTABLE                         R16 0 3
      116 GETTABLEKS                       R18 R0 K4 ["node"]
      118 GETTABLEKS                       R17 R18 K5 ["id"]
      120 MOVE                             R18 R9
      121 GETTABLEKS                       R19 R1 K14 ["renameAnimationParameterAsync"]
      123 SETLIST                          R16 R17 3 [1]
      125 CALL                             R14 2 1
      126 GETUPVAL                         R16 0
      127 GETTABLEKS                       R15 R16 K13 ["useCallback"]
      129 NEWCLOSURE                       R16 P5
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R9
      132 NEWTABLE                         R17 0 1
      134 MOVE                             R18 R9
      135 SETLIST                          R17 R18 1 [1]
      137 CALL                             R15 2 1
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R16 R17 K13 ["useCallback"]
      141 NEWCLOSURE                       R17 P6
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R5
      146 NEWTABLE                         R18 0 3
      148 MOVE                             R19 R9
      149 MOVE                             R20 R4
      150 MOVE                             R21 R5
      151 SETLIST                          R18 R19 3 [1]
      153 CALL                             R16 2 1
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R17 R18 K13 ["useCallback"]
      157 NEWCLOSURE                       R18 P7
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R4
      162 NEWTABLE                         R19 0 4
      164 MOVE                             R20 R9
      165 MOVE                             R21 R10
      166 MOVE                             R22 R4
      167 MOVE                             R23 R14
      168 SETLIST                          R19 R20 4 [1]
      170 CALL                             R17 2 1
      171 GETUPVAL                         R19 0
      172 GETTABLEKS                       R18 R19 K3 ["useMemo"]
      174 NEWCLOSURE                       R19 P8
      175 CAPTURE                          UPVAL U0
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R15
      180 NEWTABLE                         R20 0 3
      182 MOVE                             R21 R12
      183 MOVE                             R22 R13
      184 MOVE                             R23 R15
      185 SETLIST                          R20 R21 3 [1]
      187 CALL                             R18 2 1
      188 GETUPVAL                         R20 0
      189 GETTABLEKS                       R19 R20 K13 ["useCallback"]
      191 NEWCLOSURE                       R20 P9
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R0
      194 NEWTABLE                         R21 0 2
      196 GETTABLEKS                       R23 R0 K4 ["node"]
      198 GETTABLEKS                       R22 R23 K5 ["id"]
      200 GETTABLEKS                       R23 R2 K15 ["selectNodeFromNodeIdAsync"]
      202 SETLIST                          R21 R22 2 [1]
      204 CALL                             R19 2 1
      205 GETUPVAL                         R21 6
      206 GETTABLEKS                       R20 R21 K16 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
      208 GETUPVAL                         R22 0
      209 GETTABLEKS                       R21 R22 K13 ["useCallback"]
      211 NEWCLOSURE                       R22 P10
      212 CAPTURE                          VAL R8
      213 NEWTABLE                         R23 0 0
      215 CALL                             R21 2 1
      216 GETUPVAL                         R23 0
      217 GETTABLEKS                       R22 R23 K13 ["useCallback"]
      219 NEWCLOSURE                       R23 P11
      220 CAPTURE                          VAL R8
      221 NEWTABLE                         R24 0 0
      223 CALL                             R22 2 1
      224 GETUPVAL                         R24 0
      225 GETTABLEKS                       R23 R24 K17 ["createElement"]
      227 GETUPVAL                         R25 7
      228 GETTABLEKS                       R24 R25 K18 ["View"]
      230 DUPTABLE                         R25 K26 [{"tag", "Size", "LayoutOrder", "onActivated", "onSecondaryActivated", "ref", "backgroundStyle"}]
      231 LOADK                            R27 K27 ["flex-x-evenly gap-small row align-x-center align-y-center padding-y-xxsmall auto-y radius-small"]
      232 JUMPIFNOT                        R3 ; [+5]
      233 GETTABLEKS                       R29 R3 K28 ["isSelected"]
      235 JUMPIFNOT                        R29 ; [+2]
      236 LOADK                            R28 K29 [" bg-system-emphasis"]
      237 JUMP                             ; [+1]
      238 LOADK                            R28 K30 [""]
      239 CONCAT                           R26 R27 R28
      240 SETTABLEKS                       R26 R25 K19 ["tag"]
      242 GETIMPORT                        R26 K33 [UDim2.new]
      244 LOADK                            R27 K34 [0.9]
      245 LOADN                            R28 0
      246 LOADN                            R29 0
      247 LOADN                            R30 0
      248 CALL                             R26 4 1
      249 SETTABLEKS                       R26 R25 K20 ["Size"]
      251 GETTABLEKS                       R26 R0 K21 ["LayoutOrder"]
      253 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      255 SETTABLEKS                       R19 R25 K22 ["onActivated"]
      257 SETTABLEKS                       R21 R25 K23 ["onSecondaryActivated"]
      259 SETTABLEKS                       R6 R25 K24 ["ref"]
      261 GETUPVAL                         R27 6
      262 GETTABLEKS                       R26 R27 K35 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
      264 SETTABLEKS                       R26 R25 K25 ["backgroundStyle"]
      266 DUPTABLE                         R26 K39 [{"LabelContainer", "InputContainer", "ParameterPaneItemContextMenu"}]
      267 GETUPVAL                         R28 0
      268 GETTABLEKS                       R27 R28 K17 ["createElement"]
      270 GETUPVAL                         R29 7
      271 GETTABLEKS                       R28 R29 K18 ["View"]
      273 DUPTABLE                         R29 K40 [{"LayoutOrder", "tag"}]
      274 LOADN                            R30 1
      275 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      277 LOADK                            R30 K41 ["fill row align-x-center align-y-center auto-none size-2100-400 "]
      278 SETTABLEKS                       R30 R29 K19 ["tag"]
      280 DUPTABLE                         R30 K44 [{"LabelText", "LabelTextInput"}]
      281 GETUPVAL                         R32 0
      282 GETTABLEKS                       R31 R32 K17 ["createElement"]
      284 GETUPVAL                         R33 7
      285 GETTABLEKS                       R32 R33 K45 ["InputLabel"]
      287 DUPTABLE                         R33 K51 [{"LayoutOrder", "tag", "Text", "size", "Visible", "onActivated", "width", "testId"}]
      288 LOADN                            R34 1
      289 SETTABLEKS                       R34 R33 K21 ["LayoutOrder"]
      291 LOADK                            R34 K52 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      292 SETTABLEKS                       R34 R33 K19 ["tag"]
      294 SETTABLEKS                       R9 R33 K46 ["Text"]
      296 GETUPVAL                         R37 7
      297 GETTABLEKS                       R36 R37 K53 ["Enums"]
      299 GETTABLEKS                       R35 R36 K54 ["InputSize"]
      301 GETTABLEKS                       R34 R35 K55 ["Small"]
      303 SETTABLEKS                       R34 R33 K47 ["size"]
      305 GETTABLEKS                       R35 R4 K56 ["enabled"]
      307 NOT                              R34 R35
      308 SETTABLEKS                       R34 R33 K48 ["Visible"]
      310 SETTABLEKS                       R16 R33 K22 ["onActivated"]
      312 SETTABLEKS                       R20 R33 K49 ["width"]
      314 LOADK                            R34 K57 ["ParameterPaneItem-InputLabel"]
      315 SETTABLEKS                       R34 R33 K50 ["testId"]
      317 CALL                             R31 2 1
      318 SETTABLEKS                       R31 R30 K42 ["LabelText"]
      320 GETUPVAL                         R32 0
      321 GETTABLEKS                       R31 R32 K17 ["createElement"]
      323 GETUPVAL                         R33 7
      324 GETTABLEKS                       R32 R33 K58 ["TextInput"]
      326 DUPTABLE                         R33 K65 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "Visible", "textBoxRef", "onFocusLost", "testId"}]
      327 LOADN                            R34 1
      328 SETTABLEKS                       R34 R33 K21 ["LayoutOrder"]
      330 LOADK                            R34 K52 ["align-y-center text-title-small text-align-x-left text-align-y-center size-full-full"]
      331 SETTABLEKS                       R34 R33 K19 ["tag"]
      333 SETTABLEKS                       R10 R33 K59 ["text"]
      335 LOADK                            R34 K30 [""]
      336 SETTABLEKS                       R34 R33 K60 ["label"]
      338 GETIMPORT                        R34 K69 [Enum.TextInputType.Default]
      340 SETTABLEKS                       R34 R33 K61 ["textInputType"]
      342 SETTABLEKS                       R11 R33 K62 ["onChanged"]
      344 GETUPVAL                         R37 7
      345 GETTABLEKS                       R36 R37 K53 ["Enums"]
      347 GETTABLEKS                       R35 R36 K54 ["InputSize"]
      349 GETTABLEKS                       R34 R35 K55 ["Small"]
      351 SETTABLEKS                       R34 R33 K47 ["size"]
      353 SETTABLEKS                       R20 R33 K49 ["width"]
      355 GETTABLEKS                       R34 R4 K56 ["enabled"]
      357 SETTABLEKS                       R34 R33 K48 ["Visible"]
      359 SETTABLEKS                       R5 R33 K63 ["textBoxRef"]
      361 SETTABLEKS                       R17 R33 K64 ["onFocusLost"]
      363 LOADK                            R34 K70 ["ParameterPaneItem-TextInput"]
      364 SETTABLEKS                       R34 R33 K50 ["testId"]
      366 CALL                             R31 2 1
      367 SETTABLEKS                       R31 R30 K43 ["LabelTextInput"]
      369 CALL                             R27 3 1
      370 SETTABLEKS                       R27 R26 K36 ["LabelContainer"]
      372 GETUPVAL                         R28 0
      373 GETTABLEKS                       R27 R28 K17 ["createElement"]
      375 GETUPVAL                         R29 7
      376 GETTABLEKS                       R28 R29 K18 ["View"]
      378 DUPTABLE                         R29 K40 [{"LayoutOrder", "tag"}]
      379 LOADN                            R30 2
      380 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      382 LOADK                            R30 K71 ["size-2100-700"]
      383 SETTABLEKS                       R30 R29 K19 ["tag"]
      385 DUPTABLE                         R30 K73 [{"Input"}]
      386 SETTABLEKS                       R18 R30 K72 ["Input"]
      388 CALL                             R27 3 1
      389 SETTABLEKS                       R27 R26 K37 ["InputContainer"]
      391 GETUPVAL                         R28 0
      392 GETTABLEKS                       R27 R28 K17 ["createElement"]
      394 GETUPVAL                         R28 8
      395 DUPTABLE                         R29 K79 [{"isOpen", "close", "nodeId", "triggerRename", "anchorRef"}]
      396 SETTABLEKS                       R7 R29 K74 ["isOpen"]
      398 SETTABLEKS                       R22 R29 K75 ["close"]
      400 GETTABLEKS                       R31 R0 K4 ["node"]
      402 GETTABLEKS                       R30 R31 K5 ["id"]
      404 SETTABLEKS                       R30 R29 K76 ["nodeId"]
      406 SETTABLEKS                       R16 R29 K77 ["triggerRename"]
      408 SETTABLEKS                       R6 R29 K78 ["anchorRef"]
      410 CALL                             R27 2 1
      411 SETTABLEKS                       R27 R26 K38 ["ParameterPaneItemContextMenu"]
      413 CALL                             R23 3 -1
      414 RETURN                           R23 -1

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
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Components"]
       37 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       39 GETTABLEKS                       R7 R8 K14 ["ParameterPane"]
       41 GETTABLEKS                       R6 R7 K15 ["Constants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R10 R0 K12 ["Components"]
       48 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       50 GETTABLEKS                       R8 R9 K14 ["ParameterPane"]
       52 GETTABLEKS                       R7 R8 K16 ["ParameterPaneItemContextMenu"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R11 R0 K12 ["Components"]
       59 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       61 GETTABLEKS                       R9 R10 K17 ["CompositorNodeProperty"]
       63 GETTABLEKS                       R8 R9 K18 ["PropertyComponent"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K8 ["Parent"]
       70 GETTABLEKS                       R9 R10 K19 ["React"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R11 R0 K8 ["Parent"]
       77 GETTABLEKS                       R10 R11 K20 ["ReactUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K8 ["Parent"]
       84 GETTABLEKS                       R11 R12 K21 ["SignalsReact"]
       86 CALL                             R10 1 1
       87 DUPCLOSURE                       R11 K22 [PROTO_15]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 RETURN                           R11 1
