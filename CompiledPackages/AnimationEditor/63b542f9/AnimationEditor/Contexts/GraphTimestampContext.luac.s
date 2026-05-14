PROTO_0:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 LOADK                            R3 K2 ["RBX_GraphTimestamp"]
        6 GETIMPORT                        R4 K5 [os.time]
        8 CALL                             R4 0 -1
        9 NAMECALL                         R1 R0 K6 ["SetAttribute"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["UPDATE_GRAPH_TIMESTAMP"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 DUPTABLE                         R2 K5 [{"updateGraphTimestamp"}]
       16 SETTABLEKS                       R1 R2 K4 ["updateGraphTimestamp"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K6 ["createElement"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K7 ["Provider"]
       24 DUPTABLE                         R5 K9 [{"value"}]
       25 SETTABLEKS                       R2 R5 K8 ["value"]
       27 GETTABLEKS                       R6 R0 K10 ["children"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"updateGraphTimestamp"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["UPDATE_GRAPH_TIMESTAMP"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["updateGraphTimestamp"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["createElement"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K5 ["Provider"]
       16 DUPTABLE                         R4 K7 [{"value"}]
       17 SETTABLEKS                       R1 R4 K6 ["value"]
       19 GETTABLEKS                       R5 R0 K8 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K13 [{"updateGraphTimestamp"}]
       31 GETTABLEKS                       R5 R3 K14 ["createUnimplemented"]
       33 LOADK                            R6 K12 ["updateGraphTimestamp"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K12 ["updateGraphTimestamp"]
       37 GETTABLEKS                       R5 R2 K15 ["createContext"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 DUPTABLE                         R6 K17 [{"UPDATE_GRAPH_TIMESTAMP"}]
       42 LOADK                            R7 K18 ["GraphTimestampContext_UpdateGraphTimestamp"]
       43 SETTABLEKS                       R7 R6 K16 ["UPDATE_GRAPH_TIMESTAMP"]
       45 DUPCLOSURE                       R7 K19 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R8 K20 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 DUPTABLE                         R9 K25 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "TIMESTAMP_ATTRIBUTE_NAME"}]
       56 SETTABLEKS                       R5 R9 K21 ["Context"]
       58 SETTABLEKS                       R7 R9 K22 ["EditableDataModelProvider"]
       60 SETTABLEKS                       R8 R9 K23 ["UIDataModelProvider"]
       62 LOADK                            R10 K26 ["RBX_GraphTimestamp"]
       63 SETTABLEKS                       R10 R9 K24 ["TIMESTAMP_ATTRIBUTE_NAME"]
       65 RETURN                           R9 1
