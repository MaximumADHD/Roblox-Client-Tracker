PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+11]
        4 NEWTABLE                         R2 0 5
        6 LOADK                            R3 K0 ["threads"]
        7 GETUPVAL                         R4 1
        8 LOADK                            R5 K1 ["messages"]
        9 GETUPVAL                         R6 2
       10 LOADK                            R7 K2 ["contents"]
       11 SETLIST                          R2 R3 5 [1]
       13 MOVE                             R1 R2
       14 JUMP                             ; [+9]
       15 NEWTABLE                         R2 0 4
       17 GETUPVAL                         R3 1
       18 LOADK                            R4 K1 ["messages"]
       19 GETUPVAL                         R5 2
       20 LOADK                            R6 K2 ["contents"]
       21 SETLIST                          R2 R3 4 [1]
       23 MOVE                             R1 R2
       24 GETUPVAL                         R2 3
       25 MOVE                             R3 R0
       26 MOVE                             R4 R1
       27 CALL                             R2 2 4
       28 JUMPIF                           R2 ; [+19]
       29 GETIMPORT                        R6 K4 [warn]
       31 LOADK                            R7 K5 ["Failed to clone path for adding content:"]
       32 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       33 MOVE                             R9 R1
       34 GETIMPORT                        R8 K8 [table.unpack]
       36 CALL                             R8 1 -1
       37 CALL                             R6 -1 0
       38 GETIMPORT                        R6 K4 [warn]
       40 LOADK                            R8 K9 ["Failed at key: %*"]
       41 MOVE                             R10 R5
       42 NAMECALL                         R8 R8 K10 ["format"]
       44 CALL                             R8 2 1
       45 MOVE                             R7 R8
       46 CALL                             R6 1 0
       47 RETURN                           R0 1
       48 LOADNIL                          R6
       49 GETUPVAL                         R7 4
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+17]
       52 GETTABLEKS                       R8 R3 K0 ["threads"]
       54 GETUPVAL                         R9 1
       55 GETTABLE                         R7 R8 R9
       56 GETTABLEKS                       R8 R7 K1 ["messages"]
       58 JUMPIFNOT                        R8 ; [+14]
       59 GETUPVAL                         R10 2
       60 GETTABLE                         R9 R8 R10
       61 GETTABLEKS                       R10 R9 K11 ["contentCount"]
       63 ADDK                             R10 R10 K12 [1]
       64 SETTABLEKS                       R10 R9 K11 ["contentCount"]
       66 GETTABLEKS                       R6 R9 K11 ["contentCount"]
       68 JUMP                             ; [+4]
       69 GETUPVAL                         R6 5
       70 GETUPVAL                         R7 5
       71 ADDK                             R7 R7 K12 [1]
       72 SETUPVAL                         R7 5
       73 GETUPVAL                         R8 4
       74 CALL                             R8 0 1
       75 JUMPIFNOT                        R8 ; [+2]
       76 GETUPVAL                         R7 2
       77 JUMP                             ; [+10]
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R9 R10 K13 ["get"]
       81 CALL                             R9 0 1
       82 GETTABLEKS                       R8 R9 K14 ["EventLogger"]
       84 GETTABLEKS                       R7 R8 K15 ["getMessageGuid"]
       86 GETUPVAL                         R8 2
       87 CALL                             R7 1 1
       88 GETUPVAL                         R8 7
       89 GETUPVAL                         R11 8
       90 GETTABLEKS                       R10 R11 K16 ["Dictionary"]
       92 GETTABLEKS                       R9 R10 K17 ["join"]
       94 GETUPVAL                         R11 9
       95 GETTABLEKS                       R10 R11 K18 ["content"]
       97 DUPTABLE                         R11 K23 [{"LayoutOrder", "createdAt", "updatedAt", "lastServerStreamId"}]
       98 SETTABLEKS                       R6 R11 K19 ["LayoutOrder"]
      100 GETUPVAL                         R13 10
      101 GETTABLEKS                       R12 R13 K24 ["getTimestampMilliseconds"]
      103 CALL                             R12 0 1
      104 SETTABLEKS                       R12 R11 K20 ["createdAt"]
      106 GETUPVAL                         R13 10
      107 GETTABLEKS                       R12 R13 K24 ["getTimestampMilliseconds"]
      109 CALL                             R12 0 1
      110 SETTABLEKS                       R12 R11 K21 ["updatedAt"]
      112 GETUPVAL                         R13 11
      113 GETTABLEKS                       R12 R13 K13 ["get"]
      115 MOVE                             R13 R7
      116 CALL                             R12 1 1
      117 SETTABLEKS                       R12 R11 K22 ["lastServerStreamId"]
      119 CALL                             R9 2 1
      120 SETTABLE                         R9 R4 R8
      121 GETUPVAL                         R8 0
      122 CALL                             R8 0 1
      123 JUMPIFNOT                        R8 ; [+18]
      124 GETTABLEKS                       R9 R3 K0 ["threads"]
      126 GETUPVAL                         R10 1
      127 GETTABLE                         R8 R9 R10
      128 GETUPVAL                         R9 12
      129 MOVE                             R10 R3
      130 MOVE                             R11 R8
      131 CALL                             R9 2 0
      132 GETUPVAL                         R9 13
      133 MOVE                             R10 R3
      134 MOVE                             R11 R8
      135 CALL                             R9 2 0
      136 GETUPVAL                         R9 14
      137 MOVE                             R10 R3
      138 CALL                             R9 1 0
      139 GETUPVAL                         R9 14
      140 MOVE                             R10 R8
      141 CALL                             R9 1 0
      142 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["threadId"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K1 ["messageId"]
       11 GETUPVAL                         R4 0
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["getNextContentId"]
       17 DUPTABLE                         R4 K3 [{"threadId", "messageId"}]
       18 SETTABLEKS                       R1 R4 K0 ["threadId"]
       20 SETTABLEKS                       R2 R4 K1 ["messageId"]
       22 CALL                             R3 1 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K4 ["DEPRECATED_getNextContentId"]
       27 LOADK                            R4 K5 ["Content-"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 3
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U13
       46 CALL                             R4 1 0
       47 RETURN                           R3 1

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
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 NEWTABLE                         R6 0 2
       38 MOVE                             R7 R3
       39 MOVE                             R8 R1
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 -1
       43 RETURN                           R4 -1

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
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Guest"]
       34 GETTABLEKS                       R5 R6 K14 ["Environment"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Parent"]
       41 GETTABLEKS                       R6 R7 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Util"]
       48 GETTABLEKS                       R7 R8 K16 ["ServerStreamIdStore"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K8 ["Components"]
       55 GETTABLEKS                       R9 R10 K9 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K17 ["ThreadIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R10 K18 ["Time"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Util"]
       76 GETTABLEKS                       R11 R12 K20 ["clonePath"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Util"]
       83 GETTABLEKS                       R12 R13 K21 ["markDirty"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K6 ["Util"]
       90 GETTABLEKS                       R13 R14 K22 ["updateThreadIsSaved"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Util"]
       97 GETTABLEKS                       R14 R15 K23 ["updateThreadTimestamp"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K24 ["Flags"]
      104 GETTABLEKS                       R15 R16 K25 ["FFlagAssistantMultipleChatSupport"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K24 ["Flags"]
      111 GETTABLEKS                       R16 R17 K26 ["FFlagAssistantPersistConversations"]
      113 CALL                             R15 1 1
      114 LOADN                            R16 0
      115 NEWCLOSURE                       R17 P0
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R10
      123 CAPTURE                          REF R16
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R11
      131 CLOSEUPVALS                      R16
      132 RETURN                           R17 1
