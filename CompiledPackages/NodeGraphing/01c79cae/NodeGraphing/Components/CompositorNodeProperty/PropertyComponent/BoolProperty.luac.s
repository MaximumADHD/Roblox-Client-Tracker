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
       31 GETUPVAL                         R7 3
       32 CALL                             R7 0 1
       33 JUMPIFNOT                        R7 ; [+8]
       34 GETTABLEKS                       R6 R0 K15 ["Label"]
       36 JUMPIFNOT                        R6 ; [+32]
       37 LOADB                            R6 0
       38 GETTABLEKS                       R7 R0 K15 ["Label"]
       40 JUMPIFEQKS                       R7 K16 [""] ; [+28]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K1 ["createElement"]
       45 GETUPVAL                         R7 4
       46 DUPTABLE                         R8 K20 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"], ["isDisabled"]}]
       47 GETTABLEKS                       R9 R0 K15 ["Label"]
       49 SETTABLEKS                       R9 R8 K18 ["Text"]
       51 GETUPVAL                         R10 5
       52 CALL                             R10 0 1
       53 JUMPIF                           R10 ; [+3]
       54 GETUPVAL                         R10 6
       55 CALL                             R10 0 1
       56 JUMPIFNOT                        R10 ; [+3]
       57 MOVE                             R9 R1
       58 CALL                             R9 0 1
       59 JUMP                             ; [+1]
       60 LOADN                            R9 1
       61 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       63 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
       65 ORK                              R9 R10 K21 [False]
       66 SETTABLEKS                       R9 R8 K19 ["isDisabled"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K11 ["CompositorNodeInputLabel"]
       71 GETUPVAL                         R7 6
       72 CALL                             R7 0 1
       73 JUMPIFNOT                        R7 ; [+54]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K1 ["createElement"]
       77 GETUPVAL                         R7 7
       78 DUPTABLE                         R8 K25 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       79 GETTABLEKS                       R9 R0 K23 ["IsParameterOverridden"]
       81 SETTABLEKS                       R9 R8 K23 ["IsParameterOverridden"]
       83 GETTABLEKS                       R9 R0 K24 ["OnParameterOverrideRevert"]
       85 SETTABLEKS                       R9 R8 K24 ["OnParameterOverrideRevert"]
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K1 ["createElement"]
       90 GETUPVAL                         R10 2
       91 GETTABLEKS                       R10 R10 K2 ["View"]
       93 DUPTABLE                         R11 K27 [{["tag"] = "align-y-center auto-y"}]
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R12 R12 K1 ["createElement"]
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K28 ["Checkbox"]
      100 DUPTABLE                         R14 K33 [{["isChecked"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
      101 GETTABLEKS                       R16 R0 K34 ["Value"]
      103 ORK                              R15 R16 K21 [False]
      104 SETTABLEKS                       R15 R14 K29 ["isChecked"]
      106 GETTABLEKS                       R15 R0 K35 ["OnChanged"]
      108 SETTABLEKS                       R15 R14 K31 ["onActivated"]
      110 GETTABLEKS                       R16 R0 K22 ["IsDisabled"]
      112 ORK                              R15 R16 K21 [False]
      113 SETTABLEKS                       R15 R14 K19 ["isDisabled"]
      115 GETUPVAL                         R15 2
      116 GETTABLEKS                       R15 R15 K36 ["Enums"]
      118 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      120 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      122 SETTABLEKS                       R15 R14 K32 ["size"]
      124 CALL                             R12 2 -1
      125 CALL                             R9 -1 -1
      126 CALL                             R6 -1 1
      127 JUMP                             ; [+81]
      128 GETUPVAL                         R7 5
      129 CALL                             R7 0 1
      130 JUMPIFNOT                        R7 ; [+51]
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K1 ["createElement"]
      134 GETUPVAL                         R7 2
      135 GETTABLEKS                       R7 R7 K2 ["View"]
      137 DUPTABLE                         R8 K41 [{["tag"] = "auto-y text-body-small text-align-x-left text-truncate-split", ["Size"], ["LayoutOrder"]}]
      138 GETIMPORT                        R9 K44 [UDim2.new]
      140 LOADN                            R10 0
      141 GETUPVAL                         R11 8
      142 GETTABLEKS                       R11 R11 K45 ["PROPERTY_WIDTH"]
      144 LOADN                            R12 0
      145 LOADN                            R13 0
      146 CALL                             R9 4 1
      147 SETTABLEKS                       R9 R8 K40 ["Size"]
      149 MOVE                             R9 R1
      150 CALL                             R9 0 1
      151 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      153 GETUPVAL                         R9 1
      154 GETTABLEKS                       R9 R9 K1 ["createElement"]
      156 GETUPVAL                         R10 9
      157 DUPTABLE                         R11 K48 [{"info", "updateValue"}]
      158 DUPTABLE                         R12 K53 [{["type"] = "boolean", ["value"], ["readonly"]}]
      159 GETTABLEKS                       R14 R0 K34 ["Value"]
      161 ORK                              R13 R14 K21 [False]
      162 SETTABLEKS                       R13 R12 K51 ["value"]
      164 GETTABLEKS                       R13 R0 K54 ["IsParameterized"]
      166 JUMPIF                           R13 ; [+4]
      167 GETTABLEKS                       R13 R0 K22 ["IsDisabled"]
      169 JUMPIF                           R13 ; [+1]
      170 LOADB                            R13 0
      171 SETTABLEKS                       R13 R12 K52 ["readonly"]
      173 SETTABLEKS                       R12 R11 K46 ["info"]
      175 GETTABLEKS                       R12 R0 K35 ["OnChanged"]
      177 SETTABLEKS                       R12 R11 K47 ["updateValue"]
      179 CALL                             R9 2 -1
      180 CALL                             R6 -1 1
      181 JUMP                             ; [+27]
      182 GETUPVAL                         R6 1
      183 GETTABLEKS                       R6 R6 K1 ["createElement"]
      185 GETUPVAL                         R7 9
      186 DUPTABLE                         R8 K56 [{["info"], ["updateValue"], ["LayoutOrder"] = 2}]
      187 DUPTABLE                         R9 K53 [{["type"] = "boolean", ["value"], ["readonly"]}]
      188 GETTABLEKS                       R11 R0 K34 ["Value"]
      190 ORK                              R10 R11 K21 [False]
      191 SETTABLEKS                       R10 R9 K51 ["value"]
      193 GETTABLEKS                       R10 R0 K54 ["IsParameterized"]
      195 JUMPIF                           R10 ; [+4]
      196 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
      198 JUMPIF                           R10 ; [+1]
      199 LOADB                            R10 0
      200 SETTABLEKS                       R10 R9 K52 ["readonly"]
      202 SETTABLEKS                       R9 R8 K46 ["info"]
      204 GETTABLEKS                       R9 R0 K35 ["OnChanged"]
      206 SETTABLEKS                       R9 R8 K47 ["updateValue"]
      208 CALL                             R6 2 1
      209 SETTABLEKS                       R6 R5 K12 ["Input"]
      211 GETUPVAL                         R6 1
      212 GETTABLEKS                       R6 R6 K1 ["createElement"]
      214 LOADK                            R7 K57 ["Folder"]
      215 NEWTABLE                         R8 0 0
      217 GETTABLEKS                       R9 R0 K58 ["children"]
      219 CALL                             R6 3 1
      220 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      222 CALL                             R2 3 -1
      223 RETURN                           R2 -1

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
       77 GETTABLEKS                       R11 R11 K19 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K17 ["Flags"]
       84 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUI_BoolLeftAligned"]
       86 CALL                             R11 1 1
       87 DUPCLOSURE                       R12 K21 [PROTO_0]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 RETURN                           R12 1
