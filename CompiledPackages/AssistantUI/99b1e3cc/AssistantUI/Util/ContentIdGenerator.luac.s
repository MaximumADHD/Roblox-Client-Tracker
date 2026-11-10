PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETIMPORT                        R3 K2 [warn]
       10 LOADK                            R5 K3 ["ContentIdGenerator: Duplicate threadId generated: "]
       11 MOVE                             R6 R1
       12 CONCAT                           R4 R5 R6
       13 CALL                             R3 1 0
       14 RETURN                           R1 1
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R0
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 SETTABLE                         R4 R3 R1
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETIMPORT                        R3 K2 [warn]
       10 LOADK                            R5 K3 ["ContentIdGenerator: Duplicate contentId generated: "]
       11 MOVE                             R6 R1
       12 CONCAT                           R4 R5 R6
       13 CALL                             R3 1 0
       14 JUMP                             ; [+4]
       15 NEWTABLE                         R2 0 0
       17 GETUPVAL                         R3 1
       18 SETTABLE                         R2 R3 R1
       19 JUMPIFNOT                        R0 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       22 MOVE                             R4 R2
       23 MOVE                             R5 R0
       24 GETIMPORT                        R3 K6 [table.insert]
       26 CALL                             R3 2 0
       27 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 SETTABLE                         R3 R2 R0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 SETTABLE                         R1 R2 R0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 SETTABLE                         R3 R2 R0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R0
        8 JUMPIF                           R2 ; [+4]
        9 GETUPVAL                         R2 0
       10 NEWTABLE                         R3 0 0
       12 SETTABLE                         R3 R2 R0
       13 GETUPVAL                         R4 0
       14 GETTABLE                         R3 R4 R0
       15 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K2 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

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
       18 NEWTABLE                         R3 0 0
       20 NEWTABLE                         R4 0 0
       22 DUPCLOSURE                       R5 K11 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 DUPCLOSURE                       R6 K12 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R7 K13 [PROTO_2]
       29 CAPTURE                          VAL R4
       30 DUPCLOSURE                       R8 K14 [PROTO_3]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R9 K15 [PROTO_4]
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R10 K16 [PROTO_5]
       35 CAPTURE                          VAL R3
       36 DUPTABLE                         R11 K23 [{"getNextThreadId", "getThreadMetadata", "setThreadMetadata", "getNextContentId", "getContentMetadata", "setContentMetadata"}]
       37 SETTABLEKS                       R5 R11 K17 ["getNextThreadId"]
       39 SETTABLEKS                       R7 R11 K18 ["getThreadMetadata"]
       41 SETTABLEKS                       R8 R11 K19 ["setThreadMetadata"]
       43 SETTABLEKS                       R6 R11 K20 ["getNextContentId"]
       45 SETTABLEKS                       R9 R11 K21 ["getContentMetadata"]
       47 SETTABLEKS                       R10 R11 K22 ["setContentMetadata"]
       49 RETURN                           R11 1
