PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K3 [{"Input_Pose", "Property_Speed"}]
        6 GETTABLEKS                       R3 R1 K4 ["nextInput"]
        8 DUPTABLE                         R4 K7 [{"Input", "Builder"}]
        9 DUPTABLE                         R5 K9 [{"Name"}]
       10 LOADK                            R6 K10 ["Pose"]
       11 SETTABLEKS                       R6 R5 K8 ["Name"]
       13 SETTABLEKS                       R5 R4 K5 ["Input"]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K6 ["Builder"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K1 ["Input_Pose"]
       21 GETTABLEKS                       R3 R1 K11 ["nextProperty"]
       23 DUPTABLE                         R4 K15 [{"Name", "Type", "Value", "DefaultValue"}]
       24 LOADK                            R5 K16 ["Speed"]
       25 SETTABLEKS                       R5 R4 K8 ["Name"]
       27 LOADK                            R5 K17 ["Number"]
       28 SETTABLEKS                       R5 R4 K12 ["Type"]
       30 GETTABLEKS                       R6 R0 K18 ["PropertyLookup"]
       32 GETTABLEKS                       R5 R6 K16 ["Speed"]
       34 SETTABLEKS                       R5 R4 K13 ["Value"]
       36 LOADN                            R5 1
       37 SETTABLEKS                       R5 R4 K14 ["DefaultValue"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K2 ["Property_Speed"]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K19 ["createElement"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R5 R1 K20 ["nodeProps"]
       48 DUPTABLE                         R6 K22 [{"OutputPin"}]
       49 GETTABLEKS                       R7 R1 K23 ["outputPin"]
       51 CALL                             R7 0 1
       52 SETTABLEKS                       R7 R6 K21 ["OutputPin"]
       54 CALL                             R5 1 1
       55 MOVE                             R6 R2
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R3 K11 ["CompositorNode"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Util"]
       29 GETTABLEKS                       R4 R4 K13 ["Nodes"]
       31 GETTABLEKS                       R4 R4 K14 ["CompositorNodeUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K9 ["NodeView"]
       40 GETTABLEKS                       R5 R5 K15 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R5 K16 ["SimpleInput"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K17 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 RETURN                           R5 1
