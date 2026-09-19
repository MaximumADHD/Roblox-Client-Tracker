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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["definition"]
        3 GETTABLEKS                       R0 R0 K1 ["validate"]
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R1 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 1
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_2:
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
       20 JUMPIF                           R1 ; [+6]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K2 ["onChange"]
       24 LOADNIL                          R3
       25 CALL                             R2 1 0
       26 RETURN                           R0 0
       27 DUPTABLE                         R2 K8 [{["className"], ["name"], ["uniqueId"], ["isValid"] = }]
       28 GETTABLEKS                       R3 R1 K3 ["className"]
       30 SETTABLEKS                       R3 R2 K3 ["className"]
       32 GETTABLEKS                       R3 R1 K4 ["name"]
       34 SETTABLEKS                       R3 R2 K4 ["name"]
       36 GETTABLEKS                       R3 R1 K5 ["uniqueId"]
       38 SETTABLEKS                       R3 R2 K5 ["uniqueId"]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K0 ["definition"]
       43 GETTABLEKS                       R3 R3 K9 ["resolveValidityAsync"]
       45 JUMPIFNOT                        R3 ; [+5]
       46 MOVE                             R4 R3
       47 MOVE                             R5 R2
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R2 K6 ["isValid"]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K2 ["onChange"]
       54 MOVE                             R5 R2
       55 CALL                             R4 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 JUMPIFEQKS                       R0 K0 ["Hover"] ; [+5]
        4 JUMPIFEQKS                       R0 K1 ["Pressed"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChange"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
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
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 2
       33 GETTABLEKS                       R8 R0 K7 ["definition"]
       35 GETTABLEKS                       R8 R8 K8 ["validate"]
       37 MOVE                             R9 R4
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 JUMPIFNOTEQKNIL                  R5 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 GETUPVAL                         R7 3
       46 JUMPIFNOT                        R4 ; [+3]
       47 GETTABLEKS                       R8 R4 K9 ["className"]
       49 JUMPIF                           R8 ; [+1]
       50 LOADNIL                          R8
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       54 JUMPIFEQKB                       R9 TRUE ; [+2]
       56 LOADB                            R8 0 +1
       57 LOADB                            R8 1
       58 NOT                              R9 R4
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K11 ["useState"]
       62 LOADB                            R11 0
       63 CALL                             R10 1 2
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K11 ["useState"]
       67 LOADB                            R13 0
       68 CALL                             R12 1 2
       69 MOVE                             R14 R12
       70 JUMPIFNOT                        R14 ; [+1]
       71 NOT                              R14 R8
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K12 ["useCallback"]
       75 NEWCLOSURE                       R16 P2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R17 0 5
       82 GETTABLEKS                       R18 R0 K13 ["onChange"]
       84 GETTABLEKS                       R19 R0 K7 ["definition"]
       86 GETTABLEKS                       R19 R19 K14 ["resolveValidityAsync"]
       88 MOVE                             R20 R10
       89 MOVE                             R21 R2
       90 MOVE                             R22 R3
       91 SETLIST                          R17 R18 5 [1]
       93 CALL                             R15 2 1
       94 GETUPVAL                         R16 1
       95 GETTABLEKS                       R16 R16 K12 ["useCallback"]
       97 NEWCLOSURE                       R17 P3
       98 CAPTURE                          VAL R13
       99 NEWTABLE                         R18 0 0
      101 CALL                             R16 2 1
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K12 ["useCallback"]
      105 NEWCLOSURE                       R18 P4
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R19 0 2
      109 GETTABLEKS                       R20 R0 K13 ["onChange"]
      111 MOVE                             R21 R3
      112 SETLIST                          R19 R20 2 [1]
      114 CALL                             R17 2 1
      115 GETUPVAL                         R18 4
      116 GETTABLEKS                       R18 R18 K15 ["Hooks"]
      118 GETTABLEKS                       R18 R18 K16 ["useTokens"]
      120 CALL                             R18 0 1
      121 GETUPVAL                         R19 5
      122 CALL                             R19 0 1
      123 GETTABLEKS                       R20 R0 K7 ["definition"]
      125 GETTABLEKS                       R20 R20 K17 ["options"]
      127 JUMPIFNOT                        R20 ; [+6]
      128 GETTABLEKS                       R20 R0 K7 ["definition"]
      130 GETTABLEKS                       R20 R20 K17 ["options"]
      132 GETTABLEKS                       R20 R20 K18 ["shouldSelectModel"]
      134 JUMPIFNOT                        R20 ; [+3]
      135 GETTABLEKS                       R21 R3 K19 ["InputPickModel"]
      137 JUMP                             ; [+2]
      138 GETTABLEKS                       R21 R3 K20 ["InputPickPart"]
      140 GETUPVAL                         R22 6
      141 GETUPVAL                         R23 7
      142 DUPTABLE                         R24 K26 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      143 NEWTABLE                         R25 8 0
      145 LOADB                            R26 1
      146 SETTABLEKS                       R26 R25 K27 ["row flex-around align-y-center gap-small radius-small"]
      148 SETTABLEKS                       R10 R25 K28 ["bg-emphasis"]
      150 NOT                              R26 R10
      151 SETTABLEKS                       R26 R25 K29 ["bg-shift-200"]
      153 MOVE                             R26 R14
      154 JUMPIFNOT                        R26 ; [+1]
      155 NOT                              R26 R6
      156 SETTABLEKS                       R26 R25 K30 ["stroke-emphasis"]
      158 SETTABLEKS                       R6 R25 K31 ["stroke-alert"]
      160 SETTABLEKS                       R25 R24 K21 ["tag"]
      162 GETIMPORT                        R25 K34 [UDim2.new]
      164 LOADN                            R26 1
      165 LOADN                            R27 0
      166 LOADN                            R28 0
      167 GETTABLEKS                       R29 R18 K22 ["Size"]
      169 GETTABLEKS                       R29 R29 K35 ["Size_600"]
      171 CALL                             R25 4 1
      172 SETTABLEKS                       R25 R24 K22 ["Size"]
      174 JUMPIF                           R8 ; [+2]
      175 MOVE                             R25 R15
      176 JUMP                             ; [+1]
      177 LOADNIL                          R25
      178 SETTABLEKS                       R25 R24 K23 ["onActivated"]
      180 JUMPIF                           R8 ; [+2]
      181 MOVE                             R25 R16
      182 JUMP                             ; [+1]
      183 LOADNIL                          R25
      184 SETTABLEKS                       R25 R24 K24 ["onStateChanged"]
      186 JUMPIFNOT                        R8 ; [+2]
      187 DUPTABLE                         R25 K38 [{["affordance"] = "None"}]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R25
      190 SETTABLEKS                       R25 R24 K25 ["stateLayer"]
      192 DUPTABLE                         R25 K44 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      193 GETUPVAL                         R26 6
      194 GETUPVAL                         R27 8
      195 DUPTABLE                         R28 K47 [{"tag", "Image", "LayoutOrder"}]
      196 NEWTABLE                         R29 2 0
      198 LOADB                            R30 1
      199 SETTABLEKS                       R30 R29 K48 ["size-300-300 radius-xsmall"]
      201 GETTABLEKS                       R31 R7 K45 ["Image"]
      203 NOT                              R30 R31
      204 JUMPIF                           R30 ; [+6]
      205 GETTABLEKS                       R31 R7 K45 ["Image"]
      207 JUMPIFEQKS                       R31 K49 [""] ; [+2]
      209 LOADB                            R30 0 +1
      210 LOADB                            R30 1
      211 SETTABLEKS                       R30 R29 K50 ["bg-shift-400"]
      213 SETTABLEKS                       R29 R28 K21 ["tag"]
      215 GETTABLEKS                       R29 R7 K45 ["Image"]
      217 SETTABLEKS                       R29 R28 K45 ["Image"]
      219 MOVE                             R29 R19
      220 CALL                             R29 0 1
      221 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      223 CALL                             R26 2 1
      224 SETTABLEKS                       R26 R25 K39 ["ClassIcon"]
      226 GETUPVAL                         R26 6
      227 GETUPVAL                         R27 9
      228 DUPTABLE                         R28 K54 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      229 NEWTABLE                         R29 4 0
      231 LOADB                            R30 1
      232 SETTABLEKS                       R30 R29 K55 ["align-x-left shrink size-0-full auto-x text-label-small text-align-x-left"]
      234 SETTABLEKS                       R10 R29 K56 ["content-action-emphasis"]
      236 NOT                              R30 R9
      237 JUMPIFNOT                        R30 ; [+3]
      238 NOT                              R30 R10
      239 JUMPIFNOT                        R30 ; [+1]
      240 NOT                              R30 R8
      241 SETTABLEKS                       R30 R29 K57 ["content-emphasis"]
      243 JUMPIFNOT                        R9 ; [+2]
      244 NOT                              R30 R10
      245 JUMPIF                           R30 ; [+1]
      246 MOVE                             R30 R8
      247 SETTABLEKS                       R30 R29 K58 ["content-muted"]
      249 SETTABLEKS                       R29 R28 K21 ["tag"]
      251 MOVE                             R29 R19
      252 CALL                             R29 0 1
      253 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      255 JUMPIFNOT                        R4 ; [+3]
      256 GETTABLEKS                       R29 R4 K59 ["name"]
      258 JUMPIF                           R29 ; [+1]
      259 MOVE                             R29 R21
      260 SETTABLEKS                       R29 R28 K53 ["Text"]
      262 CALL                             R26 2 1
      263 SETTABLEKS                       R26 R25 K40 ["InstanceName"]
      265 GETUPVAL                         R26 6
      266 GETUPVAL                         R27 7
      267 DUPTABLE                         R28 K61 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      268 MOVE                             R29 R19
      269 CALL                             R29 0 1
      270 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      272 CALL                             R26 2 1
      273 SETTABLEKS                       R26 R25 K41 ["Padding"]
      275 GETUPVAL                         R26 6
      276 GETUPVAL                         R27 10
      277 DUPTABLE                         R28 K65 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      278 SETTABLEKS                       R10 R28 K62 ["emphasis"]
      280 SETTABLEKS                       R17 R28 K63 ["onClose"]
      282 MOVE                             R29 R19
      283 CALL                             R29 0 1
      284 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      286 NOT                              R29 R9
      287 JUMPIFNOT                        R29 ; [+3]
      288 NOT                              R29 R10
      289 JUMPIFNOT                        R29 ; [+1]
      290 NOT                              R29 R8
      291 SETTABLEKS                       R29 R28 K64 ["Visible"]
      293 CALL                             R26 2 1
      294 SETTABLEKS                       R26 R25 K42 ["Cancel"]
      296 GETUPVAL                         R26 6
      297 LOADK                            R27 K43 ["UIPadding"]
      298 DUPTABLE                         R28 K67 [{"PaddingLeft"}]
      299 GETIMPORT                        R29 K69 [UDim.new]
      301 LOADN                            R30 0
      302 GETTABLEKS                       R31 R18 K22 ["Size"]
      304 GETTABLEKS                       R31 R31 K70 ["Size_150"]
      306 CALL                             R29 2 1
      307 SETTABLEKS                       R29 R28 K66 ["PaddingLeft"]
      309 CALL                             R26 2 1
      310 SETTABLEKS                       R26 R25 K43 ["UIPadding"]
      312 CALL                             R22 3 1
      313 GETTABLEKS                       R23 R0 K7 ["definition"]
      315 GETTABLEKS                       R23 R23 K8 ["validate"]
      317 JUMPIF                           R23 ; [+1]
      318 RETURN                           R22 1
      319 GETUPVAL                         R23 6
      320 GETUPVAL                         R24 7
      321 DUPTABLE                         R25 K72 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      322 DUPTABLE                         R26 K75 [{"Row", "ErrorLabel"}]
      323 SETTABLEKS                       R22 R26 K73 ["Row"]
      325 JUMPIFNOT                        R5 ; [+7]
      326 GETUPVAL                         R27 6
      327 GETUPVAL                         R28 9
      328 DUPTABLE                         R29 K78 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"] = 1}]
      329 SETTABLEKS                       R5 R29 K53 ["Text"]
      331 CALL                             R27 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R27
      334 SETTABLEKS                       R27 R26 K74 ["ErrorLabel"]
      336 CALL                             R23 3 -1
      337 RETURN                           R23 -1

PROTO_6:
        0 DUPTABLE                         R1 K8 [{"type", "label", "prop", "initialValue", "initialVisible", "options", "validate", "resolveValidityAsync"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K9 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K10 ["Instance"]
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
       28 GETTABLEKS                       R2 R0 K6 ["validate"]
       30 SETTABLEKS                       R2 R1 K6 ["validate"]
       32 GETTABLEKS                       R2 R0 K7 ["resolveValidityAsync"]
       34 SETTABLEKS                       R2 R1 K7 ["resolveValidityAsync"]
       36 RETURN                           R1 1

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
       84 DUPCLOSURE                       R15 K25 [PROTO_5]
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
       96 DUPCLOSURE                       R16 K26 [PROTO_6]
       97 CAPTURE                          VAL R9
       98 DUPTABLE                         R17 K29 [{"InstancePropertyRow", "createRowDefinition"}]
       99 SETTABLEKS                       R15 R17 K27 ["InstancePropertyRow"]
      101 SETTABLEKS                       R16 R17 K28 ["createRowDefinition"]
      103 RETURN                           R17 1
