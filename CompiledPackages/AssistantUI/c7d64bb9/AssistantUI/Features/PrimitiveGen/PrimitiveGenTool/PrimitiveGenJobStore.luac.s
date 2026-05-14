PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["get"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R1 R1 K1 ["printToStudioLogAsync"]
        9 LOADK                            R3 K2 ["[PrimitiveGenJobStore] "]
       10 MOVE                             R4 R0
       11 CONCAT                           R2 R3 R4
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETIMPORT                        R1 K4 [print]
       18 LOADK                            R3 K2 ["[PrimitiveGenJobStore] "]
       19 MOVE                             R4 R0
       20 CONCAT                           R2 R3 R4
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
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
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+10]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K4 ["get"]
       21 CALL                             R3 0 1
       22 GETTABLEKS                       R3 R3 K5 ["printToStudioLogAsync"]
       24 LOADK                            R5 K6 ["[PrimitiveGenJobStore] "]
       25 MOVE                             R6 R2
       26 CONCAT                           R4 R5 R6
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 3
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+6]
       31 GETIMPORT                        R3 K8 [print]
       33 LOADK                            R5 K6 ["[PrimitiveGenJobStore] "]
       34 MOVE                             R6 R2
       35 CONCAT                           R4 R5 R6
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["appendLog"]
        1 MOVE                             R4 R0
        2 LOADK                            R5 K1 [" "]
        3 MOVE                             R6 R1
        4 CONCAT                           R2 R3 R6
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["get"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R3 R3 K3 ["printToStudioLogAsync"]
       14 LOADK                            R5 K4 ["[PrimitiveGenJobStore] "]
       15 MOVE                             R6 R2
       16 CONCAT                           R4 R5 R6
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETIMPORT                        R3 K6 [print]
       23 LOADK                            R5 K4 ["[PrimitiveGenJobStore] "]
       24 MOVE                             R6 R2
       25 CONCAT                           R4 R5 R6
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 GETTABLE                         R2 R3 R0
       29 JUMPIF                           R2 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R4 R2 K7 ["logs"]
       33 DUPTABLE                         R5 K10 [{"timestamp", "message"}]
       34 GETIMPORT                        R6 K13 [os.clock]
       36 CALL                             R6 0 1
       37 SETTABLEKS                       R6 R5 K8 ["timestamp"]
       39 SETTABLEKS                       R1 R5 K9 ["message"]
       41 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       43 GETIMPORT                        R3 K16 [table.insert]
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_4:
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
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["get"]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R4 R4 K4 ["printToStudioLogAsync"]
       20 LOADK                            R6 K5 ["[PrimitiveGenJobStore] "]
       21 MOVE                             R7 R3
       22 CONCAT                           R5 R6 R7
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 3
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+6]
       27 GETIMPORT                        R4 K7 [print]
       29 LOADK                            R6 K5 ["[PrimitiveGenJobStore] "]
       30 MOVE                             R7 R3
       31 CONCAT                           R5 R6 R7
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 4
       34 GETTABLE                         R3 R4 R0
       35 JUMPIF                           R3 ; [+1]
       36 RETURN                           R0 0
       37 SETTABLEKS                       R1 R3 K8 ["status"]
       39 JUMPIFNOT                        R2 ; [+7]
       40 MOVE                             R4 R2
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 SETTABLE                         R8 R3 R7
       45 FORGLOOP                         R4 2 ; [-2]
       47 LOADK                            R5 K9 ["Status changed to %*"]
       48 MOVE                             R7 R1
       49 NAMECALL                         R5 R5 K10 ["format"]
       51 CALL                             R5 2 1
       52 MOVE                             R4 R5
       53 JUMPIFNOT                        R2 ; [+11]
       54 GETTABLEKS                       R5 R2 K11 ["errorMessage"]
       56 JUMPIFNOT                        R5 ; [+8]
       57 LOADK                            R5 K12 ["%*: %*"]
       58 MOVE                             R7 R4
       59 GETTABLEKS                       R8 R2 K11 ["errorMessage"]
       61 NAMECALL                         R5 R5 K10 ["format"]
       63 CALL                             R5 3 1
       64 MOVE                             R4 R5
       65 JUMPIFNOT                        R2 ; [+11]
       66 GETTABLEKS                       R5 R2 K13 ["serverStage"]
       68 JUMPIFNOT                        R5 ; [+8]
       69 LOADK                            R5 K14 ["%* (stage: %*)"]
       70 MOVE                             R7 R4
       71 GETTABLEKS                       R8 R2 K13 ["serverStage"]
       73 NAMECALL                         R5 R5 K10 ["format"]
       75 CALL                             R5 3 1
       76 MOVE                             R4 R5
       77 GETUPVAL                         R5 5
       78 MOVE                             R6 R0
       79 MOVE                             R7 R4
       80 CALL                             R5 2 0
       81 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R2 K0 ["removeJob "]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["get"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R2 R2 K2 ["printToStudioLogAsync"]
       12 LOADK                            R4 K3 ["[PrimitiveGenJobStore] "]
       13 MOVE                             R5 R1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETIMPORT                        R2 K5 [print]
       21 LOADK                            R4 K3 ["[PrimitiveGenJobStore] "]
       22 MOVE                             R5 R1
       23 CONCAT                           R3 R4 R5
       24 CALL                             R2 1 0
       25 GETUPVAL                         R1 3
       26 LOADNIL                          R2
       27 SETTABLE                         R2 R1 R0
       28 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["FFlagPrimGenEnableStatusLog"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K20 [{"Submitted", "Polling", "Downloading", "Inserting", "Completed", "Failed", "Cancelled"}]
       36 LOADK                            R6 K13 ["Submitted"]
       37 SETTABLEKS                       R6 R5 K13 ["Submitted"]
       39 LOADK                            R6 K14 ["Polling"]
       40 SETTABLEKS                       R6 R5 K14 ["Polling"]
       42 LOADK                            R6 K15 ["Downloading"]
       43 SETTABLEKS                       R6 R5 K15 ["Downloading"]
       45 LOADK                            R6 K16 ["Inserting"]
       46 SETTABLEKS                       R6 R5 K16 ["Inserting"]
       48 LOADK                            R6 K17 ["Completed"]
       49 SETTABLEKS                       R6 R5 K17 ["Completed"]
       51 LOADK                            R6 K18 ["Failed"]
       52 SETTABLEKS                       R6 R5 K18 ["Failed"]
       54 LOADK                            R6 K19 ["Cancelled"]
       55 SETTABLEKS                       R6 R5 K19 ["Cancelled"]
       57 NEWTABLE                         R6 0 0
       59 DUPCLOSURE                       R7 K21 [PROTO_0]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 DUPCLOSURE                       R8 K22 [PROTO_1]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 DUPCLOSURE                       R9 K23 [PROTO_2]
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R10 K24 [PROTO_3]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R11 K25 [PROTO_4]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 DUPCLOSURE                       R12 K26 [PROTO_5]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 NEWTABLE                         R13 4 0
       89 GETTABLEKS                       R14 R5 K17 ["Completed"]
       91 LOADB                            R15 1
       92 SETTABLE                         R15 R13 R14
       93 GETTABLEKS                       R14 R5 K18 ["Failed"]
       95 LOADB                            R15 1
       96 SETTABLE                         R15 R13 R14
       97 GETTABLEKS                       R14 R5 K19 ["Cancelled"]
       99 LOADB                            R15 1
      100 SETTABLE                         R15 R13 R14
      101 GETTABLEKS                       R14 R5 K16 ["Inserting"]
      103 LOADB                            R15 1
      104 SETTABLE                         R15 R13 R14
      105 DUPCLOSURE                       R14 K27 [PROTO_6]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R13
      108 DUPCLOSURE                       R15 K28 [PROTO_7]
      109 CAPTURE                          VAL R6
      110 DUPTABLE                         R16 K37 [{"JobStatus", "setJob", "getJob", "updateJobStatus", "appendLog", "removeJob", "getActiveJobCount", "clear"}]
      111 SETTABLEKS                       R5 R16 K29 ["JobStatus"]
      113 SETTABLEKS                       R8 R16 K30 ["setJob"]
      115 SETTABLEKS                       R9 R16 K31 ["getJob"]
      117 SETTABLEKS                       R11 R16 K32 ["updateJobStatus"]
      119 SETTABLEKS                       R10 R16 K33 ["appendLog"]
      121 SETTABLEKS                       R12 R16 K34 ["removeJob"]
      123 SETTABLEKS                       R14 R16 K35 ["getActiveJobCount"]
      125 SETTABLEKS                       R15 R16 K36 ["clear"]
      127 RETURN                           R16 1
