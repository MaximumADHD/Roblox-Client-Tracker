PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 LOADB                            R2 1
        3 GETTABLEKS                       R3 R1 K1 ["enabled"]
        5 JUMPIFEQKN                       R3 K2 [1] ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["enabled"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETUPVAL                         R3 0
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K3 ["activeDraftGuids"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["enableDraftMode"]
       22 GETTABLEKS                       R4 R0 K5 ["requestId"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 0
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K3 ["activeDraftGuids"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K6 ["disableDraftMode"]
       33 GETTABLEKS                       R4 R0 K5 ["requestId"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R4 K10 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Utils"]
       31 GETTABLEKS                       R4 R5 K11 ["Utils"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
