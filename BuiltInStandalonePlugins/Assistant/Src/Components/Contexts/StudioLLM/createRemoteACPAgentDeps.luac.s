PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETIMPORT                        R0 K2 [warn]
        7 LOADK                            R1 K3 ["[remote-acp-agent]"]
        8 GETVARARGS                       R2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["[remote-acp-agent]"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["method"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+4]
        8 GETTABLEKS                       R1 R0 K0 ["method"]
       10 RETURN                           R1 1
       11 LOADK                            R1 K4 ["tool_result"]
       12 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["%*/acp"]
        1 LOADK                            R6 K1 ["/+$"]
        2 LOADK                            R7 K2 [""]
        3 NAMECALL                         R4 R0 K3 ["gsub"]
        5 CALL                             R4 3 1
        6 NAMECALL                         R2 R2 K4 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 RETURN                           R1 1

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["post"]
        6 CALL                             R0 4 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U4
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R0 R0 K1 ["andThen"]
       13 CALL                             R0 3 1
       14 NAMECALL                         R0 R0 K2 ["await"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["body"]
        3 NAMECALL                         R1 R1 K1 ["JSONEncode"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 4 0
       10 LOADK                            R4 K2 ["application/json"]
       11 SETTABLEKS                       R4 R3 K3 ["Content-Type"]
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R4 K5 [tostring]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K6 ["X-Roblox-User-Id"]
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K5 [tostring]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K7 ["robloxctx-authenticated-userid"]
       27 LOADNIL                          R4
       28 GETIMPORT                        R5 K9 [pcall]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          REF R4
       36 CALL                             R5 1 2
       37 FASTCALL1                        TYPEOF R4 ; [+3]
       38 MOVE                             R8 R4
       39 GETIMPORT                        R7 K11 [typeof]
       41 CALL                             R7 1 1
       42 JUMPIFEQKS                       R7 K12 ["table"] ; [+21]
       44 DUPTABLE                         R7 K16 [{["success"] = False, ["errorDetails"]}]
       45 DUPTABLE                         R8 K20 [{["kind"] = "Network", ["networkError"]}]
       46 JUMPIFNOT                        R5 ; [+6]
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R10 R4
       49 GETIMPORT                        R9 K5 [tostring]
       51 CALL                             R9 1 1
       52 JUMP                             ; [+5]
       53 FASTCALL1                        TOSTRING R6 ; [+3]
       54 MOVE                             R10 R6
       55 GETIMPORT                        R9 K5 [tostring]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K19 ["networkError"]
       60 SETTABLEKS                       R8 R7 K15 ["errorDetails"]
       62 CLOSEUPVALS                      R4
       63 RETURN                           R7 1
       64 GETTABLEKS                       R8 R4 K21 ["responseCode"]
       66 FASTCALL1                        TONUMBER R8 ; [+2]
       67 GETIMPORT                        R7 K23 [tonumber]
       69 CALL                             R7 1 1
       70 JUMPIFNOT                        R7 ; [+6]
       71 LOADN                            R8 200
       72 JUMPIFLT                         R7 R8 ; [+4]
       74 LOADN                            R8 300
       75 JUMPIFNOTLE                      R8 R7 ; [+13]
       77 DUPTABLE                         R8 K16 [{["success"] = False, ["errorDetails"]}]
       78 DUPTABLE                         R9 K26 [{["kind"] = "HttpStatusCode", ["statusCode"], [3]}]
       79 SETTABLEKS                       R7 R9 K25 ["statusCode"]
       81 GETTABLEKS                       R10 R4 K27 ["responseBody"]
       83 SETTABLEKS                       R10 R9 K0 ["body"]
       85 SETTABLEKS                       R9 R8 K15 ["errorDetails"]
       87 CLOSEUPVALS                      R4
       88 RETURN                           R8 1
       89 GETTABLEKS                       R8 R4 K27 ["responseBody"]
       91 FASTCALL1                        TYPEOF R8 ; [+3]
       92 MOVE                             R10 R8
       93 GETIMPORT                        R9 K11 [typeof]
       95 CALL                             R9 1 1
       96 JUMPIFNOTEQKS                    R9 K28 ["string"] ; [+3]
       98 JUMPIFNOTEQKS                    R8 K29 [""] ; [+4]
      100 DUPTABLE                         R9 K33 [{["success"] = True, ["data"] = }]
      101 CLOSEUPVALS                      R4
      102 RETURN                           R9 1
      103 GETIMPORT                        R9 K9 [pcall]
      105 NEWCLOSURE                       R10 P1
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          VAL R8
      108 CALL                             R9 1 2
      109 DUPTABLE                         R11 K34 [{["success"] = True, ["data"]}]
      110 JUMPIFNOT                        R9 ; [+9]
      111 FASTCALL1                        TYPEOF R10 ; [+3]
      112 MOVE                             R14 R10
      113 GETIMPORT                        R13 K11 [typeof]
      115 CALL                             R13 1 1
      116 JUMPIFNOTEQKS                    R13 K12 ["table"] ; [+3]
      118 MOVE                             R12 R10
      119 JUMP                             ; [+1]
      120 LOADNIL                          R12
      121 SETTABLEKS                       R12 R11 K31 ["data"]
      123 CLOSEUPVALS                      R4
      124 RETURN                           R11 1

PROTO_10:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 RETURN                           R3 1

PROTO_11:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [pcall]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R5 R4 K5 ["universeId"]
       12 JUMP                             ; [+1]
       13 LOADN                            R5 0
       14 JUMPIFNOT                        R3 ; [+4]
       15 JUMPIFNOT                        R4 ; [+3]
       16 GETTABLEKS                       R6 R4 K6 ["placeId"]
       18 JUMP                             ; [+1]
       19 LOADN                            R6 0
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K8 ["FStringDebugRemoteACPUniverseId"]
       23 FASTCALL1                        TONUMBER R9 ; [+2]
       24 GETIMPORT                        R8 K10 [tonumber]
       26 CALL                             R8 1 1
       27 ORK                              R7 R8 K7 [0]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K11 ["FStringDebugRemoteACPPlaceId"]
       31 FASTCALL1                        TONUMBER R10 ; [+2]
       32 GETIMPORT                        R9 K10 [tonumber]
       34 CALL                             R9 1 1
       35 ORK                              R8 R9 K7 [0]
       36 JUMPIFEQKN                       R7 K7 [0] ; [+2]
       38 MOVE                             R5 R7
       39 JUMPIFEQKN                       R8 K7 [0] ; [+2]
       41 MOVE                             R6 R8
       42 JUMPIF                           R3 ; [+17]
       43 JUMPIFEQKN                       R7 K7 [0] ; [+3]
       45 JUMPIFNOTEQKN                    R8 K7 [0] ; [+14]
       47 GETUPVAL                         R9 1
       48 LOADK                            R11 K12 ["getGameMetadata failed: %*"]
       49 FASTCALL1                        TOSTRING R4 ; [+3]
       50 MOVE                             R14 R4
       51 GETIMPORT                        R13 K14 [tostring]
       53 CALL                             R13 1 1
       54 NAMECALL                         R11 R11 K15 ["format"]
       56 CALL                             R11 2 1
       57 MOVE                             R10 R11
       58 CALL                             R9 1 0
       59 JUMP                             ; [+7]
       60 JUMPIFEQKN                       R5 K7 [0] ; [+3]
       62 JUMPIFNOTEQKN                    R6 K7 [0] ; [+4]
       64 GETUPVAL                         R9 1
       65 LOADK                            R10 K16 ["universeId/placeId is 0; CAS session/new requires a published place"]
       66 CALL                             R9 1 0
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K17 ["FFlagDebugLogAssistantUI"]
       70 JUMPIFNOT                        R9 ; [+14]
       71 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       73 JUMPIFEQKN                       R8 K7 [0] ; [+11]
       75 GETIMPORT                        R9 K19 [print]
       77 LOADK                            R11 K20 ["[Remote ACP] debug place override universeId=%* placeId=%*"]
       78 MOVE                             R13 R5
       79 MOVE                             R14 R6
       80 NAMECALL                         R11 R11 K15 ["format"]
       82 CALL                             R11 3 1
       83 MOVE                             R10 R11
       84 CALL                             R9 1 0
       85 GETTABLEKS                       R11 R2 K21 ["_meta"]
       87 FASTCALL1                        TYPEOF R11 ; [+2]
       88 GETIMPORT                        R10 K23 [typeof]
       90 CALL                             R10 1 1
       91 JUMPIFNOTEQKS                    R10 K0 ["table"] ; [+7]
       93 GETIMPORT                        R9 K2 [table.clone]
       95 GETTABLEKS                       R10 R2 K21 ["_meta"]
       97 CALL                             R9 1 1
       98 JUMP                             ; [+2]
       99 NEWTABLE                         R9 0 0
      101 GETTABLEKS                       R12 R9 K24 ["_roblox"]
      103 FASTCALL1                        TYPEOF R12 ; [+2]
      104 GETIMPORT                        R11 K23 [typeof]
      106 CALL                             R11 1 1
      107 JUMPIFNOTEQKS                    R11 K0 ["table"] ; [+7]
      109 GETIMPORT                        R10 K2 [table.clone]
      111 GETTABLEKS                       R11 R9 K24 ["_roblox"]
      113 CALL                             R10 1 1
      114 JUMP                             ; [+2]
      115 NEWTABLE                         R10 0 0
      117 SETTABLEKS                       R5 R10 K5 ["universeId"]
      119 SETTABLEKS                       R6 R10 K6 ["placeId"]
      121 LOADK                            R11 K25 ["studio"]
      122 SETTABLEKS                       R11 R10 K26 ["createdApp"]
      124 GETUPVAL                         R11 0
      125 GETTABLEKS                       R11 R11 K27 ["FStringDebugRemoteACPExperimentSpecVersion"]
      127 FASTCALL1                        TYPEOF R11 ; [+3]
      128 MOVE                             R13 R11
      129 GETIMPORT                        R12 K23 [typeof]
      131 CALL                             R12 1 1
      132 JUMPIFNOTEQKS                    R12 K28 ["string"] ; [+21]
      134 JUMPIFEQKS                       R11 K29 [""] ; [+19]
      136 DUPTABLE                         R12 K31 [{"specVersion"}]
      137 SETTABLEKS                       R11 R12 K30 ["specVersion"]
      139 SETTABLEKS                       R12 R10 K32 ["experiment"]
      141 GETUPVAL                         R12 0
      142 GETTABLEKS                       R12 R12 K17 ["FFlagDebugLogAssistantUI"]
      144 JUMPIFNOT                        R12 ; [+9]
      145 GETIMPORT                        R12 K19 [print]
      147 LOADK                            R14 K33 ["[Remote ACP] debug experiment specVersion=%*"]
      148 MOVE                             R16 R11
      149 NAMECALL                         R14 R14 K15 ["format"]
      151 CALL                             R14 2 1
      152 MOVE                             R13 R14
      153 CALL                             R12 1 0
      154 SETTABLEKS                       R10 R9 K24 ["_roblox"]
      156 SETTABLEKS                       R9 R2 K21 ["_meta"]
      158 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R4 R1 K3 ["_meta"]
        6 FASTCALL1                        TYPEOF R4 ; [+2]
        7 GETIMPORT                        R3 K5 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K0 ["table"] ; [+7]
       12 GETIMPORT                        R2 K2 [table.clone]
       14 GETTABLEKS                       R3 R1 K3 ["_meta"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R2 0 0
       20 GETTABLEKS                       R5 R2 K6 ["_roblox"]
       22 FASTCALL1                        TYPEOF R5 ; [+2]
       23 GETIMPORT                        R4 K5 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFNOTEQKS                    R4 K0 ["table"] ; [+7]
       28 GETIMPORT                        R3 K2 [table.clone]
       30 GETTABLEKS                       R4 R2 K6 ["_roblox"]
       32 CALL                             R3 1 1
       33 JUMP                             ; [+2]
       34 NEWTABLE                         R3 0 0
       36 LOADK                            R4 K7 ["studio"]
       37 SETTABLEKS                       R4 R3 K8 ["application"]
       39 SETTABLEKS                       R3 R2 K6 ["_roblox"]
       41 SETTABLEKS                       R2 R1 K3 ["_meta"]
       43 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R2 K1 [pcall]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 2
        4 JUMPIFNOT                        R2 ; [+4]
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R3 K2 ["universeId"]
        8 JUMP                             ; [+1]
        9 LOADN                            R4 0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K4 ["FStringDebugRemoteACPUniverseId"]
       13 FASTCALL1                        TONUMBER R7 ; [+2]
       14 GETIMPORT                        R6 K6 [tonumber]
       16 CALL                             R6 1 1
       17 ORK                              R5 R6 K3 [0]
       18 JUMPIFEQKN                       R5 K3 [0] ; [+2]
       20 MOVE                             R4 R5
       21 JUMPIFNOTEQKN                    R4 K3 [0] ; [+18]
       23 GETUPVAL                         R6 1
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADK                            R7 K7 ["skipping session/list because universeId is 0"]
       26 JUMP                             ; [+10]
       27 LOADK                            R8 K8 ["skipping session/list because game metadata failed: %*"]
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R11 R3
       30 GETIMPORT                        R10 K10 [tostring]
       32 CALL                             R10 1 1
       33 NAMECALL                         R8 R8 K11 ["format"]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 CALL                             R6 1 0
       38 LOADNIL                          R6
       39 RETURN                           R6 1
       40 GETIMPORT                        R6 K14 [table.clone]
       42 MOVE                             R7 R0
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R9 R0 K15 ["params"]
       46 FASTCALL1                        TYPEOF R9 ; [+2]
       47 GETIMPORT                        R8 K17 [typeof]
       49 CALL                             R8 1 1
       50 JUMPIFNOTEQKS                    R8 K12 ["table"] ; [+7]
       52 GETIMPORT                        R7 K14 [table.clone]
       54 GETTABLEKS                       R8 R0 K15 ["params"]
       56 CALL                             R7 1 1
       57 JUMP                             ; [+2]
       58 NEWTABLE                         R7 0 0
       60 SETTABLEKS                       R4 R7 K2 ["universeId"]
       62 LOADK                            R8 K18 ["_roblox/session/find_by_universe"]
       63 SETTABLEKS                       R8 R6 K19 ["method"]
       65 SETTABLEKS                       R7 R6 K15 ["params"]
       67 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 MOVE                             R4 R0
        1 GETTABLEKS                       R5 R0 K0 ["method"]
        3 JUMPIFNOTEQKS                    R5 K1 ["session/new"] ; [+22]
        5 GETTABLEKS                       R6 R0 K2 ["params"]
        7 FASTCALL1                        TYPEOF R6 ; [+2]
        8 GETIMPORT                        R5 K4 [typeof]
       10 CALL                             R5 1 1
       11 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+14]
       13 GETIMPORT                        R5 K7 [table.clone]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 MOVE                             R4 R5
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R6 R0 K2 ["params"]
       21 MOVE                             R7 R2
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K2 ["params"]
       25 JUMP                             ; [+53]
       26 GETTABLEKS                       R5 R0 K0 ["method"]
       28 JUMPIFNOTEQKS                    R5 K8 ["session/prompt"] ; [+21]
       30 GETTABLEKS                       R6 R0 K2 ["params"]
       32 FASTCALL1                        TYPEOF R6 ; [+2]
       33 GETIMPORT                        R5 K4 [typeof]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+13]
       38 GETIMPORT                        R5 K7 [table.clone]
       40 MOVE                             R6 R0
       41 CALL                             R5 1 1
       42 MOVE                             R4 R5
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R6 R0 K2 ["params"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K2 ["params"]
       49 JUMP                             ; [+29]
       50 GETTABLEKS                       R5 R0 K0 ["method"]
       52 JUMPIFNOTEQKS                    R5 K9 ["session/list"] ; [+26]
       54 GETUPVAL                         R5 2
       55 MOVE                             R6 R0
       56 MOVE                             R7 R2
       57 CALL                             R5 2 1
       58 JUMPIFNOTEQKNIL                  R5 ; [+19]
       60 LOADB                            R6 1
       61 DUPTABLE                         R7 K13 [{"jsonrpc", "id", "result"}]
       62 GETTABLEKS                       R8 R0 K10 ["jsonrpc"]
       64 SETTABLEKS                       R8 R7 K10 ["jsonrpc"]
       66 GETTABLEKS                       R8 R0 K11 ["id"]
       68 SETTABLEKS                       R8 R7 K11 ["id"]
       70 DUPTABLE                         R8 K15 [{"sessions"}]
       71 NEWTABLE                         R9 0 0
       73 SETTABLEKS                       R9 R8 K14 ["sessions"]
       75 SETTABLEKS                       R8 R7 K12 ["result"]
       77 RETURN                           R6 2
       78 MOVE                             R4 R5
       79 GETTABLEKS                       R7 R0 K0 ["method"]
       81 FASTCALL1                        TYPEOF R7 ; [+2]
       82 GETIMPORT                        R6 K4 [typeof]
       84 CALL                             R6 1 1
       85 JUMPIFNOTEQKS                    R6 K16 ["string"] ; [+4]
       87 GETTABLEKS                       R5 R0 K0 ["method"]
       89 JUMP                             ; [+1]
       90 LOADK                            R5 K17 ["tool_result"]
       91 GETUPVAL                         R6 3
       92 LOADK                            R8 K18 ["rpc method=%* endpoint=%*"]
       93 MOVE                             R10 R5
       94 MOVE                             R11 R3
       95 NAMECALL                         R8 R8 K19 ["format"]
       97 CALL                             R8 3 1
       98 MOVE                             R7 R8
       99 CALL                             R6 1 0
      100 MOVE                             R6 R1
      101 DUPTABLE                         R7 K21 [{"body"}]
      102 SETTABLEKS                       R4 R7 K20 ["body"]
      104 CALL                             R6 1 1
      105 GETTABLEKS                       R7 R6 K22 ["success"]
      107 JUMPIFNOT                        R7 ; [+4]
      108 LOADB                            R7 1
      109 GETTABLEKS                       R8 R6 K23 ["data"]
      111 RETURN                           R7 2
      112 GETTABLEKS                       R7 R6 K24 ["errorDetails"]
      114 GETTABLEKS                       R8 R7 K25 ["kind"]
      116 JUMPIFNOTEQKS                    R8 K26 ["Validation"] ; [+34]
      118 GETTABLEKS                       R9 R7 K20 ["body"]
      120 FASTCALL1                        TYPEOF R9 ; [+2]
      121 GETIMPORT                        R8 K4 [typeof]
      123 CALL                             R8 1 1
      124 JUMPIFNOTEQKS                    R8 K16 ["string"] ; [+5]
      126 GETTABLEKS                       R8 R7 K20 ["body"]
      128 JUMPIFNOTEQKS                    R8 K27 [""] ; [+4]
      130 LOADB                            R8 1
      131 LOADNIL                          R9
      132 RETURN                           R8 2
      133 GETIMPORT                        R8 K29 [pcall]
      135 NEWCLOSURE                       R9 P0
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R7
      138 CALL                             R8 1 2
      139 JUMPIFNOT                        R8 ; [+50]
      140 FASTCALL1                        TYPEOF R9 ; [+3]
      141 MOVE                             R11 R9
      142 GETIMPORT                        R10 K4 [typeof]
      144 CALL                             R10 1 1
      145 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+44]
      147 LOADB                            R10 1
      148 MOVE                             R11 R9
      149 RETURN                           R10 2
      150 JUMP                             ; [+39]
      151 GETTABLEKS                       R8 R7 K25 ["kind"]
      153 JUMPIFNOTEQKS                    R8 K30 ["HttpStatusCode"] ; [+22]
      155 GETUPVAL                         R8 5
      156 LOADK                            R10 K31 ["rpc http error method=%* status=%* body=%*"]
      157 MOVE                             R12 R5
      158 GETTABLEKS                       R14 R7 K32 ["statusCode"]
      160 FASTCALL1                        TOSTRING R14 ; [+2]
      161 GETIMPORT                        R13 K34 [tostring]
      163 CALL                             R13 1 1
      164 GETTABLEKS                       R15 R7 K20 ["body"]
      166 FASTCALL1                        TOSTRING R15 ; [+2]
      167 GETIMPORT                        R14 K34 [tostring]
      169 CALL                             R14 1 1
      170 NAMECALL                         R10 R10 K19 ["format"]
      172 CALL                             R10 4 1
      173 MOVE                             R9 R10
      174 CALL                             R8 1 0
      175 JUMP                             ; [+14]
      176 GETUPVAL                         R8 5
      177 LOADK                            R10 K35 ["rpc network error method=%* detail=%*"]
      178 MOVE                             R12 R5
      179 GETTABLEKS                       R14 R7 K36 ["networkError"]
      181 FASTCALL1                        TOSTRING R14 ; [+2]
      182 GETIMPORT                        R13 K34 [tostring]
      184 CALL                             R13 1 1
      185 NAMECALL                         R10 R10 K19 ["format"]
      187 CALL                             R10 3 1
      188 MOVE                             R9 R10
      189 CALL                             R8 1 0
      190 LOADB                            R8 0
      191 LOADNIL                          R9
      192 RETURN                           R8 2

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["stallTimer"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K0 ["stallTimer"]
        6 GETIMPORT                        R2 K3 [task.cancel]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["pending"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFEQKNIL                     R1 ; [+3]
        8 JUMPIFNOTLT                      R5 R1 ; [+2]
       10 MOVE                             R1 R5
       11 FORGLOOP                         R2 1 ; [-6]
       13 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["delivering"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["delivering"]
        7 GETTABLEKS                       R2 R0 K1 ["pending"]
        9 GETTABLEKS                       R3 R0 K2 ["nextSequence"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFEQKNIL                     R1 ; [+16]
       14 GETTABLEKS                       R2 R0 K2 ["nextSequence"]
       16 GETTABLEKS                       R3 R0 K1 ["pending"]
       18 LOADNIL                          R4
       19 SETTABLE                         R4 R3 R2
       20 GETTABLEKS                       R3 R0 K2 ["nextSequence"]
       22 ADDK                             R3 R3 K3 [1]
       23 SETTABLEKS                       R3 R0 K2 ["nextSequence"]
       25 GETUPVAL                         R3 0
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 JUMPBACK                         ; [-22]
       29 LOADB                            R1 0
       30 SETTABLEKS                       R1 R0 K0 ["delivering"]
       32 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["stallTimer"]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 GETTABLEKS                       R3 R1 K1 ["pending"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 JUMPIFEQKNIL                     R2 ; [+3]
       13 JUMPIFNOTLT                      R6 R2 ; [+2]
       15 MOVE                             R2 R6
       16 FORGLOOP                         R3 1 ; [-6]
       18 MOVE                             R0 R2
       19 JUMPIFEQKNIL                     R0 ; [+6]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K2 ["nextSequence"]
       24 JUMPIFNOTLE                      R0 R1 ; [+2]
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K4 [warn]
       29 LOADK                            R3 K5 ["[remote-acp-agent] Missing session updates %*-%* for session %*; continuing from sequence %*. Some content may be missing. Restart Studio to reload the full conversation history."]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K2 ["nextSequence"]
       33 SUBK                             R6 R0 K6 [1]
       34 GETUPVAL                         R7 1
       35 MOVE                             R8 R0
       36 NAMECALL                         R3 R3 K7 ["format"]
       38 CALL                             R3 5 1
       39 MOVE                             R2 R3
       40 CALL                             R1 1 0
       41 GETUPVAL                         R1 0
       42 SETTABLEKS                       R0 R1 K2 ["nextSequence"]
       44 GETUPVAL                         R1 2
       45 GETUPVAL                         R2 0
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 3
       48 GETUPVAL                         R2 1
       49 GETUPVAL                         R3 0
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["stallTimer"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+8]
        4 GETIMPORT                        R2 K2 [next]
        6 GETTABLEKS                       R3 R1 K3 ["pending"]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 GETIMPORT                        R2 K6 [task.delay]
       14 LOADN                            R3 5
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K0 ["stallTimer"]
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+25]
        4 DUPTABLE                         R4 K5 [{[1] = 1, ["pending"], ["delivering"] = False}]
        5 NEWTABLE                         R5 0 0
        7 SETTABLEKS                       R5 R4 K2 ["pending"]
        9 MOVE                             R3 R4
       10 GETUPVAL                         R4 0
       11 SETTABLE                         R3 R4 R0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R4 ; [+12]
       16 GETIMPORT                        R4 K8 [print]
       18 LOADK                            R6 K9 ["[Remote ACP] sequencer init buffer sessionId=%* nextSequence=%* firstReceived=%*"]
       19 MOVE                             R8 R0
       20 GETTABLEKS                       R9 R3 K0 ["nextSequence"]
       22 MOVE                             R10 R1
       23 NAMECALL                         R6 R6 K10 ["format"]
       25 CALL                             R6 4 1
       26 MOVE                             R5 R6
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R3 K0 ["nextSequence"]
       30 JUMPIFNOTLT                      R1 R4 ; [+2]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R5 R3 K2 ["pending"]
       35 GETTABLE                         R4 R5 R1
       36 JUMPIFEQKNIL                     R4 ; [+2]
       38 RETURN                           R0 0
       39 GETTABLEKS                       R4 R3 K2 ["pending"]
       41 SETTABLE                         R2 R4 R1
       42 GETUPVAL                         R4 2
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 GETIMPORT                        R4 K12 [next]
       47 GETTABLEKS                       R5 R3 K2 ["pending"]
       49 CALL                             R4 1 1
       50 JUMPIFNOTEQKNIL                  R4 ; [+13]
       52 MOVE                             R4 R3
       53 GETTABLEKS                       R5 R4 K13 ["stallTimer"]
       55 JUMPIFNOT                        R5 ; [+32]
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R4 K13 ["stallTimer"]
       59 GETIMPORT                        R6 K16 [task.cancel]
       61 MOVE                             R7 R5
       62 CALL                             R6 1 0
       63 RETURN                           R0 0
       64 MOVE                             R4 R3
       65 GETTABLEKS                       R5 R4 K13 ["stallTimer"]
       67 JUMPIFNOTEQKNIL                  R5 ; [+20]
       69 GETIMPORT                        R5 K12 [next]
       71 GETTABLEKS                       R6 R4 K2 ["pending"]
       73 CALL                             R5 1 1
       74 JUMPIFNOTEQKNIL                  R5 ; [+2]
       76 RETURN                           R0 0
       77 GETIMPORT                        R5 K18 [task.delay]
       79 LOADN                            R6 5
       80 NEWCLOSURE                       R7 P0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U3
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K13 ["stallTimer"]
       88 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+25]
        4 GETUPVAL                         R3 0
        5 DUPTABLE                         R4 K4 [{[1], ["pending"], ["delivering"] = False}]
        6 SETTABLEKS                       R1 R4 K0 ["nextSequence"]
        8 NEWTABLE                         R5 0 0
       10 SETTABLEKS                       R5 R4 K1 ["pending"]
       12 SETTABLE                         R4 R3 R0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R3 ; [+10]
       17 GETIMPORT                        R3 K7 [print]
       19 LOADK                            R5 K8 ["[Remote ACP] sequencer initialize sessionId=%* nextSequence=%*"]
       20 MOVE                             R7 R0
       21 MOVE                             R8 R1
       22 NAMECALL                         R5 R5 K9 ["format"]
       24 CALL                             R5 3 1
       25 MOVE                             R4 R5
       26 CALL                             R3 1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R2 K0 ["nextSequence"]
       30 JUMPIFNOTLE                      R1 R3 ; [+2]
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R2 K0 ["nextSequence"]
       35 GETTABLEKS                       R3 R2 K1 ["pending"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 JUMPIFNOTLT                      R6 R1 ; [+5]
       42 GETTABLEKS                       R8 R2 K1 ["pending"]
       44 LOADNIL                          R9
       45 SETTABLE                         R9 R8 R6
       46 FORGLOOP                         R3 1 ; [-7]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       51 JUMPIFNOT                        R3 ; [+10]
       52 GETIMPORT                        R3 K7 [print]
       54 LOADK                            R5 K10 ["[Remote ACP] sequencer advance sessionId=%* nextSequence=%*"]
       55 MOVE                             R7 R0
       56 MOVE                             R8 R1
       57 NAMECALL                         R5 R5 K9 ["format"]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 2
       63 MOVE                             R4 R2
       64 CALL                             R3 1 0
       65 GETIMPORT                        R3 K12 [next]
       67 GETTABLEKS                       R4 R2 K1 ["pending"]
       69 CALL                             R3 1 1
       70 JUMPIFNOTEQKNIL                  R3 ; [+12]
       72 GETTABLEKS                       R3 R2 K13 ["stallTimer"]
       74 JUMPIFNOT                        R3 ; [+31]
       75 LOADNIL                          R4
       76 SETTABLEKS                       R4 R2 K13 ["stallTimer"]
       78 GETIMPORT                        R4 K16 [task.cancel]
       80 MOVE                             R5 R3
       81 CALL                             R4 1 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R3 R2 K13 ["stallTimer"]
       85 JUMPIFNOTEQKNIL                  R3 ; [+20]
       87 GETIMPORT                        R3 K12 [next]
       89 GETTABLEKS                       R4 R2 K1 ["pending"]
       91 CALL                             R3 1 1
       92 JUMPIFNOTEQKNIL                  R3 ; [+2]
       94 RETURN                           R0 0
       95 GETIMPORT                        R3 K18 [task.delay]
       97 LOADN                            R4 5
       98 NEWCLOSURE                       R5 P0
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          UPVAL U3
      103 CALL                             R3 2 1
      104 SETTABLEKS                       R3 R2 K13 ["stallTimer"]
      106 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["stallTimer"]
        6 JUMPIFNOT                        R5 ; [+7]
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R4 K0 ["stallTimer"]
       10 GETIMPORT                        R6 K3 [task.cancel]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 FORGLOOP                         R0 2 ; [-11]
       16 GETIMPORT                        R0 K6 [table.clear]
       18 GETUPVAL                         R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 DUPCLOSURE                       R2 K0 [PROTO_16]
        3 DUPCLOSURE                       R3 K1 [PROTO_17]
        4 NEWCLOSURE                       R4 P2
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R5 P3
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R5
        9 NEWCLOSURE                       R6 P4
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R5
       14 NEWCLOSURE                       R7 P5
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R5
       19 NEWCLOSURE                       R8 P6
       20 CAPTURE                          VAL R1
       21 DUPTABLE                         R9 K5 [{"initialize", "push", "reset"}]
       22 SETTABLEKS                       R7 R9 K2 ["initialize"]
       24 SETTABLEKS                       R6 R9 K3 ["push"]
       26 SETTABLEKS                       R8 R9 K4 ["reset"]
       28 RETURN                           R9 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 MOVE                             R2 R1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["detail"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["message"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 FASTCALL1                        TYPEOF R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["table"] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K5 ["source"]
       17 JUMPIFEQKNIL                     R3 ; [+6]
       19 GETTABLEKS                       R3 R2 K5 ["source"]
       21 JUMPIFEQKS                       R3 K6 ["CAPStudioAssistant"] ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R2 K7 ["created_app"]
       26 JUMPIFEQKNIL                     R3 ; [+6]
       28 GETTABLEKS                       R3 R2 K7 ["created_app"]
       30 JUMPIFEQKS                       R3 K8 ["studio"] ; [+2]
       32 RETURN                           R0 0
       33 GETIMPORT                        R3 K1 [pcall]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R2
       38 CALL                             R3 1 2
       39 JUMPIFNOT                        R3 ; [+7]
       40 FASTCALL1                        TYPEOF R4 ; [+3]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K3 [typeof]
       44 CALL                             R5 1 1
       45 JUMPIFEQKS                       R5 K4 ["table"] ; [+2]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R5 R2 K9 ["request_id"]
       50 GETTABLEKS                       R7 R2 K10 ["sequence_number"]
       52 FASTCALL1                        TONUMBER R7 ; [+2]
       53 GETIMPORT                        R6 K12 [tonumber]
       55 CALL                             R6 1 1
       56 JUMPIF                           R6 ; [+6]
       57 GETTABLEKS                       R7 R2 K13 ["sequenceNumber"]
       59 FASTCALL1                        TONUMBER R7 ; [+2]
       60 GETIMPORT                        R6 K12 [tonumber]
       62 CALL                             R6 1 1
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K14 ["FFlagDebugLogAssistantUI"]
       66 JUMPIFNOT                        R7 ; [+13]
       67 GETIMPORT                        R7 K16 [print]
       69 LOADK                            R9 K17 ["[Remote ACP] received notification %*"]
       70 GETUPVAL                         R11 0
       71 MOVE                             R13 R2
       72 NAMECALL                         R11 R11 K18 ["JSONEncode"]
       74 CALL                             R11 2 1
       75 NAMECALL                         R9 R9 K19 ["format"]
       77 CALL                             R9 2 1
       78 MOVE                             R8 R9
       79 CALL                             R7 1 0
       80 FASTCALL1                        TYPEOF R5 ; [+3]
       81 MOVE                             R8 R5
       82 GETIMPORT                        R7 K3 [typeof]
       84 CALL                             R7 1 1
       85 JUMPIFNOTEQKS                    R7 K20 ["string"] ; [+16]
       87 FASTCALL1                        TYPEOF R6 ; [+3]
       88 MOVE                             R8 R6
       89 GETIMPORT                        R7 K3 [typeof]
       91 CALL                             R7 1 1
       92 JUMPIFNOTEQKS                    R7 K21 ["number"] ; [+9]
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R7 R7 K22 ["push"]
       97 MOVE                             R8 R5
       98 MOVE                             R9 R6
       99 MOVE                             R10 R4
      100 CALL                             R7 3 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R7 3
      103 MOVE                             R8 R4
      104 CALL                             R7 1 0
      105 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFNOTEQKS                    R1 K1 ["AssistantPlugin"] ; [+4]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Remote ACP] unsubscribe from backend notifications"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K4 ["reset"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K5 ["Disconnect"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 3
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETUPVAL                         R0 4
       25 NAMECALL                         R0 R0 K5 ["Disconnect"]
       27 CALL                             R0 1 0
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[Remote ACP] subscribe namespace=AssistantPlugin"]
        7 CALL                             R1 1 0
        8 SETUPVAL                         R0 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantNotificationManager"]
       19 JUMPIFNOT                        R4 ; [+11]
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K5 ["get"]
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R4 R4 K6 ["listen"]
       26 LOADK                            R5 K7 ["AssistantPlugin"]
       27 MOVE                             R6 R1
       28 CALL                             R4 2 1
       29 MOVE                             R2 R4
       30 JUMP                             ; [+9]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K8 ["RobloxEventReceived"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R1
       36 NAMECALL                         R4 R4 K9 ["Connect"]
       38 CALL                             R4 2 1
       39 MOVE                             R3 R4
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          REF R2
       45 CAPTURE                          REF R3
       46 CLOSEUPVALS                      R2
       47 RETURN                           R4 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R6 3
        5 ORK                              R5 R6 K0 ["injected"]
        6 CALL                             R1 4 2
        7 JUMPIFNOT                        R1 ; [+7]
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       15 RETURN                           R1 2
       16 GETTABLEKS                       R3 R2 K4 ["result"]
       18 GETTABLEKS                       R4 R0 K5 ["method"]
       20 JUMPIFNOTEQKS                    R4 K6 ["session/new"] ; [+24]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K2 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+17]
       29 GETTABLEKS                       R4 R3 K7 ["sessionId"]
       31 FASTCALL1                        TYPEOF R4 ; [+3]
       32 MOVE                             R6 R4
       33 GETIMPORT                        R5 K2 [typeof]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+79]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K9 ["initialize"]
       41 MOVE                             R6 R4
       42 LOADN                            R7 1
       43 CALL                             R5 2 0
       44 RETURN                           R1 2
       45 GETTABLEKS                       R4 R0 K5 ["method"]
       47 JUMPIFNOTEQKS                    R4 K10 ["session/load"] ; [+68]
       49 GETTABLEKS                       R5 R0 K11 ["params"]
       51 FASTCALL1                        TYPEOF R5 ; [+2]
       52 GETIMPORT                        R4 K2 [typeof]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+60]
       57 FASTCALL1                        TYPEOF R3 ; [+3]
       58 MOVE                             R5 R3
       59 GETIMPORT                        R4 K2 [typeof]
       61 CALL                             R4 1 1
       62 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+53]
       64 GETTABLEKS                       R4 R0 K11 ["params"]
       66 GETTABLEKS                       R4 R4 K7 ["sessionId"]
       68 GETTABLEKS                       R5 R3 K12 ["history"]
       70 FASTCALL1                        TYPEOF R4 ; [+3]
       71 MOVE                             R7 R4
       72 GETIMPORT                        R6 K2 [typeof]
       74 CALL                             R6 1 1
       75 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+40]
       77 LOADN                            R6 0
       78 FASTCALL1                        TYPEOF R5 ; [+3]
       79 MOVE                             R8 R5
       80 GETIMPORT                        R7 K2 [typeof]
       82 CALL                             R7 1 1
       83 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+26]
       85 MOVE                             R7 R5
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL1                        TYPEOF R11 ; [+3]
       90 MOVE                             R14 R11
       91 GETIMPORT                        R13 K2 [typeof]
       93 CALL                             R13 1 1
       94 JUMPIFNOTEQKS                    R13 K3 ["table"] ; [+8]
       96 GETTABLEKS                       R13 R11 K13 ["sequenceId"]
       98 FASTCALL1                        TONUMBER R13 ; [+2]
       99 GETIMPORT                        R12 K15 [tonumber]
      101 CALL                             R12 1 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R12
      104 JUMPIFNOT                        R12 ; [+3]
      105 JUMPIFNOTLT                      R6 R12 ; [+2]
      107 MOVE                             R6 R12
      108 FORGLOOP                         R7 2 ; [-20]
      110 GETUPVAL                         R7 4
      111 GETTABLEKS                       R7 R7 K9 ["initialize"]
      113 MOVE                             R8 R4
      114 ADDK                             R9 R6 K16 [1]
      115 CALL                             R7 2 0
      116 RETURN                           R1 2

PROTO_33:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantNotificationManager"]
        4 JUMPIF                           R5 ; [+5]
        5 LOADK                            R7 K1 ["NotificationService"]
        6 NAMECALL                         R5 R0 K2 ["GetService"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 LOADNIL                          R5
       11 GETUPVAL                         R6 1
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          REF R5
       14 CALL                             R6 1 1
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          REF R5
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R4
       22 DUPTABLE                         R8 K5 [{"postAcp", "subscribe"}]
       23 NEWCLOSURE                       R9 P2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R6
       29 SETTABLEKS                       R9 R8 K3 ["postAcp"]
       31 SETTABLEKS                       R7 R8 K4 ["subscribe"]
       33 CLOSEUPVALS                      R4
       34 RETURN                           R8 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R2 K1 [""] ; [+3]
        5 MOVE                             R1 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 LOADK                            R3 K2 ["%*/creator-agents-service/v1"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["get"]
       12 CALL                             R5 0 1
       13 GETTABLEKS                       R5 R5 K4 ["apisUrl"]
       15 LOADK                            R7 K5 ["/+$"]
       16 LOADK                            R8 K1 [""]
       17 NAMECALL                         R5 R5 K6 ["gsub"]
       19 CALL                             R5 3 1
       20 NAMECALL                         R3 R3 K7 ["format"]
       22 CALL                             R3 2 1
       23 MOVE                             R2 R3
       24 OR                               R4 R1 R2
       25 LOADK                            R5 K8 ["%*/acp"]
       26 LOADK                            R9 K5 ["/+$"]
       27 LOADK                            R10 K1 [""]
       28 NAMECALL                         R7 R4 K6 ["gsub"]
       30 CALL                             R7 3 1
       31 NAMECALL                         R5 R5 K7 ["format"]
       33 CALL                             R5 2 1
       34 MOVE                             R3 R5
       35 JUMPIFNOT                        R1 ; [+13]
       36 GETUPVAL                         R5 2
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K3 ["get"]
       40 CALL                             R6 0 1
       41 GETTABLEKS                       R6 R6 K9 ["getUserId"]
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R4 4
       50 GETTABLEKS                       R4 R4 K10 ["Acp"]
       52 GETTABLEKS                       R4 R4 K11 ["postAcpAsync"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K12 ["FFlagDebugLogAssistantUI"]
       57 JUMPIFNOT                        R5 ; [+17]
       58 GETIMPORT                        R5 K14 [print]
       60 LOADK                            R7 K15 ["[Remote ACP] create deps endpoint=%* localOverride=%*"]
       61 MOVE                             R9 R3
       62 JUMPIFNOTEQKNIL                  R1 ; [+2]
       64 LOADB                            R11 0 +1
       65 LOADB                            R11 1
       66 FASTCALL1                        TOSTRING R11 ; [+2]
       67 GETIMPORT                        R10 K17 [tostring]
       69 CALL                             R10 1 1
       70 NAMECALL                         R7 R7 K7 ["format"]
       72 CALL                             R7 3 1
       73 MOVE                             R6 R7
       74 CALL                             R5 1 0
       75 GETUPVAL                         R5 5
       76 MOVE                             R6 R0
       77 MOVE                             R7 R4
       78 GETUPVAL                         R8 6
       79 GETTABLEKS                       R8 R8 K18 ["getGameMetadata"]
       81 MOVE                             R9 R3
       82 CALL                             R5 4 1
       83 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["NotificationManagerStore"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R6 K16 ["OpenApiCreatorAgentsService"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K17 ["StudioGameMetadata"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Src"]
       56 GETTABLEKS                       R8 R8 K18 ["Flags"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R2 K19 ["Guest"]
       61 GETTABLEKS                       R8 R8 K20 ["Environment"]
       63 GETTABLEKS                       R9 R3 K21 ["Http"]
       65 GETTABLEKS                       R9 R9 K22 ["Networking"]
       67 GETTABLEKS                       R9 R9 K23 ["new"]
       69 DUPTABLE                         R10 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       70 GETTABLEKS                       R12 R7 K28 ["FFlagDebugLogAssistantUI"]
       72 JUMPIFNOT                        R12 ; [+2]
       73 LOADN                            R11 4
       74 JUMP                             ; [+1]
       75 LOADN                            R11 0
       76 SETTABLEKS                       R11 R10 K26 ["loggingLevel"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K29 [PROTO_0]
       80 CAPTURE                          VAL R7
       81 DUPCLOSURE                       R11 K30 [PROTO_1]
       82 CAPTURE                          VAL R7
       83 DUPCLOSURE                       R12 K31 [PROTO_2]
       84 DUPCLOSURE                       R13 K32 [PROTO_3]
       85 DUPCLOSURE                       R14 K33 [PROTO_4]
       86 DUPCLOSURE                       R15 K34 [PROTO_10]
       87 CAPTURE                          VAL R1
       88 DUPCLOSURE                       R16 K35 [PROTO_11]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R12
       91 DUPCLOSURE                       R17 K36 [PROTO_12]
       92 DUPCLOSURE                       R18 K37 [PROTO_13]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R11
       95 DUPCLOSURE                       R19 K38 [PROTO_15]
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R12
      102 DUPCLOSURE                       R20 K39 [PROTO_24]
      103 CAPTURE                          VAL R7
      104 DUPCLOSURE                       R21 K40 [PROTO_33]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R19
      110 DUPCLOSURE                       R22 K41 [PROTO_34]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R6
      118 DUPTABLE                         R23 K47 [{"createRemoteACPAgentDeps", "createSessionUpdateSequencer", "makeAcpEndpoint", "makeLocalPostAcpAsync", "makeRemoteACPAgentDeps"}]
      119 SETTABLEKS                       R22 R23 K42 ["createRemoteACPAgentDeps"]
      121 SETTABLEKS                       R20 R23 K43 ["createSessionUpdateSequencer"]
      123 SETTABLEKS                       R14 R23 K44 ["makeAcpEndpoint"]
      125 SETTABLEKS                       R15 R23 K45 ["makeLocalPostAcpAsync"]
      127 SETTABLEKS                       R21 R23 K46 ["makeRemoteACPAgentDeps"]
      129 RETURN                           R23 1
