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
       88 GETUPVAL                         R8 0
       89 CALL                             R8 0 1
       90 JUMPIFNOT                        R8 ; [+54]
       91 GETUPVAL                         R9 7
       92 GETTABLEKS                       R8 R9 K16 ["getTimestampMilliseconds"]
       94 CALL                             R8 0 1
       95 DUPTABLE                         R9 K23 [{"contentId", "type", "createdAt", "updatedAt", "lastServerStreamId", "LayoutOrder"}]
       96 GETUPVAL                         R10 8
       97 SETTABLEKS                       R10 R9 K17 ["contentId"]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K18 ["type"]
      102 SETTABLEKS                       R8 R9 K19 ["createdAt"]
      104 SETTABLEKS                       R8 R9 K20 ["updatedAt"]
      106 GETUPVAL                         R11 9
      107 GETTABLEKS                       R10 R11 K13 ["get"]
      109 MOVE                             R11 R7
      110 CALL                             R10 1 1
      111 SETTABLEKS                       R10 R9 K21 ["lastServerStreamId"]
      113 SETTABLEKS                       R6 R9 K22 ["LayoutOrder"]
      115 GETUPVAL                         R11 10
      116 GETTABLEKS                       R10 R11 K24 ["assign"]
      118 MOVE                             R11 R9
      119 GETUPVAL                         R13 11
      120 GETTABLEKS                       R12 R13 K25 ["content"]
      122 CALL                             R10 2 1
      123 MOVE                             R9 R10
      124 GETUPVAL                         R10 8
      125 SETTABLE                         R9 R4 R10
      126 GETTABLEKS                       R11 R3 K0 ["threads"]
      128 GETUPVAL                         R12 1
      129 GETTABLE                         R10 R11 R12
      130 GETUPVAL                         R11 12
      131 MOVE                             R12 R3
      132 MOVE                             R13 R10
      133 CALL                             R11 2 0
      134 GETUPVAL                         R11 13
      135 MOVE                             R12 R3
      136 MOVE                             R13 R10
      137 CALL                             R11 2 0
      138 GETUPVAL                         R11 14
      139 MOVE                             R12 R3
      140 CALL                             R11 1 0
      141 GETUPVAL                         R11 14
      142 MOVE                             R12 R10
      143 CALL                             R11 1 0
      144 RETURN                           R3 1
      145 GETUPVAL                         R8 8
      146 GETUPVAL                         R11 15
      147 GETTABLEKS                       R10 R11 K26 ["Dictionary"]
      149 GETTABLEKS                       R9 R10 K27 ["join"]
      151 GETUPVAL                         R11 11
      152 GETTABLEKS                       R10 R11 K25 ["content"]
      154 DUPTABLE                         R11 K28 [{"LayoutOrder", "createdAt", "updatedAt", "lastServerStreamId"}]
      155 SETTABLEKS                       R6 R11 K22 ["LayoutOrder"]
      157 GETUPVAL                         R13 7
      158 GETTABLEKS                       R12 R13 K16 ["getTimestampMilliseconds"]
      160 CALL                             R12 0 1
      161 SETTABLEKS                       R12 R11 K19 ["createdAt"]
      163 GETUPVAL                         R13 7
      164 GETTABLEKS                       R12 R13 K16 ["getTimestampMilliseconds"]
      166 CALL                             R12 0 1
      167 SETTABLEKS                       R12 R11 K20 ["updatedAt"]
      169 GETUPVAL                         R13 9
      170 GETTABLEKS                       R12 R13 K13 ["get"]
      172 MOVE                             R13 R7
      173 CALL                             R12 1 1
      174 SETTABLEKS                       R12 R11 K21 ["lastServerStreamId"]
      176 CALL                             R9 2 1
      177 SETTABLE                         R9 R4 R8
      178 RETURN                           R3 1

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
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+17]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["getNextContentId"]
       17 DUPTABLE                         R4 K4 [{"type", "threadId", "messageId"}]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K5 ["METADATA_TYPES"]
       21 GETTABLEKS                       R5 R6 K6 ["Content"]
       23 SETTABLEKS                       R5 R4 K3 ["type"]
       25 SETTABLEKS                       R1 R4 K0 ["threadId"]
       27 SETTABLEKS                       R2 R4 K1 ["messageId"]
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R3 R4 K7 ["DEPRECATED_getNextContentId"]
       34 LOADK                            R4 K8 ["Content-"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R4 4
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CALL                             R4 1 0
       55 RETURN                           R3 1

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
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U13
       35 CAPTURE                          UPVAL U14
       36 CAPTURE                          UPVAL U15
       37 NEWTABLE                         R6 0 2
       39 MOVE                             R7 R3
       40 MOVE                             R8 R1
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

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
       32 GETTABLEKS                       R6 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Guest"]
       41 GETTABLEKS                       R6 R7 K15 ["Environment"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R8 K16 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["ServerStreamIdStore"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K8 ["Components"]
       62 GETTABLEKS                       R10 R11 K9 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K18 ["ThreadIdContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Util"]
       71 GETTABLEKS                       R10 R11 K19 ["Time"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Util"]
       83 GETTABLEKS                       R12 R13 K21 ["clonePath"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K6 ["Util"]
       90 GETTABLEKS                       R13 R14 K22 ["markDirty"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Util"]
       97 GETTABLEKS                       R14 R15 K23 ["updateThreadIsSaved"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K6 ["Util"]
      104 GETTABLEKS                       R15 R16 K24 ["updateThreadTimestamp"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K25 ["Flags"]
      111 GETTABLEKS                       R16 R17 K26 ["FFlagAssistantMultipleChatSupport"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R18 R0 K25 ["Flags"]
      118 GETTABLEKS                       R17 R18 K27 ["FFlagAssistantPersistConversations"]
      120 CALL                             R16 1 1
      121 LOADN                            R17 0
      122 NEWCLOSURE                       R18 P0
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R11
      130 CAPTURE                          REF R17
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R3
      139 CLOSEUPVALS                      R17
      140 RETURN                           R18 1
