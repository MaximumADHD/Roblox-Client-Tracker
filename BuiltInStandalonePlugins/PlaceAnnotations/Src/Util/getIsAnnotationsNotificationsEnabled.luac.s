PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagEnableStudioAnnotationsNotifications"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIF                           R0 ; [+2]
       12 LOADB                            R0 0
       13 RETURN                           R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K1 ["fflagEnableStudioAnnotationsNotificationsExperiment"]
       17 JUMPIF                           R0 ; [+2]
       18 LOADB                            R0 0
       19 RETURN                           R0 1
       20 GETIMPORT                        R0 K3 [game]
       22 LOADK                            R2 K4 ["AnnotationsNotificationsIxpLayer"]
       23 NAMECALL                         R0 R0 K5 ["GetFastString"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R1 3
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K6 ["GetCreatorStatusForLayer"]
       30 CALL                             R1 2 1
       31 GETIMPORT                        R2 K10 [Enum.IXPLoadingStatus.Initialized]
       33 JUMPIFNOTEQ                      R1 R2 ; [+14]
       35 GETUPVAL                         R2 3
       36 MOVE                             R4 R0
       37 NAMECALL                         R2 R2 K11 ["LogCreatorLayerExposure"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 3
       41 MOVE                             R4 R0
       42 NAMECALL                         R2 R2 K12 ["GetCreatorLayerVariables"]
       44 CALL                             R2 2 1
       45 GETTABLEKS                       R3 R2 K13 ["enabled"]
       47 RETURN                           R3 1
       48 LOADB                            R2 0
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["EnableCreatorLayerIxpMethodsFeature"]
       19 NAMECALL                         R2 R2 K12 ["GetEngineFeature"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K10 [game]
       24 LOADK                            R5 K13 ["AnnotationsNotificationsIxpEnabledFeature"]
       25 NAMECALL                         R3 R3 K12 ["GetEngineFeature"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K10 [game]
       30 LOADK                            R6 K14 ["IXPService"]
       31 NAMECALL                         R4 R4 K15 ["GetService"]
       33 CALL                             R4 2 1
       34 DUPCLOSURE                       R5 K16 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
