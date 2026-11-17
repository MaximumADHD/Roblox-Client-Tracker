PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["sessionId"]
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLEKS                       R3 R0 K1 ["version"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Agent info (name, version) is required."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Server options are required."]
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
       37 SETTABLEKS                       R0 R2 K11 ["_agentInfo"]
       39 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       41 SETTABLEKS                       R3 R2 K12 ["_agentCapabilities"]
       43 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["connect"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 NAMECALL                         R1 R1 K1 ["close"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["Initialize"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R2 R0 K3 ["params"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["Initialize"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionNew"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R2 R0 K3 ["params"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionNew"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionLoad"]
        8 GETTABLEKS                       R4 R0 K3 ["params"]
       10 FASTCALL1                        TYPE R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K5 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+4]
       17 GETTABLEKS                       R3 R4 K7 ["sessionId"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R2 R0 K3 ["params"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionLoad"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionList"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R2 R0 K3 ["params"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionList"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionPrompt"]
        8 GETTABLEKS                       R4 R0 K3 ["params"]
       10 FASTCALL1                        TYPE R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K5 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+4]
       17 GETTABLEKS                       R3 R4 K7 ["sessionId"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R2 R0 K3 ["params"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionPrompt"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionSetMode"]
        8 GETTABLEKS                       R4 R0 K3 ["params"]
       10 FASTCALL1                        TYPE R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K5 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+4]
       17 GETTABLEKS                       R3 R4 K7 ["sessionId"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R2 R0 K3 ["params"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionSetMode"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setRequestHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Method"]
        6 GETTABLEKS                       R2 R2 K2 ["SessionCancel"]
        8 GETTABLEKS                       R4 R0 K3 ["params"]
       10 FASTCALL1                        TYPE R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K5 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+4]
       17 GETTABLEKS                       R3 R4 K7 ["sessionId"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R2 R0 K3 ["params"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Method"]
        5 GETTABLEKS                       R4 R4 K2 ["SessionCancel"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["setNotificationHandler"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_18:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+14]
        7 GETTABLEKS                       R4 R1 K3 ["update"]
        9 FASTCALL1                        TYPE R4 ; [+2]
       10 GETIMPORT                        R3 K1 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+6]
       15 GETTABLEKS                       R2 R1 K3 ["update"]
       17 GETTABLEKS                       R2 R2 K4 ["sessionUpdate"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["log"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K6 ["Method"]
       27 GETTABLEKS                       R4 R4 K7 ["SessionUpdate"]
       29 MOVE                             R5 R2
       30 CALL                             R3 2 0
       31 GETTABLEKS                       R3 R0 K8 ["_protocol"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K6 ["Method"]
       36 GETTABLEKS                       R5 R5 K7 ["SessionUpdate"]
       38 MOVE                             R6 R1
       39 NAMECALL                         R3 R3 K9 ["notification"]
       41 CALL                             R3 3 -1
       42 RETURN                           R3 -1

PROTO_19:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+19]
        7 GETTABLEKS                       R4 R1 K3 ["toolCall"]
        9 FASTCALL1                        TYPE R4 ; [+2]
       10 GETIMPORT                        R3 K1 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+11]
       15 GETTABLEKS                       R2 R1 K3 ["toolCall"]
       17 GETTABLEKS                       R2 R2 K4 ["title"]
       19 JUMPIF                           R2 ; [+6]
       20 GETTABLEKS                       R2 R1 K3 ["toolCall"]
       22 GETTABLEKS                       R2 R2 K5 ["toolCallId"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K6 ["log"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["Method"]
       32 GETTABLEKS                       R4 R4 K8 ["SessionRequestPermission"]
       34 MOVE                             R5 R2
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R3 R0 K9 ["_protocol"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K7 ["Method"]
       41 GETTABLEKS                       R5 R5 K8 ["SessionRequestPermission"]
       43 MOVE                             R6 R1
       44 NAMECALL                         R3 R3 K10 ["request"]
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setBackChannelHandler"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

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
       16 GETTABLEKS                       R2 R2 K6 ["Trace"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Types"]
       27 CALL                             R2 1 1
       28 NEWTABLE                         R3 16 0
       30 SETTABLEKS                       R3 R3 K8 ["__index"]
       32 DUPCLOSURE                       R4 K9 [PROTO_0]
       33 DUPCLOSURE                       R5 K10 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R5 R3 K11 ["new"]
       38 DUPCLOSURE                       R5 K12 [PROTO_2]
       39 SETTABLEKS                       R5 R3 K13 ["connect"]
       41 DUPCLOSURE                       R5 K14 [PROTO_3]
       42 SETTABLEKS                       R5 R3 K15 ["close"]
       44 DUPCLOSURE                       R5 K16 [PROTO_5]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R3 K17 ["setInitializeHandler"]
       49 DUPCLOSURE                       R5 K18 [PROTO_7]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R5 R3 K19 ["setNewSessionHandler"]
       54 DUPCLOSURE                       R5 K20 [PROTO_9]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R5 R3 K21 ["setLoadSessionHandler"]
       59 DUPCLOSURE                       R5 K22 [PROTO_11]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R5 R3 K23 ["setListSessionsHandler"]
       64 DUPCLOSURE                       R5 K24 [PROTO_13]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R5 R3 K25 ["setPromptHandler"]
       69 DUPCLOSURE                       R5 K26 [PROTO_15]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R5 R3 K27 ["setSessionModeHandler"]
       74 DUPCLOSURE                       R5 K28 [PROTO_17]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R5 R3 K29 ["setCancelHandler"]
       79 DUPCLOSURE                       R5 K30 [PROTO_18]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R5 R3 K31 ["sendSessionUpdate"]
       84 DUPCLOSURE                       R5 K32 [PROTO_19]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R5 R3 K33 ["requestPermission"]
       89 DUPCLOSURE                       R5 K34 [PROTO_20]
       90 SETTABLEKS                       R5 R3 K35 ["setBackChannelHandler"]
       92 RETURN                           R3 1
