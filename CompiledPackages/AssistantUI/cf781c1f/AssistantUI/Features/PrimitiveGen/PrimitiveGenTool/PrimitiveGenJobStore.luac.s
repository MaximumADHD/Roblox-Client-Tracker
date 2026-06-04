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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETIMPORT                        R1 K3 [print]
       14 LOADK                            R3 K4 ["[PrimitiveGenJobStore] "]
       15 MOVE                             R4 R0
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

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
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETIMPORT                        R3 K5 [pcall]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+6]
       27 GETIMPORT                        R3 K7 [print]
       29 LOADK                            R5 K8 ["[PrimitiveGenJobStore] "]
       30 MOVE                             R6 R2
       31 CONCAT                           R4 R5 R6
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

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
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETIMPORT                        R3 K3 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 2
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETIMPORT                        R3 K5 [print]
       19 LOADK                            R5 K6 ["[PrimitiveGenJobStore] "]
       20 MOVE                             R6 R2
       21 CONCAT                           R4 R5 R6
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 3
       24 GETTABLE                         R2 R3 R0
       25 JUMPIF                           R2 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R2 K7 ["logs"]
       29 DUPTABLE                         R5 K10 [{"timestamp", "message"}]
       30 GETIMPORT                        R6 K13 [os.clock]
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K8 ["timestamp"]
       35 SETTABLEKS                       R1 R5 K9 ["message"]
       37 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       39 GETIMPORT                        R3 K16 [table.insert]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

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
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETIMPORT                        R4 K4 [pcall]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 3
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+6]
       23 GETIMPORT                        R4 K6 [print]
       25 LOADK                            R6 K7 ["[PrimitiveGenJobStore] "]
       26 MOVE                             R7 R3
       27 CONCAT                           R5 R6 R7
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 4
       30 GETTABLE                         R3 R4 R0
       31 JUMPIF                           R3 ; [+1]
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R3 K8 ["status"]
       35 JUMPIFNOT                        R2 ; [+7]
       36 MOVE                             R4 R2
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 SETTABLE                         R8 R3 R7
       41 FORGLOOP                         R4 2 ; [-2]
       43 LOADK                            R5 K9 ["Status changed to %*"]
       44 MOVE                             R7 R1
       45 NAMECALL                         R5 R5 K10 ["format"]
       47 CALL                             R5 2 1
       48 MOVE                             R4 R5
       49 JUMPIFNOT                        R2 ; [+11]
       50 GETTABLEKS                       R5 R2 K11 ["errorMessage"]
       52 JUMPIFNOT                        R5 ; [+8]
       53 LOADK                            R5 K12 ["%*: %*"]
       54 MOVE                             R7 R4
       55 GETTABLEKS                       R8 R2 K11 ["errorMessage"]
       57 NAMECALL                         R5 R5 K10 ["format"]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 JUMPIFNOT                        R2 ; [+11]
       62 GETTABLEKS                       R5 R2 K13 ["serverStage"]
       64 JUMPIFNOT                        R5 ; [+8]
       65 LOADK                            R5 K14 ["%* (stage: %*)"]
       66 MOVE                             R7 R4
       67 GETTABLEKS                       R8 R2 K13 ["serverStage"]
       69 NAMECALL                         R5 R5 K10 ["format"]
       71 CALL                             R5 3 1
       72 MOVE                             R4 R5
       73 GETUPVAL                         R5 5
       74 MOVE                             R6 R0
       75 MOVE                             R7 R4
       76 CALL                             R5 2 0
       77 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R2 K0 ["removeJob "]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETIMPORT                        R2 K2 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETIMPORT                        R2 K4 [print]
       17 LOADK                            R4 K5 ["[PrimitiveGenJobStore] "]
       18 MOVE                             R5 R1
       19 CONCAT                           R3 R4 R5
       20 CALL                             R2 1 0
       21 GETUPVAL                         R1 3
       22 LOADNIL                          R2
       23 SETTABLE                         R2 R1 R0
       24 RETURN                           R0 0

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
       59 DUPCLOSURE                       R7 K21 [PROTO_1]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 DUPCLOSURE                       R8 K22 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 DUPCLOSURE                       R9 K23 [PROTO_3]
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R10 K24 [PROTO_4]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R11 K25 [PROTO_5]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 DUPCLOSURE                       R12 K26 [PROTO_6]
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
      105 DUPCLOSURE                       R14 K27 [PROTO_7]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R13
      108 DUPCLOSURE                       R15 K28 [PROTO_8]
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
