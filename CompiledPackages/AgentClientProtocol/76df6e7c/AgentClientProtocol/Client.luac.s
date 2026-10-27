PROTO_0:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLEKS                       R3 R0 K1 ["version"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Client info (name, version) is required."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Client options are required."]
       20 GETIMPORT                        R2 K4 [assert]
       22 CALL                             R2 2 0
       23 NEWTABLE                         R3 4 0
       25 GETUPVAL                         R4 0
       26 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       28 GETIMPORT                        R2 K8 [setmetatable]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K9 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K10 ["_protocol"]
       37 SETTABLEKS                       R0 R2 K11 ["_clientInfo"]
       39 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       41 SETTABLEKS                       R3 R2 K12 ["_clientCapabilities"]
       43 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["connect"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 NAMECALL                         R1 R1 K1 ["close"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["Initialize"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["request"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionNew"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["request"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionLoad"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["request"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionList"]
        7 MOVE                             R5 R1
        8 JUMPIF                           R5 ; [+2]
        9 NEWTABLE                         R5 0 0
       11 NAMECALL                         R2 R2 K3 ["request"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionPrompt"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["request"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionSetMode"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["request"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionCancel"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["notification"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["params"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionUpdate"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 NAMECALL                         R2 R2 K3 ["setNotificationHandler"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["params"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionRequestPermission"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["sendResult"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Protocol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Types"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 16 0
       21 SETTABLEKS                       R2 R2 K7 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R3 R2 K9 ["new"]
       28 DUPCLOSURE                       R3 K10 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K11 ["connect"]
       31 DUPCLOSURE                       R3 K12 [PROTO_2]
       32 SETTABLEKS                       R3 R2 K13 ["close"]
       34 DUPCLOSURE                       R3 K14 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R2 K15 ["initialize"]
       38 DUPCLOSURE                       R3 K16 [PROTO_4]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K17 ["newSession"]
       42 DUPCLOSURE                       R3 K18 [PROTO_5]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R3 R2 K19 ["loadSession"]
       46 DUPCLOSURE                       R3 K20 [PROTO_6]
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R3 R2 K21 ["listSessions"]
       50 DUPCLOSURE                       R3 K22 [PROTO_7]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R3 R2 K23 ["prompt"]
       54 DUPCLOSURE                       R3 K24 [PROTO_8]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R3 R2 K25 ["setSessionMode"]
       58 DUPCLOSURE                       R3 K26 [PROTO_9]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R3 R2 K27 ["cancel"]
       62 DUPCLOSURE                       R3 K28 [PROTO_11]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R3 R2 K29 ["setSessionUpdateHandler"]
       66 DUPCLOSURE                       R3 K30 [PROTO_13]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R3 R2 K31 ["setRequestPermissionHandler"]
       70 DUPCLOSURE                       R3 K32 [PROTO_14]
       71 SETTABLEKS                       R3 R2 K33 ["sendResult"]
       73 RETURN                           R2 1
