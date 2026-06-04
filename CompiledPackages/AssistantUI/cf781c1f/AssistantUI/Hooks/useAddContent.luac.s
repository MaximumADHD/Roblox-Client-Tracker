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
       49 GETUPVAL                         R7 0
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+17]
       52 GETTABLEKS                       R8 R3 K0 ["threads"]
       54 GETUPVAL                         R9 1
       55 GETTABLE                         R7 R8 R9
       56 GETTABLEKS                       R8 R7 K1 ["messages"]
       58 JUMPIFNOT                        R8 ; [+14]
       59 GETUPVAL                         R10 2
       60 GETTABLE                         R9 R8 R10
       61 GETTABLEKS                       R10 R9 K11 ["contentCountAdded"]
       63 ADDK                             R10 R10 K12 [1]
       64 SETTABLEKS                       R10 R9 K11 ["contentCountAdded"]
       66 GETTABLEKS                       R6 R9 K11 ["contentCountAdded"]
       68 JUMP                             ; [+4]
       69 GETUPVAL                         R6 4
       70 GETUPVAL                         R7 4
       71 ADDK                             R7 R7 K12 [1]
       72 SETUPVAL                         R7 4
       73 GETUPVAL                         R8 0
       74 CALL                             R8 0 1
       75 JUMPIFNOT                        R8 ; [+2]
       76 GETUPVAL                         R7 2
       77 JUMP                             ; [+10]
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R7 R7 K13 ["get"]
       81 CALL                             R7 0 1
       82 GETTABLEKS                       R7 R7 K14 ["EventLogger"]
       84 GETTABLEKS                       R7 R7 K15 ["getMessageGuid"]
       86 GETUPVAL                         R8 2
       87 CALL                             R7 1 1
       88 GETUPVAL                         R8 0
       89 CALL                             R8 0 1
       90 JUMPIFNOT                        R8 ; [+84]
       91 DUPTABLE                         R8 K25 [{"contentId", "type", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "lastServerStreamId", "LayoutOrder"}]
       92 GETUPVAL                         R9 6
       93 SETTABLEKS                       R9 R8 K16 ["contentId"]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K17 ["type"]
       98 LOADN                            R9 255
       99 SETTABLEKS                       R9 R8 K18 ["createdAt"]
      101 LOADN                            R9 255
      102 SETTABLEKS                       R9 R8 K19 ["updatedAt"]
      104 LOADNIL                          R9
      105 SETTABLEKS                       R9 R8 K20 ["ephemeral"]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R8 K21 ["isDirty"]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K22 ["isDeleted"]
      113 GETUPVAL                         R9 7
      114 GETTABLEKS                       R9 R9 K13 ["get"]
      116 MOVE                             R10 R7
      117 CALL                             R9 1 1
      118 SETTABLEKS                       R9 R8 K23 ["lastServerStreamId"]
      120 SETTABLEKS                       R6 R8 K24 ["LayoutOrder"]
      122 GETUPVAL                         R9 8
      123 GETTABLEKS                       R9 R9 K26 ["assign"]
      125 MOVE                             R10 R8
      126 GETUPVAL                         R11 9
      127 GETTABLEKS                       R11 R11 K27 ["content"]
      129 CALL                             R9 2 1
      130 MOVE                             R8 R9
      131 GETUPVAL                         R9 6
      132 SETTABLE                         R8 R4 R9
      133 GETTABLEKS                       R10 R3 K0 ["threads"]
      135 GETUPVAL                         R11 1
      136 GETTABLE                         R9 R10 R11
      137 GETTABLEKS                       R11 R9 K1 ["messages"]
      139 GETUPVAL                         R12 2
      140 GETTABLE                         R10 R11 R12
      141 GETUPVAL                         R11 10
      142 DUPTABLE                         R12 K30 [{"thread", "sessionId"}]
      143 SETTABLEKS                       R9 R12 K28 ["thread"]
      145 GETUPVAL                         R13 11
      146 SETTABLEKS                       R13 R12 K29 ["sessionId"]
      148 CALL                             R11 1 0
      149 GETUPVAL                         R11 12
      150 NEWTABLE                         R12 0 1
      152 MOVE                             R13 R8
      153 SETLIST                          R12 R13 1 [1]
      155 CALL                             R11 1 0
      156 GETUPVAL                         R11 13
      157 NEWTABLE                         R12 0 3
      159 MOVE                             R13 R9
      160 MOVE                             R14 R10
      161 MOVE                             R15 R8
      162 SETLIST                          R12 R13 3 [1]
      164 CALL                             R11 1 0
      165 GETUPVAL                         R11 14
      166 NEWTABLE                         R12 0 3
      168 MOVE                             R13 R9
      169 MOVE                             R14 R10
      170 MOVE                             R15 R8
      171 SETLIST                          R12 R13 3 [1]
      173 CALL                             R11 1 0
      174 RETURN                           R3 1
      175 GETUPVAL                         R8 6
      176 GETUPVAL                         R9 15
      177 GETTABLEKS                       R9 R9 K31 ["Dictionary"]
      179 GETTABLEKS                       R9 R9 K32 ["join"]
      181 GETUPVAL                         R10 9
      182 GETTABLEKS                       R10 R10 K27 ["content"]
      184 DUPTABLE                         R11 K33 [{"LayoutOrder", "createdAt", "updatedAt", "lastServerStreamId"}]
      185 SETTABLEKS                       R6 R11 K24 ["LayoutOrder"]
      187 GETUPVAL                         R12 16
      188 GETTABLEKS                       R12 R12 K34 ["getTimestampMilliseconds"]
      190 CALL                             R12 0 1
      191 SETTABLEKS                       R12 R11 K18 ["createdAt"]
      193 GETUPVAL                         R12 16
      194 GETTABLEKS                       R12 R12 K34 ["getTimestampMilliseconds"]
      196 CALL                             R12 0 1
      197 SETTABLEKS                       R12 R11 K19 ["updatedAt"]
      199 GETUPVAL                         R12 7
      200 GETTABLEKS                       R12 R12 K13 ["get"]
      202 MOVE                             R13 R7
      203 CALL                             R12 1 1
      204 SETTABLEKS                       R12 R11 K23 ["lastServerStreamId"]
      206 CALL                             R9 2 1
      207 SETTABLE                         R9 R4 R8
      208 RETURN                           R3 1

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
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K2 ["getNextContentId"]
       17 DUPTABLE                         R4 K3 [{"threadId", "messageId"}]
       18 SETTABLEKS                       R1 R4 K0 ["threadId"]
       20 SETTABLEKS                       R2 R4 K1 ["messageId"]
       22 CALL                             R3 1 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K4 ["DEPRECATED_getNextContentId"]
       27 LOADK                            R4 K5 ["Content-"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 3
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          UPVAL U15
       48 CALL                             R4 1 0
       49 RETURN                           R3 1

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
       18 LOADNIL                          R4
       19 GETUPVAL                         R5 3
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["useContext"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K1 ["Context"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R4 R5 K4 ["sessionId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          REF R4
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 CAPTURE                          UPVAL U14
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          UPVAL U16
       51 NEWTABLE                         R7 0 3
       53 MOVE                             R8 R3
       54 MOVE                             R9 R1
       55 MOVE                             R10 R4
       56 SETLIST                          R7 R8 3 [1]
       58 CALL                             R5 2 -1
       59 CLOSEUPVALS                      R4
       60 RETURN                           R5 -1

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
       27 GETTABLEKS                       R4 R4 K12 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Guest"]
       41 GETTABLEKS                       R6 R6 K15 ["Environment"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["ServerStreamIdStore"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Components"]
       62 GETTABLEKS                       R9 R9 K9 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K18 ["SessionIdContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Components"]
       71 GETTABLEKS                       R10 R10 K9 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K19 ["ThreadIdContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Util"]
       80 GETTABLEKS                       R11 R11 K20 ["Time"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K21 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Util"]
       92 GETTABLEKS                       R13 R13 K22 ["clonePath"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Util"]
       99 GETTABLEKS                       R14 R14 K23 ["markDirty"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Util"]
      106 GETTABLEKS                       R15 R15 K24 ["setCreatedAt"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K6 ["Util"]
      113 GETTABLEKS                       R16 R16 K25 ["setUpdatedAt"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K6 ["Util"]
      120 GETTABLEKS                       R17 R17 K26 ["updateThreadIsSaved"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K27 ["Flags"]
      127 GETTABLEKS                       R18 R18 K28 ["FFlagAssistantMultipleChatPersistence"]
      129 CALL                             R17 1 1
      130 LOADN                            R18 0
      131 NEWCLOSURE                       R19 P0
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R12
      139 CAPTURE                          REF R18
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R10
      149 CLOSEUPVALS                      R18
      150 RETURN                           R19 1
