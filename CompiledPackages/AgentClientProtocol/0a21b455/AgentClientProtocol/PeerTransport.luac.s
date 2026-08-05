PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["start"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["send"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 ORK                              R2 R0 K2 ["PeerTransport"]
        9 SETTABLEKS                       R2 R1 K3 ["name"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["_isConnected"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K5 ["_peer"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["makeTransport"]
       20 DUPTABLE                         R3 K12 [{"start", "close", "sendRequest", "sendNotification", "sendResponse"}]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K7 ["start"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K8 ["close"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K9 ["sendRequest"]
       33 NEWCLOSURE                       R4 P3
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K10 ["sendNotification"]
       37 NEWCLOSURE                       R4 P4
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K11 ["sendResponse"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R1 K13 ["transport"]
       44 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isConnected"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["resolve"]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["_isConnected"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["resolve"]
       14 CALL                             R1 0 -1
       15 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_isConnected"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["transport"]
        7 GETTABLEKS                       R1 R1 K2 ["onTransportMessage"]
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R1 R1 K3 ["Fire"]
       12 CALL                             R1 2 0
       13 MOVE                             R1 R0
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_isConnected"]
        2 JUMPIF                           R3 ; [+12]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["reject"]
        6 LOADK                            R5 K2 ["%*: Not connected"]
        7 GETTABLEKS                       R7 R0 K3 ["name"]
        9 NAMECALL                         R5 R5 K4 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 GETTABLEKS                       R3 R0 K5 ["_peer"]
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R4 R3 K0 ["_isConnected"]
       20 JUMPIF                           R4 ; [+5]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["resolve"]
       24 CALL                             R4 0 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["new"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isConnected"]
        3 GETTABLEKS                       R1 R0 K1 ["_peer"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R0 K1 ["_peer"]
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETTABLEKS                       R2 R1 K1 ["_peer"]
       11 JUMPIFNOTEQ                      R2 R0 ; [+7]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K1 ["_peer"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K0 ["_isConnected"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["resolve"]
       22 CALL                             R2 0 -1
       23 RETURN                           R2 -1

PROTO_10:
        0 JUMPIFNOTEQ                      R1 R0 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Cannot bind a peer transport to itself"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 SETTABLEKS                       R1 R0 K3 ["_peer"]
       12 SETTABLEKS                       R0 R1 K3 ["_peer"]
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AgentClientProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Transport"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 SETTABLEKS                       R3 R3 K9 ["__index"]
       27 DUPCLOSURE                       R4 K10 [PROTO_5]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K11 ["new"]
       32 DUPCLOSURE                       R4 K12 [PROTO_6]
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K13 ["start"]
       36 DUPCLOSURE                       R4 K14 [PROTO_8]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R4 R3 K15 ["send"]
       40 DUPCLOSURE                       R4 K16 [PROTO_9]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R4 R3 K17 ["close"]
       44 DUPCLOSURE                       R4 K18 [PROTO_10]
       45 SETTABLEKS                       R4 R3 K19 ["bindPeer"]
       47 RETURN                           R3 1
