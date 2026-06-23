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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETIMPORT                        R0 K1 [pcall]
       12 DUPCLOSURE                       R1 K2 [PROTO_0]
       13 CAPTURE                          UPVAL U2
       14 CALL                             R0 1 2
       15 JUMPIFNOT                        R0 ; [+2]
       16 MOVE                             R2 R1
       17 JUMPIF                           R2 ; [+1]
       18 LOADB                            R2 0
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantBackgroundDataModelToolCall"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["FFlagForceAssistantBackgroundDataModelToolCall"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K3 [script]
       21 LOADK                            R4 K7 ["AssistantUI"]
       22 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R4 R2 K9 ["Guest"]
       29 GETTABLEKS                       R4 R4 K10 ["Environment"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_1]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
