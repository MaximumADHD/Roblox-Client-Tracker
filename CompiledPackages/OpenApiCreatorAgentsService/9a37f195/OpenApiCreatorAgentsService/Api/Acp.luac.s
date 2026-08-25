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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/acpJsonRpc/_roblox/ad_campaign/eligibility"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["Roblox-Api-Key"]
       16 GETTABLEKS                       R4 R0 K7 ["robloxApiKey"]
       18 NAMECALL                         R1 R1 K8 ["addHeaderParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K9 ["makeIdentity"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K10 ["body"]
       27 NAMECALL                         R1 R1 K11 ["setBody"]
       29 CALL                             R1 3 1
       30 GETUPVAL                         R3 2
       31 NAMECALL                         R1 R1 K12 ["sendAsync"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["JsonRpcResponse"]
       25 CALL                             R4 1 1
       26 NEWTABLE                         R5 16 0
       28 DUPCLOSURE                       R6 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R5 K12 ["postAcpAsync"]
       34 DUPCLOSURE                       R6 K13 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R5 K14 ["postInitializeAsync"]
       40 DUPCLOSURE                       R6 K15 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K16 ["postSessionNewAsync"]
       46 DUPCLOSURE                       R6 K17 [PROTO_3]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R6 R5 K18 ["postSessionListAsync"]
       52 DUPCLOSURE                       R6 K19 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K20 ["postSessionLoadAsync"]
       58 DUPCLOSURE                       R6 K21 [PROTO_5]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R6 R5 K22 ["postSessionPromptAsync"]
       64 DUPCLOSURE                       R6 K23 [PROTO_6]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K24 ["postSessionSetModeAsync"]
       70 DUPCLOSURE                       R6 K25 [PROTO_7]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R6 R5 K26 ["postSessionCancelAsync"]
       76 DUPCLOSURE                       R6 K27 [PROTO_8]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R6 R5 K28 ["postRobloxSessionDeleteAsync"]
       82 DUPCLOSURE                       R6 K29 [PROTO_9]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R6 R5 K30 ["postRobloxSessionUpdateInfoAsync"]
       88 DUPCLOSURE                       R6 K31 [PROTO_10]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R6 R5 K32 ["postRobloxSessionFindByUniverseAsync"]
       94 DUPCLOSURE                       R6 K33 [PROTO_11]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R6 R5 K34 ["postRobloxSessionReadTasksAsync"]
      100 DUPCLOSURE                       R6 K35 [PROTO_12]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R6 R5 K36 ["postRobloxSessionSaveAndPublishAsync"]
      106 DUPCLOSURE                       R6 K37 [PROTO_13]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R6 R5 K38 ["postRobloxAdCampaignEligibilityAsync"]
      112 GETIMPORT                        R6 K41 [table.freeze]
      114 MOVE                             R7 R5
      115 CALL                             R6 1 -1
      116 RETURN                           R6 -1
