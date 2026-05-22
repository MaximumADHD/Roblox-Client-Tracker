PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+28]
        3 GETTABLEKS                       R1 R0 K0 ["threads"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["ephemeral"]
       10 JUMPIF                           R6 ; [+15]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K5 [{"deleteThreadId", "sessionId", "deleteReason"}]
       13 SETTABLEKS                       R4 R7 K2 ["deleteThreadId"]
       15 GETUPVAL                         R8 2
       16 SETTABLEKS                       R8 R7 K3 ["sessionId"]
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K6 ["DeletionReason"]
       21 GETTABLEKS                       R8 R8 K7 ["UserConversationDelete"]
       23 SETTABLEKS                       R8 R7 K4 ["deleteReason"]
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-19]
       28 GETUPVAL                         R1 4
       29 CALL                             R1 0 1
       30 RETURN                           R1 1
       31 NEWTABLE                         R1 0 0
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["clearAll"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+11]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 1
       12 GETUPVAL                         R1 4
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K1 ["ThreadSwitchSource"]
       17 GETTABLEKS                       R3 R3 K2 ["ClearConversation"]
       19 CALL                             R1 2 0
       20 JUMP                             ; [+8]
       21 GETUPVAL                         R0 6
       22 LOADB                            R2 0
       23 NAMECALL                         R0 R0 K3 ["GenerateGUID"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R1 7
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 GETUPVAL                         R0 8
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U11
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+13]
       15 GETUPVAL                         R5 3
       16 CALL                             R5 0 1
       17 MOVE                             R3 R5
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["useContext"]
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K1 ["Context"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R4 R5 K3 ["sessionId"]
       27 JUMP                             ; [+9]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["useContext"]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K1 ["Context"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R2 R5 K4 ["setThreadId"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          REF R3
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          REF R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          REF R4
       52 CAPTURE                          UPVAL U12
       53 NEWTABLE                         R7 0 4
       55 MOVE                             R8 R1
       56 MOVE                             R9 R2
       57 MOVE                             R10 R3
       58 MOVE                             R11 R4
       59 SETLIST                          R7 R8 4 [1]
       61 CALL                             R5 2 -1
       62 CLOSEUPVALS                      R2
       63 RETURN                           R5 -1

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
       65 GETTABLEKS                       R9 R9 K21 ["createNewThread"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Util"]
       72 GETTABLEKS                       R10 R10 K22 ["deleteThread"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Util"]
       79 GETTABLEKS                       R11 R11 K23 ["makeConversation"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K24 ["Hooks"]
       86 GETTABLEKS                       R12 R12 K25 ["useSwitchThread"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K26 ["Flags"]
       93 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantContextCompaction"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K26 ["Flags"]
      100 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantMultipleChatPersistence"]
      102 CALL                             R13 1 1
      103 DUPCLOSURE                       R14 K29 [PROTO_2]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R10
      117 RETURN                           R14 1
