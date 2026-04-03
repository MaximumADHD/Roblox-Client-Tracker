PROTO_0:
        0 DUPTABLE                         R0 K1 [{"InputPickPart"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["MeshGen"]
        3 LOADK                            R4 K0 ["InputPickPart"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["InputPickPart"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K0 ["definition"]
       11 GETTABLEKS                       R2 R3 K1 ["options"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 1
       18 LOADB                            R3 0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K2 ["onChange"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onChange"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["instances"]
        6 GETTABLEKS                       R2 R3 K2 ["pickInstanceAsync"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       13 DUPCLOSURE                       R4 K4 [PROTO_0]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K5 ["locale"]
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
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K9 ["useState"]
       42 LOADB                            R9 0
       43 CALL                             R8 1 2
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K9 ["useState"]
       47 LOADB                            R11 0
       48 CALL                             R10 1 2
       49 MOVE                             R12 R10
       50 JUMPIFNOT                        R12 ; [+1]
       51 NOT                              R12 R6
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R13 R14 K10 ["useCallback"]
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
       70 GETUPVAL                         R15 1
       71 GETTABLEKS                       R14 R15 K10 ["useCallback"]
       73 NEWCLOSURE                       R15 P2
       74 CAPTURE                          VAL R11
       75 NEWTABLE                         R16 0 0
       77 CALL                             R14 2 1
       78 GETUPVAL                         R16 1
       79 GETTABLEKS                       R15 R16 K10 ["useCallback"]
       81 NEWCLOSURE                       R16 P3
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R17 0 2
       85 GETTABLEKS                       R18 R0 K11 ["onChange"]
       87 MOVE                             R19 R3
       88 SETLIST                          R17 R18 2 [1]
       90 CALL                             R15 2 1
       91 GETUPVAL                         R18 4
       92 GETTABLEKS                       R17 R18 K12 ["Hooks"]
       94 GETTABLEKS                       R16 R17 K13 ["useTokens"]
       96 CALL                             R16 0 1
       97 GETUPVAL                         R17 5
       98 CALL                             R17 0 1
       99 GETUPVAL                         R18 6
      100 GETUPVAL                         R19 7
      101 DUPTABLE                         R20 K19 [{"tag", "Size", "onActivated", "onStateChanged", "stateLayer"}]
      102 NEWTABLE                         R21 4 0
      104 LOADB                            R22 1
      105 SETTABLEKS                       R22 R21 K20 ["row align-y-center flex-around radius-small gap-small"]
      107 SETTABLEKS                       R8 R21 K21 ["bg-emphasis"]
      109 NOT                              R22 R8
      110 SETTABLEKS                       R22 R21 K22 ["bg-shift-200"]
      112 SETTABLEKS                       R12 R21 K23 ["stroke-emphasis"]
      114 SETTABLEKS                       R21 R20 K14 ["tag"]
      116 GETIMPORT                        R21 K26 [UDim2.new]
      118 LOADN                            R22 1
      119 LOADN                            R23 0
      120 LOADN                            R24 0
      121 GETTABLEKS                       R26 R16 K15 ["Size"]
      123 GETTABLEKS                       R25 R26 K27 ["Size_600"]
      125 CALL                             R21 4 1
      126 SETTABLEKS                       R21 R20 K15 ["Size"]
      128 JUMPIF                           R6 ; [+2]
      129 MOVE                             R21 R13
      130 JUMP                             ; [+1]
      131 LOADNIL                          R21
      132 SETTABLEKS                       R21 R20 K16 ["onActivated"]
      134 JUMPIF                           R6 ; [+2]
      135 MOVE                             R21 R14
      136 JUMP                             ; [+1]
      137 LOADNIL                          R21
      138 SETTABLEKS                       R21 R20 K17 ["onStateChanged"]
      140 JUMPIFNOT                        R6 ; [+5]
      141 DUPTABLE                         R21 K29 [{"affordance"}]
      142 LOADK                            R22 K30 ["None"]
      143 SETTABLEKS                       R22 R21 K28 ["affordance"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R21
      147 SETTABLEKS                       R21 R20 K18 ["stateLayer"]
      149 DUPTABLE                         R21 K36 [{"ClassIcon", "InstanceName", "Padding", "Cancel", "UIPadding"}]
      150 GETUPVAL                         R22 6
      151 GETUPVAL                         R23 8
      152 DUPTABLE                         R24 K39 [{"tag", "Image", "LayoutOrder"}]
      153 NEWTABLE                         R25 2 0
      155 LOADB                            R26 1
      156 SETTABLEKS                       R26 R25 K40 ["size-300-300 position-left-center radius-xsmall"]
      158 GETTABLEKS                       R27 R5 K37 ["Image"]
      160 NOT                              R26 R27
      161 JUMPIF                           R26 ; [+6]
      162 GETTABLEKS                       R27 R5 K37 ["Image"]
      164 JUMPIFEQKS                       R27 K41 [""] ; [+2]
      166 LOADB                            R26 0 +1
      167 LOADB                            R26 1
      168 SETTABLEKS                       R26 R25 K42 ["bg-shift-400"]
      170 SETTABLEKS                       R25 R24 K14 ["tag"]
      172 GETTABLEKS                       R25 R5 K37 ["Image"]
      174 SETTABLEKS                       R25 R24 K37 ["Image"]
      176 MOVE                             R25 R17
      177 CALL                             R25 0 1
      178 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      180 CALL                             R22 2 1
      181 SETTABLEKS                       R22 R21 K31 ["ClassIcon"]
      183 GETUPVAL                         R22 6
      184 GETUPVAL                         R23 9
      185 DUPTABLE                         R24 K45 [{"tag", "ClipsDescendants", "LayoutOrder", "Text"}]
      186 NEWTABLE                         R25 4 0
      188 LOADB                            R26 1
      189 SETTABLEKS                       R26 R25 K46 ["size-0-full shrink auto-x align-x-left text-label-small text-align-x-left"]
      191 SETTABLEKS                       R8 R25 K47 ["content-action-emphasis"]
      193 NOT                              R26 R7
      194 JUMPIFNOT                        R26 ; [+3]
      195 NOT                              R26 R8
      196 JUMPIFNOT                        R26 ; [+1]
      197 NOT                              R26 R6
      198 SETTABLEKS                       R26 R25 K48 ["content-emphasis"]
      200 JUMPIFNOT                        R7 ; [+2]
      201 NOT                              R26 R8
      202 JUMPIF                           R26 ; [+1]
      203 MOVE                             R26 R6
      204 SETTABLEKS                       R26 R25 K49 ["content-muted"]
      206 SETTABLEKS                       R25 R24 K14 ["tag"]
      208 LOADB                            R25 1
      209 SETTABLEKS                       R25 R24 K43 ["ClipsDescendants"]
      211 MOVE                             R25 R17
      212 CALL                             R25 0 1
      213 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      215 JUMPIFNOT                        R4 ; [+3]
      216 GETTABLEKS                       R25 R4 K50 ["name"]
      218 JUMPIF                           R25 ; [+2]
      219 GETTABLEKS                       R25 R3 K51 ["InputPickPart"]
      221 SETTABLEKS                       R25 R24 K44 ["Text"]
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K32 ["InstanceName"]
      226 GETUPVAL                         R22 6
      227 GETUPVAL                         R23 7
      228 DUPTABLE                         R24 K52 [{"tag", "LayoutOrder"}]
      229 LOADK                            R25 K53 ["grow size-0-full"]
      230 SETTABLEKS                       R25 R24 K14 ["tag"]
      232 MOVE                             R25 R17
      233 CALL                             R25 0 1
      234 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K33 ["Padding"]
      239 GETUPVAL                         R22 6
      240 GETUPVAL                         R23 10
      241 DUPTABLE                         R24 K57 [{"emphasis", "onClose", "LayoutOrder", "Visible"}]
      242 SETTABLEKS                       R8 R24 K54 ["emphasis"]
      244 SETTABLEKS                       R15 R24 K55 ["onClose"]
      246 MOVE                             R25 R17
      247 CALL                             R25 0 1
      248 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      250 NOT                              R25 R7
      251 JUMPIFNOT                        R25 ; [+3]
      252 NOT                              R25 R8
      253 JUMPIFNOT                        R25 ; [+1]
      254 NOT                              R25 R6
      255 SETTABLEKS                       R25 R24 K56 ["Visible"]
      257 CALL                             R22 2 1
      258 SETTABLEKS                       R22 R21 K34 ["Cancel"]
      260 GETUPVAL                         R22 6
      261 LOADK                            R23 K35 ["UIPadding"]
      262 DUPTABLE                         R24 K59 [{"PaddingLeft"}]
      263 GETIMPORT                        R25 K61 [UDim.new]
      265 LOADN                            R26 0
      266 GETTABLEKS                       R28 R16 K15 ["Size"]
      268 GETTABLEKS                       R27 R28 K62 ["Size_150"]
      270 CALL                             R25 2 1
      271 SETTABLEKS                       R25 R24 K58 ["PaddingLeft"]
      273 CALL                             R22 2 1
      274 SETTABLEKS                       R22 R21 K35 ["UIPadding"]
      276 CALL                             R18 3 -1
      277 RETURN                           R18 -1

PROTO_5:
        0 DUPTABLE                         R1 K5 [{"type", "label", "prop", "initialValue", "options"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K6 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R3 K7 ["Instance"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["options"]
       22 SETTABLEKS                       R2 R1 K4 ["options"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Resources"]
       39 GETTABLEKS                       R7 R8 K13 ["Localization"]
       41 GETTABLEKS                       R6 R7 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       53 GETTABLEKS                       R8 R9 K17 ["useClassIcon"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R11 K1 [script]
       60 GETTABLEKS                       R10 R11 K8 ["Parent"]
       62 GETTABLEKS                       R9 R10 K18 ["CloseAffordance"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R12 K1 [script]
       69 GETTABLEKS                       R11 R12 K8 ["Parent"]
       71 GETTABLEKS                       R10 R11 K19 ["PropertyRowTypes"]
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
