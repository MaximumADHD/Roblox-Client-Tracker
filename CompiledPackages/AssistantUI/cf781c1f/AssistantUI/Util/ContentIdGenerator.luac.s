PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["DEPRECATED_getNextContentId should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 1
       11 ADDK                             R2 R2 K3 [1]
       12 SETUPVAL                         R2 1
       13 GETIMPORT                        R2 K6 [string.format]
       15 LOADK                            R3 K7 ["%s%04i"]
       16 ORK                              R4 R0 K8 [""]
       17 MOVE                             R5 R1
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getNextThreadId should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETIMPORT                        R3 K5 [warn]
       18 LOADK                            R5 K6 ["ContentIdGenerator: Duplicate threadId generated: "]
       19 MOVE                             R6 R1
       20 CONCAT                           R4 R5 R6
       21 CALL                             R3 1 0
       22 RETURN                           R1 1
       23 GETUPVAL                         R3 2
       24 MOVE                             R4 R0
       25 JUMPIF                           R4 ; [+2]
       26 NEWTABLE                         R4 0 0
       28 SETTABLE                         R4 R3 R1
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getNextContentId should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETIMPORT                        R3 K5 [warn]
       18 LOADK                            R5 K6 ["ContentIdGenerator: Duplicate contentId generated: "]
       19 MOVE                             R6 R1
       20 CONCAT                           R4 R5 R6
       21 CALL                             R3 1 0
       22 JUMP                             ; [+4]
       23 NEWTABLE                         R2 0 0
       25 GETUPVAL                         R3 2
       26 SETTABLE                         R2 R3 R1
       27 JUMPIFNOT                        R0 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       30 MOVE                             R4 R2
       31 MOVE                             R5 R0
       32 GETIMPORT                        R3 K9 [table.insert]
       34 CALL                             R3 2 0
       35 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getThreadMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["setThreadMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+5]
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 SETTABLE                         R1 R2 R0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getContentMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["setContentMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+5]
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 1
       15 GETTABLE                         R2 R3 R0
       16 JUMPIF                           R2 ; [+4]
       17 GETUPVAL                         R2 1
       18 NEWTABLE                         R3 0 0
       20 SETTABLE                         R3 R2 R0
       21 GETUPVAL                         R4 1
       22 GETTABLE                         R3 R4 R0
       23 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R2 K5 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K10 ["Types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["Flags"]
       22 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantMultipleChatPersistence"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 NEWTABLE                         R5 0 0
       29 LOADN                            R6 0
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          REF R6
       33 DUPCLOSURE                       R8 K13 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 DUPCLOSURE                       R9 K14 [PROTO_2]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 DUPCLOSURE                       R10 K15 [PROTO_3]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 DUPCLOSURE                       R11 K16 [PROTO_4]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R12 K17 [PROTO_5]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R13 K18 [PROTO_6]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 DUPTABLE                         R14 K26 [{"DEPRECATED_getNextContentId", "getNextThreadId", "getThreadMetadata", "setThreadMetadata", "getNextContentId", "getContentMetadata", "setContentMetadata"}]
       54 SETTABLEKS                       R7 R14 K19 ["DEPRECATED_getNextContentId"]
       56 SETTABLEKS                       R8 R14 K20 ["getNextThreadId"]
       58 SETTABLEKS                       R10 R14 K21 ["getThreadMetadata"]
       60 SETTABLEKS                       R11 R14 K22 ["setThreadMetadata"]
       62 SETTABLEKS                       R9 R14 K23 ["getNextContentId"]
       64 SETTABLEKS                       R12 R14 K24 ["getContentMetadata"]
       66 SETTABLEKS                       R13 R14 K25 ["setContentMetadata"]
       68 CLOSEUPVALS                      R6
       69 RETURN                           R14 1
