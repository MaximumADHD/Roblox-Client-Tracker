PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/generate-material-async"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/get-generated-material"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/upload-material-async"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/get-uploaded-material"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["GenerateMaterialRequest"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["GenerateMaterialOperationResponse"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["GetGenerateMaterialRequest"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["GetGenerateMaterialOperationResponse"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["UploadMaterialAsyncRequest"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["UploadMaterialAsyncResponse"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["GetUploadMaterialAsyncRequest"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["GetUploadMaterialAsyncResponse"]
       74 CALL                             R11 1 1
       75 NEWTABLE                         R12 4 0
       77 DUPCLOSURE                       R13 K18 [PROTO_0]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R13 R12 K19 ["postGenerateMaterialV2Async"]
       84 DUPCLOSURE                       R13 K20 [PROTO_1]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R13 R12 K21 ["postGetGenerateMaterialAsync"]
       91 DUPCLOSURE                       R13 K22 [PROTO_2]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R13 R12 K23 ["postUploadMaterialV2Async"]
       98 DUPCLOSURE                       R13 K24 [PROTO_3]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R13 R12 K25 ["postGetUploadedMaterialAsync"]
      105 GETIMPORT                        R13 K28 [table.freeze]
      107 MOVE                             R14 R12
      108 CALL                             R13 1 -1
      109 RETURN                           R13 -1
