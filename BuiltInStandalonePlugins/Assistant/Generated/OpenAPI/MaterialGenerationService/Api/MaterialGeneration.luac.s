PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/text-to-material-color-map"]
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
        7 LOADK                            R4 K3 ["/v1/generate-material"]
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/upload-material"]
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/image-to-material-maps"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K4 ["pathPrefix"]
       11 CALL                             R0 4 1
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R0 R0 K5 ["sendAsync"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_8:
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
       27 GETTABLEKS                       R6 R7 K11 ["TextToMaterialColorMapRequest"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["TextToMaterialColorMapResponse"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R9 R0 K10 ["Models"]
       41 GETTABLEKS                       R8 R9 K13 ["GenerateMaterialRequest"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R10 R0 K10 ["Models"]
       48 GETTABLEKS                       R9 R10 K14 ["GenerateMaterialResponse"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R11 R0 K10 ["Models"]
       55 GETTABLEKS                       R10 R11 K15 ["GenerateMaterialOperationResponse"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R12 R0 K10 ["Models"]
       62 GETTABLEKS                       R11 R12 K16 ["GetGenerateMaterialRequest"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K7 [require]
       67 GETTABLEKS                       R13 R0 K10 ["Models"]
       69 GETTABLEKS                       R12 R13 K17 ["GetGenerateMaterialOperationResponse"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K7 [require]
       74 GETTABLEKS                       R14 R0 K10 ["Models"]
       76 GETTABLEKS                       R13 R14 K18 ["UploadMaterialRequest"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K7 [require]
       81 GETTABLEKS                       R15 R0 K10 ["Models"]
       83 GETTABLEKS                       R14 R15 K19 ["UploadMaterialResponse"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K7 [require]
       88 GETTABLEKS                       R16 R0 K10 ["Models"]
       90 GETTABLEKS                       R15 R16 K20 ["UploadMaterialAsyncRequest"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K7 [require]
       95 GETTABLEKS                       R17 R0 K10 ["Models"]
       97 GETTABLEKS                       R16 R17 K21 ["UploadMaterialAsyncResponse"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K7 [require]
      102 GETTABLEKS                       R18 R0 K10 ["Models"]
      104 GETTABLEKS                       R17 R18 K22 ["GetUploadMaterialAsyncRequest"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K7 [require]
      109 GETTABLEKS                       R19 R0 K10 ["Models"]
      111 GETTABLEKS                       R18 R19 K23 ["GetUploadMaterialAsyncResponse"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K7 [require]
      116 GETTABLEKS                       R20 R0 K10 ["Models"]
      118 GETTABLEKS                       R19 R20 K24 ["ImageToMaterialMapsResponse"]
      120 CALL                             R18 1 1
      121 NEWTABLE                         R19 16 0
      123 DUPCLOSURE                       R20 K25 [PROTO_0]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R20 R19 K26 ["postTextToMaterialColorMapAsync"]
      130 DUPCLOSURE                       R20 K27 [PROTO_1]
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R20 R19 K28 ["postGenerateMaterialAsync"]
      137 DUPCLOSURE                       R20 K29 [PROTO_2]
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R20 R19 K30 ["postGenerateMaterialV2Async"]
      144 DUPCLOSURE                       R20 K31 [PROTO_3]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R11
      149 SETTABLEKS                       R20 R19 K32 ["postGetGenerateMaterialAsync"]
      151 DUPCLOSURE                       R20 K33 [PROTO_4]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R13
      156 SETTABLEKS                       R20 R19 K34 ["postUploadMaterialAsync"]
      158 DUPCLOSURE                       R20 K35 [PROTO_5]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R15
      163 SETTABLEKS                       R20 R19 K36 ["postUploadMaterialV2Async"]
      165 DUPCLOSURE                       R20 K37 [PROTO_6]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R17
      170 SETTABLEKS                       R20 R19 K38 ["postGetUploadedMaterialAsync"]
      172 DUPCLOSURE                       R20 K39 [PROTO_7]
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R18
      176 SETTABLEKS                       R20 R19 K40 ["postImageToMaterialMapsAsync"]
      178 DUPCLOSURE                       R20 K41 [PROTO_8]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 SETTABLEKS                       R20 R19 K42 ["postSubmitGenerateMaterialAsync"]
      183 GETIMPORT                        R20 K45 [table.freeze]
      185 MOVE                             R21 R19
      186 CALL                             R20 1 -1
      187 RETURN                           R20 -1
