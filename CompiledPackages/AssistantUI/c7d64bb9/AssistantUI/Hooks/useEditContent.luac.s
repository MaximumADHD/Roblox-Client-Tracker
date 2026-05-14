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
       37 LOADNIL                          R1
       38 GETUPVAL                         R2 1
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+13]
       41 NEWTABLE                         R2 0 5
       43 LOADK                            R3 K1 ["threads"]
       44 GETUPVAL                         R4 2
       45 LOADK                            R5 K2 ["messages"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K3 ["messageId"]
       49 LOADK                            R7 K4 ["contents"]
       50 SETLIST                          R2 R3 5 [1]
       52 MOVE                             R1 R2
       53 JUMP                             ; [+11]
       54 NEWTABLE                         R2 0 4
       56 GETUPVAL                         R3 2
       57 LOADK                            R4 K2 ["messages"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K3 ["messageId"]
       61 LOADK                            R6 K4 ["contents"]
       62 SETLIST                          R2 R3 4 [1]
       64 MOVE                             R1 R2
       65 GETUPVAL                         R2 3
       66 MOVE                             R3 R0
       67 MOVE                             R4 R1
       68 CALL                             R2 2 4
       69 JUMPIF                           R2 ; [+19]
       70 GETIMPORT                        R6 K6 [warn]
       72 LOADK                            R7 K7 ["Failed to clone path for editing content:"]
       73 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       74 MOVE                             R9 R1
       75 GETIMPORT                        R8 K10 [table.unpack]
       77 CALL                             R8 1 -1
       78 CALL                             R6 -1 0
       79 GETIMPORT                        R6 K6 [warn]
       81 LOADK                            R8 K11 ["Failed at key: %*"]
       82 MOVE                             R10 R5
       83 NAMECALL                         R8 R8 K12 ["format"]
       85 CALL                             R8 2 1
       86 MOVE                             R7 R8
       87 CALL                             R6 1 0
       88 RETURN                           R0 1
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R7 R7 K13 ["contentId"]
       92 GETTABLE                         R6 R4 R7
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K14 ["transformFn"]
       96 MOVE                             R8 R6
       97 CALL                             R7 1 1
       98 JUMPIF                           R7 ; [+2]
       99 NEWTABLE                         R7 0 0
      101 GETTABLEKS                       R8 R7 K15 ["rawTransformValues"]
      103 JUMPIF                           R8 ; [+38]
      104 GETUPVAL                         R8 1
      105 CALL                             R8 0 1
      106 JUMPIFNOT                        R8 ; [+29]
      107 GETTABLEKS                       R9 R3 K1 ["threads"]
      109 GETUPVAL                         R10 2
      110 GETTABLE                         R8 R9 R10
      111 GETTABLEKS                       R10 R8 K2 ["messages"]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K3 ["messageId"]
      116 GETTABLE                         R9 R10 R11
      117 GETUPVAL                         R10 4
      118 NEWTABLE                         R11 0 3
      120 MOVE                             R12 R8
      121 MOVE                             R13 R9
      122 MOVE                             R14 R6
      123 SETLIST                          R11 R12 3 [1]
      125 CALL                             R10 1 0
      126 GETUPVAL                         R10 5
      127 NEWTABLE                         R11 0 3
      129 MOVE                             R12 R8
      130 MOVE                             R13 R9
      131 MOVE                             R14 R6
      132 SETLIST                          R11 R12 3 [1]
      134 CALL                             R10 1 0
      135 RETURN                           R3 1
      136 GETUPVAL                         R8 6
      137 GETTABLEKS                       R8 R8 K16 ["getTimestampMilliseconds"]
      139 CALL                             R8 0 1
      140 SETTABLEKS                       R8 R6 K17 ["updatedAt"]
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
