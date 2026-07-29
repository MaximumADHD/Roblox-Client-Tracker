PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["skipIfNoMessage"]
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETTABLEKS                       R1 R0 K1 ["threads"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R1 R3
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 1
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R1 R3
       13 GETTABLEKS                       R2 R2 K2 ["messages"]
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["messageId"]
       19 GETTABLE                         R3 R2 R4
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 1
       22 NEWTABLE                         R1 0 6
       24 LOADK                            R2 K1 ["threads"]
       25 GETUPVAL                         R3 1
       26 LOADK                            R4 K2 ["messages"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K3 ["messageId"]
       30 LOADK                            R6 K4 ["contents"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K5 ["contentId"]
       34 SETLIST                          R1 R2 6 [1]
       36 GETUPVAL                         R2 2
       37 MOVE                             R3 R0
       38 MOVE                             R4 R1
       39 CALL                             R2 2 4
       40 JUMPIF                           R2 ; [+19]
       41 GETIMPORT                        R6 K7 [warn]
       43 LOADK                            R7 K8 ["Failed to clone path for editing content:"]
       44 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       45 MOVE                             R9 R1
       46 GETIMPORT                        R8 K11 [table.unpack]
       48 CALL                             R8 1 -1
       49 CALL                             R6 -1 0
       50 GETIMPORT                        R6 K7 [warn]
       52 LOADK                            R8 K12 ["Failed at key: %*"]
       53 MOVE                             R10 R5
       54 NAMECALL                         R8 R8 K13 ["format"]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 CALL                             R6 1 0
       59 RETURN                           R0 1
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K14 ["transformFn"]
       63 MOVE                             R7 R4
       64 CALL                             R6 1 1
       65 JUMPIF                           R6 ; [+2]
       66 NEWTABLE                         R6 0 0
       68 GETTABLEKS                       R7 R6 K15 ["cancelTransform"]
       70 JUMPIFNOT                        R7 ; [+1]
       71 RETURN                           R0 1
       72 GETTABLEKS                       R7 R6 K16 ["rawTransformValues"]
       74 JUMPIF                           R7 ; [+28]
       75 GETTABLEKS                       R8 R3 K1 ["threads"]
       77 GETUPVAL                         R9 1
       78 GETTABLE                         R7 R8 R9
       79 GETTABLEKS                       R9 R7 K2 ["messages"]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K3 ["messageId"]
       84 GETTABLE                         R8 R9 R10
       85 GETUPVAL                         R9 3
       86 NEWTABLE                         R10 0 3
       88 MOVE                             R11 R7
       89 MOVE                             R12 R8
       90 MOVE                             R13 R4
       91 SETLIST                          R10 R11 3 [1]
       93 CALL                             R9 1 0
       94 GETUPVAL                         R9 4
       95 NEWTABLE                         R10 0 3
       97 MOVE                             R11 R7
       98 MOVE                             R12 R8
       99 MOVE                             R13 R4
      100 SETLIST                          R10 R11 3 [1]
      102 CALL                             R9 1 0
      103 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

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
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
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
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["clonePath"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["markDirty"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["setUpdatedAt"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K17 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 RETURN                           R8 1
