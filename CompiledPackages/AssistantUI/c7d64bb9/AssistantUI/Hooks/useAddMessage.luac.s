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
       56 GETUPVAL                         R7 0
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+12]
       59 GETTABLEKS                       R8 R3 K0 ["threads"]
       61 GETUPVAL                         R9 1
       62 GETTABLE                         R7 R8 R9
       63 GETTABLEKS                       R8 R7 K11 ["messageCountAdded"]
       65 ADDK                             R8 R8 K12 [1]
       66 SETTABLEKS                       R8 R7 K11 ["messageCountAdded"]
       68 GETTABLEKS                       R6 R7 K11 ["messageCountAdded"]
       70 JUMP                             ; [+5]
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K13 ["getNextLayoutOrder"]
       74 CALL                             R7 0 1
       75 MOVE                             R6 R7
       76 GETUPVAL                         R8 0
       77 CALL                             R8 0 1
       78 JUMPIFNOT                        R8 ; [+2]
       79 LOADN                            R7 255
       80 JUMP                             ; [+4]
       81 GETUPVAL                         R7 4
       82 GETTABLEKS                       R7 R7 K14 ["getTimestampMilliseconds"]
       84 CALL                             R7 0 1
       85 GETUPVAL                         R8 5
       86 DUPTABLE                         R9 K26 [{"messageId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "role", "contents", "contentCountAdded", "contentCountLoaded", "LayoutOrder", "hidden"}]
       87 GETUPVAL                         R10 5
       88 SETTABLEKS                       R10 R9 K15 ["messageId"]
       90 SETTABLEKS                       R7 R9 K16 ["createdAt"]
       92 SETTABLEKS                       R7 R9 K17 ["updatedAt"]
       94 GETUPVAL                         R11 6
       95 GETTABLEKS                       R11 R11 K10 ["ephemeral"]
       97 ORK                              R10 R11 K27 [False]
       98 SETTABLEKS                       R10 R9 K10 ["ephemeral"]
      100 LOADB                            R10 0
      101 SETTABLEKS                       R10 R9 K18 ["isDirty"]
      103 LOADNIL                          R10
      104 SETTABLEKS                       R10 R9 K19 ["isDeleted"]
      106 GETUPVAL                         R10 6
      107 GETTABLEKS                       R10 R10 K20 ["role"]
      109 SETTABLEKS                       R10 R9 K20 ["role"]
      111 NEWTABLE                         R10 0 0
      113 SETTABLEKS                       R10 R9 K21 ["contents"]
      115 LOADN                            R10 0
      116 SETTABLEKS                       R10 R9 K22 ["contentCountAdded"]
      118 LOADN                            R10 0
      119 SETTABLEKS                       R10 R9 K23 ["contentCountLoaded"]
      121 SETTABLEKS                       R6 R9 K24 ["LayoutOrder"]
      123 GETUPVAL                         R10 6
      124 GETTABLEKS                       R10 R10 K25 ["hidden"]
      126 SETTABLEKS                       R10 R9 K25 ["hidden"]
      128 SETTABLE                         R9 R4 R8
      129 GETUPVAL                         R8 0
      130 CALL                             R8 0 1
      131 JUMPIFNOT                        R8 ; [+37]
      132 GETTABLEKS                       R9 R3 K0 ["threads"]
      134 GETUPVAL                         R10 1
      135 GETTABLE                         R8 R9 R10
      136 GETUPVAL                         R10 5
      137 GETTABLE                         R9 R4 R10
      138 GETUPVAL                         R10 7
      139 DUPTABLE                         R11 K30 [{"thread", "sessionId"}]
      140 SETTABLEKS                       R8 R11 K28 ["thread"]
      142 GETUPVAL                         R12 8
      143 SETTABLEKS                       R12 R11 K29 ["sessionId"]
      145 CALL                             R10 1 0
      146 GETUPVAL                         R10 9
      147 NEWTABLE                         R11 0 1
      149 MOVE                             R12 R9
      150 SETLIST                          R11 R12 1 [1]
      152 CALL                             R10 1 0
      153 GETUPVAL                         R10 10
      154 NEWTABLE                         R11 0 2
      156 MOVE                             R12 R8
      157 MOVE                             R13 R9
      158 SETLIST                          R11 R12 2 [1]
      160 CALL                             R10 1 0
      161 GETUPVAL                         R10 11
      162 NEWTABLE                         R11 0 2
      164 MOVE                             R12 R8
      165 MOVE                             R13 R9
      166 SETLIST                          R11 R12 2 [1]
      168 CALL                             R10 1 0
      169 RETURN                           R3 1

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
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["getNextContentId"]
       15 CALL                             R2 0 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["DEPRECATED_getNextContentId"]
       20 LOADK                            R3 K3 ["Message-"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 0
       23 CALL                             R3 0 1
       24 JUMPIF                           R3 ; [+10]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K4 ["get"]
       28 CALL                             R3 0 1
       29 GETTABLEKS                       R3 R3 K5 ["EventLogger"]
       31 GETTABLEKS                       R4 R3 K6 ["createMessageGuid"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 0
       35 GETUPVAL                         R3 4
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U11
       48 CAPTURE                          UPVAL U12
       49 CALL                             R3 1 0
       50 RETURN                           R2 1

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
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          REF R4
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 NEWTABLE                         R7 0 3
       50 MOVE                             R8 R1
       51 MOVE                             R9 R3
       52 MOVE                             R10 R4
       53 SETLIST                          R7 R8 3 [1]
       55 CALL                             R5 2 -1
       56 CLOSEUPVALS                      R4
       57 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R4 K12 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["MessageLayoutOrder"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Parent"]
       41 GETTABLEKS                       R6 R6 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Components"]
       48 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K16 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Components"]
       57 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K17 ["ThreadIdContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["Time"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Util"]
       78 GETTABLEKS                       R11 R11 K20 ["clonePath"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K21 ["markDirty"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Util"]
       92 GETTABLEKS                       R13 R13 K22 ["setCreatedAt"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Util"]
       99 GETTABLEKS                       R14 R14 K23 ["setUpdatedAt"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Util"]
      106 GETTABLEKS                       R15 R15 K24 ["updateThreadIsSaved"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Flags"]
      113 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantMultipleChatPersistence"]
      115 CALL                             R15 1 1
      116 DUPCLOSURE                       R16 K27 [PROTO_2]
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R11
      131 RETURN                           R16 1
