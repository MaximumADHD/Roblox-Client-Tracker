PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.pack]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 1
        5 GETIMPORT                        R1 K4 [table.create]
        7 GETTABLEKS                       R2 R0 K5 ["n"]
        9 CALL                             R1 1 1
       10 LOADN                            R4 1
       11 GETTABLEKS                       R2 R0 K5 ["n"]
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETTABLE                         R6 R0 R4
       16 FASTCALL1                        TOSTRING R6 ; [+2]
       17 GETIMPORT                        R5 K7 [tostring]
       19 CALL                             R5 1 1
       20 SETTABLE                         R5 R1 R4
       21 FORNLOOP                         R2
       22 LOADK                            R2 K8 ["[remote-acp-agent] %*"]
       23 GETIMPORT                        R4 K10 [table.concat]
       25 MOVE                             R5 R1
       26 LOADK                            R6 K11 [" "]
       27 CALL                             R4 2 1
       28 NAMECALL                         R2 R2 K12 ["format"]
       30 CALL                             R2 2 1
       31 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETIMPORT                        R3 K2 [warn]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 JUMPIFNOT                        R1 ; [+11]
       13 GETIMPORT                        R3 K4 [pcall]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["get"]
       18 CALL                             R3 1 2
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETTABLEKS                       R5 R4 K6 ["printToStudioLogAsync"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["[remote-acp-agent]"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["method"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+4]
        8 GETTABLEKS                       R1 R0 K0 ["method"]
       10 RETURN                           R1 1
       11 LOADK                            R1 K4 ["tool_result"]
       12 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R1 K0 ["%*/acp"]
        1 LOADK                            R5 K1 ["/+$"]
        2 LOADK                            R6 K2 [""]
        3 NAMECALL                         R3 R0 K3 ["gsub"]
        5 CALL                             R3 3 1
        6 NAMECALL                         R1 R1 K4 ["format"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 RETURN                           R3 1

PROTO_12:
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
       42 JUMPIF                           R3 ; [+15]
       43 JUMPIFEQKN                       R7 K7 [0] ; [+3]
       45 JUMPIFNOTEQKN                    R8 K7 [0] ; [+12]
       47 GETUPVAL                         R9 1
       48 LOADK                            R10 K12 ["getGameMetadata failed: %*"]
       49 FASTCALL1                        TOSTRING R4 ; [+3]
       50 MOVE                             R13 R4
       51 GETIMPORT                        R12 K14 [tostring]
       53 CALL                             R12 1 1
       54 NAMECALL                         R10 R10 K15 ["format"]
       56 CALL                             R10 2 1
       57 CALL                             R9 1 0
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K16 ["FFlagDebugLogAssistantUI"]
       61 JUMPIFNOT                        R9 ; [+13]
       62 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       64 JUMPIFEQKN                       R8 K7 [0] ; [+10]
       66 GETIMPORT                        R9 K18 [print]
       68 LOADK                            R10 K19 ["[Remote ACP] debug place override universeId=%* placeId=%*"]
       69 MOVE                             R12 R5
       70 MOVE                             R13 R6
       71 NAMECALL                         R10 R10 K15 ["format"]
       73 CALL                             R10 3 1
       74 CALL                             R9 1 0
       75 GETTABLEKS                       R11 R2 K20 ["_meta"]
       77 FASTCALL1                        TYPEOF R11 ; [+2]
       78 GETIMPORT                        R10 K22 [typeof]
       80 CALL                             R10 1 1
       81 JUMPIFNOTEQKS                    R10 K0 ["table"] ; [+7]
       83 GETIMPORT                        R9 K2 [table.clone]
       85 GETTABLEKS                       R10 R2 K20 ["_meta"]
       87 CALL                             R9 1 1
       88 JUMP                             ; [+2]
       89 NEWTABLE                         R9 0 0
       91 GETTABLEKS                       R12 R9 K23 ["_roblox"]
       93 FASTCALL1                        TYPEOF R12 ; [+2]
       94 GETIMPORT                        R11 K22 [typeof]
       96 CALL                             R11 1 1
       97 JUMPIFNOTEQKS                    R11 K0 ["table"] ; [+7]
       99 GETIMPORT                        R10 K2 [table.clone]
      101 GETTABLEKS                       R11 R9 K23 ["_roblox"]
      103 CALL                             R10 1 1
      104 JUMP                             ; [+2]
      105 NEWTABLE                         R10 0 0
      107 SETTABLEKS                       R5 R10 K5 ["universeId"]
      109 SETTABLEKS                       R6 R10 K6 ["placeId"]
      111 LOADK                            R11 K24 ["studio"]
      112 SETTABLEKS                       R11 R10 K25 ["createdApp"]
      114 LOADK                            R11 K24 ["studio"]
      115 SETTABLEKS                       R11 R10 K26 ["application"]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K27 ["FStringDebugRemoteACPExperimentSpecVersion"]
      120 FASTCALL1                        TYPEOF R11 ; [+3]
      121 MOVE                             R13 R11
      122 GETIMPORT                        R12 K22 [typeof]
      124 CALL                             R12 1 1
      125 JUMPIFNOTEQKS                    R12 K28 ["string"] ; [+20]
      127 JUMPIFEQKS                       R11 K29 [""] ; [+18]
      129 DUPTABLE                         R12 K31 [{"specVersion"}]
      130 SETTABLEKS                       R11 R12 K30 ["specVersion"]
      132 SETTABLEKS                       R12 R10 K32 ["experiment"]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R12 R12 K16 ["FFlagDebugLogAssistantUI"]
      137 JUMPIFNOT                        R12 ; [+8]
      138 GETIMPORT                        R12 K18 [print]
      140 LOADK                            R13 K33 ["[Remote ACP] debug experiment specVersion=%*"]
      141 MOVE                             R15 R11
      142 NAMECALL                         R13 R13 K15 ["format"]
      144 CALL                             R13 2 1
      145 CALL                             R12 1 0
      146 SETTABLEKS                       R10 R9 K23 ["_roblox"]
      148 SETTABLEKS                       R9 R2 K20 ["_meta"]
      150 RETURN                           R2 1

PROTO_13:
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
       36 GETTABLEKS                       R5 R3 K7 ["allowedTools"]
       38 FASTCALL1                        TYPEOF R5 ; [+2]
       39 GETIMPORT                        R4 K5 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K0 ["table"] ; [+31]
       44 NEWTABLE                         R4 0 0
       46 GETTABLEKS                       R5 R3 K7 ["allowedTools"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 FASTCALL1                        TYPEOF R9 ; [+3]
       52 MOVE                             R11 R9
       53 GETIMPORT                        R10 K5 [typeof]
       55 CALL                             R10 1 1
       56 JUMPIFNOTEQKS                    R10 K8 ["string"] ; [+13]
       58 DUPTABLE                         R12 K11 [{"name", "inputSchema"}]
       59 SETTABLEKS                       R9 R12 K9 ["name"]
       61 DUPTABLE                         R13 K14 [{["type"] = "object"}]
       62 SETTABLEKS                       R13 R12 K10 ["inputSchema"]
       64 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       66 MOVE                             R11 R4
       67 GETIMPORT                        R10 K16 [table.insert]
       69 CALL                             R10 2 0
       70 FORGLOOP                         R5 2 ; [-20]
       72 SETTABLEKS                       R4 R3 K17 ["localTools"]
       74 LOADNIL                          R4
       75 SETTABLEKS                       R4 R3 K7 ["allowedTools"]
       77 LOADK                            R4 K18 ["studio"]
       78 SETTABLEKS                       R4 R3 K19 ["application"]
       80 SETTABLEKS                       R3 R2 K6 ["_roblox"]
       82 SETTABLEKS                       R2 R1 K3 ["_meta"]
       84 RETURN                           R1 1

PROTO_14:
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

PROTO_15:
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
       21 JUMPIFNOTEQKN                    R4 K3 [0] ; [+27]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R6 K7 ["skipping session/list because universeId is 0"]
       25 JUMP                             ; [+9]
       26 LOADK                            R6 K8 ["skipping session/list because game metadata failed: %*"]
       27 FASTCALL1                        TOSTRING R3 ; [+3]
       28 MOVE                             R9 R3
       29 GETIMPORT                        R8 K10 [tostring]
       31 CALL                             R8 1 1
       32 NAMECALL                         R6 R6 K11 ["format"]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 1
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K12 ["FFlagDebugLogAssistantUI"]
       41 JUMPIFNOT                        R8 ; [+5]
       42 GETIMPORT                        R8 K14 [warn]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 0
       46 JUMP                             ; [0]
       47 LOADNIL                          R6
       48 RETURN                           R6 1
       49 GETIMPORT                        R6 K17 [table.clone]
       51 MOVE                             R7 R0
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R9 R0 K18 ["params"]
       55 FASTCALL1                        TYPEOF R9 ; [+2]
       56 GETIMPORT                        R8 K20 [typeof]
       58 CALL                             R8 1 1
       59 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+7]
       61 GETIMPORT                        R7 K17 [table.clone]
       63 GETTABLEKS                       R8 R0 K18 ["params"]
       65 CALL                             R7 1 1
       66 JUMP                             ; [+2]
       67 NEWTABLE                         R7 0 0
       69 SETTABLEKS                       R4 R7 K2 ["universeId"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K21 ["FFlagSendApplicationFieldFromAssistant"]
       74 JUMPIFNOT                        R8 ; [+3]
       75 LOADK                            R8 K22 ["studio"]
       76 SETTABLEKS                       R8 R7 K23 ["application"]
       78 LOADK                            R8 K24 ["_roblox/session/find_by_universe"]
       79 SETTABLEKS                       R8 R6 K25 ["method"]
       81 SETTABLEKS                       R7 R6 K18 ["params"]
       83 RETURN                           R6 1

PROTO_16:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
        7 GETIMPORT                        R1 K4 [table.clone]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R1 0 0
       14 GETTABLEKS                       R4 R1 K5 ["_meta"]
       16 FASTCALL1                        TYPEOF R4 ; [+2]
       17 GETIMPORT                        R3 K1 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       22 GETIMPORT                        R2 K4 [table.clone]
       24 GETTABLEKS                       R3 R1 K5 ["_meta"]
       26 CALL                             R2 1 1
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R2 0 0
       30 GETTABLEKS                       R5 R2 K6 ["_roblox"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+7]
       38 GETIMPORT                        R3 K4 [table.clone]
       40 GETTABLEKS                       R4 R2 K6 ["_roblox"]
       42 CALL                             R3 1 1
       43 JUMP                             ; [+2]
       44 NEWTABLE                         R3 0 0
       46 LOADK                            R4 K7 ["studio"]
       47 SETTABLEKS                       R4 R3 K8 ["application"]
       49 SETTABLEKS                       R3 R2 K6 ["_roblox"]
       51 SETTABLEKS                       R2 R1 K5 ["_meta"]
       53 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_18:
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
       25 JUMP                             ; [+77]
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
       49 JUMP                             ; [+53]
       50 GETTABLEKS                       R5 R0 K0 ["method"]
       52 JUMPIFNOTEQKS                    R5 K9 ["_roblox/session/tool_call"] ; [+21]
       54 GETTABLEKS                       R6 R0 K2 ["params"]
       56 FASTCALL1                        TYPEOF R6 ; [+2]
       57 GETIMPORT                        R5 K4 [typeof]
       59 CALL                             R5 1 1
       60 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+13]
       62 GETIMPORT                        R5 K7 [table.clone]
       64 MOVE                             R6 R0
       65 CALL                             R5 1 1
       66 MOVE                             R4 R5
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R6 R0 K2 ["params"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K2 ["params"]
       73 JUMP                             ; [+29]
       74 GETTABLEKS                       R5 R0 K0 ["method"]
       76 JUMPIFNOTEQKS                    R5 K10 ["session/list"] ; [+26]
       78 GETUPVAL                         R5 3
       79 MOVE                             R6 R0
       80 MOVE                             R7 R2
       81 CALL                             R5 2 1
       82 JUMPIFNOTEQKNIL                  R5 ; [+19]
       84 LOADB                            R6 1
       85 DUPTABLE                         R7 K14 [{"jsonrpc", "id", "result"}]
       86 GETTABLEKS                       R8 R0 K11 ["jsonrpc"]
       88 SETTABLEKS                       R8 R7 K11 ["jsonrpc"]
       90 GETTABLEKS                       R8 R0 K12 ["id"]
       92 SETTABLEKS                       R8 R7 K12 ["id"]
       94 DUPTABLE                         R8 K16 [{"sessions"}]
       95 NEWTABLE                         R9 0 0
       97 SETTABLEKS                       R9 R8 K15 ["sessions"]
       99 SETTABLEKS                       R8 R7 K13 ["result"]
      101 RETURN                           R6 2
      102 MOVE                             R4 R5
      103 GETUPVAL                         R5 4
      104 CALL                             R5 0 1
      105 JUMPIFNOT                        R5 ; [+29]
      106 GETTABLEKS                       R6 R0 K0 ["method"]
      108 FASTCALL1                        TYPEOF R6 ; [+2]
      109 GETIMPORT                        R5 K4 [typeof]
      111 CALL                             R5 1 1
      112 JUMPIFNOTEQKS                    R5 K17 ["string"] ; [+22]
      114 GETIMPORT                        R5 K7 [table.clone]
      116 MOVE                             R6 R4
      117 CALL                             R5 1 1
      118 MOVE                             R4 R5
      119 GETUPVAL                         R5 5
      120 GETTABLEKS                       R8 R4 K2 ["params"]
      122 FASTCALL1                        TYPEOF R8 ; [+2]
      123 GETIMPORT                        R7 K4 [typeof]
      125 CALL                             R7 1 1
      126 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+4]
      128 GETTABLEKS                       R6 R4 K2 ["params"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R6
      132 CALL                             R5 1 1
      133 SETTABLEKS                       R5 R4 K2 ["params"]
      135 GETTABLEKS                       R7 R0 K0 ["method"]
      137 FASTCALL1                        TYPEOF R7 ; [+2]
      138 GETIMPORT                        R6 K4 [typeof]
      140 CALL                             R6 1 1
      141 JUMPIFNOTEQKS                    R6 K17 ["string"] ; [+4]
      143 GETTABLEKS                       R5 R0 K0 ["method"]
      145 JUMP                             ; [+1]
      146 LOADK                            R5 K18 ["tool_result"]
      147 LOADK                            R6 K19 ["rpc method=%* endpoint=%*"]
      148 MOVE                             R8 R5
      149 MOVE                             R9 R3
      150 NAMECALL                         R6 R6 K20 ["format"]
      152 CALL                             R6 3 1
      153 GETUPVAL                         R7 6
      154 MOVE                             R8 R6
      155 CALL                             R7 1 1
      156 GETUPVAL                         R8 7
      157 GETTABLEKS                       R8 R8 K21 ["FFlagDebugLogAssistantUI"]
      159 JUMPIFNOT                        R8 ; [+5]
      160 GETIMPORT                        R8 K23 [warn]
      162 MOVE                             R9 R7
      163 CALL                             R8 1 0
      164 JUMP                             ; [0]
      165 MOVE                             R6 R1
      166 DUPTABLE                         R7 K25 [{"body"}]
      167 SETTABLEKS                       R4 R7 K24 ["body"]
      169 CALL                             R6 1 1
      170 GETTABLEKS                       R7 R6 K26 ["success"]
      172 JUMPIFNOT                        R7 ; [+4]
      173 LOADB                            R7 1
      174 GETTABLEKS                       R8 R6 K27 ["data"]
      176 RETURN                           R7 2
      177 GETTABLEKS                       R7 R6 K28 ["errorDetails"]
      179 GETTABLEKS                       R8 R7 K29 ["kind"]
      181 JUMPIFNOTEQKS                    R8 K30 ["Validation"] ; [+34]
      183 GETTABLEKS                       R9 R7 K24 ["body"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K4 [typeof]
      188 CALL                             R8 1 1
      189 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+5]
      191 GETTABLEKS                       R8 R7 K24 ["body"]
      193 JUMPIFNOTEQKS                    R8 K31 [""] ; [+4]
      195 LOADB                            R8 1
      196 LOADNIL                          R9
      197 RETURN                           R8 2
      198 GETIMPORT                        R8 K33 [pcall]
      200 NEWCLOSURE                       R9 P0
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          VAL R7
      203 CALL                             R8 1 2
      204 JUMPIFNOT                        R8 ; [+103]
      205 FASTCALL1                        TYPEOF R9 ; [+3]
      206 MOVE                             R11 R9
      207 GETIMPORT                        R10 K4 [typeof]
      209 CALL                             R10 1 1
      210 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+97]
      212 LOADB                            R10 1
      213 MOVE                             R11 R9
      214 RETURN                           R10 2
      215 JUMP                             ; [+92]
      216 GETTABLEKS                       R8 R7 K29 ["kind"]
      218 JUMPIFNOTEQKS                    R8 K34 ["HttpStatusCode"] ; [+76]
      220 GETUPVAL                         R8 9
      221 LOADK                            R9 K35 ["rpc http error method=%* status=%*"]
      222 MOVE                             R11 R5
      223 GETTABLEKS                       R13 R7 K36 ["statusCode"]
      225 FASTCALL1                        TOSTRING R13 ; [+2]
      226 GETIMPORT                        R12 K38 [tostring]
      228 CALL                             R12 1 1
      229 NAMECALL                         R9 R9 K20 ["format"]
      231 CALL                             R9 3 1
      232 CALL                             R8 1 0
      233 LOADK                            R8 K39 ["body=%*"]
      234 GETTABLEKS                       R11 R7 K24 ["body"]
      236 FASTCALL1                        TOSTRING R11 ; [+2]
      237 GETIMPORT                        R10 K38 [tostring]
      239 CALL                             R10 1 1
      240 NAMECALL                         R8 R8 K20 ["format"]
      242 CALL                             R8 2 1
      243 GETUPVAL                         R9 6
      244 MOVE                             R10 R8
      245 CALL                             R9 1 1
      246 GETUPVAL                         R10 7
      247 GETTABLEKS                       R10 R10 K21 ["FFlagDebugLogAssistantUI"]
      249 JUMPIFNOT                        R10 ; [+5]
      250 GETIMPORT                        R10 K23 [warn]
      252 MOVE                             R11 R9
      253 CALL                             R10 1 0
      254 JUMP                             ; [+11]
      255 GETIMPORT                        R10 K33 [pcall]
      257 GETUPVAL                         R11 10
      258 GETTABLEKS                       R11 R11 K40 ["get"]
      260 CALL                             R10 1 2
      261 JUMPIFNOT                        R10 ; [+4]
      262 GETTABLEKS                       R12 R11 K41 ["printToStudioLogAsync"]
      264 MOVE                             R13 R9
      265 CALL                             R12 1 0
      266 GETTABLEKS                       R9 R7 K24 ["body"]
      268 FASTCALL1                        TYPEOF R9 ; [+2]
      269 GETIMPORT                        R8 K4 [typeof]
      271 CALL                             R8 1 1
      272 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+35]
      274 GETIMPORT                        R8 K33 [pcall]
      276 GETUPVAL                         R9 8
      277 GETTABLEKS                       R9 R9 K42 ["JSONDecode"]
      279 GETUPVAL                         R10 8
      280 GETTABLEKS                       R11 R7 K24 ["body"]
      282 CALL                             R8 3 2
      283 JUMPIFNOT                        R8 ; [+24]
      284 FASTCALL1                        TYPEOF R9 ; [+3]
      285 MOVE                             R11 R9
      286 GETIMPORT                        R10 K4 [typeof]
      288 CALL                             R10 1 1
      289 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+18]
      291 LOADB                            R10 0
      292 MOVE                             R11 R9
      293 RETURN                           R10 2
      294 JUMP                             ; [+13]
      295 GETUPVAL                         R8 9
      296 LOADK                            R9 K43 ["rpc network error method=%* detail=%*"]
      297 MOVE                             R11 R5
      298 GETTABLEKS                       R13 R7 K44 ["networkError"]
      300 FASTCALL1                        TOSTRING R13 ; [+2]
      301 GETIMPORT                        R12 K38 [tostring]
      303 CALL                             R12 1 1
      304 NAMECALL                         R9 R9 K20 ["format"]
      306 CALL                             R9 3 1
      307 CALL                             R8 1 0
      308 LOADB                            R8 0
      309 LOADNIL                          R9
      310 RETURN                           R8 2

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["stallTimer"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K0 ["stallTimer"]
        6 GETIMPORT                        R2 K3 [task.cancel]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
       29 LOADK                            R2 K5 ["[remote-acp-agent] Missing session updates %*-%* for session %*; continuing from sequence %*. Some content may be missing. Restart Studio to reload the full conversation history."]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K2 ["nextSequence"]
       33 SUBK                             R5 R0 K6 [1]
       34 GETUPVAL                         R6 1
       35 MOVE                             R7 R0
       36 NAMECALL                         R2 R2 K7 ["format"]
       38 CALL                             R2 5 1
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 0
       41 SETTABLEKS                       R0 R1 K2 ["nextSequence"]
       43 GETUPVAL                         R1 2
       44 GETUPVAL                         R2 0
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 3
       47 GETUPVAL                         R2 1
       48 GETUPVAL                         R3 0
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+24]
        4 DUPTABLE                         R4 K5 [{[1] = 1, ["pending"], ["delivering"] = False}]
        5 NEWTABLE                         R5 0 0
        7 SETTABLEKS                       R5 R4 K2 ["pending"]
        9 MOVE                             R3 R4
       10 GETUPVAL                         R4 0
       11 SETTABLE                         R3 R4 R0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R4 ; [+11]
       16 GETIMPORT                        R4 K8 [print]
       18 LOADK                            R5 K9 ["[Remote ACP] sequencer init buffer sessionId=%* nextSequence=%* firstReceived=%*"]
       19 MOVE                             R7 R0
       20 GETTABLEKS                       R8 R3 K0 ["nextSequence"]
       22 MOVE                             R9 R1
       23 NAMECALL                         R5 R5 K10 ["format"]
       25 CALL                             R5 4 1
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R4 R3 K0 ["nextSequence"]
       29 JUMPIFNOTLT                      R1 R4 ; [+2]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R5 R3 K2 ["pending"]
       34 GETTABLE                         R4 R5 R1
       35 JUMPIFEQKNIL                     R4 ; [+2]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R3 K2 ["pending"]
       40 SETTABLE                         R2 R4 R1
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R3
       43 CALL                             R4 1 0
       44 GETIMPORT                        R4 K12 [next]
       46 GETTABLEKS                       R5 R3 K2 ["pending"]
       48 CALL                             R4 1 1
       49 JUMPIFNOTEQKNIL                  R4 ; [+13]
       51 MOVE                             R4 R3
       52 GETTABLEKS                       R5 R4 K13 ["stallTimer"]
       54 JUMPIFNOT                        R5 ; [+32]
       55 LOADNIL                          R6
       56 SETTABLEKS                       R6 R4 K13 ["stallTimer"]
       58 GETIMPORT                        R6 K16 [task.cancel]
       60 MOVE                             R7 R5
       61 CALL                             R6 1 0
       62 RETURN                           R0 0
       63 MOVE                             R4 R3
       64 GETTABLEKS                       R5 R4 K13 ["stallTimer"]
       66 JUMPIFNOTEQKNIL                  R5 ; [+20]
       68 GETIMPORT                        R5 K12 [next]
       70 GETTABLEKS                       R6 R4 K2 ["pending"]
       72 CALL                             R5 1 1
       73 JUMPIFNOTEQKNIL                  R5 ; [+2]
       75 RETURN                           R0 0
       76 GETIMPORT                        R5 K18 [task.delay]
       78 LOADN                            R6 5
       79 NEWCLOSURE                       R7 P0
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U3
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K13 ["stallTimer"]
       87 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+24]
        4 GETUPVAL                         R3 0
        5 DUPTABLE                         R4 K4 [{[1], ["pending"], ["delivering"] = False}]
        6 SETTABLEKS                       R1 R4 K0 ["nextSequence"]
        8 NEWTABLE                         R5 0 0
       10 SETTABLEKS                       R5 R4 K1 ["pending"]
       12 SETTABLE                         R4 R3 R0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R3 ; [+9]
       17 GETIMPORT                        R3 K7 [print]
       19 LOADK                            R4 K8 ["[Remote ACP] sequencer initialize sessionId=%* nextSequence=%*"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R4 K9 ["format"]
       24 CALL                             R4 3 1
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R2 K0 ["nextSequence"]
       29 JUMPIFNOTLE                      R1 R3 ; [+2]
       31 RETURN                           R0 0
       32 SETTABLEKS                       R1 R2 K0 ["nextSequence"]
       34 GETTABLEKS                       R3 R2 K1 ["pending"]
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 JUMPIFNOTLT                      R6 R1 ; [+5]
       41 GETTABLEKS                       R8 R2 K1 ["pending"]
       43 LOADNIL                          R9
       44 SETTABLE                         R9 R8 R6
       45 FORGLOOP                         R3 1 ; [-7]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       50 JUMPIFNOT                        R3 ; [+9]
       51 GETIMPORT                        R3 K7 [print]
       53 LOADK                            R4 K10 ["[Remote ACP] sequencer advance sessionId=%* nextSequence=%*"]
       54 MOVE                             R6 R0
       55 MOVE                             R7 R1
       56 NAMECALL                         R4 R4 K9 ["format"]
       58 CALL                             R4 3 1
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 2
       61 MOVE                             R4 R2
       62 CALL                             R3 1 0
       63 GETIMPORT                        R3 K12 [next]
       65 GETTABLEKS                       R4 R2 K1 ["pending"]
       67 CALL                             R3 1 1
       68 JUMPIFNOTEQKNIL                  R3 ; [+12]
       70 GETTABLEKS                       R3 R2 K13 ["stallTimer"]
       72 JUMPIFNOT                        R3 ; [+31]
       73 LOADNIL                          R4
       74 SETTABLEKS                       R4 R2 K13 ["stallTimer"]
       76 GETIMPORT                        R4 K16 [task.cancel]
       78 MOVE                             R5 R3
       79 CALL                             R4 1 0
       80 RETURN                           R0 0
       81 GETTABLEKS                       R3 R2 K13 ["stallTimer"]
       83 JUMPIFNOTEQKNIL                  R3 ; [+20]
       85 GETIMPORT                        R3 K12 [next]
       87 GETTABLEKS                       R4 R2 K1 ["pending"]
       89 CALL                             R3 1 1
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 RETURN                           R0 0
       93 GETIMPORT                        R3 K18 [task.delay]
       95 LOADN                            R4 5
       96 NEWCLOSURE                       R5 P0
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U3
      101 CALL                             R3 2 1
      102 SETTABLEKS                       R3 R2 K13 ["stallTimer"]
      104 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 DUPCLOSURE                       R2 K0 [PROTO_19]
        3 DUPCLOSURE                       R3 K1 [PROTO_20]
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 MOVE                             R2 R1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["detail"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["message"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_31:
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
       66 JUMPIFNOT                        R7 ; [+12]
       67 GETIMPORT                        R7 K16 [print]
       69 LOADK                            R8 K17 ["[Remote ACP] received notification %*"]
       70 GETUPVAL                         R10 0
       71 MOVE                             R12 R2
       72 NAMECALL                         R10 R10 K18 ["JSONEncode"]
       74 CALL                             R10 2 1
       75 NAMECALL                         R8 R8 K19 ["format"]
       77 CALL                             R8 2 1
       78 CALL                             R7 1 0
       79 FASTCALL1                        TYPEOF R5 ; [+3]
       80 MOVE                             R8 R5
       81 GETIMPORT                        R7 K3 [typeof]
       83 CALL                             R7 1 1
       84 JUMPIFNOTEQKS                    R7 K20 ["string"] ; [+16]
       86 FASTCALL1                        TYPEOF R6 ; [+3]
       87 MOVE                             R8 R6
       88 GETIMPORT                        R7 K3 [typeof]
       90 CALL                             R7 1 1
       91 JUMPIFNOTEQKS                    R7 K21 ["number"] ; [+9]
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K22 ["push"]
       96 MOVE                             R8 R5
       97 MOVE                             R9 R6
       98 MOVE                             R10 R4
       99 CALL                             R7 3 0
      100 RETURN                           R0 0
      101 GETUPVAL                         R7 3
      102 MOVE                             R8 R4
      103 CALL                             R7 1 0
      104 RETURN                           R0 0

PROTO_32:
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
       22 RETURN                           R0 0

PROTO_33:
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
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K4 ["get"]
       17 CALL                             R2 0 1
       18 GETTABLEKS                       R2 R2 K5 ["listen"]
       20 LOADK                            R3 K6 ["AssistantPlugin"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          REF R2
       28 CLOSEUPVALS                      R2
       29 RETURN                           R3 1

PROTO_34:
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

PROTO_35:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 CALL                             R4 1 1
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R3
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U3
       11 DUPTABLE                         R6 K2 [{"postAcp", "subscribe"}]
       12 NEWCLOSURE                       R7 P2
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 SETTABLEKS                       R7 R6 K0 ["postAcp"]
       20 SETTABLEKS                       R5 R6 K1 ["subscribe"]
       22 CLOSEUPVALS                      R3
       23 RETURN                           R6 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        5 MOVE                             R0 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 LOADK                            R1 K2 ["%*/creator-agents-service/v1"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["get"]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R3 R3 K4 ["apisUrl"]
       15 LOADK                            R5 K5 ["/+$"]
       16 LOADK                            R6 K1 [""]
       17 NAMECALL                         R3 R3 K6 ["gsub"]
       19 CALL                             R3 3 1
       20 NAMECALL                         R1 R1 K7 ["format"]
       22 CALL                             R1 2 1
       23 OR                               R3 R0 R1
       24 LOADK                            R4 K8 ["%*/acp"]
       25 LOADK                            R8 K5 ["/+$"]
       26 LOADK                            R9 K1 [""]
       27 NAMECALL                         R6 R3 K6 ["gsub"]
       29 CALL                             R6 3 1
       30 NAMECALL                         R4 R4 K7 ["format"]
       32 CALL                             R4 2 1
       33 MOVE                             R2 R4
       34 JUMPIFNOT                        R0 ; [+13]
       35 GETUPVAL                         R4 2
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K3 ["get"]
       39 CALL                             R5 0 1
       40 GETTABLEKS                       R5 R5 K9 ["getUserId"]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R3 4
       49 GETTABLEKS                       R3 R3 K10 ["Acp"]
       51 GETTABLEKS                       R3 R3 K11 ["postAcpAsync"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K12 ["FFlagDebugLogAssistantUI"]
       56 JUMPIFNOT                        R4 ; [+16]
       57 GETIMPORT                        R4 K14 [print]
       59 LOADK                            R5 K15 ["[Remote ACP] create deps endpoint=%* localOverride=%*"]
       60 MOVE                             R7 R2
       61 JUMPIFNOTEQKNIL                  R0 ; [+2]
       63 LOADB                            R9 0 +1
       64 LOADB                            R9 1
       65 FASTCALL1                        TOSTRING R9 ; [+2]
       66 GETIMPORT                        R8 K17 [tostring]
       68 CALL                             R8 1 1
       69 NAMECALL                         R5 R5 K7 ["format"]
       71 CALL                             R5 3 1
       72 CALL                             R4 1 0
       73 GETUPVAL                         R4 5
       74 MOVE                             R5 R3
       75 GETUPVAL                         R6 6
       76 GETTABLEKS                       R6 R6 K18 ["getGameMetadata"]
       78 MOVE                             R7 R2
       79 CALL                             R4 3 1
       80 RETURN                           R4 1

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
       63 GETTABLEKS                       R9 R2 K21 ["FlagUtils"]
       65 GETTABLEKS                       R9 R9 K22 ["getIsCreditMeteringEnabled"]
       67 GETTABLEKS                       R10 R3 K23 ["Http"]
       69 GETTABLEKS                       R10 R10 K24 ["Networking"]
       71 GETTABLEKS                       R10 R10 K25 ["new"]
       73 DUPTABLE                         R11 K29 [{["isInternal"] = True, ["loggingLevel"]}]
       74 GETTABLEKS                       R13 R7 K30 ["FFlagDebugLogAssistantUI"]
       76 JUMPIFNOT                        R13 ; [+2]
       77 LOADN                            R12 4
       78 JUMP                             ; [+1]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K28 ["loggingLevel"]
       82 CALL                             R10 1 1
       83 DUPCLOSURE                       R11 K31 [PROTO_0]
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R12 K32 [PROTO_1]
       86 DUPCLOSURE                       R13 K33 [PROTO_2]
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 DUPCLOSURE                       R14 K34 [PROTO_3]
       91 DUPCLOSURE                       R15 K35 [PROTO_4]
       92 DUPCLOSURE                       R16 K36 [PROTO_5]
       93 DUPCLOSURE                       R17 K37 [PROTO_11]
       94 CAPTURE                          VAL R1
       95 DUPCLOSURE                       R18 K38 [PROTO_12]
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R14
       98 DUPCLOSURE                       R19 K39 [PROTO_13]
       99 DUPCLOSURE                       R20 K40 [PROTO_14]
      100 DUPCLOSURE                       R21 K41 [PROTO_15]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R22 K42 [PROTO_16]
      104 DUPCLOSURE                       R23 K43 [PROTO_18]
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R21
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R22
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R8
      116 DUPCLOSURE                       R24 K44 [PROTO_27]
      117 CAPTURE                          VAL R7
      118 DUPCLOSURE                       R25 K45 [PROTO_35]
      119 CAPTURE                          VAL R24
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R23
      124 DUPCLOSURE                       R26 K46 [PROTO_36]
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R25
      131 CAPTURE                          VAL R6
      132 DUPTABLE                         R27 K52 [{"createRemoteACPAgentDeps", "createSessionUpdateSequencer", "makeAcpEndpoint", "makeLocalPostAcpAsync", "makeRemoteACPAgentDeps"}]
      133 SETTABLEKS                       R26 R27 K47 ["createRemoteACPAgentDeps"]
      135 SETTABLEKS                       R24 R27 K48 ["createSessionUpdateSequencer"]
      137 SETTABLEKS                       R16 R27 K49 ["makeAcpEndpoint"]
      139 SETTABLEKS                       R17 R27 K50 ["makeLocalPostAcpAsync"]
      141 SETTABLEKS                       R25 R27 K51 ["makeRemoteACPAgentDeps"]
      143 RETURN                           R27 1
