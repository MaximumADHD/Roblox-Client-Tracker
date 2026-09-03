PROTO_0:
        0 NEWTABLE                         R1 0 5
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K1 ["messages"]
        5 GETUPVAL                         R5 1
        6 LOADK                            R6 K2 ["contents"]
        7 SETLIST                          R1 R2 5 [1]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 4
       13 JUMPIF                           R2 ; [+19]
       14 GETIMPORT                        R6 K4 [warn]
       16 LOADK                            R7 K5 ["Failed to clone path for adding content:"]
       17 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       18 MOVE                             R9 R1
       19 GETIMPORT                        R8 K8 [table.unpack]
       21 CALL                             R8 1 -1
       22 CALL                             R6 -1 0
       23 GETIMPORT                        R6 K4 [warn]
       25 LOADK                            R8 K9 ["Failed at key: %*"]
       26 MOVE                             R10 R5
       27 NAMECALL                         R8 R8 K10 ["format"]
       29 CALL                             R8 2 1
       30 MOVE                             R7 R8
       31 CALL                             R6 1 0
       32 RETURN                           R0 1
       33 LOADNIL                          R6
       34 GETTABLEKS                       R8 R3 K0 ["threads"]
       36 GETUPVAL                         R9 0
       37 GETTABLE                         R7 R8 R9
       38 GETTABLEKS                       R8 R7 K1 ["messages"]
       40 JUMPIFNOT                        R8 ; [+9]
       41 GETUPVAL                         R10 1
       42 GETTABLE                         R9 R8 R10
       43 GETTABLEKS                       R10 R9 K11 ["contentCountAdded"]
       45 ADDK                             R10 R10 K12 [1]
       46 SETTABLEKS                       R10 R9 K11 ["contentCountAdded"]
       48 GETTABLEKS                       R6 R9 K11 ["contentCountAdded"]
       50 DUPTABLE                         R9 K24 [{["contentId"], ["type"] = , ["createdAt"] = -1, ["updatedAt"] = -1, ["ephemeral"] = , ["isDirty"] = , ["isDeleted"] = , ["lastServerStreamId"], ["LayoutOrder"]}]
       51 GETUPVAL                         R10 3
       52 SETTABLEKS                       R10 R9 K13 ["contentId"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R10 R10 K25 ["get"]
       57 GETUPVAL                         R11 1
       58 CALL                             R10 1 1
       59 SETTABLEKS                       R10 R9 K22 ["lastServerStreamId"]
       61 SETTABLEKS                       R6 R9 K23 ["LayoutOrder"]
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R10 R10 K26 ["assign"]
       66 MOVE                             R11 R9
       67 GETUPVAL                         R12 6
       68 GETTABLEKS                       R12 R12 K27 ["content"]
       70 CALL                             R10 2 1
       71 MOVE                             R9 R10
       72 GETUPVAL                         R10 3
       73 SETTABLE                         R9 R4 R10
       74 GETTABLEKS                       R11 R7 K1 ["messages"]
       76 GETUPVAL                         R12 1
       77 GETTABLE                         R10 R11 R12
       78 GETUPVAL                         R11 7
       79 DUPTABLE                         R12 K30 [{"thread", "sessionId"}]
       80 SETTABLEKS                       R7 R12 K28 ["thread"]
       82 GETUPVAL                         R13 8
       83 SETTABLEKS                       R13 R12 K29 ["sessionId"]
       85 CALL                             R11 1 0
       86 GETUPVAL                         R11 9
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R9
       90 SETLIST                          R12 R13 1 [1]
       92 CALL                             R11 1 0
       93 GETUPVAL                         R11 10
       94 NEWTABLE                         R12 0 3
       96 MOVE                             R13 R7
       97 MOVE                             R14 R10
       98 MOVE                             R15 R9
       99 SETLIST                          R12 R13 3 [1]
      101 CALL                             R11 1 0
      102 GETUPVAL                         R11 11
      103 NEWTABLE                         R12 0 3
      105 MOVE                             R13 R7
      106 MOVE                             R14 R10
      107 MOVE                             R15 R9
      108 SETLIST                          R12 R13 3 [1]
      110 CALL                             R11 1 0
      111 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["messageId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["getNextContentId"]
        9 DUPTABLE                         R4 K3 [{"threadId", "messageId"}]
       10 SETTABLEKS                       R1 R4 K0 ["threadId"]
       12 SETTABLEKS                       R2 R4 K1 ["messageId"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 2
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CALL                             R4 1 0
       30 RETURN                           R3 1

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
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["useContext"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 NEWTABLE                         R8 0 3
       44 MOVE                             R9 R3
       45 MOVE                             R10 R1
       46 MOVE                             R11 R5
       47 SETLIST                          R8 R9 3 [1]
       49 CALL                             R6 2 -1
       50 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ConversationContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["ServerStreamIdStore"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Components"]
       48 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Components"]
       57 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K16 ["ThreadIdContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Types"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Util"]
       71 GETTABLEKS                       R10 R10 K18 ["clonePath"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["markDirty"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K20 ["setCreatedAt"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Util"]
       92 GETTABLEKS                       R13 R13 K21 ["setUpdatedAt"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Util"]
       99 GETTABLEKS                       R14 R14 K22 ["updateThreadIsSaved"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K23 [PROTO_2]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R10
      115 RETURN                           R14 1
