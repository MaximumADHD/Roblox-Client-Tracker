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
        8 GETTABLEKS                       R3 R0 K3 ["name"]
       10 ORK                              R2 R3 K2 ["WebSocketTransport"]
       11 SETTABLEKS                       R2 R1 K3 ["name"]
       13 GETTABLEKS                       R2 R0 K4 ["url"]
       15 SETTABLEKS                       R2 R1 K4 ["url"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K5 ["_isClosing"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K6 ["_wsClient"]
       23 GETTABLEKS                       R2 R0 K7 ["retryDelay"]
       25 JUMPIF                           R2 ; [+2]
       26 GETUPVAL                         R2 1
       27 CALL                             R2 0 1
       28 SETTABLEKS                       R2 R1 K8 ["_retryDelay"]
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R1 K9 ["_messageQueue"]
       34 LOADB                            R2 0
       35 SETTABLEKS                       R2 R1 K10 ["_isProcessingQueue"]
       37 LOADK                            R3 K11 ["ws-%*"]
       38 GETUPVAL                         R5 2
       39 LOADB                            R7 0
       40 NAMECALL                         R5 R5 K12 ["GenerateGUID"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R3 R3 K13 ["format"]
       45 CALL                             R3 2 1
       46 MOVE                             R2 R3
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R3 R4 K14 ["makeTransport"]
       50 MOVE                             R4 R2
       51 DUPTABLE                         R5 K20 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R6 R5 K15 ["start"]
       56 NEWCLOSURE                       R6 P1
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R6 R5 K16 ["sendResponse"]
       60 NEWCLOSURE                       R6 P2
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R6 R5 K17 ["sendNotification"]
       64 NEWCLOSURE                       R6 P3
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R6 R5 K18 ["sendRequest"]
       68 NEWCLOSURE                       R6 P4
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R6 R5 K19 ["close"]
       72 CALL                             R3 2 1
       73 SETTABLEKS                       R3 R1 K21 ["transport"]
       75 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_isClosing"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["_wsClient"]
        9 GETUPVAL                         R0 0
       10 NAMECALL                         R0 R0 K2 ["start"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K0 ["transport"]
        9 GETTABLEKS                       R1 R2 K1 ["onTransportError"]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["Fire"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K3 ["_messageReceivedConnection"]
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K3 ["_messageReceivedConnection"]
       22 NAMECALL                         R1 R1 K4 ["Disconnect"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 1
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K3 ["_messageReceivedConnection"]
       29 GETIMPORT                        R1 K7 [task.delay]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K8 ["_retryDelay"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U1
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_messageQueue"]
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R1 R1 K4 ["_processMessageQueue"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["reject"]
        6 LOADK                            R3 K2 ["%*: Cannot start, transport is closing."]
        7 GETTABLEKS                       R5 R0 K3 ["name"]
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K5 ["_wsClient"]
       17 JUMPIFNOT                        R1 ; [+12]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K1 ["reject"]
       21 LOADK                            R3 K6 ["%*: Already started."]
       22 GETTABLEKS                       R5 R0 K3 ["name"]
       24 NAMECALL                         R3 R3 K4 ["format"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K7 ["createWebSocketClient"]
       33 DUPTABLE                         R2 K9 [{"Url"}]
       34 GETTABLEKS                       R3 R0 K10 ["url"]
       36 SETTABLEKS                       R3 R2 K8 ["Url"]
       38 CALL                             R1 1 1
       39 SETTABLEKS                       R1 R0 K5 ["_wsClient"]
       41 GETTABLEKS                       R2 R0 K5 ["_wsClient"]
       43 LOADK                            R4 K11 ["%*: Failed to create WebStreamClient."]
       44 GETTABLEKS                       R6 R0 K3 ["name"]
       46 NAMECALL                         R4 R4 K4 ["format"]
       48 CALL                             R4 2 1
       49 MOVE                             R3 R4
       50 FASTCALL2                        ASSERT R2 R3 ; [+3]
       52 GETIMPORT                        R1 K13 [assert]
       54 CALL                             R1 2 0
       55 LOADB                            R1 0
       56 NEWCLOSURE                       R2 P0
       57 CAPTURE                          REF R1
       58 CAPTURE                          VAL R0
       59 GETTABLEKS                       R4 R0 K5 ["_wsClient"]
       61 GETTABLEKS                       R3 R4 K14 ["Error"]
       63 MOVE                             R5 R2
       64 NAMECALL                         R3 R3 K15 ["Once"]
       66 CALL                             R3 2 0
       67 GETTABLEKS                       R4 R0 K5 ["_wsClient"]
       69 GETTABLEKS                       R3 R4 K16 ["Closed"]
       71 NEWCLOSURE                       R5 P1
       72 CAPTURE                          VAL R2
       73 NAMECALL                         R3 R3 K15 ["Once"]
       75 CALL                             R3 2 0
       76 GETTABLEKS                       R4 R0 K5 ["_wsClient"]
       78 GETTABLEKS                       R3 R4 K17 ["MessageReceived"]
       80 NEWCLOSURE                       R5 P2
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R3 R3 K18 ["Connect"]
       84 CALL                             R3 2 1
       85 SETTABLEKS                       R3 R0 K19 ["_messageReceivedConnection"]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R3 R4 K20 ["resolve"]
       90 CALL                             R3 0 -1
       91 CLOSEUPVALS                      R1
       92 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_isProcessingQueue"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_isProcessingQueue"]
        7 GETTABLEKS                       R2 R0 K1 ["_messageQueue"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+34]
       13 GETIMPORT                        R1 K4 [table.remove]
       15 GETTABLEKS                       R2 R0 K1 ["_messageQueue"]
       17 LOADN                            R3 1
       18 CALL                             R1 2 1
       19 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K5 ["Message data is nil"]
       23 GETIMPORT                        R2 K7 [assert]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K8 ["decode"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K9 ["Received data:"]
       33 MOVE                             R6 R2
       34 NAMECALL                         R3 R3 K10 ["log"]
       36 CALL                             R3 3 0
       37 GETTABLEKS                       R4 R0 K11 ["transport"]
       39 GETTABLEKS                       R3 R4 K12 ["onTransportMessage"]
       41 MOVE                             R5 R2
       42 NAMECALL                         R3 R3 K13 ["Fire"]
       44 CALL                             R3 2 0
       45 JUMPBACK                         ; [-39]
       46 LOADB                            R1 0
       47 SETTABLEKS                       R1 R0 K0 ["_isProcessingQueue"]
       49 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_isClosing"]
        2 JUMPIF                           R3 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["_wsClient"]
        5 JUMPIF                           R3 ; [+12]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["reject"]
        9 LOADK                            R5 K3 ["%*: Not connected."]
       10 GETTABLEKS                       R7 R0 K4 ["name"]
       12 NAMECALL                         R5 R5 K5 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K6 ["encode"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 2
       24 LOADK                            R6 K7 ["Sending data:"]
       25 MOVE                             R7 R3
       26 NAMECALL                         R4 R4 K8 ["log"]
       28 CALL                             R4 3 0
       29 GETTABLEKS                       R4 R0 K1 ["_wsClient"]
       31 MOVE                             R7 R3
       32 NAMECALL                         R5 R4 K9 ["Send"]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K10 ["resolve"]
       38 CALL                             R5 0 -1
       39 RETURN                           R5 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["resolve"]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["_isClosing"]
       11 GETTABLEKS                       R1 R0 K2 ["_wsClient"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETTABLEKS                       R1 R0 K2 ["_wsClient"]
       16 NAMECALL                         R1 R1 K3 ["Close"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_wsClient"]
       22 GETTABLEKS                       R1 R0 K4 ["_messageReceivedConnection"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K4 ["_messageReceivedConnection"]
       27 NAMECALL                         R1 R1 K5 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K4 ["_messageReceivedConnection"]
       33 GETIMPORT                        R1 K8 [table.clear]
       35 GETTABLEKS                       R2 R0 K9 ["_messageQueue"]
       37 CALL                             R1 1 0
       38 GETTABLEKS                       R2 R0 K10 ["transport"]
       40 GETTABLEKS                       R1 R2 K11 ["onTransportClose"]
       42 NAMECALL                         R1 R1 K12 ["Fire"]
       44 CALL                             R1 1 0
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R1 R2 K1 ["resolve"]
       48 CALL                             R1 0 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Json"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["Logging"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Promise"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Transport"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Types"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R8 R9 K9 ["Parent"]
       44 GETTABLEKS                       R7 R8 K13 ["WebSocketClientFactory"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Flags"]
       51 GETTABLEKS                       R8 R9 K15 ["FIntMCPWebSocketBackoff"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K17 [game]
       56 LOADK                            R10 K18 ["HttpService"]
       57 NAMECALL                         R8 R8 K19 ["GetService"]
       59 CALL                             R8 2 1
       60 NEWTABLE                         R9 8 0
       62 SETTABLEKS                       R9 R9 K20 ["__index"]
       64 GETTABLEKS                       R11 R2 K21 ["Logger"]
       66 GETTABLEKS                       R10 R11 K22 ["new"]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K23 ["Name"]
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K24 [PROTO_5]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R11 R9 K22 ["new"]
       80 DUPCLOSURE                       R11 K25 [PROTO_10]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R11 R9 K26 ["start"]
       85 DUPCLOSURE                       R11 K27 [PROTO_11]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R11 R9 K28 ["_processMessageQueue"]
       90 DUPCLOSURE                       R11 K29 [PROTO_12]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R11 R9 K30 ["send"]
       96 DUPCLOSURE                       R11 K31 [PROTO_13]
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R11 R9 K32 ["close"]
      100 RETURN                           R9 1
