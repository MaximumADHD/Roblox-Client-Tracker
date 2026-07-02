PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R2
       10 DUPTABLE                         R7 K7 [{"tag", "stateLayer", "onStateChanged", "layout", "Size", "ref"}]
       11 NEWTABLE                         R8 4 0
       13 GETTABLEKS                       R9 R2 K8 ["isContained"]
       15 SETTABLEKS                       R9 R8 K9 ["bg-shift-200"]
       17 GETTABLEKS                       R10 R2 K8 ["isContained"]
       19 NOT                              R9 R10
       20 SETTABLEKS                       R9 R8 K10 ["gap-small"]
       22 LOADB                            R9 1
       23 SETTABLEKS                       R9 R8 K11 ["radius-medium"]
       25 SETTABLEKS                       R8 R7 K1 ["tag"]
       27 DUPTABLE                         R8 K13 [{"affordance"}]
       28 GETUPVAL                         R9 5
       29 GETTABLEKS                       R9 R9 K14 ["None"]
       31 SETTABLEKS                       R9 R8 K12 ["affordance"]
       33 SETTABLEKS                       R8 R7 K2 ["stateLayer"]
       35 GETTABLEKS                       R8 R2 K3 ["onStateChanged"]
       37 SETTABLEKS                       R8 R7 K3 ["onStateChanged"]
       39 DUPTABLE                         R8 K17 [{"FillDirection", "SortOrder"}]
       40 GETTABLEKS                       R9 R2 K15 ["FillDirection"]
       42 SETTABLEKS                       R9 R8 K15 ["FillDirection"]
       44 GETIMPORT                        R9 K20 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R9 R8 K16 ["SortOrder"]
       48 SETTABLEKS                       R8 R7 K4 ["layout"]
       50 GETTABLEKS                       R8 R2 K5 ["Size"]
       52 SETTABLEKS                       R8 R7 K5 ["Size"]
       54 SETTABLEKS                       R1 R7 K6 ["ref"]
       56 CALL                             R5 2 1
       57 DUPTABLE                         R6 K22 [{"TileContext"}]
       58 GETTABLEKS                       R8 R2 K23 ["children"]
       60 JUMPIFNOT                        R8 ; [+26]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K0 ["createElement"]
       64 GETUPVAL                         R8 6
       65 GETTABLEKS                       R8 R8 K24 ["Provider"]
       67 DUPTABLE                         R9 K26 [{"value"}]
       68 DUPTABLE                         R10 K29 [{"isContained", "fillDirection", "testId"}]
       69 GETTABLEKS                       R11 R2 K8 ["isContained"]
       71 SETTABLEKS                       R11 R10 K8 ["isContained"]
       73 GETTABLEKS                       R11 R2 K15 ["FillDirection"]
       75 SETTABLEKS                       R11 R10 K27 ["fillDirection"]
       77 GETTABLEKS                       R11 R2 K28 ["testId"]
       79 SETTABLEKS                       R11 R10 K28 ["testId"]
       81 SETTABLEKS                       R10 R9 K25 ["value"]
       83 GETTABLEKS                       R10 R2 K23 ["children"]
       85 CALL                             R7 3 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R7
       88 SETTABLEKS                       R7 R6 K21 ["TileContext"]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K13 ["TileContext"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Utility"]
       48 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K15 ["Enums"]
       55 GETTABLEKS                       R9 R9 K16 ["FillBehavior"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Enums"]
       62 GETTABLEKS                       R10 R10 K17 ["StateLayerAffordance"]
       64 CALL                             R9 1 1
       65 DUPTABLE                         R10 K23 [{["FillDirection"], ["isContained"] = False, ["testId"] = "--foundation-tile"}]
       66 GETIMPORT                        R11 K26 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R11 R10 K18 ["FillDirection"]
       70 DUPCLOSURE                       R11 K27 [PROTO_0]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 GETTABLEKS                       R12 R2 K28 ["forwardRef"]
       80 MOVE                             R13 R11
       81 CALL                             R12 1 -1
       82 RETURN                           R12 -1
