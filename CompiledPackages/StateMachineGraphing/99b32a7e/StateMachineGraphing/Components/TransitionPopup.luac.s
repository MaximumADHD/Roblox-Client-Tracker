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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["View"]
        6 DUPTABLE                         R5 K5 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
        7 SETTABLEKS                       R0 R5 K4 ["LayoutOrder"]
        9 DUPTABLE                         R6 K10 [{"Length", "Curve", "Priority", "Expression"}]
       10 GETUPVAL                         R7 2
       11 LOADN                            R8 1
       12 LOADK                            R9 K6 ["Length"]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K0 ["createElement"]
       16 GETUPVAL                         R11 1
       17 GETTABLEKS                       R11 R11 K11 ["NumberInput"]
       19 DUPTABLE                         R12 K27 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 2, ["minimum"] = 0, ["step"] = 0.01, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
       20 GETUPVAL                         R13 1
       21 GETTABLEKS                       R13 R13 K28 ["Enums"]
       23 GETTABLEKS                       R13 R13 K29 ["InputSize"]
       25 GETTABLEKS                       R13 R13 K30 ["XSmall"]
       27 SETTABLEKS                       R13 R12 K12 ["size"]
       29 GETUPVAL                         R13 3
       30 SETTABLEKS                       R13 R12 K13 ["width"]
       32 GETTABLEKS                       R13 R1 K6 ["Length"]
       34 SETTABLEKS                       R13 R12 K16 ["value"]
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R13 R13 K28 ["Enums"]
       39 GETTABLEKS                       R13 R13 K31 ["NumberInputControlsVariant"]
       41 GETTABLEKS                       R13 R13 K32 ["None"]
       43 SETTABLEKS                       R13 R12 K23 ["controlsVariant"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R13 R12 K26 ["onChanged"]
       49 CALL                             R10 2 -1
       50 CALL                             R7 -1 1
       51 SETTABLEKS                       R7 R6 K6 ["Length"]
       53 GETUPVAL                         R7 2
       54 LOADN                            R8 2
       55 LOADK                            R9 K7 ["Curve"]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K0 ["createElement"]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K33 ["Dropdown"]
       62 GETTABLEKS                       R11 R11 K34 ["Root"]
       64 DUPTABLE                         R12 K37 [{["size"], ["width"], ["label"] = "", ["value"], ["items"], ["onItemChanged"], ["LayoutOrder"] = 2}]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K28 ["Enums"]
       68 GETTABLEKS                       R13 R13 K29 ["InputSize"]
       70 GETTABLEKS                       R13 R13 K30 ["XSmall"]
       72 SETTABLEKS                       R13 R12 K12 ["size"]
       74 GETUPVAL                         R13 3
       75 SETTABLEKS                       R13 R12 K13 ["width"]
       77 GETTABLEKS                       R13 R1 K7 ["Curve"]
       79 SETTABLEKS                       R13 R12 K16 ["value"]
       81 GETUPVAL                         R13 4
       82 SETTABLEKS                       R13 R12 K35 ["items"]
       84 NEWCLOSURE                       R13 P1
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R13 R12 K36 ["onItemChanged"]
       88 CALL                             R10 2 -1
       89 CALL                             R7 -1 1
       90 SETTABLEKS                       R7 R6 K7 ["Curve"]
       92 GETUPVAL                         R7 2
       93 LOADN                            R8 3
       94 LOADK                            R9 K8 ["Priority"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K0 ["createElement"]
       98 GETUPVAL                         R11 1
       99 GETTABLEKS                       R11 R11 K11 ["NumberInput"]
      101 DUPTABLE                         R12 K39 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"] = 0, ["step"] = 1, ["controlsVariant"], ["isScrubbable"] = True, ["onChanged"], ["LayoutOrder"] = 2}]
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R13 R13 K28 ["Enums"]
      105 GETTABLEKS                       R13 R13 K29 ["InputSize"]
      107 GETTABLEKS                       R13 R13 K30 ["XSmall"]
      109 SETTABLEKS                       R13 R12 K12 ["size"]
      111 GETUPVAL                         R13 3
      112 SETTABLEKS                       R13 R12 K13 ["width"]
      114 GETTABLEKS                       R14 R1 K8 ["Priority"]
      116 ORK                              R13 R14 K38 [1]
      117 SETTABLEKS                       R13 R12 K16 ["value"]
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R13 R13 K28 ["Enums"]
      122 GETTABLEKS                       R13 R13 K31 ["NumberInputControlsVariant"]
      124 GETTABLEKS                       R13 R13 K32 ["None"]
      126 SETTABLEKS                       R13 R12 K23 ["controlsVariant"]
      128 NEWCLOSURE                       R13 P2
      129 CAPTURE                          VAL R2
      130 SETTABLEKS                       R13 R12 K26 ["onChanged"]
      132 CALL                             R10 2 -1
      133 CALL                             R7 -1 1
      134 SETTABLEKS                       R7 R6 K8 ["Priority"]
      136 GETUPVAL                         R7 0
      137 GETTABLEKS                       R7 R7 K0 ["createElement"]
      139 GETUPVAL                         R8 1
      140 GETTABLEKS                       R8 R8 K40 ["TextArea"]
      142 DUPTABLE                         R9 K45 [{["size"], ["width"], ["numLines"] = 3, ["label"] = "", ["text"], ["onChanged"], ["LayoutOrder"] = 4}]
      143 GETUPVAL                         R10 1
      144 GETTABLEKS                       R10 R10 K28 ["Enums"]
      146 GETTABLEKS                       R10 R10 K29 ["InputSize"]
      148 GETTABLEKS                       R10 R10 K30 ["XSmall"]
      150 SETTABLEKS                       R10 R9 K12 ["size"]
      152 GETIMPORT                        R10 K48 [UDim.new]
      154 LOADN                            R11 1
      155 LOADN                            R12 0
      156 CALL                             R10 2 1
      157 SETTABLEKS                       R10 R9 K13 ["width"]
      159 GETTABLEKS                       R10 R1 K49 ["TriggerExpression"]
      161 SETTABLEKS                       R10 R9 K43 ["text"]
      163 NEWCLOSURE                       R10 P3
      164 CAPTURE                          VAL R2
      165 SETTABLEKS                       R10 R9 K26 ["onChanged"]
      167 CALL                             R7 2 1
      168 SETTABLEKS                       R7 R6 K9 ["Expression"]
      170 CALL                             R3 3 -1
      171 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["transition"]
        2 GETTABLEKS                       R2 R0 K1 ["onChangeField"]
        4 GETTABLEKS                       R3 R0 K2 ["isEntry"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createNextOrder"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["createElement"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K5 ["View"]
       16 DUPTABLE                         R7 K9 [{["tag"] = "col gap-xsmall auto-y padding-x-small padding-y-xsmall stroke-standard stroke-default radius-small", ["Size"]}]
       17 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       19 LOADN                            R9 220
       20 LOADN                            R10 0
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K8 ["Size"]
       24 DUPTABLE                         R8 K17 [{"Header", "HeaderDivider", "Fields", "Delete"}]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K4 ["createElement"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K5 ["View"]
       31 DUPTABLE                         R11 K20 [{["tag"] = "row flex-x-fill align-y-center size-full-700 padding-x-xxsmall radius-small", ["LayoutOrder"]}]
       32 MOVE                             R12 R4
       33 CALL                             R12 0 1
       34 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       36 DUPTABLE                         R12 K23 [{"Title", "Close"}]
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R13 R13 K4 ["createElement"]
       40 GETUPVAL                         R14 2
       41 GETTABLEKS                       R14 R14 K24 ["Text"]
       43 DUPTABLE                         R15 K28 [{["tag"] = "size-0-700 auto-x text-title-small text-align-x-left text-truncate-split", ["Text"] = "Transition", ["LayoutOrder"] = 1}]
       44 CALL                             R13 2 1
       45 SETTABLEKS                       R13 R12 K21 ["Title"]
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R13 R13 K4 ["createElement"]
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K29 ["Button"]
       53 DUPTABLE                         R15 K37 [{["icon"] = "x", ["variant"], ["onActivated"], ["size"], ["fillBehavior"], ["LayoutOrder"] = 2}]
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R16 R16 K38 ["Enums"]
       57 GETTABLEKS                       R16 R16 K39 ["ButtonVariant"]
       59 GETTABLEKS                       R16 R16 K24 ["Text"]
       61 SETTABLEKS                       R16 R15 K32 ["variant"]
       63 GETTABLEKS                       R16 R0 K40 ["onClose"]
       65 SETTABLEKS                       R16 R15 K33 ["onActivated"]
       67 GETUPVAL                         R16 2
       68 GETTABLEKS                       R16 R16 K38 ["Enums"]
       70 GETTABLEKS                       R16 R16 K41 ["InputSize"]
       72 GETTABLEKS                       R16 R16 K42 ["XSmall"]
       74 SETTABLEKS                       R16 R15 K34 ["size"]
       76 GETUPVAL                         R16 2
       77 GETTABLEKS                       R16 R16 K38 ["Enums"]
       79 GETTABLEKS                       R16 R16 K43 ["FillBehavior"]
       81 GETTABLEKS                       R16 R16 K44 ["Fit"]
       83 SETTABLEKS                       R16 R15 K35 ["fillBehavior"]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K22 ["Close"]
       88 CALL                             R9 3 1
       89 SETTABLEKS                       R9 R8 K13 ["Header"]
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R9 R9 K4 ["createElement"]
       94 GETUPVAL                         R10 2
       95 GETTABLEKS                       R10 R10 K45 ["Divider"]
       97 DUPTABLE                         R11 K46 [{"LayoutOrder"}]
       98 MOVE                             R12 R4
       99 CALL                             R12 0 1
      100 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K14 ["HeaderDivider"]
      105 JUMPIFNOT                        R3 ; [+2]
      106 LOADNIL                          R9
      107 JUMP                             ; [+6]
      108 GETUPVAL                         R9 3
      109 MOVE                             R10 R4
      110 CALL                             R10 0 1
      111 MOVE                             R11 R1
      112 MOVE                             R12 R2
      113 CALL                             R9 3 1
      114 SETTABLEKS                       R9 R8 K15 ["Fields"]
      116 GETUPVAL                         R9 1
      117 GETTABLEKS                       R9 R9 K4 ["createElement"]
      119 GETUPVAL                         R10 2
      120 GETTABLEKS                       R10 R10 K29 ["Button"]
      122 DUPTABLE                         R11 K51 [{["text"] = "Delete Transition", ["icon"] = "trash-can", ["variant"], ["size"], ["width"], ["onActivated"], ["LayoutOrder"]}]
      123 GETUPVAL                         R12 2
      124 GETTABLEKS                       R12 R12 K38 ["Enums"]
      126 GETTABLEKS                       R12 R12 K39 ["ButtonVariant"]
      128 GETTABLEKS                       R12 R12 K52 ["Standard"]
      130 SETTABLEKS                       R12 R11 K32 ["variant"]
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R12 R12 K38 ["Enums"]
      135 GETTABLEKS                       R12 R12 K41 ["InputSize"]
      137 GETTABLEKS                       R12 R12 K53 ["Small"]
      139 SETTABLEKS                       R12 R11 K34 ["size"]
      141 GETIMPORT                        R12 K56 [UDim.new]
      143 LOADN                            R13 1
      144 LOADN                            R14 0
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K50 ["width"]
      148 GETTABLEKS                       R12 R0 K57 ["onDelete"]
      150 SETTABLEKS                       R12 R11 K33 ["onActivated"]
      152 MOVE                             R12 R4
      153 CALL                             R12 0 1
      154 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      156 CALL                             R9 2 1
      157 SETTABLEKS                       R9 R8 K16 ["Delete"]
      159 CALL                             R5 3 -1
      160 RETURN                           R5 -1

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
       40 SETTABLEKS                       R7 R6 K12 ["id"]
       42 DUPTABLE                         R7 K20 [{["id"], ["text"] = "In/Out"}]
       43 GETIMPORT                        R8 K22 [Enum.PoseEasingStyle.CubicV2]
       45 SETTABLEKS                       R8 R7 K12 ["id"]
       47 SETLIST                          R5 R6 2 [1]
       49 GETIMPORT                        R6 K25 [UDim.new]
       51 LOADN                            R7 1
       52 LOADN                            R8 0
       53 CALL                             R6 2 1
       54 GETIMPORT                        R7 K25 [UDim.new]
       56 LOADN                            R8 0
       57 LOADN                            R9 76
       58 CALL                             R7 2 1
       59 DUPCLOSURE                       R8 K26 [PROTO_0]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R9 K27 [PROTO_5]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 DUPCLOSURE                       R10 K28 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 RETURN                           R10 1
