PROTO_0:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_clientInfo"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_clients"]
       14 DUPTABLE                         R2 K5 [{"onlyUseStaticServers"}]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K4 ["onlyUseStaticServers"]
       18 SETTABLEKS                       R2 R1 K6 ["_requestFilters"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K7 ["_connectedServerNameToClient"]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K8 ["_toolNameAliases"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K9 ["_staticToolsToClient"]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K10 ["new"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R1 K11 ["onClientAdded"]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K10 ["new"]
       41 CALL                             R2 0 1
       42 SETTABLEKS                       R2 R1 K12 ["onClientConnected"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K10 ["new"]
       47 CALL                             R2 0 1
       48 SETTABLEKS                       R2 R1 K13 ["onClientClosed"]
       50 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_requestFilters"]
        2 GETTABLEKS                       R2 R2 K1 ["onlyUseStaticServers"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R1 K2 ["clientConfig"]
        9 GETTABLEKS                       R3 R3 K3 ["useStaticToolNames"]
       11 JUMPIFEQKB                       R3 TRUE ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_canClientBeUsedForRequest"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+12]
        5 GETIMPORT                        R2 K2 [error]
        7 LOADK                            R4 K3 ["Client %* is not allowed for request due to request filters"]
        8 GETTABLEKS                       R6 R1 K4 ["clientConfig"]
       10 GETTABLEKS                       R6 R6 K5 ["identifier"]
       12 NAMECALL                         R4 R4 K6 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_canClientBeUsedForRequest"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["values"]
        6 GETTABLEKS                       R3 R0 K2 ["_clients"]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_clients"]
        2 GETTABLEKS                       R4 R1 K1 ["identifier"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R4 K4 ["Client with identifier %* already exists"]
        9 GETTABLEKS                       R6 R1 K1 ["identifier"]
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["new"]
       19 GETTABLEKS                       R3 R0 K7 ["_clientInfo"]
       21 GETTABLEKS                       R4 R1 K8 ["clientOptions"]
       23 CALL                             R2 2 1
       24 DUPTABLE                         R3 K11 [{"client", "clientConfig"}]
       25 SETTABLEKS                       R2 R3 K9 ["client"]
       27 SETTABLEKS                       R1 R3 K10 ["clientConfig"]
       29 GETTABLEKS                       R4 R0 K0 ["_clients"]
       31 GETTABLEKS                       R5 R1 K1 ["identifier"]
       33 SETTABLE                         R3 R4 R5
       34 GETTABLEKS                       R4 R0 K12 ["onClientAdded"]
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K13 ["Fire"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["client"]
        2 NAMECALL                         R2 R2 K1 ["getServerInfo"]
        4 CALL                             R2 1 1
        5 FASTCALL2K                       ASSERT R2 K2 ; [+5]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K2 ["Server info not found after connect"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["getNewServerName"]
       15 GETTABLEKS                       R4 R2 K6 ["name"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R5 R0 K7 ["_connectedServerNameToClient"]
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETIMPORT                        R4 K9 [error]
       24 LOADK                            R6 K10 ["Server with name %* already connected"]
       25 MOVE                             R8 R3
       26 NAMECALL                         R6 R6 K11 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 CALL                             R4 1 0
       31 SETTABLEKS                       R3 R1 K12 ["connectedServerIdentifier"]
       33 GETTABLEKS                       R4 R0 K7 ["_connectedServerNameToClient"]
       35 SETTABLE                         R1 R4 R3
       36 GETTABLEKS                       R4 R1 K0 ["client"]
       38 NAMECALL                         R4 R4 K13 ["getServerCapabilities"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R0 K14 ["onClientConnected"]
       43 DUPTABLE                         R7 K18 [{"identifier", "connectedServerIdentifier", "serverInfo", "serverCapabilities"}]
       44 GETTABLEKS                       R8 R1 K19 ["clientConfig"]
       46 GETTABLEKS                       R8 R8 K15 ["identifier"]
       48 SETTABLEKS                       R8 R7 K15 ["identifier"]
       50 SETTABLEKS                       R3 R7 K12 ["connectedServerIdentifier"]
       52 SETTABLEKS                       R2 R7 K16 ["serverInfo"]
       54 SETTABLEKS                       R4 R7 K17 ["serverCapabilities"]
       56 NAMECALL                         R5 R5 K20 ["Fire"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["_clients"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K1 ["clientConfig"]
       10 GETTABLEKS                       R7 R7 K2 ["transport"]
       12 GETTABLEKS                       R8 R6 K3 ["client"]
       14 MOVE                             R11 R7
       15 GETUPVAL                         R12 1
       16 NAMECALL                         R9 R8 K4 ["connect"]
       18 CALL                             R9 3 1
       19 NAMECALL                         R9 R9 K5 ["await"]
       21 CALL                             R9 1 2
       22 JUMPIF                           R9 ; [+9]
       23 FASTCALL2K                       ASSERT R10 K6 ; [+5]
       25 MOVE                             R12 R10
       26 LOADK                            R13 K6 ["Connect failed without error reason"]
       27 GETIMPORT                        R11 K8 [assert]
       29 CALL                             R11 2 0
       30 SETTABLE                         R10 R1 R5
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R11 0
       33 MOVE                             R13 R6
       34 NAMECALL                         R11 R11 K9 ["_onNewClientConnected"]
       36 CALL                             R11 2 0
       37 FORGLOOP                         R2 2 ; [-30]
       39 MOVE                             R2 R0
       40 MOVE                             R3 R1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_onNewClientConnected"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getStoredClient"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R3 K1 ["clientConfig"]
        6 GETTABLEKS                       R4 R4 K2 ["transport"]
        8 GETTABLEKS                       R5 R3 K3 ["client"]
       10 MOVE                             R8 R4
       11 MOVE                             R9 R2
       12 NAMECALL                         R6 R5 K4 ["connect"]
       14 CALL                             R6 3 1
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 NAMECALL                         R6 R6 K5 ["andThen"]
       20 CALL                             R6 2 -1
       21 RETURN                           R6 -1

PROTO_11:
        0 GETTABLEKS                       R6 R0 K0 ["_staticToolsToClient"]
        2 GETTABLE                         R5 R6 R1
        3 LOADNIL                          R6
        4 JUMPIFNOT                        R5 ; [+2]
        5 MOVE                             R6 R1
        6 JUMP                             ; [+30]
        7 GETTABLEKS                       R8 R0 K1 ["_toolNameAliases"]
        9 GETTABLE                         R7 R8 R1
       10 JUMPIF                           R7 ; [+9]
       11 GETIMPORT                        R8 K3 [error]
       13 LOADK                            R10 K4 ["Tool name alias not found: %*"]
       14 MOVE                             R12 R1
       15 NAMECALL                         R10 R10 K5 ["format"]
       17 CALL                             R10 2 1
       18 MOVE                             R9 R10
       19 CALL                             R8 1 0
       20 GETTABLEKS                       R8 R7 K6 ["serverIdentifier"]
       22 GETTABLEKS                       R6 R7 K7 ["actualToolName"]
       24 GETTABLEKS                       R9 R0 K8 ["_connectedServerNameToClient"]
       26 GETTABLE                         R5 R9 R8
       27 JUMPIF                           R5 ; [+9]
       28 GETIMPORT                        R9 K3 [error]
       30 LOADK                            R11 K9 ["No client found for server: %*"]
       31 MOVE                             R13 R8
       32 NAMECALL                         R11 R11 K5 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 CALL                             R9 1 0
       37 MOVE                             R9 R5
       38 NAMECALL                         R7 R0 K10 ["_assertClientCanBeUsedForRequest"]
       40 CALL                             R7 2 0
       41 DUPTABLE                         R7 K14 [{"name", "arguments", "_meta"}]
       42 SETTABLEKS                       R6 R7 K11 ["name"]
       44 SETTABLEKS                       R2 R7 K12 ["arguments"]
       46 SETTABLEKS                       R4 R7 K13 ["_meta"]
       48 GETTABLEKS                       R8 R5 K15 ["client"]
       50 MOVE                             R10 R7
       51 MOVE                             R11 R3
       52 NAMECALL                         R8 R8 K16 ["callTool"]
       54 CALL                             R8 3 -1
       55 RETURN                           R8 -1

PROTO_12:
        0 MOVE                             R8 R1
        1 NAMECALL                         R6 R0 K0 ["_getStoredClient"]
        3 CALL                             R6 2 1
        4 MOVE                             R9 R6
        5 NAMECALL                         R7 R0 K1 ["_assertClientCanBeUsedForRequest"]
        7 CALL                             R7 2 0
        8 DUPTABLE                         R7 K5 [{"name", "arguments", "_meta"}]
        9 SETTABLEKS                       R2 R7 K2 ["name"]
       11 SETTABLEKS                       R3 R7 K3 ["arguments"]
       13 SETTABLEKS                       R5 R7 K4 ["_meta"]
       15 GETTABLEKS                       R8 R6 K6 ["client"]
       17 MOVE                             R10 R7
       18 MOVE                             R11 R4
       19 NAMECALL                         R8 R8 K7 ["callTool"]
       21 CALL                             R8 3 -1
       22 RETURN                           R8 -1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K0 ["_getClientsToRequest"]
        7 CALL                             R3 1 3
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K1 ["client"]
       11 GETTABLEKS                       R9 R7 K2 ["connectedServerIdentifier"]
       13 JUMPIFNOT                        R9 ; [+74]
       14 GETUPVAL                         R12 1
       15 GETUPVAL                         R13 2
       16 NAMECALL                         R10 R8 K3 ["listTools"]
       18 CALL                             R10 3 1
       19 NAMECALL                         R10 R10 K4 ["await"]
       21 CALL                             R10 1 2
       22 JUMPIFNOT                        R10 ; [+60]
       23 GETTABLEKS                       R12 R11 K5 ["tools"]
       25 JUMPIFNOT                        R12 ; [+62]
       26 MOVE                             R13 R12
       27 LOADNIL                          R14
       28 LOADNIL                          R15
       29 FORGPREP                         R13
       30 GETUPVAL                         R18 3
       31 CALL                             R18 0 1
       32 JUMPIFNOT                        R18 ; [+6]
       33 GETTABLEKS                       R20 R17 K6 ["name"]
       35 NAMECALL                         R18 R8 K7 ["isToolDisabled"]
       37 CALL                             R18 2 1
       38 JUMPIF                           R18 ; [+41]
       39 LOADNIL                          R18
       40 GETTABLEKS                       R19 R7 K8 ["clientConfig"]
       42 GETTABLEKS                       R19 R19 K9 ["useStaticToolNames"]
       44 JUMPIFNOT                        R19 ; [+8]
       45 MOVE                             R18 R17
       46 GETUPVAL                         R19 0
       47 GETTABLEKS                       R19 R19 K10 ["_staticToolsToClient"]
       49 GETTABLEKS                       R20 R17 K6 ["name"]
       51 SETTABLE                         R7 R19 R20
       52 JUMP                             ; [+20]
       53 GETUPVAL                         R19 4
       54 GETTABLEKS                       R19 R19 K11 ["updateToolNameAlias"]
       56 MOVE                             R20 R9
       57 MOVE                             R21 R17
       58 CALL                             R19 2 1
       59 MOVE                             R18 R19
       60 GETUPVAL                         R19 0
       61 GETTABLEKS                       R19 R19 K12 ["_toolNameAliases"]
       63 GETTABLEKS                       R20 R18 K6 ["name"]
       65 DUPTABLE                         R21 K15 [{"serverIdentifier", "actualToolName"}]
       66 SETTABLEKS                       R9 R21 K13 ["serverIdentifier"]
       68 GETTABLEKS                       R22 R17 K6 ["name"]
       70 SETTABLEKS                       R22 R21 K14 ["actualToolName"]
       72 SETTABLE                         R21 R19 R20
       73 FASTCALL2                        TABLE_INSERT R1 R18 ; [+5]
       75 MOVE                             R20 R1
       76 MOVE                             R21 R18
       77 GETIMPORT                        R19 K18 [table.insert]
       79 CALL                             R19 2 0
       80 FORGLOOP                         R13 2 ; [-51]
       82 JUMP                             ; [+5]
       83 GETTABLEKS                       R12 R7 K8 ["clientConfig"]
       85 GETTABLEKS                       R12 R12 K19 ["identifier"]
       87 SETTABLE                         R11 R2 R12
       88 FORGLOOP                         R3 2 ; [-80]
       90 DUPTABLE                         R3 K20 [{"tools"}]
       91 SETTABLEKS                       R1 R3 K5 ["tools"]
       93 MOVE                             R4 R0
       94 DUPTABLE                         R5 K23 [{"result", "failures"}]
       95 SETTABLEKS                       R3 R5 K21 ["result"]
       97 SETTABLEKS                       R2 R5 K22 ["failures"]
       99 CALL                             R4 1 0
      100 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_clients"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+9]
        4 GETIMPORT                        R3 K2 [error]
        6 LOADK                            R5 K3 ["Client %* not found"]
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K4 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R3 1 0
       13 RETURN                           R2 1

PROTO_16:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETTABLEKS                       R3 R0 K2 ["_getStoredClient"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 2
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R4 R3 K3 ["client"]
       10 RETURN                           R4 1
       11 LOADNIL                          R4
       12 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_staticToolsToClient"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K1 ["clientConfig"]
        8 GETTABLEKS                       R3 R3 K2 ["identifier"]
       10 RETURN                           R3 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["client"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETTABLEKS                       R2 R0 K1 ["_clients"]
        5 DUPCLOSURE                       R3 K2 [PROTO_18]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_20:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getStoredClient"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["connectedServerIdentifier"]
        6 JUMPIF                           R3 ; [+9]
        7 GETIMPORT                        R3 K3 [error]
        9 LOADK                            R5 K4 ["Client %* is not connected"]
       10 MOVE                             R7 R1
       11 NAMECALL                         R5 R5 K5 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R2 K1 ["connectedServerIdentifier"]
       18 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_clients"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K1 ["client"]
        8 NAMECALL                         R6 R6 K2 ["close"]
       10 CALL                             R6 1 1
       11 NAMECALL                         R6 R6 K3 ["await"]
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 GETUPVAL                         R1 0
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K0 ["_clients"]
       21 GETUPVAL                         R1 0
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K4 ["_connectedServerNameToClient"]
       26 GETUPVAL                         R1 0
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K5 ["_staticToolsToClient"]
       31 MOVE                             R1 R0
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_toolNameAliases"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["serverIdentifier"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+5]
        9 GETTABLEKS                       R7 R0 K0 ["_toolNameAliases"]
       11 LOADNIL                          R8
       12 SETTABLE                         R8 R7 R5
       13 FORGLOOP                         R2 2 ; [-9]
       15 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_toolNameAliases"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getStoredClient"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K1 ["_clients"]
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R3 R1
        8 GETTABLEKS                       R3 R0 K2 ["_staticToolsToClient"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R8 R7 K3 ["clientConfig"]
       15 GETTABLEKS                       R8 R8 K4 ["identifier"]
       17 JUMPIFNOTEQ                      R8 R1 ; [+5]
       19 GETTABLEKS                       R8 R0 K2 ["_staticToolsToClient"]
       21 LOADNIL                          R9
       22 SETTABLE                         R9 R8 R6
       23 FORGLOOP                         R3 2 ; [-11]
       25 GETTABLEKS                       R3 R2 K5 ["connectedServerIdentifier"]
       27 JUMPIFNOT                        R3 ; [+11]
       28 GETTABLEKS                       R5 R2 K5 ["connectedServerIdentifier"]
       30 NAMECALL                         R3 R0 K6 ["_clearToolNameAliases"]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R0 K7 ["_connectedServerNameToClient"]
       35 GETTABLEKS                       R4 R2 K5 ["connectedServerIdentifier"]
       37 LOADNIL                          R5
       38 SETTABLE                         R5 R3 R4
       39 GETTABLEKS                       R3 R0 K8 ["onClientClosed"]
       41 MOVE                             R5 R2
       42 NAMECALL                         R3 R3 K9 ["Fire"]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R2 K10 ["client"]
       47 NAMECALL                         R3 R3 K11 ["close"]
       49 CALL                             R3 1 -1
       50 RETURN                           R3 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 GETTABLEKS                       R3 R0 K1 ["_requestFilters"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R0 K1 ["_requestFilters"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Client"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Dash"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["MultiplexUtils"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Promise"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K7 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Signal"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Transport"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Types"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K15 ["Flags"]
       54 GETTABLEKS                       R9 R9 K16 ["FFlagMCPEnableToolDisabling"]
       56 CALL                             R8 1 1
       57 NEWTABLE                         R9 32 0
       59 SETTABLEKS                       R9 R9 K17 ["__index"]
       61 DUPCLOSURE                       R10 K18 [PROTO_0]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R10 R9 K19 ["new"]
       66 DUPCLOSURE                       R10 K20 [PROTO_1]
       67 SETTABLEKS                       R10 R9 K21 ["_canClientBeUsedForRequest"]
       69 DUPCLOSURE                       R10 K22 [PROTO_2]
       70 SETTABLEKS                       R10 R9 K23 ["_assertClientCanBeUsedForRequest"]
       72 DUPCLOSURE                       R10 K24 [PROTO_4]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R10 R9 K25 ["_getClientsToRequest"]
       76 DUPCLOSURE                       R10 K26 [PROTO_5]
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R10 R9 K27 ["addClient"]
       80 DUPCLOSURE                       R10 K28 [PROTO_6]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R10 R9 K29 ["_onNewClientConnected"]
       84 DUPCLOSURE                       R10 K30 [PROTO_8]
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R10 R9 K31 ["connectAll"]
       88 DUPCLOSURE                       R10 K32 [PROTO_10]
       89 SETTABLEKS                       R10 R9 K33 ["connectClient"]
       91 DUPCLOSURE                       R10 K34 [PROTO_11]
       92 SETTABLEKS                       R10 R9 K35 ["callTool"]
       94 DUPCLOSURE                       R10 K36 [PROTO_12]
       95 SETTABLEKS                       R10 R9 K37 ["callToolForClient"]
       97 DUPCLOSURE                       R10 K38 [PROTO_14]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R10 R9 K39 ["listTools"]
      103 DUPCLOSURE                       R10 K40 [PROTO_15]
      104 SETTABLEKS                       R10 R9 K41 ["_getStoredClient"]
      106 DUPCLOSURE                       R10 K42 [PROTO_16]
      107 SETTABLEKS                       R10 R9 K43 ["getClient"]
      109 DUPCLOSURE                       R10 K44 [PROTO_17]
      110 SETTABLEKS                       R10 R9 K45 ["getClientForStaticTool"]
      112 DUPCLOSURE                       R10 K46 [PROTO_19]
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R10 R9 K47 ["listClients"]
      116 DUPCLOSURE                       R10 K48 [PROTO_20]
      117 SETTABLEKS                       R10 R9 K49 ["getServerIdentifier"]
      119 DUPCLOSURE                       R10 K50 [PROTO_22]
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R10 R9 K51 ["close"]
      123 DUPCLOSURE                       R10 K52 [PROTO_23]
      124 SETTABLEKS                       R10 R9 K53 ["_clearToolNameAliases"]
      126 DUPCLOSURE                       R10 K54 [PROTO_24]
      127 SETTABLEKS                       R10 R9 K55 ["getToolInfoByAlias"]
      129 DUPCLOSURE                       R10 K56 [PROTO_25]
      130 SETTABLEKS                       R10 R9 K57 ["closeClient"]
      132 DUPCLOSURE                       R10 K58 [PROTO_26]
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R10 R9 K59 ["applyRequestFilters"]
      136 RETURN                           R9 1
