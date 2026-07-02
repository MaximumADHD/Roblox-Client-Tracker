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
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETIMPORT                        R1 K3 [print]
       11 LOADK                            R3 K4 ["[PrimitiveGenJobStore] "]
       12 MOVE                             R4 R0
       13 CONCAT                           R2 R3 R4
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

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
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+6]
       24 GETIMPORT                        R3 K7 [print]
       26 LOADK                            R5 K8 ["[PrimitiveGenJobStore] "]
       27 MOVE                             R6 R2
       28 CONCAT                           R4 R5 R6
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

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
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETIMPORT                        R3 K5 [print]
       16 LOADK                            R5 K6 ["[PrimitiveGenJobStore] "]
       17 MOVE                             R6 R2
       18 CONCAT                           R4 R5 R6
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 GETTABLE                         R2 R3 R0
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R2 K7 ["logs"]
       26 DUPTABLE                         R5 K10 [{"timestamp", "message"}]
       27 GETIMPORT                        R6 K13 [os.clock]
       29 CALL                             R6 0 1
       30 SETTABLEKS                       R6 R5 K8 ["timestamp"]
       32 SETTABLEKS                       R1 R5 K9 ["message"]
       34 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       36 GETIMPORT                        R3 K16 [table.insert]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

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
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+6]
       20 GETIMPORT                        R4 K6 [print]
       22 LOADK                            R6 K7 ["[PrimitiveGenJobStore] "]
       23 MOVE                             R7 R3
       24 CONCAT                           R5 R6 R7
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 3
       27 GETTABLE                         R3 R4 R0
       28 JUMPIF                           R3 ; [+1]
       29 RETURN                           R0 0
       30 SETTABLEKS                       R1 R3 K8 ["status"]
       32 JUMPIFNOT                        R2 ; [+7]
       33 MOVE                             R4 R2
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 SETTABLE                         R8 R3 R7
       38 FORGLOOP                         R4 2 ; [-2]
       40 LOADK                            R5 K9 ["Status changed to %*"]
       41 MOVE                             R7 R1
       42 NAMECALL                         R5 R5 K10 ["format"]
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 JUMPIFNOT                        R2 ; [+11]
       47 GETTABLEKS                       R5 R2 K11 ["errorMessage"]
       49 JUMPIFNOT                        R5 ; [+8]
       50 LOADK                            R5 K12 ["%*: %*"]
       51 MOVE                             R7 R4
       52 GETTABLEKS                       R8 R2 K11 ["errorMessage"]
       54 NAMECALL                         R5 R5 K10 ["format"]
       56 CALL                             R5 3 1
       57 MOVE                             R4 R5
       58 JUMPIFNOT                        R2 ; [+11]
       59 GETTABLEKS                       R5 R2 K13 ["serverStage"]
       61 JUMPIFNOT                        R5 ; [+8]
       62 LOADK                            R5 K14 ["%* (stage: %*)"]
       63 MOVE                             R7 R4
       64 GETTABLEKS                       R8 R2 K13 ["serverStage"]
       66 NAMECALL                         R5 R5 K10 ["format"]
       68 CALL                             R5 3 1
       69 MOVE                             R4 R5
       70 GETUPVAL                         R5 4
       71 MOVE                             R6 R0
       72 MOVE                             R7 R4
       73 CALL                             R5 2 0
       74 RETURN                           R0 0

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
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETIMPORT                        R2 K4 [print]
       14 LOADK                            R4 K5 ["[PrimitiveGenJobStore] "]
       15 MOVE                             R5 R1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETUPVAL                         R1 2
       19 LOADNIL                          R2
       20 SETTABLE                         R2 R1 R0
       21 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["FFlagDebugLogAssistantUI"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K19 [{["Submitted"] = "Submitted", ["Polling"] = "Polling", ["Downloading"] = "Downloading", ["Inserting"] = "Inserting", ["Completed"] = "Completed", ["Failed"] = "Failed", ["Cancelled"] = "Cancelled"}]
       29 NEWTABLE                         R5 0 0
       31 DUPCLOSURE                       R6 K20 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R7 K21 [PROTO_2]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R8 K22 [PROTO_3]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R9 K23 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 DUPCLOSURE                       R10 K24 [PROTO_5]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R9
       50 DUPCLOSURE                       R11 K25 [PROTO_6]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R12 4 0
       56 GETTABLEKS                       R13 R4 K16 ["Completed"]
       58 LOADB                            R14 1
       59 SETTABLE                         R14 R12 R13
       60 GETTABLEKS                       R13 R4 K17 ["Failed"]
       62 LOADB                            R14 1
       63 SETTABLE                         R14 R12 R13
       64 GETTABLEKS                       R13 R4 K18 ["Cancelled"]
       66 LOADB                            R14 1
       67 SETTABLE                         R14 R12 R13
       68 GETTABLEKS                       R13 R4 K15 ["Inserting"]
       70 LOADB                            R14 1
       71 SETTABLE                         R14 R12 R13
       72 DUPCLOSURE                       R13 K26 [PROTO_7]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R12
       75 DUPCLOSURE                       R14 K27 [PROTO_8]
       76 CAPTURE                          VAL R5
       77 DUPTABLE                         R15 K36 [{"JobStatus", "setJob", "getJob", "updateJobStatus", "appendLog", "removeJob", "getActiveJobCount", "clear"}]
       78 SETTABLEKS                       R4 R15 K28 ["JobStatus"]
       80 SETTABLEKS                       R7 R15 K29 ["setJob"]
       82 SETTABLEKS                       R8 R15 K30 ["getJob"]
       84 SETTABLEKS                       R10 R15 K31 ["updateJobStatus"]
       86 SETTABLEKS                       R9 R15 K32 ["appendLog"]
       88 SETTABLEKS                       R11 R15 K33 ["removeJob"]
       90 SETTABLEKS                       R13 R15 K34 ["getActiveJobCount"]
       92 SETTABLEKS                       R14 R15 K35 ["clear"]
       94 RETURN                           R15 1
