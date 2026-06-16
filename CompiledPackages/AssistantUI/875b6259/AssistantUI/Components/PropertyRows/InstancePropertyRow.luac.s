PROTO_0:
        0 DUPTABLE                         R0 K2 [{"InputPickPart", "InputPickModel"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["MeshGen"]
        3 LOADK                            R4 K0 ["InputPickPart"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["InputPickPart"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["AnimationGen"]
       11 LOADK                            R4 K1 ["InputPickModel"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["InputPickModel"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K0 ["definition"]
       11 GETTABLEKS                       R2 R2 K1 ["options"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 1
       18 LOADB                            R3 0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K2 ["onChange"]
       23 JUMPIFNOT                        R1 ; [+14]
       24 DUPTABLE                         R3 K6 [{"className", "name", "uniqueId"}]
       25 GETTABLEKS                       R4 R1 K3 ["className"]
       27 SETTABLEKS                       R4 R3 K3 ["className"]
       29 GETTABLEKS                       R4 R1 K4 ["name"]
       31 SETTABLEKS                       R4 R3 K4 ["name"]
       33 GETTABLEKS                       R4 R1 K5 ["uniqueId"]
       35 SETTABLEKS                       R4 R3 K5 ["uniqueId"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 JUMPIFEQKS                       R0 K0 ["Hover"] ; [+5]
        4 JUMPIFEQKS                       R0 K1 ["Pressed"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChange"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["instances"]
        6 GETTABLEKS                       R2 R2 K2 ["pickInstanceAsync"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       13 DUPCLOSURE                       R4 K4 [PROTO_0]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K5 ["locale"]
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R4 R0 K6 ["value"]
       25 GETUPVAL                         R5 3
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R6 R4 K7 ["className"]
       29 JUMPIF                           R6 ; [+1]
       30 LOADNIL                          R6
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R0 K8 ["isDisabled"]
       34 JUMPIFEQKB                       R7 TRUE ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 NOT                              R7 R4
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K9 ["useState"]
       42 LOADB                            R9 0
       43 CALL                             R8 1 2
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K9 ["useState"]
       47 LOADB                            R11 0
       48 CALL                             R10 1 2
       49 MOVE                             R12 R10
       50 JUMPIFNOT                        R12 ; [+1]
       51 NOT                              R12 R6
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       55 NEWCLOSURE                       R14 P1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R15 0 4
       62 GETTABLEKS                       R16 R0 K11 ["onChange"]
       64 MOVE                             R17 R8
       65 MOVE                             R18 R2
       66 MOVE                             R19 R3
       67 SETLIST                          R15 R16 4 [1]
       69 CALL                             R13 2 1
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       73 NEWCLOSURE                       R15 P2
       74 CAPTURE                          VAL R11
       75 NEWTABLE                         R16 0 0
       77 CALL                             R14 2 1
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       81 NEWCLOSURE                       R16 P3
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R17 0 2
       85 GETTABLEKS                       R18 R0 K11 ["onChange"]
       87 MOVE                             R19 R3
       88 SETLIST                          R17 R18 2 [1]
       90 CALL                             R15 2 1
       91 GETUPVAL                         R16 4
       92 GETTABLEKS                       R16 R16 K12 ["Hooks"]
       94 GETTABLEKS                       R16 R16 K13 ["useTokens"]
       96 CALL                             R16 0 1
       97 GETUPVAL                         R17 5
       98 CALL                             R17 0 1
       99 GETTABLEKS                       R18 R0 K14 ["definition"]
      101 GETTABLEKS                       R18 R18 K15 ["options"]
      103 JUMPIFNOT                        R18 ; [+6]
      104 GETTABLEKS                       R18 R0 K14 ["definition"]
      106 GETTABLEKS                       R18 R18 K15 ["options"]
      108 GETTABLEKS                       R18 R18 K16 ["shouldSelectModel"]
      110 GETUPVAL                         R20 6
      111 CALL                             R20 0 1
      112 JUMPIFNOT                        R20 ; [+4]
      113 JUMPIFNOT                        R18 ; [+3]
      114 GETTABLEKS                       R19 R3 K17 ["InputPickModel"]
      116 JUMP                             ; [+2]
      117 GETTABLEKS                       R19 R3 K18 ["InputPickPart"]
      119 GETUPVAL                         R20 7
      120 GETUPVAL                         R21 8
      121 DUPTABLE                         R22 K24 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      122 NEWTABLE                         R23 4 0
      124 LOADB                            R24 1
      125 SETTABLEKS                       R24 R23 K25 ["row align-y-center flex-around radius-small gap-small"]
      127 SETTABLEKS                       R8 R23 K26 ["bg-emphasis"]
      129 NOT                              R24 R8
      130 SETTABLEKS                       R24 R23 K27 ["bg-shift-200"]
      132 SETTABLEKS                       R12 R23 K28 ["stroke-emphasis"]
      134 SETTABLEKS                       R23 R22 K19 ["tag"]
      136 GETIMPORT                        R23 K31 [UDim2.new]
      138 LOADN                            R24 1
      139 LOADN                            R25 0
      140 LOADN                            R26 0
      141 GETTABLEKS                       R27 R16 K20 ["Size"]
      143 GETTABLEKS                       R27 R27 K32 ["Size_600"]
      145 CALL                             R23 4 1
      146 SETTABLEKS                       R23 R22 K20 ["Size"]
      148 JUMPIF                           R6 ; [+2]
      149 MOVE                             R23 R13
      150 JUMP                             ; [+1]
      151 LOADNIL                          R23
      152 SETTABLEKS                       R23 R22 K21 ["onActivated"]
      154 JUMPIF                           R6 ; [+2]
      155 MOVE                             R23 R14
      156 JUMP                             ; [+1]
      157 LOADNIL                          R23
      158 SETTABLEKS                       R23 R22 K22 ["onStateChanged"]
      160 JUMPIFNOT                        R6 ; [+5]
      161 DUPTABLE                         R23 K34 [{"affordance"}]
      162 LOADK                            R24 K35 ["None"]
      163 SETTABLEKS                       R24 R23 K33 ["affordance"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R23
      167 SETTABLEKS                       R23 R22 K23 ["stateLayer"]
      169 DUPTABLE                         R23 K41 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      170 GETUPVAL                         R24 7
      171 GETUPVAL                         R25 9
      172 DUPTABLE                         R26 K44 [{"tag", "Image", "LayoutOrder"}]
      173 NEWTABLE                         R27 2 0
      175 LOADB                            R28 1
      176 SETTABLEKS                       R28 R27 K45 ["size-300-300 position-left-center radius-xsmall"]
      178 GETTABLEKS                       R29 R5 K42 ["Image"]
      180 NOT                              R28 R29
      181 JUMPIF                           R28 ; [+6]
      182 GETTABLEKS                       R29 R5 K42 ["Image"]
      184 JUMPIFEQKS                       R29 K46 [""] ; [+2]
      186 LOADB                            R28 0 +1
      187 LOADB                            R28 1
      188 SETTABLEKS                       R28 R27 K47 ["bg-shift-400"]
      190 SETTABLEKS                       R27 R26 K19 ["tag"]
      192 GETTABLEKS                       R27 R5 K42 ["Image"]
      194 SETTABLEKS                       R27 R26 K42 ["Image"]
      196 MOVE                             R27 R17
      197 CALL                             R27 0 1
      198 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      200 CALL                             R24 2 1
      201 SETTABLEKS                       R24 R23 K36 ["ClassIcon"]
      203 GETUPVAL                         R24 7
      204 GETUPVAL                         R25 10
      205 DUPTABLE                         R26 K50 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      206 NEWTABLE                         R27 4 0
      208 LOADB                            R28 1
      209 SETTABLEKS                       R28 R27 K51 ["size-0-full shrink auto-x align-x-left text-label-small text-align-x-left"]
      211 SETTABLEKS                       R8 R27 K52 ["content-action-emphasis"]
      213 NOT                              R28 R7
      214 JUMPIFNOT                        R28 ; [+3]
      215 NOT                              R28 R8
      216 JUMPIFNOT                        R28 ; [+1]
      217 NOT                              R28 R6
      218 SETTABLEKS                       R28 R27 K53 ["content-emphasis"]
      220 JUMPIFNOT                        R7 ; [+2]
      221 NOT                              R28 R8
      222 JUMPIF                           R28 ; [+1]
      223 MOVE                             R28 R6
      224 SETTABLEKS                       R28 R27 K54 ["content-muted"]
      226 SETTABLEKS                       R27 R26 K19 ["tag"]
      228 LOADB                            R27 1
      229 SETTABLEKS                       R27 R26 K48 ["ClipsDescendants"]
      231 MOVE                             R27 R17
      232 CALL                             R27 0 1
      233 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      235 JUMPIFNOT                        R4 ; [+3]
      236 GETTABLEKS                       R27 R4 K55 ["name"]
      238 JUMPIF                           R27 ; [+1]
      239 MOVE                             R27 R19
      240 SETTABLEKS                       R27 R26 K49 ["Text"]
      242 CALL                             R24 2 1
      243 SETTABLEKS                       R24 R23 K37 ["InstanceName"]
      245 GETUPVAL                         R24 7
      246 GETUPVAL                         R25 8
      247 DUPTABLE                         R26 K56 [{"tag", "LayoutOrder"}]
      248 LOADK                            R27 K57 ["grow size-0-full"]
      249 SETTABLEKS                       R27 R26 K19 ["tag"]
      251 MOVE                             R27 R17
      252 CALL                             R27 0 1
      253 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K38 ["Padding"]
      258 GETUPVAL                         R24 7
      259 GETUPVAL                         R25 11
      260 DUPTABLE                         R26 K61 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      261 SETTABLEKS                       R8 R26 K58 ["emphasis"]
      263 SETTABLEKS                       R15 R26 K59 ["onClose"]
      265 MOVE                             R27 R17
      266 CALL                             R27 0 1
      267 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      269 NOT                              R27 R7
      270 JUMPIFNOT                        R27 ; [+3]
      271 NOT                              R27 R8
      272 JUMPIFNOT                        R27 ; [+1]
      273 NOT                              R27 R6
      274 SETTABLEKS                       R27 R26 K60 ["Visible"]
      276 CALL                             R24 2 1
      277 SETTABLEKS                       R24 R23 K39 ["Cancel"]
      279 GETUPVAL                         R24 7
      280 LOADK                            R25 K40 ["UIPadding"]
      281 DUPTABLE                         R26 K63 [{"PaddingLeft"}]
      282 GETIMPORT                        R27 K65 [UDim.new]
      284 LOADN                            R28 0
      285 GETTABLEKS                       R29 R16 K20 ["Size"]
      287 GETTABLEKS                       R29 R29 K66 ["Size_150"]
      289 CALL                             R27 2 1
      290 SETTABLEKS                       R27 R26 K62 ["PaddingLeft"]
      292 CALL                             R24 2 1
      293 SETTABLEKS                       R24 R23 K40 ["UIPadding"]
      295 CALL                             R20 3 -1
      296 RETURN                           R20 -1

PROTO_5:
        0 DUPTABLE                         R1 K6 [{"type", "label", "prop", "initialValue", "initialVisible", "options"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K7 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K8 ["Instance"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["initialVisible"]
       22 SETTABLEKS                       R2 R1 K4 ["initialVisible"]
       24 GETTABLEKS                       R2 R0 K5 ["options"]
       26 SETTABLEKS                       R2 R1 K5 ["options"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K17 ["useClassIcon"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K8 ["Parent"]
       62 GETTABLEKS                       R9 R9 K18 ["CloseAffordance"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K8 ["Parent"]
       71 GETTABLEKS                       R10 R10 K19 ["PropertyRowTypes"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Flags"]
       78 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantInstancePickerSelectModel"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R2 K22 ["Image"]
       83 GETTABLEKS                       R12 R2 K23 ["Text"]
       85 GETTABLEKS                       R13 R2 K24 ["View"]
       87 GETTABLEKS                       R14 R3 K25 ["createElement"]
       89 GETTABLEKS                       R15 R4 K26 ["createNextOrder"]
       91 DUPCLOSURE                       R16 K27 [PROTO_4]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R17 K28 [PROTO_5]
      105 CAPTURE                          VAL R9
      106 DUPTABLE                         R18 K31 [{"InstancePropertyRow", "createRowDefinition"}]
      107 SETTABLEKS                       R16 R18 K29 ["InstancePropertyRow"]
      109 SETTABLEKS                       R17 R18 K30 ["createRowDefinition"]
      111 RETURN                           R18 1
