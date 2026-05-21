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
        4 LOADK                            R3 K0 ["getNextContentId should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETIMPORT                        R2 K5 [warn]
       18 LOADK                            R4 K6 ["ContentIdGenerator: Duplicate contentId generated: "]
       19 MOVE                             R5 R1
       20 CONCAT                           R3 R4 R5
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 2
       23 SETTABLE                         R0 R2 R1
       24 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getContentMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMPIF                           R1 ; [+4]
       11 DUPTABLE                         R1 K4 [{"type"}]
       12 LOADK                            R2 K5 ["none"]
       13 SETTABLEKS                       R2 R1 K3 ["type"]
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["setContentMetadata should only be called when FFlagAssistantMultipleChatPersistence is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R1 R2 R0
       10 RETURN                           R0 0

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
       25 DUPTABLE                         R4 K16 [{"None", "Content", "Thread"}]
       26 LOADK                            R5 K17 ["none"]
       27 SETTABLEKS                       R5 R4 K13 ["None"]
       29 LOADK                            R5 K18 ["content"]
       30 SETTABLEKS                       R5 R4 K14 ["Content"]
       32 LOADK                            R5 K19 ["thread"]
       33 SETTABLEKS                       R5 R4 K15 ["Thread"]
       35 NEWTABLE                         R5 0 0
       37 LOADN                            R6 0
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R6
       41 DUPCLOSURE                       R8 K20 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R9 K21 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R10 K22 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R11 K28 [{"DEPRECATED_getNextContentId", "METADATA_TYPES", "getNextContentId", "getContentMetadata", "setContentMetadata"}]
       52 SETTABLEKS                       R7 R11 K23 ["DEPRECATED_getNextContentId"]
       54 SETTABLEKS                       R4 R11 K24 ["METADATA_TYPES"]
       56 SETTABLEKS                       R8 R11 K25 ["getNextContentId"]
       58 SETTABLEKS                       R9 R11 K26 ["getContentMetadata"]
       60 SETTABLEKS                       R10 R11 K27 ["setContentMetadata"]
       62 CLOSEUPVALS                      R6
       63 RETURN                           R11 1
