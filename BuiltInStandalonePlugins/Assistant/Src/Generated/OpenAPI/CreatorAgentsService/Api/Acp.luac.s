PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acp"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/initialize"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/new"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/list"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/load"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/prompt"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/set_mode"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/session/cancel"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/_roblox/session/delete"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/_roblox/session/update_info"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/_roblox/session/find_by_universe"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["host"]
        7 LOADK                            R5 K3 ["/acpJsonRpc/_roblox/session/read_tasks"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K4 ["pathPrefix"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K5 ["baseUrl"]
       14 CALL                             R2 5 1
       15 LOADK                            R4 K6 ["Roblox-Api-Key"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R2 R2 K7 ["addHeaderParameter"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K8 ["setBody"]
       24 CALL                             R2 3 1
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R2 R2 K9 ["sendAsync"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorAgentsService"]
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
       27 GETTABLEKS                       R6 R6 K11 ["JsonElement"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["JsonRpcResponse"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 16 0
       39 DUPCLOSURE                       R8 K13 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R8 R7 K14 ["postAcpAsync"]
       46 DUPCLOSURE                       R8 K15 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R8 R7 K16 ["postInitializeAsync"]
       53 DUPCLOSURE                       R8 K17 [PROTO_2]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R8 R7 K18 ["postSessionNewAsync"]
       60 DUPCLOSURE                       R8 K19 [PROTO_3]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R8 R7 K20 ["postSessionListAsync"]
       67 DUPCLOSURE                       R8 K21 [PROTO_4]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R8 R7 K22 ["postSessionLoadAsync"]
       74 DUPCLOSURE                       R8 K23 [PROTO_5]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R8 R7 K24 ["postSessionPromptAsync"]
       81 DUPCLOSURE                       R8 K25 [PROTO_6]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R8 R7 K26 ["postSessionSetModeAsync"]
       88 DUPCLOSURE                       R8 K27 [PROTO_7]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R8 R7 K28 ["postSessionCancelAsync"]
       95 DUPCLOSURE                       R8 K29 [PROTO_8]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R8 R7 K30 ["postRobloxSessionDeleteAsync"]
      102 DUPCLOSURE                       R8 K31 [PROTO_9]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R8 R7 K32 ["postRobloxSessionUpdateInfoAsync"]
      109 DUPCLOSURE                       R8 K33 [PROTO_10]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R8 R7 K34 ["postRobloxSessionFindByUniverseAsync"]
      116 DUPCLOSURE                       R8 K35 [PROTO_11]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 SETTABLEKS                       R8 R7 K36 ["postRobloxSessionReadTasksAsync"]
      123 GETIMPORT                        R8 K39 [table.freeze]
      125 MOVE                             R9 R7
      126 CALL                             R8 1 -1
      127 RETURN                           R8 -1
