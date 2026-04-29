PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+57]
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
       32 GETUPVAL                         R7 2
       33 GETTABLE                         R6 R4 R7
       34 GETUPVAL                         R7 2
       35 LOADNIL                          R8
       36 SETTABLE                         R8 R4 R7
       37 GETTABLEKS                       R7 R6 K9 ["ephemeral"]
       39 JUMPIF                           R7 ; [+19]
       40 GETUPVAL                         R7 3
       41 MOVE                             R8 R3
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 4
       44 DUPTABLE                         R8 K13 [{"deleteThreadId", "sessionId", "deleteReason"}]
       45 GETUPVAL                         R9 2
       46 SETTABLEKS                       R9 R8 K10 ["deleteThreadId"]
       48 GETUPVAL                         R9 5
       49 SETTABLEKS                       R9 R8 K11 ["sessionId"]
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R10 R11 K14 ["DeletionReason"]
       54 GETTABLEKS                       R9 R10 K15 ["UserDelete"]
       56 SETTABLEKS                       R9 R8 K12 ["deleteReason"]
       58 CALL                             R7 1 0
       59 RETURN                           R3 1
       60 GETIMPORT                        R1 K17 [table.clone]
       62 MOVE                             R2 R0
       63 CALL                             R1 1 1
       64 GETUPVAL                         R2 2
       65 LOADNIL                          R3
       66 SETTABLE                         R3 R1 R2
       67 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["removeThread"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOTEQ                      R0 R1 ; [+20]
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R1 5
       18 LOADB                            R3 0
       19 NAMECALL                         R1 R1 K1 ["GenerateGUID"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 6
       23 MOVE                             R3 R1
       24 GETUPVAL                         R6 7
       25 GETTABLEKS                       R5 R6 K2 ["ThreadSwitchSource"]
       27 GETTABLEKS                       R4 R5 K3 ["RemoveThreadFallback"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R1 8
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U7
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K3 ["useContext"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K4 ["Context"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K7 ["sessionId"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K8 ["useCallback"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          VAL R1
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
       15 GETTABLEKS                       R5 R0 K10 ["Util"]
       17 GETTABLEKS                       R4 R5 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R4 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R0 K13 ["Components"]
       26 GETTABLEKS                       R5 R6 K14 ["Contexts"]
       28 GETTABLEKS                       R4 R5 K15 ["ConversationContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R0 K16 ["Parent"]
       35 GETTABLEKS                       R5 R6 K17 ["React"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Components"]
       42 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       44 GETTABLEKS                       R6 R7 K18 ["SessionIdContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Components"]
       51 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       53 GETTABLEKS                       R7 R8 K19 ["ThreadIdContext"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K20 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Util"]
       65 GETTABLEKS                       R9 R10 K21 ["clonePath"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Util"]
       72 GETTABLEKS                       R10 R11 K22 ["createNewThread"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Util"]
       79 GETTABLEKS                       R11 R12 K23 ["deleteThread"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R13 R0 K10 ["Util"]
       86 GETTABLEKS                       R12 R13 K24 ["markDirty"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R14 R0 K25 ["Hooks"]
       93 GETTABLEKS                       R13 R14 K26 ["useSwitchThread"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R15 R0 K27 ["Flags"]
      100 GETTABLEKS                       R14 R15 K28 ["FFlagAssistantContextCompaction"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R16 R0 K27 ["Flags"]
      107 GETTABLEKS                       R15 R16 K29 ["FFlagAssistantMultipleChatPersistence"]
      109 CALL                             R14 1 1
      110 DUPCLOSURE                       R15 K30 [PROTO_2]
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 RETURN                           R15 1
