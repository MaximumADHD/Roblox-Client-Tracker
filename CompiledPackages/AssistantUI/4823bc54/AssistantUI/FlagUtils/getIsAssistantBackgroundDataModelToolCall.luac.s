PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETTABLEKS                       R1 R0 K1 ["getExperimentFeatureEnabled"]
        7 LOADK                            R2 K2 ["BackgroundDataModelToolCall"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantBackgroundDataModelToolCall"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["FFlagForceAssistantBackgroundDataModelToolCall"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADB                            R0 1
       11 RETURN                           R0 1
       12 GETIMPORT                        R0 K3 [pcall]
       14 DUPCLOSURE                       R1 K4 [PROTO_0]
       15 CAPTURE                          UPVAL U1
       16 CALL                             R0 1 2
       17 JUMPIFNOT                        R0 ; [+2]
       18 MOVE                             R2 R1
       19 JUMPIF                           R2 ; [+1]
       20 LOADB                            R2 0
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
