PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+33]
        3 NEWTABLE                         R1 0 1
        5 LOADK                            R2 K0 ["threads"]
        6 SETLIST                          R1 R2 1 [1]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 4
       12 JUMPIF                           R2 ; [+19]
       13 GETIMPORT                        R6 K2 [warn]
       15 LOADK                            R7 K3 ["Failed to clone path for removing thread:"]
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K6 [table.unpack]
       20 CALL                             R8 1 -1
       21 CALL                             R6 -1 0
       22 GETIMPORT                        R6 K2 [warn]
       24 LOADK                            R8 K7 ["Failed at key: %*"]
       25 MOVE                             R10 R5
       26 NAMECALL                         R8 R8 K8 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 1
       32 GETUPVAL                         R6 2
       33 LOADNIL                          R7
       34 SETTABLE                         R7 R4 R6
       35 RETURN                           R3 1
       36 GETIMPORT                        R1 K10 [table.clone]
       38 MOVE                             R2 R0
       39 CALL                             R1 1 1
       40 GETUPVAL                         R2 2
       41 LOADNIL                          R3
       42 SETTABLE                         R3 R1 R2
       43 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 LOADB                            R3 0
        5 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R1 3
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useRemoveThread is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["setConversation"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K4 ["Context"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K6 ["threadId"]
       26 GETTABLEKS                       R4 R2 K7 ["setThreadId"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R7 0 3
       40 MOVE                             R8 R1
       41 MOVE                             R9 R3
       42 MOVE                             R10 R4
       43 SETLIST                          R7 R8 3 [1]
       45 CALL                             R5 2 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Parent"]
       26 GETTABLEKS                       R4 R5 K14 ["React"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Components"]
       33 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       35 GETTABLEKS                       R5 R6 K15 ["ThreadIdContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K16 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K17 ["Util"]
       47 GETTABLEKS                       R7 R8 K18 ["clonePath"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K19 ["Flags"]
       54 GETTABLEKS                       R8 R9 K20 ["FFlagAssistantMultipleChatSupport"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K21 [PROTO_2]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 RETURN                           R8 1
