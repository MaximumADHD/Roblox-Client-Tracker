PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K4 [{"Input_Pose", "Property_Speed"}]
        8 GETTABLEKS                       R3 R1 K5 ["nextInput"]
       10 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
       11 DUPTABLE                         R5 K10 [{"Name"}]
       12 LOADK                            R6 K11 ["Pose"]
       13 SETTABLEKS                       R6 R5 K9 ["Name"]
       15 SETTABLEKS                       R5 R4 K6 ["Input"]
       17 GETUPVAL                         R5 1
       18 SETTABLEKS                       R5 R4 K7 ["Builder"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K2 ["Input_Pose"]
       23 GETTABLEKS                       R3 R1 K12 ["nextProperty"]
       25 DUPTABLE                         R4 K16 [{"Name", "Type", "Value", "DefaultValue"}]
       26 LOADK                            R5 K17 ["Speed"]
       27 SETTABLEKS                       R5 R4 K9 ["Name"]
       29 LOADK                            R5 K18 ["Number"]
       30 SETTABLEKS                       R5 R4 K13 ["Type"]
       32 GETTABLEKS                       R6 R0 K19 ["PropertyLookup"]
       34 GETTABLEKS                       R5 R6 K17 ["Speed"]
       36 SETTABLEKS                       R5 R4 K14 ["Value"]
       38 LOADN                            R5 1
       39 SETTABLEKS                       R5 R4 K15 ["DefaultValue"]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K3 ["Property_Speed"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K20 ["createElement"]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K21 ["CompositorNode"]
       50 GETTABLEKS                       R5 R1 K22 ["nodeProps"]
       52 DUPTABLE                         R6 K24 [{"OutputPin"}]
       53 GETTABLEKS                       R7 R1 K25 ["outputPin"]
       55 CALL                             R7 0 1
       56 SETTABLEKS                       R7 R6 K23 ["OutputPin"]
       58 CALL                             R5 1 1
       59 MOVE                             R6 R2
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1

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
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
