PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["formatTimestamp"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["createElement"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["View"]
       15 DUPTABLE                         R4 K7 [{"tag", "LayoutOrder", "testId"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K8 ["Hooks"]
       19 GETTABLEKS                       R5 R6 K9 ["useDefaultTags"]
       21 GETTABLEKS                       R6 R0 K10 ["tags"]
       23 LOADK                            R7 K11 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K4 ["tag"]
       27 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       31 GETTABLEKS                       R5 R0 K6 ["testId"]
       33 SETTABLEKS                       R5 R4 K6 ["testId"]
       35 DUPTABLE                         R5 K15 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K2 ["createElement"]
       39 GETUPVAL                         R7 3
       40 DUPTABLE                         R8 K18 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       41 LOADK                            R9 K19 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       42 SETTABLEKS                       R9 R8 K4 ["tag"]
       44 GETTABLEKS                       R9 R0 K20 ["Label"]
       46 SETTABLEKS                       R9 R8 K16 ["Text"]
       48 LOADN                            R9 1
       49 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       51 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
       53 ORK                              R9 R10 K21 [False]
       54 SETTABLEKS                       R9 R8 K17 ["isDisabled"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K12 ["CompositorNodeInputLabel"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K2 ["createElement"]
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R7 R8 K23 ["NumberInput"]
       65 DUPTABLE                         R8 K34 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "step", "isScrubbable", "formatAsString", "onChanged", "controlsVariant"}]
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R11 R12 K35 ["Enums"]
       69 GETTABLEKS                       R10 R11 K36 ["InputSize"]
       71 GETTABLEKS                       R9 R10 K37 ["XSmall"]
       73 SETTABLEKS                       R9 R8 K24 ["size"]
       75 GETIMPORT                        R9 K40 [UDim.new]
       77 LOADN                            R10 0
       78 LOADN                            R11 90
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K25 ["width"]
       82 LOADK                            R9 K41 [""]
       83 SETTABLEKS                       R9 R8 K26 ["label"]
       85 GETTABLEKS                       R9 R0 K42 ["Value"]
       87 SETTABLEKS                       R9 R8 K27 ["value"]
       89 GETTABLEKS                       R9 R0 K43 ["IsParameterized"]
       91 JUMPIF                           R9 ; [+2]
       92 GETTABLEKS                       R9 R0 K22 ["IsDisabled"]
       94 SETTABLEKS                       R9 R8 K17 ["isDisabled"]
       96 LOADN                            R9 2
       97 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       99 GETUPVAL                         R10 4
      100 CALL                             R10 0 1
      101 JUMPIFNOT                        R10 ; [+6]
      102 GETUPVAL                         R11 5
      103 GETTABLEKS                       R10 R11 K44 ["NUMBER_PRECISION"]
      105 GETTABLEKS                       R9 R10 K45 ["Timestamp"]
      107 JUMP                             ; [+5]
      108 GETUPVAL                         R11 5
      109 GETTABLEKS                       R10 R11 K44 ["NUMBER_PRECISION"]
      111 GETTABLEKS                       R9 R10 K46 ["Float"]
      113 SETTABLEKS                       R9 R8 K28 ["precision"]
      115 GETUPVAL                         R10 4
      116 CALL                             R10 0 1
      117 JUMPIFNOT                        R10 ; [+6]
      118 GETUPVAL                         R11 5
      119 GETTABLEKS                       R10 R11 K47 ["NUMBER_STEP"]
      121 GETTABLEKS                       R9 R10 K45 ["Timestamp"]
      123 JUMP                             ; [+1]
      124 LOADK                            R9 K48 [0.005]
      125 SETTABLEKS                       R9 R8 K29 ["step"]
      127 LOADB                            R9 1
      128 SETTABLEKS                       R9 R8 K30 ["isScrubbable"]
      130 SETTABLEKS                       R1 R8 K31 ["formatAsString"]
      132 GETTABLEKS                       R9 R0 K49 ["OnChanged"]
      134 SETTABLEKS                       R9 R8 K32 ["onChanged"]
      136 GETUPVAL                         R12 2
      137 GETTABLEKS                       R11 R12 K35 ["Enums"]
      139 GETTABLEKS                       R10 R11 K50 ["NumberInputControlsVariant"]
      141 GETTABLEKS                       R9 R10 K51 ["None"]
      143 SETTABLEKS                       R9 R8 K33 ["controlsVariant"]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R5 K13 ["Input"]
      148 GETUPVAL                         R7 0
      149 GETTABLEKS                       R6 R7 K2 ["createElement"]
      151 LOADK                            R7 K52 ["Folder"]
      152 NEWTABLE                         R8 0 0
      154 GETTABLEKS                       R9 R0 K53 ["children"]
      156 CALL                             R6 3 1
      157 SETTABLEKS                       R6 R5 K14 ["PinChildren"]
      159 CALL                             R2 3 -1
      160 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R6 K14 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K11 ["Components"]
       43 GETTABLEKS                       R8 R9 K12 ["NodeView"]
       45 GETTABLEKS                       R7 R8 K13 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R7 K15 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Flags"]
       54 GETTABLEKS                       R7 R8 K17 ["getFFlagAnimGraphFloatStep003"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K18 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 RETURN                           R7 1
