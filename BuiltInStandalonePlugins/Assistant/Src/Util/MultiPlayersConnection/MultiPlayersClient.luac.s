PROTO_0:
        0 DUPTABLE                         R2 K8 [{"pluginConnectionService", "clientId", "onServerConnected", "onServerDisconnected", "onServerMessage", "connection", "onMessageConnection", "onCommand"}]
        1 SETTABLEKS                       R0 R2 K0 ["pluginConnectionService"]
        3 SETTABLEKS                       R1 R2 K1 ["clientId"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K9 ["new"]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K2 ["onServerConnected"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K9 ["new"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K3 ["onServerDisconnected"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K9 ["new"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K4 ["onServerMessage"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K5 ["connection"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K6 ["onMessageConnection"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K9 ["new"]
       32 CALL                             R3 0 1
       33 SETTABLEKS                       R3 R2 K7 ["onCommand"]
       35 GETUPVAL                         R5 1
       36 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R3 K11 [setmetatable]
       41 CALL                             R3 2 1
       42 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+26]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+20]
       14 GETTABLEKS                       R4 R3 K5 ["type"]
       16 JUMPIFNOTEQKS                    R4 K6 ["command"] ; [+16]
       18 GETTABLEKS                       R4 R3 K6 ["command"]
       20 GETTABLEKS                       R5 R3 K7 ["args"]
       22 GETTABLEKS                       R6 R0 K8 ["onCommand"]
       24 MOVE                             R8 R4
       25 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       26 MOVE                             R10 R5
       27 GETIMPORT                        R9 K10 [unpack]
       29 CALL                             R9 1 -1
       30 NAMECALL                         R6 R6 K11 ["Fire"]
       32 CALL                             R6 -1 0
       33 GETTABLEKS                       R4 R0 K12 ["onServerMessage"]
       35 MOVE                             R6 R1
       36 NAMECALL                         R4 R4 K11 ["Fire"]
       38 CALL                             R4 2 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["connection"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R3 R0 K0 ["connection"]
        5 GETTABLEKS                       R3 R3 K1 ["Connected"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Connection not found or not connected"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R0 K0 ["connection"]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K5 ["SendMessage"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 GETUPVAL                         R5 0
        7 DUPTABLE                         R7 K3 [{"type", "command", "args"}]
        8 LOADK                            R8 K1 ["command"]
        9 SETTABLEKS                       R8 R7 K0 ["type"]
       11 SETTABLEKS                       R1 R7 K1 ["command"]
       13 SETTABLEKS                       R2 R7 K2 ["args"]
       15 NAMECALL                         R5 R5 K4 ["JSONEncode"]
       17 CALL                             R5 2 -1
       18 NAMECALL                         R3 R0 K5 ["sendMessage"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["register"]
        1 GETTABLEKS                       R4 R0 K1 ["clientId"]
        3 NAMECALL                         R1 R0 K2 ["sendCommand"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleMessage"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onServerDisconnected"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["Connected"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Connection is not connected"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R2 R1 K4 ["BindToMessage"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R0 K5 ["onMessageConnection"]
       15 LOADK                            R4 K0 ["Connected"]
       16 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R2 R2 K7 ["Once"]
       23 CALL                             R2 2 0
       24 NAMECALL                         R2 R0 K8 ["_register"]
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R0 K9 ["onServerConnected"]
       29 NAMECALL                         R2 R2 K10 ["Fire"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["onServerDisconnected"]
        2 NAMECALL                         R1 R1 K1 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K3 [Enum.PluginConnectionTargetType.Edit]
        2 GETTABLEKS                       R2 R0 K4 ["pluginConnectionService"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K5 ["GetPluginConnectionsOfType"]
        7 CALL                             R2 2 1
        8 LENGTH                           R5 R2
        9 LOADN                            R6 1
       10 JUMPIFLE                         R5 R6 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       16 LOADK                            R5 K6 ["Only one connection for the client is allowed"]
       17 GETIMPORT                        R3 K8 [assert]
       19 CALL                             R3 2 0
       20 LENGTH                           R3 R2
       21 JUMPIFNOTEQKN                    R3 K9 [1] ; [+5]
       23 GETTABLEN                        R3 R2 1
       24 SETTABLEKS                       R3 R0 K10 ["connection"]
       26 JUMP                             ; [+15]
       27 GETTABLEKS                       R3 R0 K4 ["pluginConnectionService"]
       29 GETTABLEKS                       R3 R3 K11 ["Connected"]
       31 NAMECALL                         R3 R3 K12 ["Wait"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K13 ["Type"]
       36 JUMPIFNOTEQ                      R4 R1 ; [+4]
       38 SETTABLEKS                       R3 R0 K10 ["connection"]
       40 JUMP                             ; [+1]
       41 JUMPBACK                         ; [-15]
       42 GETTABLEKS                       R4 R0 K10 ["connection"]
       44 JUMPIFNOT                        R4 ; [+4]
       45 GETTABLEKS                       R4 R0 K10 ["connection"]
       47 GETTABLEKS                       R4 R4 K11 ["Connected"]
       49 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       51 LOADK                            R5 K14 ["Connection not found or not connected"]
       52 GETIMPORT                        R3 K8 [assert]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R5 R0 K10 ["connection"]
       57 NAMECALL                         R3 R0 K15 ["_onServerConnected"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["onMessageConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["onMessageConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["onMessageConnection"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["connection"]
       14 RETURN                           R0 0

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
       29 DUPCLOSURE                       R4 K15 [PROTO_2]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K16 ["_handleMessage"]
       33 DUPCLOSURE                       R4 K17 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K18 ["sendMessage"]
       36 DUPCLOSURE                       R4 K19 [PROTO_4]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R4 R3 K20 ["sendCommand"]
       40 DUPCLOSURE                       R4 K21 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K22 ["_register"]
       43 DUPCLOSURE                       R4 K23 [PROTO_8]
       44 SETTABLEKS                       R4 R3 K24 ["_onServerConnected"]
       46 DUPCLOSURE                       R4 K25 [PROTO_9]
       47 SETTABLEKS                       R4 R3 K26 ["_onServerDisconnected"]
       49 DUPCLOSURE                       R4 K27 [PROTO_10]
       50 SETTABLEKS                       R4 R3 K28 ["connect"]
       52 DUPCLOSURE                       R4 K29 [PROTO_11]
       53 SETTABLEKS                       R4 R3 K30 ["disconnect"]
       55 RETURN                           R3 1
