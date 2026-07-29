PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TelemetryService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R0 K1 [warn]
        8 LOADK                            R2 K2 ["TelemetryServiceInterface.%* called without TelemetryService available"]
        9 GETUPVAL                         R4 1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 CLOSEUPVALS                      R1
        5 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [string.match]
        6 GETTABLEKS                       R3 R0 K6 ["lastUpdated"]
        8 LOADK                            R4 K7 ["^([0-9][0-9][0-9][0-9])%-([0-9][0-9])%-([0-9][0-9])$"]
        9 CALL                             R2 2 3
       10 MOVE                             R5 R2
       11 JUMPIFNOT                        R5 ; [+5]
       12 FASTCALL1                        TONUMBER R2 ; [+3]
       13 MOVE                             R6 R2
       14 GETIMPORT                        R5 K9 [tonumber]
       16 CALL                             R5 1 1
       17 MOVE                             R6 R3
       18 JUMPIFNOT                        R6 ; [+5]
       19 FASTCALL1                        TONUMBER R3 ; [+3]
       20 MOVE                             R7 R3
       21 GETIMPORT                        R6 K9 [tonumber]
       23 CALL                             R6 1 1
       24 MOVE                             R7 R4
       25 JUMPIFNOT                        R7 ; [+5]
       26 FASTCALL1                        TONUMBER R4 ; [+3]
       27 MOVE                             R8 R4
       28 GETIMPORT                        R7 K9 [tonumber]
       30 CALL                             R7 1 1
       31 JUMPIFEQKNIL                     R5 ; [+5]
       33 JUMPIFEQKNIL                     R6 ; [+3]
       35 JUMPIFNOTEQKNIL                  R7 ; [+6]
       37 GETIMPORT                        R8 K11 [error]
       39 LOADK                            R9 K12 ["Invalid date, expected ISO-8601 (YYYY-MM-DD)"]
       40 CALL                             R8 1 0
       41 RETURN                           R1 1
       42 LOADN                            R8 12
       43 JUMPIFLT                         R8 R6 ; [+4]
       45 LOADN                            R8 31
       46 JUMPIFNOTLT                      R8 R7 ; [+6]
       48 GETIMPORT                        R8 K11 [error]
       50 LOADK                            R9 K13 ["Invalid date, you probably flipped the month and day around. YYYY-MM-DD"]
       51 CALL                             R8 1 0
       52 RETURN                           R1 1
       53 NEWTABLE                         R8 0 3
       55 SUBK                             R9 R5 K14 [2000]
       56 MOVE                             R10 R6
       57 MOVE                             R11 R7
       58 SETLIST                          R8 R9 3 [1]
       60 SETTABLEKS                       R8 R1 K6 ["lastUpdated"]
       62 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 DUPTABLE                         R6 K1 [{"customFields"}]
        5 SETTABLEKS                       R1 R6 K0 ["customFields"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R3 R3 K2 ["LogCounter"]
       10 CALL                             R3 4 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 DUPTABLE                         R5 K2 [{"customFields", "standardizedFields"}]
        5 SETTABLEKS                       R1 R5 K0 ["customFields"]
        7 NEWTABLE                         R6 0 6
        9 LOADK                            R7 K3 ["addPlaceId"]
       10 LOADK                            R8 K4 ["addUniverseId"]
       11 LOADK                            R9 K5 ["addPlaceInstanceId"]
       12 LOADK                            R10 K6 ["addSessionId"]
       13 LOADK                            R11 K7 ["addOSInfo"]
       14 LOADK                            R12 K8 ["addSessionInfo"]
       15 SETLIST                          R6 R7 6 [1]
       17 SETTABLEKS                       R6 R5 K1 ["standardizedFields"]
       19 NAMECALL                         R2 R2 K9 ["LogEvent"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 DUPTABLE                         R6 K1 [{"customFields"}]
        5 SETTABLEKS                       R1 R6 K0 ["customFields"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R3 R3 K2 ["LogStat"]
       10 CALL                             R3 4 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AnalyticsTypes"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [pcall]
       12 DUPCLOSURE                       R2 K8 [PROTO_0]
       13 CALL                             R1 1 2
       14 JUMPIFNOT                        R1 ; [+2]
       15 MOVE                             R3 R2
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFNOTEQKNIL                  R3 ; [+28]
       20 DUPCLOSURE                       R4 K9 [PROTO_2]
       21 DUPTABLE                         R5 K13 [{"logEvent", "logCounter", "logStat"}]
       22 LOADB                            R7 0
       23 LOADK                            R8 K10 ["logEvent"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          REF R7
       26 CAPTURE                          VAL R8
       27 CLOSEUPVALS                      R7
       28 SETTABLEKS                       R6 R5 K10 ["logEvent"]
       30 LOADB                            R7 0
       31 LOADK                            R8 K11 ["logCounter"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          REF R7
       34 CAPTURE                          VAL R8
       35 CLOSEUPVALS                      R7
       36 SETTABLEKS                       R6 R5 K11 ["logCounter"]
       38 LOADB                            R7 0
       39 LOADK                            R8 K12 ["logStat"]
       40 NEWCLOSURE                       R6 P2
       41 CAPTURE                          REF R7
       42 CAPTURE                          VAL R8
       43 CLOSEUPVALS                      R7
       44 SETTABLEKS                       R6 R5 K12 ["logStat"]
       46 RETURN                           R5 1
       47 DUPCLOSURE                       R4 K14 [PROTO_3]
       48 DUPCLOSURE                       R5 K15 [PROTO_4]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 DUPCLOSURE                       R6 K16 [PROTO_5]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R7 K17 [PROTO_6]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 DUPTABLE                         R8 K18 [{"logCounter", "logEvent", "logStat"}]
       58 SETTABLEKS                       R5 R8 K11 ["logCounter"]
       60 SETTABLEKS                       R6 R8 K10 ["logEvent"]
       62 SETTABLEKS                       R7 R8 K12 ["logStat"]
       64 RETURN                           R8 1
