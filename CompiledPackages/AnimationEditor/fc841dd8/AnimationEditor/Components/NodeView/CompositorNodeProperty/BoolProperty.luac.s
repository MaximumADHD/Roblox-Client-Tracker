PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"tag", "LayoutOrder"}]
        7 LOADK                            R4 K5 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 DUPTABLE                         R4 K9 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K12 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       20 LOADK                            R8 K13 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       21 SETTABLEKS                       R8 R7 K2 ["tag"]
       23 GETTABLEKS                       R8 R0 K14 ["Label"]
       25 SETTABLEKS                       R8 R7 K10 ["Text"]
       27 LOADN                            R8 1
       28 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       30 GETTABLEKS                       R8 R0 K15 ["IsReadOnly"]
       32 SETTABLEKS                       R8 R7 K11 ["isDisabled"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K6 ["CompositorNodeInputLabel"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K0 ["createElement"]
       40 GETUPVAL                         R6 3
       41 DUPTABLE                         R7 K18 [{"info", "updateValue", "LayoutOrder"}]
       42 DUPTABLE                         R8 K22 [{"type", "value", "readonly"}]
       43 LOADK                            R9 K23 ["boolean"]
       44 SETTABLEKS                       R9 R8 K19 ["type"]
       46 GETTABLEKS                       R10 R0 K25 ["Value"]
       48 ORK                              R9 R10 K24 [False]
       49 SETTABLEKS                       R9 R8 K20 ["value"]
       51 GETTABLEKS                       R9 R0 K26 ["IsParameterized"]
       53 JUMPIF                           R9 ; [+4]
       54 GETTABLEKS                       R9 R0 K15 ["IsReadOnly"]
       56 JUMPIF                           R9 ; [+1]
       57 LOADB                            R9 0
       58 SETTABLEKS                       R9 R8 K21 ["readonly"]
       60 SETTABLEKS                       R8 R7 K16 ["info"]
       62 GETTABLEKS                       R8 R0 K27 ["OnChanged"]
       64 SETTABLEKS                       R8 R7 K17 ["updateValue"]
       66 LOADN                            R8 2
       67 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K7 ["Input"]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R5 R6 K0 ["createElement"]
       75 LOADK                            R6 K28 ["Folder"]
       76 NEWTABLE                         R7 0 0
       78 GETTABLEKS                       R8 R0 K29 ["children"]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K8 ["PinChildren"]
       83 CALL                             R1 3 -1
       84 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Properties"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Components"]
       32 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K12 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R6 K13 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R2 K10 ["Components"]
       41 GETTABLEKS                       R5 R6 K14 ["PropertyValue"]
       43 DUPCLOSURE                       R6 K15 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
