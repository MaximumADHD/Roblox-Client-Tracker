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
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K3 ["setValue"]
       29 DUPTABLE                         R3 K9 [{["className"], ["name"], ["uniqueId"], ["isValid"] = }]
       30 GETTABLEKS                       R4 R1 K4 ["className"]
       32 SETTABLEKS                       R4 R3 K4 ["className"]
       34 GETTABLEKS                       R4 R1 K5 ["name"]
       36 SETTABLEKS                       R4 R3 K5 ["name"]
       38 GETTABLEKS                       R4 R1 K6 ["uniqueId"]
       40 SETTABLEKS                       R4 R3 K6 ["uniqueId"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

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
       65 NEWTABLE                         R18 0 5
       67 GETTABLEKS                       R19 R0 K14 ["setValue"]
       69 MOVE                             R20 R9
       70 MOVE                             R21 R2
       71 MOVE                             R22 R14
       72 MOVE                             R23 R15
       73 SETLIST                          R18 R19 5 [1]
       75 CALL                             R16 2 1
       76 GETUPVAL                         R17 1
       77 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       79 NEWCLOSURE                       R18 P2
       80 CAPTURE                          VAL R12
       81 NEWTABLE                         R19 0 0
       83 CALL                             R17 2 1
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R18 R18 K13 ["useCallback"]
       87 NEWCLOSURE                       R19 P3
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R20 0 1
       91 GETTABLEKS                       R21 R0 K14 ["setValue"]
       93 SETLIST                          R20 R21 1 [1]
       95 CALL                             R18 2 1
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R19 R19 K15 ["Hooks"]
       99 GETTABLEKS                       R19 R19 K16 ["useTokens"]
      101 CALL                             R19 0 1
      102 GETUPVAL                         R20 5
      103 CALL                             R20 0 1
      104 JUMPIFNOT                        R15 ; [+3]
      105 GETTABLEKS                       R21 R4 K17 ["InputPickModel"]
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R21 R4 K18 ["InputPickPart"]
      110 GETUPVAL                         R22 6
      111 GETUPVAL                         R23 7
      112 DUPTABLE                         R24 K24 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      113 NEWTABLE                         R25 4 0
      115 LOADB                            R26 1
      116 SETTABLEKS                       R26 R25 K25 ["row flex-around align-y-center gap-small radius-small"]
      118 SETTABLEKS                       R9 R25 K26 ["bg-emphasis"]
      120 NOT                              R26 R9
      121 SETTABLEKS                       R26 R25 K27 ["bg-shift-200"]
      123 SETTABLEKS                       R13 R25 K28 ["stroke-emphasis"]
      125 SETTABLEKS                       R25 R24 K19 ["tag"]
      127 GETIMPORT                        R25 K31 [UDim2.new]
      129 LOADN                            R26 1
      130 LOADN                            R27 0
      131 LOADN                            R28 0
      132 GETTABLEKS                       R29 R19 K20 ["Size"]
      134 GETTABLEKS                       R29 R29 K32 ["Size_600"]
      136 CALL                             R25 4 1
      137 SETTABLEKS                       R25 R24 K20 ["Size"]
      139 JUMPIF                           R7 ; [+2]
      140 MOVE                             R25 R16
      141 JUMP                             ; [+1]
      142 LOADNIL                          R25
      143 SETTABLEKS                       R25 R24 K21 ["onActivated"]
      145 JUMPIF                           R7 ; [+2]
      146 MOVE                             R25 R17
      147 JUMP                             ; [+1]
      148 LOADNIL                          R25
      149 SETTABLEKS                       R25 R24 K22 ["onStateChanged"]
      151 JUMPIFNOT                        R7 ; [+2]
      152 DUPTABLE                         R25 K35 [{["affordance"] = "None"}]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R25
      155 SETTABLEKS                       R25 R24 K23 ["stateLayer"]
      157 DUPTABLE                         R25 K41 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      158 GETUPVAL                         R26 6
      159 GETUPVAL                         R27 8
      160 DUPTABLE                         R28 K44 [{"tag", "Image", "LayoutOrder"}]
      161 NEWTABLE                         R29 2 0
      163 LOADB                            R30 1
      164 SETTABLEKS                       R30 R29 K45 ["size-300-300 radius-xsmall"]
      166 GETTABLEKS                       R31 R6 K42 ["Image"]
      168 NOT                              R30 R31
      169 JUMPIF                           R30 ; [+6]
      170 GETTABLEKS                       R31 R6 K42 ["Image"]
      172 JUMPIFEQKS                       R31 K46 [""] ; [+2]
      174 LOADB                            R30 0 +1
      175 LOADB                            R30 1
      176 SETTABLEKS                       R30 R29 K47 ["bg-shift-400"]
      178 SETTABLEKS                       R29 R28 K19 ["tag"]
      180 GETTABLEKS                       R29 R6 K42 ["Image"]
      182 SETTABLEKS                       R29 R28 K42 ["Image"]
      184 MOVE                             R29 R20
      185 CALL                             R29 0 1
      186 SETTABLEKS                       R29 R28 K43 ["LayoutOrder"]
      188 CALL                             R26 2 1
      189 SETTABLEKS                       R26 R25 K36 ["ClassIcon"]
      191 GETUPVAL                         R26 6
      192 GETUPVAL                         R27 9
      193 DUPTABLE                         R28 K51 [{["tag"], ["ClipsDescendants"] = True, ["LayoutOrder"], ["Text"]}]
      194 NEWTABLE                         R29 4 0
      196 LOADB                            R30 1
      197 SETTABLEKS                       R30 R29 K52 ["align-x-left shrink size-0-full auto-x text-label-small text-align-x-left"]
      199 SETTABLEKS                       R9 R29 K53 ["content-action-emphasis"]
      201 NOT                              R30 R8
      202 JUMPIFNOT                        R30 ; [+3]
      203 NOT                              R30 R9
      204 JUMPIFNOT                        R30 ; [+1]
      205 NOT                              R30 R7
      206 SETTABLEKS                       R30 R29 K54 ["content-emphasis"]
      208 JUMPIFNOT                        R8 ; [+2]
      209 NOT                              R30 R9
      210 JUMPIF                           R30 ; [+1]
      211 MOVE                             R30 R7
      212 SETTABLEKS                       R30 R29 K55 ["content-muted"]
      214 SETTABLEKS                       R29 R28 K19 ["tag"]
      216 MOVE                             R29 R20
      217 CALL                             R29 0 1
      218 SETTABLEKS                       R29 R28 K43 ["LayoutOrder"]
      220 JUMPIFNOT                        R5 ; [+3]
      221 GETTABLEKS                       R29 R5 K56 ["name"]
      223 JUMPIF                           R29 ; [+1]
      224 MOVE                             R29 R21
      225 SETTABLEKS                       R29 R28 K50 ["Text"]
      227 CALL                             R26 2 1
      228 SETTABLEKS                       R26 R25 K37 ["InstanceName"]
      230 GETUPVAL                         R26 6
      231 GETUPVAL                         R27 7
      232 DUPTABLE                         R28 K58 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      233 MOVE                             R29 R20
      234 CALL                             R29 0 1
      235 SETTABLEKS                       R29 R28 K43 ["LayoutOrder"]
      237 CALL                             R26 2 1
      238 SETTABLEKS                       R26 R25 K38 ["Padding"]
      240 GETUPVAL                         R26 6
      241 GETUPVAL                         R27 10
      242 DUPTABLE                         R28 K62 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      243 SETTABLEKS                       R9 R28 K59 ["emphasis"]
      245 SETTABLEKS                       R18 R28 K60 ["onClose"]
      247 MOVE                             R29 R20
      248 CALL                             R29 0 1
      249 SETTABLEKS                       R29 R28 K43 ["LayoutOrder"]
      251 NOT                              R29 R8
      252 JUMPIFNOT                        R29 ; [+3]
      253 NOT                              R29 R9
      254 JUMPIFNOT                        R29 ; [+1]
      255 NOT                              R29 R7
      256 SETTABLEKS                       R29 R28 K61 ["Visible"]
      258 CALL                             R26 2 1
      259 SETTABLEKS                       R26 R25 K39 ["Cancel"]
      261 GETUPVAL                         R26 6
      262 LOADK                            R27 K40 ["UIPadding"]
      263 DUPTABLE                         R28 K64 [{"PaddingLeft"}]
      264 GETIMPORT                        R29 K66 [UDim.new]
      266 LOADN                            R30 0
      267 GETTABLEKS                       R31 R19 K20 ["Size"]
      269 GETTABLEKS                       R31 R31 K67 ["Size_150"]
      271 CALL                             R29 2 1
      272 SETTABLEKS                       R29 R28 K63 ["PaddingLeft"]
      274 CALL                             R26 2 1
      275 SETTABLEKS                       R26 R25 K40 ["UIPadding"]
      277 CALL                             R22 3 -1
      278 RETURN                           R22 -1

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
