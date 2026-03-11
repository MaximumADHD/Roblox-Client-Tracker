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
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R4 R5 K10 ["getContentMetadata"]
       62 GETTABLEKS                       R5 R1 K11 ["threadId"]
       64 CALL                             R4 1 1
       65 LOADB                            R5 0
       66 GETTABLEKS                       R6 R4 K7 ["type"]
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R8 R9 K12 ["METADATA_TYPES"]
       71 GETTABLEKS                       R7 R8 K13 ["Thread"]
       73 JUMPIFNOTEQ                      R6 R7 ; [+3]
       75 GETTABLEKS                       R5 R4 K14 ["isNewThread"]
       77 JUMPIFNOT                        R5 ; [+21]
       78 LOADN                            R8 1
       79 GETUPVAL                         R10 5
       80 GETTABLEKS                       R9 R10 K15 ["MAX_THREAD_NAME_LENGTH"]
       82 NAMECALL                         R6 R3 K16 ["sub"]
       84 CALL                             R6 3 1
       85 LOADK                            R8 K17 ["\n"]
       86 LOADK                            R9 K18 [" "]
       87 NAMECALL                         R6 R6 K19 ["gsub"]
       89 CALL                             R6 3 1
       90 SETTABLEKS                       R6 R1 K20 ["title"]
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R6 R7 K21 ["setContentMetadata"]
       95 GETTABLEKS                       R7 R1 K11 ["threadId"]
       97 LOADNIL                          R8
       98 CALL                             R6 2 0
       99 LOADB                            R6 0
      100 SETTABLEKS                       R6 R0 K3 ["ephemeral"]
      102 GETUPVAL                         R6 6
      103 CALL                             R6 0 1
      104 JUMPIFNOT                        R6 ; [+18]
      105 GETUPVAL                         R8 7
      106 GETTABLEKS                       R7 R8 K22 ["get"]
      108 CALL                             R7 0 1
      109 GETTABLEKS                       R6 R7 K23 ["conversationPersistence"]
      111 JUMPIFNOT                        R6 ; [+11]
      112 GETTABLEKS                       R7 R6 K24 ["requestLoad"]
      114 DUPTABLE                         R8 K26 [{"scope"}]
      115 GETUPVAL                         R11 8
      116 GETTABLEKS                       R10 R11 K27 ["SCOPE_TYPES"]
      118 GETTABLEKS                       R9 R10 K28 ["Conversation"]
      120 SETTABLEKS                       R9 R8 K25 ["scope"]
      122 CALL                             R7 1 0
      123 GETUPVAL                         R6 9
      124 MOVE                             R7 R0
      125 CALL                             R6 1 0
      126 GETUPVAL                         R6 9
      127 MOVE                             R7 R1
      128 CALL                             R6 1 0
      129 RETURN                           R0 0

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
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["ContentIdGenerator"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R5 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R6 K13 ["TextContentWidget"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K7 ["Util"]
       44 GETTABLEKS                       R7 R8 K15 ["markDirty"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Flags"]
       51 GETTABLEKS                       R8 R9 K17 ["FFlagAssistantMultipleChatSupport"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Flags"]
       58 GETTABLEKS                       R9 R10 K18 ["FFlagAssistantPersistConversations"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K19 [PROTO_1]
       62 DUPCLOSURE                       R10 K20 [PROTO_2]
       63 CAPTURE                          VAL R9
       64 DUPCLOSURE                       R11 K21 [PROTO_4]
       65 DUPCLOSURE                       R12 K22 [PROTO_5]
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R13 K23 [PROTO_6]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 RETURN                           R13 1
