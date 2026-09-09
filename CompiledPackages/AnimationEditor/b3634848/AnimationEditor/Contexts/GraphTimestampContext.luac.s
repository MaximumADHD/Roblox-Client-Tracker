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
        0 DUPTABLE                         R0 K1 [{"updateGraphTimestamp"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["updateGraphTimestamp"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
       10 LOADK                            R3 K3 ["GraphTimestampContext_UpdateGraphTimestamp"]
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K5 ["createElement"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K6 ["Provider"]
       30 DUPTABLE                         R5 K8 [{"value"}]
       31 SETTABLEKS                       R2 R5 K7 ["value"]
       33 GETTABLEKS                       R6 R0 K9 ["children"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"updateGraphTimestamp"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["updateGraphTimestamp"]
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 LOADK                            R2 K1 ["GraphTimestampContext_UpdateGraphTimestamp"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["Provider"]
       22 DUPTABLE                         R5 K6 [{"value"}]
       23 SETTABLEKS                       R2 R5 K5 ["value"]
       25 GETTABLEKS                       R6 R0 K7 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

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
       41 DUPTABLE                         R6 K18 [{["UPDATE_GRAPH_TIMESTAMP"] = "GraphTimestampContext_UpdateGraphTimestamp"}]
       42 DUPCLOSURE                       R7 K19 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R8 K20 [PROTO_4]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 DUPTABLE                         R9 K26 [{["Context"], ["EditableDataModelProvider"], ["UIDataModelProvider"], ["TIMESTAMP_ATTRIBUTE_NAME"] = "RBX_GraphTimestamp"}]
       51 SETTABLEKS                       R5 R9 K21 ["Context"]
       53 SETTABLEKS                       R7 R9 K22 ["EditableDataModelProvider"]
       55 SETTABLEKS                       R8 R9 K23 ["UIDataModelProvider"]
       57 RETURN                           R9 1
