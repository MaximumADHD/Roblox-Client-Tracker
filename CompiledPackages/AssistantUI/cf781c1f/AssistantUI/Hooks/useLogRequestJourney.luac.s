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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["current"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["current"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["current"]
       15 JUMPIFNOT                        R3 ; [+2]
       16 JUMPIFNOT                        R4 ; [+1]
       17 JUMPIF                           R5 ; [+1]
       18 RETURN                           R0 0
       19 LOADNIL                          R6
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K2 ["current"]
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
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K6 ["readMessageWithTimestamp"]
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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["sessionId"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useRef"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K4 ["useRef"]
       28 LOADB                            R7 0
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K4 ["useRef"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K4 ["useRef"]
       38 LOADNIL                          R9
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R11 0 3
       54 MOVE                             R12 R0
       55 MOVE                             R13 R2
       56 MOVE                             R14 R4
       57 SETLIST                          R11 R12 3 [1]
       59 CALL                             R9 2 0
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U7
       71 NEWTABLE                         R11 0 0
       73 CALL                             R9 2 -1
       74 RETURN                           R9 -1

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
       71 DUPCLOSURE                       R10 K25 [PROTO_3]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R1
       80 RETURN                           R10 1
