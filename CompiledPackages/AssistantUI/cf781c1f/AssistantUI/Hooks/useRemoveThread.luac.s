PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+73]
        3 NEWTABLE                         R1 0 1
        5 LOADK                            R2 K0 ["threads"]
        6 SETLIST                          R1 R2 1 [1]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 4
       12 JUMPIF                           R2 ; [+19]
       13 GETIMPORT                        R6 K2 [warn]
       15 LOADK                            R7 K3 ["Failed to clone path for removing thread:"]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K6 [table.unpack]
       20 CALL                             R8 1 -1
       21 CALL                             R6 -1 0
       22 GETIMPORT                        R6 K2 [warn]
       24 LOADK                            R8 K7 ["Failed at key: %*"]
       25 MOVE                             R10 R5
       26 NAMECALL                         R8 R8 K8 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 1
       32 GETIMPORT                        R6 K10 [table.clone]
       34 GETUPVAL                         R8 2
       35 GETTABLE                         R7 R4 R8
       36 CALL                             R6 1 1
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R6 K11 ["isDeleted"]
       40 GETUPVAL                         R7 2
       41 SETTABLE                         R6 R4 R7
       42 GETUPVAL                         R7 3
       43 NEWTABLE                         R8 0 1
       45 MOVE                             R9 R6
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R7 1 0
       49 GETUPVAL                         R7 4
       50 NEWTABLE                         R8 0 1
       52 MOVE                             R9 R6
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R7 1 0
       56 GETTABLEKS                       R7 R6 K12 ["ephemeral"]
       58 JUMPIF                           R7 ; [+16]
       59 GETUPVAL                         R7 5
       60 DUPTABLE                         R8 K16 [{"deleteThreadId", "sessionId", "deleteReason"}]
       61 GETUPVAL                         R9 2
       62 SETTABLEKS                       R9 R8 K13 ["deleteThreadId"]
       64 GETUPVAL                         R9 6
       65 SETTABLEKS                       R9 R8 K14 ["sessionId"]
       67 GETUPVAL                         R9 7
       68 GETTABLEKS                       R9 R9 K17 ["DeletionReason"]
       70 GETTABLEKS                       R9 R9 K18 ["UserDelete"]
       72 SETTABLEKS                       R9 R8 K15 ["deleteReason"]
       74 CALL                             R7 1 0
       75 RETURN                           R3 1
       76 GETIMPORT                        R1 K10 [table.clone]
       78 MOVE                             R2 R0
       79 CALL                             R1 1 1
       80 GETUPVAL                         R2 2
       81 LOADNIL                          R3
       82 SETTABLE                         R3 R1 R2
       83 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeThread"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+20]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 1
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R1 4
       15 LOADB                            R3 0
       16 NAMECALL                         R1 R1 K1 ["GenerateGUID"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 5
       20 MOVE                             R3 R1
       21 GETUPVAL                         R4 6
       22 GETTABLEKS                       R4 R4 K2 ["ThreadSwitchSource"]
       24 GETTABLEKS                       R4 R4 K3 ["RemoveThreadFallback"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R1 7
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          UPVAL U11
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U6
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["useContext"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["useContext"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K3 ["useContext"]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K4 ["Context"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K7 ["sessionId"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R9 0 4
       56 MOVE                             R10 R1
       57 MOVE                             R11 R3
       58 MOVE                             R12 R4
       59 MOVE                             R13 R6
       60 SETLIST                          R9 R10 4 [1]
       62 CALL                             R7 2 -1
       63 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Components"]
       26 GETTABLEKS                       R4 R4 K14 ["Contexts"]
       28 GETTABLEKS                       R4 R4 K15 ["ConversationContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K16 ["Parent"]
       35 GETTABLEKS                       R5 R5 K17 ["React"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K13 ["Components"]
       42 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K18 ["SessionIdContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K13 ["Components"]
       51 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K19 ["ThreadIdContext"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K20 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K10 ["Util"]
       65 GETTABLEKS                       R9 R9 K21 ["clonePath"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Util"]
       72 GETTABLEKS                       R10 R10 K22 ["createNewThread"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Util"]
       79 GETTABLEKS                       R11 R11 K23 ["deleteThread"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K10 ["Util"]
       86 GETTABLEKS                       R12 R12 K24 ["markDirty"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K10 ["Util"]
       93 GETTABLEKS                       R13 R13 K25 ["setUpdatedAt"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K26 ["Hooks"]
      100 GETTABLEKS                       R14 R14 K27 ["useSwitchThread"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K28 ["Flags"]
      107 GETTABLEKS                       R15 R15 K29 ["FFlagAssistantMultipleChatPersistence"]
      109 CALL                             R14 1 1
      110 DUPCLOSURE                       R15 K30 [PROTO_2]
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 RETURN                           R15 1
