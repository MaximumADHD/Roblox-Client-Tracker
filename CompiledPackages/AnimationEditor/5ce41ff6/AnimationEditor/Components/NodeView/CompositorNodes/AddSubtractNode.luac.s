PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K4 [{"Input_A", "Input_B", "Property_Weight"}]
        6 GETTABLEKS                       R3 R1 K5 ["nextInput"]
        8 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
        9 DUPTABLE                         R5 K10 [{"Name"}]
       10 LOADK                            R6 K11 ["A"]
       11 SETTABLEKS                       R6 R5 K9 ["Name"]
       13 SETTABLEKS                       R5 R4 K6 ["Input"]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K7 ["Builder"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K1 ["Input_A"]
       21 GETTABLEKS                       R3 R1 K5 ["nextInput"]
       23 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
       24 DUPTABLE                         R5 K10 [{"Name"}]
       25 LOADK                            R6 K12 ["B"]
       26 SETTABLEKS                       R6 R5 K9 ["Name"]
       28 SETTABLEKS                       R5 R4 K6 ["Input"]
       30 GETUPVAL                         R5 1
       31 SETTABLEKS                       R5 R4 K7 ["Builder"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K2 ["Input_B"]
       36 GETTABLEKS                       R3 R1 K13 ["nextProperty"]
       38 DUPTABLE                         R4 K17 [{"Name", "Type", "Value", "DefaultValue"}]
       39 LOADK                            R5 K18 ["Weight"]
       40 SETTABLEKS                       R5 R4 K9 ["Name"]
       42 LOADK                            R5 K19 ["Number"]
       43 SETTABLEKS                       R5 R4 K14 ["Type"]
       45 GETTABLEKS                       R6 R0 K20 ["PropertyLookup"]
       47 GETTABLEKS                       R5 R6 K18 ["Weight"]
       49 SETTABLEKS                       R5 R4 K15 ["Value"]
       51 LOADN                            R5 1
       52 SETTABLEKS                       R5 R4 K16 ["DefaultValue"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K3 ["Property_Weight"]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R3 R4 K21 ["createElement"]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R5 R1 K22 ["nodeProps"]
       63 DUPTABLE                         R6 K24 [{"OutputPin"}]
       64 GETTABLEKS                       R7 R1 K25 ["outputPin"]
       66 CALL                             R7 0 1
       67 SETTABLEKS                       R7 R6 K23 ["OutputPin"]
       69 CALL                             R5 1 1
       70 MOVE                             R6 R2
       71 CALL                             R3 3 -1
       72 RETURN                           R3 -1

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
       45 DUPCLOSURE                       R5 K17 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 RETURN                           R5 1
