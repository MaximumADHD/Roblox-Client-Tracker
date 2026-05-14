PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["EventLogger"]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+2]
        9 MOVE                             R2 R0
       10 JUMP                             ; [+4]
       11 GETTABLEKS                       R2 R1 K2 ["getMessageGuid"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+6]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K3 ["threads"]
       22 GETUPVAL                         R5 3
       23 GETTABLE                         R3 R4 R5
       24 JUMP                             ; [+6]
       25 GETUPVAL                         R4 3
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETUPVAL                         R5 2
       28 GETUPVAL                         R6 3
       29 GETTABLE                         R4 R5 R6
       30 MOVE                             R3 R4
       31 JUMPIF                           R3 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R5 R3 K4 ["messages"]
       35 GETTABLE                         R4 R5 R0
       36 JUMPIFNOT                        R4 ; [+3]
       37 GETTABLEKS                       R5 R4 K5 ["contents"]
       39 JUMPIF                           R5 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K6 ["readMessage"]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K8 [pcall]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R5
       51 CALL                             R6 1 2
       52 JUMPIFNOT                        R6 ; [+21]
       53 JUMPIFEQKS                       R7 K9 [""] ; [+20]
       55 GETTABLEKS                       R8 R1 K10 ["logAssistantMessageSent"]
       57 DUPTABLE                         R9 K15 [{"messageGuid", "sessionId", "threadId", "message"}]
       58 SETTABLEKS                       R2 R9 K11 ["messageGuid"]
       60 GETUPVAL                         R10 6
       61 SETTABLEKS                       R10 R9 K12 ["sessionId"]
       63 GETUPVAL                         R11 1
       64 CALL                             R11 0 1
       65 JUMPIFNOT                        R11 ; [+2]
       66 GETUPVAL                         R10 3
       67 JUMP                             ; [+1]
       68 LOADNIL                          R10
       69 SETTABLEKS                       R10 R9 K13 ["threadId"]
       71 SETTABLEKS                       R7 R9 K14 ["message"]
       73 CALL                             R8 1 0
       74 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["sessionId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["threadId"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R7 0 3
       33 MOVE                             R8 R0
       34 MOVE                             R9 R2
       35 MOVE                             R10 R4
       36 SETLIST                          R7 R8 3 [1]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

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
       71 DUPCLOSURE                       R10 K25 [PROTO_2]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R1
       80 RETURN                           R10 1
