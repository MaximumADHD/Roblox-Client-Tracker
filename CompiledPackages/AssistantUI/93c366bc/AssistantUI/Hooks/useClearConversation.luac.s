PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+34]
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
       18 GETUPVAL                         R10 3
       19 GETTABLEKS                       R9 R10 K6 ["DeletionReason"]
       21 GETTABLEKS                       R8 R9 K7 ["UserConversationDelete"]
       23 SETTABLEKS                       R8 R7 K4 ["deleteReason"]
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-19]
       28 GETUPVAL                         R1 4
       29 CALL                             R1 0 1
       30 LOADB                            R2 0
       31 SETTABLEKS                       R2 R1 K1 ["ephemeral"]
       33 GETUPVAL                         R2 5
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R1 1
       37 NEWTABLE                         R1 0 0
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K0 ["ThreadSwitchSource"]
       10 GETTABLEKS                       R3 R4 K1 ["ClearConversation"]
       12 CALL                             R1 2 0
       13 JUMP                             ; [+8]
       14 GETUPVAL                         R0 4
       15 LOADB                            R2 0
       16 NAMECALL                         R0 R0 K2 ["GenerateGUID"]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R1 5
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 GETUPVAL                         R0 6
       23 NEWCLOSURE                       R1 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
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
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["useContext"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R6 R7 K1 ["Context"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R4 R5 K3 ["sessionId"]
       27 JUMP                             ; [+9]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["useContext"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K1 ["Context"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R2 R5 K4 ["setThreadId"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          REF R3
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          REF R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          REF R4
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 NEWTABLE                         R7 0 4
       54 MOVE                             R8 R1
       55 MOVE                             R9 R2
       56 MOVE                             R10 R3
       57 MOVE                             R11 R4
       58 SETLIST                          R7 R8 4 [1]
       60 CALL                             R5 2 -1
       61 CLOSEUPVALS                      R2
       62 RETURN                           R5 -1

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
       56 GETTABLEKS                       R8 R9 K19 ["createNewThread"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R10 R0 K18 ["Util"]
       63 GETTABLEKS                       R9 R10 K20 ["deleteThread"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R11 R0 K18 ["Util"]
       70 GETTABLEKS                       R10 R11 K21 ["makeConversation"]
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
       91 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantMultipleChatSupport"]
       93 CALL                             R12 1 1
       94 DUPCLOSURE                       R13 K27 [PROTO_2]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R10
      107 RETURN                           R13 1
