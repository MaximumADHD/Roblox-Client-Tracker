PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K1 ["messages"]
        5 SETLIST                          R1 R2 3 [1]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 4
       11 JUMPIF                           R2 ; [+19]
       12 GETIMPORT                        R6 K3 [warn]
       14 LOADK                            R7 K4 ["Failed to clone path for adding message:"]
       15 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R8 K7 [table.unpack]
       19 CALL                             R8 1 -1
       20 CALL                             R6 -1 0
       21 GETIMPORT                        R6 K3 [warn]
       23 LOADK                            R8 K8 ["Failed at key: %*"]
       24 MOVE                             R10 R5
       25 NAMECALL                         R8 R8 K9 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 CALL                             R6 1 0
       30 RETURN                           R0 1
       31 MOVE                             R6 R4
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETTABLEKS                       R11 R10 K10 ["ephemeral"]
       37 JUMPIFNOT                        R11 ; [+2]
       38 LOADNIL                          R11
       39 SETTABLE                         R11 R4 R9
       40 FORGLOOP                         R6 2 ; [-6]
       42 LOADNIL                          R6
       43 GETTABLEKS                       R8 R3 K0 ["threads"]
       45 GETUPVAL                         R9 0
       46 GETTABLE                         R7 R8 R9
       47 GETTABLEKS                       R8 R7 K11 ["messageCountAdded"]
       49 ADDK                             R8 R8 K12 [1]
       50 SETTABLEKS                       R8 R7 K11 ["messageCountAdded"]
       52 GETTABLEKS                       R6 R7 K11 ["messageCountAdded"]
       54 GETUPVAL                         R8 2
       55 DUPTABLE                         R9 K28 [{["messageId"], ["createdAt"] = -1, ["updatedAt"] = -1, ["ephemeral"], ["isDirty"] = False, ["isDeleted"] = , ["role"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"] = 0, ["LayoutOrder"], ["hidden"]}]
       56 GETUPVAL                         R10 2
       57 SETTABLEKS                       R10 R9 K13 ["messageId"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K10 ["ephemeral"]
       62 ORK                              R10 R11 K18 [False]
       63 SETTABLEKS                       R10 R9 K10 ["ephemeral"]
       65 GETUPVAL                         R10 3
       66 GETTABLEKS                       R10 R10 K21 ["role"]
       68 SETTABLEKS                       R10 R9 K21 ["role"]
       70 NEWTABLE                         R10 0 0
       72 SETTABLEKS                       R10 R9 K22 ["contents"]
       74 SETTABLEKS                       R6 R9 K26 ["LayoutOrder"]
       76 GETUPVAL                         R10 3
       77 GETTABLEKS                       R10 R10 K27 ["hidden"]
       79 SETTABLEKS                       R10 R9 K27 ["hidden"]
       81 SETTABLE                         R9 R4 R8
       82 GETUPVAL                         R9 2
       83 GETTABLE                         R8 R4 R9
       84 GETUPVAL                         R9 4
       85 DUPTABLE                         R10 K31 [{"thread", "sessionId"}]
       86 SETTABLEKS                       R7 R10 K29 ["thread"]
       88 GETUPVAL                         R11 5
       89 SETTABLEKS                       R11 R10 K30 ["sessionId"]
       91 CALL                             R9 1 0
       92 GETUPVAL                         R9 6
       93 NEWTABLE                         R10 0 1
       95 MOVE                             R11 R8
       96 SETLIST                          R10 R11 1 [1]
       98 CALL                             R9 1 0
       99 GETUPVAL                         R9 7
      100 NEWTABLE                         R10 0 2
      102 MOVE                             R11 R7
      103 MOVE                             R12 R8
      104 SETLIST                          R10 R11 2 [1]
      106 CALL                             R9 1 0
      107 GETUPVAL                         R9 8
      108 NEWTABLE                         R10 0 2
      110 MOVE                             R11 R7
      111 MOVE                             R12 R8
      112 SETLIST                          R10 R11 2 [1]
      114 CALL                             R9 1 0
      115 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getNextContentId"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CALL                             R3 1 0
       20 RETURN                           R2 1

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
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 NEWTABLE                         R8 0 3
       42 MOVE                             R9 R1
       43 MOVE                             R10 R3
       44 MOVE                             R11 R5
       45 SETLIST                          R8 R9 3 [1]
       47 CALL                             R6 2 -1
       48 RETURN                           R6 -1

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
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Components"]
       34 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["SessionIdContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Components"]
       43 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K14 ["ThreadIdContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["clonePath"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["markDirty"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Util"]
       71 GETTABLEKS                       R10 R10 K18 ["setCreatedAt"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["setUpdatedAt"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K20 ["updateThreadIsSaved"]
       87 CALL                             R11 1 1
       88 DUPCLOSURE                       R12 K21 [PROTO_2]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R8
       99 RETURN                           R12 1
