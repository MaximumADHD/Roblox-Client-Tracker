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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["updateThreadIsSaved should only be called when multiple chat support is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["ephemeral"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K4 ["messages"]
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETTABLEKS                       R8 R7 K5 ["role"]
       25 JUMPIFNOTEQKS                    R8 K6 ["user"] ; [+3]
       27 MOVE                             R1 R7
       28 JUMP                             ; [+3]
       29 FORGLOOP                         R3 2 ; [-7]
       31 LOADNIL                          R1
       32 JUMPIF                           R1 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 2
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 MOVE                             R4 R3
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETTABLEKS                       R9 R8 K7 ["type"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R10 R11 K8 ["Type"]
       46 JUMPIFNOTEQ                      R9 R10 ; [+4]
       48 GETTABLEKS                       R2 R8 K9 ["text"]
       50 JUMP                             ; [+3]
       51 FORGLOOP                         R4 2 ; [-11]
       53 LOADNIL                          R2
       54 JUMPIF                           R2 ; [+1]
       55 RETURN                           R0 0
       56 LOADB                            R3 0
       57 SETTABLEKS                       R3 R0 K3 ["ephemeral"]
       59 LOADN                            R5 1
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R6 R7 K10 ["MAX_THREAD_NAME_LENGTH"]
       63 NAMECALL                         R3 R2 K11 ["sub"]
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R0 K12 ["title"]
       68 RETURN                           R0 0

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
       14 GETTABLEKS                       R5 R0 K7 ["Components"]
       16 GETTABLEKS                       R4 R5 K8 ["ContentWidgets"]
       18 GETTABLEKS                       R3 R4 K9 ["TextContentWidget"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantMultipleChatSupport"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_1]
       34 DUPCLOSURE                       R6 K14 [PROTO_2]
       35 CAPTURE                          VAL R5
       36 DUPCLOSURE                       R7 K15 [PROTO_4]
       37 DUPCLOSURE                       R8 K16 [PROTO_5]
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R9 K17 [PROTO_6]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 RETURN                           R9 1
