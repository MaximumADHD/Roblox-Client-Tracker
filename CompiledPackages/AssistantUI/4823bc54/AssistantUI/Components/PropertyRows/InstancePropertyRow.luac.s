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
      110 JUMPIFNOT                        R18 ; [+3]
      111 GETTABLEKS                       R19 R3 K17 ["InputPickModel"]
      113 JUMP                             ; [+2]
      114 GETTABLEKS                       R19 R3 K18 ["InputPickPart"]
      116 GETUPVAL                         R20 6
      117 GETUPVAL                         R21 7
      118 DUPTABLE                         R22 K24 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      119 NEWTABLE                         R23 4 0
      121 LOADB                            R24 1
      122 SETTABLEKS                       R24 R23 K25 ["row flex-around align-y-center gap-small radius-small"]
      124 SETTABLEKS                       R8 R23 K26 ["bg-emphasis"]
      126 NOT                              R24 R8
      127 SETTABLEKS                       R24 R23 K27 ["bg-shift-200"]
      129 SETTABLEKS                       R12 R23 K28 ["stroke-emphasis"]
      131 SETTABLEKS                       R23 R22 K19 ["tag"]
      133 GETIMPORT                        R23 K31 [UDim2.new]
      135 LOADN                            R24 1
      136 LOADN                            R25 0
      137 LOADN                            R26 0
      138 GETTABLEKS                       R27 R16 K20 ["Size"]
      140 GETTABLEKS                       R27 R27 K32 ["Size_600"]
      142 CALL                             R23 4 1
      143 SETTABLEKS                       R23 R22 K20 ["Size"]
      145 JUMPIF                           R6 ; [+2]
      146 MOVE                             R23 R13
      147 JUMP                             ; [+1]
      148 LOADNIL                          R23
      149 SETTABLEKS                       R23 R22 K21 ["onActivated"]
      151 JUMPIF                           R6 ; [+2]
      152 MOVE                             R23 R14
      153 JUMP                             ; [+1]
      154 LOADNIL                          R23
      155 SETTABLEKS                       R23 R22 K22 ["onStateChanged"]
      157 JUMPIFNOT                        R6 ; [+2]
      158 DUPTABLE                         R23 K35 [{["affordance"] = "None"}]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R23
      161 SETTABLEKS                       R23 R22 K23 ["stateLayer"]
      163 DUPTABLE                         R23 K41 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      164 GETUPVAL                         R24 6
      165 GETUPVAL                         R25 8
      166 DUPTABLE                         R26 K44 [{"tag", "Image", "LayoutOrder"}]
      167 NEWTABLE                         R27 2 0
      169 LOADB                            R28 1
      170 SETTABLEKS                       R28 R27 K45 ["size-300-300 radius-xsmall"]
      172 GETTABLEKS                       R29 R5 K42 ["Image"]
      174 NOT                              R28 R29
      175 JUMPIF                           R28 ; [+6]
      176 GETTABLEKS                       R29 R5 K42 ["Image"]
      178 JUMPIFEQKS                       R29 K46 [""] ; [+2]
      180 LOADB                            R28 0 +1
      181 LOADB                            R28 1
      182 SETTABLEKS                       R28 R27 K47 ["bg-shift-400"]
      184 SETTABLEKS                       R27 R26 K19 ["tag"]
      186 GETTABLEKS                       R27 R5 K42 ["Image"]
      188 SETTABLEKS                       R27 R26 K42 ["Image"]
      190 MOVE                             R27 R17
      191 CALL                             R27 0 1
      192 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      194 CALL                             R24 2 1
      195 SETTABLEKS                       R24 R23 K36 ["ClassIcon"]
      197 GETUPVAL                         R24 6
      198 GETUPVAL                         R25 9
      199 DUPTABLE                         R26 K51 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      200 NEWTABLE                         R27 4 0
      202 LOADB                            R28 1
      203 SETTABLEKS                       R28 R27 K52 ["align-x-left shrink size-0-full auto-x text-label-small text-align-x-left"]
      205 SETTABLEKS                       R8 R27 K53 ["content-action-emphasis"]
      207 NOT                              R28 R7
      208 JUMPIFNOT                        R28 ; [+3]
      209 NOT                              R28 R8
      210 JUMPIFNOT                        R28 ; [+1]
      211 NOT                              R28 R6
      212 SETTABLEKS                       R28 R27 K54 ["content-emphasis"]
      214 JUMPIFNOT                        R7 ; [+2]
      215 NOT                              R28 R8
      216 JUMPIF                           R28 ; [+1]
      217 MOVE                             R28 R6
      218 SETTABLEKS                       R28 R27 K55 ["content-muted"]
      220 SETTABLEKS                       R27 R26 K19 ["tag"]
      222 MOVE                             R27 R17
      223 CALL                             R27 0 1
      224 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      226 JUMPIFNOT                        R4 ; [+3]
      227 GETTABLEKS                       R27 R4 K56 ["name"]
      229 JUMPIF                           R27 ; [+1]
      230 MOVE                             R27 R19
      231 SETTABLEKS                       R27 R26 K50 ["Text"]
      233 CALL                             R24 2 1
      234 SETTABLEKS                       R24 R23 K37 ["InstanceName"]
      236 GETUPVAL                         R24 6
      237 GETUPVAL                         R25 7
      238 DUPTABLE                         R26 K58 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      239 MOVE                             R27 R17
      240 CALL                             R27 0 1
      241 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K38 ["Padding"]
      246 GETUPVAL                         R24 6
      247 GETUPVAL                         R25 10
      248 DUPTABLE                         R26 K62 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      249 SETTABLEKS                       R8 R26 K59 ["emphasis"]
      251 SETTABLEKS                       R15 R26 K60 ["onClose"]
      253 MOVE                             R27 R17
      254 CALL                             R27 0 1
      255 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      257 NOT                              R27 R7
      258 JUMPIFNOT                        R27 ; [+3]
      259 NOT                              R27 R8
      260 JUMPIFNOT                        R27 ; [+1]
      261 NOT                              R27 R6
      262 SETTABLEKS                       R27 R26 K61 ["Visible"]
      264 CALL                             R24 2 1
      265 SETTABLEKS                       R24 R23 K39 ["Cancel"]
      267 GETUPVAL                         R24 6
      268 LOADK                            R25 K40 ["UIPadding"]
      269 DUPTABLE                         R26 K64 [{"PaddingLeft"}]
      270 GETIMPORT                        R27 K66 [UDim.new]
      272 LOADN                            R28 0
      273 GETTABLEKS                       R29 R16 K20 ["Size"]
      275 GETTABLEKS                       R29 R29 K67 ["Size_150"]
      277 CALL                             R27 2 1
      278 SETTABLEKS                       R27 R26 K63 ["PaddingLeft"]
      280 CALL                             R24 2 1
      281 SETTABLEKS                       R24 R23 K40 ["UIPadding"]
      283 CALL                             R20 3 -1
      284 RETURN                           R20 -1

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
       74 GETTABLEKS                       R10 R2 K20 ["Image"]
       76 GETTABLEKS                       R11 R2 K21 ["Text"]
       78 GETTABLEKS                       R12 R2 K22 ["View"]
       80 GETTABLEKS                       R13 R3 K23 ["createElement"]
       82 GETTABLEKS                       R14 R4 K24 ["createNextOrder"]
       84 DUPCLOSURE                       R15 K25 [PROTO_4]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R8
       96 DUPCLOSURE                       R16 K26 [PROTO_5]
       97 CAPTURE                          VAL R9
       98 DUPTABLE                         R17 K29 [{"InstancePropertyRow", "createRowDefinition"}]
       99 SETTABLEKS                       R15 R17 K27 ["InstancePropertyRow"]
      101 SETTABLEKS                       R16 R17 K28 ["createRowDefinition"]
      103 RETURN                           R17 1
