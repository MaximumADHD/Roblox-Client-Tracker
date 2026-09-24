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
       36 JUMPIFNOT                        R6 ; [+24]
       37 LOADB                            R6 0
       38 GETTABLEKS                       R7 R0 K15 ["Label"]
       40 JUMPIFEQKS                       R7 K16 [""] ; [+20]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K1 ["createElement"]
       45 GETUPVAL                         R7 4
       46 DUPTABLE                         R8 K20 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"], ["isDisabled"]}]
       47 GETTABLEKS                       R9 R0 K15 ["Label"]
       49 SETTABLEKS                       R9 R8 K18 ["Text"]
       51 MOVE                             R9 R1
       52 CALL                             R9 0 1
       53 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       55 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
       57 ORK                              R9 R10 K21 [False]
       58 SETTABLEKS                       R9 R8 K19 ["isDisabled"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K11 ["CompositorNodeInputLabel"]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K1 ["createElement"]
       66 GETUPVAL                         R7 5
       67 DUPTABLE                         R8 K25 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       68 GETTABLEKS                       R9 R0 K23 ["IsParameterOverridden"]
       70 SETTABLEKS                       R9 R8 K23 ["IsParameterOverridden"]
       72 GETTABLEKS                       R9 R0 K24 ["OnParameterOverrideRevert"]
       74 SETTABLEKS                       R9 R8 K24 ["OnParameterOverrideRevert"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K1 ["createElement"]
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K2 ["View"]
       82 DUPTABLE                         R11 K27 [{["tag"] = "align-y-center auto-y"}]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K1 ["createElement"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K28 ["Checkbox"]
       89 DUPTABLE                         R14 K33 [{["isChecked"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
       90 GETTABLEKS                       R16 R0 K34 ["Value"]
       92 ORK                              R15 R16 K21 [False]
       93 SETTABLEKS                       R15 R14 K29 ["isChecked"]
       95 GETTABLEKS                       R15 R0 K35 ["OnChanged"]
       97 SETTABLEKS                       R15 R14 K31 ["onActivated"]
       99 GETTABLEKS                       R16 R0 K22 ["IsDisabled"]
      101 ORK                              R15 R16 K21 [False]
      102 SETTABLEKS                       R15 R14 K19 ["isDisabled"]
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R15 R15 K36 ["Enums"]
      107 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      109 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      111 SETTABLEKS                       R15 R14 K32 ["size"]
      113 CALL                             R12 2 -1
      114 CALL                             R9 -1 -1
      115 CALL                             R6 -1 1
      116 SETTABLEKS                       R6 R5 K12 ["Input"]
      118 GETUPVAL                         R6 1
      119 GETTABLEKS                       R6 R6 K1 ["createElement"]
      121 LOADK                            R7 K39 ["Folder"]
      122 NEWTABLE                         R8 0 0
      124 GETTABLEKS                       R9 R0 K40 ["children"]
      126 CALL                             R6 3 1
      127 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      129 CALL                             R2 3 -1
      130 RETURN                           R2 -1

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
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUIParameterPaneAlignment"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K16 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R7 1
