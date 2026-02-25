PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"tag", "LayoutOrder"}]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K5 ["Hooks"]
       10 GETTABLEKS                       R4 R5 K6 ["useDefaultTags"]
       12 GETTABLEKS                       R5 R0 K7 ["tags"]
       14 LOADK                            R6 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["tag"]
       18 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       22 DUPTABLE                         R4 K12 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K0 ["createElement"]
       26 GETUPVAL                         R6 2
       27 DUPTABLE                         R7 K15 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       28 LOADK                            R8 K16 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       29 SETTABLEKS                       R8 R7 K2 ["tag"]
       31 GETTABLEKS                       R8 R0 K17 ["Label"]
       33 SETTABLEKS                       R8 R7 K13 ["Text"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       38 GETTABLEKS                       R8 R0 K18 ["IsReadOnly"]
       40 JUMPIF                           R8 ; [+4]
       41 GETTABLEKS                       R8 R0 K19 ["IsDisabled"]
       43 JUMPIF                           R8 ; [+1]
       44 LOADB                            R8 0
       45 SETTABLEKS                       R8 R7 K14 ["isDisabled"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["CompositorNodeInputLabel"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K0 ["createElement"]
       53 GETUPVAL                         R6 3
       54 DUPTABLE                         R7 K22 [{"info", "updateValue", "LayoutOrder"}]
       55 DUPTABLE                         R8 K26 [{"type", "value", "readonly"}]
       56 LOADK                            R9 K27 ["boolean"]
       57 SETTABLEKS                       R9 R8 K23 ["type"]
       59 GETTABLEKS                       R10 R0 K29 ["Value"]
       61 ORK                              R9 R10 K28 [False]
       62 SETTABLEKS                       R9 R8 K24 ["value"]
       64 GETTABLEKS                       R9 R0 K30 ["IsParameterized"]
       66 JUMPIF                           R9 ; [+4]
       67 GETTABLEKS                       R9 R0 K18 ["IsReadOnly"]
       69 JUMPIF                           R9 ; [+1]
       70 LOADB                            R9 0
       71 SETTABLEKS                       R9 R8 K25 ["readonly"]
       73 SETTABLEKS                       R8 R7 K20 ["info"]
       75 GETTABLEKS                       R8 R0 K31 ["OnChanged"]
       77 SETTABLEKS                       R8 R7 K21 ["updateValue"]
       79 LOADN                            R8 2
       80 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K10 ["Input"]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R5 R6 K0 ["createElement"]
       88 LOADK                            R6 K32 ["Folder"]
       89 NEWTABLE                         R7 0 0
       91 GETTABLEKS                       R8 R0 K33 ["children"]
       93 CALL                             R5 3 1
       94 SETTABLEKS                       R5 R4 K11 ["PinChildren"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

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
