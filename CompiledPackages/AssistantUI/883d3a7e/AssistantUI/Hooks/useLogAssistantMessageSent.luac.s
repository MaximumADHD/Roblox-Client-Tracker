PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R1 K2 ["getMessageGuid"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 LOADNIL                          R3
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["threads"]
       17 GETUPVAL                         R5 3
       18 GETTABLE                         R3 R4 R5
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R4 3
       21 JUMPIFNOT                        R4 ; [+3]
       22 GETUPVAL                         R5 2
       23 GETUPVAL                         R6 3
       24 GETTABLE                         R4 R5 R6
       25 MOVE                             R3 R4
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETTABLEKS                       R4 R3 K4 ["messages"]
       29 JUMPIF                           R4 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R5 R3 K4 ["messages"]
       33 GETTABLE                         R4 R5 R0
       34 JUMPIFNOT                        R4 ; [+3]
       35 GETTABLEKS                       R5 R4 K5 ["contents"]
       37 JUMPIF                           R5 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K6 ["readMessage"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K8 [pcall]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R5
       49 CALL                             R6 1 2
       50 JUMPIFNOT                        R6 ; [+13]
       51 JUMPIFEQKS                       R7 K9 [""] ; [+12]
       53 GETTABLEKS                       R8 R1 K10 ["logAssistantMessageSent"]
       55 DUPTABLE                         R9 K14 [{"messageGuid", "sessionId", "message"}]
       56 SETTABLEKS                       R2 R9 K11 ["messageGuid"]
       58 GETUPVAL                         R10 6
       59 SETTABLEKS                       R10 R9 K12 ["sessionId"]
       61 SETTABLEKS                       R7 R9 K13 ["message"]
       63 CALL                             R8 1 0
       64 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["sessionId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["useContext"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K4 ["threadId"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R8 0 3
       40 MOVE                             R9 R1
       41 MOVE                             R10 R3
       42 MOVE                             R11 R5
       43 SETLIST                          R8 R9 3 [1]
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

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
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R5 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R6 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Components"]
       40 GETTABLEKS                       R7 R8 K11 ["Contexts"]
       42 GETTABLEKS                       R6 R7 K17 ["SessionIdContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Components"]
       49 GETTABLEKS                       R8 R9 K11 ["Contexts"]
       51 GETTABLEKS                       R7 R8 K18 ["ThreadIdContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K19 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K20 ["Util"]
       63 GETTABLEKS                       R9 R10 K21 ["readMessage"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R11 R0 K22 ["Flags"]
       70 GETTABLEKS                       R10 R11 K23 ["FFlagAssistantMultipleChatSupport"]
       72 CALL                             R9 1 1
       73 DUPCLOSURE                       R10 K24 [PROTO_2]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 RETURN                           R10 1
