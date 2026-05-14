PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConstraintScaleUpdated"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["OnConstraintGizmoScaleChanged"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R2 R2 K1 ["Connect"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetConstraintGizmoScaleAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["ConstraintScaleUpdated"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Invoke"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Disconnect"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["SetConstraintGizmoScaleAsync"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R3 K2 ["OnConstraintGizmoScaleChanged"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R4 R4 K3 ["Connect"]
       17 CALL                             R4 2 1
       18 MOVE                             R1 R4
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADK                            R7 K1 ["RequestConstraintScaleUpdate"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R5 R0 K2 ["OnInvoke"]
       10 CALL                             R5 3 -1
       11 NAMECALL                         R3 R2 K3 ["add"]
       13 CALL                             R3 -1 0
       14 GETTABLEKS                       R3 R1 K4 ["OnConstraintGizmoScaleChanged"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R3 R3 K5 ["Connect"]
       20 CALL                             R3 2 1
       21 NEWCLOSURE                       R6 P2
       22 CAPTURE                          REF R3
       23 NAMECALL                         R4 R2 K3 ["add"]
       25 CALL                             R4 2 0
       26 LOADK                            R8 K6 ["SetConstraintScale"]
       27 NEWCLOSURE                       R9 P3
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R6 R0 K2 ["OnInvoke"]
       33 CALL                             R6 3 -1
       34 NAMECALL                         R4 R2 K3 ["add"]
       36 CALL                             R4 -1 0
       37 CLOSEUPVALS                      R3
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 DUPCLOSURE                       R4 K10 [PROTO_5]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R2 K11 ["new"]
       23 RETURN                           R2 1
