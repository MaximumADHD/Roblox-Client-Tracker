PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETIMPORT                        R0 K1 [print]
        6 LOADK                            R1 K2 ["[PrimitiveGenJobStore]"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["logs"]
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K0 ["logs"]
        7 GETUPVAL                         R2 0
        8 SETTABLE                         R1 R2 R0
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K1 ["setJob"]
       11 MOVE                             R4 R0
       12 GETTABLEKS                       R5 R1 K2 ["status"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["appendLog"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R0
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R2 K1 ["logs"]
       11 DUPTABLE                         R5 K4 [{"timestamp", "message"}]
       12 GETIMPORT                        R6 K7 [os.clock]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K2 ["timestamp"]
       17 SETTABLEKS                       R1 R5 K3 ["message"]
       19 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       21 GETIMPORT                        R3 K10 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["updateJobStatus"]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R3 4 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 SETTABLEKS                       R1 R3 K1 ["status"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 SETTABLE                         R8 R3 R7
       18 FORGLOOP                         R4 2 ; [-2]
       20 LOADK                            R5 K2 ["Status changed to %*"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R5 R5 K3 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETTABLEKS                       R5 R2 K4 ["errorMessage"]
       29 JUMPIFNOT                        R5 ; [+8]
       30 LOADK                            R5 K5 ["%*: %*"]
       31 MOVE                             R7 R4
       32 GETTABLEKS                       R8 R2 K4 ["errorMessage"]
       34 NAMECALL                         R5 R5 K3 ["format"]
       36 CALL                             R5 3 1
       37 MOVE                             R4 R5
       38 JUMPIFNOT                        R2 ; [+11]
       39 GETTABLEKS                       R5 R2 K6 ["serverStage"]
       41 JUMPIFNOT                        R5 ; [+8]
       42 LOADK                            R5 K7 ["%* (stage: %*)"]
       43 MOVE                             R7 R4
       44 GETTABLEKS                       R8 R2 K6 ["serverStage"]
       46 NAMECALL                         R5 R5 K3 ["format"]
       48 CALL                             R5 3 1
       49 MOVE                             R4 R5
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R0
       52 MOVE                             R7 R4
       53 CALL                             R5 2 0
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["removeJob"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 SETTABLE                         R2 R1 R0
        7 RETURN                           R0 0

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
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["FFlagDebugLogAssistantUI"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K15 [{"Submitted", "Polling", "Downloading", "Inserting", "Completed", "Failed", "Cancelled"}]
       15 LOADK                            R3 K8 ["Submitted"]
       16 SETTABLEKS                       R3 R2 K8 ["Submitted"]
       18 LOADK                            R3 K9 ["Polling"]
       19 SETTABLEKS                       R3 R2 K9 ["Polling"]
       21 LOADK                            R3 K10 ["Downloading"]
       22 SETTABLEKS                       R3 R2 K10 ["Downloading"]
       24 LOADK                            R3 K11 ["Inserting"]
       25 SETTABLEKS                       R3 R2 K11 ["Inserting"]
       27 LOADK                            R3 K12 ["Completed"]
       28 SETTABLEKS                       R3 R2 K12 ["Completed"]
       30 LOADK                            R3 K13 ["Failed"]
       31 SETTABLEKS                       R3 R2 K13 ["Failed"]
       33 LOADK                            R3 K14 ["Cancelled"]
       34 SETTABLEKS                       R3 R2 K14 ["Cancelled"]
       36 NEWTABLE                         R3 0 0
       38 DUPCLOSURE                       R4 K16 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R5 K17 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R6 K18 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R7 K19 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R8 K20 [PROTO_4]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R7
       52 DUPCLOSURE                       R9 K21 [PROTO_5]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R10 4 0
       57 GETTABLEKS                       R11 R2 K12 ["Completed"]
       59 LOADB                            R12 1
       60 SETTABLE                         R12 R10 R11
       61 GETTABLEKS                       R11 R2 K13 ["Failed"]
       63 LOADB                            R12 1
       64 SETTABLE                         R12 R10 R11
       65 GETTABLEKS                       R11 R2 K14 ["Cancelled"]
       67 LOADB                            R12 1
       68 SETTABLE                         R12 R10 R11
       69 DUPCLOSURE                       R11 K22 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R12 K23 [PROTO_7]
       73 CAPTURE                          VAL R3
       74 DUPTABLE                         R13 K32 [{"JobStatus", "setJob", "getJob", "updateJobStatus", "appendLog", "removeJob", "getActiveJobCount", "clear"}]
       75 SETTABLEKS                       R2 R13 K24 ["JobStatus"]
       77 SETTABLEKS                       R5 R13 K25 ["setJob"]
       79 SETTABLEKS                       R6 R13 K26 ["getJob"]
       81 SETTABLEKS                       R8 R13 K27 ["updateJobStatus"]
       83 SETTABLEKS                       R7 R13 K28 ["appendLog"]
       85 SETTABLEKS                       R9 R13 K29 ["removeJob"]
       87 SETTABLEKS                       R11 R13 K30 ["getActiveJobCount"]
       89 SETTABLEKS                       R12 R13 K31 ["clear"]
       91 RETURN                           R13 1
