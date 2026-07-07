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
      111 GETTABLEKS                       R20 R20 K17 ["FFlagAssistantInstancePickerSelectModel"]
      113 JUMPIFNOT                        R20 ; [+4]
      114 JUMPIFNOT                        R18 ; [+3]
      115 GETTABLEKS                       R19 R3 K18 ["InputPickModel"]
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R19 R3 K19 ["InputPickPart"]
      120 GETUPVAL                         R20 7
      121 GETUPVAL                         R21 8
      122 DUPTABLE                         R22 K25 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      123 NEWTABLE                         R23 4 0
      125 LOADB                            R24 1
      126 SETTABLEKS                       R24 R23 K26 ["row flex-around align-y-center gap-small radius-small"]
      128 SETTABLEKS                       R8 R23 K27 ["bg-emphasis"]
      130 NOT                              R24 R8
      131 SETTABLEKS                       R24 R23 K28 ["bg-shift-200"]
      133 SETTABLEKS                       R12 R23 K29 ["stroke-emphasis"]
      135 SETTABLEKS                       R23 R22 K20 ["tag"]
      137 GETIMPORT                        R23 K32 [UDim2.new]
      139 LOADN                            R24 1
      140 LOADN                            R25 0
      141 LOADN                            R26 0
      142 GETTABLEKS                       R27 R16 K21 ["Size"]
      144 GETTABLEKS                       R27 R27 K33 ["Size_600"]
      146 CALL                             R23 4 1
      147 SETTABLEKS                       R23 R22 K21 ["Size"]
      149 JUMPIF                           R6 ; [+2]
      150 MOVE                             R23 R13
      151 JUMP                             ; [+1]
      152 LOADNIL                          R23
      153 SETTABLEKS                       R23 R22 K22 ["onActivated"]
      155 JUMPIF                           R6 ; [+2]
      156 MOVE                             R23 R14
      157 JUMP                             ; [+1]
      158 LOADNIL                          R23
      159 SETTABLEKS                       R23 R22 K23 ["onStateChanged"]
      161 JUMPIFNOT                        R6 ; [+2]
      162 DUPTABLE                         R23 K36 [{["affordance"] = "None"}]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R23
      165 SETTABLEKS                       R23 R22 K24 ["stateLayer"]
      167 DUPTABLE                         R23 K42 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      168 GETUPVAL                         R24 7
      169 GETUPVAL                         R25 9
      170 DUPTABLE                         R26 K45 [{"tag", "Image", "LayoutOrder"}]
      171 NEWTABLE                         R27 2 0
      173 LOADB                            R28 1
      174 SETTABLEKS                       R28 R27 K46 ["size-300-300 radius-xsmall"]
      176 GETTABLEKS                       R29 R5 K43 ["Image"]
      178 NOT                              R28 R29
      179 JUMPIF                           R28 ; [+6]
      180 GETTABLEKS                       R29 R5 K43 ["Image"]
      182 JUMPIFEQKS                       R29 K47 [""] ; [+2]
      184 LOADB                            R28 0 +1
      185 LOADB                            R28 1
      186 SETTABLEKS                       R28 R27 K48 ["bg-shift-400"]
      188 SETTABLEKS                       R27 R26 K20 ["tag"]
      190 GETTABLEKS                       R27 R5 K43 ["Image"]
      192 SETTABLEKS                       R27 R26 K43 ["Image"]
      194 MOVE                             R27 R17
      195 CALL                             R27 0 1
      196 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      198 CALL                             R24 2 1
      199 SETTABLEKS                       R24 R23 K37 ["ClassIcon"]
      201 GETUPVAL                         R24 7
      202 GETUPVAL                         R25 10
      203 DUPTABLE                         R26 K52 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      204 NEWTABLE                         R27 4 0
      206 LOADB                            R28 1
      207 SETTABLEKS                       R28 R27 K53 ["align-x-left shrink size-0-full auto-x text-label-small text-align-x-left"]
      209 SETTABLEKS                       R8 R27 K54 ["content-action-emphasis"]
      211 NOT                              R28 R7
      212 JUMPIFNOT                        R28 ; [+3]
      213 NOT                              R28 R8
      214 JUMPIFNOT                        R28 ; [+1]
      215 NOT                              R28 R6
      216 SETTABLEKS                       R28 R27 K55 ["content-emphasis"]
      218 JUMPIFNOT                        R7 ; [+2]
      219 NOT                              R28 R8
      220 JUMPIF                           R28 ; [+1]
      221 MOVE                             R28 R6
      222 SETTABLEKS                       R28 R27 K56 ["content-muted"]
      224 SETTABLEKS                       R27 R26 K20 ["tag"]
      226 MOVE                             R27 R17
      227 CALL                             R27 0 1
      228 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      230 JUMPIFNOT                        R4 ; [+3]
      231 GETTABLEKS                       R27 R4 K57 ["name"]
      233 JUMPIF                           R27 ; [+1]
      234 MOVE                             R27 R19
      235 SETTABLEKS                       R27 R26 K51 ["Text"]
      237 CALL                             R24 2 1
      238 SETTABLEKS                       R24 R23 K38 ["InstanceName"]
      240 GETUPVAL                         R24 7
      241 GETUPVAL                         R25 8
      242 DUPTABLE                         R26 K59 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      243 MOVE                             R27 R17
      244 CALL                             R27 0 1
      245 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      247 CALL                             R24 2 1
      248 SETTABLEKS                       R24 R23 K39 ["Padding"]
      250 GETUPVAL                         R24 7
      251 GETUPVAL                         R25 11
      252 DUPTABLE                         R26 K63 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      253 SETTABLEKS                       R8 R26 K60 ["emphasis"]
      255 SETTABLEKS                       R15 R26 K61 ["onClose"]
      257 MOVE                             R27 R17
      258 CALL                             R27 0 1
      259 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      261 NOT                              R27 R7
      262 JUMPIFNOT                        R27 ; [+3]
      263 NOT                              R27 R8
      264 JUMPIFNOT                        R27 ; [+1]
      265 NOT                              R27 R6
      266 SETTABLEKS                       R27 R26 K62 ["Visible"]
      268 CALL                             R24 2 1
      269 SETTABLEKS                       R24 R23 K40 ["Cancel"]
      271 GETUPVAL                         R24 7
      272 LOADK                            R25 K41 ["UIPadding"]
      273 DUPTABLE                         R26 K65 [{"PaddingLeft"}]
      274 GETIMPORT                        R27 K67 [UDim.new]
      276 LOADN                            R28 0
      277 GETTABLEKS                       R29 R16 K21 ["Size"]
      279 GETTABLEKS                       R29 R29 K68 ["Size_150"]
      281 CALL                             R27 2 1
      282 SETTABLEKS                       R27 R26 K64 ["PaddingLeft"]
      284 CALL                             R24 2 1
      285 SETTABLEKS                       R24 R23 K41 ["UIPadding"]
      287 CALL                             R20 3 -1
      288 RETURN                           R20 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Resources"]
       44 GETTABLEKS                       R7 R7 K14 ["Localization"]
       46 GETTABLEKS                       R7 R7 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       58 GETTABLEKS                       R9 R9 K18 ["useClassIcon"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K9 ["Parent"]
       67 GETTABLEKS                       R10 R10 K19 ["CloseAffordance"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K9 ["Parent"]
       76 GETTABLEKS                       R11 R11 K20 ["PropertyRowTypes"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R3 K21 ["Image"]
       81 GETTABLEKS                       R12 R3 K22 ["Text"]
       83 GETTABLEKS                       R13 R3 K23 ["View"]
       85 GETTABLEKS                       R14 R4 K24 ["createElement"]
       87 GETTABLEKS                       R15 R5 K25 ["createNextOrder"]
       89 DUPCLOSURE                       R16 K26 [PROTO_4]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R9
      102 DUPCLOSURE                       R17 K27 [PROTO_5]
      103 CAPTURE                          VAL R10
      104 DUPTABLE                         R18 K30 [{"InstancePropertyRow", "createRowDefinition"}]
      105 SETTABLEKS                       R16 R18 K28 ["InstancePropertyRow"]
      107 SETTABLEKS                       R17 R18 K29 ["createRowDefinition"]
      109 RETURN                           R18 1
