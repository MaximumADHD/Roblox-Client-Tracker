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
       34 DUPTABLE                         R5 K22 [{["Name"] = "Mask", ["Type"] = "Mask", ["Value"], ["DefaultValue"] = "", ["OnChanged"]}]
       35 GETTABLEKS                       R6 R0 K23 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R6 K16 ["Mask"]
       39 SETTABLEKS                       R6 R5 K18 ["Value"]
       41 SETTABLEKS                       R1 R5 K21 ["OnChanged"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K5 ["Property_Mask"]
       46 GETTABLEKS                       R4 R2 K15 ["nextProperty"]
       48 DUPTABLE                         R5 K27 [{["Name"] = "Invert", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
       49 GETTABLEKS                       R6 R0 K23 ["PropertyLookup"]
       51 GETTABLEKS                       R6 R6 K24 ["Invert"]
       53 SETTABLEKS                       R6 R5 K18 ["Value"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K6 ["Property_Invert"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K28 ["createElement"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K29 ["CompositorNode"]
       64 GETTABLEKS                       R6 R2 K30 ["nodeProps"]
       66 DUPTABLE                         R7 K33 [{"ContextToolbar", "OutputPin"}]
       67 GETTABLEKS                       R8 R2 K34 ["spotlightButton"]
       69 CALL                             R8 0 1
       70 SETTABLEKS                       R8 R7 K31 ["ContextToolbar"]
       72 GETTABLEKS                       R8 R2 K35 ["outputPin"]
       74 CALL                             R8 0 1
       75 SETTABLEKS                       R8 R7 K32 ["OutputPin"]
       77 CALL                             R6 1 1
       78 MOVE                             R7 R3
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K12 ["SimpleInput"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
