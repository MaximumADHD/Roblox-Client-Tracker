PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R1 5
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 RETURN                           R0 0

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
       19 GETTABLEKS                       R7 R3 K3 ["threads"]
       21 GETTABLE                         R6 R7 R4
       22 JUMPIFNOT                        R6 ; [+3]
       23 GETTABLEKS                       R7 R6 K4 ["messages"]
       25 JUMPIF                           R7 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R8 R6 K4 ["messages"]
       29 GETTABLE                         R7 R8 R1
       30 JUMPIFNOT                        R7 ; [+3]
       31 GETTABLEKS                       R8 R7 K5 ["contents"]
       33 JUMPIF                           R8 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R8 R8 K6 ["readMessageWithTimestamp"]
       38 MOVE                             R9 R7
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K8 [pcall]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R8
       45 CALL                             R9 1 2
       46 JUMPIFNOT                        R9 ; [+22]
       47 JUMPIFEQKS                       R10 K9 [""] ; [+21]
       49 GETTABLEKS                       R11 R2 K10 ["logRequestJourney"]
       51 DUPTABLE                         R12 K16 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       52 GETTABLEKS                       R13 R0 K11 ["requestJourneyDuration"]
       54 SETTABLEKS                       R13 R12 K11 ["requestJourneyDuration"]
       56 GETTABLEKS                       R13 R0 K12 ["requestEndReason"]
       58 SETTABLEKS                       R13 R12 K12 ["requestEndReason"]
       60 GETTABLEKS                       R13 R0 K13 ["messageGuid"]
       62 SETTABLEKS                       R13 R12 K13 ["messageGuid"]
       64 SETTABLEKS                       R5 R12 K14 ["sessionId"]
       66 SETTABLEKS                       R10 R12 K15 ["message"]
       68 CALL                             R11 1 0
       69 RETURN                           R0 0

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
       28 LOADNIL                          R7
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K4 ["useRef"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 NEWTABLE                         R10 0 3
       47 MOVE                             R11 R0
       48 MOVE                             R12 R2
       49 MOVE                             R13 R4
       50 SETLIST                          R10 R11 3 [1]
       52 CALL                             R8 2 0
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 NEWTABLE                         R10 0 0
       65 CALL                             R8 2 -1
       66 RETURN                           R8 -1

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
       64 DUPCLOSURE                       R9 K23 [PROTO_3]
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 RETURN                           R9 1
