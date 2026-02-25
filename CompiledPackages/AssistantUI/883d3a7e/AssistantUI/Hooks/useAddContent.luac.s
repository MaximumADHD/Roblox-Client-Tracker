PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_1:
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
       35 LOADK                            R7 K6 ["Failed to clone path for adding content:"]
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
       52 GETUPVAL                         R6 4
       53 GETUPVAL                         R7 4
       54 ADDK                             R7 R7 K12 [1]
       55 SETUPVAL                         R7 4
       56 GETUPVAL                         R7 5
       57 GETUPVAL                         R10 6
       58 GETTABLEKS                       R9 R10 K13 ["Dictionary"]
       60 GETTABLEKS                       R8 R9 K14 ["join"]
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R9 R10 K15 ["content"]
       65 DUPTABLE                         R10 K20 [{"LayoutOrder", "startEditTimestamp", "lastEditTimestamp", "lastServerStreamId"}]
       66 SETTABLEKS                       R6 R10 K16 ["LayoutOrder"]
       68 GETIMPORT                        R12 K23 [DateTime.now]
       70 CALL                             R12 0 1
       71 GETTABLEKS                       R11 R12 K24 ["UnixTimestampMillis"]
       73 SETTABLEKS                       R11 R10 K17 ["startEditTimestamp"]
       75 GETIMPORT                        R12 K23 [DateTime.now]
       77 CALL                             R12 0 1
       78 GETTABLEKS                       R11 R12 K24 ["UnixTimestampMillis"]
       80 SETTABLEKS                       R11 R10 K18 ["lastEditTimestamp"]
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R11 R12 K25 ["get"]
       85 GETUPVAL                         R15 8
       86 GETTABLEKS                       R14 R15 K25 ["get"]
       88 CALL                             R14 0 1
       89 GETTABLEKS                       R13 R14 K26 ["EventLogger"]
       91 GETTABLEKS                       R12 R13 K27 ["getMessageGuid"]
       93 GETUPVAL                         R14 2
       94 GETTABLEKS                       R13 R14 K2 ["messageId"]
       96 CALL                             R12 1 -1
       97 CALL                             R11 -1 1
       98 SETTABLEKS                       R11 R10 K19 ["lastServerStreamId"]
      100 CALL                             R8 2 1
      101 SETTABLE                         R8 R4 R7
      102 GETUPVAL                         R7 0
      103 CALL                             R7 0 1
      104 JUMPIFNOT                        R7 ; [+10]
      105 GETTABLEKS                       R8 R3 K0 ["threads"]
      107 GETUPVAL                         R9 1
      108 GETTABLE                         R7 R8 R9
      109 GETUPVAL                         R8 9
      110 MOVE                             R9 R7
      111 CALL                             R8 1 0
      112 GETUPVAL                         R8 10
      113 MOVE                             R9 R7
      114 CALL                             R8 1 0
      115 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Content-"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CALL                             R2 1 0
       17 RETURN                           R1 1

PROTO_3:
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
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R3
       36 MOVE                             R8 R1
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R4 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R5 K12 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["ServerStreamIdStore"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Components"]
       48 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["ThreadIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["clonePath"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["getNextContentId"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K14 ["Util"]
       76 GETTABLEKS                       R11 R12 K20 ["updateThreadIsSaved"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K14 ["Util"]
       83 GETTABLEKS                       R12 R13 K21 ["updateThreadTimestamp"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K22 ["Flags"]
       90 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantMultipleChatSupport"]
       92 CALL                             R12 1 1
       93 LOADN                            R13 0
       94 DUPCLOSURE                       R14 K24 [PROTO_0]
       95 NEWCLOSURE                       R15 P1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R8
      102 CAPTURE                          REF R13
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R10
      108 CLOSEUPVALS                      R13
      109 RETURN                           R15 1
