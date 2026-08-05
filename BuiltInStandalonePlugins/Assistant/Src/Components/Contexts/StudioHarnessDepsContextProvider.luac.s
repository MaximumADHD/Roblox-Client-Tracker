PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAgentPersistenceAccess"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["Studio persistence is unavailable"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAgentPersistenceAccess"]
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Studio persistence is unavailable"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 MOVE                             R1 R2
       12 GETTABLEKS                       R1 R1 K4 ["listSessionsPage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getAgentPersistenceAccess"]
        3 CALL                             R3 0 1
        4 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        6 MOVE                             R5 R3
        7 LOADK                            R6 K1 ["Studio persistence is unavailable"]
        8 GETIMPORT                        R4 K3 [assert]
       10 CALL                             R4 2 0
       11 MOVE                             R2 R3
       12 GETTABLEKS                       R2 R2 K4 ["loadSessionPage"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["metadata"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSaveRequested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["provideAgentSaveData"]
        3 DUPTABLE                         R3 K3 [{"sessions", "metadata"}]
        4 SETTABLEKS                       R0 R3 K1 ["sessions"]
        6 SETTABLEKS                       R1 R3 K2 ["metadata"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestDelete"]
        3 DUPTABLE                         R2 K3 [{"scope", "threadId"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K4 ["Types"]
        7 GETTABLEKS                       R3 R3 K5 ["ScopeTypes"]
        9 GETTABLEKS                       R3 R3 K6 ["Messages"]
       11 SETTABLEKS                       R3 R2 K1 ["scope"]
       13 SETTABLEKS                       R0 R2 K2 ["threadId"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["Persistence"]
        8 GETTABLEKS                       R0 R0 K1 ["getCoordinator"]
       10 CALL                             R0 0 1
       11 DUPCLOSURE                       R1 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U2
       13 DUPTABLE                         R2 K8 [{"listSessions", "loadSession", "onSaveRequested", "saveSessions", "deleteSession"}]
       14 DUPCLOSURE                       R3 K9 [PROTO_1]
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R3 R2 K3 ["listSessions"]
       18 DUPCLOSURE                       R3 K10 [PROTO_2]
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R3 R2 K4 ["loadSession"]
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R3 R2 K5 ["onSaveRequested"]
       26 NEWCLOSURE                       R3 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R3 R2 K6 ["saveSessions"]
       30 NEWCLOSURE                       R3 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 SETTABLEKS                       R3 R2 K7 ["deleteSession"]
       35 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_7]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 4
       11 GETUPVAL                         R3 5
       12 DUPTABLE                         R4 K3 [{"persistence"}]
       13 SETTABLEKS                       R1 R4 K2 ["persistence"]
       15 GETTABLEKS                       R5 R0 K4 ["children"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["StudioPersistence"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Components"]
       32 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       34 GETTABLEKS                       R4 R4 K14 ["StudioHarnessDepsContextProvider"]
       36 GETTABLEKS                       R5 R1 K15 ["FlagUtils"]
       38 GETTABLEKS                       R5 R5 K16 ["getIsAssistantHarnessSplit"]
       40 GETTABLEKS                       R6 R2 K17 ["createElement"]
       42 DUPCLOSURE                       R7 K18 [PROTO_8]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1
