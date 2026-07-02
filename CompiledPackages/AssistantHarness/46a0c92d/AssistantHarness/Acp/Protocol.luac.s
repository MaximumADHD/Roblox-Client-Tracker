PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["_transport"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["_nextId"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K4 ["_requestHandlers"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K5 ["_notificationHandlers"]
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K6 ["_responseResolvers"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onMessage"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["_transport"]
        2 GETTABLEKS                       R2 R1 K1 ["onTransportMessage"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R2 R2 K2 ["Connect"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["start"]
       11 CALL                             R2 0 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_transport"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_transport"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["close"]
        8 CALL                             R2 0 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["resolve"]
       13 CALL                             R2 0 -1
       14 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["error"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["error"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K1 ["result"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_responseResolvers"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_responseResolvers"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 SETTABLE                         R4 R2 R3
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["sendRequest"]
       11 GETUPVAL                         R3 3
       12 CALL                             R2 1 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R2 R2 K2 ["catch"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_transport"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["Transport not connected"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R5 R0 K4 ["_nextId"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K6 [tostring]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R0 K4 ["_nextId"]
       17 ADDK                             R5 R5 K7 [1]
       18 SETTABLEKS                       R5 R0 K4 ["_nextId"]
       20 DUPTABLE                         R5 K13 [{["jsonrpc"] = "2.0", ["id"], ["method"], ["params"]}]
       21 SETTABLEKS                       R4 R5 K10 ["id"]
       23 SETTABLEKS                       R1 R5 K11 ["method"]
       25 SETTABLEKS                       R2 R5 K12 ["params"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K14 ["new"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CALL                             R6 1 -1
       36 RETURN                           R6 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_transport"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["Transport not connected"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 DUPTABLE                         R4 K8 [{["jsonrpc"] = "2.0", ["method"], ["params"]}]
       10 SETTABLEKS                       R1 R4 K6 ["method"]
       12 SETTABLEKS                       R2 R4 K7 ["params"]
       14 GETTABLEKS                       R5 R3 K9 ["sendNotification"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 -1
       18 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_requestHandlers"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["_notificationHandlers"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["method"]
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K2 ["_onRequest"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K3 ["_onNotification"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R1 K1 ["id"]
       19 JUMPIFEQKNIL                     R2 ; [+5]
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R0 K4 ["_onResponse"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R3 K4 [{[1] = "2.0", ["id"], ["error"]}]
        1 SETTABLEKS                       R0 R3 K2 ["id"]
        3 DUPTABLE                         R4 K7 [{"code", "message"}]
        4 SETTABLEKS                       R1 R4 K5 ["code"]
        6 SETTABLEKS                       R2 R4 K6 ["message"]
        8 SETTABLEKS                       R4 R3 K3 ["error"]
       10 RETURN                           R3 1

PROTO_13:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 CALL                             R2 2 2
        5 JUMPIF                           R2 ; [+4]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R3
        8 CALL                             R4 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["is"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 JUMPIFNOT                        R4 ; [+6]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 NAMECALL                         R4 R3 K3 ["andThen"]
       20 CALL                             R4 3 0
       21 RETURN                           R0 0
       22 MOVE                             R4 R0
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResponse"]
        3 DUPTABLE                         R2 K5 [{["jsonrpc"] = "2.0", ["id"], ["result"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["id"]
        7 SETTABLEKS                       R3 R2 K3 ["id"]
        9 MOVE                             R3 R0
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K4 ["result"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 LOADN                            R1 -32603
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K3 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+7]
       13 GETTABLEKS                       R3 R0 K5 ["code"]
       15 OR                               R1 R3 R1
       16 GETTABLEKS                       R3 R0 K6 ["message"]
       18 OR                               R2 R3 R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["sendResponse"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K8 ["id"]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 DUPTABLE                         R4 K12 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       28 SETTABLEKS                       R5 R4 K8 ["id"]
       30 DUPTABLE                         R8 K13 [{"code", "message"}]
       31 SETTABLEKS                       R6 R8 K5 ["code"]
       33 SETTABLEKS                       R7 R8 K6 ["message"]
       35 SETTABLEKS                       R8 R4 K11 ["error"]
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_transport"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R4 R0 K1 ["_requestHandlers"]
        6 GETTABLEKS                       R5 R1 K2 ["method"]
        8 GETTABLE                         R3 R4 R5
        9 JUMPIF                           R3 ; [+21]
       10 GETTABLEKS                       R4 R2 K3 ["sendResponse"]
       12 GETTABLEKS                       R6 R1 K4 ["id"]
       14 LOADK                            R8 K5 ["Method not found: %*"]
       15 GETTABLEKS                       R10 R1 K2 ["method"]
       17 NAMECALL                         R8 R8 K6 ["format"]
       19 CALL                             R8 2 1
       20 MOVE                             R7 R8
       21 DUPTABLE                         R5 K10 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       22 SETTABLEKS                       R6 R5 K4 ["id"]
       24 DUPTABLE                         R8 K14 [{["code"] = -32601, ["message"]}]
       25 SETTABLEKS                       R7 R8 K13 ["message"]
       27 SETTABLEKS                       R8 R5 K9 ["error"]
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K15 ["new"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U0
       38 CALL                             R4 1 1
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 NAMECALL                         R4 R4 K16 ["andThen"]
       47 CALL                             R4 3 1
       48 DUPCLOSURE                       R6 K17 [PROTO_16]
       49 NAMECALL                         R4 R4 K18 ["catch"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_notificationHandlers"]
        2 GETTABLEKS                       R4 R1 K1 ["method"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R3 K3 [pcall]
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R4 R0 K1 ["_responseResolvers"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETTABLEKS                       R4 R0 K1 ["_responseResolvers"]
        8 LOADNIL                          R5
        9 SETTABLE                         R5 R4 R2
       10 MOVE                             R4 R3
       11 MOVE                             R5 R1
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 16 0
       32 SETTABLEKS                       R4 R4 K10 ["__index"]
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K12 ["new"]
       38 DUPCLOSURE                       R5 K13 [PROTO_2]
       39 SETTABLEKS                       R5 R4 K14 ["connect"]
       41 DUPCLOSURE                       R5 K15 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K16 ["close"]
       45 DUPCLOSURE                       R5 K17 [PROTO_7]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K18 ["request"]
       49 DUPCLOSURE                       R5 K19 [PROTO_8]
       50 SETTABLEKS                       R5 R4 K20 ["notification"]
       52 DUPCLOSURE                       R5 K21 [PROTO_9]
       53 SETTABLEKS                       R5 R4 K22 ["setRequestHandler"]
       55 DUPCLOSURE                       R5 K23 [PROTO_10]
       56 SETTABLEKS                       R5 R4 K24 ["setNotificationHandler"]
       58 DUPCLOSURE                       R5 K25 [PROTO_11]
       59 SETTABLEKS                       R5 R4 K26 ["_onMessage"]
       61 DUPCLOSURE                       R5 K27 [PROTO_12]
       62 DUPCLOSURE                       R6 K28 [PROTO_17]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R6 R4 K29 ["_onRequest"]
       66 DUPCLOSURE                       R6 K30 [PROTO_18]
       67 SETTABLEKS                       R6 R4 K31 ["_onNotification"]
       69 DUPCLOSURE                       R6 K32 [PROTO_19]
       70 SETTABLEKS                       R6 R4 K33 ["_onResponse"]
       72 RETURN                           R4 1
