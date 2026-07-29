PROTO_0:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFatal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLEKS                       R3 R0 K1 ["version"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Client info (name, version) is required."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Options are required."]
       20 GETIMPORT                        R2 K4 [assert]
       22 CALL                             R2 2 0
       23 NEWTABLE                         R3 16 0
       25 GETUPVAL                         R4 0
       26 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       28 GETIMPORT                        R2 K8 [setmetatable]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K9 ["new"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K10 ["_protocol"]
       38 SETTABLEKS                       R0 R2 K11 ["_clientInfo"]
       40 GETTABLEKS                       R3 R1 K5 ["capabilities"]
       42 SETTABLEKS                       R3 R2 K12 ["_clientCapabilities"]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K13 ["_serverCapabilities"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K14 ["_serverInfo"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K15 ["_instructions"]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K9 ["new"]
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R4 R4 K16 ["Disconnected"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K17 ["_status"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K18 ["_disabledTools"]
       66 GETUPVAL                         R3 4
       67 GETTABLEKS                       R3 R3 K9 ["new"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K19 ["onToolDisabled"]
       72 GETUPVAL                         R3 4
       73 GETTABLEKS                       R3 R3 K9 ["new"]
       75 CALL                             R3 0 1
       76 SETTABLEKS                       R3 R2 K20 ["onToolEnabled"]
       78 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 NAMECALL                         R2 R2 K1 ["getTransport"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Cannot register capabilities after connecting to transport"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R3 R0 K5 ["_clientCapabilities"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K5 ["_clientCapabilities"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["is"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K1 ["_status"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["set"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K1 ["_status"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["UnexpectedError"]
       18 NAMECALL                         R2 R2 K2 ["set"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 RETURN                           R1 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K0 ["_setStatus"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["_protocol"]
       12 NAMECALL                         R1 R1 K2 ["close"]
       14 CALL                             R1 1 1
       15 DUPCLOSURE                       R3 K3 [PROTO_6]
       16 NAMECALL                         R1 R1 K4 ["catch"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K5 ["reject"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R3 R1 K0 ["catch"]
        6 CALL                             R3 2 -1
        7 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["_protocol"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["request"]
        6 CALL                             R5 3 1
        7 GETUPVAL                         R6 0
        8 NAMECALL                         R3 R0 K2 ["_updateStatusOnError"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["_protocol"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["notification"]
        6 CALL                             R5 3 1
        7 GETUPVAL                         R6 0
        8 NAMECALL                         R3 R0 K2 ["_updateStatusOnError"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_11:
        0 DUPTABLE                         R2 K3 [{[1] = "initialize", ["params"]}]
        1 DUPTABLE                         R3 K7 [{"protocolVersion", "capabilities", "clientInfo"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K8 ["LATEST_PROTOCOL_VERSION"]
        5 SETTABLEKS                       R4 R3 K4 ["protocolVersion"]
        7 GETTABLEKS                       R4 R0 K9 ["_clientCapabilities"]
        9 SETTABLEKS                       R4 R3 K5 ["capabilities"]
       11 GETTABLEKS                       R4 R0 K10 ["_clientInfo"]
       13 SETTABLEKS                       R4 R3 K6 ["clientInfo"]
       15 SETTABLEKS                       R3 R2 K2 ["params"]
       17 GETTABLEKS                       R3 R0 K11 ["_protocol"]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R1
       21 NAMECALL                         R3 R3 K12 ["request"]
       23 CALL                             R3 3 1
       24 NAMECALL                         R3 R3 K13 ["await"]
       26 CALL                             R3 1 2
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R4 1
       29 LOADB                            R5 0
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K14 ["SUPPORTED_PROTOCOL_VERSIONS"]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R11 R4 K4 ["protocolVersion"]
       38 JUMPIFNOTEQ                      R11 R10 ; [+3]
       40 LOADB                            R5 1
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R6 2 ; [-7]
       44 JUMPIF                           R5 ; [+4]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K15 ["UnsupportedProtocolVersion"]
       48 RETURN                           R6 1
       49 GETTABLEKS                       R6 R4 K5 ["capabilities"]
       51 SETTABLEKS                       R6 R0 K16 ["_serverCapabilities"]
       53 GETTABLEKS                       R6 R4 K17 ["serverInfo"]
       55 SETTABLEKS                       R6 R0 K18 ["_serverInfo"]
       57 GETTABLEKS                       R6 R4 K19 ["instructions"]
       59 SETTABLEKS                       R6 R0 K20 ["_instructions"]
       61 LOADNIL                          R6
       62 RETURN                           R6 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_initializeAsync"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["reject"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["_protocol"]
       15 DUPTABLE                         R3 K5 [{["method"] = "notifications/initialized"}]
       16 NAMECALL                         R1 R1 K6 ["notification"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Connected"]
        4 NAMECALL                         R0 R0 K1 ["_setStatus"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["connect"]
        3 GETTABLEKS                       R4 R0 K1 ["_protocol"]
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R3 R3 K2 ["andThen"]
       13 CALL                             R3 2 1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R3 R3 K2 ["andThen"]
       19 CALL                             R3 2 1
       20 MOVE                             R6 R3
       21 GETUPVAL                         R7 3
       22 NAMECALL                         R4 R0 K3 ["_updateStatusOnError"]
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_serverCapabilities"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_serverInfo"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_instructions"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_serverCapabilities"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R4 R0 K0 ["_serverCapabilities"]
        5 GETTABLE                         R3 R4 R1
        6 JUMPIF                           R3 ; [+9]
        7 GETIMPORT                        R3 K2 [error]
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["Server does not support %s (required for %s)"]
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 CALL                             R4 3 -1
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_serverCapabilities"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOTEQKS                    R1 K1 ["logging/setLevel"] ; [+7]
        6 LOADK                            R5 K2 ["logging"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R0 K3 ["assertCapability"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0
       12 JUMPIFEQKS                       R1 K4 ["prompts/get"] ; [+3]
       14 JUMPIFNOTEQKS                    R1 K5 ["prompts/list"] ; [+7]
       16 LOADK                            R5 K6 ["prompts"]
       17 MOVE                             R6 R1
       18 NAMECALL                         R3 R0 K3 ["assertCapability"]
       20 CALL                             R3 3 0
       21 RETURN                           R0 0
       22 JUMPIFEQKS                       R1 K7 ["resources/list"] ; [+9]
       24 JUMPIFEQKS                       R1 K8 ["resources/templates/list"] ; [+7]
       26 JUMPIFEQKS                       R1 K9 ["resources/read"] ; [+5]
       28 JUMPIFEQKS                       R1 K10 ["resources/subscribe"] ; [+3]
       30 JUMPIFNOTEQKS                    R1 K11 ["resources/unsubscribe"] ; [+24]
       32 LOADK                            R5 K12 ["resources"]
       33 MOVE                             R6 R1
       34 NAMECALL                         R3 R0 K3 ["assertCapability"]
       36 CALL                             R3 3 0
       37 JUMPIFNOTEQKS                    R1 K10 ["resources/subscribe"] ; [+34]
       39 GETTABLEKS                       R3 R2 K12 ["resources"]
       41 JUMPIFNOT                        R3 ; [+5]
       42 GETTABLEKS                       R3 R2 K12 ["resources"]
       44 GETTABLEKS                       R3 R3 K13 ["subscribe"]
       46 JUMPIF                           R3 ; [+25]
       47 GETIMPORT                        R3 K15 [error]
       49 LOADK                            R5 K16 ["Server does not support resource subscriptions (required for "]
       50 MOVE                             R6 R1
       51 LOADK                            R7 K17 [")"]
       52 CONCAT                           R4 R5 R7
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 JUMPIFEQKS                       R1 K18 ["tools/call"] ; [+3]
       57 JUMPIFNOTEQKS                    R1 K19 ["tools/list"] ; [+7]
       59 LOADK                            R5 K20 ["tools"]
       60 MOVE                             R6 R1
       61 NAMECALL                         R3 R0 K3 ["assertCapability"]
       63 CALL                             R3 3 0
       64 RETURN                           R0 0
       65 JUMPIFNOTEQKS                    R1 K21 ["completion/complete"] ; [+6]
       67 LOADK                            R5 K22 ["completions"]
       68 MOVE                             R6 R1
       69 NAMECALL                         R3 R0 K3 ["assertCapability"]
       71 CALL                             R3 3 0
       72 RETURN                           R0 0

PROTO_20:
        0 JUMPIFNOTEQKS                    R1 K0 ["notifications/roots/list_changed"] ; [+20]
        2 GETTABLEKS                       R2 R0 K1 ["_clientCapabilities"]
        4 GETTABLEKS                       R2 R2 K2 ["roots"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETTABLEKS                       R2 R0 K1 ["_clientCapabilities"]
        9 GETTABLEKS                       R2 R2 K2 ["roots"]
       11 GETTABLEKS                       R2 R2 K3 ["listChanged"]
       13 JUMPIF                           R2 ; [+7]
       14 GETIMPORT                        R2 K5 [error]
       16 LOADK                            R4 K6 ["Client does not support roots list changed notifications (required for "]
       17 MOVE                             R5 R1
       18 LOADK                            R6 K7 [")"]
       19 CONCAT                           R3 R4 R6
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_clientCapabilities"]
        2 JUMPIFNOTEQKS                    R1 K1 ["sampling/createMessage"] ; [+12]
        4 GETTABLEKS                       R3 R2 K2 ["sampling"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R5 K5 ["Client does not support sampling (required for "]
       10 MOVE                             R6 R1
       11 LOADK                            R7 K6 [")"]
       12 CONCAT                           R4 R5 R7
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 JUMPIFNOTEQKS                    R1 K7 ["roots/list"] ; [+11]
       17 GETTABLEKS                       R3 R2 K8 ["roots"]
       19 JUMPIF                           R3 ; [+7]
       20 GETIMPORT                        R3 K4 [error]
       22 LOADK                            R5 K9 ["Client does not support listing roots (required for "]
       23 MOVE                             R6 R1
       24 LOADK                            R7 K6 [")"]
       25 CONCAT                           R4 R5 R7
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R4 K2 [{[1] = "ping"}]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K3 ["doRequest"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_23:
        0 DUPTABLE                         R5 K3 [{[1] = "completion/complete", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_24:
        0 DUPTABLE                         R5 K3 [{[1] = "logging/setLevel", ["params"]}]
        1 DUPTABLE                         R6 K5 [{"level"}]
        2 SETTABLEKS                       R1 R6 K4 ["level"]
        4 SETTABLEKS                       R6 R5 K2 ["params"]
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R0 K6 ["doRequest"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_25:
        0 DUPTABLE                         R5 K3 [{[1] = "prompts/get", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_26:
        0 DUPTABLE                         R5 K3 [{[1] = "prompts/list", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_27:
        0 DUPTABLE                         R5 K3 [{[1] = "resources/list", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_28:
        0 DUPTABLE                         R5 K3 [{[1] = "resources/templates/list", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_29:
        0 DUPTABLE                         R5 K3 [{[1] = "resources/read", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_30:
        0 DUPTABLE                         R5 K3 [{[1] = "resources/subscribe", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_31:
        0 DUPTABLE                         R5 K3 [{[1] = "resources/unsubscribe", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+19]
        3 MOVE                             R3 R1
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLEKS                       R3 R1 K0 ["name"]
        7 JUMPIFNOT                        R3 ; [+14]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K1 ["isToolDisabled"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+9]
       13 GETIMPORT                        R4 K3 [error]
       15 LOADK                            R6 K4 ["Tool '%*' is disabled"]
       16 MOVE                             R8 R3
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 CALL                             R4 1 0
       22 DUPTABLE                         R5 K9 [{["method"] = "tools/call", ["params"]}]
       23 SETTABLEKS                       R1 R5 K8 ["params"]
       25 MOVE                             R6 R2
       26 NAMECALL                         R3 R0 K10 ["doRequest"]
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_33:
        0 DUPTABLE                         R5 K3 [{[1] = "tools/list", ["params"]}]
        1 SETTABLEKS                       R1 R5 K2 ["params"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K4 ["doRequest"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_34:
        0 DUPTABLE                         R3 K2 [{[1] = "notifications/roots/list_changed"}]
        1 NAMECALL                         R1 R0 K3 ["doNotification"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K0 ["_disabledTools"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIF                           R2 ; [+10]
        8 GETTABLEKS                       R2 R0 K0 ["_disabledTools"]
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R2 R1
       12 GETTABLEKS                       R2 R0 K1 ["onToolDisabled"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["Fire"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K0 ["_disabledTools"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R2 R0 K0 ["_disabledTools"]
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R1
       12 GETTABLEKS                       R2 R0 K1 ["onToolEnabled"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["Fire"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETTABLEKS                       R4 R0 K0 ["_disabledTools"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K0 ["_disabledTools"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R5
       17 GETIMPORT                        R7 K3 [table.insert]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-8]
       22 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["_disabledTools"]
        7 GETTABLEKS                       R1 R0 K1 ["_protocol"]
        9 NAMECALL                         R1 R1 K2 ["close"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["ClientConnectionStatus"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["Observable"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Protocol"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K9 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["Signal"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K13 ["Transport"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K14 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K7 ["Util"]
       52 GETTABLEKS                       R9 R9 K15 ["mergeCapabilities"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K16 ["Flags"]
       59 GETTABLEKS                       R10 R10 K17 ["FFlagMCPEnableToolDisabling"]
       61 CALL                             R9 1 1
       62 NEWTABLE                         R10 64 0
       64 SETTABLEKS                       R10 R10 K18 ["__index"]
       66 DUPCLOSURE                       R11 K19 [PROTO_0]
       67 DUPCLOSURE                       R12 K20 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 DUPCLOSURE                       R13 K21 [PROTO_2]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R13 R10 K22 ["new"]
       77 DUPCLOSURE                       R13 K23 [PROTO_3]
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R13 R10 K24 ["registerCapabilities"]
       81 DUPCLOSURE                       R13 K25 [PROTO_4]
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R13 R10 K26 ["_setStatus"]
       85 DUPCLOSURE                       R13 K27 [PROTO_5]
       86 SETTABLEKS                       R13 R10 K28 ["getStatus"]
       88 DUPCLOSURE                       R13 K29 [PROTO_8]
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R13 R10 K30 ["_updateStatusOnError"]
       92 DUPCLOSURE                       R13 K31 [PROTO_9]
       93 CAPTURE                          VAL R12
       94 SETTABLEKS                       R13 R10 K32 ["doRequest"]
       96 DUPCLOSURE                       R13 K33 [PROTO_10]
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R13 R10 K34 ["doNotification"]
      100 DUPCLOSURE                       R13 K35 [PROTO_11]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R13 R10 K36 ["_initializeAsync"]
      105 DUPCLOSURE                       R13 K37 [PROTO_14]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R13 R10 K38 ["connect"]
      112 DUPCLOSURE                       R13 K39 [PROTO_15]
      113 SETTABLEKS                       R13 R10 K40 ["getServerCapabilities"]
      115 DUPCLOSURE                       R13 K41 [PROTO_16]
      116 SETTABLEKS                       R13 R10 K42 ["getServerInfo"]
      118 DUPCLOSURE                       R13 K43 [PROTO_17]
      119 SETTABLEKS                       R13 R10 K44 ["getInstructions"]
      121 DUPCLOSURE                       R13 K45 [PROTO_18]
      122 SETTABLEKS                       R13 R10 K46 ["assertCapability"]
      124 DUPCLOSURE                       R13 K47 [PROTO_19]
      125 SETTABLEKS                       R13 R10 K48 ["assertCapabilityForMethod"]
      127 DUPCLOSURE                       R13 K49 [PROTO_20]
      128 SETTABLEKS                       R13 R10 K50 ["assertNotificationCapability"]
      130 DUPCLOSURE                       R13 K51 [PROTO_21]
      131 SETTABLEKS                       R13 R10 K52 ["assertRequestHandlerCapability"]
      133 DUPCLOSURE                       R13 K53 [PROTO_22]
      134 SETTABLEKS                       R13 R10 K54 ["ping"]
      136 DUPCLOSURE                       R13 K55 [PROTO_23]
      137 SETTABLEKS                       R13 R10 K56 ["complete"]
      139 DUPCLOSURE                       R13 K57 [PROTO_24]
      140 SETTABLEKS                       R13 R10 K58 ["setLoggingLevel"]
      142 DUPCLOSURE                       R13 K59 [PROTO_25]
      143 SETTABLEKS                       R13 R10 K60 ["getPrompt"]
      145 DUPCLOSURE                       R13 K61 [PROTO_26]
      146 SETTABLEKS                       R13 R10 K62 ["listPrompts"]
      148 DUPCLOSURE                       R13 K63 [PROTO_27]
      149 SETTABLEKS                       R13 R10 K64 ["listResources"]
      151 DUPCLOSURE                       R13 K65 [PROTO_28]
      152 SETTABLEKS                       R13 R10 K66 ["listResourceTemplates"]
      154 DUPCLOSURE                       R13 K67 [PROTO_29]
      155 SETTABLEKS                       R13 R10 K68 ["readResource"]
      157 DUPCLOSURE                       R13 K69 [PROTO_30]
      158 SETTABLEKS                       R13 R10 K70 ["subscribeResource"]
      160 DUPCLOSURE                       R13 K71 [PROTO_31]
      161 SETTABLEKS                       R13 R10 K72 ["unsubscribeResource"]
      163 DUPCLOSURE                       R13 K73 [PROTO_32]
      164 CAPTURE                          VAL R9
      165 SETTABLEKS                       R13 R10 K74 ["callTool"]
      167 DUPCLOSURE                       R13 K75 [PROTO_33]
      168 SETTABLEKS                       R13 R10 K76 ["listTools"]
      170 DUPCLOSURE                       R13 K77 [PROTO_34]
      171 SETTABLEKS                       R13 R10 K78 ["sendRootsListChanged"]
      173 DUPCLOSURE                       R13 K79 [PROTO_35]
      174 CAPTURE                          VAL R9
      175 SETTABLEKS                       R13 R10 K80 ["disableTool"]
      177 DUPCLOSURE                       R13 K81 [PROTO_36]
      178 CAPTURE                          VAL R9
      179 SETTABLEKS                       R13 R10 K82 ["enableTool"]
      181 DUPCLOSURE                       R13 K83 [PROTO_37]
      182 CAPTURE                          VAL R9
      183 SETTABLEKS                       R13 R10 K84 ["isToolDisabled"]
      185 DUPCLOSURE                       R13 K85 [PROTO_38]
      186 CAPTURE                          VAL R9
      187 SETTABLEKS                       R13 R10 K86 ["getDisabledTools"]
      189 DUPCLOSURE                       R13 K87 [PROTO_39]
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R13 R10 K88 ["close"]
      193 RETURN                           R10 1
