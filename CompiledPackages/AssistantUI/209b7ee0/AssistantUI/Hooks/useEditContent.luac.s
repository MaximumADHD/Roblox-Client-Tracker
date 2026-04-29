PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["skipIfNoMessage"]
        3 JUMPIFNOT                        R1 ; [+36]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+19]
        7 GETTABLEKS                       R1 R0 K1 ["threads"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R3 2
       11 GETTABLE                         R2 R1 R3
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 1
       14 GETUPVAL                         R4 2
       15 GETTABLE                         R3 R1 R4
       16 GETTABLEKS                       R2 R3 K2 ["messages"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K3 ["messageId"]
       22 GETTABLE                         R3 R2 R4
       23 JUMPIF                           R3 ; [+16]
       24 RETURN                           R0 1
       25 JUMP                             ; [+14]
       26 GETUPVAL                         R2 2
       27 GETTABLE                         R1 R0 R2
       28 JUMPIFNOT                        R1 ; [+10]
       29 GETTABLEKS                       R2 R1 K2 ["messages"]
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETTABLEKS                       R3 R1 K2 ["messages"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K3 ["messageId"]
       37 GETTABLE                         R2 R3 R4
       38 JUMPIF                           R2 ; [+1]
       39 RETURN                           R0 1
       40 LOADNIL                          R1
       41 GETUPVAL                         R2 1
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+13]
       44 NEWTABLE                         R2 0 5
       46 LOADK                            R3 K1 ["threads"]
       47 GETUPVAL                         R4 2
       48 LOADK                            R5 K2 ["messages"]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K3 ["messageId"]
       52 LOADK                            R7 K4 ["contents"]
       53 SETLIST                          R2 R3 5 [1]
       55 MOVE                             R1 R2
       56 JUMP                             ; [+11]
       57 NEWTABLE                         R2 0 4
       59 GETUPVAL                         R3 2
       60 LOADK                            R4 K2 ["messages"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K3 ["messageId"]
       64 LOADK                            R6 K4 ["contents"]
       65 SETLIST                          R2 R3 4 [1]
       67 MOVE                             R1 R2
       68 GETUPVAL                         R2 3
       69 MOVE                             R3 R0
       70 MOVE                             R4 R1
       71 CALL                             R2 2 4
       72 JUMPIF                           R2 ; [+19]
       73 GETIMPORT                        R6 K6 [warn]
       75 LOADK                            R7 K7 ["Failed to clone path for editing content:"]
       76 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       77 MOVE                             R9 R1
       78 GETIMPORT                        R8 K10 [table.unpack]
       80 CALL                             R8 1 -1
       81 CALL                             R6 -1 0
       82 GETIMPORT                        R6 K6 [warn]
       84 LOADK                            R8 K11 ["Failed at key: %*"]
       85 MOVE                             R10 R5
       86 NAMECALL                         R8 R8 K12 ["format"]
       88 CALL                             R8 2 1
       89 MOVE                             R7 R8
       90 CALL                             R6 1 0
       91 RETURN                           R0 1
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R7 R8 K13 ["contentId"]
       95 GETTABLE                         R6 R4 R7
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R7 R8 K14 ["transformFn"]
       99 MOVE                             R8 R6
      100 CALL                             R7 1 1
      101 JUMPIF                           R7 ; [+2]
      102 NEWTABLE                         R7 0 0
      104 GETUPVAL                         R8 1
      105 CALL                             R8 0 1
      106 JUMPIFNOT                        R8 ; [+3]
      107 GETTABLEKS                       R8 R7 K15 ["rawTransformValues"]
      109 JUMPIF                           R8 ; [+23]
      110 GETUPVAL                         R9 4
      111 GETTABLEKS                       R8 R9 K16 ["getTimestampMilliseconds"]
      113 CALL                             R8 0 1
      114 SETTABLEKS                       R8 R6 K17 ["updatedAt"]
      116 GETUPVAL                         R8 1
      117 CALL                             R8 0 1
      118 JUMPIFNOT                        R8 ; [+14]
      119 GETTABLEKS                       R9 R3 K1 ["threads"]
      121 GETUPVAL                         R10 2
      122 GETTABLE                         R8 R9 R10
      123 GETUPVAL                         R9 5
      124 MOVE                             R10 R3
      125 MOVE                             R11 R8
      126 CALL                             R9 2 0
      127 GETUPVAL                         R9 6
      128 MOVE                             R10 R3
      129 CALL                             R9 1 0
      130 GETUPVAL                         R9 6
      131 MOVE                             R10 R8
      132 CALL                             R9 1 0
      133 RETURN                           R3 1

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
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["Time"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["clonePath"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Util"]
       55 GETTABLEKS                       R8 R9 K16 ["markDirty"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K12 ["Util"]
       62 GETTABLEKS                       R9 R10 K17 ["updateThreadTimestamp"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K18 ["Flags"]
       69 GETTABLEKS                       R10 R11 K19 ["FFlagAssistantMultipleChatPersistence"]
       71 CALL                             R9 1 1
       72 DUPCLOSURE                       R10 K20 [PROTO_2]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 RETURN                           R10 1
