PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_1:
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
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K11 ["getNextLayoutOrder"]
       58 CALL                             R6 0 1
       59 GETUPVAL                         R7 4
       60 DUPTABLE                         R8 K18 [{"messageId", "role", "contents", "LayoutOrder", "ephemeral", "hidden", "startTimestamp"}]
       61 GETUPVAL                         R9 4
       62 SETTABLEKS                       R9 R8 K12 ["messageId"]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R9 R10 K13 ["role"]
       67 SETTABLEKS                       R9 R8 K13 ["role"]
       69 NEWTABLE                         R9 0 0
       71 SETTABLEKS                       R9 R8 K14 ["contents"]
       73 SETTABLEKS                       R6 R8 K15 ["LayoutOrder"]
       75 GETUPVAL                         R10 5
       76 GETTABLEKS                       R9 R10 K10 ["ephemeral"]
       78 SETTABLEKS                       R9 R8 K10 ["ephemeral"]
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R9 R10 K16 ["hidden"]
       83 SETTABLEKS                       R9 R8 K16 ["hidden"]
       85 GETIMPORT                        R10 K21 [DateTime.now]
       87 CALL                             R10 0 1
       88 GETTABLEKS                       R9 R10 K22 ["UnixTimestampMillis"]
       90 SETTABLEKS                       R9 R8 K17 ["startTimestamp"]
       92 SETTABLE                         R8 R4 R7
       93 GETUPVAL                         R7 0
       94 CALL                             R7 0 1
       95 JUMPIFNOT                        R7 ; [+10]
       96 GETTABLEKS                       R8 R3 K0 ["threads"]
       98 GETUPVAL                         R9 1
       99 GETTABLE                         R7 R8 R9
      100 GETUPVAL                         R8 6
      101 MOVE                             R9 R7
      102 CALL                             R8 1 0
      103 GETUPVAL                         R8 7
      104 MOVE                             R9 R7
      105 CALL                             R8 1 0
      106 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Message-"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["get"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R2 R3 K2 ["EventLogger"]
        9 GETTABLEKS                       R3 R2 K3 ["createMessageGuid"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 2
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CALL                             R3 1 0
       24 RETURN                           R1 1

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
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R1
       34 MOVE                             R8 R3
       35 SETLIST                          R6 R7 2 [1]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R4 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["MessageLayoutOrder"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R6 K14 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Components"]
       41 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K15 ["ThreadIdContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["clonePath"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K11 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["getNextContentId"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K11 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["updateThreadIsSaved"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Util"]
       76 GETTABLEKS                       R11 R12 K20 ["updateThreadTimestamp"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Flags"]
       83 GETTABLEKS                       R12 R13 K22 ["FFlagAssistantMultipleChatSupport"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K23 [PROTO_0]
       87 DUPCLOSURE                       R13 K24 [PROTO_3]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 RETURN                           R13 1
