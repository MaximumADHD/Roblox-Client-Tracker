PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/generate-material-async"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K5 ["setBody"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R1 R1 K6 ["sendAsync"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/get-generated-material"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K5 ["setBody"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R1 R1 K6 ["sendAsync"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/upload-material-async"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K5 ["setBody"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R1 R1 K6 ["sendAsync"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/get-uploaded-material"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K5 ["setBody"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R1 R1 K6 ["sendAsync"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/SubmitGenerateMaterial"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["pathPrefix"]
       11 CALL                             R1 4 1
       12 LOADK                            R3 K5 ["Roblox-Api-Key"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K6 ["addHeaderParameter"]
       16 CALL                             R1 3 1
       17 NAMECALL                         R1 R1 K7 ["sendAsync"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["PathMetadata"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R7 K11 ["GenerateMaterialRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["GenerateMaterialOperationResponse"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R9 R0 K10 ["Models"]
       41 GETTABLEKS                       R8 R9 K13 ["GetGenerateMaterialRequest"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R10 R0 K10 ["Models"]
       48 GETTABLEKS                       R9 R10 K14 ["GetGenerateMaterialOperationResponse"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R11 R0 K10 ["Models"]
       55 GETTABLEKS                       R10 R11 K15 ["UploadMaterialAsyncRequest"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R12 R0 K10 ["Models"]
       62 GETTABLEKS                       R11 R12 K16 ["UploadMaterialAsyncResponse"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K7 [require]
       67 GETTABLEKS                       R13 R0 K10 ["Models"]
       69 GETTABLEKS                       R12 R13 K17 ["GetUploadMaterialAsyncRequest"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K7 [require]
       74 GETTABLEKS                       R14 R0 K10 ["Models"]
       76 GETTABLEKS                       R13 R14 K18 ["GetUploadMaterialAsyncResponse"]
       78 CALL                             R12 1 1
       79 NEWTABLE                         R13 8 0
       81 DUPCLOSURE                       R14 K19 [PROTO_0]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R14 R13 K20 ["postGenerateMaterialV2Async"]
       88 DUPCLOSURE                       R14 K21 [PROTO_1]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R14 R13 K22 ["postGetGenerateMaterialAsync"]
       95 DUPCLOSURE                       R14 K23 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R14 R13 K24 ["postUploadMaterialV2Async"]
      102 DUPCLOSURE                       R14 K25 [PROTO_3]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R14 R13 K26 ["postGetUploadedMaterialAsync"]
      109 DUPCLOSURE                       R14 K27 [PROTO_4]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R14 R13 K28 ["postSubmitGenerateMaterialAsync"]
      114 GETIMPORT                        R14 K31 [table.freeze]
      116 MOVE                             R15 R13
      117 CALL                             R14 1 -1
      118 RETURN                           R14 -1
