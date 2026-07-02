PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["threads"]
        3 SETLIST                          R1 R2 1 [1]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 4
        9 JUMPIF                           R2 ; [+19]
       10 GETIMPORT                        R6 K2 [warn]
       12 LOADK                            R7 K3 ["Failed to clone path for removing thread:"]
       13 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K6 [table.unpack]
       17 CALL                             R8 1 -1
       18 CALL                             R6 -1 0
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R8 K7 ["Failed at key: %*"]
       22 MOVE                             R10 R5
       23 NAMECALL                         R8 R8 K8 ["format"]
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 CALL                             R6 1 0
       28 RETURN                           R0 1
       29 GETIMPORT                        R6 K10 [table.clone]
       31 GETUPVAL                         R8 1
       32 GETTABLE                         R7 R4 R8
       33 CALL                             R6 1 1
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K11 ["isDeleted"]
       37 GETUPVAL                         R7 1
       38 SETTABLE                         R6 R4 R7
       39 GETUPVAL                         R7 2
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R6
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R7 1 0
       46 GETUPVAL                         R7 3
       47 NEWTABLE                         R8 0 1
       49 MOVE                             R9 R6
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R7 1 0
       53 GETTABLEKS                       R7 R6 K12 ["ephemeral"]
       55 JUMPIF                           R7 ; [+16]
       56 GETUPVAL                         R7 4
       57 DUPTABLE                         R8 K16 [{"deleteThreadId", "sessionId", "deleteReason"}]
       58 GETUPVAL                         R9 1
       59 SETTABLEKS                       R9 R8 K13 ["deleteThreadId"]
       61 GETUPVAL                         R9 5
       62 SETTABLEKS                       R9 R8 K14 ["sessionId"]
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R9 R9 K17 ["DeletionReason"]
       67 GETTABLEKS                       R9 R9 K18 ["UserDelete"]
       69 SETTABLEKS                       R9 R8 K15 ["deleteReason"]
       71 CALL                             R7 1 0
       72 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeThread"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+11]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R1
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K1 ["ThreadSwitchSource"]
       15 GETTABLEKS                       R4 R4 K2 ["RemoveThreadFallback"]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R1 5
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U10
       26 CAPTURE                          UPVAL U4
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["useContext"]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K1 ["Context"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K4 ["sessionId"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R9 0 4
       46 MOVE                             R10 R1
       47 MOVE                             R11 R3
       48 MOVE                             R12 R4
       49 MOVE                             R13 R6
       50 SETLIST                          R9 R10 4 [1]
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Compaction"]
       13 GETTABLEKS                       R2 R2 K8 ["CompactedStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["ConversationContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K14 ["SessionIdContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Components"]
       45 GETTABLEKS                       R6 R6 K10 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K15 ["ThreadIdContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K16 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["clonePath"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["createNewThread"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Util"]
       73 GETTABLEKS                       R10 R10 K19 ["deleteThread"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Util"]
       80 GETTABLEKS                       R11 R11 K20 ["markDirty"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Util"]
       87 GETTABLEKS                       R12 R12 K21 ["setUpdatedAt"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K23 ["useSwitchThread"]
       96 CALL                             R12 1 1
       97 DUPCLOSURE                       R13 K24 [PROTO_2]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R9
      110 RETURN                           R13 1
