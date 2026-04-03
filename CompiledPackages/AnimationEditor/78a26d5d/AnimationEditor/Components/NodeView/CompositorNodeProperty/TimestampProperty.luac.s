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
       15 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K7 ["Hooks"]
       19 GETTABLEKS                       R5 R6 K8 ["useDefaultTags"]
       21 GETTABLEKS                       R6 R0 K9 ["tags"]
       23 LOADK                            R7 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K4 ["tag"]
       27 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       31 DUPTABLE                         R5 K14 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K2 ["createElement"]
       35 GETUPVAL                         R7 3
       36 DUPTABLE                         R8 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       37 LOADK                            R9 K18 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       38 SETTABLEKS                       R9 R8 K4 ["tag"]
       40 GETTABLEKS                       R9 R0 K19 ["Label"]
       42 SETTABLEKS                       R9 R8 K15 ["Text"]
       44 LOADN                            R9 1
       45 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R0 K20 ["IsReadOnly"]
       49 JUMPIF                           R9 ; [+4]
       50 GETTABLEKS                       R9 R0 K21 ["IsDisabled"]
       52 JUMPIF                           R9 ; [+1]
       53 LOADB                            R9 0
       54 SETTABLEKS                       R9 R8 K16 ["isDisabled"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K11 ["CompositorNodeInputLabel"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K2 ["createElement"]
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R7 R8 K22 ["NumberInput"]
       65 DUPTABLE                         R8 K33 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "step", "isScrubbable", "formatAsString", "onChanged", "controlsVariant"}]
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R11 R12 K34 ["Enums"]
       69 GETTABLEKS                       R10 R11 K35 ["InputSize"]
       71 GETTABLEKS                       R9 R10 K36 ["XSmall"]
       73 SETTABLEKS                       R9 R8 K23 ["size"]
       75 GETIMPORT                        R9 K39 [UDim.new]
       77 LOADN                            R10 0
       78 LOADN                            R11 90
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K24 ["width"]
       82 LOADK                            R9 K40 [""]
       83 SETTABLEKS                       R9 R8 K25 ["label"]
       85 GETTABLEKS                       R9 R0 K41 ["Value"]
       87 SETTABLEKS                       R9 R8 K26 ["value"]
       89 GETTABLEKS                       R9 R0 K42 ["IsParameterized"]
       91 JUMPIF                           R9 ; [+2]
       92 GETTABLEKS                       R9 R0 K20 ["IsReadOnly"]
       94 SETTABLEKS                       R9 R8 K16 ["isDisabled"]
       96 LOADN                            R9 2
       97 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       99 LOADN                            R9 1
      100 SETTABLEKS                       R9 R8 K27 ["precision"]
      102 LOADK                            R9 K43 [0.005]
      103 SETTABLEKS                       R9 R8 K28 ["step"]
      105 LOADB                            R9 1
      106 SETTABLEKS                       R9 R8 K29 ["isScrubbable"]
      108 SETTABLEKS                       R1 R8 K30 ["formatAsString"]
      110 GETTABLEKS                       R9 R0 K44 ["OnChanged"]
      112 SETTABLEKS                       R9 R8 K31 ["onChanged"]
      114 GETUPVAL                         R12 2
      115 GETTABLEKS                       R11 R12 K34 ["Enums"]
      117 GETTABLEKS                       R10 R11 K45 ["NumberInputControlsVariant"]
      119 GETTABLEKS                       R9 R10 K46 ["None"]
      121 SETTABLEKS                       R9 R8 K32 ["controlsVariant"]
      123 CALL                             R6 2 1
      124 SETTABLEKS                       R6 R5 K12 ["Input"]
      126 GETUPVAL                         R7 0
      127 GETTABLEKS                       R6 R7 K2 ["createElement"]
      129 LOADK                            R7 K47 ["Folder"]
      130 NEWTABLE                         R8 0 0
      132 GETTABLEKS                       R9 R0 K48 ["children"]
      134 CALL                             R6 3 1
      135 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      137 CALL                             R2 3 -1
      138 RETURN                           R2 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K13 ["React"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 RETURN                           R5 1
