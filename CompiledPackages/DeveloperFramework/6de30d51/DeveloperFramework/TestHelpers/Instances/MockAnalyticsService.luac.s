PROTO_0:
        0 DUPTABLE                         R1 K4 [{"eventCount", "lastEvent", "_clientId", "_sessionId"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["eventCount"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["lastEvent"]
        7 LOADK                            R2 K5 [""]
        8 SETTABLEKS                       R2 R1 K2 ["_clientId"]
       10 LOADK                            R2 K5 [""]
       11 SETTABLEKS                       R2 R1 K3 ["_sessionId"]
       13 GETUPVAL                         R2 0
       14 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       16 GETIMPORT                        R0 K7 [setmetatable]
       18 CALL                             R0 2 1
       19 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_clientId"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_sessionId"]
        2 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R5 K3 [{"target", "ctx", "evt"}]
        1 SETTABLEKS                       R1 R5 K0 ["target"]
        3 SETTABLEKS                       R2 R5 K1 ["ctx"]
        5 SETTABLEKS                       R3 R5 K2 ["evt"]
        7 FASTCALL1                        TYPE R4 ; [+3]
        8 MOVE                             R9 R4
        9 GETIMPORT                        R8 K5 [type]
       11 CALL                             R8 1 1
       12 JUMPIFEQKS                       R8 K6 ["table"] ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 LOADK                            R9 K7 ["expected table, argsTable was "]
       17 FASTCALL1                        TYPE R4 ; [+3]
       18 MOVE                             R11 R4
       19 GETIMPORT                        R10 K5 [type]
       21 CALL                             R10 1 1
       22 CONCAT                           R8 R9 R10
       23 FASTCALL2                        ASSERT R7 R8 ; [+3]
       25 GETIMPORT                        R6 K9 [assert]
       27 CALL                             R6 2 0
       28 GETIMPORT                        R6 K11 [pairs]
       30 MOVE                             R7 R4
       31 CALL                             R6 1 3
       32 FORGPREP_NEXT                    R6
       33 GETTABLE                         R11 R5 R9
       34 JUMPIFEQKNIL                     R11 ; [+8]
       36 GETIMPORT                        R11 K13 [warn]
       38 LOADK                            R13 K14 ["Overriding base keyword "]
       39 MOVE                             R14 R9
       40 LOADK                            R15 K15 [" in via argsTable in SendEventDeferred()."]
       41 CONCAT                           R12 R13 R15
       42 CALL                             R11 1 0
       43 SETTABLE                         R10 R5 R9
       44 FORGLOOP                         R6 2 ; [-12]
       46 SETTABLEKS                       R5 R0 K16 ["lastEvent"]
       48 GETTABLEKS                       R7 R0 K18 ["eventCount"]
       50 ADDK                             R6 R7 K17 [1]
       51 SETTABLEKS                       R6 R0 K18 ["eventCount"]
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Destroy"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["GetClientId"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["GetSessionId"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["SendEventDeferred"]
       21 RETURN                           R0 1
