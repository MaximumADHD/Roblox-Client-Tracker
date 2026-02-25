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
       35 LOADK                            R7 K6 ["Failed to clone path for editing content:"]
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
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R6 R7 K12 ["transformFn"]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K13 ["contentId"]
       58 GETTABLE                         R7 R4 R8
       59 CALL                             R6 1 0
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R7 R8 K13 ["contentId"]
       63 GETTABLE                         R6 R4 R7
       64 GETIMPORT                        R8 K16 [DateTime.now]
       66 CALL                             R8 0 1
       67 GETTABLEKS                       R7 R8 K17 ["UnixTimestampMillis"]
       69 SETTABLEKS                       R7 R6 K18 ["lastEditTimestamp"]
       71 GETUPVAL                         R6 0
       72 CALL                             R6 0 1
       73 JUMPIFNOT                        R6 ; [+7]
       74 GETTABLEKS                       R7 R3 K0 ["threads"]
       76 GETUPVAL                         R8 1
       77 GETTABLE                         R6 R7 R8
       78 GETUPVAL                         R7 4
       79 MOVE                             R8 R6
       80 CALL                             R7 1 0
       81 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

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
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

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
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["clonePath"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K13 ["Util"]
       48 GETTABLEKS                       R7 R8 K15 ["updateThreadTimestamp"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantMultipleChatSupport"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K18 [PROTO_0]
       59 DUPCLOSURE                       R9 K19 [PROTO_3]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 RETURN                           R9 1
