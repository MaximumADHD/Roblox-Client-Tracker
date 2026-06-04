PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["skipIfNoMessage"]
        3 JUMPIFNOT                        R1 ; [+33]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+19]
        7 GETTABLEKS                       R1 R0 K1 ["threads"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R3 2
       11 GETTABLE                         R2 R1 R3
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 1
       14 GETUPVAL                         R3 2
       15 GETTABLE                         R2 R1 R3
       16 GETTABLEKS                       R2 R2 K2 ["messages"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["messageId"]
       22 GETTABLE                         R3 R2 R4
       23 JUMPIF                           R3 ; [+13]
       24 RETURN                           R0 1
       25 JUMP                             ; [+11]
       26 GETUPVAL                         R2 2
       27 GETTABLE                         R1 R0 R2
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETTABLEKS                       R3 R1 K2 ["messages"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K3 ["messageId"]
       34 GETTABLE                         R2 R3 R4
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 1
       37 GETUPVAL                         R1 1
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+82]
       40 NEWTABLE                         R1 0 6
       42 LOADK                            R2 K1 ["threads"]
       43 GETUPVAL                         R3 2
       44 LOADK                            R4 K2 ["messages"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K3 ["messageId"]
       48 LOADK                            R6 K4 ["contents"]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K5 ["contentId"]
       52 SETLIST                          R1 R2 6 [1]
       54 GETUPVAL                         R2 3
       55 MOVE                             R3 R0
       56 MOVE                             R4 R1
       57 CALL                             R2 2 4
       58 JUMPIF                           R2 ; [+19]
       59 GETIMPORT                        R6 K7 [warn]
       61 LOADK                            R7 K8 ["Failed to clone path for editing content:"]
       62 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       63 MOVE                             R9 R1
       64 GETIMPORT                        R8 K11 [table.unpack]
       66 CALL                             R8 1 -1
       67 CALL                             R6 -1 0
       68 GETIMPORT                        R6 K7 [warn]
       70 LOADK                            R8 K12 ["Failed at key: %*"]
       71 MOVE                             R10 R5
       72 NAMECALL                         R8 R8 K13 ["format"]
       74 CALL                             R8 2 1
       75 MOVE                             R7 R8
       76 CALL                             R6 1 0
       77 RETURN                           R0 1
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K14 ["transformFn"]
       81 MOVE                             R7 R4
       82 CALL                             R6 1 1
       83 JUMPIF                           R6 ; [+2]
       84 NEWTABLE                         R6 0 0
       86 GETTABLEKS                       R7 R6 K15 ["cancelTransform"]
       88 JUMPIFNOT                        R7 ; [+1]
       89 RETURN                           R0 1
       90 GETTABLEKS                       R7 R6 K16 ["rawTransformValues"]
       92 JUMPIF                           R7 ; [+28]
       93 GETTABLEKS                       R8 R3 K1 ["threads"]
       95 GETUPVAL                         R9 2
       96 GETTABLE                         R7 R8 R9
       97 GETTABLEKS                       R9 R7 K2 ["messages"]
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K3 ["messageId"]
      102 GETTABLE                         R8 R9 R10
      103 GETUPVAL                         R9 4
      104 NEWTABLE                         R10 0 3
      106 MOVE                             R11 R7
      107 MOVE                             R12 R8
      108 MOVE                             R13 R4
      109 SETLIST                          R10 R11 3 [1]
      111 CALL                             R9 1 0
      112 GETUPVAL                         R9 5
      113 NEWTABLE                         R10 0 3
      115 MOVE                             R11 R7
      116 MOVE                             R12 R8
      117 MOVE                             R13 R4
      118 SETLIST                          R10 R11 3 [1]
      120 CALL                             R9 1 0
      121 RETURN                           R3 1
      122 NEWTABLE                         R1 0 4
      124 GETUPVAL                         R2 2
      125 LOADK                            R3 K2 ["messages"]
      126 GETUPVAL                         R4 0
      127 GETTABLEKS                       R4 R4 K3 ["messageId"]
      129 LOADK                            R5 K4 ["contents"]
      130 SETLIST                          R1 R2 4 [1]
      132 GETUPVAL                         R2 3
      133 MOVE                             R3 R0
      134 MOVE                             R4 R1
      135 CALL                             R2 2 4
      136 JUMPIF                           R2 ; [+19]
      137 GETIMPORT                        R6 K7 [warn]
      139 LOADK                            R7 K8 ["Failed to clone path for editing content:"]
      140 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
      141 MOVE                             R9 R1
      142 GETIMPORT                        R8 K11 [table.unpack]
      144 CALL                             R8 1 -1
      145 CALL                             R6 -1 0
      146 GETIMPORT                        R6 K7 [warn]
      148 LOADK                            R8 K12 ["Failed at key: %*"]
      149 MOVE                             R10 R5
      150 NAMECALL                         R8 R8 K13 ["format"]
      152 CALL                             R8 2 1
      153 MOVE                             R7 R8
      154 CALL                             R6 1 0
      155 RETURN                           R0 1
      156 GETUPVAL                         R7 0
      157 GETTABLEKS                       R7 R7 K5 ["contentId"]
      159 GETTABLE                         R6 R4 R7
      160 GETUPVAL                         R7 0
      161 GETTABLEKS                       R7 R7 K14 ["transformFn"]
      163 MOVE                             R8 R6
      164 CALL                             R7 1 1
      165 JUMPIF                           R7 ; [+2]
      166 NEWTABLE                         R7 0 0
      168 GETTABLEKS                       R8 R7 K16 ["rawTransformValues"]
      170 JUMPIF                           R8 ; [+6]
      171 GETUPVAL                         R8 6
      172 GETTABLEKS                       R8 R8 K17 ["getTimestampMilliseconds"]
      174 CALL                             R8 0 1
      175 SETTABLEKS                       R8 R6 K18 ["updatedAt"]
      177 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["threadId"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

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
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 NEWTABLE                         R6 0 2
       31 MOVE                             R7 R1
       32 MOVE                             R8 R3
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Time"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["clonePath"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["markDirty"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["setUpdatedAt"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Flags"]
       69 GETTABLEKS                       R10 R10 K19 ["FFlagAssistantMultipleChatPersistence"]
       71 CALL                             R9 1 1
       72 DUPCLOSURE                       R10 K20 [PROTO_2]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 RETURN                           R10 1
