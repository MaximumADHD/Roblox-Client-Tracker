PROTO_0:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R0 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 CALL                             R1 0 1
        5 DUPTABLE                         R2 K4 [{"SetConstraintGizmoScaleAsync", "GetConstraintGizmoScaleAsync", "OnConstraintGizmoScaleChanged"}]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R0
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R3 R2 K1 ["SetConstraintGizmoScaleAsync"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          REF R0
       13 SETTABLEKS                       R3 R2 K2 ["GetConstraintGizmoScaleAsync"]
       15 SETTABLEKS                       R1 R2 K3 ["OnConstraintGizmoScaleChanged"]
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K9 [PROTO_2]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 RETURN                           R2 1
