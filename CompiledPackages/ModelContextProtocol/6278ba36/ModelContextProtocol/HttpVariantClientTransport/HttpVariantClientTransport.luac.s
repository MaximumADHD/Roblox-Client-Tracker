PROTO_0:
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

PROTO_1:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Headers"]
        5 GETTABLEKS                       R1 R2 K1 ["ACCEPT"]
        7 LOADK                            R3 K2 ["%*, %*"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K3 ["ResponseType"]
       11 GETTABLEKS                       R5 R6 K4 ["Json"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K3 ["ResponseType"]
       16 GETTABLEKS                       R6 R7 K5 ["EventStream"]
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 3 1
       21 MOVE                             R2 R3
       22 SETTABLE                         R2 R0 R1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K0 ["Headers"]
       26 GETTABLEKS                       R1 R2 K7 ["CONTENT_TYPE_HEADER"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K3 ["ResponseType"]
       31 GETTABLEKS                       R2 R3 K4 ["Json"]
       33 SETTABLE                         R2 R0 R1
       34 GETUPVAL                         R2 1
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETUPVAL                         R2 1
       37 NAMECALL                         R2 R2 K8 ["getProvider"]
       39 CALL                             R2 1 1
       40 JUMPIFNOT                        R2 ; [+18]
       41 GETTABLEKS                       R3 R2 K9 ["getTokens"]
       43 JUMPIFNOT                        R3 ; [+15]
       44 GETTABLEKS                       R3 R2 K9 ["getTokens"]
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+11]
       48 GETTABLEKS                       R4 R3 K10 ["access_token"]
       50 JUMPIFNOT                        R4 ; [+8]
       51 LOADK                            R4 K11 ["Bearer %*"]
       52 GETTABLEKS                       R6 R3 K10 ["access_token"]
       54 NAMECALL                         R4 R4 K6 ["format"]
       56 CALL                             R4 2 1
       57 MOVE                             R1 R4
       58 JUMP                             ; [+1]
       59 LOADNIL                          R1
       60 JUMPIFNOT                        R1 ; [+6]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K0 ["Headers"]
       64 GETTABLEKS                       R2 R3 K12 ["AUTHORIZATION"]
       66 SETTABLE                         R1 R0 R2
       67 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Headers"]
        5 GETTABLEKS                       R1 R2 K1 ["ACCEPT"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["ResponseType"]
       10 GETTABLEKS                       R2 R3 K3 ["EventStream"]
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
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["Headers"]
       43 GETTABLEKS                       R2 R3 K9 ["AUTHORIZATION"]
       45 SETTABLE                         R1 R0 R2
       46 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onTransportMessage"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onTransportError"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onTransportClose"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["onTransportMessage"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K2 ["onTransportError"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R1 R0 K3 ["onTransportClose"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R1 R1 K1 ["Connect"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["SSE detection - GET response status: "]
        2 MOVE                             R5 R0
        3 NAMECALL                         R2 R2 K1 ["log"]
        5 CALL                             R2 3 0
        6 JUMPIFNOTEQKN                    R0 K2 [401] ; [+11]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["disconnect"]
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K4 ["AuthorizationPending"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 LOADN                            R2 200
       19 JUMPIFLT                         R0 R2 ; [+4]
       21 LOADN                            R2 44
       22 JUMPIFNOTLE                      R2 R0 ; [+11]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K3 ["disconnect"]
       27 CALL                             R2 0 0
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K5 ["UnexpectedServerResponse"]
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R2 R3 K6 ["getContentType"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 1
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R4 R5 K7 ["ResponseType"]
       42 GETTABLEKS                       R3 R4 K8 ["EventStream"]
       44 JUMPIFEQ                         R2 R3 ; [+11]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K3 ["disconnect"]
       49 CALL                             R3 0 0
       50 GETUPVAL                         R3 2
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R4 R5 K5 ["UnexpectedServerResponse"]
       54 CALL                             R3 1 -1
       55 RETURN                           R3 -1
       56 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["parseNextChunk"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["UnexpectedServerResponse"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["UnexpectedServerResponse"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["transport"]
        3 GETTABLEKS                       R0 R1 K1 ["sendRequest"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["event"]
        2 JUMPIFEQKS                       R1 K1 ["endpoint"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADK                            R4 K2 ["SSE detection - received endpoint event: %*"]
        7 GETTABLEKS                       R6 R0 K3 ["data"]
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 NAMECALL                         R1 R1 K5 ["log"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K6 ["disconnect"]
       19 CALL                             R1 0 0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K7 ["new"]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R3 4
       25 CALL                             R1 2 1
       26 DUPTABLE                         R2 K10 [{"transport", "type"}]
       27 GETTABLEKS                       R3 R1 K8 ["transport"]
       29 SETTABLEKS                       R3 R2 K8 ["transport"]
       31 LOADK                            R3 K11 ["sse"]
       32 SETTABLEKS                       R3 R2 K9 ["type"]
       34 SETUPVAL                         R2 5
       35 GETUPVAL                         R3 5
       36 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       38 LOADK                            R4 K12 ["variant is nil"]
       39 GETIMPORT                        R2 K14 [assert]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 6
       43 GETUPVAL                         R4 5
       44 GETTABLEKS                       R3 R4 K8 ["transport"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R4 5
       48 GETTABLEKS                       R3 R4 K8 ["transport"]
       50 GETTABLEKS                       R2 R3 K15 ["start"]
       52 CALL                             R2 0 1
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U7
       56 NAMECALL                         R2 R2 K16 ["andThen"]
       58 CALL                             R2 2 1
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          UPVAL U8
       61 NAMECALL                         R2 R2 K16 ["andThen"]
       63 CALL                             R2 2 1
       64 NEWCLOSURE                       R4 P2
       65 CAPTURE                          UPVAL U9
       66 NAMECALL                         R2 R2 K17 ["catch"]
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          REF R3
       10 NEWCLOSURE                       R6 P2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 NEWCLOSURE                       R7 P3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 NEWCLOSURE                       R8 P4
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          REF R2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 GETUPVAL                         R10 9
       30 GETTABLEKS                       R9 R10 K0 ["createParser"]
       32 DUPTABLE                         R10 K2 [{"onEvent"}]
       33 GETUPVAL                         R12 2
       34 GETTABLEKS                       R11 R12 K3 ["wrapSSECallback"]
       36 MOVE                             R12 R8
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K1 ["onEvent"]
       40 CALL                             R9 1 1
       41 MOVE                             R3 R9
       42 DUPTABLE                         R9 K7 [{"Url", "Method", "Headers"}]
       43 GETUPVAL                         R10 5
       44 SETTABLEKS                       R10 R9 K4 ["Url"]
       46 LOADK                            R10 K8 ["GET"]
       47 SETTABLEKS                       R10 R9 K5 ["Method"]
       49 NEWTABLE                         R11 1 0
       51 GETUPVAL                         R14 2
       52 GETTABLEKS                       R13 R14 K6 ["Headers"]
       54 GETTABLEKS                       R12 R13 K9 ["ACCEPT"]
       56 GETUPVAL                         R15 2
       57 GETTABLEKS                       R14 R15 K10 ["ResponseType"]
       59 GETTABLEKS                       R13 R14 K11 ["EventStream"]
       61 SETTABLE                         R13 R11 R12
       62 GETUPVAL                         R13 6
       63 JUMPIFNOT                        R13 ; [+4]
       64 GETUPVAL                         R13 6
       65 NAMECALL                         R13 R13 K12 ["getProvider"]
       67 CALL                             R13 1 1
       68 JUMPIFNOT                        R13 ; [+18]
       69 GETTABLEKS                       R14 R13 K13 ["getTokens"]
       71 JUMPIFNOT                        R14 ; [+15]
       72 GETTABLEKS                       R14 R13 K13 ["getTokens"]
       74 CALL                             R14 0 1
       75 JUMPIFNOT                        R14 ; [+11]
       76 GETTABLEKS                       R15 R14 K14 ["access_token"]
       78 JUMPIFNOT                        R15 ; [+8]
       79 LOADK                            R15 K15 ["Bearer %*"]
       80 GETTABLEKS                       R17 R14 K14 ["access_token"]
       82 NAMECALL                         R15 R15 K16 ["format"]
       84 CALL                             R15 2 1
       85 MOVE                             R12 R15
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 JUMPIFNOT                        R12 ; [+6]
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R14 R15 K6 ["Headers"]
       92 GETTABLEKS                       R13 R14 K17 ["AUTHORIZATION"]
       94 SETTABLE                         R12 R11 R13
       95 MOVE                             R10 R11
       96 SETTABLEKS                       R10 R9 K6 ["Headers"]
       98 GETUPVAL                         R11 10
       99 GETTABLEKS                       R10 R11 K18 ["createClient"]
      101 MOVE                             R11 R9
      102 DUPTABLE                         R12 K23 [{"onOpen", "onMessage", "onError", "onClose"}]
      103 SETTABLEKS                       R4 R12 K19 ["onOpen"]
      105 SETTABLEKS                       R5 R12 K20 ["onMessage"]
      107 SETTABLEKS                       R6 R12 K21 ["onError"]
      109 SETTABLEKS                       R7 R12 K22 ["onClose"]
      111 CALL                             R10 2 1
      112 MOVE                             R2 R10
      113 CLOSEUPVALS                      R2
      114 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["decode"]
        3 GETTABLEKS                       R2 R0 K1 ["data"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["onTransportMessage"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Detection POST - response status: "]
        2 MOVE                             R5 R0
        3 NAMECALL                         R2 R2 K1 ["log"]
        5 CALL                             R2 3 0
        6 JUMPIFNOTEQKN                    R0 K2 [401] ; [+11]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["disconnect"]
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K4 ["AuthorizationPending"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R3 4
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+39]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K5 ["Trying SSE fallback for response code: "]
       23 MOVE                             R5 R0
       24 NAMECALL                         R2 R2 K1 ["log"]
       26 CALL                             R2 3 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["disconnect"]
       30 CALL                             R2 0 0
       31 GETUPVAL                         R3 5
       32 GETUPVAL                         R5 6
       33 GETTABLEKS                       R4 R5 K6 ["new"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U12
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CALL                             R4 1 1
       48 MOVE                             R2 R4
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          UPVAL U15
       51 NAMECALL                         R2 R2 K7 ["andThen"]
       53 CALL                             R2 2 1
       54 NEWCLOSURE                       R4 P2
       55 CAPTURE                          UPVAL U2
       56 NAMECALL                         R2 R2 K8 ["catch"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0
       60 LOADN                            R2 200
       61 JUMPIFLT                         R0 R2 ; [+4]
       63 LOADN                            R2 44
       64 JUMPIFNOTLE                      R2 R0 ; [+11]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R2 R3 K3 ["disconnect"]
       69 CALL                             R2 0 0
       70 GETUPVAL                         R2 2
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R3 R4 K9 ["UnexpectedServerResponse"]
       74 CALL                             R2 1 -1
       75 RETURN                           R2 -1
       76 GETUPVAL                         R3 7
       77 GETTABLEKS                       R2 R3 K10 ["getContentType"]
       79 MOVE                             R3 R1
       80 CALL                             R2 1 1
       81 GETUPVAL                         R5 7
       82 GETTABLEKS                       R4 R5 K11 ["ResponseType"]
       84 GETTABLEKS                       R3 R4 K12 ["Json"]
       86 JUMPIFNOTEQ                      R2 R3 ; [+11]
       88 DUPTABLE                         R3 K14 [{"responseType"}]
       89 GETUPVAL                         R6 7
       90 GETTABLEKS                       R5 R6 K11 ["ResponseType"]
       92 GETTABLEKS                       R4 R5 K12 ["Json"]
       94 SETTABLEKS                       R4 R3 K13 ["responseType"]
       96 SETUPVAL                         R3 16
       97 JUMP                             ; [+44]
       98 GETUPVAL                         R5 7
       99 GETTABLEKS                       R4 R5 K11 ["ResponseType"]
      101 GETTABLEKS                       R3 R4 K15 ["EventStream"]
      103 JUMPIFNOTEQ                      R2 R3 ; [+28]
      105 NEWCLOSURE                       R3 P3
      106 CAPTURE                          UPVAL U17
      107 CAPTURE                          UPVAL U18
      108 DUPTABLE                         R4 K17 [{"responseType", "eventStreamParser"}]
      109 GETUPVAL                         R7 7
      110 GETTABLEKS                       R6 R7 K11 ["ResponseType"]
      112 GETTABLEKS                       R5 R6 K15 ["EventStream"]
      114 SETTABLEKS                       R5 R4 K13 ["responseType"]
      116 GETUPVAL                         R6 13
      117 GETTABLEKS                       R5 R6 K18 ["createParser"]
      119 DUPTABLE                         R6 K20 [{"onEvent"}]
      120 GETUPVAL                         R8 7
      121 GETTABLEKS                       R7 R8 K21 ["wrapSSECallback"]
      123 MOVE                             R8 R3
      124 CALL                             R7 1 1
      125 SETTABLEKS                       R7 R6 K19 ["onEvent"]
      127 CALL                             R5 1 1
      128 SETTABLEKS                       R5 R4 K16 ["eventStreamParser"]
      130 SETUPVAL                         R4 16
      131 JUMP                             ; [+10]
      132 GETUPVAL                         R4 1
      133 GETTABLEKS                       R3 R4 K3 ["disconnect"]
      135 CALL                             R3 0 0
      136 GETUPVAL                         R3 2
      137 GETUPVAL                         R5 3
      138 GETTABLEKS                       R4 R5 K9 ["UnexpectedServerResponse"]
      140 CALL                             R3 1 -1
      141 RETURN                           R3 -1
      142 GETUPVAL                         R6 7
      143 GETTABLEKS                       R5 R6 K22 ["Headers"]
      145 GETTABLEKS                       R4 R5 K23 ["MCP_SESSION_ID_HEADER"]
      147 GETTABLE                         R3 R1 R4
      148 JUMPIFNOT                        R3 ; [+9]
      149 GETUPVAL                         R3 18
      150 GETUPVAL                         R7 7
      151 GETTABLEKS                       R6 R7 K22 ["Headers"]
      153 GETTABLEKS                       R5 R6 K23 ["MCP_SESSION_ID_HEADER"]
      155 GETTABLE                         R4 R1 R5
      156 SETTABLEKS                       R4 R3 K24 ["sessionId"]
      158 GETUPVAL                         R4 19
      159 GETTABLEKS                       R3 R4 K6 ["new"]
      161 GETUPVAL                         R4 10
      162 GETUPVAL                         R5 11
      163 CALL                             R3 2 1
      164 DUPTABLE                         R4 K27 [{"transport", "type"}]
      165 GETTABLEKS                       R5 R3 K25 ["transport"]
      167 SETTABLEKS                       R5 R4 K25 ["transport"]
      169 LOADK                            R5 K28 ["streamable"]
      170 SETTABLEKS                       R5 R4 K26 ["type"]
      172 SETUPVAL                         R4 8
      173 GETUPVAL                         R5 8
      174 FASTCALL2K                       ASSERT R5 K29 ; [+4]
      176 LOADK                            R6 K29 ["variant is nil"]
      177 GETIMPORT                        R4 K31 [assert]
      179 CALL                             R4 2 0
      180 GETUPVAL                         R5 18
      181 GETTABLEKS                       R4 R5 K24 ["sessionId"]
      183 JUMPIFNOT                        R4 ; [+8]
      184 GETUPVAL                         R5 8
      185 GETTABLEKS                       R4 R5 K25 ["transport"]
      187 GETUPVAL                         R6 18
      188 GETTABLEKS                       R5 R6 K24 ["sessionId"]
      190 SETTABLEKS                       R5 R4 K24 ["sessionId"]
      192 GETUPVAL                         R4 12
      193 GETUPVAL                         R6 8
      194 GETTABLEKS                       R5 R6 K25 ["transport"]
      196 CALL                             R4 1 0
      197 GETUPVAL                         R6 8
      198 GETTABLEKS                       R5 R6 K25 ["transport"]
      200 GETTABLEKS                       R4 R5 K32 ["start"]
      202 CALL                             R4 0 0
      203 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["responseType"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["ResponseType"]
       11 GETTABLEKS                       R2 R3 K2 ["Json"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+6]
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CONCAT                           R1 R2 R3
       18 SETUPVAL                         R1 3
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K0 ["responseType"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K1 ["ResponseType"]
       26 GETTABLEKS                       R2 R3 K3 ["EventStream"]
       28 JUMPIFNOTEQ                      R1 R2 ; [+17]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K4 ["eventStreamParser"]
       33 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       35 LOADK                            R3 K5 ["eventStreamParser is nil"]
       36 GETIMPORT                        R1 K7 [assert]
       38 CALL                             R1 2 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K4 ["eventStreamParser"]
       42 GETTABLEKS                       R1 R2 K8 ["parseNextChunk"]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UnexpectedServerResponse"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+25]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["responseType"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["ResponseType"]
        8 GETTABLEKS                       R1 R2 K2 ["Json"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+16]
       12 GETUPVAL                         R0 2
       13 JUMPIFEQKS                       R0 K3 [""] ; [+13]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R0 R1 K4 ["decode"]
       18 GETUPVAL                         R1 2
       19 CALL                             R0 1 1
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R1 R2 K5 ["onTransportMessage"]
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K6 ["Fire"]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R0 5
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R0 6
       30 LOADNIL                          R1
       31 CALL                             R0 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 7
       34 GETUPVAL                         R2 8
       35 GETTABLEKS                       R1 R2 K7 ["UnexpectedServerResponse"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_24:
        0 LOADNIL                          R2
        1 LOADK                            R3 K0 [""]
        2 LOADNIL                          R4
        3 LOADB                            R5 0
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U13
       23 CAPTURE                          UPVAL U14
       24 CAPTURE                          UPVAL U15
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R5
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          REF R3
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 NEWCLOSURE                       R9 P3
       34 CAPTURE                          REF R4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          REF R3
       37 CAPTURE                          UPVAL U13
       38 CAPTURE                          UPVAL U14
       39 CAPTURE                          REF R5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U1
       43 DUPTABLE                         R10 K5 [{"Url", "Method", "Headers", "Body"}]
       44 GETUPVAL                         R11 8
       45 SETTABLEKS                       R11 R10 K1 ["Url"]
       47 LOADK                            R11 K6 ["POST"]
       48 SETTABLEKS                       R11 R10 K2 ["Method"]
       50 GETUPVAL                         R11 16
       51 CALL                             R11 0 1
       52 SETTABLEKS                       R11 R10 K3 ["Headers"]
       54 GETUPVAL                         R12 13
       55 GETTABLEKS                       R11 R12 K7 ["encode"]
       57 GETUPVAL                         R12 3
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R10 K4 ["Body"]
       61 GETUPVAL                         R12 12
       62 GETTABLEKS                       R11 R12 K8 ["createClient"]
       64 MOVE                             R12 R10
       65 DUPTABLE                         R13 K13 [{"onOpen", "onMessage", "onError", "onClose"}]
       66 SETTABLEKS                       R6 R13 K9 ["onOpen"]
       68 SETTABLEKS                       R7 R13 K10 ["onMessage"]
       70 SETTABLEKS                       R8 R13 K11 ["onError"]
       72 SETTABLEKS                       R9 R13 K12 ["onClose"]
       74 CALL                             R11 2 1
       75 MOVE                             R2 R11
       76 CLOSEUPVALS                      R2
       77 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resolve"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Transport not detected for response - sendRequest must be called first"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["transport"]
       10 GETTABLEKS                       R1 R2 K4 ["sendResponse"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Transport not detected for notification - sendRequest must be called first"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["transport"]
       10 GETTABLEKS                       R1 R2 K4 ["sendNotification"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 GETUPVAL                         R2 0
        7 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        9 LOADK                            R3 K0 ["variant is nil after detection complete?"]
       10 GETIMPORT                        R1 K2 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["transport"]
       16 GETTABLEKS                       R1 R2 K4 ["sendRequest"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disconnectAll"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["transport"]
        9 GETTABLEKS                       R0 R1 K2 ["close"]
       11 CALL                             R0 0 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K3 ["onTransportClose"]
       16 NAMECALL                         R0 R0 K4 ["Fire"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R0 R1 K5 ["resolve"]
       22 CALL                             R0 0 -1
       23 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["type"]
        5 RETURN                           R0 1

PROTO_32:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["new"]
        4 CALL                             R3 0 1
        5 LOADNIL                          R4
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R7 P2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R8 P3
       15 CAPTURE                          REF R2
       16 NEWCLOSURE                       R9 P4
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R8
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R3
       28 NEWCLOSURE                       R10 P5
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          REF R4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R8
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          REF R2
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          VAL R6
       45 GETUPVAL                         R12 10
       46 GETTABLEKS                       R11 R12 K1 ["makeTransport"]
       48 LOADNIL                          R12
       49 DUPTABLE                         R13 K7 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       50 DUPCLOSURE                       R14 K8 [PROTO_26]
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R14 R13 K2 ["start"]
       54 NEWCLOSURE                       R14 P7
       55 CAPTURE                          REF R4
       56 SETTABLEKS                       R14 R13 K3 ["sendResponse"]
       58 NEWCLOSURE                       R14 P8
       59 CAPTURE                          REF R4
       60 SETTABLEKS                       R14 R13 K4 ["sendNotification"]
       62 NEWCLOSURE                       R14 P9
       63 CAPTURE                          REF R4
       64 CAPTURE                          VAL R10
       65 SETTABLEKS                       R14 R13 K5 ["sendRequest"]
       67 NEWCLOSURE                       R14 P10
       68 CAPTURE                          VAL R3
       69 CAPTURE                          REF R4
       70 CAPTURE                          REF R2
       71 CAPTURE                          UPVAL U2
       72 SETTABLEKS                       R14 R13 K6 ["close"]
       74 CALL                             R11 2 1
       75 MOVE                             R2 R11
       76 DUPTABLE                         R11 K11 [{"transport", "getVariant"}]
       77 SETTABLEKS                       R2 R11 K9 ["transport"]
       79 NEWCLOSURE                       R12 P11
       80 CAPTURE                          REF R4
       81 SETTABLEKS                       R12 R11 K10 ["getVariant"]
       83 CLOSEUPVALS                      R2
       84 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Auth"]
       11 GETTABLEKS                       R2 R3 K7 ["Authorizer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["ClientConnectionStatus"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["EventStreamParser"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R5 R6 K11 ["Http"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Util"]
       35 GETTABLEKS                       R6 R7 K12 ["Json"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Util"]
       42 GETTABLEKS                       R7 R8 K13 ["Logging"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Parent"]
       49 GETTABLEKS                       R8 R9 K15 ["Promise"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K16 ["SSEClientTransport"]
       56 GETTABLEKS                       R9 R10 K16 ["SSEClientTransport"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K17 ["StreamableHttpClient"]
       63 GETTABLEKS                       R10 R11 K18 ["StreamableHttpClientTransport"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R12 R0 K17 ["StreamableHttpClient"]
       70 GETTABLEKS                       R11 R12 K19 ["StreamingClientFactory"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R13 R0 K17 ["StreamableHttpClient"]
       77 GETTABLEKS                       R12 R13 K20 ["StreamingClientManager"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K21 ["Transport"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R14 R0 K22 ["Types"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R15 R6 K23 ["Logger"]
       92 GETTABLEKS                       R14 R15 K24 ["new"]
       94 GETIMPORT                        R16 K1 [script]
       96 GETTABLEKS                       R15 R16 K25 ["Name"]
       98 CALL                             R14 1 1
       99 NEWTABLE                         R15 1 0
      101 NEWTABLE                         R16 4 0
      103 LOADN                            R17 144
      104 LOADB                            R18 1
      105 SETTABLE                         R18 R16 R17
      106 LOADN                            R17 148
      107 LOADB                            R18 1
      108 SETTABLE                         R18 R16 R17
      109 LOADN                            R17 149
      110 LOADB                            R18 1
      111 SETTABLE                         R18 R16 R17
      112 DUPCLOSURE                       R17 K26 [PROTO_32]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R12
      124 SETTABLEKS                       R17 R15 K24 ["new"]
      126 RETURN                           R15 1
