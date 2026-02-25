PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADB                            R0 1
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 JUMPIF                           R0 ; [+2]
       10 LOADB                            R0 0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 3
       13 JUMPIF                           R0 ; [+2]
       14 LOADB                            R0 0
       15 RETURN                           R0 1
       16 GETIMPORT                        R0 K1 [game]
       18 LOADK                            R2 K2 ["ManageCollaboratorsIxpLayer"]
       19 NAMECALL                         R0 R0 K3 ["GetFastString"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R1 4
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K4 ["GetCreatorStatusForLayer"]
       26 CALL                             R1 2 1
       27 GETIMPORT                        R2 K8 [Enum.IXPLoadingStatus.Initialized]
       29 JUMPIFNOTEQ                      R1 R2 ; [+14]
       31 GETUPVAL                         R2 4
       32 MOVE                             R4 R0
       33 NAMECALL                         R2 R2 K9 ["LogCreatorLayerExposure"]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 4
       37 MOVE                             R4 R0
       38 NAMECALL                         R2 R2 K10 ["GetCreatorLayerVariables"]
       40 CALL                             R2 2 1
       41 GETTABLEKS                       R3 R2 K11 ["enabled"]
       43 RETURN                           R3 1
       44 LOADB                            R2 0
       45 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8953_EnableLikelyCollaboratorPrefetch"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["EnableCreatorLayerIxpMethodsFeature"]
       10 NAMECALL                         R1 R1 K5 ["GetEngineFeature"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["ManageCollaboratorsIxpEnabledFeature"]
       16 NAMECALL                         R2 R2 K5 ["GetEngineFeature"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["Collab8953_EnableLikelyCollaboratorPrefetchExperimentV2"]
       22 NAMECALL                         R3 R3 K3 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["IXPService"]
       28 NAMECALL                         R4 R4 K9 ["GetService"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K10 [PROTO_0]
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 RETURN                           R5 1
