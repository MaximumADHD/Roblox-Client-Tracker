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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHarnessSplit"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["Persistence"]
        9 GETTABLEKS                       R0 R0 K2 ["getCoordinator"]
       11 CALL                             R0 0 1
       12 DUPCLOSURE                       R1 K3 [PROTO_0]
       13 CAPTURE                          UPVAL U2
       14 DUPTABLE                         R2 K9 [{"listSessions", "loadSession", "onSaveRequested", "saveSessions", "deleteSession"}]
       15 DUPCLOSURE                       R3 K10 [PROTO_1]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R3 R2 K4 ["listSessions"]
       19 DUPCLOSURE                       R3 K11 [PROTO_2]
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R3 R2 K5 ["loadSession"]
       23 NEWCLOSURE                       R3 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R2 K6 ["onSaveRequested"]
       27 NEWCLOSURE                       R3 P4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R3 R2 K7 ["saveSessions"]
       31 NEWCLOSURE                       R3 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R3 R2 K8 ["deleteSession"]
       36 RETURN                           R2 1

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
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioPersistence"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Components"]
       39 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       41 GETTABLEKS                       R5 R5 K15 ["StudioHarnessDepsContextProvider"]
       43 GETTABLEKS                       R6 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R7 K17 [PROTO_8]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 RETURN                           R7 1
