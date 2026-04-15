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
        1 JUMPIFNOTEQ                      R0 R1 ; [+20]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R1 3
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 4
       15 MOVE                             R3 R1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R5 R6 K1 ["ThreadSwitchSource"]
       19 GETTABLEKS                       R4 R5 K2 ["RemoveThreadFallback"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R1 6
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U5
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

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
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R9 0 4
       54 MOVE                             R10 R1
       55 MOVE                             R11 R3
       56 MOVE                             R12 R4
       57 MOVE                             R13 R6
       58 SETLIST                          R9 R10 4 [1]
       60 CALL                             R7 2 -1
       61 RETURN                           R7 -1

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
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Parent"]
       26 GETTABLEKS                       R4 R5 K14 ["React"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Components"]
       33 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       35 GETTABLEKS                       R5 R6 K15 ["SessionIdContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Components"]
       42 GETTABLEKS                       R7 R8 K11 ["Contexts"]
       44 GETTABLEKS                       R6 R7 K16 ["ThreadIdContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K17 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R9 R0 K18 ["Util"]
       56 GETTABLEKS                       R8 R9 K19 ["clonePath"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K18 ["Util"]
       63 GETTABLEKS                       R9 R10 K20 ["createNewThread"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Util"]
       70 GETTABLEKS                       R10 R11 K21 ["deleteThread"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R12 R0 K18 ["Util"]
       77 GETTABLEKS                       R11 R12 K22 ["markDirty"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       84 GETTABLEKS                       R12 R13 K24 ["useSwitchThread"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R14 R0 K25 ["Flags"]
       91 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantMultipleChatPersistence"]
       93 CALL                             R12 1 1
       94 DUPCLOSURE                       R13 K27 [PROTO_2]
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R9
      107 RETURN                           R13 1
