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
       51 JUMPIFNOT                        R6 ; [+10]
       52 GETTABLEKS                       R7 R3 K0 ["threads"]
       54 GETUPVAL                         R8 1
       55 GETTABLE                         R6 R7 R8
       56 GETUPVAL                         R7 4
       57 MOVE                             R8 R6
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 5
       60 MOVE                             R8 R6
       61 CALL                             R7 1 0
       62 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["remove"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["get"]
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R3 R4 K2 ["EventLogger"]
        9 GETTABLEKS                       R2 R3 K3 ["getMessageGuid"]
       11 GETTABLEKS                       R3 R0 K4 ["messageId"]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

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
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R3
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
       62 GETTABLEKS                       R9 R10 K18 ["updateThreadIsSaved"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["updateThreadTimestamp"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Flags"]
       76 GETTABLEKS                       R11 R12 K21 ["FFlagAssistantMultipleChatSupport"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K22 [PROTO_2]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 RETURN                           R11 1
