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
       18 GETUPVAL                         R8 3
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+2]
       21 LOADK                            R7 K10 ["row auto-y gap-small size-full-700 align-y-center"]
       22 JUMP                             ; [+1]
       23 LOADK                            R7 K11 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K3 ["tag"]
       27 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       31 GETTABLEKS                       R5 R0 K5 ["testId"]
       33 SETTABLEKS                       R5 R4 K5 ["testId"]
       35 DUPTABLE                         R5 K15 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       36 GETUPVAL                         R7 4
       37 CALL                             R7 0 1
       38 JUMPIFNOT                        R7 ; [+8]
       39 GETTABLEKS                       R6 R0 K16 ["Label"]
       41 JUMPIFNOT                        R6 ; [+40]
       42 LOADB                            R6 0
       43 GETTABLEKS                       R7 R0 K16 ["Label"]
       45 JUMPIFEQKS                       R7 K17 [""] ; [+36]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K1 ["createElement"]
       50 GETUPVAL                         R7 5
       51 DUPTABLE                         R8 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       52 NEWTABLE                         R9 4 0
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K21 ["fill text-body-small text-align-x-left text-truncate-split"]
       57 GETUPVAL                         R10 3
       58 CALL                             R10 0 1
       59 SETTABLEKS                       R10 R9 K22 ["auto-y"]
       61 GETUPVAL                         R11 3
       62 CALL                             R11 0 1
       63 NOT                              R10 R11
       64 SETTABLEKS                       R10 R9 K23 ["auto-xy"]
       66 SETTABLEKS                       R9 R8 K3 ["tag"]
       68 GETTABLEKS                       R9 R0 K16 ["Label"]
       70 SETTABLEKS                       R9 R8 K18 ["Text"]
       72 MOVE                             R9 R1
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       76 GETTABLEKS                       R10 R0 K25 ["IsDisabled"]
       78 ORK                              R9 R10 K24 [False]
       79 SETTABLEKS                       R9 R8 K19 ["isDisabled"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K12 ["CompositorNodeInputLabel"]
       84 GETUPVAL                         R6 1
       85 GETTABLEKS                       R6 R6 K1 ["createElement"]
       87 GETUPVAL                         R7 6
       88 DUPTABLE                         R8 K28 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       89 GETTABLEKS                       R9 R0 K26 ["IsParameterOverridden"]
       91 SETTABLEKS                       R9 R8 K26 ["IsParameterOverridden"]
       93 GETTABLEKS                       R9 R0 K27 ["OnParameterOverrideRevert"]
       95 SETTABLEKS                       R9 R8 K27 ["OnParameterOverrideRevert"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K1 ["createElement"]
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K2 ["View"]
      103 DUPTABLE                         R11 K30 [{["tag"] = "align-y-center auto-y"}]
      104 GETUPVAL                         R12 1
      105 GETTABLEKS                       R12 R12 K1 ["createElement"]
      107 GETUPVAL                         R13 2
      108 GETTABLEKS                       R13 R13 K31 ["Checkbox"]
      110 DUPTABLE                         R14 K36 [{["isChecked"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
      111 GETTABLEKS                       R16 R0 K37 ["Value"]
      113 ORK                              R15 R16 K24 [False]
      114 SETTABLEKS                       R15 R14 K32 ["isChecked"]
      116 GETTABLEKS                       R15 R0 K38 ["OnChanged"]
      118 SETTABLEKS                       R15 R14 K34 ["onActivated"]
      120 GETTABLEKS                       R16 R0 K25 ["IsDisabled"]
      122 ORK                              R15 R16 K24 [False]
      123 SETTABLEKS                       R15 R14 K19 ["isDisabled"]
      125 GETUPVAL                         R15 2
      126 GETTABLEKS                       R15 R15 K39 ["Enums"]
      128 GETTABLEKS                       R15 R15 K40 ["InputSize"]
      130 GETTABLEKS                       R15 R15 K41 ["XSmall"]
      132 SETTABLEKS                       R15 R14 K35 ["size"]
      134 CALL                             R12 2 -1
      135 CALL                             R9 -1 -1
      136 CALL                             R6 -1 1
      137 SETTABLEKS                       R6 R5 K13 ["Input"]
      139 GETUPVAL                         R6 1
      140 GETTABLEKS                       R6 R6 K1 ["createElement"]
      142 LOADK                            R7 K42 ["Folder"]
      143 NEWTABLE                         R8 0 0
      145 GETTABLEKS                       R9 R0 K43 ["children"]
      147 CALL                             R6 3 1
      148 SETTABLEKS                       R6 R5 K14 ["PinChildren"]
      150 CALL                             R2 3 -1
      151 RETURN                           R2 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Components"]
       41 GETTABLEKS                       R6 R6 K9 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K13 ["PropertyLabel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Flags"]
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUINodeFieldLayout"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Flags"]
       57 GETTABLEKS                       R8 R8 K16 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K17 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 RETURN                           R8 1
