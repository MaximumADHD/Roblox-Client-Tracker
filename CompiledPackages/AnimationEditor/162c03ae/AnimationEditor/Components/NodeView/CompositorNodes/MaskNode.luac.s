PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["OnPropertyChanged"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["createPropertyHelpers"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 DUPTABLE                         R3 K6 [{"Property_Pose", "Property_Mask", "Property_Invert"}]
       18 GETTABLEKS                       R4 R2 K7 ["nextInput"]
       20 DUPTABLE                         R5 K10 [{"Input", "Builder"}]
       21 DUPTABLE                         R6 K12 [{"Name"}]
       22 LOADK                            R7 K13 ["Pose"]
       23 SETTABLEKS                       R7 R6 K11 ["Name"]
       25 SETTABLEKS                       R6 R5 K8 ["Input"]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K9 ["Builder"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K3 ["Property_Pose"]
       33 GETTABLEKS                       R4 R2 K14 ["nextProperty"]
       35 DUPTABLE                         R5 K19 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
       36 LOADK                            R6 K20 ["Mask"]
       37 SETTABLEKS                       R6 R5 K11 ["Name"]
       39 LOADK                            R6 K20 ["Mask"]
       40 SETTABLEKS                       R6 R5 K15 ["Type"]
       42 GETTABLEKS                       R7 R0 K21 ["PropertyLookup"]
       44 GETTABLEKS                       R6 R7 K20 ["Mask"]
       46 SETTABLEKS                       R6 R5 K16 ["Value"]
       48 LOADK                            R6 K22 [""]
       49 SETTABLEKS                       R6 R5 K17 ["DefaultValue"]
       51 SETTABLEKS                       R1 R5 K18 ["OnChanged"]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K4 ["Property_Mask"]
       56 GETTABLEKS                       R4 R2 K14 ["nextProperty"]
       58 DUPTABLE                         R5 K23 [{"Name", "Type", "Value", "DefaultValue"}]
       59 LOADK                            R6 K24 ["Invert"]
       60 SETTABLEKS                       R6 R5 K11 ["Name"]
       62 LOADK                            R6 K25 ["Boolean"]
       63 SETTABLEKS                       R6 R5 K15 ["Type"]
       65 GETTABLEKS                       R7 R0 K21 ["PropertyLookup"]
       67 GETTABLEKS                       R6 R7 K24 ["Invert"]
       69 SETTABLEKS                       R6 R5 K16 ["Value"]
       71 LOADB                            R6 0
       72 SETTABLEKS                       R6 R5 K17 ["DefaultValue"]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K5 ["Property_Invert"]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R4 R5 K26 ["createElement"]
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R6 R2 K27 ["nodeProps"]
       83 DUPTABLE                         R7 K29 [{"OutputPin"}]
       84 GETTABLEKS                       R8 R2 K30 ["outputPin"]
       86 CALL                             R8 0 1
       87 SETTABLEKS                       R8 R7 K28 ["OutputPin"]
       89 CALL                             R6 1 1
       90 MOVE                             R7 R3
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R4 K11 ["CompositorNode"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["Nodes"]
       31 GETTABLEKS                       R4 R5 K14 ["CompositorNodeUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Components"]
       38 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       40 GETTABLEKS                       R6 R7 K15 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R6 K16 ["SimpleInput"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K17 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 RETURN                           R5 1
