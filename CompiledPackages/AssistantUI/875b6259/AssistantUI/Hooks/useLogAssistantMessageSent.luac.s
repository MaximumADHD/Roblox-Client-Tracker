PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["get"]
        3 CALL                             R4 0 1
        4 GETTABLEKS                       R4 R4 K1 ["EventLogger"]
        6 GETUPVAL                         R6 1
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 MOVE                             R5 R3
       10 JUMP                             ; [+4]
       11 GETTABLEKS                       R5 R4 K2 ["getMessageGuid"]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 1
       15 LOADNIL                          R6
       16 GETUPVAL                         R7 1
       17 CALL                             R7 0 1
       18 JUMPIFNOT                        R7 ; [+8]
       19 GETTABLEKS                       R7 R0 K3 ["threads"]
       21 JUMPIFNOT                        R7 ; [+3]
       22 GETTABLEKS                       R8 R0 K3 ["threads"]
       24 GETTABLE                         R7 R8 R2
       25 MOVE                             R6 R7
       26 JUMP                             ; [+4]
       27 MOVE                             R7 R2
       28 JUMPIFNOT                        R7 ; [+1]
       29 GETTABLE                         R7 R0 R2
       30 MOVE                             R6 R7
       31 JUMPIF                           R6 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R8 R6 K4 ["messages"]
       35 GETTABLE                         R7 R8 R3
       36 JUMPIFNOT                        R7 ; [+3]
       37 GETTABLEKS                       R8 R7 K5 ["contents"]
       39 JUMPIF                           R8 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K6 ["readMessage"]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K8 [pcall]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R8
       51 CALL                             R9 1 2
       52 JUMPIFNOT                        R9 ; [+20]
       53 JUMPIFEQKS                       R10 K9 [""] ; [+19]
       55 GETTABLEKS                       R11 R4 K10 ["logAssistantMessageSent"]
       57 DUPTABLE                         R12 K15 [{"messageGuid", "sessionId", "threadId", "message"}]
       58 SETTABLEKS                       R5 R12 K11 ["messageGuid"]
       60 SETTABLEKS                       R1 R12 K12 ["sessionId"]
       62 GETUPVAL                         R14 1
       63 CALL                             R14 0 1
       64 JUMPIFNOT                        R14 ; [+2]
       65 MOVE                             R13 R2
       66 JUMP                             ; [+1]
       67 LOADNIL                          R13
       68 SETTABLEKS                       R13 R12 K13 ["threadId"]
       70 SETTABLEKS                       R10 R12 K14 ["message"]
       72 CALL                             R11 1 0
       73 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 GETTABLEKS                       R4 R0 K1 ["sessionId"]
        9 GETTABLEKS                       R5 R0 K2 ["threadId"]
       11 GETTABLEKS                       R6 R0 K3 ["messageId"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+19]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["useRef"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["useCallback"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 NEWTABLE                         R3 0 0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1
       22 GETUPVAL                         R0 2
       23 CALL                             R0 0 1
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K3 ["useContext"]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K4 ["Context"]
       30 CALL                             R1 1 1
       31 GETTABLEKS                       R2 R1 K5 ["sessionId"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K3 ["useContext"]
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R4 R4 K4 ["Context"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R3 K6 ["threadId"]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 NEWTABLE                         R7 0 0
       52 CALL                             R5 2 1
       53 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Components"]
       31 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K16 ["SessionIdContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K14 ["Components"]
       40 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["ThreadIdContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K18 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K19 ["Util"]
       54 GETTABLEKS                       R8 R8 K20 ["readMessage"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K21 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K22 ["useConversation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K23 ["Flags"]
       68 GETTABLEKS                       R10 R10 K24 ["FFlagAssistantMultipleChatPersistence"]
       70 CALL                             R9 1 1
       71 DUPCLOSURE                       R10 K25 [PROTO_1]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 DUPCLOSURE                       R11 K26 [PROTO_4]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 RETURN                           R11 1
