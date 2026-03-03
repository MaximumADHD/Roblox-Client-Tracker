PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["content"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K3 ["isError"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K4 ["structuredContent"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["content"]
        2 DUPTABLE                         R4 K3 [{"type", "text"}]
        3 LOADK                            R5 K2 ["text"]
        4 SETTABLEKS                       R5 R4 K1 ["type"]
        6 SETTABLEKS                       R1 R4 K2 ["text"]
        8 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       10 GETIMPORT                        R2 K6 [table.insert]
       12 CALL                             R2 2 0
       13 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["content"]
        2 DUPTABLE                         R5 K4 [{"type", "data", "mimeType"}]
        3 LOADK                            R6 K5 ["image"]
        4 SETTABLEKS                       R6 R5 K1 ["type"]
        6 SETTABLEKS                       R1 R5 K2 ["data"]
        8 SETTABLEKS                       R2 R5 K3 ["mimeType"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K8 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["content"]
        2 DUPTABLE                         R5 K4 [{"type", "data", "mimeType"}]
        3 LOADK                            R6 K5 ["audio"]
        4 SETTABLEKS                       R6 R5 K1 ["type"]
        6 SETTABLEKS                       R1 R5 K2 ["data"]
        8 SETTABLEKS                       R2 R5 K3 ["mimeType"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K8 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["content"]
        2 DUPTABLE                         R5 K4 [{"type", "resource", "annotations"}]
        3 LOADK                            R6 K2 ["resource"]
        4 SETTABLEKS                       R6 R5 K1 ["type"]
        6 SETTABLEKS                       R1 R5 K2 ["resource"]
        8 SETTABLEKS                       R2 R5 K3 ["annotations"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K7 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R4 K3 [{"type", "uri", "name"}]
        1 LOADK                            R5 K4 ["resource_link"]
        2 SETTABLEKS                       R5 R4 K0 ["type"]
        4 SETTABLEKS                       R1 R4 K1 ["uri"]
        6 SETTABLEKS                       R2 R4 K2 ["name"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K5 ["assign"]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R3
       13 JUMPIF                           R7 ; [+2]
       14 NEWTABLE                         R7 0 0
       16 CALL                             R5 2 0
       17 GETTABLEKS                       R6 R0 K6 ["content"]
       19 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       21 MOVE                             R7 R4
       22 GETIMPORT                        R5 K9 [table.insert]
       24 CALL                             R5 2 0
       25 RETURN                           R0 1

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["isError"]
        2 RETURN                           R0 1

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"content", "isError", "structuredContent"}]
        1 GETTABLEKS                       R2 R0 K0 ["content"]
        3 SETTABLEKS                       R2 R1 K0 ["content"]
        5 GETTABLEKS                       R2 R0 K1 ["isError"]
        7 SETTABLEKS                       R2 R1 K1 ["isError"]
        9 GETTABLEKS                       R2 R0 K2 ["structuredContent"]
       11 SETTABLEKS                       R2 R1 K2 ["structuredContent"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 16 0
       21 SETTABLEKS                       R3 R3 K9 ["__index"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K11 ["define"]
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K13 ["addText"]
       30 DUPCLOSURE                       R4 K14 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K15 ["addImage"]
       33 DUPCLOSURE                       R4 K16 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K17 ["addAudio"]
       36 DUPCLOSURE                       R4 K18 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K19 ["addEmbeddedResource"]
       39 DUPCLOSURE                       R4 K20 [PROTO_5]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R4 R3 K21 ["addResourceLink"]
       43 DUPCLOSURE                       R4 K22 [PROTO_6]
       44 SETTABLEKS                       R4 R3 K23 ["setError"]
       46 DUPCLOSURE                       R4 K24 [PROTO_7]
       47 SETTABLEKS                       R4 R3 K25 ["setStructuredContent"]
       49 DUPCLOSURE                       R4 K26 [PROTO_8]
       50 SETTABLEKS                       R4 R3 K27 ["build"]
       52 GETTABLEKS                       R4 R3 K11 ["define"]
       54 RETURN                           R4 1
