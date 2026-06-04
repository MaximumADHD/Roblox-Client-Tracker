PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["[core/backend] %*"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETVARARGS                       R3 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+9]
        3 GETIMPORT                        R0 K2 [task.delay]
        5 LOADN                            R1 2
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Socket.on('close')"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["shutdown"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["reportFailedDevtoolsConnection"]
       13 LOADK                            R1 K3 ["socket_closed"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 JUMPIFNOTEQKNIL                  R0 ; [+9]
       18 GETIMPORT                        R0 K6 [task.delay]
       20 LOADN                            R1 2
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CALL                             R0 2 1
       25 SETUPVAL                         R0 3
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R1 ; [+2]
        2 GETIMPORT                        R0 K1 [type]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["string"] ; [+11]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 2
       13 LOADK                            R2 K4 ["Socket.on('message')"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 1
       17 GETIMPORT                        R0 K6 [error]
       19 LOADK                            R2 K7 ["Bad data received from socket: %* (of type %*)"]
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R6 0
       22 FASTCALL1                        TYPEOF R6 ; [+2]
       23 GETIMPORT                        R5 K9 [typeof]
       25 CALL                             R5 1 1
       26 NAMECALL                         R2 R2 K10 ["format"]
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+11]
        8 GETIMPORT                        R3 K3 [error]
       10 LOADK                            R5 K4 ["[React DevTools] Failed to parse JSON: %* (got error: %*)"]
       11 GETTABLEKS                       R7 R0 K5 ["data"]
       13 MOVE                             R8 R2
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETIMPORT                        R8 K1 [pcall]
       25 MOVE                             R9 R7
       26 MOVE                             R10 R2
       27 CALL                             R8 2 2
       28 JUMPIF                           R8 ; [+10]
       29 GETIMPORT                        R10 K3 [error]
       31 LOADK                            R12 K7 ["[React DevTools] Error calling listener with data: %*\n%*"]
       32 MOVE                             R14 R2
       33 MOVE                             R15 R9
       34 NAMECALL                         R12 R12 K6 ["format"]
       36 CALL                             R12 3 1
       37 MOVE                             R11 R12
       38 CALL                             R10 1 0
       39 FORGLOOP                         R3 2 ; [-17]
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["CreateWebStreamClientInternal"]
        7 GETUPVAL                         R2 1
        8 GETIMPORT                        R3 K6 [Enum.WebStreamClientType.WebSocket]
       10 DUPTABLE                         R4 K8 [{"Url"}]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K7 ["Url"]
       14 CALL                             R0 4 2
       15 JUMPIFNOT                        R0 ; [+1]
       16 RETURN                           R1 1
       17 GETUPVAL                         R2 1
       18 GETIMPORT                        R4 K6 [Enum.WebStreamClientType.WebSocket]
       20 DUPTABLE                         R5 K8 [{"Url"}]
       21 GETUPVAL                         R6 2
       22 SETTABLEKS                       R6 R5 K7 ["Url"]
       24 NAMECALL                         R2 R2 K9 ["CreateWebStreamClient"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1
       28 GETIMPORT                        R0 K11 [game]
       30 LOADK                            R2 K12 ["WebSocketService"]
       31 NAMECALL                         R0 R0 K13 ["GetService"]
       33 CALL                             R0 2 1
       34 GETUPVAL                         R3 2
       35 NAMECALL                         R1 R0 K14 ["CreateClient"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+3]
        2 GETIMPORT                        R3 K3 [Enum.WebStreamClientState.Open]
        4 JUMP                             ; [+2]
        5 GETIMPORT                        R3 K5 [Enum.WebSocketState.Open]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K6 ["ConnectionState"]
       10 JUMPIFNOTEQ                      R4 R3 ; [+65]
       12 GETUPVAL                         R4 2
       13 LOADK                            R5 K7 ["wall.send()"]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 CALL                             R4 3 0
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 GETIMPORT                        R4 K9 [newproxy]
       23 CALL                             R4 0 1
       24 JUMPIFNOTEQKS                    R0 K10 ["inspectedElement"] ; [+37]
       26 GETTABLEKS                       R5 R1 K11 ["type"]
       28 JUMPIFNOTEQKS                    R5 K12 ["full-data"] ; [+33]
       30 DUPTABLE                         R5 K24 [{"displayName", "context", "hooks", "props", "state", "key", "owners", "source", "rootType", "rendererPackageName", "rendererVersion"}]
       31 SETTABLEKS                       R4 R5 K13 ["displayName"]
       33 SETTABLEKS                       R4 R5 K14 ["context"]
       35 SETTABLEKS                       R4 R5 K15 ["hooks"]
       37 SETTABLEKS                       R4 R5 K16 ["props"]
       39 SETTABLEKS                       R4 R5 K17 ["state"]
       41 SETTABLEKS                       R4 R5 K18 ["key"]
       43 SETTABLEKS                       R4 R5 K19 ["owners"]
       45 SETTABLEKS                       R4 R5 K20 ["source"]
       47 SETTABLEKS                       R4 R5 K21 ["rootType"]
       49 SETTABLEKS                       R4 R5 K22 ["rendererPackageName"]
       51 SETTABLEKS                       R4 R5 K23 ["rendererVersion"]
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K25 ["assign"]
       56 MOVE                             R7 R5
       57 GETTABLEKS                       R8 R1 K26 ["value"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R1 K26 ["value"]
       62 GETUPVAL                         R5 1
       63 GETUPVAL                         R7 5
       64 DUPTABLE                         R9 K29 [{"event", "payload"}]
       65 SETTABLEKS                       R0 R9 K27 ["event"]
       67 SETTABLEKS                       R1 R9 K28 ["payload"]
       69 NAMECALL                         R7 R7 K30 ["JSONEncode"]
       71 CALL                             R7 2 -1
       72 NAMECALL                         R5 R5 K31 ["Send"]
       74 CALL                             R5 -1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R4 2
       77 LOADK                            R5 K7 ["wall.send()"]
       78 LOADK                            R6 K32 ["Shutting down bridge because of closed WebSocket connection"]
       79 CALL                             R4 2 0
       80 GETUPVAL                         R4 6
       81 JUMPIFEQKNIL                     R4 ; [+5]
       83 GETUPVAL                         R4 6
       84 NAMECALL                         R4 R4 K33 ["shutdown"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 7
       88 JUMPIFNOTEQKNIL                  R4 ; [+9]
       90 GETIMPORT                        R4 K36 [task.delay]
       92 LOADN                            R5 2
       93 NEWCLOSURE                       R6 P0
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U9
       96 CALL                             R4 2 1
       97 SETUPVAL                         R4 7
       98 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R0 K1 ["rendererID"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+25]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["_rendererInterfaces"]
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFEQKNIL                     R3 ; [+20]
       12 GETTABLEKS                       R4 R3 K3 ["findNativeNodesForFiberID"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 JUMPIFEQKNIL                     R4 ; [+14]
       18 GETIMPORT                        R5 K5 [next]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 JUMPIFEQKNIL                     R5 ; [+8]
       24 GETTABLEN                        R5 R4 1
       25 GETUPVAL                         R6 0
       26 LOADK                            R8 K6 ["showNativeHighlight"]
       27 MOVE                             R9 R5
       28 NAMECALL                         R6 R6 K7 ["emit"]
       30 CALL                             R6 3 0
       31 RETURN                           R0 0

PROTO_12:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["shutdown"]
        2 NAMECALL                         R0 R0 K1 ["emit"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"listen", "send"}]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K1 ["listen"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 CAPTURE                          UPVAL U11
       19 SETTABLEKS                       R2 R1 K2 ["send"]
       21 CALL                             R0 1 1
       22 SETUPVAL                         R0 0
       23 GETUPVAL                         R1 0
       24 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       26 LOADK                            R2 K4 ["Luau"]
       27 GETIMPORT                        R0 K6 [assert]
       29 CALL                             R0 2 0
       30 GETUPVAL                         R0 0
       31 LOADK                            R2 K7 ["inspectElement"]
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          UPVAL U12
       34 NAMECALL                         R0 R0 K8 ["addListener"]
       36 CALL                             R0 3 0
       37 GETUPVAL                         R0 0
       38 LOADK                            R2 K9 ["updateComponentFilters"]
       39 NEWCLOSURE                       R3 P3
       40 CAPTURE                          UPVAL U13
       41 NAMECALL                         R0 R0 K8 ["addListener"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 14
       45 GETTABLEKS                       R0 R0 K10 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
       47 JUMPIFNOTEQKNIL                  R0 ; [+7]
       49 GETUPVAL                         R0 0
       50 LOADK                            R2 K11 ["overrideComponentFilters"]
       51 GETUPVAL                         R3 13
       52 NAMECALL                         R0 R0 K2 ["send"]
       54 CALL                             R0 3 0
       55 GETUPVAL                         R0 15
       56 GETTABLEKS                       R0 R0 K0 ["new"]
       58 GETUPVAL                         R1 0
       59 CALL                             R0 1 1
       60 SETUPVAL                         R0 12
       61 GETUPVAL                         R0 12
       62 LOADK                            R2 K12 ["shutdown"]
       63 DUPCLOSURE                       R3 K13 [PROTO_13]
       64 CAPTURE                          UPVAL U16
       65 NAMECALL                         R0 R0 K8 ["addListener"]
       67 CALL                             R0 3 0
       68 GETUPVAL                         R0 17
       69 GETUPVAL                         R1 16
       70 GETUPVAL                         R2 12
       71 GETUPVAL                         R3 14
       72 CALL                             R0 3 0
       73 GETUPVAL                         R0 18
       74 GETTABLEKS                       R0 R0 K14 ["reportNewDevtoolsConnection"]
       76 CALL                             R0 0 0
       77 GETUPVAL                         R0 11
       78 GETTABLEKS                       R0 R0 K15 ["profileOnStart"]
       80 JUMPIFNOT                        R0 ; [+4]
       81 GETUPVAL                         R0 12
       82 NAMECALL                         R0 R0 K16 ["startProfiling"]
       84 CALL                             R0 1 0
       85 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 MOVE                             R1 R0
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R3 R1 K1 ["host"]
       10 ORK                              R2 R3 K0 ["localhost"]
       11 GETTABLEKS                       R4 R1 K2 ["useHttps"]
       13 JUMPIFNOTEQKNIL                  R4 ; [+3]
       15 LOADB                            R3 0
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R3 R1 K2 ["useHttps"]
       19 GETTABLEKS                       R5 R1 K4 ["port"]
       21 ORK                              R4 R5 K3 [8097]
       22 GETTABLEKS                       R5 R1 K5 ["isAppActive"]
       24 JUMPIF                           R5 ; [+1]
       25 DUPCLOSURE                       R5 K6 [PROTO_1]
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADK                            R6 K7 ["wss"]
       28 JUMP                             ; [+1]
       29 LOADK                            R6 K8 ["ws"]
       30 LOADNIL                          R7
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          REF R7
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R1
       35 MOVE                             R9 R5
       36 CALL                             R9 0 1
       37 JUMPIF                           R9 ; [+12]
       38 JUMPIFNOTEQKNIL                  R7 ; [+9]
       40 GETIMPORT                        R9 K11 [task.delay]
       42 LOADN                            R10 2
       43 NEWCLOSURE                       R11 P2
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R1
       46 CALL                             R9 2 1
       47 MOVE                             R7 R9
       48 CLOSEUPVALS                      R7
       49 RETURN                           R0 0
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 NEWTABLE                         R11 0 0
       54 LOADK                            R13 K12 ["%*://%*:%*"]
       55 MOVE                             R15 R6
       56 MOVE                             R16 R2
       57 MOVE                             R17 R4
       58 NAMECALL                         R13 R13 K13 ["format"]
       60 CALL                             R13 4 1
       61 MOVE                             R12 R13
       62 NEWCLOSURE                       R13 P3
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          REF R9
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          REF R7
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R1
       69 NEWCLOSURE                       R14 P4
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R11
       73 GETIMPORT                        R15 K15 [pcall]
       75 NEWCLOSURE                       R16 P5
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R12
       79 CALL                             R15 1 2
       80 JUMPIFNOTEQKB                    R15 FALSE ; [+28]
       82 GETIMPORT                        R17 K17 [warn]
       84 LOADK                            R19 K18 ["[React DevTools] Could not connect to DevTools. Attempted to connect to \"%*\" (%*)"]
       85 MOVE                             R21 R12
       86 MOVE                             R22 R16
       87 NAMECALL                         R19 R19 K13 ["format"]
       89 CALL                             R19 3 1
       90 MOVE                             R18 R19
       91 CALL                             R17 1 0
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R17 R17 K19 ["reportFailedDevtoolsConnection"]
       95 LOADK                            R18 K20 ["create_client_failed"]
       96 CALL                             R17 1 0
       97 JUMPIFNOTEQKNIL                  R7 ; [+9]
       99 GETIMPORT                        R17 K11 [task.delay]
      101 LOADN                            R18 2
      102 NEWCLOSURE                       R19 P2
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          VAL R1
      105 CALL                             R17 2 1
      106 MOVE                             R7 R17
      107 CLOSEUPVALS                      R7
      108 RETURN                           R0 0
      109 GETTABLEKS                       R17 R16 K21 ["Closed"]
      111 MOVE                             R19 R13
      112 NAMECALL                         R17 R17 K22 ["Connect"]
      114 CALL                             R17 2 0
      115 GETTABLEKS                       R17 R16 K23 ["MessageReceived"]
      117 MOVE                             R19 R14
      118 NAMECALL                         R17 R17 K22 ["Connect"]
      120 CALL                             R17 2 0
      121 GETTABLEKS                       R17 R16 K24 ["Opened"]
      123 NEWCLOSURE                       R19 P6
      124 CAPTURE                          REF R9
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R11
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R16
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          REF R7
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R1
      136 CAPTURE                          REF R10
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          UPVAL U10
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          UPVAL U12
      142 CAPTURE                          UPVAL U3
      143 NAMECALL                         R17 R17 K22 ["Connect"]
      145 CALL                             R17 2 0
      146 CLOSEUPVALS                      R7
      147 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["ReactGlobals"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["ReactDevtoolsShared"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["ReactTelemetry"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R1 K12 ["LuauPolyfill"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R1 K13 ["SafeFlags"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R5 K14 ["Object"]
       40 GETTABLEKS                       R8 R3 K15 ["backend"]
       42 GETTABLEKS                       R8 R8 K16 ["agent"]
       44 GETTABLEKS                       R9 R3 K17 ["bridge"]
       46 GETTABLEKS                       R10 R3 K18 ["hook"]
       48 GETTABLEKS                       R10 R10 K19 ["installHook"]
       50 GETTABLEKS                       R11 R3 K15 ["backend"]
       52 GETTABLEKS                       R11 R11 K20 ["initBackend"]
       54 GETTABLEKS                       R12 R3 K21 ["constants"]
       56 GETTABLEKS                       R12 R12 K22 ["__DEBUG__"]
       58 GETTABLEKS                       R13 R3 K23 ["utils"]
       60 GETTABLEKS                       R13 R13 K24 ["getDefaultComponentFilters"]
       62 GETIMPORT                        R14 K8 [require]
       64 GETIMPORT                        R15 K5 [script]
       66 GETTABLEKS                       R15 R15 K6 ["Parent"]
       68 GETTABLEKS                       R15 R15 K23 ["utils"]
       70 GETTABLEKS                       R15 R15 K25 ["serializeTable"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R6 K26 ["createGetFFlag"]
       75 LOADK                            R16 K27 ["ReactDevtoolsUseHttpWebStream"]
       76 CALL                             R15 1 1
       77 CALL                             R15 0 1
       78 GETIMPORT                        R16 K8 [require]
       80 GETIMPORT                        R17 K5 [script]
       82 GETTABLEKS                       R17 R17 K6 ["Parent"]
       84 GETTABLEKS                       R17 R17 K28 ["setupAttachHook"]
       86 CALL                             R16 1 0
       87 MOVE                             R16 R10
       88 MOVE                             R17 R2
       89 CALL                             R16 1 1
       90 MOVE                             R17 R13
       91 CALL                             R17 0 1
       92 DUPCLOSURE                       R18 K29 [PROTO_0]
       93 CAPTURE                          VAL R12
       94 NEWCLOSURE                       R19 P1
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R19
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R7
      104 CAPTURE                          REF R17
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R11
      108 DUPTABLE                         R20 K31 [{"connectToDevtools"}]
      109 SETTABLEKS                       R19 R20 K30 ["connectToDevtools"]
      111 CLOSEUPVALS                      R17
      112 RETURN                           R20 1
