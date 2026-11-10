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
       15 MOVE                             R6 R4
       16 GETUPVAL                         R7 4
       17 CALL                             R7 0 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantCreditMeteringTelemetry"]
       22 JUMPIFNOT                        R7 ; [+3]
       23 GETTABLEKS                       R7 R0 K4 ["threadId"]
       25 OR                               R6 R7 R4
       26 JUMPIFNOT                        R3 ; [+2]
       27 JUMPIFNOT                        R6 ; [+1]
       28 JUMPIF                           R5 ; [+1]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R8 R3 K5 ["threads"]
       32 GETTABLE                         R7 R8 R6
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETTABLEKS                       R8 R7 K6 ["messages"]
       36 JUMPIF                           R8 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R9 R7 K6 ["messages"]
       40 GETTABLE                         R8 R9 R1
       41 JUMPIFNOT                        R8 ; [+3]
       42 GETTABLEKS                       R9 R8 K7 ["contents"]
       44 JUMPIF                           R9 ; [+1]
       45 RETURN                           R0 0
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R9 R9 K8 ["readMessageWithTimestamp"]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K10 [pcall]
       53 NEWCLOSURE                       R11 P0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R9
       56 CALL                             R10 1 2
       57 JUMPIFNOT                        R10 ; [+43]
       58 JUMPIFEQKS                       R11 K11 [""] ; [+42]
       60 DUPTABLE                         R12 K18 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "threadId", "acpSessionId", "message"}]
       61 GETTABLEKS                       R13 R0 K12 ["requestJourneyDuration"]
       63 SETTABLEKS                       R13 R12 K12 ["requestJourneyDuration"]
       65 GETTABLEKS                       R13 R0 K13 ["requestEndReason"]
       67 SETTABLEKS                       R13 R12 K13 ["requestEndReason"]
       69 GETTABLEKS                       R13 R0 K14 ["messageGuid"]
       71 SETTABLEKS                       R13 R12 K14 ["messageGuid"]
       73 SETTABLEKS                       R5 R12 K15 ["sessionId"]
       75 GETTABLEKS                       R14 R0 K4 ["threadId"]
       77 OR                               R13 R14 R4
       78 SETTABLEKS                       R13 R12 K4 ["threadId"]
       80 GETTABLEKS                       R13 R0 K16 ["acpSessionId"]
       82 SETTABLEKS                       R13 R12 K16 ["acpSessionId"]
       84 SETTABLEKS                       R11 R12 K17 ["message"]
       86 GETUPVAL                         R13 4
       87 CALL                             R13 0 1
       88 JUMPIFNOT                        R13 ; [+8]
       89 GETUPVAL                         R13 5
       90 GETTABLEKS                       R13 R13 K3 ["FFlagAssistantCreditMeteringTelemetry"]
       92 JUMPIFNOT                        R13 ; [+4]
       93 GETTABLEKS                       R13 R0 K19 ["nextTurnBlockReason"]
       95 SETTABLEKS                       R13 R12 K19 ["nextTurnBlockReason"]
       97 GETTABLEKS                       R13 R2 K20 ["logRequestJourney"]
       99 MOVE                             R14 R12
      100 CALL                             R13 1 0
      101 RETURN                           R0 0

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
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 NEWTABLE                         R10 0 0
       67 CALL                             R8 2 -1
       68 RETURN                           R8 -1

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
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Components"]
       36 GETTABLEKS                       R6 R6 K16 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K17 ["SessionIdContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K18 ["ThreadIdContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K19 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K20 ["FlagUtils"]
       59 GETTABLEKS                       R9 R9 K21 ["getIsCreditMeteringEnabled"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K22 ["Util"]
       66 GETTABLEKS                       R10 R10 K23 ["readMessage"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K24 ["Hooks"]
       73 GETTABLEKS                       R11 R11 K25 ["useConversation"]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K26 [PROTO_3]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 RETURN                           R11 1
