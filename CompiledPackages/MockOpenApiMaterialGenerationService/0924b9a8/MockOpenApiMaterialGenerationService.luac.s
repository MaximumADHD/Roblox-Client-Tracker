PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["fn"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["fn"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["fn"]
       15 CALL                             R3 0 1
       16 DUPTABLE                         R4 K2 [{"MaterialGeneration"}]
       17 DUPTABLE                         R5 K7 [{"postGenerateMaterialV2Async", "postGetGenerateMaterialAsync", "postUploadMaterialV2Async", "postGetUploadedMaterialAsync"}]
       18 SETTABLEKS                       R0 R5 K3 ["postGenerateMaterialV2Async"]
       20 SETTABLEKS                       R1 R5 K4 ["postGetGenerateMaterialAsync"]
       22 SETTABLEKS                       R2 R5 K5 ["postUploadMaterialV2Async"]
       24 SETTABLEKS                       R3 R5 K6 ["postGetUploadedMaterialAsync"]
       26 SETTABLEKS                       R5 R4 K1 ["MaterialGeneration"]
       28 MOVE                             R5 R4
       29 MOVE                             R6 R4
       30 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MockOpenApiMaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R1 R1 K5 ["Dev"]
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R1 K8 ["JestGlobals"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["jest"]
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R3
       22 DUPTABLE                         R5 K12 [{"new"}]
       23 SETTABLEKS                       R4 R5 K11 ["new"]
       25 RETURN                           R5 1
