PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R5 R0 K2 ["messageId"]
       10 GETTABLEKS                       R6 R1 K2 ["messageId"]
       12 JUMPIFLT                         R5 R6 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 JUMPIFLT                         R2 R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["messages"]
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["Thread messages should not be nil"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K0 ["messages"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-8]
       24 GETIMPORT                        R2 K8 [table.sort]
       26 MOVE                             R3 R1
       27 DUPCLOSURE                       R4 K9 [PROTO_0]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["role"]
        9 JUMPIFNOTEQKS                    R7 K1 ["user"] ; [+2]
       11 RETURN                           R6 1
       12 FORGLOOP                         R2 2 ; [-6]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETTABLEKS                       R5 R0 K2 ["contentId"]
       10 GETTABLEKS                       R6 R1 K2 ["contentId"]
       12 JUMPIFLT                         R5 R6 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 JUMPIFLT                         R2 R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["contents"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETIMPORT                        R2 K5 [table.sort]
       18 MOVE                             R3 R1
       19 DUPCLOSURE                       R4 K6 [PROTO_3]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["type"]
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["Type"]
       12 JUMPIFNOTEQ                      R7 R8 ; [+4]
       14 GETTABLEKS                       R7 R6 K2 ["text"]
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["updateThreadIsSaved should only be called when multiple chat support is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R1 K3 ["ephemeral"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K4 ["messages"]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 MOVE                             R4 R3
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLEKS                       R9 R8 K5 ["role"]
       25 JUMPIFNOTEQKS                    R9 K6 ["user"] ; [+3]
       27 MOVE                             R2 R8
       28 JUMP                             ; [+3]
       29 FORGLOOP                         R4 2 ; [-7]
       31 LOADNIL                          R2
       32 JUMPIF                           R2 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 MOVE                             R5 R4
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 GETTABLEKS                       R10 R9 K7 ["type"]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R11 R12 K8 ["Type"]
       46 JUMPIFNOTEQ                      R10 R11 ; [+4]
       48 GETTABLEKS                       R3 R9 K9 ["text"]
       50 JUMP                             ; [+3]
       51 FORGLOOP                         R5 2 ; [-11]
       53 LOADNIL                          R3
       54 JUMPIF                           R3 ; [+1]
       55 RETURN                           R0 0
       56 LOADB                            R4 0
       57 SETTABLEKS                       R4 R1 K3 ["ephemeral"]
       59 LOADN                            R6 1
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R7 R8 K10 ["MAX_THREAD_NAME_LENGTH"]
       63 NAMECALL                         R4 R3 K11 ["sub"]
       65 CALL                             R4 3 1
       66 LOADK                            R6 K12 ["\n"]
       67 LOADK                            R7 K13 [" "]
       68 NAMECALL                         R4 R4 K14 ["gsub"]
       70 CALL                             R4 3 1
       71 SETTABLEKS                       R4 R1 K15 ["title"]
       73 LOADB                            R4 0
       74 SETTABLEKS                       R4 R0 K3 ["ephemeral"]
       76 GETUPVAL                         R4 5
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+18]
       79 GETUPVAL                         R6 6
       80 GETTABLEKS                       R5 R6 K16 ["get"]
       82 CALL                             R5 0 1
       83 GETTABLEKS                       R4 R5 K17 ["conversationPersistence"]
       85 JUMPIFNOT                        R4 ; [+11]
       86 GETTABLEKS                       R5 R4 K18 ["requestLoad"]
       88 DUPTABLE                         R6 K20 [{"scope"}]
       89 GETUPVAL                         R9 7
       90 GETTABLEKS                       R8 R9 K21 ["SCOPE_TYPES"]
       92 GETTABLEKS                       R7 R8 K22 ["Conversation"]
       94 SETTABLEKS                       R7 R6 K19 ["scope"]
       96 CALL                             R5 1 0
       97 GETUPVAL                         R4 8
       98 MOVE                             R5 R0
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 8
      101 MOVE                             R5 R1
      102 CALL                             R4 1 0
      103 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R4 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R5 K11 ["TextContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Util"]
       37 GETTABLEKS                       R6 R7 K14 ["markDirty"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Flags"]
       44 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatSupport"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantPersistConversations"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_1]
       55 DUPCLOSURE                       R9 K19 [PROTO_2]
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R10 K20 [PROTO_4]
       58 DUPCLOSURE                       R11 K21 [PROTO_5]
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R12 K22 [PROTO_6]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 RETURN                           R12 1
