PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [table.create]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 LOADN                            R6 1
        5 MOVE                             R4 R2
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 MOVE                             R8 R3
        9 GETIMPORT                        R9 K5 [Instance.new]
       11 LOADK                            R10 K6 ["MaterialVariant"]
       12 CALL                             R9 1 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R7 K8 [table.insert]
       16 CALL                             R7 -1 0
       17 FORNLOOP                         R4
       18 DUPTABLE                         R4 K11 [{"materialVariants", "generationId"}]
       19 SETTABLEKS                       R3 R4 K9 ["materialVariants"]
       21 LOADK                            R5 K12 ["mockGenerationId"]
       22 SETTABLEKS                       R5 R4 K10 ["generationId"]
       24 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [table.create]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 LOADN                            R6 1
        5 MOVE                             R4 R2
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 MOVE                             R8 R3
        9 GETIMPORT                        R9 K5 [Instance.new]
       11 LOADK                            R10 K6 ["MaterialVariant"]
       12 CALL                             R9 1 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R7 K8 [table.insert]
       16 CALL                             R7 -1 0
       17 FORNLOOP                         R4
       18 RETURN                           R3 1

PROTO_3:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GenerateMaterialVariantsAsync"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_GenerateMaterialVariantsAync"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["UploadMaterialVariantsAsync"]
       18 RETURN                           R0 1
