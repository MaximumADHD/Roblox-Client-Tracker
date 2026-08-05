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
        3 LOADK                            R3 K2 ["Packages"]
        4 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R1 R1 K4 ["Dev"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["JestGlobals"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["jest"]
       16 DUPCLOSURE                       R4 K9 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 DUPTABLE                         R5 K11 [{"new"}]
       19 SETTABLEKS                       R4 R5 K10 ["new"]
       21 RETURN                           R5 1
