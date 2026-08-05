PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/threads"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["placeId"]
       16 GETTABLEKS                       R4 R0 K6 ["placeId"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["cursor"]
       22 GETTABLEKS                       R4 R0 K8 ["cursor"]
       24 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K9 ["limit"]
       28 GETTABLEKS                       R4 R0 K9 ["limit"]
       30 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K10 ["Roblox-Api-Key"]
       34 GETTABLEKS                       R4 R0 K11 ["robloxApiKey"]
       36 NAMECALL                         R1 R1 K12 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K13 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/threads"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["placeId"]
       16 GETTABLEKS                       R4 R0 K6 ["placeId"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["Roblox-Api-Key"]
       22 GETTABLEKS                       R4 R0 K9 ["robloxApiKey"]
       24 NAMECALL                         R1 R1 K10 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K11 ["body"]
       30 NAMECALL                         R1 R1 K12 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 3
       34 NAMECALL                         R1 R1 K13 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{threadId}"]
       16 GETTABLEKS                       R4 R0 K7 ["threadId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["Roblox-Api-Key"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxApiKey"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K12 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{threadId}"]
       16 GETTABLEKS                       R4 R0 K7 ["threadId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["cursor"]
       22 GETTABLEKS                       R4 R0 K9 ["cursor"]
       24 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["limit"]
       28 GETTABLEKS                       R4 R0 K11 ["limit"]
       30 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K12 ["Roblox-Api-Key"]
       34 GETTABLEKS                       R4 R0 K13 ["robloxApiKey"]
       36 NAMECALL                         R1 R1 K14 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K15 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{threadId}"]
       16 GETTABLEKS                       R4 R0 K7 ["threadId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["Roblox-Api-Key"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxApiKey"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K12 ["body"]
       30 NAMECALL                         R1 R1 K13 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 3
       34 NAMECALL                         R1 R1 K14 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/skills/assets"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["cursor"]
       16 GETTABLEKS                       R4 R0 K6 ["cursor"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["limit"]
       22 GETTABLEKS                       R4 R0 K8 ["limit"]
       24 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K9 ["Roblox-Api-Key"]
       28 GETTABLEKS                       R4 R0 K10 ["robloxApiKey"]
       30 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K12 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/skills/assets"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["Roblox-Api-Key"]
       16 GETTABLEKS                       R4 R0 K7 ["robloxApiKey"]
       18 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/skills/assets/{assetId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{assetId}"]
       16 GETTABLEKS                       R4 R0 K7 ["assetId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["Roblox-Api-Key"]
       22 GETTABLEKS                       R4 R0 K10 ["robloxApiKey"]
       24 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K12 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantStorageApi"]
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
       23 GETTABLEKS                       R5 R5 K10 ["GetThreadsAsyncResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["UploadThreadsAsyncRequest"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["UploadThreadsAsyncResponse"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["DeleteThreadAsyncResponse"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["GetMessagesAsyncResponse"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["UploadMessagesAsyncRequest"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["UploadMessagesAsyncResponse"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["GetSkillAssetsAsyncResponse"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Models"]
       79 GETTABLEKS                       R13 R13 K18 ["UploadSkillAssetsAsyncRequest"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Models"]
       86 GETTABLEKS                       R14 R14 K19 ["UploadSkillAssetsAsyncResponse"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Models"]
       93 GETTABLEKS                       R15 R15 K20 ["DeleteSkillAssetAsyncResponse"]
       95 CALL                             R14 1 1
       96 NEWTABLE                         R15 8 0
       98 DUPCLOSURE                       R16 K21 [PROTO_0]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 SETTABLEKS                       R16 R15 K22 ["getThreadsAsync"]
      104 DUPCLOSURE                       R16 K23 [PROTO_1]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R16 R15 K24 ["postUploadThreadsAsync"]
      111 DUPCLOSURE                       R16 K25 [PROTO_2]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R7
      115 SETTABLEKS                       R16 R15 K26 ["deleteThreadAsync"]
      117 DUPCLOSURE                       R16 K27 [PROTO_3]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R8
      121 SETTABLEKS                       R16 R15 K28 ["getMessagesAsync"]
      123 DUPCLOSURE                       R16 K29 [PROTO_4]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R10
      128 SETTABLEKS                       R16 R15 K30 ["postUploadMessagesAsync"]
      130 DUPCLOSURE                       R16 K31 [PROTO_5]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R11
      134 SETTABLEKS                       R16 R15 K32 ["getSkillAssetsAsync"]
      136 DUPCLOSURE                       R16 K33 [PROTO_6]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 SETTABLEKS                       R16 R15 K34 ["postUploadSkillAssetsAsync"]
      143 DUPCLOSURE                       R16 K35 [PROTO_7]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 SETTABLEKS                       R16 R15 K36 ["deleteSkillAssetAsync"]
      149 GETIMPORT                        R16 K39 [table.freeze]
      151 MOVE                             R17 R15
      152 CALL                             R16 1 -1
      153 RETURN                           R16 -1
