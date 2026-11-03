PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["reasonDisabled"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["Generation"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOT                        R6 ; [+17]
        7 GETTABLEKS                       R8 R6 K0 ["reasonDisabled"]
        9 LOADB                            R7 0
       10 JUMPIFEQKNIL                     R8 ; [+10]
       12 GETTABLEKS                       R9 R8 K0 ["reasonDisabled"]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K1 ["Generation"]
       17 JUMPIFEQ                         R9 R10 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 JUMPIFNOT                        R7 ; [+2]
       22 LOADB                            R7 1
       23 SETTABLE                         R7 R1 R5
       24 FORGLOOP                         R2 2 ; [-19]
       26 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIF                           R2 ; [+8]
        7 GETTABLEKS                       R2 R0 K1 ["log"]
        9 GETTABLEKS                       R3 R0 K2 ["data"]
       11 GETTABLEKS                       R4 R0 K3 ["messageId"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R1 ; [+10]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["blockReasonToNextTurnBlockReason"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["getBlockReason"]
       23 MOVE                             R5 R1
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 1
       26 MOVE                             R2 R3
       27 GETTABLEKS                       R3 R0 K1 ["log"]
       29 DUPTABLE                         R4 K14 [{"requestJourneyDuration", "requestEndReason", "nextTurnBlockReason", "messageGuid", "sessionId", "threadId", "acpSessionId", "message"}]
       30 GETTABLEKS                       R5 R0 K2 ["data"]
       32 GETTABLEKS                       R5 R5 K6 ["requestJourneyDuration"]
       34 SETTABLEKS                       R5 R4 K6 ["requestJourneyDuration"]
       36 GETTABLEKS                       R5 R0 K2 ["data"]
       38 GETTABLEKS                       R5 R5 K7 ["requestEndReason"]
       40 SETTABLEKS                       R5 R4 K7 ["requestEndReason"]
       42 SETTABLEKS                       R2 R4 K8 ["nextTurnBlockReason"]
       44 GETTABLEKS                       R5 R0 K2 ["data"]
       46 GETTABLEKS                       R5 R5 K9 ["messageGuid"]
       48 SETTABLEKS                       R5 R4 K9 ["messageGuid"]
       50 GETTABLEKS                       R5 R0 K2 ["data"]
       52 GETTABLEKS                       R5 R5 K10 ["sessionId"]
       54 SETTABLEKS                       R5 R4 K10 ["sessionId"]
       56 GETTABLEKS                       R5 R0 K2 ["data"]
       58 GETTABLEKS                       R5 R5 K11 ["threadId"]
       60 SETTABLEKS                       R5 R4 K11 ["threadId"]
       62 GETTABLEKS                       R5 R0 K2 ["data"]
       64 GETTABLEKS                       R5 R5 K12 ["acpSessionId"]
       66 SETTABLEKS                       R5 R4 K12 ["acpSessionId"]
       68 GETTABLEKS                       R5 R0 K2 ["data"]
       70 GETTABLEKS                       R5 R5 K13 ["message"]
       72 SETTABLEKS                       R5 R4 K13 ["message"]
       74 GETTABLEKS                       R5 R0 K3 ["messageId"]
       76 CALL                             R3 2 0
       77 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIF                           R2 ; [+4]
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K2 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+22]
       18 GETTABLEKS                       R2 R0 K4 ["andThen"]
       20 FASTCALL1                        TYPEOF R2 ; [+3]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K2 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+9]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R1
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R3 R0 K4 ["andThen"]
       33 CALL                             R3 3 0
       34 RETURN                           R0 0
       35 MOVE                             R3 R1
       36 MOVE                             R4 R0
       37 CALL                             R3 1 0
       38 RETURN                           R0 0
       39 MOVE                             R2 R1
       40 LOADNIL                          R3
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIFNOT                        R0 ; [+32]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETTABLEKS                       R5 R4 K2 ["didFinish"]
       15 JUMPIF                           R5 ; [+11]
       16 GETIMPORT                        R5 K5 [task.cancel]
       18 GETTABLEKS                       R6 R4 K6 ["thread"]
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K7 ["flushEntry"]
       24 GETTABLEKS                       R6 R4 K8 ["captured"]
       26 CALL                             R5 1 0
       27 FORGLOOP                         R0 2 ; [-15]
       29 GETUPVAL                         R0 2
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K1 ["current"]
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K9 ["flushPending"]
       37 CALL                             R0 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 4
       40 GETTABLEKS                       R0 R0 K1 ["current"]
       42 JUMPIFNOT                        R0 ; [+10]
       43 GETIMPORT                        R0 K5 [task.cancel]
       45 GETUPVAL                         R1 4
       46 GETTABLEKS                       R1 R1 K1 ["current"]
       48 CALL                             R0 1 0
       49 GETUPVAL                         R0 4
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K1 ["current"]
       53 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["after prompt"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIFNOT                        R0 ; [+2]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFNOT                        R0 ; [+2]
       13 GETUPVAL                         R1 3
       14 NOT                              R0 R1
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R2 3
       17 SETTABLEKS                       R2 R1 K1 ["current"]
       19 JUMPIF                           R0 ; [+2]
       20 LOADNIL                          R1
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K1 ["current"]
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETIMPORT                        R1 K4 [task.cancel]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K1 ["current"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 4
       33 GETIMPORT                        R2 K6 [task.delay]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["FIntAssistantPostTurnRefreshDelaySeconds"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R1 K1 ["current"]
       44 LOADNIL                          R1
       45 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["didFinish"]
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 0
       13 JUMPIFEQ                         R5 R6 ; [+8]
       15 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R5
       19 GETIMPORT                        R6 K4 [table.insert]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-11]
       24 GETUPVAL                         R1 1
       25 SETTABLEKS                       R0 R1 K1 ["current"]
       27 GETIMPORT                        R1 K6 [pcall]
       29 GETUPVAL                         R2 2
       30 LOADK                            R3 K7 ["after prompt"]
       31 CALL                             R1 2 2
       32 GETUPVAL                         R3 3
       33 JUMPIFNOT                        R3 ; [+12]
       34 JUMPIF                           R1 ; [+5]
       35 GETUPVAL                         R3 4
       36 GETUPVAL                         R4 3
       37 LOADNIL                          R5
       38 CALL                             R3 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 5
       41 MOVE                             R4 R2
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U3
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIF                           R0 ; [+2]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K1 ["current"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R0 R2 K1 ["current"]
       18 NEWTABLE                         R2 0 0
       20 MOVE                             R3 R1
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 JUMPIFNOT                        R7 ; [+9]
       25 GETTABLE                         R8 R0 R6
       26 JUMPIF                           R8 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R6
       31 GETIMPORT                        R8 K4 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 2 ; [-11]
       36 LENGTH                           R3 R2
       37 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K6 ["take"]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 1
       50 DUPTABLE                         R9 K12 [{["didFinish"] = False, ["captured"], ["thread"] = }]
       51 SETTABLEKS                       R8 R9 K9 ["captured"]
       53 GETIMPORT                        R10 K15 [task.delay]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R11 R11 K16 ["FIntAssistantPostTurnRefreshDelaySeconds"]
       58 NEWCLOSURE                       R12 P0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U9
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K10 ["thread"]
       68 GETUPVAL                         R11 6
       69 GETTABLEKS                       R11 R11 K1 ["current"]
       71 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       73 MOVE                             R12 R9
       74 GETIMPORT                        R10 K4 [table.insert]
       76 CALL                             R10 2 0
       77 FORGLOOP                         R3 2 ; [-33]
       79 LOADNIL                          R3
       80 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["useContext"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["Context"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["useContext"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K1 ["Context"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K2 ["refreshQuotaSummary"]
       20 GETTABLEKS                       R3 R1 K3 ["reasonDisabled"]
       22 GETTABLEKS                       R4 R1 K4 ["allThreadInputStates"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["useRef"]
       27 LOADB                            R6 0
       28 JUMPIFEQKNIL                     R3 ; [+10]
       30 GETTABLEKS                       R7 R3 K3 ["reasonDisabled"]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K6 ["Generation"]
       35 JUMPIFEQ                         R7 R8 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K5 ["useRef"]
       43 NEWTABLE                         R7 0 0
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K5 ["useRef"]
       49 LOADNIL                          R8
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K5 ["useRef"]
       54 NEWTABLE                         R9 0 0
       56 CALL                             R8 1 1
       57 LOADB                            R9 0
       58 JUMPIFEQKNIL                     R3 ; [+10]
       60 GETTABLEKS                       R10 R3 K3 ["reasonDisabled"]
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R11 R11 K6 ["Generation"]
       65 JUMPIFEQ                         R10 R11 ; [+2]
       67 LOADB                            R9 0 +1
       68 LOADB                            R9 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       72 NEWCLOSURE                       R11 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R7
       78 NEWTABLE                         R12 0 0
       80 CALL                             R10 2 0
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       84 NEWCLOSURE                       R11 P1
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R12 0 2
       93 MOVE                             R13 R9
       94 MOVE                             R14 R2
       95 SETLIST                          R12 R13 2 [1]
       97 CALL                             R10 2 0
       98 GETUPVAL                         R10 1
       99 GETTABLEKS                       R10 R10 K7 ["useEffect"]
      101 NEWCLOSURE                       R11 P2
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 NEWTABLE                         R12 0 2
      114 MOVE                             R13 R4
      115 MOVE                             R14 R2
      116 SETLIST                          R12 R13 2 [1]
      118 CALL                             R10 2 0
      119 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K10 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["FlagUtils"]
       41 GETTABLEKS                       R6 R6 K14 ["getIsCreditMeteringEnabled"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Util"]
       48 GETTABLEKS                       R7 R7 K16 ["pendingCreditMeteringJourney"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K17 ["InputDisabledReasons"]
       53 DUPCLOSURE                       R8 K18 [PROTO_0]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R9 K19 [PROTO_1]
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R10 K20 [PROTO_2]
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R11 K21 [PROTO_3]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R12 K22 [PROTO_6]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 DUPCLOSURE                       R13 K23 [PROTO_14]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 RETURN                           R13 1
