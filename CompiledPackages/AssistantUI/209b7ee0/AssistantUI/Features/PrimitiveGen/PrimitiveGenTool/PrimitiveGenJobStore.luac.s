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
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K1 ["toString"]
        7 MOVE                             R8 R2
        8 CALL                             R7 1 -1
        9 CALL                             R3 -1 0
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R3 R4 R0
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 SETTABLEKS                       R1 R3 K2 ["status"]
       16 JUMPIFNOT                        R2 ; [+7]
       17 MOVE                             R4 R2
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 SETTABLE                         R8 R3 R7
       22 FORGLOOP                         R4 2 ; [-2]
       24 LOADK                            R5 K3 ["Status changed to %*"]
       25 MOVE                             R7 R1
       26 NAMECALL                         R5 R5 K4 ["format"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 JUMPIFNOT                        R2 ; [+11]
       31 GETTABLEKS                       R5 R2 K5 ["errorMessage"]
       33 JUMPIFNOT                        R5 ; [+8]
       34 LOADK                            R5 K6 ["%*: %*"]
       35 MOVE                             R7 R4
       36 GETTABLEKS                       R8 R2 K5 ["errorMessage"]
       38 NAMECALL                         R5 R5 K4 ["format"]
       40 CALL                             R5 3 1
       41 MOVE                             R4 R5
       42 JUMPIFNOT                        R2 ; [+11]
       43 GETTABLEKS                       R5 R2 K7 ["serverStage"]
       45 JUMPIFNOT                        R5 ; [+8]
       46 LOADK                            R5 K8 ["%* (stage: %*)"]
       47 MOVE                             R7 R4
       48 GETTABLEKS                       R8 R2 K7 ["serverStage"]
       50 NAMECALL                         R5 R5 K4 ["format"]
       52 CALL                             R5 3 1
       53 MOVE                             R4 R5
       54 GETUPVAL                         R5 3
       55 MOVE                             R6 R0
       56 MOVE                             R7 R4
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

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
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["FFlagDebugLogAssistantUI"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K17 [{"Submitted", "Polling", "Downloading", "Inserting", "Completed", "Failed", "Cancelled"}]
       22 LOADK                            R4 K10 ["Submitted"]
       23 SETTABLEKS                       R4 R3 K10 ["Submitted"]
       25 LOADK                            R4 K11 ["Polling"]
       26 SETTABLEKS                       R4 R3 K11 ["Polling"]
       28 LOADK                            R4 K12 ["Downloading"]
       29 SETTABLEKS                       R4 R3 K12 ["Downloading"]
       31 LOADK                            R4 K13 ["Inserting"]
       32 SETTABLEKS                       R4 R3 K13 ["Inserting"]
       34 LOADK                            R4 K14 ["Completed"]
       35 SETTABLEKS                       R4 R3 K14 ["Completed"]
       37 LOADK                            R4 K15 ["Failed"]
       38 SETTABLEKS                       R4 R3 K15 ["Failed"]
       40 LOADK                            R4 K16 ["Cancelled"]
       41 SETTABLEKS                       R4 R3 K16 ["Cancelled"]
       43 NEWTABLE                         R4 0 0
       45 DUPCLOSURE                       R5 K18 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K19 [PROTO_1]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R7 K20 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R8 K21 [PROTO_3]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R9 K22 [PROTO_4]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R10 K23 [PROTO_5]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R11 4 0
       65 GETTABLEKS                       R12 R3 K14 ["Completed"]
       67 LOADB                            R13 1
       68 SETTABLE                         R13 R11 R12
       69 GETTABLEKS                       R12 R3 K15 ["Failed"]
       71 LOADB                            R13 1
       72 SETTABLE                         R13 R11 R12
       73 GETTABLEKS                       R12 R3 K16 ["Cancelled"]
       75 LOADB                            R13 1
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R3 K13 ["Inserting"]
       79 LOADB                            R13 1
       80 SETTABLE                         R13 R11 R12
       81 DUPCLOSURE                       R12 K24 [PROTO_6]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R13 K25 [PROTO_7]
       85 CAPTURE                          VAL R4
       86 DUPTABLE                         R14 K34 [{"JobStatus", "setJob", "getJob", "updateJobStatus", "appendLog", "removeJob", "getActiveJobCount", "clear"}]
       87 SETTABLEKS                       R3 R14 K26 ["JobStatus"]
       89 SETTABLEKS                       R6 R14 K27 ["setJob"]
       91 SETTABLEKS                       R7 R14 K28 ["getJob"]
       93 SETTABLEKS                       R9 R14 K29 ["updateJobStatus"]
       95 SETTABLEKS                       R8 R14 K30 ["appendLog"]
       97 SETTABLEKS                       R10 R14 K31 ["removeJob"]
       99 SETTABLEKS                       R12 R14 K32 ["getActiveJobCount"]
      101 SETTABLEKS                       R13 R14 K33 ["clear"]
      103 RETURN                           R14 1
