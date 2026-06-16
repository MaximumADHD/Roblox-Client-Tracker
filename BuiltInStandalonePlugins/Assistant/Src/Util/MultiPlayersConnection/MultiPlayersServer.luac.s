PROTO_0:
        0 DUPTABLE                         R1 K6 [{"pluginConnectionService", "onClientConnected", "onClientDisconnected", "onClientMessage", "onCommand", "clients"}]
        1 SETTABLEKS                       R0 R1 K0 ["pluginConnectionService"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K7 ["new"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["onClientConnected"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K7 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K2 ["onClientDisconnected"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K7 ["new"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K3 ["onClientMessage"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["new"]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R1 K4 ["onCommand"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K5 ["clients"]
       31 GETUPVAL                         R4 1
       32 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K9 [setmetatable]
       37 CALL                             R2 2 1
       38 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      3
        1 NEWTABLE                         R3 0 0
        3 GETVARARGS                       R4 -1
        4 SETLIST                          R3 R4 -1 [1]
        6 JUMPIFNOTEQKS                    R2 K0 ["register"] ; [+30]
        8 GETTABLEN                        R4 R3 1
        9 GETTABLEKS                       R6 R0 K1 ["clients"]
       11 GETTABLE                         R5 R6 R1
       12 JUMPIF                           R5 ; [+12]
       13 GETTABLEKS                       R5 R0 K1 ["clients"]
       15 DUPTABLE                         R6 K5 [{"id", "client", "onMessageConnection"}]
       16 LOADNIL                          R7
       17 SETTABLEKS                       R7 R6 K2 ["id"]
       19 SETTABLEKS                       R1 R6 K3 ["client"]
       21 LOADNIL                          R7
       22 SETTABLEKS                       R7 R6 K4 ["onMessageConnection"]
       24 SETTABLE                         R6 R5 R1
       25 GETTABLEKS                       R6 R0 K1 ["clients"]
       27 GETTABLE                         R5 R6 R1
       28 SETTABLEKS                       R4 R5 K2 ["id"]
       30 GETTABLEKS                       R5 R0 K6 ["onClientConnected"]
       32 MOVE                             R7 R4
       33 NAMECALL                         R5 R5 K7 ["Fire"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R5 R0 K1 ["clients"]
       39 GETTABLE                         R4 R5 R1
       40 GETTABLEKS                       R4 R4 K2 ["id"]
       42 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       44 MOVE                             R6 R4
       45 LOADK                            R7 K8 ["Client must be registered before sending commands"]
       46 GETIMPORT                        R5 K10 [assert]
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R0 K11 ["onCommand"]
       51 MOVE                             R7 R4
       52 MOVE                             R8 R2
       53 GETVARARGS                       R9 -1
       54 NAMECALL                         R5 R5 K7 ["Fire"]
       56 CALL                             R5 -1 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CALL                             R3 1 2
        6 JUMPIFNOT                        R3 ; [+25]
        7 FASTCALL1                        TYPEOF R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K3 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K4 ["table"] ; [+19]
       14 GETTABLEKS                       R5 R4 K5 ["type"]
       16 JUMPIFNOTEQKS                    R5 K6 ["command"] ; [+15]
       18 GETTABLEKS                       R5 R4 K6 ["command"]
       20 GETTABLEKS                       R6 R4 K7 ["args"]
       22 MOVE                             R9 R1
       23 MOVE                             R10 R5
       24 FASTCALL1                        TABLE_UNPACK R6 ; [+3]
       25 MOVE                             R12 R6
       26 GETIMPORT                        R11 K9 [unpack]
       28 CALL                             R11 1 -1
       29 NAMECALL                         R7 R0 K10 ["_handleCommand"]
       31 CALL                             R7 -1 0
       32 GETTABLEKS                       R6 R0 K11 ["clients"]
       34 GETTABLE                         R5 R6 R1
       35 GETTABLEKS                       R5 R5 K12 ["id"]
       37 JUMPIFNOT                        R5 ; [+7]
       38 GETTABLEKS                       R6 R0 K13 ["onClientMessage"]
       40 MOVE                             R8 R5
       41 MOVE                             R9 R2
       42 NAMECALL                         R6 R6 K14 ["Fire"]
       44 CALL                             R6 3 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["_handleMessage"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_onClientDisconnected"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["Connected"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Client is not connected"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R1 K4 ["BindToMessage"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R3 R0 K5 ["clients"]
       16 DUPTABLE                         R4 K9 [{"id", "onMessageConnection", "client"}]
       17 LOADNIL                          R5
       18 SETTABLEKS                       R5 R4 K6 ["id"]
       20 SETTABLEKS                       R2 R4 K7 ["onMessageConnection"]
       22 SETTABLEKS                       R1 R4 K8 ["client"]
       24 SETTABLE                         R4 R3 R1
       25 LOADK                            R5 K0 ["Connected"]
       26 NAMECALL                         R3 R1 K10 ["GetPropertyChangedSignal"]
       28 CALL                             R3 2 1
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R3 R3 K11 ["Once"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["clients"]
        2 GETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R2 R2 K1 ["id"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETTABLEKS                       R3 R0 K2 ["onClientDisconnected"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["Fire"]
       11 CALL                             R3 2 0
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R0 K4 ["_clearClient"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+6]
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["_onClientConnected"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K3 [Enum.PluginConnectionTargetType.Test]
        2 GETTABLEKS                       R2 R0 K4 ["pluginConnectionService"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K5 ["CanHaveConnectionType"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+4]
        9 GETIMPORT                        R2 K7 [error]
       11 LOADK                            R3 K8 ["Can only start the server in EditDataModel"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K4 ["pluginConnectionService"]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K9 ["GetPluginConnectionsOfType"]
       18 CALL                             R2 2 1
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 MOVE                             R10 R7
       24 NAMECALL                         R8 R0 K10 ["_onClientConnected"]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 ; [-5]
       29 GETTABLEKS                       R3 R0 K4 ["pluginConnectionService"]
       31 GETTABLEKS                       R3 R3 K11 ["Connected"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R3 R3 K12 ["Connect"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getClientData"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+12]
        5 GETTABLEKS                       R4 R3 K1 ["client"]
        7 GETTABLEKS                       R4 R4 K2 ["Connected"]
        9 JUMPIFNOT                        R4 ; [+7]
       10 GETTABLEKS                       R4 R3 K1 ["client"]
       12 MOVE                             R6 R2
       13 NAMECALL                         R4 R4 K3 ["SendMessage"]
       15 CALL                             R4 2 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R4 K5 [error]
       19 LOADK                            R5 K6 ["Client not found or not connected"]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      3
        1 MOVE                             R5 R1
        2 GETUPVAL                         R6 0
        3 DUPTABLE                         R8 K3 [{"type", "command", "args"}]
        4 LOADK                            R9 K1 ["command"]
        5 SETTABLEKS                       R9 R8 K0 ["type"]
        7 SETTABLEKS                       R2 R8 K1 ["command"]
        9 NEWTABLE                         R9 0 0
       11 GETVARARGS                       R10 -1
       12 SETLIST                          R9 R10 -1 [1]
       14 SETTABLEKS                       R9 R8 K2 ["args"]
       16 NAMECALL                         R6 R6 K4 ["JSONEncode"]
       18 CALL                             R6 2 -1
       19 NAMECALL                         R3 R0 K5 ["sendMessage"]
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["clients"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["id"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+4]
        9 GETTABLEKS                       R7 R6 K2 ["client"]
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 ; [-8]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["clients"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["id"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_14:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getClient"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R0 K1 ["_clearClient"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["clients"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETTABLEKS                       R3 R2 K1 ["onMessageConnection"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R3 R2 K1 ["onMessageConnection"]
        9 NAMECALL                         R3 R3 K2 ["Disconnect"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K0 ["clients"]
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R3 R1
       16 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["clients"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K1 ["_clearClient"]
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R3 K11 ["Signal"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 16 0
       22 SETTABLEKS                       R3 R3 K12 ["__index"]
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K14 ["new"]
       29 DUPCLOSURE                       R4 K15 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K16 ["_handleCommand"]
       32 DUPCLOSURE                       R4 K17 [PROTO_3]
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K18 ["_handleMessage"]
       36 DUPCLOSURE                       R4 K19 [PROTO_6]
       37 SETTABLEKS                       R4 R3 K20 ["_onClientConnected"]
       39 DUPCLOSURE                       R4 K21 [PROTO_7]
       40 SETTABLEKS                       R4 R3 K22 ["_onClientDisconnected"]
       42 DUPCLOSURE                       R4 K23 [PROTO_9]
       43 SETTABLEKS                       R4 R3 K24 ["start"]
       45 DUPCLOSURE                       R4 K25 [PROTO_10]
       46 SETTABLEKS                       R4 R3 K26 ["sendMessage"]
       48 DUPCLOSURE                       R4 K27 [PROTO_11]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R4 R3 K28 ["sendCommand"]
       52 DUPCLOSURE                       R4 K29 [PROTO_12]
       53 SETTABLEKS                       R4 R3 K30 ["getClient"]
       55 DUPCLOSURE                       R4 K31 [PROTO_13]
       56 SETTABLEKS                       R4 R3 K32 ["getClientData"]
       58 DUPCLOSURE                       R4 K33 [PROTO_14]
       59 SETTABLEKS                       R4 R3 K34 ["clearClientById"]
       61 DUPCLOSURE                       R4 K35 [PROTO_15]
       62 SETTABLEKS                       R4 R3 K36 ["_clearClient"]
       64 DUPCLOSURE                       R4 K37 [PROTO_16]
       65 SETTABLEKS                       R4 R3 K38 ["close"]
       67 RETURN                           R3 1
