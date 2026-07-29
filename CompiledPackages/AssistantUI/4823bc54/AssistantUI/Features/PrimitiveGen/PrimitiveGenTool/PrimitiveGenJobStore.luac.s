PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["printToStudioLogAsync"]
        6 LOADK                            R2 K2 ["[PrimitiveGenJobStore] "]
        7 GETUPVAL                         R3 1
        8 CONCAT                           R1 R2 R3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["FFlagDebugLogAssistantUI"]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETIMPORT                        R1 K4 [print]
       12 LOADK                            R3 K5 ["[PrimitiveGenJobStore] "]
       13 MOVE                             R4 R0
       14 CONCAT                           R2 R3 R4
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["logs"]
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K0 ["logs"]
        7 GETUPVAL                         R2 0
        8 SETTABLE                         R1 R2 R0
        9 LOADK                            R3 K1 ["setJob "]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K2 [" "]
       12 GETTABLEKS                       R6 R1 K3 ["status"]
       14 CONCAT                           R2 R3 R6
       15 GETIMPORT                        R3 K5 [pcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K6 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETIMPORT                        R3 K8 [print]
       27 LOADK                            R5 K9 ["[PrimitiveGenJobStore] "]
       28 MOVE                             R6 R2
       29 CONCAT                           R4 R5 R6
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["appendLog"]
        1 MOVE                             R4 R0
        2 LOADK                            R5 K1 [" "]
        3 MOVE                             R6 R1
        4 CONCAT                           R2 R3 R6
        5 GETIMPORT                        R3 K3 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R2
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["FFlagDebugLogAssistantUI"]
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETIMPORT                        R3 K6 [print]
       17 LOADK                            R5 K7 ["[PrimitiveGenJobStore] "]
       18 MOVE                             R6 R2
       19 CONCAT                           R4 R5 R6
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 GETTABLE                         R2 R3 R0
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R2 K8 ["logs"]
       27 DUPTABLE                         R5 K11 [{"timestamp", "message"}]
       28 GETIMPORT                        R6 K14 [os.clock]
       30 CALL                             R6 0 1
       31 SETTABLEKS                       R6 R5 K9 ["timestamp"]
       33 SETTABLEKS                       R1 R5 K10 ["message"]
       35 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       37 GETIMPORT                        R3 K17 [table.insert]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["updateJobStatus "]
        1 MOVE                             R5 R0
        2 LOADK                            R6 K1 [" "]
        3 MOVE                             R7 R1
        4 LOADK                            R8 K1 [" "]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K2 ["toString"]
        8 MOVE                             R10 R2
        9 CALL                             R9 1 1
       10 CONCAT                           R3 R4 R9
       11 GETIMPORT                        R4 K4 [pcall]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K5 ["FFlagDebugLogAssistantUI"]
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETIMPORT                        R4 K7 [print]
       23 LOADK                            R6 K8 ["[PrimitiveGenJobStore] "]
       24 MOVE                             R7 R3
       25 CONCAT                           R5 R6 R7
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 3
       28 GETTABLE                         R3 R4 R0
       29 JUMPIF                           R3 ; [+1]
       30 RETURN                           R0 0
       31 SETTABLEKS                       R1 R3 K9 ["status"]
       33 JUMPIFNOT                        R2 ; [+7]
       34 MOVE                             R4 R2
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 SETTABLE                         R8 R3 R7
       39 FORGLOOP                         R4 2 ; [-2]
       41 LOADK                            R5 K10 ["Status changed to %*"]
       42 MOVE                             R7 R1
       43 NAMECALL                         R5 R5 K11 ["format"]
       45 CALL                             R5 2 1
       46 MOVE                             R4 R5
       47 JUMPIFNOT                        R2 ; [+11]
       48 GETTABLEKS                       R5 R2 K12 ["errorMessage"]
       50 JUMPIFNOT                        R5 ; [+8]
       51 LOADK                            R5 K13 ["%*: %*"]
       52 MOVE                             R7 R4
       53 GETTABLEKS                       R8 R2 K12 ["errorMessage"]
       55 NAMECALL                         R5 R5 K11 ["format"]
       57 CALL                             R5 3 1
       58 MOVE                             R4 R5
       59 JUMPIFNOT                        R2 ; [+11]
       60 GETTABLEKS                       R5 R2 K14 ["serverStage"]
       62 JUMPIFNOT                        R5 ; [+8]
       63 LOADK                            R5 K15 ["%* (stage: %*)"]
       64 MOVE                             R7 R4
       65 GETTABLEKS                       R8 R2 K14 ["serverStage"]
       67 NAMECALL                         R5 R5 K11 ["format"]
       69 CALL                             R5 3 1
       70 MOVE                             R4 R5
       71 GETUPVAL                         R5 4
       72 MOVE                             R6 R0
       73 MOVE                             R7 R4
       74 CALL                             R5 2 0
       75 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R2 K0 ["removeJob "]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETIMPORT                        R2 K2 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["FFlagDebugLogAssistantUI"]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETIMPORT                        R2 K5 [print]
       15 LOADK                            R4 K6 ["[PrimitiveGenJobStore] "]
       16 MOVE                             R5 R1
       17 CONCAT                           R3 R4 R5
       18 CALL                             R2 1 0
       19 GETUPVAL                         R1 2
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R1 R0
       22 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R8 R5 K0 ["status"]
        8 GETTABLE                         R6 R7 R8
        9 JUMPIF                           R6 ; [+1]
       10 ADDK                             R0 R0 K1 [1]
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 1

PROTO_8:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["ToolUtils"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K18 [{["Submitted"] = "Submitted", ["Polling"] = "Polling", ["Downloading"] = "Downloading", ["Inserting"] = "Inserting", ["Completed"] = "Completed", ["Failed"] = "Failed", ["Cancelled"] = "Cancelled"}]
       27 NEWTABLE                         R5 0 0
       29 DUPCLOSURE                       R6 K19 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 DUPCLOSURE                       R7 K20 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R8 K21 [PROTO_3]
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R9 K22 [PROTO_4]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 DUPCLOSURE                       R10 K23 [PROTO_5]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R9
       48 DUPCLOSURE                       R11 K24 [PROTO_6]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R12 4 0
       54 GETTABLEKS                       R13 R4 K15 ["Completed"]
       56 LOADB                            R14 1
       57 SETTABLE                         R14 R12 R13
       58 GETTABLEKS                       R13 R4 K16 ["Failed"]
       60 LOADB                            R14 1
       61 SETTABLE                         R14 R12 R13
       62 GETTABLEKS                       R13 R4 K17 ["Cancelled"]
       64 LOADB                            R14 1
       65 SETTABLE                         R14 R12 R13
       66 GETTABLEKS                       R13 R4 K14 ["Inserting"]
       68 LOADB                            R14 1
       69 SETTABLE                         R14 R12 R13
       70 DUPCLOSURE                       R13 K25 [PROTO_7]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R12
       73 DUPCLOSURE                       R14 K26 [PROTO_8]
       74 CAPTURE                          VAL R5
       75 DUPTABLE                         R15 K35 [{"JobStatus", "setJob", "getJob", "updateJobStatus", "appendLog", "removeJob", "getActiveJobCount", "clear"}]
       76 SETTABLEKS                       R4 R15 K27 ["JobStatus"]
       78 SETTABLEKS                       R7 R15 K28 ["setJob"]
       80 SETTABLEKS                       R8 R15 K29 ["getJob"]
       82 SETTABLEKS                       R10 R15 K30 ["updateJobStatus"]
       84 SETTABLEKS                       R9 R15 K31 ["appendLog"]
       86 SETTABLEKS                       R11 R15 K32 ["removeJob"]
       88 SETTABLEKS                       R13 R15 K33 ["getActiveJobCount"]
       90 SETTABLEKS                       R14 R15 K34 ["clear"]
       92 RETURN                           R15 1
