PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 SETTABLEKS                       R0 R1 K0 ["_testEnum"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Status"]
        7 GETTABLEKS                       R2 R2 K2 ["CANNOT_START"]
        9 SETTABLEKS                       R2 R1 K3 ["_status"]
       11 LOADK                            R2 K4 [""]
       12 SETTABLEKS                       R2 R1 K5 ["_telemetryContext"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K6 ["_failureMessages"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K7 ["_internalData"]
       22 GETUPVAL                         R4 1
       23 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K9 [setmetatable]
       28 CALL                             R2 2 1
       29 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["_startTime"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["Status"]
        8 GETTABLEKS                       R1 R1 K5 ["PASS"]
       10 SETTABLEKS                       R1 R0 K6 ["_status"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["Status"]
        3 GETTABLEKS                       R5 R5 K1 ["FAIL"]
        5 SETTABLEKS                       R5 R0 K2 ["_status"]
        7 GETTABLEKS                       R6 R0 K3 ["_internalData"]
        9 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       11 MOVE                             R7 R3
       12 GETIMPORT                        R5 K6 [table.insert]
       14 CALL                             R5 2 0
       15 GETTABLEKS                       R6 R0 K7 ["_failureMessages"]
       17 NEWTABLE                         R7 2 0
       19 SETTABLEKS                       R1 R7 K8 ["key"]
       21 MOVE                             R8 R2
       22 JUMPIF                           R8 ; [+2]
       23 NEWTABLE                         R8 0 0
       25 SETTABLEKS                       R8 R7 K9 ["params"]
       27 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       29 GETIMPORT                        R5 K6 [table.insert]
       31 CALL                             R5 2 0
       32 JUMPIFEQKNIL                     R4 ; [+11]
       34 LOADK                            R6 K10 ["%* -- %*"]
       35 MOVE                             R8 R4
       36 GETTABLEKS                       R9 R0 K11 ["_telemetryContext"]
       38 NAMECALL                         R6 R6 K12 ["format"]
       40 CALL                             R6 3 1
       41 MOVE                             R5 R6
       42 SETTABLEKS                       R5 R0 K11 ["_telemetryContext"]
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETIMPORT                        R2 K1 [print]
        5 LOADK                            R3 K2 ["Reporting:"]
        6 GETTABLEKS                       R4 R0 K3 ["_testEnum"]
        8 LOADK                            R5 K4 ["has error:"]
        9 MOVE                             R6 R1
       10 CALL                             R2 4 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K5 ["Status"]
       14 GETTABLEKS                       R2 R2 K6 ["ERROR"]
       16 SETTABLEKS                       R2 R0 K7 ["_status"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R0 K8 ["_internalData"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R0 K9 ["_failureMessages"]
       26 SETTABLEKS                       R1 R0 K10 ["_telemetryContext"]
       28 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_startTime"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 LOADN                            R2 232
        5 GETIMPORT                        R4 K3 [os.clock]
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R5 R0 K0 ["_startTime"]
       10 SUB                              R3 R4 R5
       11 MUL                              R1 R2 R3
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+11]
       15 GETIMPORT                        R2 K5 [print]
       17 LOADK                            R3 K6 ["Reporting:"]
       18 GETTABLEKS                       R4 R0 K7 ["_testEnum"]
       20 LOADK                            R5 K8 ["has status"]
       21 GETTABLEKS                       R6 R0 K9 ["_status"]
       23 LOADK                            R7 K10 ["in"]
       24 MOVE                             R8 R1
       25 CALL                             R2 6 0
       26 DUPTABLE                         R2 K17 [{"validationEnum", "status", "errorTranslationContexts", "internalData", "duration", "telemetryContext"}]
       27 GETTABLEKS                       R3 R0 K7 ["_testEnum"]
       29 SETTABLEKS                       R3 R2 K11 ["validationEnum"]
       31 GETTABLEKS                       R3 R0 K9 ["_status"]
       33 SETTABLEKS                       R3 R2 K12 ["status"]
       35 GETTABLEKS                       R3 R0 K18 ["_failureMessages"]
       37 SETTABLEKS                       R3 R2 K13 ["errorTranslationContexts"]
       39 GETTABLEKS                       R3 R0 K19 ["_internalData"]
       41 SETTABLEKS                       R3 R2 K14 ["internalData"]
       43 SETTABLEKS                       R1 R2 K15 ["duration"]
       45 GETTABLEKS                       R3 R0 K20 ["_telemetryContext"]
       47 SETTABLEKS                       R3 R2 K16 ["telemetryContext"]
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 SETTABLEKS                       R4 R4 K11 ["__index"]
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R5 R4 K13 ["new"]
       37 DUPCLOSURE                       R5 K14 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K15 ["begin"]
       41 DUPCLOSURE                       R5 K16 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K17 ["fail"]
       45 DUPCLOSURE                       R5 K18 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R4 K19 ["err"]
       50 DUPCLOSURE                       R5 K20 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R5 R4 K21 ["complete"]
       54 RETURN                           R4 1
