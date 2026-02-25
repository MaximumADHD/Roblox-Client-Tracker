PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R1 5
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 GETUPVAL                         R0 6
       14 GETUPVAL                         R1 7
       15 SETTABLEKS                       R1 R0 K0 ["current"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["get"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R2 R3 K1 ["EventLogger"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["current"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["current"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["current"]
       15 JUMPIFNOT                        R3 ; [+2]
       16 JUMPIFNOT                        R4 ; [+1]
       17 JUMPIF                           R5 ; [+1]
       18 RETURN                           R0 0
       19 LOADNIL                          R6
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K2 ["current"]
       23 JUMPIFNOT                        R7 ; [+4]
       24 GETTABLEKS                       R7 R3 K3 ["threads"]
       26 GETTABLE                         R6 R7 R4
       27 JUMP                             ; [+4]
       28 MOVE                             R7 R4
       29 JUMPIFNOT                        R7 ; [+1]
       30 GETTABLE                         R7 R3 R4
       31 MOVE                             R6 R7
       32 JUMPIFNOT                        R6 ; [+3]
       33 GETTABLEKS                       R7 R6 K4 ["messages"]
       35 JUMPIF                           R7 ; [+1]
       36 RETURN                           R0 0
       37 GETTABLEKS                       R8 R6 K4 ["messages"]
       39 GETTABLE                         R7 R8 R1
       40 JUMPIFNOT                        R7 ; [+3]
       41 GETTABLEKS                       R8 R7 K5 ["contents"]
       43 JUMPIF                           R8 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R9 5
       46 GETTABLEKS                       R8 R9 K6 ["readMessageWithTimestamp"]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K8 [pcall]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R8
       55 CALL                             R9 1 2
       56 JUMPIFNOT                        R9 ; [+22]
       57 JUMPIFEQKS                       R10 K9 [""] ; [+21]
       59 GETTABLEKS                       R11 R2 K10 ["logRequestJourney"]
       61 DUPTABLE                         R12 K16 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       62 GETTABLEKS                       R13 R0 K11 ["requestJourneyDuration"]
       64 SETTABLEKS                       R13 R12 K11 ["requestJourneyDuration"]
       66 GETTABLEKS                       R13 R0 K12 ["requestEndReason"]
       68 SETTABLEKS                       R13 R12 K12 ["requestEndReason"]
       70 GETTABLEKS                       R13 R0 K13 ["messageGuid"]
       72 SETTABLEKS                       R13 R12 K13 ["messageGuid"]
       74 SETTABLEKS                       R5 R12 K14 ["sessionId"]
       76 SETTABLEKS                       R10 R12 K15 ["message"]
       78 CALL                             R11 1 0
       79 RETURN                           R0 0

PROTO_3:
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
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["useContext"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K5 ["useRef"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K5 ["useRef"]
       35 LOADB                            R8 0
       36 CALL                             R7 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K5 ["useRef"]
       40 LOADNIL                          R9
       41 CALL                             R8 1 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K5 ["useRef"]
       45 LOADNIL                          R10
       46 CALL                             R9 1 1
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R5
       59 NEWTABLE                         R12 0 3
       61 MOVE                             R13 R1
       62 MOVE                             R14 R3
       63 MOVE                             R15 R5
       64 SETLIST                          R12 R13 3 [1]
       66 CALL                             R10 2 0
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R7
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 NEWTABLE                         R12 0 0
       80 CALL                             R10 2 -1
       81 RETURN                           R10 -1

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
       73 DUPCLOSURE                       R10 K24 [PROTO_3]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 RETURN                           R10 1
