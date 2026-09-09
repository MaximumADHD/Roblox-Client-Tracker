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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantPersistOnlyForDirtySession"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 LENGTH                           R2 R0
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["provideAgentSaveData"]
       11 DUPTABLE                         R3 K6 [{"scope", "sessions", "metadata"}]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K7 ["Types"]
       15 GETTABLEKS                       R4 R4 K8 ["ScopeTypes"]
       17 GETTABLEKS                       R4 R4 K9 ["Threads"]
       19 SETTABLEKS                       R4 R3 K3 ["scope"]
       21 SETTABLEKS                       R0 R3 K4 ["sessions"]
       23 SETTABLEKS                       R1 R3 K5 ["metadata"]
       25 CALL                             R2 1 0
       26 MOVE                             R2 R0
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantPersistOnlyForDirtySession"]
       33 JUMPIFNOT                        R7 ; [+6]
       34 GETTABLEKS                       R8 R6 K10 ["messages"]
       36 LENGTH                           R7 R8
       37 LOADN                            R8 0
       38 JUMPIFNOTLT                      R8 R7 ; [+19]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K2 ["provideAgentSaveData"]
       43 DUPTABLE                         R8 K12 [{"scope", "session", "metadata"}]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K7 ["Types"]
       47 GETTABLEKS                       R9 R9 K8 ["ScopeTypes"]
       49 GETTABLEKS                       R9 R9 K13 ["Messages"]
       51 SETTABLEKS                       R9 R8 K3 ["scope"]
       53 SETTABLEKS                       R6 R8 K11 ["session"]
       55 SETTABLEKS                       R1 R8 K5 ["metadata"]
       57 CALL                             R7 1 0
       58 FORGLOOP                         R2 2 ; [-29]
       60 RETURN                           R0 0

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
        2 JUMPIFNOT                        R0 ; [+2]
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
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R3 R2 K6 ["saveSessions"]
       32 NEWCLOSURE                       R3 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R3 R2 K7 ["deleteSession"]
       37 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETIMPORT                        R1 K1 [game]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_7]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NEWTABLE                         R3 0 0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       14 DUPCLOSURE                       R3 K2 [PROTO_8]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U5
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 6
       21 GETUPVAL                         R4 7
       22 DUPTABLE                         R5 K5 [{"persistence", "remoteDeps"}]
       23 SETTABLEKS                       R1 R5 K3 ["persistence"]
       25 SETTABLEKS                       R2 R5 K4 ["remoteDeps"]
       27 GETTABLEKS                       R6 R0 K6 ["children"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

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
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["StudioLLM"]
       38 GETTABLEKS                       R5 R5 K14 ["createRemoteACPAgentDeps"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Util"]
       47 GETTABLEKS                       R6 R6 K16 ["StudioPersistence"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K11 ["Components"]
       52 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       54 GETTABLEKS                       R6 R6 K17 ["StudioHarnessDepsContextProvider"]
       56 GETTABLEKS                       R7 R4 K14 ["createRemoteACPAgentDeps"]
       58 GETTABLEKS                       R8 R1 K18 ["FlagUtils"]
       60 GETTABLEKS                       R8 R8 K19 ["getIsAssistantUseRemoteService"]
       62 GETTABLEKS                       R8 R8 K20 ["get"]
       64 GETTABLEKS                       R9 R2 K21 ["createElement"]
       66 DUPCLOSURE                       R10 K22 [PROTO_9]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R6
       75 RETURN                           R10 1
