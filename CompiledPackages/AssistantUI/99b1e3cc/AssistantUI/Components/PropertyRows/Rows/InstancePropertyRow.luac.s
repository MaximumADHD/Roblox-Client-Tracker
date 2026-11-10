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
        8 DUPTABLE                         R2 K2 [{"isA", "shouldSelectModel"}]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K0 ["isA"]
       12 GETUPVAL                         R3 4
       13 SETTABLEKS                       R3 R2 K1 ["shouldSelectModel"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 1
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 JUMPIF                           R1 ; [+6]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K3 ["setValue"]
       23 LOADNIL                          R3
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 DUPTABLE                         R2 K9 [{["className"], ["name"], ["uniqueId"], ["isValid"] = }]
       27 GETTABLEKS                       R3 R1 K4 ["className"]
       29 SETTABLEKS                       R3 R2 K4 ["className"]
       31 GETTABLEKS                       R3 R1 K5 ["name"]
       33 SETTABLEKS                       R3 R2 K5 ["name"]
       35 GETTABLEKS                       R3 R1 K6 ["uniqueId"]
       37 SETTABLEKS                       R3 R2 K6 ["uniqueId"]
       39 GETUPVAL                         R3 6
       40 GETTABLEKS                       R3 R3 K10 ["resolveValidityAsync"]
       42 JUMPIFNOT                        R3 ; [+5]
       43 MOVE                             R4 R3
       44 MOVE                             R5 R2
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R2 K7 ["isValid"]
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R4 R4 K3 ["setValue"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["setValue"]
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
       10 GETTABLEKS                       R3 R0 K3 ["definition"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       15 DUPCLOSURE                       R5 K5 [PROTO_0]
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R6 0 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K6 ["locale"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R5 R0 K7 ["value"]
       27 GETUPVAL                         R6 3
       28 JUMPIFNOT                        R5 ; [+3]
       29 GETTABLEKS                       R7 R5 K8 ["className"]
       31 JUMPIF                           R7 ; [+1]
       32 LOADNIL                          R7
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R0 K9 ["interactable"]
       36 NOT                              R7 R8
       37 NOT                              R8 R5
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K10 ["useState"]
       41 LOADB                            R10 0
       42 CALL                             R9 1 2
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K10 ["useState"]
       46 LOADB                            R12 0
       47 CALL                             R11 1 2
       48 MOVE                             R13 R11
       49 JUMPIFNOT                        R13 ; [+1]
       50 NOT                              R13 R7
       51 GETTABLEKS                       R14 R3 K11 ["instanceClasses"]
       53 GETTABLEKS                       R15 R3 K12 ["shouldSelectModel"]
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       58 NEWCLOSURE                       R17 P1
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R15
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R18 0 6
       68 GETTABLEKS                       R19 R0 K14 ["setValue"]
       70 MOVE                             R20 R9
       71 MOVE                             R21 R2
       72 MOVE                             R22 R14
       73 MOVE                             R23 R15
       74 GETTABLEKS                       R24 R3 K15 ["resolveValidityAsync"]
       76 SETLIST                          R18 R19 6 [1]
       78 CALL                             R16 2 1
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       82 NEWCLOSURE                       R18 P2
       83 CAPTURE                          VAL R12
       84 NEWTABLE                         R19 0 0
       86 CALL                             R17 2 1
       87 GETUPVAL                         R18 1
       88 GETTABLEKS                       R18 R18 K13 ["useCallback"]
       90 NEWCLOSURE                       R19 P3
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R20 0 1
       94 GETTABLEKS                       R21 R0 K14 ["setValue"]
       96 SETLIST                          R20 R21 1 [1]
       98 CALL                             R18 2 1
       99 GETUPVAL                         R19 4
      100 GETTABLEKS                       R19 R19 K16 ["Hooks"]
      102 GETTABLEKS                       R19 R19 K17 ["useTokens"]
      104 CALL                             R19 0 1
      105 GETUPVAL                         R20 5
      106 CALL                             R20 0 1
      107 JUMPIFNOT                        R15 ; [+3]
      108 GETTABLEKS                       R21 R4 K18 ["InputPickModel"]
      110 JUMP                             ; [+2]
      111 GETTABLEKS                       R21 R4 K19 ["InputPickPart"]
      113 GETUPVAL                         R22 6
      114 GETUPVAL                         R23 7
      115 DUPTABLE                         R24 K25 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      116 NEWTABLE                         R25 4 0
      118 LOADB                            R26 1
      119 SETTABLEKS                       R26 R25 K26 ["row flex-around align-y-center gap-small radius-small"]
      121 SETTABLEKS                       R9 R25 K27 ["bg-emphasis"]
      123 NOT                              R26 R9
      124 SETTABLEKS                       R26 R25 K28 ["bg-shift-200"]
      126 SETTABLEKS                       R13 R25 K29 ["stroke-emphasis"]
      128 SETTABLEKS                       R25 R24 K20 ["tag"]
      130 GETIMPORT                        R25 K32 [UDim2.new]
      132 LOADN                            R26 1
      133 LOADN                            R27 0
      134 LOADN                            R28 0
      135 GETTABLEKS                       R29 R19 K21 ["Size"]
      137 GETTABLEKS                       R29 R29 K33 ["Size_600"]
      139 CALL                             R25 4 1
      140 SETTABLEKS                       R25 R24 K21 ["Size"]
      142 JUMPIF                           R7 ; [+2]
      143 MOVE                             R25 R16
      144 JUMP                             ; [+1]
      145 LOADNIL                          R25
      146 SETTABLEKS                       R25 R24 K22 ["onActivated"]
      148 JUMPIF                           R7 ; [+2]
      149 MOVE                             R25 R17
      150 JUMP                             ; [+1]
      151 LOADNIL                          R25
      152 SETTABLEKS                       R25 R24 K23 ["onStateChanged"]
      154 JUMPIFNOT                        R7 ; [+2]
      155 DUPTABLE                         R25 K36 [{["affordance"] = "None"}]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R25
      158 SETTABLEKS                       R25 R24 K24 ["stateLayer"]
      160 DUPTABLE                         R25 K42 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      161 GETUPVAL                         R26 6
      162 GETUPVAL                         R27 8
      163 DUPTABLE                         R28 K45 [{"tag", "Image", "LayoutOrder"}]
      164 NEWTABLE                         R29 2 0
      166 LOADB                            R30 1
      167 SETTABLEKS                       R30 R29 K46 ["size-300-300 radius-xsmall"]
      169 GETTABLEKS                       R31 R6 K43 ["Image"]
      171 NOT                              R30 R31
      172 JUMPIF                           R30 ; [+6]
      173 GETTABLEKS                       R31 R6 K43 ["Image"]
      175 JUMPIFEQKS                       R31 K47 [""] ; [+2]
      177 LOADB                            R30 0 +1
      178 LOADB                            R30 1
      179 SETTABLEKS                       R30 R29 K48 ["bg-shift-400"]
      181 SETTABLEKS                       R29 R28 K20 ["tag"]
      183 GETTABLEKS                       R29 R6 K43 ["Image"]
      185 SETTABLEKS                       R29 R28 K43 ["Image"]
      187 MOVE                             R29 R20
      188 CALL                             R29 0 1
      189 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      191 CALL                             R26 2 1
      192 SETTABLEKS                       R26 R25 K37 ["ClassIcon"]
      194 GETUPVAL                         R26 6
      195 GETUPVAL                         R27 9
      196 DUPTABLE                         R28 K52 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      197 NEWTABLE                         R29 4 0
      199 LOADB                            R30 1
      200 SETTABLEKS                       R30 R29 K53 ["align-x-left shrink size-0-full auto-x text-label-small text-align-x-left"]
      202 SETTABLEKS                       R9 R29 K54 ["content-action-emphasis"]
      204 NOT                              R30 R8
      205 JUMPIFNOT                        R30 ; [+3]
      206 NOT                              R30 R9
      207 JUMPIFNOT                        R30 ; [+1]
      208 NOT                              R30 R7
      209 SETTABLEKS                       R30 R29 K55 ["content-emphasis"]
      211 JUMPIFNOT                        R8 ; [+2]
      212 NOT                              R30 R9
      213 JUMPIF                           R30 ; [+1]
      214 MOVE                             R30 R7
      215 SETTABLEKS                       R30 R29 K56 ["content-muted"]
      217 SETTABLEKS                       R29 R28 K20 ["tag"]
      219 MOVE                             R29 R20
      220 CALL                             R29 0 1
      221 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      223 JUMPIFNOT                        R5 ; [+3]
      224 GETTABLEKS                       R29 R5 K57 ["name"]
      226 JUMPIF                           R29 ; [+1]
      227 MOVE                             R29 R21
      228 SETTABLEKS                       R29 R28 K51 ["Text"]
      230 CALL                             R26 2 1
      231 SETTABLEKS                       R26 R25 K38 ["InstanceName"]
      233 GETUPVAL                         R26 6
      234 GETUPVAL                         R27 7
      235 DUPTABLE                         R28 K59 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      236 MOVE                             R29 R20
      237 CALL                             R29 0 1
      238 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      240 CALL                             R26 2 1
      241 SETTABLEKS                       R26 R25 K39 ["Padding"]
      243 GETUPVAL                         R26 6
      244 GETUPVAL                         R27 10
      245 DUPTABLE                         R28 K63 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      246 SETTABLEKS                       R9 R28 K60 ["emphasis"]
      248 SETTABLEKS                       R18 R28 K61 ["onClose"]
      250 MOVE                             R29 R20
      251 CALL                             R29 0 1
      252 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      254 NOT                              R29 R8
      255 JUMPIFNOT                        R29 ; [+3]
      256 NOT                              R29 R9
      257 JUMPIFNOT                        R29 ; [+1]
      258 NOT                              R29 R7
      259 SETTABLEKS                       R29 R28 K62 ["Visible"]
      261 CALL                             R26 2 1
      262 SETTABLEKS                       R26 R25 K40 ["Cancel"]
      264 GETUPVAL                         R26 6
      265 LOADK                            R27 K41 ["UIPadding"]
      266 DUPTABLE                         R28 K65 [{"PaddingLeft"}]
      267 GETIMPORT                        R29 K67 [UDim.new]
      269 LOADN                            R30 0
      270 GETTABLEKS                       R31 R19 K21 ["Size"]
      272 GETTABLEKS                       R31 R31 K68 ["Size_150"]
      274 CALL                             R29 2 1
      275 SETTABLEKS                       R29 R28 K64 ["PaddingLeft"]
      277 CALL                             R26 2 1
      278 SETTABLEKS                       R26 R25 K41 ["UIPadding"]
      280 CALL                             R22 3 -1
      281 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Resources"]
       35 GETTABLEKS                       R7 R7 K13 ["Localization"]
       37 GETTABLEKS                       R7 R7 K14 ["Translator"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       44 GETTABLEKS                       R8 R8 K16 ["useClassIcon"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R9 R9 K4 ["Parent"]
       53 GETTABLEKS                       R9 R9 K4 ["Parent"]
       55 GETTABLEKS                       R9 R9 K17 ["CloseAffordance"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R10 R10 K4 ["Parent"]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K18 ["PropertyRowTypes"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R2 K19 ["Image"]
       71 GETTABLEKS                       R11 R2 K20 ["Text"]
       73 GETTABLEKS                       R12 R2 K21 ["View"]
       75 GETTABLEKS                       R13 R3 K22 ["createElement"]
       77 GETTABLEKS                       R14 R4 K23 ["createNextOrder"]
       79 DUPCLOSURE                       R15 K24 [PROTO_4]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R8
       91 RETURN                           R15 1
