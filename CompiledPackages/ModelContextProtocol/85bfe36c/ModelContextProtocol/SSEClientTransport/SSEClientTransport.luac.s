PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 DIVK                             R0 R1 K0 [1000]
        3 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K3 ["disconnect"]
       13 CALL                             R0 0 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 3
       20 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+27]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["disconnecting SSE because no pending requests:"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R1 R1 K3 ["log"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETIMPORT                        R1 K6 [task.cancel]
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 2
       20 GETUPVAL                         R1 3
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K7 ["disconnect"]
       25 CALL                             R1 0 0
       26 LOADNIL                          R1
       27 SETUPVAL                         R1 3
       28 LOADNIL                          R1
       29 SETUPVAL                         R1 4
       30 LOADNIL                          R1
       31 SETUPVAL                         R1 5
       32 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETIMPORT                        R1 K1 [next]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+27]
        9 GETUPVAL                         R1 3
       10 LOADK                            R3 K2 ["disconnecting SSE because no pending requests:"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["log"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 0
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETIMPORT                        R1 K6 [task.cancel]
       19 GETUPVAL                         R2 0
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETUPVAL                         R1 0
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K7 ["disconnect"]
       28 CALL                             R1 0 0
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 4
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 5
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 6
       35 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETIMPORT                        R1 K4 [task.cancel]
       11 GETUPVAL                         R2 1
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 1
       15 GETIMPORT                        R1 K6 [task.delay]
       17 GETUPVAL                         R3 2
       18 CALL                             R3 0 1
       19 DIVK                             R2 R3 K7 [1000]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CALL                             R1 2 1
       29 SETUPVAL                         R1 1
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["getProvider"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+18]
        7 GETTABLEKS                       R1 R0 K1 ["getTokens"]
        9 JUMPIFNOT                        R1 ; [+15]
       10 GETTABLEKS                       R1 R0 K1 ["getTokens"]
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+11]
       14 GETTABLEKS                       R2 R1 K2 ["access_token"]
       16 JUMPIFNOT                        R2 ; [+8]
       17 LOADK                            R3 K3 ["Bearer %*"]
       18 GETTABLEKS                       R5 R1 K2 ["access_token"]
       20 NAMECALL                         R3 R3 K4 ["format"]
       22 CALL                             R3 2 1
       23 MOVE                             R2 R3
       24 RETURN                           R2 1
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Headers"]
        5 GETTABLEKS                       R1 R1 K1 ["CONTENT_TYPE_HEADER"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["ResponseType"]
       10 GETTABLEKS                       R2 R2 K3 ["Json"]
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Headers"]
       16 GETTABLEKS                       R1 R1 K4 ["ACCEPT"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["ResponseType"]
       21 GETTABLEKS                       R2 R2 K3 ["Json"]
       23 SETTABLE                         R2 R0 R1
       24 GETUPVAL                         R2 1
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R2 1
       27 NAMECALL                         R2 R2 K5 ["getProvider"]
       29 CALL                             R2 1 1
       30 JUMPIFNOT                        R2 ; [+18]
       31 GETTABLEKS                       R3 R2 K6 ["getTokens"]
       33 JUMPIFNOT                        R3 ; [+15]
       34 GETTABLEKS                       R3 R2 K6 ["getTokens"]
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+11]
       38 GETTABLEKS                       R4 R3 K7 ["access_token"]
       40 JUMPIFNOT                        R4 ; [+8]
       41 LOADK                            R4 K8 ["Bearer %*"]
       42 GETTABLEKS                       R6 R3 K7 ["access_token"]
       44 NAMECALL                         R4 R4 K9 ["format"]
       46 CALL                             R4 2 1
       47 MOVE                             R1 R4
       48 JUMP                             ; [+1]
       49 LOADNIL                          R1
       50 JUMPIFNOT                        R1 ; [+6]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["Headers"]
       54 GETTABLEKS                       R2 R2 K10 ["AUTHORIZATION"]
       56 SETTABLE                         R1 R0 R2
       57 RETURN                           R0 1

PROTO_9:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Headers"]
        5 GETTABLEKS                       R1 R1 K1 ["ACCEPT"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["ResponseType"]
       10 GETTABLEKS                       R2 R2 K3 ["EventStream"]
       12 SETTABLE                         R2 R0 R1
       13 GETUPVAL                         R2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 1
       16 NAMECALL                         R2 R2 K4 ["getProvider"]
       18 CALL                             R2 1 1
       19 JUMPIFNOT                        R2 ; [+18]
       20 GETTABLEKS                       R3 R2 K5 ["getTokens"]
       22 JUMPIFNOT                        R3 ; [+15]
       23 GETTABLEKS                       R3 R2 K5 ["getTokens"]
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+11]
       27 GETTABLEKS                       R4 R3 K6 ["access_token"]
       29 JUMPIFNOT                        R4 ; [+8]
       30 LOADK                            R4 K7 ["Bearer %*"]
       31 GETTABLEKS                       R6 R3 K6 ["access_token"]
       33 NAMECALL                         R4 R4 K8 ["format"]
       35 CALL                             R4 2 1
       36 MOVE                             R1 R4
       37 JUMP                             ; [+1]
       38 LOADNIL                          R1
       39 JUMPIFNOT                        R1 ; [+6]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K0 ["Headers"]
       43 GETTABLEKS                       R2 R2 K9 ["AUTHORIZATION"]
       45 SETTABLE                         R1 R0 R2
       46 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["data"]
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["processSSEMessage: event type="]
        2 GETTABLEKS                       R5 R0 K2 ["event"]
        4 ORK                              R4 R5 K1 ["message"]
        5 LOADK                            R5 K3 [", data length="]
        6 GETTABLEKS                       R7 R0 K4 ["data"]
        8 LENGTH                           R6 R7
        9 NAMECALL                         R1 R1 K5 ["log"]
       11 CALL                             R1 5 0
       12 GETIMPORT                        R1 K7 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 2
       18 JUMPIF                           R1 ; [+10]
       19 GETUPVAL                         R3 0
       20 LOADK                            R5 K8 ["processSSEMessage: failed to decode JSON:"]
       21 MOVE                             R6 R2
       22 LOADK                            R7 K9 ["data was:"]
       23 GETTABLEKS                       R8 R0 K4 ["data"]
       25 NAMECALL                         R3 R3 K5 ["log"]
       27 CALL                             R3 5 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K10 ["fieldExists"]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K11 ["id"]
       34 CALL                             R3 2 1
       35 JUMPIFNOT                        R3 ; [+32]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R5 R2 K11 ["id"]
       39 GETTABLE                         R3 R4 R5
       40 JUMPIFNOT                        R3 ; [+20]
       41 GETUPVAL                         R4 0
       42 LOADK                            R6 K12 ["processSSEMessage: resolving pending request id="]
       43 GETTABLEKS                       R7 R2 K11 ["id"]
       45 NAMECALL                         R4 R4 K5 ["log"]
       47 CALL                             R4 3 0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R5 R2 K11 ["id"]
       51 LOADNIL                          R6
       52 SETTABLE                         R6 R4 R5
       53 GETTABLEKS                       R4 R3 K13 ["resolve"]
       55 LOADNIL                          R5
       56 CALL                             R4 1 0
       57 GETUPVAL                         R4 4
       58 LOADK                            R5 K14 ["request resolved, scheduled idle disconnect"]
       59 CALL                             R4 1 0
       60 JUMP                             ; [+7]
       61 GETUPVAL                         R4 0
       62 LOADK                            R6 K15 ["processSSEMessage: no pending request for id="]
       63 GETTABLEKS                       R7 R2 K11 ["id"]
       65 NAMECALL                         R4 R4 K5 ["log"]
       67 CALL                             R4 3 0
       68 GETUPVAL                         R3 5
       69 GETTABLEKS                       R3 R3 K16 ["onTransportMessage"]
       71 MOVE                             R5 R2
       72 NAMECALL                         R3 R3 K17 ["Fire"]
       74 CALL                             R3 2 0
       75 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["sseConnection is nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K3 ["SSE connection opened with status: "]
        9 MOVE                             R5 R0
       10 LOADK                            R6 K4 [", headers: "]
       11 MOVE                             R7 R1
       12 NAMECALL                         R2 R2 K5 ["log"]
       14 CALL                             R2 5 0
       15 JUMPIFNOTEQKN                    R0 K6 [401] ; [+16]
       17 GETUPVAL                         R2 1
       18 LOADK                            R4 K7 ["SSE connection rejected: 401 Authorization Pending"]
       19 NAMECALL                         R2 R2 K5 ["log"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K8 ["disconnect"]
       25 CALL                             R2 0 0
       26 GETUPVAL                         R2 2
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K9 ["AuthorizationPending"]
       30 CALL                             R2 1 -1
       31 RETURN                           R2 -1
       32 LOADN                            R2 200
       33 JUMPIFLT                         R0 R2 ; [+4]
       35 LOADN                            R2 44
       36 JUMPIFNOTLE                      R2 R0 ; [+17]
       38 GETUPVAL                         R2 1
       39 LOADK                            R4 K10 ["SSE connection rejected: unexpected status code "]
       40 MOVE                             R5 R0
       41 NAMECALL                         R2 R2 K5 ["log"]
       43 CALL                             R2 3 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K8 ["disconnect"]
       47 CALL                             R2 0 0
       48 GETUPVAL                         R2 2
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R3 R3 K11 ["UnexpectedServerResponse"]
       52 CALL                             R2 1 -1
       53 RETURN                           R2 -1
       54 GETUPVAL                         R2 4
       55 GETTABLEKS                       R2 R2 K12 ["getContentType"]
       57 MOVE                             R3 R1
       58 CALL                             R2 1 1
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R3 R3 K13 ["ResponseType"]
       62 GETTABLEKS                       R3 R3 K14 ["EventStream"]
       64 JUMPIFEQ                         R2 R3 ; [+23]
       66 GETUPVAL                         R3 1
       67 LOADK                            R5 K15 ["SSE connection rejected: unexpected content type "]
       68 MOVE                             R6 R2
       69 LOADK                            R7 K16 [", expected "]
       70 GETUPVAL                         R8 4
       71 GETTABLEKS                       R8 R8 K13 ["ResponseType"]
       73 GETTABLEKS                       R8 R8 K14 ["EventStream"]
       75 NAMECALL                         R3 R3 K5 ["log"]
       77 CALL                             R3 5 0
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K8 ["disconnect"]
       81 CALL                             R3 0 0
       82 GETUPVAL                         R3 2
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R4 R4 K11 ["UnexpectedServerResponse"]
       86 CALL                             R3 1 -1
       87 RETURN                           R3 -1
       88 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SSE message received: "]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["log"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["parseNextChunk"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["SSE connection error: status="]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K1 [", message="]
        4 MOVE                             R7 R1
        5 NAMECALL                         R2 R2 K2 ["log"]
        7 CALL                             R2 5 0
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["UnexpectedServerResponse"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R7 0
       18 LOADK                            R9 K4 ["SSE connection error: rejecting pending request id="]
       19 MOVE                             R10 R5
       20 NAMECALL                         R7 R7 K2 ["log"]
       22 CALL                             R7 3 0
       23 GETTABLEKS                       R7 R6 K5 ["reject"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K3 ["UnexpectedServerResponse"]
       28 CALL                             R7 1 0
       29 FORGLOOP                         R2 2 ; [-13]
       31 GETIMPORT                        R2 K8 [table.clear]
       33 GETUPVAL                         R3 3
       34 CALL                             R2 1 0
       35 LOADNIL                          R2
       36 SETUPVAL                         R2 4
       37 LOADNIL                          R2
       38 SETUPVAL                         R2 5
       39 LOADNIL                          R2
       40 SETUPVAL                         R2 6
       41 GETUPVAL                         R2 7
       42 GETTABLEKS                       R2 R2 K9 ["onTransportError"]
       44 LOADK                            R5 K10 ["SSE connection error: %*"]
       45 MOVE                             R7 R1
       46 NAMECALL                         R5 R5 K11 ["format"]
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 NAMECALL                         R2 R2 K12 ["Fire"]
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 LOADK                            R7 K0 ["SSE connection closed unexpectedly: rejecting pending request id="]
        6 MOVE                             R8 R3
        7 NAMECALL                         R5 R5 K1 ["log"]
        9 CALL                             R5 3 0
       10 GETTABLEKS                       R5 R4 K2 ["reject"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["UnexpectedServerResponse"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-13]
       18 GETIMPORT                        R0 K6 [table.clear]
       20 GETUPVAL                         R1 0
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 LOADK                            R2 K7 ["SSE connection closed"]
       24 NAMECALL                         R0 R0 K1 ["log"]
       26 CALL                             R0 2 0
       27 GETUPVAL                         R0 3
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K3 ["UnexpectedServerResponse"]
       31 CALL                             R0 1 0
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 4
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 5
       36 LOADNIL                          R0
       37 SETUPVAL                         R0 6
       38 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["event"]
        2 JUMPIFNOTEQKS                    R1 K1 ["endpoint"] ; [+22]
        4 GETTABLEKS                       R1 R0 K2 ["data"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["resolveUrl"]
        9 MOVE                             R3 R1
       10 GETUPVAL                         R4 2
       11 CALL                             R2 2 1
       12 SETUPVAL                         R2 0
       13 GETUPVAL                         R2 3
       14 LOADK                            R4 K4 ["Received endpoint: raw="]
       15 MOVE                             R5 R1
       16 LOADK                            R6 K5 [", resolved="]
       17 GETUPVAL                         R7 0
       18 NAMECALL                         R2 R2 K6 ["log"]
       20 CALL                             R2 5 0
       21 GETUPVAL                         R2 4
       22 LOADNIL                          R3
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K2 ["data"]
       27 JUMPIFNOT                        R1 ; [+7]
       28 GETTABLEKS                       R1 R0 K2 ["data"]
       30 JUMPIFEQKS                       R1 K7 [""] ; [+4]
       32 GETUPVAL                         R1 5
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R2
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 NEWCLOSURE                       R6 P3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 NEWCLOSURE                       R7 P4
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U9
       34 GETUPVAL                         R8 10
       35 GETTABLEKS                       R8 R8 K0 ["createParser"]
       37 DUPTABLE                         R9 K2 [{"onEvent"}]
       38 SETTABLEKS                       R7 R9 K1 ["onEvent"]
       40 CALL                             R8 1 1
       41 MOVE                             R2 R8
       42 DUPTABLE                         R8 K6 [{"Url", "Method", "Headers"}]
       43 GETUPVAL                         R9 8
       44 SETTABLEKS                       R9 R8 K3 ["Url"]
       46 LOADK                            R9 K7 ["GET"]
       47 SETTABLEKS                       R9 R8 K4 ["Method"]
       49 NEWTABLE                         R10 1 0
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K5 ["Headers"]
       54 GETTABLEKS                       R11 R11 K8 ["ACCEPT"]
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R12 R12 K9 ["ResponseType"]
       59 GETTABLEKS                       R12 R12 K10 ["EventStream"]
       61 SETTABLE                         R12 R10 R11
       62 GETUPVAL                         R12 11
       63 JUMPIFNOT                        R12 ; [+4]
       64 GETUPVAL                         R12 11
       65 NAMECALL                         R12 R12 K11 ["getProvider"]
       67 CALL                             R12 1 1
       68 JUMPIFNOT                        R12 ; [+18]
       69 GETTABLEKS                       R13 R12 K12 ["getTokens"]
       71 JUMPIFNOT                        R13 ; [+15]
       72 GETTABLEKS                       R13 R12 K12 ["getTokens"]
       74 CALL                             R13 0 1
       75 JUMPIFNOT                        R13 ; [+11]
       76 GETTABLEKS                       R14 R13 K13 ["access_token"]
       78 JUMPIFNOT                        R14 ; [+8]
       79 LOADK                            R14 K14 ["Bearer %*"]
       80 GETTABLEKS                       R16 R13 K13 ["access_token"]
       82 NAMECALL                         R14 R14 K15 ["format"]
       84 CALL                             R14 2 1
       85 MOVE                             R11 R14
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 JUMPIFNOT                        R11 ; [+6]
       89 GETUPVAL                         R12 3
       90 GETTABLEKS                       R12 R12 K5 ["Headers"]
       92 GETTABLEKS                       R12 R12 K16 ["AUTHORIZATION"]
       94 SETTABLE                         R11 R10 R12
       95 MOVE                             R9 R10
       96 SETTABLEKS                       R9 R8 K5 ["Headers"]
       98 GETUPVAL                         R9 12
       99 GETTABLEKS                       R9 R9 K17 ["createClient"]
      101 MOVE                             R10 R8
      102 DUPTABLE                         R11 K22 [{"onOpen", "onMessage", "onError", "onClose"}]
      103 SETTABLEKS                       R3 R11 K18 ["onOpen"]
      105 SETTABLEKS                       R4 R11 K19 ["onMessage"]
      107 SETTABLEKS                       R5 R11 K20 ["onError"]
      109 SETTABLEKS                       R6 R11 K21 ["onClose"]
      111 CALL                             R9 2 1
      112 SETUPVAL                         R9 0
      113 CLOSEUPVALS                      R2
      114 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K3 ["reusing existing connection promise"]
       12 NAMECALL                         R0 R0 K4 ["log"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 LOADK                            R2 K5 ["creating new SSE connection to "]
       19 GETUPVAL                         R3 3
       20 NAMECALL                         R0 R0 K4 ["log"]
       22 CALL                             R0 3 0
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K6 ["new"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 CALL                             R0 1 1
       41 SETUPVAL                         R0 1
       42 GETUPVAL                         R1 1
       43 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       45 LOADK                            R2 K7 ["promiseConnectionReady is nil"]
       46 GETIMPORT                        R0 K9 [assert]
       48 CALL                             R0 2 0
       49 GETUPVAL                         R0 1
       50 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["POST response status: "]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K1 [", headers: "]
        4 MOVE                             R7 R1
        5 NAMECALL                         R2 R2 K2 ["log"]
        7 CALL                             R2 5 0
        8 SETUPVAL                         R0 1
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K0 ["POST response body chunk (length="]
        6 LENGTH                           R4 R0
        7 LOADK                            R5 K1 ["):"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R1 R1 K2 ["log"]
       11 CALL                             R1 5 0
       12 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["POST error: status="]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K1 [", message="]
        4 MOVE                             R7 R1
        5 NAMECALL                         R2 R2 K2 ["log"]
        7 CALL                             R2 5 0
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["UnexpectedServerResponse"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["POST connection closed. Status="]
        2 GETUPVAL                         R3 1
        3 LOADK                            R4 K1 [", body="]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R0 R0 K2 ["log"]
        7 CALL                             R0 5 0
        8 GETUPVAL                         R1 1
        9 FASTCALL2K                       ASSERT R1 K3 ; [+4]
       11 LOADK                            R2 K3 ["responseStatusCode is nil"]
       12 GETIMPORT                        R0 K5 [assert]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 1
       16 JUMPIFNOTEQKN                    R0 K6 [401] ; [+12]
       18 GETUPVAL                         R0 0
       19 LOADK                            R2 K7 ["POST rejected: 401 Authorization Pending"]
       20 NAMECALL                         R0 R0 K2 ["log"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 3
       24 GETUPVAL                         R1 4
       25 GETTABLEKS                       R1 R1 K8 ["AuthorizationPending"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 1
       30 LOADN                            R1 200
       31 JUMPIFLT                         R0 R1 ; [+5]
       33 GETUPVAL                         R0 1
       34 LOADN                            R1 44
       35 JUMPIFNOTLE                      R1 R0 ; [+13]
       37 GETUPVAL                         R0 0
       38 LOADK                            R2 K9 ["POST error response: status code "]
       39 GETUPVAL                         R3 1
       40 NAMECALL                         R0 R0 K2 ["log"]
       42 CALL                             R0 3 0
       43 GETUPVAL                         R0 3
       44 GETUPVAL                         R1 4
       45 GETTABLEKS                       R1 R1 K10 ["UnexpectedServerResponse"]
       47 CALL                             R0 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R0 0
       50 LOADK                            R2 K11 ["POST accepted: status "]
       51 GETUPVAL                         R3 1
       52 NAMECALL                         R0 R0 K2 ["log"]
       54 CALL                             R0 3 0
       55 GETUPVAL                         R0 5
       56 LOADNIL                          R1
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["POST endpoint URL not set - SSE connection not ready"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 NEWTABLE                         R3 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Headers"]
       12 GETTABLEKS                       R4 R4 K4 ["CONTENT_TYPE_HEADER"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["ResponseType"]
       17 GETTABLEKS                       R5 R5 K6 ["Json"]
       19 SETTABLE                         R5 R3 R4
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K3 ["Headers"]
       23 GETTABLEKS                       R4 R4 K7 ["ACCEPT"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K5 ["ResponseType"]
       28 GETTABLEKS                       R5 R5 K6 ["Json"]
       30 SETTABLE                         R5 R3 R4
       31 GETUPVAL                         R5 2
       32 JUMPIFNOT                        R5 ; [+4]
       33 GETUPVAL                         R5 2
       34 NAMECALL                         R5 R5 K8 ["getProvider"]
       36 CALL                             R5 1 1
       37 JUMPIFNOT                        R5 ; [+18]
       38 GETTABLEKS                       R6 R5 K9 ["getTokens"]
       40 JUMPIFNOT                        R6 ; [+15]
       41 GETTABLEKS                       R6 R5 K9 ["getTokens"]
       43 CALL                             R6 0 1
       44 JUMPIFNOT                        R6 ; [+11]
       45 GETTABLEKS                       R7 R6 K10 ["access_token"]
       47 JUMPIFNOT                        R7 ; [+8]
       48 LOADK                            R7 K11 ["Bearer %*"]
       49 GETTABLEKS                       R9 R6 K10 ["access_token"]
       51 NAMECALL                         R7 R7 K12 ["format"]
       53 CALL                             R7 2 1
       54 MOVE                             R4 R7
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 JUMPIFNOT                        R4 ; [+6]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K3 ["Headers"]
       61 GETTABLEKS                       R5 R5 K13 ["AUTHORIZATION"]
       63 SETTABLE                         R4 R3 R5
       64 MOVE                             R2 R3
       65 LOADNIL                          R3
       66 LOADK                            R4 K14 [""]
       67 NEWCLOSURE                       R5 P0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          REF R3
       70 NEWCLOSURE                       R6 P1
       71 CAPTURE                          REF R4
       72 CAPTURE                          UPVAL U3
       73 NEWCLOSURE                       R7 P2
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U4
       77 NEWCLOSURE                       R8 P3
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          REF R3
       80 CAPTURE                          REF R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R0
       84 DUPTABLE                         R9 K18 [{"Url", "Method", "Headers", "Body"}]
       85 GETUPVAL                         R10 0
       86 SETTABLEKS                       R10 R9 K15 ["Url"]
       88 LOADK                            R10 K19 ["POST"]
       89 SETTABLEKS                       R10 R9 K16 ["Method"]
       91 SETTABLEKS                       R2 R9 K3 ["Headers"]
       93 GETUPVAL                         R10 5
       94 SETTABLEKS                       R10 R9 K17 ["Body"]
       96 GETUPVAL                         R10 6
       97 GETTABLEKS                       R10 R10 K20 ["createClient"]
       99 MOVE                             R11 R9
      100 DUPTABLE                         R12 K25 [{"onOpen", "onMessage", "onError", "onClose"}]
      101 SETTABLEKS                       R5 R12 K21 ["onOpen"]
      103 SETTABLEKS                       R6 R12 K22 ["onMessage"]
      105 SETTABLEKS                       R7 R12 K23 ["onError"]
      107 SETTABLEKS                       R8 R12 K24 ["onClose"]
      109 CALL                             R10 2 0
      110 CLOSEUPVALS                      R3
      111 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["submitRequest: POST failed for request id="]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 LOADK                            R5 K2 ["error:"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R1 R1 K3 ["log"]
        9 CALL                             R1 5 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["id"]
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R1 3
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["id"]
        4 DUPTABLE                         R4 K3 [{"resolve", "reject"}]
        5 SETTABLEKS                       R0 R4 K1 ["resolve"]
        7 SETTABLEKS                       R1 R4 K2 ["reject"]
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["encode"]
       13 GETUPVAL                         R4 1
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K5 ["new"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U9
       26 CALL                             R4 1 1
       27 MOVE                             R2 R4
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R2 R2 K6 ["catch"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["submitRequest: SSE connection failed for request id="]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 LOADK                            R5 K2 ["error:"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R1 R1 K3 ["log"]
        9 CALL                             R1 5 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K4 ["reject"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["submitRequest: method="]
        2 GETTABLEKS                       R4 R0 K1 ["method"]
        4 LOADK                            R5 K2 [", id="]
        5 GETTABLEKS                       R6 R0 K3 ["id"]
        7 NAMECALL                         R1 R1 K4 ["log"]
        9 CALL                             R1 5 0
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 NAMECALL                         R1 R1 K5 ["andThen"]
       25 CALL                             R1 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 NAMECALL                         R1 R1 K6 ["catch"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAuthorization"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AuthorizationPending"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+6]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["reject"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K3 [pcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 2
       18 JUMPIFNOT                        R1 ; [+24]
       19 GETUPVAL                         R3 3
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETIMPORT                        R3 K6 [task.cancel]
       23 GETUPVAL                         R4 3
       24 CALL                             R3 1 0
       25 LOADNIL                          R3
       26 SETUPVAL                         R3 3
       27 GETUPVAL                         R3 4
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K7 ["disconnect"]
       32 CALL                             R3 0 0
       33 LOADNIL                          R3
       34 SETUPVAL                         R3 4
       35 LOADNIL                          R3
       36 SETUPVAL                         R3 5
       37 LOADNIL                          R3
       38 SETUPVAL                         R3 6
       39 GETUPVAL                         R3 7
       40 GETUPVAL                         R4 8
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K1 ["reject"]
       46 MOVE                             R4 R0
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R1 R1 K0 ["catch"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["encode"]
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_34:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+27]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["disconnecting SSE because no pending requests:"]
        8 LOADK                            R3 K3 ["notification sent successfully"]
        9 NAMECALL                         R0 R0 K4 ["log"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [task.cancel]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 2
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K8 ["disconnect"]
       25 CALL                             R0 0 0
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K0 ["andThen"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 NAMECALL                         R1 R1 K0 ["andThen"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["encode"]
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+27]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["disconnecting SSE because no pending requests:"]
        8 LOADK                            R3 K3 ["response sent successfully"]
        9 NAMECALL                         R0 R0 K4 ["log"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [task.cancel]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 2
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K8 ["disconnect"]
       25 CALL                             R0 0 0
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K0 ["andThen"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 NAMECALL                         R1 R1 K0 ["andThen"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 GETTABLEKS                       R5 R4 K3 ["reject"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Disconnected"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 ; [-7]
       20 GETIMPORT                        R0 K7 [table.clear]
       22 GETUPVAL                         R1 1
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K8 ["disconnectAll"]
       27 CALL                             R0 0 0
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 6
       34 GETUPVAL                         R0 7
       35 GETTABLEKS                       R0 R0 K9 ["onTransportClose"]
       37 NAMECALL                         R0 R0 K10 ["Fire"]
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 8
       41 GETTABLEKS                       R0 R0 K11 ["resolve"]
       43 CALL                             R0 0 -1
       44 RETURN                           R0 -1

PROTO_44:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["new"]
        4 CALL                             R3 0 1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 NEWTABLE                         R6 0 0
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          REF R4
       13 CAPTURE                          REF R7
       14 CAPTURE                          REF R5
       15 NEWCLOSURE                       R10 P1
       16 CAPTURE                          REF R8
       17 NEWCLOSURE                       R11 P2
       18 CAPTURE                          REF R8
       19 CAPTURE                          REF R4
       20 CAPTURE                          REF R7
       21 CAPTURE                          REF R5
       22 NEWCLOSURE                       R12 P3
       23 CAPTURE                          VAL R6
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          REF R8
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R7
       28 CAPTURE                          REF R5
       29 NEWCLOSURE                       R13 P4
       30 CAPTURE                          VAL R6
       31 CAPTURE                          REF R8
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R7
       36 CAPTURE                          REF R5
       37 NEWCLOSURE                       R14 P5
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R15 P6
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R1
       42 NEWCLOSURE                       R16 P7
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R1
       45 GETUPVAL                         R17 3
       46 GETTABLEKS                       R17 R17 K1 ["wrapSSECallback"]
       48 NEWCLOSURE                       R18 P8
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R13
       54 CAPTURE                          REF R2
       55 CALL                             R17 1 1
       56 NEWCLOSURE                       R18 P9
       57 CAPTURE                          REF R8
       58 CAPTURE                          REF R7
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          REF R4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          REF R5
       67 CAPTURE                          REF R2
       68 CAPTURE                          VAL R17
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 NEWCLOSURE                       R19 P10
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          REF R5
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R3
       80 NEWCLOSURE                       R20 P11
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R18
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          REF R5
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          VAL R3
       91 NEWCLOSURE                       R21 P12
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R20
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          REF R8
       97 CAPTURE                          REF R4
       98 CAPTURE                          REF R7
       99 CAPTURE                          REF R5
      100 NEWCLOSURE                       R22 P13
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R19
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          VAL R6
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          REF R8
      107 CAPTURE                          REF R4
      108 CAPTURE                          REF R7
      109 CAPTURE                          REF R5
      110 NEWCLOSURE                       R23 P14
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R19
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          REF R8
      117 CAPTURE                          REF R4
      118 CAPTURE                          REF R7
      119 CAPTURE                          REF R5
      120 GETUPVAL                         R24 9
      121 GETTABLEKS                       R24 R24 K2 ["makeTransport"]
      123 LOADNIL                          R25
      124 DUPTABLE                         R26 K8 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
      125 NEWCLOSURE                       R27 P15
      126 CAPTURE                          VAL R18
      127 SETTABLEKS                       R27 R26 K3 ["start"]
      129 NEWCLOSURE                       R27 P16
      130 CAPTURE                          VAL R23
      131 SETTABLEKS                       R27 R26 K4 ["sendResponse"]
      133 NEWCLOSURE                       R27 P17
      134 CAPTURE                          VAL R22
      135 SETTABLEKS                       R27 R26 K5 ["sendNotification"]
      137 NEWCLOSURE                       R27 P18
      138 CAPTURE                          VAL R21
      139 SETTABLEKS                       R27 R26 K6 ["sendRequest"]
      141 NEWCLOSURE                       R27 P19
      142 CAPTURE                          REF R8
      143 CAPTURE                          VAL R6
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          VAL R3
      146 CAPTURE                          REF R4
      147 CAPTURE                          REF R7
      148 CAPTURE                          REF R5
      149 CAPTURE                          REF R2
      150 CAPTURE                          UPVAL U6
      151 SETTABLEKS                       R27 R26 K7 ["close"]
      153 CALL                             R24 2 1
      154 MOVE                             R2 R24
      155 DUPTABLE                         R24 K10 [{"transport"}]
      156 SETTABLEKS                       R2 R24 K9 ["transport"]
      158 CLOSEUPVALS                      R2
      159 RETURN                           R24 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Auth"]
       11 GETTABLEKS                       R2 R2 K7 ["Authorizer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["ClientConnectionStatus"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["EventStreamParser"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K11 ["Http"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K10 ["Util"]
       35 GETTABLEKS                       R6 R6 K12 ["Json"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K10 ["Util"]
       42 GETTABLEKS                       R7 R7 K13 ["Logging"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Parent"]
       49 GETTABLEKS                       R8 R8 K15 ["Promise"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["StreamableHttpClient"]
       56 GETTABLEKS                       R9 R9 K17 ["StreamingClientFactory"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K16 ["StreamableHttpClient"]
       63 GETTABLEKS                       R10 R10 K18 ["StreamingClientManager"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K19 ["Transport"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R0 K20 ["Types"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R0 K21 ["Flags"]
       80 GETTABLEKS                       R13 R13 K22 ["FIntAssistantIdleSSEDisconnectMS"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R6 K23 ["Logger"]
       85 GETTABLEKS                       R13 R13 K24 ["new"]
       87 GETIMPORT                        R14 K1 [script]
       89 GETTABLEKS                       R14 R14 K25 ["Name"]
       91 CALL                             R13 1 1
       92 NEWTABLE                         R14 1 0
       94 DUPCLOSURE                       R15 K26 [PROTO_0]
       95 CAPTURE                          VAL R12
       96 DUPCLOSURE                       R16 K27 [PROTO_44]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R16 R14 K24 ["new"]
      109 RETURN                           R14 1
