PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acp"]
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/initialize"]
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/new"]
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/list"]
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/load"]
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/prompt"]
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/set_mode"]
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
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/session/cancel"]
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/session/delete"]
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/session/update_info"]
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/session/find_by_universe"]
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/session/read_tasks"]
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/session/save_and_publish"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorAgentsService"]
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
       23 GETTABLEKS                       R5 R5 K10 ["JsonElement"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["JsonRpcResponse"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 16 0
       35 DUPCLOSURE                       R7 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R7 R6 K13 ["postAcpAsync"]
       42 DUPCLOSURE                       R7 K14 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K15 ["postInitializeAsync"]
       49 DUPCLOSURE                       R7 K16 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R7 R6 K17 ["postSessionNewAsync"]
       56 DUPCLOSURE                       R7 K18 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R6 K19 ["postSessionListAsync"]
       63 DUPCLOSURE                       R7 K20 [PROTO_4]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R7 R6 K21 ["postSessionLoadAsync"]
       70 DUPCLOSURE                       R7 K22 [PROTO_5]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R7 R6 K23 ["postSessionPromptAsync"]
       77 DUPCLOSURE                       R7 K24 [PROTO_6]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R7 R6 K25 ["postSessionSetModeAsync"]
       84 DUPCLOSURE                       R7 K26 [PROTO_7]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R7 R6 K27 ["postSessionCancelAsync"]
       91 DUPCLOSURE                       R7 K28 [PROTO_8]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R7 R6 K29 ["postRobloxSessionDeleteAsync"]
       98 DUPCLOSURE                       R7 K30 [PROTO_9]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R7 R6 K31 ["postRobloxSessionUpdateInfoAsync"]
      105 DUPCLOSURE                       R7 K32 [PROTO_10]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R7 R6 K33 ["postRobloxSessionFindByUniverseAsync"]
      112 DUPCLOSURE                       R7 K34 [PROTO_11]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R7 R6 K35 ["postRobloxSessionReadTasksAsync"]
      119 DUPCLOSURE                       R7 K36 [PROTO_12]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R7 R6 K37 ["postRobloxSessionSaveAndPublishAsync"]
      126 GETIMPORT                        R7 K40 [table.freeze]
      128 MOVE                             R8 R6
      129 CALL                             R7 1 -1
      130 RETURN                           R7 -1
