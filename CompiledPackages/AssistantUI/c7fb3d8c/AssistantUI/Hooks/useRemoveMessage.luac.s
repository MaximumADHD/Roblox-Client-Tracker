PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+9]
        4 NEWTABLE                         R2 0 3
        6 LOADK                            R3 K0 ["threads"]
        7 GETUPVAL                         R4 1
        8 LOADK                            R5 K1 ["messages"]
        9 SETLIST                          R2 R3 3 [1]
       11 MOVE                             R1 R2
       12 JUMP                             ; [+7]
       13 NEWTABLE                         R2 0 2
       15 GETUPVAL                         R3 1
       16 LOADK                            R4 K1 ["messages"]
       17 SETLIST                          R2 R3 2 [1]
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 2
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 4
       24 JUMPIF                           R2 ; [+19]
       25 GETIMPORT                        R6 K3 [warn]
       27 LOADK                            R7 K4 ["Failed to clone path for removing message:"]
       28 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       29 MOVE                             R9 R1
       30 GETIMPORT                        R8 K7 [table.unpack]
       32 CALL                             R8 1 -1
       33 CALL                             R6 -1 0
       34 GETIMPORT                        R6 K3 [warn]
       36 LOADK                            R8 K8 ["Failed at key: %*"]
       37 MOVE                             R10 R5
       38 NAMECALL                         R8 R8 K9 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 CALL                             R6 1 0
       43 RETURN                           R0 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K10 ["messageId"]
       47 LOADNIL                          R7
       48 SETTABLE                         R7 R4 R6
       49 GETUPVAL                         R6 0
       50 CALL                             R6 0 1
       51 JUMPIFNOT                        R6 ; [+19]
       52 GETTABLEKS                       R7 R3 K0 ["threads"]
       54 GETUPVAL                         R8 1
       55 GETTABLE                         R6 R7 R8
       56 GETUPVAL                         R7 4
       57 MOVE                             R8 R3
       58 MOVE                             R9 R6
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 5
       61 MOVE                             R8 R3
       62 MOVE                             R9 R6
       63 CALL                             R7 2 0
       64 GETUPVAL                         R7 6
       65 MOVE                             R8 R6
       66 CALL                             R7 1 1
       67 JUMPIFNOT                        R7 ; [+3]
       68 GETUPVAL                         R7 6
       69 MOVE                             R8 R3
       70 CALL                             R7 1 0
       71 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["threadId"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+3]
       12 GETTABLEKS                       R2 R0 K1 ["messageId"]
       14 JUMP                             ; [+11]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K2 ["get"]
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R3 R4 K3 ["EventLogger"]
       21 GETTABLEKS                       R2 R3 K4 ["getMessageGuid"]
       23 GETTABLEKS                       R3 R0 K1 ["messageId"]
       25 CALL                             R2 1 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K5 ["remove"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 4
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

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
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 NEWTABLE                         R6 0 2
       34 MOVE                             R7 R1
       35 MOVE                             R8 R3
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R4 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["ServerStreamIdStore"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Components"]
       41 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K15 ["ThreadIdContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K13 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["clonePath"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K13 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["markDirty"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["updateThreadIsSaved"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Util"]
       76 GETTABLEKS                       R11 R12 K20 ["updateThreadTimestamp"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Flags"]
       83 GETTABLEKS                       R12 R13 K22 ["FFlagAssistantMultipleChatSupport"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K21 ["Flags"]
       90 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantPersistConversations"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K24 [PROTO_2]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R8
      105 RETURN                           R13 1
