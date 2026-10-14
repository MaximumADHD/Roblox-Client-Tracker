PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["OnPropertyChanged"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["CompositorNodeUtils"]
       15 GETTABLEKS                       R2 R2 K3 ["createPropertyHelpers"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K7 [{"Property_Pose", "Property_Mask", "Property_Invert"}]
       20 GETTABLEKS                       R4 R2 K8 ["nextInput"]
       22 DUPTABLE                         R5 K11 [{"Input", "Builder"}]
       23 DUPTABLE                         R6 K14 [{["Name"] = "Pose"}]
       24 SETTABLEKS                       R6 R5 K9 ["Input"]
       26 GETUPVAL                         R6 2
       27 SETTABLEKS                       R6 R5 K10 ["Builder"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K4 ["Property_Pose"]
       32 GETTABLEKS                       R4 R2 K15 ["nextProperty"]
       34 DUPTABLE                         R5 K23 [{["Name"] = "Mask", ["Type"] = "Mask", ["Value"], ["DefaultValue"] = "", ["OnChanged"], ["HidePin"]}]
       35 GETTABLEKS                       R6 R0 K24 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R6 K16 ["Mask"]
       39 SETTABLEKS                       R6 R5 K18 ["Value"]
       41 SETTABLEKS                       R1 R5 K21 ["OnChanged"]
       43 GETUPVAL                         R6 3
       44 SETTABLEKS                       R6 R5 K22 ["HidePin"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K5 ["Property_Mask"]
       49 GETTABLEKS                       R4 R2 K15 ["nextProperty"]
       51 DUPTABLE                         R5 K28 [{["Name"] = "Invert", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
       52 GETTABLEKS                       R6 R0 K24 ["PropertyLookup"]
       54 GETTABLEKS                       R6 R6 K25 ["Invert"]
       56 SETTABLEKS                       R6 R5 K18 ["Value"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K6 ["Property_Invert"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K29 ["createElement"]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K30 ["CompositorNode"]
       67 GETTABLEKS                       R6 R2 K31 ["nodeProps"]
       69 DUPTABLE                         R7 K34 [{"ContextToolbar", "OutputPin"}]
       70 GETTABLEKS                       R8 R2 K35 ["spotlightButton"]
       72 CALL                             R8 0 1
       73 SETTABLEKS                       R8 R7 K32 ["ContextToolbar"]
       75 GETTABLEKS                       R8 R2 K36 ["outputPin"]
       77 CALL                             R8 0 1
       78 SETTABLEKS                       R8 R7 K33 ["OutputPin"]
       80 CALL                             R6 1 1
       81 MOVE                             R7 R3
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUINoMaskParameter"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["SimpleInput"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K15 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 RETURN                           R5 1
