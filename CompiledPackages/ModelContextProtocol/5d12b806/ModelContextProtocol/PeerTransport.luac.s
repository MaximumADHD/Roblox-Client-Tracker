PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["start"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["send"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["send"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["send"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 ORK                              R2 R0 K2 ["PeerTransport"]
        9 SETTABLEKS                       R2 R1 K3 ["name"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["_isConnected"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K5 ["_peerTransport"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K6 ["_isClosing"]
       20 LOADK                            R3 K7 ["mock-"]
       21 GETUPVAL                         R4 1
       22 LOADB                            R6 0
       23 NAMECALL                         R4 R4 K8 ["GenerateGUID"]
       25 CALL                             R4 2 1
       26 CONCAT                           R2 R3 R4
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K9 ["makeTransport"]
       30 MOVE                             R4 R2
       31 DUPTABLE                         R5 K15 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R6 R5 K10 ["start"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R6 R5 K11 ["sendResponse"]
       40 NEWCLOSURE                       R6 P2
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K12 ["sendNotification"]
       44 NEWCLOSURE                       R6 P3
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K13 ["sendRequest"]
       48 NEWCLOSURE                       R6 P4
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K14 ["close"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R1 K16 ["transport"]
       55 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["reject"]
        6 GETTABLEKS                       R3 R0 K2 ["name"]
        8 LOADK                            R4 K3 [": Cannot start, transport is closing."]
        9 CONCAT                           R2 R3 R4
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K4 ["_isConnected"]
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETIMPORT                        R1 K6 [warn]
       17 GETTABLEKS                       R3 R0 K2 ["name"]
       19 LOADK                            R4 K7 [": Already started."]
       20 CONCAT                           R2 R3 R4
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K8 ["resolve"]
       25 CALL                             R1 0 -1
       26 RETURN                           R1 -1
       27 LOADB                            R1 1
       28 SETTABLEKS                       R1 R0 K4 ["_isConnected"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K8 ["resolve"]
       33 CALL                             R1 0 -1
       34 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_peerTransport"]
        3 JUMPIFNOT                        R1 ; [+17]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["_peerTransport"]
        7 GETTABLEKS                       R1 R1 K1 ["_isConnected"]
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["_peerTransport"]
       13 GETTABLEKS                       R1 R1 K2 ["transport"]
       15 GETTABLEKS                       R2 R1 K3 ["onTransportMessage"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R2 R2 K4 ["Fire"]
       20 CALL                             R2 2 0
       21 MOVE                             R1 R0
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R3 ; [+9]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["reject"]
        6 GETTABLEKS                       R5 R0 K2 ["name"]
        8 LOADK                            R6 K3 [": Cannot send, transport is closing."]
        9 CONCAT                           R4 R5 R6
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1
       12 GETTABLEKS                       R3 R0 K4 ["_isConnected"]
       14 JUMPIF                           R3 ; [+9]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["reject"]
       18 GETTABLEKS                       R5 R0 K2 ["name"]
       20 LOADK                            R6 K5 [": Not connected."]
       21 CONCAT                           R4 R5 R6
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1
       24 GETTABLEKS                       R3 R0 K6 ["_peerTransport"]
       26 JUMPIFNOT                        R3 ; [+13]
       27 GETTABLEKS                       R3 R0 K6 ["_peerTransport"]
       29 GETTABLEKS                       R3 R3 K4 ["_isConnected"]
       31 JUMPIFNOT                        R3 ; [+8]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K7 ["new"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K8 ["resolve"]
       43 CALL                             R3 0 -1
       44 RETURN                           R3 -1

PROTO_9:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["_triggerClose"]
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["resolve"]
        7 CALL                             R1 0 -1
        8 RETURN                           R1 -1

PROTO_10:
        0 JUMPIFNOTEQ                      R1 R0 ; [+9]
        2 GETIMPORT                        R3 K1 [warn]
        4 GETTABLEKS                       R5 R0 K2 ["name"]
        6 LOADK                            R6 K3 [": Cannot link transport to itself."]
        7 CONCAT                           R4 R5 R6
        8 CALL                             R3 1 0
        9 RETURN                           R0 0
       10 SETTABLEKS                       R1 R0 K4 ["_peerTransport"]
       12 JUMPIF                           R2 ; [+5]
       13 MOVE                             R5 R0
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R1 K5 ["bindPeer"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_isConnected"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R0 K0 ["_isClosing"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R0 K1 ["_isConnected"]
       14 GETTABLEKS                       R2 R0 K2 ["transport"]
       16 GETTABLEKS                       R2 R2 K3 ["onTransportClose"]
       18 NAMECALL                         R2 R2 K4 ["Fire"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K5 ["_peerTransport"]
       23 JUMPIF                           R1 ; [+8]
       24 JUMPIFNOT                        R2 ; [+7]
       25 GETTABLEKS                       R3 R2 K0 ["_isClosing"]
       27 JUMPIF                           R3 ; [+4]
       28 LOADB                            R5 1
       29 NAMECALL                         R3 R2 K6 ["_triggerClose"]
       31 CALL                             R3 2 0
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R0 K5 ["_peerTransport"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R0 K0 ["_isClosing"]
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Transport"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [game]
       26 LOADK                            R6 K12 ["HttpService"]
       27 NAMECALL                         R4 R4 K13 ["GetService"]
       29 CALL                             R4 2 1
       30 NEWTABLE                         R5 8 0
       32 SETTABLEKS                       R5 R5 K14 ["__index"]
       34 DUPCLOSURE                       R6 K15 [PROTO_5]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R6 R5 K16 ["new"]
       40 DUPCLOSURE                       R6 K17 [PROTO_6]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K18 ["start"]
       44 DUPCLOSURE                       R6 K19 [PROTO_8]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K20 ["send"]
       48 DUPCLOSURE                       R6 K21 [PROTO_9]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K22 ["close"]
       52 DUPCLOSURE                       R6 K23 [PROTO_10]
       53 SETTABLEKS                       R6 R5 K24 ["bindPeer"]
       55 DUPCLOSURE                       R6 K25 [PROTO_11]
       56 SETTABLEKS                       R6 R5 K26 ["_triggerClose"]
       58 RETURN                           R5 1
