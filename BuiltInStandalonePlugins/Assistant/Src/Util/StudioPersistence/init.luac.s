PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1
        5 LOADNIL                          R0
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FocusedDataModelSession"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["SessionId"]
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Expected DataModelSession"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R3 R0 K5 ["SessionId"]
       13 NAMECALL                         R1 R1 K6 ["Fire"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Expected DataModelSession"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R3 R0 K5 ["SessionId"]
       13 NAMECALL                         R1 R1 K6 ["Fire"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 SETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R0 K0 ["DataModelSessionStarted"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R2 R0 K2 ["DataModelSessionEnded"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R2 R2 K1 ["Connect"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 LOADNIL                          R6
       16 LOADK                            R9 K1 ["MultipleDocumentInterfaceInstance"]
       17 NAMECALL                         R7 R0 K2 ["GetPropertyChangedSignal"]
       19 CALL                             R7 2 1
       20 NEWCLOSURE                       R9 P2
       21 CAPTURE                          REF R6
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R7 R7 K3 ["Connect"]
       26 CALL                             R7 2 1
       27 MOVE                             R8 R5
       28 GETTABLEKS                       R9 R0 K1 ["MultipleDocumentInterfaceInstance"]
       30 CALL                             R8 1 1
       31 MOVE                             R6 R8
       32 DUPTABLE                         R8 K7 [{"getCurrentSessionId", "sessionStartedSignal", "sessionEndedSignal"}]
       33 SETTABLEKS                       R2 R8 K4 ["getCurrentSessionId"]
       35 SETTABLEKS                       R3 R8 K5 ["sessionStartedSignal"]
       37 SETTABLEKS                       R4 R8 K6 ["sessionEndedSignal"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R7
       41 CAPTURE                          REF R6
       42 CLOSEUPVALS                      R1
       43 RETURN                           R8 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["OnSaveOrPublishPlaceToRoblox"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R2 R2 K2 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["GamePublishFinished"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R3 R3 K2 ["Connect"]
       23 CALL                             R3 2 1
       24 DUPTABLE                         R4 K6 [{"publishStartedSignal", "publishEndedSignal"}]
       25 SETTABLEKS                       R0 R4 K4 ["publishStartedSignal"]
       27 SETTABLEKS                       R1 R4 K5 ["publishEndedSignal"]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 2

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 GETUPVAL                         R5 1
        4 CALL                             R5 0 2
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R7 R7 K0 ["createTelemetryIO"]
        8 GETUPVAL                         R8 3
        9 GETTABLEKS                       R8 R8 K1 ["createCloudIO"]
       11 CALL                             R8 0 1
       12 MOVE                             R9 R2
       13 CALL                             R7 2 1
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R8 R8 K2 ["create"]
       17 CALL                             R8 0 1
       18 GETUPVAL                         R9 4
       19 GETTABLEKS                       R9 R9 K3 ["trackSessions"]
       21 DUPTABLE                         R10 K13 [{"dataModel", "networking", "io", "coordinator", "getCurrentSessionId", "sessionStartedSignal", "sessionEndedSignal", "publishStartedSignal", "publishEndedSignal"}]
       22 GETIMPORT                        R11 K15 [game]
       24 SETTABLEKS                       R11 R10 K4 ["dataModel"]
       26 SETTABLEKS                       R1 R10 K5 ["networking"]
       28 SETTABLEKS                       R7 R10 K6 ["io"]
       30 GETTABLEKS                       R11 R8 K7 ["coordinator"]
       32 SETTABLEKS                       R11 R10 K7 ["coordinator"]
       34 GETTABLEKS                       R11 R3 K8 ["getCurrentSessionId"]
       36 SETTABLEKS                       R11 R10 K8 ["getCurrentSessionId"]
       38 GETTABLEKS                       R11 R3 K9 ["sessionStartedSignal"]
       40 SETTABLEKS                       R11 R10 K9 ["sessionStartedSignal"]
       42 GETTABLEKS                       R11 R3 K10 ["sessionEndedSignal"]
       44 SETTABLEKS                       R11 R10 K10 ["sessionEndedSignal"]
       46 GETTABLEKS                       R11 R5 K11 ["publishStartedSignal"]
       48 SETTABLEKS                       R11 R10 K11 ["publishStartedSignal"]
       50 GETTABLEKS                       R11 R5 K12 ["publishEndedSignal"]
       52 SETTABLEKS                       R11 R10 K12 ["publishEndedSignal"]
       54 CALL                             R9 1 1
       55 SETUPVAL                         R9 5
       56 GETTABLEKS                       R10 R1 K16 ["Destroying"]
       58 NEWCLOSURE                       R12 P0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 NAMECALL                         R10 R10 K17 ["Once"]
       65 CALL                             R10 2 0
       66 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 GETIMPORT                        R2 K7 [game]
       11 GETTABLEKS                       R2 R2 K8 ["GetService"]
       13 GETIMPORT                        R3 K7 [game]
       15 LOADK                            R4 K9 ["StudioPublishService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R0 K12 ["Packages"]
       21 GETTABLEKS                       R4 R4 K13 ["AssistantUI"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["DMNetworking"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["Signal"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K11 [require]
       40 GETIMPORT                        R7 K1 [script]
       42 GETTABLEKS                       R7 R7 K16 ["CloudIO"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K11 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K17 ["TelemetryIO"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R3 K18 ["Persistence"]
       54 LOADNIL                          R9
       55 DUPCLOSURE                       R10 K19 [PROTO_8]
       56 CAPTURE                          VAL R5
       57 DUPCLOSURE                       R11 K20 [PROTO_12]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          REF R9
       67 DUPTABLE                         R13 K23 [{"connect", "getAgentPersistenceAccess"}]
       68 SETTABLEKS                       R12 R13 K21 ["connect"]
       70 NEWCLOSURE                       R14 P3
       71 CAPTURE                          REF R9
       72 SETTABLEKS                       R14 R13 K22 ["getAgentPersistenceAccess"]
       74 CLOSEUPVALS                      R9
       75 RETURN                           R13 1
