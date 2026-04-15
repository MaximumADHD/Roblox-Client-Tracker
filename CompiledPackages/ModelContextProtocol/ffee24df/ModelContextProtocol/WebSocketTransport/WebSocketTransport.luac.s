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
        0 NEWTABLE                         R2 16 0
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
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K11 ["new"]
       40 LOADB                            R3 0
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R1 K12 ["isActive"]
       44 LOADK                            R3 K13 ["ws-%*"]
       45 GETUPVAL                         R5 3
       46 LOADB                            R7 0
       47 NAMECALL                         R5 R5 K14 ["GenerateGUID"]
       49 CALL                             R5 2 1
       50 NAMECALL                         R3 R3 K15 ["format"]
       52 CALL                             R3 2 1
       53 MOVE                             R2 R3
       54 GETUPVAL                         R4 4
       55 GETTABLEKS                       R3 R4 K16 ["makeTransport"]
       57 MOVE                             R4 R2
       58 DUPTABLE                         R5 K22 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R6 R5 K17 ["start"]
       63 NEWCLOSURE                       R6 P1
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R6 R5 K18 ["sendResponse"]
       67 NEWCLOSURE                       R6 P2
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R6 R5 K19 ["sendNotification"]
       71 NEWCLOSURE                       R6 P3
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R6 R5 K20 ["sendRequest"]
       75 NEWCLOSURE                       R6 P4
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R6 R5 K21 ["close"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R1 K23 ["transport"]
       82 RETURN                           R1 1

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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["isActive"]
        8 LOADB                            R3 0
        9 NAMECALL                         R1 R1 K1 ["set"]
       11 CALL                             R1 2 0
       12 JUMPIFNOT                        R0 ; [+9]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K2 ["transport"]
       16 GETTABLEKS                       R1 R2 K3 ["onTransportError"]
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K4 ["Fire"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K5 ["_messageReceivedConnection"]
       25 JUMPIFNOT                        R1 ; [+10]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K5 ["_messageReceivedConnection"]
       29 NAMECALL                         R1 R1 K6 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 1
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K5 ["_messageReceivedConnection"]
       36 GETIMPORT                        R1 K9 [task.delay]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K10 ["_retryDelay"]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U1
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["isActive"]
        8 LOADB                            R2 0
        9 NAMECALL                         R0 R0 K1 ["set"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K2 ["_messageReceivedConnection"]
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K2 ["_messageReceivedConnection"]
       19 NAMECALL                         R0 R0 K3 ["Disconnect"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["_messageReceivedConnection"]
       26 GETIMPORT                        R0 K6 [task.delay]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R1 R2 K7 ["_retryDelay"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U1
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isActive"]
        3 LOADB                            R3 1
        4 NAMECALL                         R1 R1 K1 ["set"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["_messageQueue"]
       10 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 NAMECALL                         R1 R1 K6 ["_processMessageQueue"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
       72 CAPTURE                          REF R1
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R3 R3 K15 ["Once"]
       76 CALL                             R3 2 0
       77 GETTABLEKS                       R4 R0 K5 ["_wsClient"]
       79 GETTABLEKS                       R3 R4 K17 ["MessageReceived"]
       81 NEWCLOSURE                       R5 P2
       82 CAPTURE                          VAL R0
       83 NAMECALL                         R3 R3 K18 ["Connect"]
       85 CALL                             R3 2 1
       86 SETTABLEKS                       R3 R0 K19 ["_messageReceivedConnection"]
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R3 R4 K20 ["resolve"]
       91 CALL                             R3 0 -1
       92 CLOSEUPVALS                      R1
       93 RETURN                           R3 -1

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
       11 GETTABLEKS                       R1 R0 K2 ["isActive"]
       13 LOADB                            R3 0
       14 NAMECALL                         R1 R1 K3 ["set"]
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R1 R0 K4 ["_wsClient"]
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETTABLEKS                       R1 R0 K4 ["_wsClient"]
       22 NAMECALL                         R1 R1 K5 ["Close"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K4 ["_wsClient"]
       28 GETTABLEKS                       R1 R0 K6 ["_messageReceivedConnection"]
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETTABLEKS                       R1 R0 K6 ["_messageReceivedConnection"]
       33 NAMECALL                         R1 R1 K7 ["Disconnect"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K6 ["_messageReceivedConnection"]
       39 GETIMPORT                        R1 K10 [table.clear]
       41 GETTABLEKS                       R2 R0 K11 ["_messageQueue"]
       43 CALL                             R1 1 0
       44 GETTABLEKS                       R2 R0 K12 ["transport"]
       46 GETTABLEKS                       R1 R2 K13 ["onTransportClose"]
       48 NAMECALL                         R1 R1 K14 ["Fire"]
       50 CALL                             R1 1 0
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R1 R2 K1 ["resolve"]
       54 CALL                             R1 0 -1
       55 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K9 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Promise"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Transport"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R9 R10 K10 ["Parent"]
       51 GETTABLEKS                       R8 R9 K14 ["WebSocketClientFactory"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Flags"]
       58 GETTABLEKS                       R9 R10 K16 ["FIntMCPWebSocketBackoff"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K18 [game]
       63 LOADK                            R11 K19 ["HttpService"]
       64 NAMECALL                         R9 R9 K20 ["GetService"]
       66 CALL                             R9 2 1
       67 NEWTABLE                         R10 8 0
       69 SETTABLEKS                       R10 R10 K21 ["__index"]
       71 GETTABLEKS                       R12 R2 K22 ["Logger"]
       73 GETTABLEKS                       R11 R12 K23 ["new"]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R12 R13 K24 ["Name"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K25 [PROTO_5]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R12 R10 K23 ["new"]
       88 DUPCLOSURE                       R12 K26 [PROTO_10]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R12 R10 K27 ["start"]
       93 DUPCLOSURE                       R12 K28 [PROTO_11]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R11
       96 SETTABLEKS                       R12 R10 K29 ["_processMessageQueue"]
       98 DUPCLOSURE                       R12 K30 [PROTO_12]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R11
      102 SETTABLEKS                       R12 R10 K31 ["send"]
      104 DUPCLOSURE                       R12 K32 [PROTO_13]
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R12 R10 K33 ["close"]
      108 RETURN                           R10 1
