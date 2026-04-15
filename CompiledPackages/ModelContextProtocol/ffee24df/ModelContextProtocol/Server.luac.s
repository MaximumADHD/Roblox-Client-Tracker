PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_oninitialize"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_oninitializedNotification"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLEKS                       R3 R0 K1 ["version"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Server info (name, version) is required."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Options are required."]
       20 GETIMPORT                        R2 K4 [assert]
       22 CALL                             R2 2 0
       23 NEWTABLE                         R3 8 0
       25 GETUPVAL                         R4 0
       26 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       28 GETIMPORT                        R2 K8 [setmetatable]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K9 ["new"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K10 ["_protocol"]
       38 SETTABLEKS                       R0 R2 K11 ["_serverInfo"]
       40 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       42 SETTABLEKS                       R3 R2 K12 ["_serverCapabilities"]
       44 GETTABLEKS                       R3 R1 K13 ["instructions"]
       46 SETTABLEKS                       R3 R2 K14 ["_instructions"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K15 ["_clientCapabilities"]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K16 ["_clientVersion"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R3 R4 K9 ["new"]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K17 ["onServerInitialized"]
       60 GETTABLEKS                       R3 R2 K10 ["_protocol"]
       62 DUPTABLE                         R5 K19 [{"method"}]
       63 LOADK                            R6 K20 ["initialize"]
       64 SETTABLEKS                       R6 R5 K18 ["method"]
       66 NEWCLOSURE                       R6 P0
       67 CAPTURE                          VAL R2
       68 NAMECALL                         R3 R3 K21 ["setRequestHandler"]
       70 CALL                             R3 3 0
       71 GETTABLEKS                       R3 R2 K10 ["_protocol"]
       73 DUPTABLE                         R5 K19 [{"method"}]
       74 LOADK                            R6 K22 ["notifications/initialized"]
       75 SETTABLEKS                       R6 R5 K18 ["method"]
       77 NEWCLOSURE                       R6 P1
       78 CAPTURE                          VAL R2
       79 NAMECALL                         R3 R3 K23 ["setNotificationHandler"]
       81 CALL                             R3 3 0
       82 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["setRequestHandler"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["setNotificationHandler"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["connect"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 NAMECALL                         R1 R1 K1 ["close"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_clientCapabilities"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOTEQKS                    R1 K1 ["sampling/createMessage"] ; [+14]
        6 GETTABLEKS                       R3 R0 K0 ["_clientCapabilities"]
        8 GETTABLEKS                       R2 R3 K2 ["sampling"]
       10 JUMPIF                           R2 ; [+8]
       11 GETIMPORT                        R2 K4 [error]
       13 LOADK                            R4 K5 ["Client does not support sampling (required for "]
       14 MOVE                             R5 R1
       15 LOADK                            R6 K6 [")"]
       16 CONCAT                           R3 R4 R6
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R1 K7 ["roots/list"] ; [+13]
       21 GETTABLEKS                       R3 R0 K0 ["_clientCapabilities"]
       23 GETTABLEKS                       R2 R3 K8 ["roots"]
       25 JUMPIF                           R2 ; [+7]
       26 GETIMPORT                        R2 K4 [error]
       28 LOADK                            R4 K9 ["Client does not support listing roots (required for "]
       29 MOVE                             R5 R1
       30 LOADK                            R6 K6 [")"]
       31 CONCAT                           R3 R4 R6
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["notifications/message"] ; [+14]
        2 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
        4 GETTABLEKS                       R2 R3 K2 ["logging"]
        6 JUMPIF                           R2 ; [+8]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R4 K5 ["Server does not support logging (required for "]
       10 MOVE                             R5 R1
       11 LOADK                            R6 K6 [")"]
       12 CONCAT                           R3 R4 R6
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 JUMPIFEQKS                       R1 K7 ["notifications/resources/updated"] ; [+3]
       17 JUMPIFNOTEQKS                    R1 K8 ["notifications/resources/list_changed"] ; [+14]
       19 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       21 GETTABLEKS                       R2 R3 K9 ["resources"]
       23 JUMPIF                           R2 ; [+8]
       24 GETIMPORT                        R2 K4 [error]
       26 LOADK                            R4 K10 ["Server does not support notifying about resources (required for "]
       27 MOVE                             R5 R1
       28 LOADK                            R6 K6 [")"]
       29 CONCAT                           R3 R4 R6
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 JUMPIFNOTEQKS                    R1 K11 ["notifications/tools/list_changed"] ; [+14]
       34 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       36 GETTABLEKS                       R2 R3 K12 ["tools"]
       38 JUMPIF                           R2 ; [+8]
       39 GETIMPORT                        R2 K4 [error]
       41 LOADK                            R4 K13 ["Server does not support notifying of tool list changes (required for "]
       42 MOVE                             R5 R1
       43 LOADK                            R6 K6 [")"]
       44 CONCAT                           R3 R4 R6
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 JUMPIFNOTEQKS                    R1 K14 ["notifications/prompts/list_changed"] ; [+13]
       49 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       51 GETTABLEKS                       R2 R3 K15 ["prompts"]
       53 JUMPIF                           R2 ; [+7]
       54 GETIMPORT                        R2 K4 [error]
       56 LOADK                            R4 K16 ["Server does not support notifying of prompt list changes (required for "]
       57 MOVE                             R5 R1
       58 LOADK                            R6 K6 [")"]
       59 CONCAT                           R3 R4 R6
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKS                    R1 K0 ["logging/setLevel"] ; [+14]
        2 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
        4 GETTABLEKS                       R2 R3 K2 ["logging"]
        6 JUMPIF                           R2 ; [+8]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R4 K5 ["Server does not support logging (required for "]
       10 MOVE                             R5 R1
       11 LOADK                            R6 K6 [")"]
       12 CONCAT                           R3 R4 R6
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 JUMPIFEQKS                       R1 K7 ["prompts/get"] ; [+3]
       17 JUMPIFNOTEQKS                    R1 K8 ["prompts/list"] ; [+14]
       19 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       21 GETTABLEKS                       R2 R3 K9 ["prompts"]
       23 JUMPIF                           R2 ; [+8]
       24 GETIMPORT                        R2 K4 [error]
       26 LOADK                            R4 K10 ["Server does not support prompts (required for "]
       27 MOVE                             R5 R1
       28 LOADK                            R6 K6 [")"]
       29 CONCAT                           R3 R4 R6
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 JUMPIFEQKS                       R1 K11 ["resources/list"] ; [+5]
       34 JUMPIFEQKS                       R1 K12 ["resources/templates/list"] ; [+3]
       36 JUMPIFNOTEQKS                    R1 K13 ["resources/read"] ; [+14]
       38 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       40 GETTABLEKS                       R2 R3 K14 ["resources"]
       42 JUMPIF                           R2 ; [+8]
       43 GETIMPORT                        R2 K4 [error]
       45 LOADK                            R4 K15 ["Server does not support resources (required for "]
       46 MOVE                             R5 R1
       47 LOADK                            R6 K6 [")"]
       48 CONCAT                           R3 R4 R6
       49 CALL                             R2 1 0
       50 RETURN                           R0 0
       51 JUMPIFEQKS                       R1 K16 ["tools/call"] ; [+3]
       53 JUMPIFNOTEQKS                    R1 K17 ["tools/list"] ; [+13]
       55 GETTABLEKS                       R3 R0 K1 ["_serverCapabilities"]
       57 GETTABLEKS                       R2 R3 K18 ["tools"]
       59 JUMPIF                           R2 ; [+7]
       60 GETIMPORT                        R2 K4 [error]
       62 LOADK                            R4 K19 ["Server does not support tools (required for "]
       63 MOVE                             R5 R1
       64 LOADK                            R6 K6 [")"]
       65 CONCAT                           R3 R4 R6
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 NAMECALL                         R2 R2 K1 ["getTransport"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Cannot register capabilities after connecting to transport"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R3 R0 K5 ["_serverCapabilities"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K5 ["_serverCapabilities"]
       17 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R1 K0 ["params"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["Request params are required."]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R1 K0 ["params"]
       10 GETTABLEKS                       R3 R4 K4 ["protocolVersion"]
       12 FASTCALL1                        TYPE R3 ; [+3]
       13 MOVE                             R7 R3
       14 GETIMPORT                        R6 K6 [type]
       16 CALL                             R6 1 1
       17 JUMPIFEQKS                       R6 K7 ["string"] ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       23 LOADK                            R6 K8 ["Protocol version must be a string."]
       24 GETIMPORT                        R4 K3 [assert]
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R1 K0 ["params"]
       29 GETTABLEKS                       R4 R5 K9 ["capabilities"]
       31 GETTABLEKS                       R6 R1 K0 ["params"]
       33 GETTABLEKS                       R5 R6 K10 ["clientInfo"]
       35 LOADNIL                          R6
       36 GETIMPORT                        R7 K12 [ipairs]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R8 R10 K13 ["SUPPORTED_PROTOCOL_VERSIONS"]
       41 CALL                             R7 1 3
       42 FORGPREP_INEXT                   R7
       43 JUMPIFNOTEQ                      R3 R11 ; [+3]
       45 MOVE                             R6 R11
       46 JUMP                             ; [+2]
       47 FORGLOOP                         R7 2 [inext] ; [-5]
       49 JUMPIF                           R6 ; [+15]
       50 GETIMPORT                        R7 K15 [error]
       52 GETIMPORT                        R8 K17 [string.format]
       54 LOADK                            R9 K18 ["Unsupported protocol version '%s'. Server supports: %s"]
       55 ORK                              R10 R3 K19 ["(not specified)"]
       56 GETIMPORT                        R11 K22 [table.concat]
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R12 R13 K13 ["SUPPORTED_PROTOCOL_VERSIONS"]
       61 LOADK                            R13 K23 [", "]
       62 CALL                             R11 2 -1
       63 CALL                             R8 -1 -1
       64 CALL                             R7 -1 0
       65 SETTABLEKS                       R4 R0 K24 ["_clientCapabilities"]
       67 SETTABLEKS                       R5 R0 K25 ["_clientVersion"]
       69 DUPTABLE                         R7 K28 [{"protocolVersion", "serverInfo", "capabilities", "instructions"}]
       70 SETTABLEKS                       R6 R7 K4 ["protocolVersion"]
       72 GETTABLEKS                       R8 R0 K29 ["_serverInfo"]
       74 SETTABLEKS                       R8 R7 K26 ["serverInfo"]
       76 GETTABLEKS                       R8 R0 K30 ["_serverCapabilities"]
       78 SETTABLEKS                       R8 R7 K9 ["capabilities"]
       80 GETTABLEKS                       R8 R0 K31 ["_instructions"]
       82 SETTABLEKS                       R8 R7 K27 ["instructions"]
       84 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["onServerInitialized"]
        2 DUPTABLE                         R4 K3 [{"clientInfo", "clientCapabilities"}]
        3 GETTABLEKS                       R5 R0 K4 ["_clientVersion"]
        5 SETTABLEKS                       R5 R4 K1 ["clientInfo"]
        7 GETTABLEKS                       R5 R0 K5 ["_clientCapabilities"]
        9 SETTABLEKS                       R5 R4 K2 ["clientCapabilities"]
       11 NAMECALL                         R2 R2 K6 ["Fire"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_clientCapabilities"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_clientVersion"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_serverCapabilities"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 DUPTABLE                         R4 K2 [{"method"}]
        3 LOADK                            R5 K3 ["ping"]
        4 SETTABLEKS                       R5 R4 K1 ["method"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K4 ["request"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 DUPTABLE                         R5 K3 [{"method", "params"}]
        3 LOADK                            R6 K4 ["sampling/createMessage"]
        4 SETTABLEKS                       R6 R5 K1 ["method"]
        6 SETTABLEKS                       R1 R5 K2 ["params"]
        8 MOVE                             R6 R2
        9 NAMECALL                         R3 R3 K5 ["request"]
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_protocol"]
        2 DUPTABLE                         R5 K3 [{"method", "params"}]
        3 LOADK                            R6 K4 ["roots/list"]
        4 SETTABLEKS                       R6 R5 K1 ["method"]
        6 SETTABLEKS                       R1 R5 K2 ["params"]
        8 MOVE                             R6 R2
        9 NAMECALL                         R3 R3 K5 ["request"]
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 DUPTABLE                         R4 K3 [{"method", "params"}]
        3 LOADK                            R5 K4 ["notifications/message"]
        4 SETTABLEKS                       R5 R4 K1 ["method"]
        6 SETTABLEKS                       R1 R4 K2 ["params"]
        8 NAMECALL                         R2 R2 K5 ["notification"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 DUPTABLE                         R4 K3 [{"method", "params"}]
        3 LOADK                            R5 K4 ["notifications/resources/updated"]
        4 SETTABLEKS                       R5 R4 K1 ["method"]
        6 SETTABLEKS                       R1 R4 K2 ["params"]
        8 NAMECALL                         R2 R2 K5 ["notification"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 DUPTABLE                         R3 K2 [{"method"}]
        3 LOADK                            R4 K3 ["notifications/resources/list_changed"]
        4 SETTABLEKS                       R4 R3 K1 ["method"]
        6 NAMECALL                         R1 R1 K4 ["notification"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 DUPTABLE                         R3 K2 [{"method"}]
        3 LOADK                            R4 K3 ["notifications/tools/list_changed"]
        4 SETTABLEKS                       R4 R3 K1 ["method"]
        6 NAMECALL                         R1 R1 K4 ["notification"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_protocol"]
        2 DUPTABLE                         R3 K2 [{"method"}]
        3 LOADK                            R4 K3 ["notifications/prompts/list_changed"]
        4 SETTABLEKS                       R4 R3 K1 ["method"]
        6 NAMECALL                         R1 R1 K4 ["notification"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Protocol"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["Signal"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Transport"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R6 R7 K12 ["mergeCapabilities"]
       35 CALL                             R5 1 1
       36 NEWTABLE                         R6 32 0
       38 SETTABLEKS                       R6 R6 K13 ["__index"]
       40 DUPCLOSURE                       R7 K14 [PROTO_2]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K15 ["new"]
       46 DUPCLOSURE                       R7 K16 [PROTO_3]
       47 SETTABLEKS                       R7 R6 K17 ["setRequestHandler"]
       49 DUPCLOSURE                       R7 K18 [PROTO_4]
       50 SETTABLEKS                       R7 R6 K19 ["setNotificationHandler"]
       52 DUPCLOSURE                       R7 K20 [PROTO_5]
       53 SETTABLEKS                       R7 R6 K21 ["connect"]
       55 DUPCLOSURE                       R7 K22 [PROTO_6]
       56 SETTABLEKS                       R7 R6 K23 ["close"]
       58 DUPCLOSURE                       R7 K24 [PROTO_7]
       59 SETTABLEKS                       R7 R6 K25 ["assertCapabilityForMethod"]
       61 DUPCLOSURE                       R7 K26 [PROTO_8]
       62 SETTABLEKS                       R7 R6 K27 ["assertNotificationCapability"]
       64 DUPCLOSURE                       R7 K28 [PROTO_9]
       65 SETTABLEKS                       R7 R6 K29 ["assertRequestHandlerCapability"]
       67 DUPCLOSURE                       R7 K30 [PROTO_10]
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R7 R6 K31 ["registerCapabilities"]
       71 DUPCLOSURE                       R7 K32 [PROTO_11]
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R7 R6 K33 ["_oninitialize"]
       75 DUPCLOSURE                       R7 K34 [PROTO_12]
       76 SETTABLEKS                       R7 R6 K35 ["_oninitializedNotification"]
       78 DUPCLOSURE                       R7 K36 [PROTO_13]
       79 SETTABLEKS                       R7 R6 K37 ["getClientCapabilities"]
       81 DUPCLOSURE                       R7 K38 [PROTO_14]
       82 SETTABLEKS                       R7 R6 K39 ["getClientVersion"]
       84 DUPCLOSURE                       R7 K40 [PROTO_15]
       85 SETTABLEKS                       R7 R6 K41 ["getCapabilities"]
       87 DUPCLOSURE                       R7 K42 [PROTO_16]
       88 SETTABLEKS                       R7 R6 K43 ["ping"]
       90 DUPCLOSURE                       R7 K44 [PROTO_17]
       91 SETTABLEKS                       R7 R6 K45 ["createMessage"]
       93 DUPCLOSURE                       R7 K46 [PROTO_18]
       94 SETTABLEKS                       R7 R6 K47 ["listRoots"]
       96 DUPCLOSURE                       R7 K48 [PROTO_19]
       97 SETTABLEKS                       R7 R6 K49 ["sendLoggingMessage"]
       99 DUPCLOSURE                       R7 K50 [PROTO_20]
      100 SETTABLEKS                       R7 R6 K51 ["sendResourceUpdated"]
      102 DUPCLOSURE                       R7 K52 [PROTO_21]
      103 SETTABLEKS                       R7 R6 K53 ["sendResourceListChanged"]
      105 DUPCLOSURE                       R7 K54 [PROTO_22]
      106 SETTABLEKS                       R7 R6 K55 ["sendToolListChanged"]
      108 DUPCLOSURE                       R7 K56 [PROTO_23]
      109 SETTABLEKS                       R7 R6 K57 ["sendPromptListChanged"]
      111 RETURN                           R6 1
