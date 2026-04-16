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
       51 JUMPIFNOT                        R6 ; [+25]
       52 GETTABLEKS                       R7 R3 K0 ["threads"]
       54 GETUPVAL                         R8 1
       55 GETTABLE                         R6 R7 R8
       56 GETUPVAL                         R7 4
       57 DUPTABLE                         R8 K14 [{"conversation", "thread", "sessionId"}]
       58 SETTABLEKS                       R3 R8 K11 ["conversation"]
       60 SETTABLEKS                       R6 R8 K12 ["thread"]
       62 GETUPVAL                         R9 5
       63 SETTABLEKS                       R9 R8 K13 ["sessionId"]
       65 CALL                             R7 1 0
       66 GETUPVAL                         R7 6
       67 MOVE                             R8 R3
       68 MOVE                             R9 R6
       69 CALL                             R7 2 0
       70 GETUPVAL                         R7 7
       71 MOVE                             R8 R6
       72 CALL                             R7 1 1
       73 JUMPIFNOT                        R7 ; [+3]
       74 GETUPVAL                         R7 7
       75 MOVE                             R8 R3
       76 CALL                             R7 1 0
       77 RETURN                           R3 1

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
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

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
       18 LOADNIL                          R4
       19 GETUPVAL                         R5 3
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K0 ["useContext"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K1 ["Context"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R4 R5 K4 ["sessionId"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          REF R4
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          UPVAL U10
       45 NEWTABLE                         R7 0 3
       47 MOVE                             R8 R1
       48 MOVE                             R9 R3
       49 MOVE                             R10 R4
       50 SETLIST                          R7 R8 3 [1]
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R4
       54 RETURN                           R5 -1

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
       43 GETTABLEKS                       R6 R7 K15 ["SessionIdContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Components"]
       50 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K16 ["ThreadIdContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K13 ["Util"]
       64 GETTABLEKS                       R9 R10 K18 ["clonePath"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K13 ["Util"]
       71 GETTABLEKS                       R10 R11 K19 ["markDirty"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K13 ["Util"]
       78 GETTABLEKS                       R11 R12 K20 ["updateThreadIsSaved"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K13 ["Util"]
       85 GETTABLEKS                       R12 R13 K21 ["updateThreadTimestamp"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K22 ["Flags"]
       92 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantMultipleChatPersistence"]
       94 CALL                             R12 1 1
       95 DUPCLOSURE                       R13 K24 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R9
      107 RETURN                           R13 1
