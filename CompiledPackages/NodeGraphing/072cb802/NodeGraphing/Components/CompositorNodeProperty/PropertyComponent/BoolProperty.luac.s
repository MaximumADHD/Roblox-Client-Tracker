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
       35 DUPTABLE                         R8 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       36 LOADK                            R9 K18 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       37 SETTABLEKS                       R9 R8 K3 ["tag"]
       39 GETTABLEKS                       R9 R0 K19 ["Label"]
       41 SETTABLEKS                       R9 R8 K15 ["Text"]
       43 GETUPVAL                         R10 4
       44 CALL                             R10 0 1
       45 JUMPIF                           R10 ; [+3]
       46 GETUPVAL                         R10 5
       47 CALL                             R10 0 1
       48 JUMPIFNOT                        R10 ; [+3]
       49 MOVE                             R9 R1
       50 CALL                             R9 0 1
       51 JUMP                             ; [+1]
       52 LOADN                            R9 1
       53 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       55 GETTABLEKS                       R10 R0 K21 ["IsDisabled"]
       57 ORK                              R9 R10 K20 [False]
       58 SETTABLEKS                       R9 R8 K16 ["isDisabled"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K11 ["CompositorNodeInputLabel"]
       63 GETUPVAL                         R7 5
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+60]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K1 ["createElement"]
       69 GETUPVAL                         R7 6
       70 DUPTABLE                         R8 K24 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       71 GETTABLEKS                       R9 R0 K22 ["IsParameterOverridden"]
       73 SETTABLEKS                       R9 R8 K22 ["IsParameterOverridden"]
       75 GETTABLEKS                       R9 R0 K23 ["OnParameterOverrideRevert"]
       77 SETTABLEKS                       R9 R8 K23 ["OnParameterOverrideRevert"]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K1 ["createElement"]
       82 GETUPVAL                         R10 2
       83 GETTABLEKS                       R10 R10 K2 ["View"]
       85 DUPTABLE                         R11 K25 [{"tag"}]
       86 LOADK                            R12 K26 ["auto-y align-y-center"]
       87 SETTABLEKS                       R12 R11 K3 ["tag"]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K1 ["createElement"]
       92 GETUPVAL                         R13 2
       93 GETTABLEKS                       R13 R13 K27 ["Checkbox"]
       95 DUPTABLE                         R14 K32 [{"isChecked", "label", "onActivated", "isDisabled", "size"}]
       96 GETTABLEKS                       R16 R0 K33 ["Value"]
       98 ORK                              R15 R16 K20 [False]
       99 SETTABLEKS                       R15 R14 K28 ["isChecked"]
      101 LOADK                            R15 K34 [""]
      102 SETTABLEKS                       R15 R14 K29 ["label"]
      104 GETTABLEKS                       R15 R0 K35 ["OnChanged"]
      106 SETTABLEKS                       R15 R14 K30 ["onActivated"]
      108 GETTABLEKS                       R16 R0 K21 ["IsDisabled"]
      110 ORK                              R15 R16 K20 [False]
      111 SETTABLEKS                       R15 R14 K16 ["isDisabled"]
      113 GETUPVAL                         R15 2
      114 GETTABLEKS                       R15 R15 K36 ["Enums"]
      116 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      118 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      120 SETTABLEKS                       R15 R14 K31 ["size"]
      122 CALL                             R12 2 -1
      123 CALL                             R9 -1 -1
      124 CALL                             R6 -1 1
      125 JUMP                             ; [+93]
      126 GETUPVAL                         R7 4
      127 CALL                             R7 0 1
      128 JUMPIFNOT                        R7 ; [+57]
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R6 R6 K1 ["createElement"]
      132 GETUPVAL                         R7 2
      133 GETTABLEKS                       R7 R7 K2 ["View"]
      135 DUPTABLE                         R8 K40 [{"tag", "Size", "LayoutOrder"}]
      136 LOADK                            R9 K41 ["text-body-small text-align-x-left auto-y text-truncate-split"]
      137 SETTABLEKS                       R9 R8 K3 ["tag"]
      139 GETIMPORT                        R9 K44 [UDim2.new]
      141 LOADN                            R10 0
      142 GETUPVAL                         R11 7
      143 GETTABLEKS                       R11 R11 K45 ["PROPERTY_WIDTH"]
      145 LOADN                            R12 0
      146 LOADN                            R13 0
      147 CALL                             R9 4 1
      148 SETTABLEKS                       R9 R8 K39 ["Size"]
      150 MOVE                             R9 R1
      151 CALL                             R9 0 1
      152 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R9 R9 K1 ["createElement"]
      157 GETUPVAL                         R10 8
      158 DUPTABLE                         R11 K48 [{"info", "updateValue"}]
      159 DUPTABLE                         R12 K52 [{"type", "value", "readonly"}]
      160 LOADK                            R13 K53 ["boolean"]
      161 SETTABLEKS                       R13 R12 K49 ["type"]
      163 GETTABLEKS                       R14 R0 K33 ["Value"]
      165 ORK                              R13 R14 K20 [False]
      166 SETTABLEKS                       R13 R12 K50 ["value"]
      168 GETTABLEKS                       R13 R0 K54 ["IsParameterized"]
      170 JUMPIF                           R13 ; [+4]
      171 GETTABLEKS                       R13 R0 K21 ["IsDisabled"]
      173 JUMPIF                           R13 ; [+1]
      174 LOADB                            R13 0
      175 SETTABLEKS                       R13 R12 K51 ["readonly"]
      177 SETTABLEKS                       R12 R11 K46 ["info"]
      179 GETTABLEKS                       R12 R0 K35 ["OnChanged"]
      181 SETTABLEKS                       R12 R11 K47 ["updateValue"]
      183 CALL                             R9 2 -1
      184 CALL                             R6 -1 1
      185 JUMP                             ; [+33]
      186 GETUPVAL                         R6 1
      187 GETTABLEKS                       R6 R6 K1 ["createElement"]
      189 GETUPVAL                         R7 8
      190 DUPTABLE                         R8 K55 [{"info", "updateValue", "LayoutOrder"}]
      191 DUPTABLE                         R9 K52 [{"type", "value", "readonly"}]
      192 LOADK                            R10 K53 ["boolean"]
      193 SETTABLEKS                       R10 R9 K49 ["type"]
      195 GETTABLEKS                       R11 R0 K33 ["Value"]
      197 ORK                              R10 R11 K20 [False]
      198 SETTABLEKS                       R10 R9 K50 ["value"]
      200 GETTABLEKS                       R10 R0 K54 ["IsParameterized"]
      202 JUMPIF                           R10 ; [+4]
      203 GETTABLEKS                       R10 R0 K21 ["IsDisabled"]
      205 JUMPIF                           R10 ; [+1]
      206 LOADB                            R10 0
      207 SETTABLEKS                       R10 R9 K51 ["readonly"]
      209 SETTABLEKS                       R9 R8 K46 ["info"]
      211 GETTABLEKS                       R9 R0 K35 ["OnChanged"]
      213 SETTABLEKS                       R9 R8 K47 ["updateValue"]
      215 LOADN                            R9 2
      216 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      218 CALL                             R6 2 1
      219 SETTABLEKS                       R6 R5 K12 ["Input"]
      221 GETUPVAL                         R6 1
      222 GETTABLEKS                       R6 R6 K1 ["createElement"]
      224 LOADK                            R7 K56 ["Folder"]
      225 NEWTABLE                         R8 0 0
      227 GETTABLEKS                       R9 R0 K57 ["children"]
      229 CALL                             R6 3 1
      230 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      232 CALL                             R2 3 -1
      233 RETURN                           R2 -1

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
