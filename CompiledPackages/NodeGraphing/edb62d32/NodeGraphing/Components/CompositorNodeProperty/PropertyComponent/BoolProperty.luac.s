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
       36 GETTABLEKS                       R6 R0 K16 ["Label"]
       38 JUMPIFNOT                        R6 ; [+40]
       39 LOADB                            R6 0
       40 GETTABLEKS                       R7 R0 K16 ["Label"]
       42 JUMPIFEQKS                       R7 K17 [""] ; [+36]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K1 ["createElement"]
       47 GETUPVAL                         R7 4
       48 DUPTABLE                         R8 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       49 NEWTABLE                         R9 4 0
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R9 K21 ["fill text-body-small text-align-x-left text-truncate-split"]
       54 GETUPVAL                         R10 3
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K22 ["auto-y"]
       58 GETUPVAL                         R11 3
       59 CALL                             R11 0 1
       60 NOT                              R10 R11
       61 SETTABLEKS                       R10 R9 K23 ["auto-xy"]
       63 SETTABLEKS                       R9 R8 K3 ["tag"]
       65 GETTABLEKS                       R9 R0 K16 ["Label"]
       67 SETTABLEKS                       R9 R8 K18 ["Text"]
       69 MOVE                             R9 R1
       70 CALL                             R9 0 1
       71 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       73 GETTABLEKS                       R10 R0 K25 ["IsDisabled"]
       75 ORK                              R9 R10 K24 [False]
       76 SETTABLEKS                       R9 R8 K19 ["isDisabled"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R5 K12 ["CompositorNodeInputLabel"]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K1 ["createElement"]
       84 GETUPVAL                         R7 5
       85 DUPTABLE                         R8 K28 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       86 GETTABLEKS                       R9 R0 K26 ["IsParameterOverridden"]
       88 SETTABLEKS                       R9 R8 K26 ["IsParameterOverridden"]
       90 GETTABLEKS                       R9 R0 K27 ["OnParameterOverrideRevert"]
       92 SETTABLEKS                       R9 R8 K27 ["OnParameterOverrideRevert"]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K1 ["createElement"]
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R10 R10 K2 ["View"]
      100 DUPTABLE                         R11 K30 [{["tag"] = "align-y-center auto-y"}]
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K1 ["createElement"]
      104 GETUPVAL                         R13 2
      105 GETTABLEKS                       R13 R13 K31 ["Checkbox"]
      107 DUPTABLE                         R14 K36 [{["isChecked"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
      108 GETTABLEKS                       R16 R0 K37 ["Value"]
      110 ORK                              R15 R16 K24 [False]
      111 SETTABLEKS                       R15 R14 K32 ["isChecked"]
      113 GETTABLEKS                       R15 R0 K38 ["OnChanged"]
      115 SETTABLEKS                       R15 R14 K34 ["onActivated"]
      117 GETTABLEKS                       R16 R0 K25 ["IsDisabled"]
      119 ORK                              R15 R16 K24 [False]
      120 SETTABLEKS                       R15 R14 K19 ["isDisabled"]
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K39 ["Enums"]
      125 GETTABLEKS                       R15 R15 K40 ["InputSize"]
      127 GETTABLEKS                       R15 R15 K41 ["XSmall"]
      129 SETTABLEKS                       R15 R14 K35 ["size"]
      131 CALL                             R12 2 -1
      132 CALL                             R9 -1 -1
      133 CALL                             R6 -1 1
      134 SETTABLEKS                       R6 R5 K13 ["Input"]
      136 GETUPVAL                         R6 1
      137 GETTABLEKS                       R6 R6 K1 ["createElement"]
      139 LOADK                            R7 K42 ["Folder"]
      140 NEWTABLE                         R8 0 0
      142 GETTABLEKS                       R9 R0 K43 ["children"]
      144 CALL                             R6 3 1
      145 SETTABLEKS                       R6 R5 K14 ["PinChildren"]
      147 CALL                             R2 3 -1
      148 RETURN                           R2 -1

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
       53 DUPCLOSURE                       R7 K16 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R7 1
