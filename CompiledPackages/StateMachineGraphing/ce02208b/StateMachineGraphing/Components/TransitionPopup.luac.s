PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["text"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["text"]
        7 JUMPIFEQ                         R0 R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["onCommit"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["text"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["text"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["createElement"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K4 ["TextArea"]
       25 DUPTABLE                         R5 K15 [{["size"], ["width"], ["numLines"] = 3, ["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["LayoutOrder"] = 5}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K16 ["Enums"]
       29 GETTABLEKS                       R6 R6 K17 ["InputSize"]
       31 GETTABLEKS                       R6 R6 K18 ["XSmall"]
       33 SETTABLEKS                       R6 R5 K5 ["size"]
       35 GETIMPORT                        R6 K21 [UDim.new]
       37 LOADN                            R7 1
       38 LOADN                            R8 0
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K6 ["width"]
       42 SETTABLEKS                       R1 R5 K1 ["text"]
       44 SETTABLEKS                       R2 R5 K11 ["onChanged"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R6 R5 K12 ["onFocusLost"]
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["View"]
        6 DUPTABLE                         R5 K5 [{["tag"] = "row auto-y gap-small size-full-700 align-y-center", ["LayoutOrder"]}]
        7 SETTABLEKS                       R0 R5 K4 ["LayoutOrder"]
        9 DUPTABLE                         R6 K8 [{"Label", "Control"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["createElement"]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K9 ["Text"]
       16 DUPTABLE                         R9 K13 [{["tag"] = "auto-y text-body-small text-align-x-left text-truncate-split content-emphasis", ["Size"], ["Text"], ["LayoutOrder"] = 1}]
       17 GETIMPORT                        R10 K16 [UDim2.new]
       19 GETUPVAL                         R11 2
       20 GETTABLEKS                       R11 R11 K17 ["Scale"]
       22 GETUPVAL                         R12 2
       23 GETTABLEKS                       R12 R12 K18 ["Offset"]
       25 LOADN                            R13 0
       26 LOADN                            R14 0
       27 CALL                             R10 4 1
       28 SETTABLEKS                       R10 R9 K11 ["Size"]
       30 SETTABLEKS                       R1 R9 K9 ["Text"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K6 ["Label"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K0 ["createElement"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K1 ["View"]
       41 DUPTABLE                         R9 K21 [{["tag"] = "fill auto-y", ["LayoutOrder"] = 2}]
       42 DUPTABLE                         R10 K23 [{"Inner"}]
       43 SETTABLEKS                       R2 R10 K22 ["Inner"]
       45 CALL                             R7 3 1
       46 SETTABLEKS                       R7 R6 K7 ["Control"]
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Length"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Curve"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Priority"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["WaitFor"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TriggerExpression"]
        3 JUMPIFEQ                         R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K0 ["TriggerExpression"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["TriggerExpression"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["When"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["WaitFor"]
        2 JUMPIF                           R3 ; [+2]
        3 GETIMPORT                        R3 K4 [Enum.AnimationNodeWaitFor.Trigger]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["createElement"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K6 ["View"]
       11 DUPTABLE                         R6 K10 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
       12 SETTABLEKS                       R0 R6 K9 ["LayoutOrder"]
       14 DUPTABLE                         R7 K16 [{"Length", "Curve", "Priority", "WaitFor", "Expression", "When"}]
       15 GETUPVAL                         R8 2
       16 LOADN                            R9 1
       17 LOADK                            R10 K11 ["Length"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K5 ["createElement"]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K17 ["NumberInput"]
       24 DUPTABLE                         R13 K33 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 2, ["minimum"] = 0, ["step"] = 0.01, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K34 ["Enums"]
       28 GETTABLEKS                       R14 R14 K35 ["InputSize"]
       30 GETTABLEKS                       R14 R14 K36 ["XSmall"]
       32 SETTABLEKS                       R14 R13 K18 ["size"]
       34 GETUPVAL                         R14 3
       35 SETTABLEKS                       R14 R13 K19 ["width"]
       37 GETTABLEKS                       R14 R1 K11 ["Length"]
       39 SETTABLEKS                       R14 R13 K22 ["value"]
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K34 ["Enums"]
       44 GETTABLEKS                       R14 R14 K37 ["NumberInputControlsVariant"]
       46 GETTABLEKS                       R14 R14 K38 ["None"]
       48 SETTABLEKS                       R14 R13 K29 ["controlsVariant"]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R14 R13 K32 ["onChanged"]
       54 CALL                             R11 2 -1
       55 CALL                             R8 -1 1
       56 SETTABLEKS                       R8 R7 K11 ["Length"]
       58 GETUPVAL                         R8 2
       59 LOADN                            R9 2
       60 LOADK                            R10 K12 ["Curve"]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K5 ["createElement"]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K39 ["Dropdown"]
       67 GETTABLEKS                       R12 R12 K40 ["Root"]
       69 DUPTABLE                         R13 K43 [{["size"], ["width"], ["label"] = "", ["value"], ["items"], ["onItemChanged"], ["LayoutOrder"] = 2}]
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K34 ["Enums"]
       73 GETTABLEKS                       R14 R14 K35 ["InputSize"]
       75 GETTABLEKS                       R14 R14 K36 ["XSmall"]
       77 SETTABLEKS                       R14 R13 K18 ["size"]
       79 GETUPVAL                         R14 3
       80 SETTABLEKS                       R14 R13 K19 ["width"]
       82 GETTABLEKS                       R14 R1 K12 ["Curve"]
       84 SETTABLEKS                       R14 R13 K22 ["value"]
       86 GETUPVAL                         R14 4
       87 SETTABLEKS                       R14 R13 K41 ["items"]
       89 NEWCLOSURE                       R14 P1
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R14 R13 K42 ["onItemChanged"]
       93 CALL                             R11 2 -1
       94 CALL                             R8 -1 1
       95 SETTABLEKS                       R8 R7 K12 ["Curve"]
       97 GETUPVAL                         R8 2
       98 LOADN                            R9 3
       99 LOADK                            R10 K13 ["Priority"]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K5 ["createElement"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K17 ["NumberInput"]
      106 DUPTABLE                         R13 K45 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 0, ["step"] = 1, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
      107 GETUPVAL                         R14 1
      108 GETTABLEKS                       R14 R14 K34 ["Enums"]
      110 GETTABLEKS                       R14 R14 K35 ["InputSize"]
      112 GETTABLEKS                       R14 R14 K36 ["XSmall"]
      114 SETTABLEKS                       R14 R13 K18 ["size"]
      116 GETUPVAL                         R14 3
      117 SETTABLEKS                       R14 R13 K19 ["width"]
      119 GETTABLEKS                       R15 R1 K13 ["Priority"]
      121 ORK                              R14 R15 K44 [1]
      122 SETTABLEKS                       R14 R13 K22 ["value"]
      124 GETUPVAL                         R14 1
      125 GETTABLEKS                       R14 R14 K34 ["Enums"]
      127 GETTABLEKS                       R14 R14 K37 ["NumberInputControlsVariant"]
      129 GETTABLEKS                       R14 R14 K38 ["None"]
      131 SETTABLEKS                       R14 R13 K29 ["controlsVariant"]
      133 NEWCLOSURE                       R14 P2
      134 CAPTURE                          VAL R2
      135 SETTABLEKS                       R14 R13 K32 ["onChanged"]
      137 CALL                             R11 2 -1
      138 CALL                             R8 -1 1
      139 SETTABLEKS                       R8 R7 K13 ["Priority"]
      141 GETUPVAL                         R8 2
      142 LOADN                            R9 4
      143 LOADK                            R10 K46 ["Wait For"]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K5 ["createElement"]
      147 GETUPVAL                         R12 1
      148 GETTABLEKS                       R12 R12 K39 ["Dropdown"]
      150 GETTABLEKS                       R12 R12 K40 ["Root"]
      152 DUPTABLE                         R13 K43 [{["size"], ["width"], ["label"] = "", ["value"], ["items"], ["onItemChanged"], ["LayoutOrder"] = 2}]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R14 R14 K34 ["Enums"]
      156 GETTABLEKS                       R14 R14 K35 ["InputSize"]
      158 GETTABLEKS                       R14 R14 K36 ["XSmall"]
      160 SETTABLEKS                       R14 R13 K18 ["size"]
      162 GETUPVAL                         R14 3
      163 SETTABLEKS                       R14 R13 K19 ["width"]
      165 SETTABLEKS                       R3 R13 K22 ["value"]
      167 GETUPVAL                         R14 5
      168 SETTABLEKS                       R14 R13 K41 ["items"]
      170 NEWCLOSURE                       R14 P3
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R14 R13 K42 ["onItemChanged"]
      174 CALL                             R11 2 -1
      175 CALL                             R8 -1 1
      176 SETTABLEKS                       R8 R7 K0 ["WaitFor"]
      178 GETIMPORT                        R9 K4 [Enum.AnimationNodeWaitFor.Trigger]
      180 JUMPIFNOTEQ                      R3 R9 ; [+50]
      182 GETUPVAL                         R9 6
      183 GETTABLEKS                       R9 R9 K47 ["getFFlagAnimGraphUI_UnifyExpressionEditors"]
      185 CALL                             R9 0 1
      186 JUMPIFNOT                        R9 ; [+29]
      187 GETUPVAL                         R8 0
      188 GETTABLEKS                       R8 R8 K5 ["createElement"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K6 ["View"]
      193 DUPTABLE                         R10 K50 [{["tag"] = "size-full-2000", ["LayoutOrder"] = 5}]
      194 DUPTABLE                         R11 K52 [{"Input"}]
      195 GETUPVAL                         R12 0
      196 GETTABLEKS                       R12 R12 K5 ["createElement"]
      198 GETUPVAL                         R13 6
      199 GETTABLEKS                       R13 R13 K53 ["ExpressionInput"]
      201 DUPTABLE                         R14 K57 [{["Value"], ["ZoomRatio"] = 1, ["onExpressionChanged"]}]
      202 GETTABLEKS                       R15 R1 K58 ["TriggerExpression"]
      204 SETTABLEKS                       R15 R14 K54 ["Value"]
      206 NEWCLOSURE                       R15 P4
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R2
      209 SETTABLEKS                       R15 R14 K56 ["onExpressionChanged"]
      211 CALL                             R12 2 1
      212 SETTABLEKS                       R12 R11 K51 ["Input"]
      214 CALL                             R8 3 1
      215 JUMP                             ; [+16]
      216 GETUPVAL                         R8 0
      217 GETTABLEKS                       R8 R8 K5 ["createElement"]
      219 GETUPVAL                         R9 7
      220 DUPTABLE                         R10 K61 [{"text", "onCommit"}]
      221 GETTABLEKS                       R11 R1 K58 ["TriggerExpression"]
      223 SETTABLEKS                       R11 R10 K59 ["text"]
      225 NEWCLOSURE                       R11 P5
      226 CAPTURE                          VAL R2
      227 SETTABLEKS                       R11 R10 K60 ["onCommit"]
      229 CALL                             R8 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R8
      232 SETTABLEKS                       R8 R7 K14 ["Expression"]
      234 GETIMPORT                        R9 K63 [Enum.AnimationNodeWaitFor.Finished]
      236 JUMPIFNOTEQ                      R3 R9 ; [+42]
      238 GETUPVAL                         R8 2
      239 LOADN                            R9 5
      240 LOADK                            R10 K15 ["When"]
      241 GETUPVAL                         R11 0
      242 GETTABLEKS                       R11 R11 K5 ["createElement"]
      244 GETUPVAL                         R12 1
      245 GETTABLEKS                       R12 R12 K39 ["Dropdown"]
      247 GETTABLEKS                       R12 R12 K40 ["Root"]
      249 DUPTABLE                         R13 K43 [{["size"], ["width"], ["label"] = "", ["value"], ["items"], ["onItemChanged"], ["LayoutOrder"] = 2}]
      250 GETUPVAL                         R14 1
      251 GETTABLEKS                       R14 R14 K34 ["Enums"]
      253 GETTABLEKS                       R14 R14 K35 ["InputSize"]
      255 GETTABLEKS                       R14 R14 K36 ["XSmall"]
      257 SETTABLEKS                       R14 R13 K18 ["size"]
      259 GETUPVAL                         R14 3
      260 SETTABLEKS                       R14 R13 K19 ["width"]
      262 GETTABLEKS                       R14 R1 K15 ["When"]
      264 JUMPIF                           R14 ; [+2]
      265 GETIMPORT                        R14 K65 [Enum.AnimationNodeTransitionWhen.Finished]
      267 SETTABLEKS                       R14 R13 K22 ["value"]
      269 GETUPVAL                         R14 8
      270 SETTABLEKS                       R14 R13 K41 ["items"]
      272 NEWCLOSURE                       R14 P6
      273 CAPTURE                          VAL R2
      274 SETTABLEKS                       R14 R13 K42 ["onItemChanged"]
      276 CALL                             R11 2 -1
      277 CALL                             R8 -1 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R8
      280 SETTABLEKS                       R8 R7 K15 ["When"]
      282 CALL                             R4 3 -1
      283 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["transition"]
       10 GETTABLEKS                       R3 R0 K4 ["onChangeField"]
       12 GETTABLEKS                       R4 R0 K5 ["isEntry"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K6 ["createNextOrder"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K7 ["createElement"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K8 ["View"]
       24 DUPTABLE                         R8 K12 [{["tag"] = "col gap-xsmall auto-y padding-x-small padding-y-xsmall stroke-standard stroke-default radius-small", ["Size"]}]
       25 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       27 LOADN                            R10 220
       28 LOADN                            R11 0
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["Size"]
       32 DUPTABLE                         R9 K20 [{"Header", "HeaderDivider", "Fields", "Delete"}]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K7 ["createElement"]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K8 ["View"]
       39 DUPTABLE                         R12 K23 [{["tag"] = "row flex-x-fill align-y-center size-full-700 padding-x-xxsmall radius-small", ["LayoutOrder"]}]
       40 MOVE                             R13 R5
       41 CALL                             R13 0 1
       42 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
       44 DUPTABLE                         R13 K26 [{"Title", "Close"}]
       45 GETUPVAL                         R14 2
       46 GETTABLEKS                       R14 R14 K7 ["createElement"]
       48 GETUPVAL                         R15 3
       49 GETTABLEKS                       R15 R15 K27 ["Text"]
       51 DUPTABLE                         R16 K30 [{["tag"] = "size-0-700 auto-x text-title-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"] = 1}]
       52 GETUPVAL                         R18 4
       53 CALL                             R18 0 1
       54 JUMPIFNOT                        R18 ; [+8]
       55 LOADK                            R19 K31 ["Common"]
       56 LOADK                            R20 K32 ["StateMachineGraphing"]
       57 LOADK                            R21 K33 ["TransitionPopup"]
       58 LOADK                            R22 K24 ["Title"]
       59 NAMECALL                         R17 R1 K34 ["getExternalText"]
       61 CALL                             R17 5 1
       62 JUMP                             ; [+1]
       63 LOADK                            R17 K35 ["Transition"]
       64 SETTABLEKS                       R17 R16 K27 ["Text"]
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K24 ["Title"]
       69 GETUPVAL                         R14 2
       70 GETTABLEKS                       R14 R14 K7 ["createElement"]
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R15 R15 K36 ["Button"]
       75 DUPTABLE                         R16 K44 [{["icon"] = "x", ["variant"], ["onActivated"], ["size"], ["fillBehavior"], ["LayoutOrder"] = 2}]
       76 GETUPVAL                         R17 3
       77 GETTABLEKS                       R17 R17 K45 ["Enums"]
       79 GETTABLEKS                       R17 R17 K46 ["ButtonVariant"]
       81 GETTABLEKS                       R17 R17 K27 ["Text"]
       83 SETTABLEKS                       R17 R16 K39 ["variant"]
       85 GETTABLEKS                       R17 R0 K47 ["onClose"]
       87 SETTABLEKS                       R17 R16 K40 ["onActivated"]
       89 GETUPVAL                         R17 3
       90 GETTABLEKS                       R17 R17 K45 ["Enums"]
       92 GETTABLEKS                       R17 R17 K48 ["InputSize"]
       94 GETTABLEKS                       R17 R17 K49 ["XSmall"]
       96 SETTABLEKS                       R17 R16 K41 ["size"]
       98 GETUPVAL                         R17 3
       99 GETTABLEKS                       R17 R17 K45 ["Enums"]
      101 GETTABLEKS                       R17 R17 K50 ["FillBehavior"]
      103 GETTABLEKS                       R17 R17 K51 ["Fit"]
      105 SETTABLEKS                       R17 R16 K42 ["fillBehavior"]
      107 CALL                             R14 2 1
      108 SETTABLEKS                       R14 R13 K25 ["Close"]
      110 CALL                             R10 3 1
      111 SETTABLEKS                       R10 R9 K16 ["Header"]
      113 GETUPVAL                         R10 2
      114 GETTABLEKS                       R10 R10 K7 ["createElement"]
      116 GETUPVAL                         R11 3
      117 GETTABLEKS                       R11 R11 K52 ["Divider"]
      119 DUPTABLE                         R12 K53 [{"LayoutOrder"}]
      120 MOVE                             R13 R5
      121 CALL                             R13 0 1
      122 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      124 CALL                             R10 2 1
      125 SETTABLEKS                       R10 R9 K17 ["HeaderDivider"]
      127 JUMPIFNOT                        R4 ; [+2]
      128 LOADNIL                          R10
      129 JUMP                             ; [+6]
      130 GETUPVAL                         R10 5
      131 MOVE                             R11 R5
      132 CALL                             R11 0 1
      133 MOVE                             R12 R2
      134 MOVE                             R13 R3
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R9 K18 ["Fields"]
      138 GETUPVAL                         R10 2
      139 GETTABLEKS                       R10 R10 K7 ["createElement"]
      141 GETUPVAL                         R11 3
      142 GETTABLEKS                       R11 R11 K36 ["Button"]
      144 DUPTABLE                         R12 K57 [{["text"], ["icon"] = "trash-can", ["variant"], ["size"], ["width"], ["onActivated"], ["LayoutOrder"]}]
      145 GETUPVAL                         R14 4
      146 CALL                             R14 0 1
      147 JUMPIFNOT                        R14 ; [+8]
      148 LOADK                            R15 K31 ["Common"]
      149 LOADK                            R16 K32 ["StateMachineGraphing"]
      150 LOADK                            R17 K33 ["TransitionPopup"]
      151 LOADK                            R18 K58 ["DeleteTransition"]
      152 NAMECALL                         R13 R1 K34 ["getExternalText"]
      154 CALL                             R13 5 1
      155 JUMP                             ; [+1]
      156 LOADK                            R13 K59 ["Delete Transition"]
      157 SETTABLEKS                       R13 R12 K54 ["text"]
      159 GETUPVAL                         R13 3
      160 GETTABLEKS                       R13 R13 K45 ["Enums"]
      162 GETTABLEKS                       R13 R13 K46 ["ButtonVariant"]
      164 GETTABLEKS                       R13 R13 K60 ["Standard"]
      166 SETTABLEKS                       R13 R12 K39 ["variant"]
      168 GETUPVAL                         R13 3
      169 GETTABLEKS                       R13 R13 K45 ["Enums"]
      171 GETTABLEKS                       R13 R13 K48 ["InputSize"]
      173 GETTABLEKS                       R13 R13 K61 ["Small"]
      175 SETTABLEKS                       R13 R12 K41 ["size"]
      177 GETIMPORT                        R13 K64 [UDim.new]
      179 LOADN                            R14 1
      180 LOADN                            R15 0
      181 CALL                             R13 2 1
      182 SETTABLEKS                       R13 R12 K56 ["width"]
      184 GETTABLEKS                       R13 R0 K65 ["onDelete"]
      186 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      188 MOVE                             R13 R5
      189 CALL                             R13 0 1
      190 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      192 CALL                             R10 2 1
      193 SETTABLEKS                       R10 R9 K19 ["Delete"]
      195 CALL                             R6 3 -1
      196 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Data"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_Localization2"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 0 2
       58 DUPTABLE                         R9 K19 [{["id"], ["text"] = "Linear"}]
       59 GETIMPORT                        R10 K22 [Enum.PoseEasingStyle.Linear]
       61 SETTABLEKS                       R10 R9 K16 ["id"]
       63 DUPTABLE                         R10 K24 [{["id"], ["text"] = "In/Out"}]
       64 GETIMPORT                        R11 K26 [Enum.PoseEasingStyle.CubicV2]
       66 SETTABLEKS                       R11 R10 K16 ["id"]
       68 SETLIST                          R8 R9 2 [1]
       70 NEWTABLE                         R9 0 2
       72 DUPTABLE                         R10 K28 [{["id"], ["text"] = "Expression"}]
       73 GETIMPORT                        R11 K31 [Enum.AnimationNodeWaitFor.Trigger]
       75 SETTABLEKS                       R11 R10 K16 ["id"]
       77 DUPTABLE                         R11 K33 [{["id"], ["text"] = "Finished"}]
       78 GETIMPORT                        R12 K34 [Enum.AnimationNodeWaitFor.Finished]
       80 SETTABLEKS                       R12 R11 K16 ["id"]
       82 SETLIST                          R9 R10 2 [1]
       84 NEWTABLE                         R10 0 2
       86 DUPTABLE                         R11 K33 [{["id"], ["text"] = "Finished"}]
       87 GETIMPORT                        R12 K36 [Enum.AnimationNodeTransitionWhen.Finished]
       89 SETTABLEKS                       R12 R11 K16 ["id"]
       91 DUPTABLE                         R12 K38 [{["id"], ["text"] = "Before Finished"}]
       92 GETIMPORT                        R13 K40 [Enum.AnimationNodeTransitionWhen.BeforeFinished]
       94 SETTABLEKS                       R13 R12 K16 ["id"]
       96 SETLIST                          R10 R11 2 [1]
       98 GETIMPORT                        R11 K43 [UDim.new]
      100 LOADN                            R12 1
      101 LOADN                            R13 0
      102 CALL                             R11 2 1
      103 GETIMPORT                        R12 K43 [UDim.new]
      105 LOADN                            R13 0
      106 LOADN                            R14 76
      107 CALL                             R12 2 1
      108 DUPCLOSURE                       R13 K44 [PROTO_2]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R1
      111 DUPCLOSURE                       R14 K45 [PROTO_3]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R12
      115 DUPCLOSURE                       R15 K46 [PROTO_11]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R10
      125 DUPCLOSURE                       R16 K47 [PROTO_12]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R15
      132 RETURN                           R16 1
