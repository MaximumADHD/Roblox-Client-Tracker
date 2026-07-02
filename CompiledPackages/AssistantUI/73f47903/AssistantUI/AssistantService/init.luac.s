PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionUpdateSignal"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_permissionRequestHandlers"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+10]
        7 DUPTABLE                         R2 K3 [{"outcome"}]
        8 DUPTABLE                         R3 K3 [{"outcome"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["Cancelled"]
       12 SETTABLEKS                       R4 R3 K2 ["outcome"]
       14 SETTABLEKS                       R3 R2 K2 ["outcome"]
       16 RETURN                           R2 1
       17 MOVE                             R2 R1
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_client"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["new"]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K4 ["_sessionUpdateSignal"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K5 ["_sessionIdByThreadId"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K6 ["_permissionRequestHandlers"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R2 R0 K7 ["onSessionUpdate"]
       28 CALL                             R2 2 0
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U2
       32 NAMECALL                         R2 R0 K8 ["onRequestPermission"]
       34 CALL                             R2 2 0
       35 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_client"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["newSession"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_client"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["listSessions"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_client"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["loadSession"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_client"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setSessionMode"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_client"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["cancel"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["sessionId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["update"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R2 ; [+7]
        1 GETTABLEKS                       R3 R0 K0 ["_client"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K1 ["prompt"]
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1
        8 GETTABLEKS                       R3 R1 K2 ["sessionId"]
       10 GETTABLEKS                       R4 R0 K3 ["_sessionUpdateSignal"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R4 R4 K4 ["Connect"]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R5 R0 K0 ["_client"]
       20 MOVE                             R7 R1
       21 NAMECALL                         R5 R5 K1 ["prompt"]
       23 CALL                             R5 2 1
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R5 K5 ["finally"]
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_11:
        0 JUMPIFNOT                        R2 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["_permissionRequestHandlers"]
        3 SETTABLE                         R2 R3 R1
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K0 ["_permissionRequestHandlers"]
        7 LOADNIL                          R4
        8 SETTABLE                         R4 R3 R1
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionIdByThreadId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        6 SETTABLE                         R3 R1 R2
        7 GETTABLEKS                       R1 R0 K1 ["sessionId"]
        9 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_sessionIdByThreadId"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["resolve"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1
       10 GETTABLEKS                       R3 R0 K2 ["_client"]
       12 DUPTABLE                         R5 K6 [{["cwd"] = "/", ["mcpServers"]}]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K5 ["mcpServers"]
       17 NAMECALL                         R3 R3 K7 ["newSession"]
       19 CALL                             R3 2 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NAMECALL                         R3 R3 K8 ["andThen"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K11 ["Acp"]
       35 GETTABLEKS                       R5 R5 K10 ["Types"]
       37 GETTABLEKS                       R5 R5 K12 ["PermissionOutcomes"]
       39 NEWTABLE                         R6 16 0
       41 SETTABLEKS                       R6 R6 K13 ["__index"]
       43 DUPCLOSURE                       R7 K14 [PROTO_2]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K15 ["new"]
       49 DUPCLOSURE                       R7 K16 [PROTO_3]
       50 SETTABLEKS                       R7 R6 K17 ["newSession"]
       52 DUPCLOSURE                       R7 K18 [PROTO_4]
       53 SETTABLEKS                       R7 R6 K19 ["listSessions"]
       55 DUPCLOSURE                       R7 K20 [PROTO_5]
       56 SETTABLEKS                       R7 R6 K21 ["loadSession"]
       58 DUPCLOSURE                       R7 K22 [PROTO_6]
       59 SETTABLEKS                       R7 R6 K23 ["setSessionMode"]
       61 DUPCLOSURE                       R7 K24 [PROTO_7]
       62 SETTABLEKS                       R7 R6 K25 ["cancel"]
       64 DUPCLOSURE                       R7 K26 [PROTO_10]
       65 SETTABLEKS                       R7 R6 K27 ["prompt"]
       67 DUPCLOSURE                       R7 K28 [PROTO_11]
       68 SETTABLEKS                       R7 R6 K29 ["setPermissionRequestHandler"]
       70 DUPCLOSURE                       R7 K30 [PROTO_13]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R7 R6 K31 ["getOrCreateSessionForThread"]
       74 RETURN                           R6 1
