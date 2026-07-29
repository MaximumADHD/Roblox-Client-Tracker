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
       68 NEWTABLE                         R11 8 0
       70 DUPCLOSURE                       R12 K17 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R12 R11 K18 ["getThreadsAsync"]
       76 DUPCLOSURE                       R12 K19 [PROTO_1]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R12 R11 K20 ["postUploadThreadsAsync"]
       83 DUPCLOSURE                       R12 K21 [PROTO_2]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R12 R11 K22 ["deleteThreadAsync"]
       89 DUPCLOSURE                       R12 K23 [PROTO_3]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R12 R11 K24 ["getMessagesAsync"]
       95 DUPCLOSURE                       R12 K25 [PROTO_4]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R12 R11 K26 ["postUploadMessagesAsync"]
      102 GETIMPORT                        R12 K29 [table.freeze]
      104 MOVE                             R13 R11
      105 CALL                             R12 1 -1
      106 RETURN                           R12 -1
