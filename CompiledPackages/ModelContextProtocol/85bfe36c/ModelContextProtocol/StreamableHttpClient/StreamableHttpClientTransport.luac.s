PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["onTransportMessage"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Headers"]
        5 GETTABLEKS                       R1 R1 K1 ["ACCEPT"]
        7 LOADK                            R3 K2 ["%*, %*"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["ResponseType"]
       11 GETTABLEKS                       R5 R5 K4 ["Json"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["ResponseType"]
       16 GETTABLEKS                       R6 R6 K5 ["EventStream"]
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 3 1
       21 MOVE                             R2 R3
       22 SETTABLE                         R2 R0 R1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["Headers"]
       26 GETTABLEKS                       R1 R1 K7 ["CONTENT_TYPE_HEADER"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["ResponseType"]
       31 GETTABLEKS                       R2 R2 K4 ["Json"]
       33 SETTABLE                         R2 R0 R1
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K8 ["sessionId"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K0 ["Headers"]
       41 GETTABLEKS                       R1 R1 K9 ["MCP_SESSION_ID_HEADER"]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K8 ["sessionId"]
       46 SETTABLE                         R2 R0 R1
       47 GETUPVAL                         R1 2
       48 JUMPIFNOT                        R1 ; [+4]
       49 GETUPVAL                         R1 2
       50 NAMECALL                         R1 R1 K10 ["getProvider"]
       52 CALL                             R1 1 1
       53 JUMPIFNOT                        R1 ; [+23]
       54 GETTABLEKS                       R2 R1 K11 ["getTokens"]
       56 JUMPIFNOT                        R2 ; [+20]
       57 GETTABLEKS                       R2 R1 K11 ["getTokens"]
       59 CALL                             R2 0 1
       60 JUMPIFNOT                        R2 ; [+16]
       61 GETTABLEKS                       R3 R2 K12 ["access_token"]
       63 JUMPIFNOT                        R3 ; [+13]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K0 ["Headers"]
       67 GETTABLEKS                       R3 R3 K13 ["AUTHORIZATION"]
       69 LOADK                            R5 K14 ["Bearer %*"]
       70 GETTABLEKS                       R7 R2 K12 ["access_token"]
       72 NAMECALL                         R5 R5 K6 ["format"]
       74 CALL                             R5 2 1
       75 MOVE                             R4 R5
       76 SETTABLE                         R4 R0 R3
       77 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"Url", "Method", "Headers", "Body"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Url"]
        4 LOADK                            R2 K5 ["POST"]
        5 SETTABLEKS                       R2 R1 K1 ["Method"]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K2 ["Headers"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K6 ["encode"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K3 ["Body"]
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["decode"]
        4 GETTABLEKS                       R3 R0 K1 ["data"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K2 ["onTransportMessage"]
        9 MOVE                             R5 R2
       10 NAMECALL                         R3 R3 K3 ["Fire"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 ["Opened connection for request with status code: %*, headers:"]
        2 MOVE                             R7 R0
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 2 1
        6 MOVE                             R4 R5
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K2 ["log"]
       10 CALL                             R2 3 0
       11 JUMPIFNOTEQKN                    R0 K3 [401] ; [+11]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["disconnect"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["AuthorizationPending"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1
       23 LOADN                            R2 200
       24 JUMPIFLT                         R0 R2 ; [+4]
       26 LOADN                            R2 44
       27 JUMPIFNOTLE                      R2 R0 ; [+2]
       29 SETUPVAL                         R0 4
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R2 R2 K6 ["getContentType"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 1
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K7 ["ResponseType"]
       38 GETTABLEKS                       R3 R3 K8 ["Json"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+14]
       42 DUPTABLE                         R3 K11 [{"responseType", "accumulatedResponse"}]
       43 GETUPVAL                         R4 5
       44 GETTABLEKS                       R4 R4 K7 ["ResponseType"]
       46 GETTABLEKS                       R4 R4 K8 ["Json"]
       48 SETTABLEKS                       R4 R3 K9 ["responseType"]
       50 LOADK                            R4 K12 [""]
       51 SETTABLEKS                       R4 R3 K10 ["accumulatedResponse"]
       53 SETUPVAL                         R3 6
       54 JUMP                             ; [+44]
       55 GETUPVAL                         R3 5
       56 GETTABLEKS                       R3 R3 K7 ["ResponseType"]
       58 GETTABLEKS                       R3 R3 K13 ["EventStream"]
       60 JUMPIFNOTEQ                      R2 R3 ; [+28]
       62 NEWCLOSURE                       R3 P0
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 DUPTABLE                         R4 K15 [{"responseType", "eventStreamParser"}]
       66 GETUPVAL                         R5 5
       67 GETTABLEKS                       R5 R5 K7 ["ResponseType"]
       69 GETTABLEKS                       R5 R5 K13 ["EventStream"]
       71 SETTABLEKS                       R5 R4 K9 ["responseType"]
       73 GETUPVAL                         R5 9
       74 GETTABLEKS                       R5 R5 K16 ["createParser"]
       76 DUPTABLE                         R6 K18 [{"onEvent"}]
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K19 ["wrapSSECallback"]
       80 MOVE                             R8 R3
       81 CALL                             R7 1 1
       82 SETTABLEKS                       R7 R6 K17 ["onEvent"]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R5 R4 K14 ["eventStreamParser"]
       87 SETUPVAL                         R4 6
       88 JUMP                             ; [+10]
       89 GETUPVAL                         R3 1
       90 GETTABLEKS                       R3 R3 K4 ["disconnect"]
       92 CALL                             R3 0 0
       93 GETUPVAL                         R3 2
       94 GETUPVAL                         R4 3
       95 GETTABLEKS                       R4 R4 K20 ["UnexpectedServerResponse"]
       97 CALL                             R3 1 -1
       98 RETURN                           R3 -1
       99 GETUPVAL                         R3 10
      100 GETTABLEKS                       R3 R3 K21 ["method"]
      102 JUMPIFNOTEQKS                    R3 K22 ["initialize"] ; [+17]
      104 GETUPVAL                         R4 5
      105 GETTABLEKS                       R4 R4 K23 ["Headers"]
      107 GETTABLEKS                       R4 R4 K24 ["MCP_SESSION_ID_HEADER"]
      109 GETTABLE                         R3 R1 R4
      110 JUMPIFNOT                        R3 ; [+9]
      111 GETUPVAL                         R3 7
      112 GETUPVAL                         R5 5
      113 GETTABLEKS                       R5 R5 K23 ["Headers"]
      115 GETTABLEKS                       R5 R5 K24 ["MCP_SESSION_ID_HEADER"]
      117 GETTABLE                         R4 R1 R5
      118 SETTABLEKS                       R4 R3 K25 ["sessionId"]
      120 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isEnabled"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K1 ["Received new response message for request: Size:"]
        7 NAMECALL                         R4 R0 K2 ["len"]
        9 CALL                             R4 1 1
       10 LOADK                            R5 K3 ["RawContent:"]
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R0
       14 SETLIST                          R6 R7 1 [1]
       16 NAMECALL                         R1 R1 K4 ["log"]
       18 CALL                             R1 5 0
       19 GETUPVAL                         R2 1
       20 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       22 LOADK                            R3 K5 ["Expected request state to be set!"]
       23 GETIMPORT                        R1 K7 [assert]
       25 CALL                             R1 2 0
       26 LOADB                            R1 1
       27 SETUPVAL                         R1 2
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K8 ["responseType"]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K9 ["ResponseType"]
       34 GETTABLEKS                       R2 R2 K10 ["Json"]
       36 JUMPIFNOTEQ                      R1 R2 ; [+9]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R3 R1 K11 ["accumulatedResponse"]
       41 MOVE                             R4 R0
       42 CONCAT                           R2 R3 R4
       43 SETTABLEKS                       R2 R1 K11 ["accumulatedResponse"]
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K8 ["responseType"]
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R2 R2 K9 ["ResponseType"]
       52 GETTABLEKS                       R2 R2 K12 ["EventStream"]
       54 JUMPIFNOTEQ                      R1 R2 ; [+9]
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R2 R1 K13 ["eventStreamParser"]
       59 GETTABLEKS                       R2 R2 K14 ["parseNextChunk"]
       61 MOVE                             R3 R0
       62 CALL                             R2 1 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R1 4
       65 GETTABLEKS                       R1 R1 K15 ["assertNever"]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K8 ["responseType"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["UnexpectedServerResponse"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Server closed the request connection"]
        2 NAMECALL                         R0 R0 K1 ["log"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+25]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["responseType"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["ResponseType"]
       14 GETTABLEKS                       R1 R1 K4 ["Json"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+15]
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 3
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K5 ["decode"]
       23 GETTABLEKS                       R3 R0 K6 ["accumulatedResponse"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R3 R1 K7 ["onTransportMessage"]
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K8 ["Fire"]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R0 5
       33 JUMPIFNOT                        R0 ; [+2]
       34 GETUPVAL                         R0 6
       35 JUMPIFNOT                        R0 ; [+6]
       36 GETUPVAL                         R0 7
       37 GETUPVAL                         R1 8
       38 GETTABLEKS                       R1 R1 K9 ["UnexpectedServerResponse"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R0 9
       43 CALL                             R0 0 0
       44 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R5
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          REF R3
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 NEWCLOSURE                       R7 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          REF R3
       19 CAPTURE                          REF R2
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U7
       22 NEWCLOSURE                       R8 P2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U1
       25 NEWCLOSURE                       R9 P3
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          REF R3
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          REF R2
       32 CAPTURE                          REF R5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R10 4 0
       38 SETTABLEKS                       R6 R10 K0 ["onOpen"]
       40 SETTABLEKS                       R7 R10 K1 ["onMessage"]
       42 SETTABLEKS                       R8 R10 K2 ["onError"]
       44 SETTABLEKS                       R9 R10 K3 ["onClose"]
       46 GETUPVAL                         R12 6
       47 DUPTABLE                         R11 K8 [{"Url", "Method", "Headers", "Body"}]
       48 GETUPVAL                         R13 8
       49 SETTABLEKS                       R13 R11 K4 ["Url"]
       51 LOADK                            R13 K9 ["POST"]
       52 SETTABLEKS                       R13 R11 K5 ["Method"]
       54 GETUPVAL                         R13 9
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R11 K6 ["Headers"]
       58 GETUPVAL                         R13 4
       59 GETTABLEKS                       R13 R13 K10 ["encode"]
       61 MOVE                             R14 R12
       62 CALL                             R13 1 1
       63 SETTABLEKS                       R13 R11 K7 ["Body"]
       65 GETUPVAL                         R12 10
       66 GETTABLEKS                       R12 R12 K11 ["createClient"]
       68 MOVE                             R13 R11
       69 MOVE                             R14 R10
       70 CALL                             R12 2 1
       71 MOVE                             R4 R12
       72 CLOSEUPVALS                      R2
       73 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAuthorization"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["AuthorizationPending"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+11]
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K3 ["reject"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["new"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CALL                             R1 1 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R1 R1 K1 ["catch"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 ["Opened connection for notification with status code: %*, headers:"]
        2 MOVE                             R7 R0
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 2 1
        6 MOVE                             R4 R5
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K2 ["log"]
       10 CALL                             R2 3 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["getContentType"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["ResponseType"]
       19 GETTABLEKS                       R3 R3 K5 ["Json"]
       21 JUMPIFEQ                         R2 R3 ; [+11]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["disconnect"]
       26 CALL                             R3 0 0
       27 GETUPVAL                         R3 3
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K7 ["UnexpectedServerResponse"]
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1
       33 JUMPIFEQKN                       R0 K8 [202] ; [+2]
       35 SETUPVAL                         R0 5
       36 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["Received a notification response: %*"]
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R3 R4
        7 NAMECALL                         R1 R1 K2 ["log"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 JUMPIFEQKNIL                     R1 ; [+13]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["decode"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K4 ["onTransportMessage"]
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R3 K5 ["Fire"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["UnexpectedServerResponse"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Server closed the notification connection"]
        2 NAMECALL                         R0 R0 K1 ["log"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K2 ["UnexpectedServerResponse"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R2
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          REF R2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R6 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R7 P3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R8 4 0
       25 SETTABLEKS                       R4 R8 K0 ["onOpen"]
       27 SETTABLEKS                       R5 R8 K1 ["onMessage"]
       29 SETTABLEKS                       R6 R8 K2 ["onError"]
       31 SETTABLEKS                       R7 R8 K3 ["onClose"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K4 ["createClient"]
       36 GETUPVAL                         R11 6
       37 DUPTABLE                         R10 K9 [{"Url", "Method", "Headers", "Body"}]
       38 GETUPVAL                         R12 7
       39 SETTABLEKS                       R12 R10 K5 ["Url"]
       41 LOADK                            R12 K10 ["POST"]
       42 SETTABLEKS                       R12 R10 K6 ["Method"]
       44 GETUPVAL                         R12 8
       45 CALL                             R12 0 1
       46 SETTABLEKS                       R12 R10 K7 ["Headers"]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R12 R12 K11 ["encode"]
       51 MOVE                             R13 R11
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R10 K8 ["Body"]
       55 MOVE                             R11 R8
       56 CALL                             R9 2 1
       57 MOVE                             R3 R9
       58 CLOSEUPVALS                      R2
       59 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disconnectAll"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onTransportClose"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K3 ["resolve"]
       13 CALL                             R0 0 -1
       14 RETURN                           R0 -1

PROTO_24:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["new"]
        4 CALL                             R3 0 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U2
       13 NEWCLOSURE                       R6 P2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          REF R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 NEWCLOSURE                       R7 P3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          REF R2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R8 P4
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          REF R2
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R4
       49 GETUPVAL                         R9 8
       50 GETTABLEKS                       R9 R9 K1 ["makeTransport"]
       52 LOADNIL                          R10
       53 DUPTABLE                         R11 K7 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       54 DUPCLOSURE                       R12 K8 [PROTO_19]
       55 CAPTURE                          UPVAL U3
       56 SETTABLEKS                       R12 R11 K2 ["start"]
       58 NEWCLOSURE                       R12 P6
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R12 R11 K3 ["sendResponse"]
       62 NEWCLOSURE                       R12 P7
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R12 R11 K4 ["sendNotification"]
       66 NEWCLOSURE                       R12 P8
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R12 R11 K5 ["sendRequest"]
       70 NEWCLOSURE                       R12 P9
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R2
       73 CAPTURE                          UPVAL U3
       74 SETTABLEKS                       R12 R11 K6 ["close"]
       76 CALL                             R9 2 1
       77 MOVE                             R2 R9
       78 DUPTABLE                         R9 K10 [{"transport"}]
       79 SETTABLEKS                       R2 R9 K9 ["transport"]
       81 CLOSEUPVALS                      R2
       82 RETURN                           R9 1

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
       76 GETTABLEKS                       R12 R6 K21 ["Logger"]
       78 GETTABLEKS                       R12 R12 K22 ["new"]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K23 ["Name"]
       84 CALL                             R12 1 1
       85 NEWTABLE                         R13 1 0
       87 DUPCLOSURE                       R14 K24 [PROTO_0]
       88 DUPCLOSURE                       R15 K25 [PROTO_24]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 SETTABLEKS                       R15 R13 K22 ["new"]
      100 RETURN                           R13 1
