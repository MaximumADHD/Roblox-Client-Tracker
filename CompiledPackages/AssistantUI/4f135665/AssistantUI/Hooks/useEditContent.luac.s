PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+13]
        4 NEWTABLE                         R2 0 5
        6 LOADK                            R3 K0 ["threads"]
        7 GETUPVAL                         R4 1
        8 LOADK                            R5 K1 ["messages"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K2 ["messageId"]
       12 LOADK                            R7 K3 ["contents"]
       13 SETLIST                          R2 R3 5 [1]
       15 MOVE                             R1 R2
       16 JUMP                             ; [+11]
       17 NEWTABLE                         R2 0 4
       19 GETUPVAL                         R3 1
       20 LOADK                            R4 K1 ["messages"]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K2 ["messageId"]
       24 LOADK                            R6 K3 ["contents"]
       25 SETLIST                          R2 R3 4 [1]
       27 MOVE                             R1 R2
       28 GETUPVAL                         R2 3
       29 MOVE                             R3 R0
       30 MOVE                             R4 R1
       31 CALL                             R2 2 4
       32 JUMPIF                           R2 ; [+19]
       33 GETIMPORT                        R6 K5 [warn]
       35 LOADK                            R7 K6 ["Failed to clone path for editing content:"]
       36 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       37 MOVE                             R9 R1
       38 GETIMPORT                        R8 K9 [table.unpack]
       40 CALL                             R8 1 -1
       41 CALL                             R6 -1 0
       42 GETIMPORT                        R6 K5 [warn]
       44 LOADK                            R8 K10 ["Failed at key: %*"]
       45 MOVE                             R10 R5
       46 NAMECALL                         R8 R8 K11 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 CALL                             R6 1 0
       51 RETURN                           R0 1
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R7 R8 K12 ["contentId"]
       55 GETTABLE                         R6 R4 R7
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K13 ["transformFn"]
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 JUMPIF                           R7 ; [+2]
       62 NEWTABLE                         R7 0 0
       64 GETUPVAL                         R8 0
       65 CALL                             R8 0 1
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R8 R7 K14 ["rawTransformValues"]
       69 JUMPIF                           R8 ; [+23]
       70 GETUPVAL                         R9 4
       71 GETTABLEKS                       R8 R9 K15 ["getTimestampMilliseconds"]
       73 CALL                             R8 0 1
       74 SETTABLEKS                       R8 R6 K16 ["updatedAt"]
       76 GETUPVAL                         R8 0
       77 CALL                             R8 0 1
       78 JUMPIFNOT                        R8 ; [+14]
       79 GETTABLEKS                       R9 R3 K0 ["threads"]
       81 GETUPVAL                         R10 1
       82 GETTABLE                         R8 R9 R10
       83 GETUPVAL                         R9 5
       84 MOVE                             R10 R3
       85 MOVE                             R11 R8
       86 CALL                             R9 2 0
       87 GETUPVAL                         R9 6
       88 MOVE                             R10 R3
       89 CALL                             R9 1 0
       90 GETUPVAL                         R9 6
       91 MOVE                             R10 R8
       92 CALL                             R9 1 0
       93 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["threadId"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R1
       33 MOVE                             R8 R3
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["Time"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["clonePath"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Util"]
       55 GETTABLEKS                       R8 R9 K16 ["markDirty"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K12 ["Util"]
       62 GETTABLEKS                       R9 R10 K17 ["updateThreadTimestamp"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K18 ["Flags"]
       69 GETTABLEKS                       R10 R11 K19 ["FFlagAssistantMultipleChatSupport"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K18 ["Flags"]
       76 GETTABLEKS                       R11 R12 K20 ["FFlagAssistantPersistConversations"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K21 [PROTO_2]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 RETURN                           R11 1
