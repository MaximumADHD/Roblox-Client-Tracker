PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 1
       12 MOVE                             R6 R2
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K2 ["useProducer"]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K2 ["useProducer"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["createElement"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K4 ["SpotlightedNodeContext"]
       32 GETTABLEKS                       R5 R5 K5 ["Provider"]
       34 DUPTABLE                         R6 K8 [{"spotlightedNodeId", "setSpotlightedNodeId"}]
       35 SETTABLEKS                       R1 R6 K6 ["spotlightedNodeId"]
       37 SETTABLEKS                       R3 R6 K7 ["setSpotlightedNodeId"]
       39 GETTABLEKS                       R7 R0 K9 ["children"]
       41 CALL                             R4 3 -1
       42 RETURN                           R4 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["useConsumer"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R2
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K2 ["createElement"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K3 ["SpotlightedNodeContext"]
       26 GETTABLEKS                       R5 R5 K4 ["Provider"]
       28 DUPTABLE                         R6 K7 [{"spotlightedNodeId", "setSpotlightedNodeId"}]
       29 SETTABLEKS                       R1 R6 K5 ["spotlightedNodeId"]
       31 SETTABLEKS                       R3 R6 K6 ["setSpotlightedNodeId"]
       33 GETTABLEKS                       R7 R0 K8 ["children"]
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["NodeGraphing"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["createReplicatedState"]
       32 LOADK                            R5 K13 ["SpotlightedNodeContext_SpotlightedNodeId"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K14 ["createBoundAction"]
       36 LOADK                            R6 K15 ["SpotlightedNodeContext_SetSpotlightedNodeId"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K16 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R7 K17 [PROTO_4]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 DUPTABLE                         R8 K20 [{"EditableDataModelProvider", "UIDataModelProvider"}]
       49 SETTABLEKS                       R6 R8 K18 ["EditableDataModelProvider"]
       51 SETTABLEKS                       R7 R8 K19 ["UIDataModelProvider"]
       53 RETURN                           R8 1
