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
       17 GETTABLEKS                       R2 R0 K5 ["getHeadersAsync"]
       19 SETTABLEKS                       R2 R1 K6 ["_getHeadersAsync"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K7 ["_isStarted"]
       24 LOADB                            R2 0
       25 SETTABLEKS                       R2 R1 K8 ["_isClosing"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K9 ["_wsClient"]
       30 GETTABLEKS                       R2 R0 K10 ["retryDelay"]
       32 JUMPIF                           R2 ; [+2]
       33 GETUPVAL                         R2 1
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K11 ["_retryDelay"]
       37 NEWTABLE                         R2 0 0
       39 SETTABLEKS                       R2 R1 K12 ["_messageQueue"]
       41 LOADB                            R2 0
       42 SETTABLEKS                       R2 R1 K13 ["_isProcessingQueue"]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K14 ["new"]
       47 LOADB                            R3 0
       48 CALL                             R2 1 1
       49 SETTABLEKS                       R2 R1 K15 ["isActive"]
       51 LOADK                            R2 K16 ["ws-%*"]
       52 GETUPVAL                         R4 3
       53 LOADB                            R6 0
       54 NAMECALL                         R4 R4 K17 ["GenerateGUID"]
       56 CALL                             R4 2 1
       57 NAMECALL                         R2 R2 K18 ["format"]
       59 CALL                             R2 2 1
       60 GETUPVAL                         R3 4
       61 GETTABLEKS                       R3 R3 K19 ["makeTransport"]
       63 MOVE                             R4 R2
       64 DUPTABLE                         R5 K25 [{"start", "sendResponse", "sendNotification", "sendRequest", "close"}]
       65 NEWCLOSURE                       R6 P0
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R6 R5 K20 ["start"]
       69 NEWCLOSURE                       R6 P1
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R6 R5 K21 ["sendResponse"]
       73 NEWCLOSURE                       R6 P2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R6 R5 K22 ["sendNotification"]
       77 NEWCLOSURE                       R6 P3
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R6 R5 K23 ["sendRequest"]
       81 NEWCLOSURE                       R6 P4
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R6 R5 K24 ["close"]
       85 CALL                             R3 2 1
       86 SETTABLEKS                       R3 R1 K26 ["transport"]
       88 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isClosing"]
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
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["isActive"]
        8 LOADB                            R3 0
        9 NAMECALL                         R1 R1 K1 ["set"]
       11 CALL                             R1 2 0
       12 JUMPIFNOT                        R0 ; [+9]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["transport"]
       16 GETTABLEKS                       R1 R1 K3 ["onTransportError"]
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K4 ["Fire"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K5 ["_messageReceivedConnection"]
       25 JUMPIFNOT                        R1 ; [+10]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K5 ["_messageReceivedConnection"]
       29 NAMECALL                         R1 R1 K6 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 1
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K5 ["_messageReceivedConnection"]
       36 GETIMPORT                        R1 K9 [task.delay]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K10 ["_retryDelay"]
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
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["isActive"]
        8 LOADB                            R2 0
        9 NAMECALL                         R0 R0 K1 ["set"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["_messageReceivedConnection"]
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K2 ["_messageReceivedConnection"]
       19 NAMECALL                         R0 R0 K3 ["Disconnect"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["_messageReceivedConnection"]
       26 GETIMPORT                        R0 K6 [task.delay]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K7 ["_retryDelay"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U1
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActive"]
        3 LOADB                            R3 1
        4 NAMECALL                         R1 R1 K1 ["set"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["_messageQueue"]
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
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["reject"]
        6 LOADK                            R2 K2 ["%*: Cannot start, transport is closing."]
        7 GETTABLEKS                       R4 R0 K3 ["name"]
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+39]
       17 GETTABLEKS                       R1 R0 K5 ["_isStarted"]
       19 JUMPIFNOT                        R1 ; [+11]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K1 ["reject"]
       23 LOADK                            R2 K6 ["%*: Already started."]
       24 GETTABLEKS                       R4 R0 K3 ["name"]
       26 NAMECALL                         R2 R2 K4 ["format"]
       28 CALL                             R2 2 1
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K5 ["_isStarted"]
       34 NAMECALL                         R1 R0 K7 ["_connect"]
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K0 ["_isClosing"]
       39 JUMPIFNOT                        R1 ; [+11]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K1 ["reject"]
       43 LOADK                            R2 K2 ["%*: Cannot start, transport is closing."]
       44 GETTABLEKS                       R4 R0 K3 ["name"]
       46 NAMECALL                         R2 R2 K4 ["format"]
       48 CALL                             R2 2 1
       49 CALL                             R1 1 -1
       50 RETURN                           R1 -1
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K8 ["resolve"]
       54 CALL                             R1 0 -1
       55 RETURN                           R1 -1
       56 GETTABLEKS                       R1 R0 K9 ["_wsClient"]
       58 JUMPIFNOT                        R1 ; [+11]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K1 ["reject"]
       62 LOADK                            R2 K6 ["%*: Already started."]
       63 GETTABLEKS                       R4 R0 K3 ["name"]
       65 NAMECALL                         R2 R2 K4 ["format"]
       67 CALL                             R2 2 1
       68 CALL                             R1 1 -1
       69 RETURN                           R1 -1
       70 GETTABLEKS                       R2 R0 K10 ["_getHeadersAsync"]
       72 JUMPIFNOT                        R2 ; [+4]
       73 GETTABLEKS                       R1 R0 K10 ["_getHeadersAsync"]
       75 CALL                             R1 0 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R1
       78 GETTABLEKS                       R2 R0 K0 ["_isClosing"]
       80 JUMPIFNOT                        R2 ; [+11]
       81 GETUPVAL                         R2 0
       82 GETTABLEKS                       R2 R2 K1 ["reject"]
       84 LOADK                            R3 K2 ["%*: Cannot start, transport is closing."]
       85 GETTABLEKS                       R5 R0 K3 ["name"]
       87 NAMECALL                         R3 R3 K4 ["format"]
       89 CALL                             R3 2 1
       90 CALL                             R2 1 -1
       91 RETURN                           R2 -1
       92 GETTABLEKS                       R2 R0 K9 ["_wsClient"]
       94 JUMPIFNOT                        R2 ; [+11]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R2 R2 K1 ["reject"]
       98 LOADK                            R3 K6 ["%*: Already started."]
       99 GETTABLEKS                       R5 R0 K3 ["name"]
      101 NAMECALL                         R3 R3 K4 ["format"]
      103 CALL                             R3 2 1
      104 CALL                             R2 1 -1
      105 RETURN                           R2 -1
      106 GETUPVAL                         R2 2
      107 GETTABLEKS                       R2 R2 K11 ["createWebSocketClient"]
      109 DUPTABLE                         R3 K14 [{"Url", "Headers"}]
      110 GETTABLEKS                       R4 R0 K15 ["url"]
      112 SETTABLEKS                       R4 R3 K12 ["Url"]
      114 SETTABLEKS                       R1 R3 K13 ["Headers"]
      116 CALL                             R2 1 1
      117 SETTABLEKS                       R2 R0 K9 ["_wsClient"]
      119 GETTABLEKS                       R3 R0 K9 ["_wsClient"]
      121 LOADK                            R4 K16 ["%*: Failed to create WebStreamClient."]
      122 GETTABLEKS                       R6 R0 K3 ["name"]
      124 NAMECALL                         R4 R4 K4 ["format"]
      126 CALL                             R4 2 1
      127 FASTCALL2                        ASSERT R3 R4 ; [+3]
      129 GETIMPORT                        R2 K18 [assert]
      131 CALL                             R2 2 0
      132 LOADB                            R2 0
      133 NEWCLOSURE                       R3 P0
      134 CAPTURE                          REF R2
      135 CAPTURE                          VAL R0
      136 GETTABLEKS                       R4 R0 K9 ["_wsClient"]
      138 GETTABLEKS                       R4 R4 K19 ["Error"]
      140 MOVE                             R6 R3
      141 NAMECALL                         R4 R4 K20 ["Once"]
      143 CALL                             R4 2 0
      144 GETTABLEKS                       R4 R0 K9 ["_wsClient"]
      146 GETTABLEKS                       R4 R4 K21 ["Closed"]
      148 NEWCLOSURE                       R6 P1
      149 CAPTURE                          REF R2
      150 CAPTURE                          VAL R0
      151 NAMECALL                         R4 R4 K20 ["Once"]
      153 CALL                             R4 2 0
      154 GETTABLEKS                       R4 R0 K9 ["_wsClient"]
      156 GETTABLEKS                       R4 R4 K22 ["MessageReceived"]
      158 NEWCLOSURE                       R6 P2
      159 CAPTURE                          VAL R0
      160 NAMECALL                         R4 R4 K23 ["Connect"]
      162 CALL                             R4 2 1
      163 SETTABLEKS                       R4 R0 K24 ["_messageReceivedConnection"]
      165 GETUPVAL                         R4 0
      166 GETTABLEKS                       R4 R4 K8 ["resolve"]
      168 CALL                             R4 0 -1
      169 CLOSEUPVALS                      R2
      170 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_getHeadersAsync"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["_getHeadersAsync"]
        7 CALL                             R0 0 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["_isClosing"]
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K2 ["createWebSocketClient"]
       19 DUPTABLE                         R2 K5 [{"Url", "Headers"}]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K6 ["url"]
       23 SETTABLEKS                       R3 R2 K3 ["Url"]
       25 SETTABLEKS                       R0 R2 K4 ["Headers"]
       27 CALL                             R1 1 1
       28 LOADK                            R4 K7 ["%*: Failed to create WebStreamClient."]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K8 ["name"]
       32 NAMECALL                         R4 R4 K9 ["format"]
       34 CALL                             R4 2 1
       35 FASTCALL2                        ASSERT R1 R4 ; [+4]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K11 [assert]
       40 CALL                             R2 2 0
       41 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+9]
        7 FASTCALL1                        TOSTRING R2 ; [+3]
        8 MOVE                             R6 R2
        9 GETIMPORT                        R5 K3 [tostring]
       11 CALL                             R5 1 1
       12 NAMECALL                         R3 R0 K4 ["_scheduleRetry"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R2 ; [+4]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R0 K5 ["_attachClient"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_isClosing"]
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["_wsClient"]
        7 GETUPVAL                         R2 1
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K1 ["_wsClient"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["_messageReceivedConnection"]
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K2 ["_messageReceivedConnection"]
       22 NAMECALL                         R1 R1 K3 ["Disconnect"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K2 ["_messageReceivedConnection"]
       29 GETUPVAL                         R1 0
       30 MOVE                             R3 R0
       31 NAMECALL                         R1 R1 K4 ["_scheduleRetry"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+5]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [tostring]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["_isClosing"]
       10 JUMPIF                           R3 ; [+30]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["_wsClient"]
       14 GETUPVAL                         R4 1
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 0
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R3 K3 ["_wsClient"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["_messageReceivedConnection"]
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K4 ["_messageReceivedConnection"]
       29 NAMECALL                         R3 R3 K5 ["Disconnect"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 0
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K4 ["_messageReceivedConnection"]
       36 GETUPVAL                         R3 0
       37 MOVE                             R5 R2
       38 NAMECALL                         R3 R3 K6 ["_scheduleRetry"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isClosing"]
        3 JUMPIF                           R0 ; [+30]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_wsClient"]
        7 GETUPVAL                         R1 1
        8 JUMPIFEQ                         R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K1 ["_wsClient"]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K2 ["_messageReceivedConnection"]
       18 JUMPIFNOT                        R0 ; [+10]
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K2 ["_messageReceivedConnection"]
       22 NAMECALL                         R0 R0 K3 ["Disconnect"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K2 ["_messageReceivedConnection"]
       29 GETUPVAL                         R0 0
       30 LOADNIL                          R2
       31 NAMECALL                         R0 R0 K4 ["_scheduleRetry"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isActive"]
        3 LOADB                            R3 1
        4 NAMECALL                         R1 R1 K1 ["set"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["_messageQueue"]
       10 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 NAMECALL                         R1 R1 K6 ["_processMessageQueue"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R1 R0 K0 ["_wsClient"]
        5 GETTABLEKS                       R3 R1 K1 ["Error"]
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R3 K2 ["Once"]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R1 K3 ["Closed"]
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R3 R3 K2 ["Once"]
       20 CALL                             R3 2 0
       21 GETTABLEKS                       R3 R1 K4 ["MessageReceived"]
       23 NEWCLOSURE                       R5 P3
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R3 K5 ["Connect"]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R0 K6 ["_messageReceivedConnection"]
       30 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isClosing"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_connect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["isActive"]
        6 LOADB                            R4 0
        7 NAMECALL                         R2 R2 K2 ["set"]
        9 CALL                             R2 2 0
       10 JUMPIFNOT                        R1 ; [+14]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K3 ["Reconnecting after error:"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K4 ["warn"]
       16 CALL                             R2 3 0
       17 GETTABLEKS                       R2 R0 K5 ["transport"]
       19 GETTABLEKS                       R2 R2 K6 ["onTransportError"]
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K7 ["Fire"]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K10 [task.delay]
       27 GETTABLEKS                       R3 R0 K11 ["_retryDelay"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R0
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_20:
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
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["decode"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K9 ["Received data:"]
       33 MOVE                             R6 R2
       34 NAMECALL                         R3 R3 K10 ["log"]
       36 CALL                             R3 3 0
       37 GETTABLEKS                       R3 R0 K11 ["transport"]
       39 GETTABLEKS                       R3 R3 K12 ["onTransportMessage"]
       41 MOVE                             R5 R2
       42 NAMECALL                         R3 R3 K13 ["Fire"]
       44 CALL                             R3 2 0
       45 JUMPBACK                         ; [-39]
       46 LOADB                            R1 0
       47 SETTABLEKS                       R1 R0 K0 ["_isProcessingQueue"]
       49 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_isClosing"]
        2 JUMPIF                           R3 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["_wsClient"]
        5 JUMPIF                           R3 ; [+11]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["reject"]
        9 LOADK                            R4 K3 ["%*: Not connected."]
       10 GETTABLEKS                       R6 R0 K4 ["name"]
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["encode"]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 2
       23 LOADK                            R6 K7 ["Sending data:"]
       24 MOVE                             R7 R3
       25 NAMECALL                         R4 R4 K8 ["log"]
       27 CALL                             R4 3 0
       28 GETTABLEKS                       R4 R0 K1 ["_wsClient"]
       30 MOVE                             R7 R3
       31 NAMECALL                         R5 R4 K9 ["Send"]
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K10 ["resolve"]
       37 CALL                             R5 0 -1
       38 RETURN                           R5 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_isClosing"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["resolve"]
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
       44 GETTABLEKS                       R1 R0 K12 ["transport"]
       46 GETTABLEKS                       R1 R1 K13 ["onTransportClose"]
       48 NAMECALL                         R1 R1 K14 ["Fire"]
       50 CALL                             R1 1 0
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K1 ["resolve"]
       54 CALL                             R1 0 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Json"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Logging"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Promise"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Transport"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K10 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["WebSocketClientFactory"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Flags"]
       58 GETTABLEKS                       R9 R9 K16 ["FFlagMCPWebSocketRetryOnStartError"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K15 ["Flags"]
       65 GETTABLEKS                       R10 R10 K17 ["FIntMCPWebSocketBackoff"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K19 [game]
       70 LOADK                            R12 K20 ["HttpService"]
       71 NAMECALL                         R10 R10 K21 ["GetService"]
       73 CALL                             R10 2 1
       74 NEWTABLE                         R11 16 0
       76 SETTABLEKS                       R11 R11 K22 ["__index"]
       78 GETTABLEKS                       R12 R2 K23 ["Logger"]
       80 GETTABLEKS                       R12 R12 K24 ["new"]
       82 GETIMPORT                        R13 K1 [script]
       84 GETTABLEKS                       R13 R13 K25 ["Name"]
       86 CALL                             R12 1 1
       87 DUPCLOSURE                       R13 K26 [PROTO_5]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R13 R11 K24 ["new"]
       95 DUPCLOSURE                       R13 K27 [PROTO_10]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R13 R11 K28 ["start"]
      101 DUPCLOSURE                       R13 K29 [PROTO_12]
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R13 R11 K30 ["_connect"]
      105 DUPCLOSURE                       R13 K31 [PROTO_17]
      106 SETTABLEKS                       R13 R11 K32 ["_attachClient"]
      108 DUPCLOSURE                       R13 K33 [PROTO_19]
      109 CAPTURE                          VAL R12
      110 SETTABLEKS                       R13 R11 K34 ["_scheduleRetry"]
      112 DUPCLOSURE                       R13 K35 [PROTO_20]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R12
      115 SETTABLEKS                       R13 R11 K36 ["_processMessageQueue"]
      117 DUPCLOSURE                       R13 K37 [PROTO_21]
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R12
      121 SETTABLEKS                       R13 R11 K38 ["send"]
      123 DUPCLOSURE                       R13 K39 [PROTO_22]
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R13 R11 K40 ["close"]
      127 RETURN                           R11 1
