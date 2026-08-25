PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Length"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Curve"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Priority"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["TriggerExpression"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["transition"]
        2 GETTABLEKS                       R2 R0 K1 ["onChangeField"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createNextOrder"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K4 ["View"]
       14 DUPTABLE                         R6 K8 [{["tag"] = "col gap-small auto-y padding-large stroke-standard stroke-default radius-small", ["Size"]}]
       15 GETIMPORT                        R7 K11 [UDim2.fromOffset]
       17 LOADN                            R8 260
       18 LOADN                            R9 0
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K7 ["Size"]
       22 DUPTABLE                         R7 K16 [{"Header", "HeaderDivider", "Fields", "Delete"}]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K3 ["createElement"]
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R9 R9 K4 ["View"]
       29 DUPTABLE                         R10 K19 [{["tag"] = "row flex-x-fill align-y-center size-full-0 auto-y radius-small", ["LayoutOrder"]}]
       30 MOVE                             R11 R3
       31 CALL                             R11 0 1
       32 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       34 DUPTABLE                         R11 K22 [{"Title", "Close"}]
       35 GETUPVAL                         R12 1
       36 GETTABLEKS                       R12 R12 K3 ["createElement"]
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R13 R13 K23 ["Text"]
       41 DUPTABLE                         R14 K27 [{["tag"] = "auto-xy text-title-medium text-align-x-left text-truncate-split", ["Text"] = "Transition", ["LayoutOrder"] = 1}]
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K20 ["Title"]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K3 ["createElement"]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K28 ["Button"]
       51 DUPTABLE                         R14 K36 [{["icon"] = "x", ["variant"], ["onActivated"], ["size"], ["fillBehavior"], ["LayoutOrder"] = 2}]
       52 GETUPVAL                         R15 2
       53 GETTABLEKS                       R15 R15 K37 ["Enums"]
       55 GETTABLEKS                       R15 R15 K38 ["ButtonVariant"]
       57 GETTABLEKS                       R15 R15 K23 ["Text"]
       59 SETTABLEKS                       R15 R14 K31 ["variant"]
       61 GETTABLEKS                       R15 R0 K39 ["onClose"]
       63 SETTABLEKS                       R15 R14 K32 ["onActivated"]
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R15 R15 K37 ["Enums"]
       68 GETTABLEKS                       R15 R15 K40 ["InputSize"]
       70 GETTABLEKS                       R15 R15 K41 ["XSmall"]
       72 SETTABLEKS                       R15 R14 K33 ["size"]
       74 GETUPVAL                         R15 2
       75 GETTABLEKS                       R15 R15 K37 ["Enums"]
       77 GETTABLEKS                       R15 R15 K42 ["FillBehavior"]
       79 GETTABLEKS                       R15 R15 K43 ["Fit"]
       81 SETTABLEKS                       R15 R14 K34 ["fillBehavior"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K21 ["Close"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K12 ["Header"]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K3 ["createElement"]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K44 ["Divider"]
       95 DUPTABLE                         R10 K45 [{"LayoutOrder"}]
       96 MOVE                             R11 R3
       97 CALL                             R11 0 1
       98 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K13 ["HeaderDivider"]
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R8 R8 K3 ["createElement"]
      106 GETUPVAL                         R9 2
      107 GETTABLEKS                       R9 R9 K4 ["View"]
      109 DUPTABLE                         R10 K47 [{["tag"] = "col gap-xsmall size-full-700 auto-y", ["LayoutOrder"]}]
      110 MOVE                             R11 R3
      111 CALL                             R11 0 1
      112 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      114 DUPTABLE                         R11 K52 [{"Length", "Curve", "Priority", "Expression"}]
      115 GETUPVAL                         R12 3
      116 LOADN                            R13 1
      117 LOADK                            R14 K48 ["Length"]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R15 R15 K3 ["createElement"]
      121 GETUPVAL                         R16 2
      122 GETTABLEKS                       R16 R16 K53 ["NumberInput"]
      124 DUPTABLE                         R17 K67 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 2, ["minimum"] = 0, ["step"] = 0.01, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K37 ["Enums"]
      128 GETTABLEKS                       R18 R18 K40 ["InputSize"]
      130 GETTABLEKS                       R18 R18 K41 ["XSmall"]
      132 SETTABLEKS                       R18 R17 K33 ["size"]
      134 GETUPVAL                         R18 4
      135 SETTABLEKS                       R18 R17 K54 ["width"]
      137 GETTABLEKS                       R18 R1 K48 ["Length"]
      139 SETTABLEKS                       R18 R17 K57 ["value"]
      141 GETUPVAL                         R18 2
      142 GETTABLEKS                       R18 R18 K37 ["Enums"]
      144 GETTABLEKS                       R18 R18 K68 ["NumberInputControlsVariant"]
      146 GETTABLEKS                       R18 R18 K69 ["None"]
      148 SETTABLEKS                       R18 R17 K63 ["controlsVariant"]
      150 NEWCLOSURE                       R18 P0
      151 CAPTURE                          VAL R2
      152 SETTABLEKS                       R18 R17 K66 ["onChanged"]
      154 CALL                             R15 2 -1
      155 CALL                             R12 -1 1
      156 SETTABLEKS                       R12 R11 K48 ["Length"]
      158 GETUPVAL                         R12 3
      159 LOADN                            R13 2
      160 LOADK                            R14 K49 ["Curve"]
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K3 ["createElement"]
      164 GETUPVAL                         R16 2
      165 GETTABLEKS                       R16 R16 K70 ["Dropdown"]
      167 GETTABLEKS                       R16 R16 K71 ["Root"]
      169 DUPTABLE                         R17 K74 [{["size"], ["width"], ["label"] = "", ["value"], ["items"], ["onItemChanged"], ["LayoutOrder"] = 2}]
      170 GETUPVAL                         R18 2
      171 GETTABLEKS                       R18 R18 K37 ["Enums"]
      173 GETTABLEKS                       R18 R18 K40 ["InputSize"]
      175 GETTABLEKS                       R18 R18 K41 ["XSmall"]
      177 SETTABLEKS                       R18 R17 K33 ["size"]
      179 GETUPVAL                         R18 4
      180 SETTABLEKS                       R18 R17 K54 ["width"]
      182 GETTABLEKS                       R18 R1 K49 ["Curve"]
      184 SETTABLEKS                       R18 R17 K57 ["value"]
      186 GETUPVAL                         R18 5
      187 SETTABLEKS                       R18 R17 K72 ["items"]
      189 NEWCLOSURE                       R18 P1
      190 CAPTURE                          VAL R2
      191 SETTABLEKS                       R18 R17 K73 ["onItemChanged"]
      193 CALL                             R15 2 -1
      194 CALL                             R12 -1 1
      195 SETTABLEKS                       R12 R11 K49 ["Curve"]
      197 GETUPVAL                         R12 3
      198 LOADN                            R13 3
      199 LOADK                            R14 K50 ["Priority"]
      200 GETUPVAL                         R15 1
      201 GETTABLEKS                       R15 R15 K3 ["createElement"]
      203 GETUPVAL                         R16 2
      204 GETTABLEKS                       R16 R16 K53 ["NumberInput"]
      206 DUPTABLE                         R17 K75 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 0, ["step"] = 1, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
      207 GETUPVAL                         R18 2
      208 GETTABLEKS                       R18 R18 K37 ["Enums"]
      210 GETTABLEKS                       R18 R18 K40 ["InputSize"]
      212 GETTABLEKS                       R18 R18 K41 ["XSmall"]
      214 SETTABLEKS                       R18 R17 K33 ["size"]
      216 GETUPVAL                         R18 4
      217 SETTABLEKS                       R18 R17 K54 ["width"]
      219 GETTABLEKS                       R19 R1 K50 ["Priority"]
      221 ORK                              R18 R19 K26 [1]
      222 SETTABLEKS                       R18 R17 K57 ["value"]
      224 GETUPVAL                         R18 2
      225 GETTABLEKS                       R18 R18 K37 ["Enums"]
      227 GETTABLEKS                       R18 R18 K68 ["NumberInputControlsVariant"]
      229 GETTABLEKS                       R18 R18 K69 ["None"]
      231 SETTABLEKS                       R18 R17 K63 ["controlsVariant"]
      233 NEWCLOSURE                       R18 P2
      234 CAPTURE                          VAL R2
      235 SETTABLEKS                       R18 R17 K66 ["onChanged"]
      237 CALL                             R15 2 -1
      238 CALL                             R12 -1 1
      239 SETTABLEKS                       R12 R11 K50 ["Priority"]
      241 GETUPVAL                         R12 1
      242 GETTABLEKS                       R12 R12 K3 ["createElement"]
      244 GETUPVAL                         R13 2
      245 GETTABLEKS                       R13 R13 K76 ["TextArea"]
      247 DUPTABLE                         R14 K81 [{["size"], ["width"], ["numLines"] = 3, ["label"] = "", ["text"], ["onChanged"], ["LayoutOrder"] = 4}]
      248 GETUPVAL                         R15 2
      249 GETTABLEKS                       R15 R15 K37 ["Enums"]
      251 GETTABLEKS                       R15 R15 K40 ["InputSize"]
      253 GETTABLEKS                       R15 R15 K41 ["XSmall"]
      255 SETTABLEKS                       R15 R14 K33 ["size"]
      257 GETIMPORT                        R15 K84 [UDim.new]
      259 LOADN                            R16 1
      260 LOADN                            R17 0
      261 CALL                             R15 2 1
      262 SETTABLEKS                       R15 R14 K54 ["width"]
      264 GETTABLEKS                       R15 R1 K85 ["TriggerExpression"]
      266 SETTABLEKS                       R15 R14 K79 ["text"]
      268 NEWCLOSURE                       R15 P3
      269 CAPTURE                          VAL R2
      270 SETTABLEKS                       R15 R14 K66 ["onChanged"]
      272 CALL                             R12 2 1
      273 SETTABLEKS                       R12 R11 K51 ["Expression"]
      275 CALL                             R8 3 1
      276 SETTABLEKS                       R8 R7 K14 ["Fields"]
      278 GETUPVAL                         R8 1
      279 GETTABLEKS                       R8 R8 K3 ["createElement"]
      281 GETUPVAL                         R9 2
      282 GETTABLEKS                       R9 R9 K28 ["Button"]
      284 DUPTABLE                         R10 K88 [{["text"] = "Delete Transition", ["icon"] = "trash-can", ["variant"], ["size"], ["width"], ["onActivated"], ["LayoutOrder"]}]
      285 GETUPVAL                         R11 2
      286 GETTABLEKS                       R11 R11 K37 ["Enums"]
      288 GETTABLEKS                       R11 R11 K38 ["ButtonVariant"]
      290 GETTABLEKS                       R11 R11 K89 ["Standard"]
      292 SETTABLEKS                       R11 R10 K31 ["variant"]
      294 GETUPVAL                         R11 2
      295 GETTABLEKS                       R11 R11 K37 ["Enums"]
      297 GETTABLEKS                       R11 R11 K40 ["InputSize"]
      299 GETTABLEKS                       R11 R11 K90 ["Small"]
      301 SETTABLEKS                       R11 R10 K33 ["size"]
      303 GETIMPORT                        R11 K84 [UDim.new]
      305 LOADN                            R12 1
      306 LOADN                            R13 0
      307 CALL                             R11 2 1
      308 SETTABLEKS                       R11 R10 K54 ["width"]
      310 GETTABLEKS                       R11 R0 K91 ["onDelete"]
      312 SETTABLEKS                       R11 R10 K32 ["onActivated"]
      314 MOVE                             R11 R3
      315 CALL                             R11 0 1
      316 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      318 CALL                             R8 2 1
      319 SETTABLEKS                       R8 R7 K15 ["Delete"]
      321 CALL                             R4 3 -1
      322 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Data"]
       32 GETTABLEKS                       R5 R5 K11 ["StateMachineTypes"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 0 2
       37 DUPTABLE                         R6 K15 [{["id"], ["text"] = "Linear"}]
       38 GETIMPORT                        R7 K18 [Enum.PoseEasingStyle.Linear]
       40 GETTABLEKS                       R7 R7 K19 ["Value"]
       42 SETTABLEKS                       R7 R6 K12 ["id"]
       44 DUPTABLE                         R7 K21 [{["id"], ["text"] = "In/Out"}]
       45 GETIMPORT                        R8 K23 [Enum.PoseEasingStyle.CubicV2]
       47 GETTABLEKS                       R8 R8 K19 ["Value"]
       49 SETTABLEKS                       R8 R7 K12 ["id"]
       51 SETLIST                          R5 R6 2 [1]
       53 GETIMPORT                        R6 K26 [UDim.new]
       55 LOADN                            R7 1
       56 LOADN                            R8 0
       57 CALL                             R6 2 1
       58 GETIMPORT                        R7 K26 [UDim.new]
       60 LOADN                            R8 0
       61 LOADN                            R9 76
       62 CALL                             R7 2 1
       63 DUPCLOSURE                       R8 K27 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 DUPCLOSURE                       R9 K28 [PROTO_5]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 RETURN                           R9 1
