PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder", "testId"}]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K7 ["Hooks"]
       14 GETTABLEKS                       R5 R5 K8 ["useDefaultTags"]
       16 GETTABLEKS                       R6 R0 K9 ["tags"]
       18 LOADK                            R7 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K3 ["tag"]
       22 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       26 GETTABLEKS                       R5 R0 K5 ["testId"]
       28 SETTABLEKS                       R5 R4 K5 ["testId"]
       30 DUPTABLE                         R5 K14 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K1 ["createElement"]
       34 GETUPVAL                         R7 3
       35 DUPTABLE                         R8 K18 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"], ["isDisabled"]}]
       36 GETTABLEKS                       R9 R0 K19 ["Label"]
       38 SETTABLEKS                       R9 R8 K16 ["Text"]
       40 GETUPVAL                         R10 4
       41 CALL                             R10 0 1
       42 JUMPIF                           R10 ; [+3]
       43 GETUPVAL                         R10 5
       44 CALL                             R10 0 1
       45 JUMPIFNOT                        R10 ; [+3]
       46 MOVE                             R9 R1
       47 CALL                             R9 0 1
       48 JUMP                             ; [+1]
       49 LOADN                            R9 1
       50 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       52 GETTABLEKS                       R10 R0 K21 ["IsDisabled"]
       54 ORK                              R9 R10 K20 [False]
       55 SETTABLEKS                       R9 R8 K17 ["isDisabled"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K11 ["CompositorNodeInputLabel"]
       60 GETUPVAL                         R7 5
       61 CALL                             R7 0 1
       62 JUMPIFNOT                        R7 ; [+54]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K1 ["createElement"]
       66 GETUPVAL                         R7 6
       67 DUPTABLE                         R8 K24 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       68 GETTABLEKS                       R9 R0 K22 ["IsParameterOverridden"]
       70 SETTABLEKS                       R9 R8 K22 ["IsParameterOverridden"]
       72 GETTABLEKS                       R9 R0 K23 ["OnParameterOverrideRevert"]
       74 SETTABLEKS                       R9 R8 K23 ["OnParameterOverrideRevert"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K1 ["createElement"]
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K2 ["View"]
       82 DUPTABLE                         R11 K26 [{["tag"] = "align-y-center auto-y"}]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K1 ["createElement"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K27 ["Checkbox"]
       89 DUPTABLE                         R14 K33 [{["isChecked"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
       90 GETTABLEKS                       R16 R0 K34 ["Value"]
       92 ORK                              R15 R16 K20 [False]
       93 SETTABLEKS                       R15 R14 K28 ["isChecked"]
       95 GETTABLEKS                       R15 R0 K35 ["OnChanged"]
       97 SETTABLEKS                       R15 R14 K31 ["onActivated"]
       99 GETTABLEKS                       R16 R0 K21 ["IsDisabled"]
      101 ORK                              R15 R16 K20 [False]
      102 SETTABLEKS                       R15 R14 K17 ["isDisabled"]
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R15 R15 K36 ["Enums"]
      107 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      109 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      111 SETTABLEKS                       R15 R14 K32 ["size"]
      113 CALL                             R12 2 -1
      114 CALL                             R9 -1 -1
      115 CALL                             R6 -1 1
      116 JUMP                             ; [+81]
      117 GETUPVAL                         R7 4
      118 CALL                             R7 0 1
      119 JUMPIFNOT                        R7 ; [+51]
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R6 R6 K1 ["createElement"]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K2 ["View"]
      126 DUPTABLE                         R8 K41 [{["tag"] = "auto-y text-body-small text-align-x-left text-truncate-split", ["Size"], ["LayoutOrder"]}]
      127 GETIMPORT                        R9 K44 [UDim2.new]
      129 LOADN                            R10 0
      130 GETUPVAL                         R11 7
      131 GETTABLEKS                       R11 R11 K45 ["PROPERTY_WIDTH"]
      133 LOADN                            R12 0
      134 LOADN                            R13 0
      135 CALL                             R9 4 1
      136 SETTABLEKS                       R9 R8 K40 ["Size"]
      138 MOVE                             R9 R1
      139 CALL                             R9 0 1
      140 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R9 R9 K1 ["createElement"]
      145 GETUPVAL                         R10 8
      146 DUPTABLE                         R11 K48 [{"info", "updateValue"}]
      147 DUPTABLE                         R12 K53 [{["type"] = "boolean", ["value"], ["readonly"]}]
      148 GETTABLEKS                       R14 R0 K34 ["Value"]
      150 ORK                              R13 R14 K20 [False]
      151 SETTABLEKS                       R13 R12 K51 ["value"]
      153 GETTABLEKS                       R13 R0 K54 ["IsParameterized"]
      155 JUMPIF                           R13 ; [+4]
      156 GETTABLEKS                       R13 R0 K21 ["IsDisabled"]
      158 JUMPIF                           R13 ; [+1]
      159 LOADB                            R13 0
      160 SETTABLEKS                       R13 R12 K52 ["readonly"]
      162 SETTABLEKS                       R12 R11 K46 ["info"]
      164 GETTABLEKS                       R12 R0 K35 ["OnChanged"]
      166 SETTABLEKS                       R12 R11 K47 ["updateValue"]
      168 CALL                             R9 2 -1
      169 CALL                             R6 -1 1
      170 JUMP                             ; [+27]
      171 GETUPVAL                         R6 1
      172 GETTABLEKS                       R6 R6 K1 ["createElement"]
      174 GETUPVAL                         R7 8
      175 DUPTABLE                         R8 K56 [{["info"], ["updateValue"], ["LayoutOrder"] = 2}]
      176 DUPTABLE                         R9 K53 [{["type"] = "boolean", ["value"], ["readonly"]}]
      177 GETTABLEKS                       R11 R0 K34 ["Value"]
      179 ORK                              R10 R11 K20 [False]
      180 SETTABLEKS                       R10 R9 K51 ["value"]
      182 GETTABLEKS                       R10 R0 K54 ["IsParameterized"]
      184 JUMPIF                           R10 ; [+4]
      185 GETTABLEKS                       R10 R0 K21 ["IsDisabled"]
      187 JUMPIF                           R10 ; [+1]
      188 LOADB                            R10 0
      189 SETTABLEKS                       R10 R9 K52 ["readonly"]
      191 SETTABLEKS                       R9 R8 K46 ["info"]
      193 GETTABLEKS                       R9 R0 K35 ["OnChanged"]
      195 SETTABLEKS                       R9 R8 K47 ["updateValue"]
      197 CALL                             R6 2 1
      198 SETTABLEKS                       R6 R5 K12 ["Input"]
      200 GETUPVAL                         R6 1
      201 GETTABLEKS                       R6 R6 K1 ["createElement"]
      203 LOADK                            R7 K57 ["Folder"]
      204 NEWTABLE                         R8 0 0
      206 GETTABLEKS                       R9 R0 K58 ["children"]
      208 CALL                             R6 3 1
      209 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      211 CALL                             R2 3 -1
      212 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["CompositorNodeProperty"]
       20 GETTABLEKS                       R3 R3 K10 ["InputPropertyField"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Properties"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Components"]
       48 GETTABLEKS                       R7 R7 K9 ["CompositorNodeProperty"]
       50 GETTABLEKS                       R7 R7 K14 ["PropertyConstants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Components"]
       57 GETTABLEKS                       R8 R8 K9 ["CompositorNodeProperty"]
       59 GETTABLEKS                       R8 R8 K15 ["PropertyLabel"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R3 K8 ["Components"]
       64 GETTABLEKS                       R8 R8 K16 ["PropertyValue"]
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K17 ["Flags"]
       70 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K17 ["Flags"]
       77 GETTABLEKS                       R11 R11 K19 ["getFFlagAnimGraphUI_BoolLeftAligned"]
       79 CALL                             R10 1 1
       80 DUPCLOSURE                       R11 K20 [PROTO_0]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 RETURN                           R11 1
