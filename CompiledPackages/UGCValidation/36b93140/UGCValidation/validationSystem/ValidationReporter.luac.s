PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQ                      R1 R0 ; [+3]
        4 LOADK                            R2 K0 [""]
        5 RETURN                           R2 1
        6 NAMECALL                         R5 R0 K1 ["GetFullName"]
        8 CALL                             R5 1 1
        9 MOVE                             R3 R5
       10 LOADK                            R4 K2 ["."]
       11 CONCAT                           R2 R3 R4
       12 NAMECALL                         R3 R1 K1 ["GetFullName"]
       14 CALL                             R3 1 1
       15 LOADN                            R8 1
       16 LENGTH                           R9 R2
       17 FASTCALL3                        STRING_SUB R3 R8 R9
       19 MOVE                             R7 R3
       20 GETIMPORT                        R6 K5 [string.sub]
       22 CALL                             R6 3 1
       23 JUMPIFEQ                         R6 R2 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 LOADK                            R7 K6 ["instance %* is not a descendant of root %*"]
       28 MOVE                             R9 R3
       29 NAMECALL                         R10 R0 K1 ["GetFullName"]
       31 CALL                             R10 1 1
       32 NAMECALL                         R7 R7 K7 ["format"]
       34 CALL                             R7 3 1
       35 MOVE                             R6 R7
       36 FASTCALL2                        ASSERT R5 R6 ; [+3]
       38 GETIMPORT                        R4 K9 [assert]
       40 CALL                             R4 2 0
       41 LENGTH                           R7 R2
       42 ADDK                             R6 R7 K10 [1]
       43 FASTCALL2                        STRING_SUB R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K5 [string.sub]
       48 CALL                             R4 2 1
       49 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_testEnum"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["Status"]
       13 GETTABLEKS                       R3 R3 K4 ["CANNOT_START"]
       15 SETTABLEKS                       R3 R2 K5 ["_status"]
       17 LOADK                            R3 K6 [""]
       18 SETTABLEKS                       R3 R2 K7 ["_telemetryContext"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K8 ["_currentInstance"]
       23 GETUPVAL                         R3 2
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+20]
       26 FASTCALL2K                       ASSERT R1 K9 ; [+5]
       28 MOVE                             R4 R1
       29 LOADK                            R5 K9 ["ValidationReporter.new requires sharedData"]
       30 GETIMPORT                        R3 K11 [assert]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R1 K12 ["rootInstance"]
       35 SETTABLEKS                       R3 R2 K13 ["_rootInstance"]
       37 NEWTABLE                         R3 0 0
       39 SETTABLEKS                       R3 R2 K14 ["_failures"]
       41 NEWTABLE                         R3 0 0
       43 SETTABLEKS                       R3 R2 K15 ["_warnings"]
       45 RETURN                           R2 1
       46 NEWTABLE                         R3 0 0
       48 SETTABLEKS                       R3 R2 K16 ["_failureMessages"]
       50 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["_startTime"]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K4 ["Status"]
       11 GETTABLEKS                       R1 R1 K5 ["IN_PROGRESS"]
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["Status"]
       17 GETTABLEKS                       R1 R1 K6 ["PASS"]
       19 SETTABLEKS                       R1 R0 K7 ["_status"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K0 ["_currentInstance"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Status"]
        3 GETTABLEKS                       R4 R4 K1 ["FAIL"]
        5 SETTABLEKS                       R4 R0 K2 ["_status"]
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+27]
       10 GETTABLEKS                       R5 R0 K3 ["_failures"]
       12 DUPTABLE                         R6 K7 [{"failureStringKey", "failureStringParams", "instancePath"}]
       13 SETTABLEKS                       R1 R6 K4 ["failureStringKey"]
       15 MOVE                             R7 R2
       16 JUMPIF                           R7 ; [+2]
       17 NEWTABLE                         R7 0 0
       19 SETTABLEKS                       R7 R6 K5 ["failureStringParams"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R8 R0 K8 ["_rootInstance"]
       24 MOVE                             R9 R3
       25 JUMPIF                           R9 ; [+2]
       26 GETTABLEKS                       R9 R0 K9 ["_currentInstance"]
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K6 ["instancePath"]
       31 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       33 GETIMPORT                        R4 K12 [table.insert]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R5 R0 K13 ["_failureMessages"]
       39 NEWTABLE                         R6 2 0
       41 SETTABLEKS                       R1 R6 K14 ["key"]
       43 MOVE                             R7 R2
       44 JUMPIF                           R7 ; [+2]
       45 NEWTABLE                         R7 0 0
       47 SETTABLEKS                       R7 R6 K15 ["params"]
       49 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       51 GETIMPORT                        R4 K12 [table.insert]
       53 CALL                             R4 2 0
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R5 R0 K0 ["_warnings"]
        6 DUPTABLE                         R6 K4 [{"failureStringKey", "failureStringParams", "instancePath"}]
        7 SETTABLEKS                       R1 R6 K1 ["failureStringKey"]
        9 MOVE                             R7 R2
       10 JUMPIF                           R7 ; [+2]
       11 NEWTABLE                         R7 0 0
       13 SETTABLEKS                       R7 R6 K2 ["failureStringParams"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R8 R0 K5 ["_rootInstance"]
       18 MOVE                             R9 R3
       19 JUMPIF                           R9 ; [+2]
       20 GETTABLEKS                       R9 R0 K6 ["_currentInstance"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K3 ["instancePath"]
       25 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       27 GETIMPORT                        R4 K9 [table.insert]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [error]
        2 DUPTABLE                         R3 K5 [{["__forceError"] = True, ["message"]}]
        3 SETTABLEKS                       R1 R3 K4 ["message"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [error]
        2 DUPTABLE                         R3 K5 [{["__fetchError"] = True, ["message"]}]
        3 SETTABLEKS                       R1 R3 K4 ["message"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_8:
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
       18 SETTABLEKS                       R1 R0 K8 ["_telemetryContext"]
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+9]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R0 K9 ["_failures"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R0 K10 ["_warnings"]
       31 RETURN                           R0 0
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R0 K11 ["_failureMessages"]
       36 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_startTime"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 LOADN                            R2 1000
        5 GETIMPORT                        R4 K3 [os.clock]
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R5 R0 K0 ["_startTime"]
       10 SUB                              R3 R4 R5
       11 MUL                              R1 R2 R3
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+63]
       15 GETTABLEKS                       R2 R0 K4 ["_status"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["Status"]
       20 GETTABLEKS                       R3 R3 K6 ["IN_PROGRESS"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+8]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K5 ["Status"]
       27 GETTABLEKS                       R2 R2 K7 ["PASS"]
       29 SETTABLEKS                       R2 R0 K4 ["_status"]
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 JUMPIFNOT                        R2 ; [+20]
       34 GETTABLEKS                       R2 R0 K4 ["_status"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K5 ["Status"]
       39 GETTABLEKS                       R3 R3 K7 ["PASS"]
       41 JUMPIFEQ                         R2 R3 ; [+12]
       43 GETIMPORT                        R2 K9 [print]
       45 LOADK                            R3 K10 ["Reporting:"]
       46 GETTABLEKS                       R4 R0 K11 ["_testEnum"]
       48 LOADK                            R5 K12 ["has status"]
       49 GETTABLEKS                       R6 R0 K4 ["_status"]
       51 LOADK                            R7 K13 ["in"]
       52 MOVE                             R8 R1
       53 CALL                             R2 6 0
       54 DUPTABLE                         R2 K20 [{"validationEnum", "status", "failures", "warnings", "duration", "telemetryContext"}]
       55 GETTABLEKS                       R3 R0 K11 ["_testEnum"]
       57 SETTABLEKS                       R3 R2 K14 ["validationEnum"]
       59 GETTABLEKS                       R3 R0 K4 ["_status"]
       61 SETTABLEKS                       R3 R2 K15 ["status"]
       63 GETTABLEKS                       R3 R0 K21 ["_failures"]
       65 SETTABLEKS                       R3 R2 K16 ["failures"]
       67 GETTABLEKS                       R3 R0 K22 ["_warnings"]
       69 SETTABLEKS                       R3 R2 K17 ["warnings"]
       71 SETTABLEKS                       R1 R2 K18 ["duration"]
       73 GETTABLEKS                       R3 R0 K23 ["_telemetryContext"]
       75 SETTABLEKS                       R3 R2 K19 ["telemetryContext"]
       77 RETURN                           R2 1
       78 GETUPVAL                         R2 2
       79 CALL                             R2 0 1
       80 JUMPIFNOT                        R2 ; [+20]
       81 GETTABLEKS                       R2 R0 K4 ["_status"]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K5 ["Status"]
       86 GETTABLEKS                       R3 R3 K7 ["PASS"]
       88 JUMPIFEQ                         R2 R3 ; [+12]
       90 GETIMPORT                        R2 K9 [print]
       92 LOADK                            R3 K10 ["Reporting:"]
       93 GETTABLEKS                       R4 R0 K11 ["_testEnum"]
       95 LOADK                            R5 K12 ["has status"]
       96 GETTABLEKS                       R6 R0 K4 ["_status"]
       98 LOADK                            R7 K13 ["in"]
       99 MOVE                             R8 R1
      100 CALL                             R2 6 0
      101 DUPTABLE                         R2 K25 [{"validationEnum", "status", "errorTranslationContexts", "duration", "telemetryContext"}]
      102 GETTABLEKS                       R3 R0 K11 ["_testEnum"]
      104 SETTABLEKS                       R3 R2 K14 ["validationEnum"]
      106 GETTABLEKS                       R3 R0 K4 ["_status"]
      108 SETTABLEKS                       R3 R2 K15 ["status"]
      110 GETTABLEKS                       R3 R0 K26 ["_failureMessages"]
      112 SETTABLEKS                       R3 R2 K24 ["errorTranslationContexts"]
      114 SETTABLEKS                       R1 R2 K18 ["duration"]
      116 GETTABLEKS                       R3 R0 K23 ["_telemetryContext"]
      118 SETTABLEKS                       R3 R2 K19 ["telemetryContext"]
      120 RETURN                           R2 1

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
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 NEWTABLE                         R6 16 0
       38 SETTABLEKS                       R6 R6 K13 ["__index"]
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R7 R6 K15 ["new"]
       46 DUPCLOSURE                       R7 K16 [PROTO_2]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R7 R6 K17 ["begin"]
       51 DUPCLOSURE                       R7 K18 [PROTO_3]
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R7 R6 K19 ["setReportingInstance"]
       55 DUPCLOSURE                       R7 K20 [PROTO_4]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R7 R6 K21 ["fail"]
       61 DUPCLOSURE                       R7 K22 [PROTO_5]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R7 R6 K23 ["warn"]
       66 DUPCLOSURE                       R7 K24 [PROTO_6]
       67 SETTABLEKS                       R7 R6 K25 ["forceError"]
       69 DUPCLOSURE                       R7 K26 [PROTO_7]
       70 SETTABLEKS                       R7 R6 K27 ["fetchError"]
       72 DUPCLOSURE                       R7 K28 [PROTO_8]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R7 R6 K29 ["err"]
       78 DUPCLOSURE                       R7 K30 [PROTO_9]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R7 R6 K31 ["complete"]
       84 RETURN                           R6 1
