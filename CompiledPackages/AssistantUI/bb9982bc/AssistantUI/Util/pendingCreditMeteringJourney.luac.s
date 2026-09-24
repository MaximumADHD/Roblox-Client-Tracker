PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["log"]
        4 GETTABLEKS                       R2 R0 K1 ["data"]
        6 GETTABLEKS                       R3 R0 K2 ["messageId"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 SETTABLE                         R3 R2 R0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCreditMeteringTelemetry"]
       11 JUMPIF                           R2 ; [+11]
       12 JUMPIF                           R1 ; [+1]
       13 JUMP                             ; [+7]
       14 GETTABLEKS                       R2 R1 K1 ["log"]
       16 GETTABLEKS                       R3 R1 K2 ["data"]
       18 GETTABLEKS                       R4 R1 K3 ["messageId"]
       20 CALL                             R2 2 0
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIF                           R1 ; [+10]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K1 ["log"]
       11 GETTABLEKS                       R2 R0 K2 ["data"]
       13 GETTABLEKS                       R3 R0 K3 ["messageId"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K2 ["data"]
       19 GETTABLEKS                       R1 R1 K4 ["threadId"]
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K6 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K7 ["string"] ; [+3]
       28 JUMPIFNOTEQKS                    R1 K8 [""] ; [+11]
       30 JUMPIF                           R0 ; [+1]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R0 K1 ["log"]
       34 GETTABLEKS                       R3 R0 K2 ["data"]
       36 GETTABLEKS                       R4 R0 K3 ["messageId"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 2
       41 GETTABLE                         R2 R3 R1
       42 JUMPIFNOT                        R2 ; [+11]
       43 GETUPVAL                         R3 2
       44 GETTABLE                         R2 R3 R1
       45 JUMPIF                           R2 ; [+1]
       46 JUMP                             ; [+7]
       47 GETTABLEKS                       R3 R2 K1 ["log"]
       49 GETTABLEKS                       R4 R2 K2 ["data"]
       51 GETTABLEKS                       R5 R2 K3 ["messageId"]
       53 CALL                             R3 2 0
       54 GETUPVAL                         R2 2
       55 SETTABLE                         R0 R2 R1
       56 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 JUMPIF                           R5 ; [+1]
        9 JUMP                             ; [+7]
       10 GETTABLEKS                       R6 R5 K0 ["log"]
       12 GETTABLEKS                       R7 R5 K1 ["data"]
       14 GETTABLEKS                       R8 R5 K2 ["messageId"]
       16 CALL                             R6 2 0
       17 FORGLOOP                         R1 2 ; [-10]
       19 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["FlagUtils"]
       21 GETTABLEKS                       R4 R4 K9 ["getIsCreditMeteringEnabled"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 0 0
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 NEWCLOSURE                       R7 P2
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 NEWCLOSURE                       R8 P3
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          REF R4
       38 NEWCLOSURE                       R9 P4
       39 CAPTURE                          REF R4
       40 NEWCLOSURE                       R10 P5
       41 CAPTURE                          REF R4
       42 DUPTABLE                         R11 K17 [{"defer", "take", "flushEntry", "flushPending", "reset"}]
       43 SETTABLEKS                       R8 R11 K12 ["defer"]
       45 SETTABLEKS                       R7 R11 K13 ["take"]
       47 SETTABLEKS                       R6 R11 K14 ["flushEntry"]
       49 SETTABLEKS                       R9 R11 K15 ["flushPending"]
       51 SETTABLEKS                       R10 R11 K16 ["reset"]
       53 CLOSEUPVALS                      R4
       54 RETURN                           R11 1
