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
       55 JUMPIF                           R7 ; [+23]
       56 GETUPVAL                         R7 4
       57 DUPTABLE                         R8 K18 [{"deleteThreadId", "acpSessionId", "assistantService", "sessionId", "deleteReason"}]
       58 GETUPVAL                         R9 1
       59 SETTABLEKS                       R9 R8 K13 ["deleteThreadId"]
       61 GETTABLEKS                       R9 R6 K14 ["acpSessionId"]
       63 SETTABLEKS                       R9 R8 K14 ["acpSessionId"]
       65 GETUPVAL                         R9 5
       66 SETTABLEKS                       R9 R8 K15 ["assistantService"]
       68 GETUPVAL                         R9 6
       69 SETTABLEKS                       R9 R8 K16 ["sessionId"]
       71 GETUPVAL                         R9 7
       72 GETTABLEKS                       R9 R9 K19 ["DeletionReason"]
       74 GETTABLEKS                       R9 R9 K20 ["UserDelete"]
       76 SETTABLEKS                       R9 R8 K17 ["deleteReason"]
       78 CALL                             R7 1 0
       79 RETURN                           R3 1

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
       26 CAPTURE                          UPVAL U11
       27 CAPTURE                          UPVAL U4
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

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
       16 GETTABLEKS                       R2 R2 K3 ["service"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useContext"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K1 ["Context"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K4 ["threadId"]
       27 GETUPVAL                         R5 4
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K0 ["useContext"]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K1 ["Context"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K5 ["sessionId"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 5
       56 MOVE                             R11 R1
       57 MOVE                             R12 R4
       58 MOVE                             R13 R5
       59 MOVE                             R14 R7
       60 MOVE                             R15 R2
       61 SETLIST                          R10 R11 5 [1]
       63 CALL                             R8 2 -1
       64 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["AssistantServiceContext"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Engine"]
       25 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Components"]
       31 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K13 ["ConversationContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R6 R6 K14 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Components"]
       47 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K8 ["Components"]
       56 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K16 ["ThreadIdContext"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K17 ["Types"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K18 ["Util"]
       70 GETTABLEKS                       R10 R10 K19 ["clonePath"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K18 ["Util"]
       77 GETTABLEKS                       R11 R11 K20 ["createNewThread"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K18 ["Util"]
       84 GETTABLEKS                       R12 R12 K21 ["deleteThread"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K18 ["Util"]
       91 GETTABLEKS                       R13 R13 K22 ["markDirty"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K18 ["Util"]
       98 GETTABLEKS                       R14 R14 K23 ["setUpdatedAt"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      105 GETTABLEKS                       R15 R15 K25 ["useSwitchThread"]
      107 CALL                             R14 1 1
      108 DUPCLOSURE                       R15 K26 [PROTO_2]
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R11
      122 RETURN                           R15 1
