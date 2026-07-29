PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K4 [{"Input_Pose", "Property_Speed"}]
        8 GETTABLEKS                       R3 R1 K5 ["nextInput"]
       10 DUPTABLE                         R4 K8 [{"Input", "Builder"}]
       11 DUPTABLE                         R5 K11 [{["Name"] = "Pose"}]
       12 SETTABLEKS                       R5 R4 K6 ["Input"]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K7 ["Builder"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K2 ["Input_Pose"]
       20 GETTABLEKS                       R3 R1 K12 ["nextProperty"]
       22 DUPTABLE                         R4 K19 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
       23 GETTABLEKS                       R6 R0 K20 ["PropertyLookup"]
       25 GETTABLEKS                       R5 R6 K13 ["Speed"]
       27 SETTABLEKS                       R5 R4 K16 ["Value"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K3 ["Property_Speed"]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K21 ["createElement"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K22 ["CompositorNode"]
       38 GETTABLEKS                       R5 R1 K23 ["nodeProps"]
       40 DUPTABLE                         R6 K26 [{"ContextToolbar", "OutputPin"}]
       41 GETUPVAL                         R8 3
       42 CALL                             R8 0 1
       43 JUMPIFNOT                        R8 ; [+4]
       44 GETTABLEKS                       R7 R1 K27 ["spotlightButton"]
       46 CALL                             R7 0 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 SETTABLEKS                       R7 R6 K24 ["ContextToolbar"]
       51 GETTABLEKS                       R7 R1 K28 ["outputPin"]
       53 CALL                             R7 0 1
       54 SETTABLEKS                       R7 R6 K25 ["OutputPin"]
       56 CALL                             R5 1 1
       57 MOVE                             R6 R2
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Flags"]
       36 GETTABLEKS                       R5 R5 K14 ["getFFlagAnimGraphUI_SpotlightNodes"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K15 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 RETURN                           R5 1
