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
       16 LOADK                            R5 K7 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       17 SETTABLEKS                       R5 R4 K4 ["tag"]
       19 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       21 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       23 DUPTABLE                         R5 K11 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K2 ["createElement"]
       27 GETUPVAL                         R7 3
       28 DUPTABLE                         R8 K14 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       29 LOADK                            R9 K15 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       30 SETTABLEKS                       R9 R8 K4 ["tag"]
       32 GETTABLEKS                       R9 R0 K16 ["Label"]
       34 SETTABLEKS                       R9 R8 K12 ["Text"]
       36 LOADN                            R9 1
       37 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       39 GETTABLEKS                       R9 R0 K17 ["IsReadOnly"]
       41 SETTABLEKS                       R9 R8 K13 ["isDisabled"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K8 ["CompositorNodeInputLabel"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K2 ["createElement"]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R7 R8 K18 ["NumberInput"]
       52 DUPTABLE                         R8 K26 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "formatAsString", "onChanged"}]
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R11 R12 K27 ["Enums"]
       56 GETTABLEKS                       R10 R11 K28 ["InputSize"]
       58 GETTABLEKS                       R9 R10 K29 ["XSmall"]
       60 SETTABLEKS                       R9 R8 K19 ["size"]
       62 GETIMPORT                        R9 K32 [UDim.new]
       64 LOADN                            R10 0
       65 LOADN                            R11 90
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K20 ["width"]
       69 LOADK                            R9 K33 [""]
       70 SETTABLEKS                       R9 R8 K21 ["label"]
       72 GETTABLEKS                       R9 R0 K34 ["Value"]
       74 SETTABLEKS                       R9 R8 K22 ["value"]
       76 GETTABLEKS                       R9 R0 K35 ["IsParameterized"]
       78 JUMPIF                           R9 ; [+2]
       79 GETTABLEKS                       R9 R0 K17 ["IsReadOnly"]
       81 SETTABLEKS                       R9 R8 K13 ["isDisabled"]
       83 LOADN                            R9 2
       84 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       86 LOADN                            R9 2
       87 SETTABLEKS                       R9 R8 K23 ["precision"]
       89 SETTABLEKS                       R1 R8 K24 ["formatAsString"]
       91 GETTABLEKS                       R9 R0 K36 ["OnChanged"]
       93 SETTABLEKS                       R9 R8 K25 ["onChanged"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K9 ["Input"]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R6 R7 K2 ["createElement"]
      101 LOADK                            R7 K37 ["Folder"]
      102 NEWTABLE                         R8 0 0
      104 GETTABLEKS                       R9 R0 K38 ["children"]
      106 CALL                             R6 3 1
      107 SETTABLEKS                       R6 R5 K10 ["PinChildren"]
      109 CALL                             R2 3 -1
      110 RETURN                           R2 -1

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
