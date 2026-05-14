PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["buildRequest"]
        3 LOADK                            R5 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["host"]
        7 LOADK                            R7 K3 ["/v1/threads"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K4 ["pathPrefix"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K5 ["baseUrl"]
       14 CALL                             R4 5 1
       15 LOADK                            R6 K6 ["placeId"]
       16 MOVE                             R7 R0
       17 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       19 CALL                             R4 3 1
       20 LOADK                            R6 K8 ["cursor"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       24 CALL                             R4 3 1
       25 LOADK                            R6 K9 ["limit"]
       26 MOVE                             R7 R2
       27 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       29 CALL                             R4 3 1
       30 LOADK                            R6 K10 ["Roblox-Api-Key"]
       31 MOVE                             R7 R3
       32 NAMECALL                         R4 R4 K11 ["addHeaderParameter"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R6 2
       36 NAMECALL                         R4 R4 K12 ["sendAsync"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["POST"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/threads"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["pathPrefix"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K5 ["baseUrl"]
       14 CALL                             R3 5 1
       15 LOADK                            R5 K6 ["placeId"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K7 ["addQueryParameter"]
       19 CALL                             R3 3 1
       20 LOADK                            R5 K8 ["Roblox-Api-Key"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R3 R3 K9 ["addHeaderParameter"]
       24 CALL                             R3 3 1
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K10 ["setBody"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R5 3
       31 NAMECALL                         R3 R3 K11 ["sendAsync"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["DELETE"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["{threadId}"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addPathParameter"]
       19 CALL                             R2 3 1
       20 LOADK                            R4 K8 ["Roblox-Api-Key"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K9 ["addHeaderParameter"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 2
       26 NAMECALL                         R2 R2 K10 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["buildRequest"]
        3 LOADK                            R5 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["host"]
        7 LOADK                            R7 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K4 ["pathPrefix"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K5 ["baseUrl"]
       14 CALL                             R4 5 1
       15 LOADK                            R6 K6 ["{threadId}"]
       16 MOVE                             R7 R0
       17 NAMECALL                         R4 R4 K7 ["addPathParameter"]
       19 CALL                             R4 3 1
       20 LOADK                            R6 K8 ["cursor"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R4 K9 ["addQueryParameter"]
       24 CALL                             R4 3 1
       25 LOADK                            R6 K10 ["limit"]
       26 MOVE                             R7 R2
       27 NAMECALL                         R4 R4 K9 ["addQueryParameter"]
       29 CALL                             R4 3 1
       30 LOADK                            R6 K11 ["Roblox-Api-Key"]
       31 MOVE                             R7 R3
       32 NAMECALL                         R4 R4 K12 ["addHeaderParameter"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R6 2
       36 NAMECALL                         R4 R4 K13 ["sendAsync"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["POST"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/threads/{threadId}"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["pathPrefix"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K5 ["baseUrl"]
       14 CALL                             R3 5 1
       15 LOADK                            R5 K6 ["{threadId}"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K7 ["addPathParameter"]
       19 CALL                             R3 3 1
       20 LOADK                            R5 K8 ["Roblox-Api-Key"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R3 R3 K9 ["addHeaderParameter"]
       24 CALL                             R3 3 1
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K10 ["setBody"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R5 3
       31 NAMECALL                         R3 R3 K11 ["sendAsync"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantStorageApi"]
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
       25 GETTABLEKS                       R6 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R6 K11 ["GetThreadsAsyncResponse"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["UploadThreadsAsyncRequest"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Models"]
       41 GETTABLEKS                       R8 R8 K13 ["UploadThreadsAsyncResponse"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Models"]
       48 GETTABLEKS                       R9 R9 K14 ["DeleteThreadAsyncResponse"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R10 R0 K10 ["Models"]
       55 GETTABLEKS                       R10 R10 K15 ["GetMessagesAsyncResponse"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R11 R0 K10 ["Models"]
       62 GETTABLEKS                       R11 R11 K16 ["UploadMessagesAsyncRequest"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K7 [require]
       67 GETTABLEKS                       R12 R0 K10 ["Models"]
       69 GETTABLEKS                       R12 R12 K17 ["UploadMessagesAsyncResponse"]
       71 CALL                             R11 1 1
       72 NEWTABLE                         R12 8 0
       74 DUPCLOSURE                       R13 K18 [PROTO_0]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R13 R12 K19 ["getThreadsAsync"]
       80 DUPCLOSURE                       R13 K20 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R13 R12 K21 ["postUploadThreadsAsync"]
       87 DUPCLOSURE                       R13 K22 [PROTO_2]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R13 R12 K23 ["deleteThreadAsync"]
       93 DUPCLOSURE                       R13 K24 [PROTO_3]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R13 R12 K25 ["getMessagesAsync"]
       99 DUPCLOSURE                       R13 K26 [PROTO_4]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 SETTABLEKS                       R13 R12 K27 ["postUploadMessagesAsync"]
      106 GETIMPORT                        R13 K30 [table.freeze]
      108 MOVE                             R14 R12
      109 CALL                             R13 1 -1
      110 RETURN                           R13 -1
