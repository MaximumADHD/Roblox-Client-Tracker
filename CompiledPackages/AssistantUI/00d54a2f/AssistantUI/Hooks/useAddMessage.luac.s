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
       27 LOADK                            R7 K4 ["Failed to clone path for adding message:"]
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
       44 MOVE                             R6 R4
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 GETTABLEKS                       R11 R10 K10 ["ephemeral"]
       50 JUMPIFNOT                        R11 ; [+2]
       51 LOADNIL                          R11
       52 SETTABLE                         R11 R4 R9
       53 FORGLOOP                         R6 2 ; [-6]
       55 LOADNIL                          R6
       56 GETUPVAL                         R7 3
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+12]
       59 GETTABLEKS                       R8 R3 K0 ["threads"]
       61 GETUPVAL                         R9 1
       62 GETTABLE                         R7 R8 R9
       63 GETTABLEKS                       R8 R7 K11 ["messageCount"]
       65 ADDK                             R8 R8 K12 [1]
       66 SETTABLEKS                       R8 R7 K11 ["messageCount"]
       68 GETTABLEKS                       R6 R7 K11 ["messageCount"]
       70 JUMP                             ; [+5]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R7 R8 K13 ["getNextLayoutOrder"]
       74 CALL                             R7 0 1
       75 MOVE                             R6 R7
       76 GETUPVAL                         R7 5
       77 DUPTABLE                         R8 K21 [{"messageId", "ephemeral", "createdAt", "role", "contents", "contentCount", "LayoutOrder", "hidden"}]
       78 GETUPVAL                         R9 5
       79 SETTABLEKS                       R9 R8 K14 ["messageId"]
       81 GETUPVAL                         R11 6
       82 GETTABLEKS                       R10 R11 K10 ["ephemeral"]
       84 ORK                              R9 R10 K22 [False]
       85 SETTABLEKS                       R9 R8 K10 ["ephemeral"]
       87 GETUPVAL                         R10 7
       88 GETTABLEKS                       R9 R10 K23 ["getTimestampMilliseconds"]
       90 CALL                             R9 0 1
       91 SETTABLEKS                       R9 R8 K15 ["createdAt"]
       93 GETUPVAL                         R10 6
       94 GETTABLEKS                       R9 R10 K16 ["role"]
       96 SETTABLEKS                       R9 R8 K16 ["role"]
       98 NEWTABLE                         R9 0 0
      100 SETTABLEKS                       R9 R8 K17 ["contents"]
      102 LOADN                            R9 0
      103 SETTABLEKS                       R9 R8 K18 ["contentCount"]
      105 SETTABLEKS                       R6 R8 K19 ["LayoutOrder"]
      107 GETUPVAL                         R10 6
      108 GETTABLEKS                       R9 R10 K20 ["hidden"]
      110 SETTABLEKS                       R9 R8 K20 ["hidden"]
      112 SETTABLE                         R8 R4 R7
      113 GETUPVAL                         R7 0
      114 CALL                             R7 0 1
      115 JUMPIFNOT                        R7 ; [+18]
      116 GETTABLEKS                       R8 R3 K0 ["threads"]
      118 GETUPVAL                         R9 1
      119 GETTABLE                         R7 R8 R9
      120 GETUPVAL                         R8 8
      121 MOVE                             R9 R3
      122 MOVE                             R10 R7
      123 CALL                             R8 2 0
      124 GETUPVAL                         R8 9
      125 MOVE                             R9 R3
      126 MOVE                             R10 R7
      127 CALL                             R8 2 0
      128 GETUPVAL                         R8 10
      129 MOVE                             R9 R3
      130 CALL                             R8 1 0
      131 GETUPVAL                         R8 10
      132 MOVE                             R9 R7
      133 CALL                             R8 1 0
      134 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["threadId"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R2 R3 K1 ["getNextContentId"]
       15 CALL                             R2 0 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K2 ["DEPRECATED_getNextContentId"]
       20 LOADK                            R3 K3 ["Message-"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 0
       23 CALL                             R3 0 1
       24 JUMPIF                           R3 ; [+10]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R4 R5 K4 ["get"]
       28 CALL                             R4 0 1
       29 GETTABLEKS                       R3 R4 K5 ["EventLogger"]
       31 GETTABLEKS                       R4 R3 K6 ["createMessageGuid"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 0
       35 GETUPVAL                         R3 5
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U11
       48 CALL                             R3 1 0
       49 RETURN                           R2 1

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
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 NEWTABLE                         R6 0 2
       36 MOVE                             R7 R1
       37 MOVE                             R8 R3
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ConversationContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R5 K12 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["MessageLayoutOrder"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Parent"]
       41 GETTABLEKS                       R6 R7 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K8 ["Components"]
       48 GETTABLEKS                       R8 R9 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["ThreadIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Util"]
       57 GETTABLEKS                       R8 R9 K17 ["Time"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["clonePath"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Util"]
       76 GETTABLEKS                       R11 R12 K20 ["markDirty"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Util"]
       83 GETTABLEKS                       R12 R13 K21 ["updateThreadIsSaved"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K6 ["Util"]
       90 GETTABLEKS                       R13 R14 K22 ["updateThreadTimestamp"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Flags"]
       97 GETTABLEKS                       R14 R15 K24 ["FFlagAssistantMultipleChatSupport"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K23 ["Flags"]
      104 GETTABLEKS                       R15 R16 K25 ["FFlagAssistantPersistConversations"]
      106 CALL                             R14 1 1
      107 DUPCLOSURE                       R15 K26 [PROTO_2]
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 RETURN                           R15 1
