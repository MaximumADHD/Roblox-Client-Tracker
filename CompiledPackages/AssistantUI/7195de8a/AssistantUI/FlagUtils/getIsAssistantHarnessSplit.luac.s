PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Guest"]
        5 GETTABLEKS                       R1 R1 K3 ["Environment"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K4 ["get"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETTABLEKS                       R2 R1 K5 ["getExperimentFeatureEnabled"]
       14 LOADK                            R3 K6 ["AssistantHarnessSplit"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 LOADB                            R2 0
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHarnessSplit"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantHarnessSplitExp"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADB                            R0 0
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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 RETURN                           R2 1
