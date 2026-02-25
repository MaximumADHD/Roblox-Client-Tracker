PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+15]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        8 LOADK                            R3 K1 ["Weight"]
        9 GETTABLEKS                       R4 R1 K1 ["Weight"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
       15 LOADK                            R3 K2 ["Clamped"]
       16 GETTABLEKS                       R4 R1 K2 ["Clamped"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K2 ["OnPropertyChanged"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 DUPTABLE                         R3 K6 [{"Input_A", "Input_B", "Property_Weight"}]
       18 GETTABLEKS                       R4 R1 K7 ["nextInput"]
       20 DUPTABLE                         R5 K10 [{"Input", "Builder"}]
       21 DUPTABLE                         R6 K12 [{"Name"}]
       22 LOADK                            R7 K13 ["A"]
       23 SETTABLEKS                       R7 R6 K11 ["Name"]
       25 SETTABLEKS                       R6 R5 K8 ["Input"]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K9 ["Builder"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K3 ["Input_A"]
       33 GETTABLEKS                       R4 R1 K7 ["nextInput"]
       35 DUPTABLE                         R5 K10 [{"Input", "Builder"}]
       36 DUPTABLE                         R6 K12 [{"Name"}]
       37 LOADK                            R7 K14 ["B"]
       38 SETTABLEKS                       R7 R6 K11 ["Name"]
       40 SETTABLEKS                       R6 R5 K8 ["Input"]
       42 GETUPVAL                         R6 2
       43 SETTABLEKS                       R6 R5 K9 ["Builder"]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K4 ["Input_B"]
       48 GETTABLEKS                       R4 R1 K15 ["nextProperty"]
       50 DUPTABLE                         R5 K20 [{"Name", "Type", "Value", "OnChanged", "DefaultValue"}]
       51 LOADK                            R6 K21 ["Weight"]
       52 SETTABLEKS                       R6 R5 K11 ["Name"]
       54 LOADK                            R6 K22 ["ClampedWeight"]
       55 SETTABLEKS                       R6 R5 K16 ["Type"]
       57 DUPTABLE                         R6 K24 [{"Weight", "Clamped"}]
       58 GETTABLEKS                       R8 R0 K25 ["PropertyLookup"]
       60 GETTABLEKS                       R7 R8 K21 ["Weight"]
       62 SETTABLEKS                       R7 R6 K21 ["Weight"]
       64 GETTABLEKS                       R8 R0 K25 ["PropertyLookup"]
       66 GETTABLEKS                       R7 R8 K23 ["Clamped"]
       68 SETTABLEKS                       R7 R6 K23 ["Clamped"]
       70 SETTABLEKS                       R6 R5 K17 ["Value"]
       72 SETTABLEKS                       R2 R5 K18 ["OnChanged"]
       74 LOADN                            R6 1
       75 SETTABLEKS                       R6 R5 K19 ["DefaultValue"]
       77 CALL                             R4 1 1
       78 SETTABLEKS                       R4 R3 K5 ["Property_Weight"]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R4 R5 K26 ["createElement"]
       83 GETUPVAL                         R5 3
       84 GETTABLEKS                       R6 R1 K27 ["nodeProps"]
       86 DUPTABLE                         R7 K29 [{"OutputPin"}]
       87 GETTABLEKS                       R8 R1 K30 ["outputPin"]
       89 CALL                             R8 0 1
       90 SETTABLEKS                       R8 R7 K28 ["OutputPin"]
       92 CALL                             R6 1 1
       93 MOVE                             R7 R3
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 RETURN                           R5 1
