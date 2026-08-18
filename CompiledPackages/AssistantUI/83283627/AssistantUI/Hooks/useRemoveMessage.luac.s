PROTO_0:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R2 K0 ["threads"]
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K1 ["messages"]
        5 SETLIST                          R1 R2 3 [1]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 4
       11 JUMPIF                           R2 ; [+19]
       12 GETIMPORT                        R6 K3 [warn]
       14 LOADK                            R7 K4 ["Failed to clone path for removing message:"]
       15 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R8 K7 [table.unpack]
       19 CALL                             R8 1 -1
       20 CALL                             R6 -1 0
       21 GETIMPORT                        R6 K3 [warn]
       23 LOADK                            R8 K8 ["Failed at key: %*"]
       24 MOVE                             R10 R5
       25 NAMECALL                         R8 R8 K9 ["format"]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 CALL                             R6 1 0
       30 RETURN                           R0 1
       31 GETIMPORT                        R6 K11 [table.clone]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K12 ["messageId"]
       36 GETTABLE                         R7 R4 R8
       37 CALL                             R6 1 1
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R6 K13 ["isDeleted"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K12 ["messageId"]
       44 SETTABLE                         R6 R4 R7
       45 GETTABLEKS                       R8 R3 K0 ["threads"]
       47 GETUPVAL                         R9 0
       48 GETTABLE                         R7 R8 R9
       49 GETUPVAL                         R8 3
       50 DUPTABLE                         R9 K16 [{"thread", "sessionId"}]
       51 SETTABLEKS                       R7 R9 K14 ["thread"]
       53 GETUPVAL                         R10 4
       54 SETTABLEKS                       R10 R9 K15 ["sessionId"]
       56 CALL                             R8 1 0
       57 GETUPVAL                         R8 5
       58 NEWTABLE                         R9 0 2
       60 MOVE                             R10 R7
       61 MOVE                             R11 R6
       62 SETLIST                          R9 R10 2 [1]
       64 CALL                             R8 1 0
       65 GETUPVAL                         R8 6
       66 NEWTABLE                         R9 0 2
       68 MOVE                             R10 R7
       69 MOVE                             R11 R6
       70 SETLIST                          R9 R10 2 [1]
       72 CALL                             R8 1 0
       73 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["messageId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["remove"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

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
       19 GETTABLEKS                       R4 R4 K0 ["useContext"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K4 ["sessionId"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 NEWTABLE                         R8 0 3
       41 MOVE                             R9 R1
       42 MOVE                             R10 R3
       43 MOVE                             R11 R5
       44 SETLIST                          R8 R9 3 [1]
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["ServerStreamIdStore"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["SessionIdContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K14 ["ThreadIdContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["clonePath"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K11 ["Util"]
       64 GETTABLEKS                       R9 R9 K17 ["markDirty"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K11 ["Util"]
       71 GETTABLEKS                       R10 R10 K18 ["setUpdatedAt"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["updateThreadIsSaved"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K20 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 RETURN                           R11 1
