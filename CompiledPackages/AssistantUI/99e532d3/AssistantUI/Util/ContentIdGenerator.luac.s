PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["DEPRECATED_getNextContentId should not be called when FFlagAssistantPersistConversations is enabled"]
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
        4 LOADK                            R3 K0 ["getNextContentId should only be called when FFlagAssistantPersistConversations is enabled"]
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
        4 LOADK                            R3 K0 ["getContentMetadata should only be called when FFlagAssistantPersistConversations is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["setContentMetadata should only be called when FFlagAssistantPersistConversations is enabled"]
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
       20 GETTABLEKS                       R5 R0 K11 ["Flags"]
       22 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantPersistConversations"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 LOADN                            R5 0
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          REF R5
       31 DUPCLOSURE                       R7 K13 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R8 K14 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 DUPCLOSURE                       R9 K15 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 DUPTABLE                         R10 K20 [{"DEPRECATED_getNextContentId", "getNextContentId", "getContentMetadata", "setContentMetadata"}]
       42 SETTABLEKS                       R6 R10 K16 ["DEPRECATED_getNextContentId"]
       44 SETTABLEKS                       R7 R10 K17 ["getNextContentId"]
       46 SETTABLEKS                       R8 R10 K18 ["getContentMetadata"]
       48 SETTABLEKS                       R9 R10 K19 ["setContentMetadata"]
       50 CLOSEUPVALS                      R5
       51 RETURN                           R10 1
