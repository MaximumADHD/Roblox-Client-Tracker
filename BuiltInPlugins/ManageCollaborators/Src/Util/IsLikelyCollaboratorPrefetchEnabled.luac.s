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
       12 GETIMPORT                        R0 K1 [game]
       14 LOADK                            R2 K2 ["ManageCollaboratorsIxpLayer"]
       15 NAMECALL                         R0 R0 K3 ["GetFastString"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 3
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K4 ["GetCreatorStatusForLayer"]
       22 CALL                             R1 2 1
       23 GETIMPORT                        R2 K8 [Enum.IXPLoadingStatus.Initialized]
       25 JUMPIFNOTEQ                      R1 R2 ; [+14]
       27 GETUPVAL                         R2 3
       28 MOVE                             R4 R0
       29 NAMECALL                         R2 R2 K9 ["LogCreatorLayerExposure"]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 3
       33 MOVE                             R4 R0
       34 NAMECALL                         R2 R2 K10 ["GetCreatorLayerVariables"]
       36 CALL                             R2 2 1
       37 GETTABLEKS                       R3 R2 K11 ["enabled"]
       39 RETURN                           R3 1
       40 LOADB                            R2 0
       41 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8953_EnableLikelyCollaboratorPrefetch"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ManageCollaboratorsIxpEnabledFeature"]
       10 NAMECALL                         R1 R1 K5 ["GetEngineFeature"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["Collab8953_EnableLikelyCollaboratorPrefetchExperimentV2"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["IXPService"]
       22 NAMECALL                         R3 R3 K8 ["GetService"]
       24 CALL                             R3 2 1
       25 DUPCLOSURE                       R4 K9 [PROTO_0]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
