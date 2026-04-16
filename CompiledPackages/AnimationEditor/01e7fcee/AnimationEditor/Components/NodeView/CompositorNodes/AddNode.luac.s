PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K4 [{"Input_Base", "Input_Additive", "Property_Weight"}]
        6 GETTABLEKS                       R3 R1 K5 ["nextInput"]
        8 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
        9 DUPTABLE                         R5 K10 [{"Name"}]
       10 LOADK                            R6 K11 ["Base"]
       11 SETTABLEKS                       R6 R5 K9 ["Name"]
       13 SETTABLEKS                       R5 R4 K6 ["Input"]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K7 ["Builder"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K1 ["Input_Base"]
       21 GETTABLEKS                       R3 R1 K5 ["nextInput"]
       23 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
       24 DUPTABLE                         R5 K10 [{"Name"}]
       25 LOADK                            R6 K12 ["Additive"]
       26 SETTABLEKS                       R6 R5 K9 ["Name"]
       28 SETTABLEKS                       R5 R4 K6 ["Input"]
       30 GETUPVAL                         R5 1
       31 SETTABLEKS                       R5 R4 K7 ["Builder"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K2 ["Input_Additive"]
       36 GETTABLEKS                       R3 R1 K13 ["nextProperty"]
       38 DUPTABLE                         R4 K19 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       39 LOADK                            R5 K20 ["Weight"]
       40 SETTABLEKS                       R5 R4 K9 ["Name"]
       42 LOADK                            R5 K21 ["Number"]
       43 SETTABLEKS                       R5 R4 K14 ["Type"]
       45 GETTABLEKS                       R6 R0 K22 ["PropertyLookup"]
       47 GETTABLEKS                       R5 R6 K20 ["Weight"]
       49 SETTABLEKS                       R5 R4 K15 ["Value"]
       51 LOADN                            R5 1
       52 SETTABLEKS                       R5 R4 K16 ["DefaultValue"]
       54 LOADK                            R5 K23 [0.1]
       55 SETTABLEKS                       R5 R4 K17 ["Step"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R6 R7 K24 ["NUMBER_PRECISION"]
       60 GETTABLEKS                       R5 R6 K25 ["Float"]
       62 SETTABLEKS                       R5 R4 K18 ["Precision"]
       64 CALL                             R3 1 1
       65 SETTABLEKS                       R3 R2 K3 ["Property_Weight"]
       67 GETUPVAL                         R4 3
       68 GETTABLEKS                       R3 R4 K26 ["createElement"]
       70 GETUPVAL                         R4 4
       71 GETTABLEKS                       R5 R1 K27 ["nodeProps"]
       73 DUPTABLE                         R6 K29 [{"OutputPin"}]
       74 GETTABLEKS                       R7 R1 K30 ["outputPin"]
       76 CALL                             R7 0 1
       77 SETTABLEKS                       R7 R6 K28 ["OutputPin"]
       79 CALL                             R5 1 1
       80 MOVE                             R6 R2
       81 CALL                             R3 3 -1
       82 RETURN                           R3 -1

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
       36 GETTABLEKS                       R6 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K15 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K8 ["Components"]
       45 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       47 GETTABLEKS                       R7 R8 K16 ["CompositorNodeInput"]
       49 GETTABLEKS                       R6 R7 K17 ["SimpleInput"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K18 [PROTO_0]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 RETURN                           R6 1
