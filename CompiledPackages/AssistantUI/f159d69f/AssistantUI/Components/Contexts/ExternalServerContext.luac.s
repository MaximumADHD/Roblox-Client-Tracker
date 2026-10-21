PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 DUPTABLE                         R1 K5 [{["error"] = "MCP Server not supported"}]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["error"]
       11 FASTCALL1                        TYPEOF R2 ; [+2]
       12 GETIMPORT                        R1 K1 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+7]
       17 DUPTABLE                         R1 K7 [{"error"}]
       18 GETTABLEKS                       R2 R0 K3 ["error"]
       20 SETTABLEKS                       R2 R1 K3 ["error"]
       22 RETURN                           R1 1
       23 GETTABLEKS                       R2 R0 K8 ["mcpServers"]
       25 FASTCALL1                        TYPEOF R2 ; [+2]
       26 GETIMPORT                        R1 K1 [typeof]
       28 CALL                             R1 1 1
       29 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
       31 RETURN                           R0 1
       32 DUPTABLE                         R1 K5 [{["error"] = "MCP Server not supported"}]
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["disconnect"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onConnect"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+21]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETIMPORT                        R1 K3 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K5 ["setPluginSetting"]
       23 LOADK                            R2 K6 ["Assistant-ExternalMCPEnabled"]
       24 LOADB                            R3 1
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["setPluginSetting"]
       12 LOADK                            R1 K4 ["Assistant-ExternalMCPEnabled"]
       13 LOADB                            R2 0
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantExternalMCPPluginSettingRedundancy"]
        3 JUMPIFNOT                        R0 ; [+40]
        4 LOADNIL                          R0
        5 GETIMPORT                        R1 K2 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 0
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R1 R0 K3 ["enabled"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["getPluginSetting"]
       19 LOADK                            R3 K5 ["Assistant-ExternalMCPEnabled"]
       20 CALL                             R2 1 1
       21 OR                               R4 R1 R2
       22 JUMPIFEQKB                       R4 TRUE ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 JUMPIFNOT                        R3 ; [+15]
       27 JUMPIFEQ                         R1 R2 ; [+14]
       29 JUMPIF                           R1 ; [+5]
       30 GETIMPORT                        R4 K2 [pcall]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          UPVAL U1
       34 CALL                             R4 1 0
       35 JUMPIF                           R2 ; [+6]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K6 ["setPluginSetting"]
       39 LOADK                            R5 K5 ["Assistant-ExternalMCPEnabled"]
       40 LOADB                            R6 1
       41 CALL                             R4 2 0
       42 CLOSEUPVALS                      R0
       43 RETURN                           R3 1
       44 GETUPVAL                         R0 1
       45 GETTABLEKS                       R0 R0 K7 ["getUserSettingsAsync"]
       47 LOADK                            R1 K8 ["mcp-server"]
       48 CALL                             R0 1 1
       49 JUMPIFNOT                        R0 ; [+3]
       50 GETTABLEKS                       R1 R0 K3 ["enabled"]
       52 JUMPIF                           R1 ; [+1]
       53 LOADB                            R1 0
       54 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["value"]
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupMCPServerAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K4 [{["error"] = "MCP Server not supported"}]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R0 K8 [{"state", "start", "stop", "isBusy", "setupInstructions", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["start"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["stop"]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K9 ["isProcessing"]
       13 SETTABLEKS                       R1 R0 K3 ["isBusy"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["setupInstructions"]
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K5 ["connectionCountObservable"]
       21 GETUPVAL                         R1 6
       22 SETTABLEKS                       R1 R0 K6 ["activeConnectionsObservable"]
       24 GETUPVAL                         R1 7
       25 SETTABLEKS                       R1 R0 K7 ["authRejectedObservable"]
       27 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["get"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["useState"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 2
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADK                            R8 K3 ["connected"]
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K4 ["disconnected"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R11 0 0
       32 CALL                             R9 2 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       36 NEWCLOSURE                       R11 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U3
       43 NEWTABLE                         R12 0 3
       45 MOVE                             R13 R4
       46 GETTABLEKS                       R14 R5 K6 ["run"]
       48 GETTABLEKS                       R15 R0 K7 ["onConnect"]
       50 SETLIST                          R12 R13 3 [1]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       56 NEWCLOSURE                       R12 P2
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R13 0 3
       64 MOVE                             R14 R4
       65 MOVE                             R15 R9
       66 GETTABLEKS                       R16 R5 K6 ["run"]
       68 SETLIST                          R13 R14 3 [1]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 4
       72 NEWCLOSURE                       R13 P3
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R4
       75 NEWTABLE                         R14 0 0
       77 CALL                             R12 2 1
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       81 NEWCLOSURE                       R14 P4
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R15 0 2
       86 MOVE                             R16 R12
       87 MOVE                             R17 R10
       88 SETLIST                          R15 R16 2 [1]
       90 CALL                             R13 2 0
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       94 NEWCLOSURE                       R14 P5
       95 CAPTURE                          VAL R9
       96 NEWTABLE                         R15 0 1
       98 MOVE                             R16 R9
       99 SETLIST                          R15 R16 1 [1]
      101 CALL                             R13 2 0
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K8 ["useEffect"]
      105 NEWCLOSURE                       R14 P6
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R7
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R15 0 0
      111 CALL                             R13 2 0
      112 GETTABLEKS                       R14 R3 K9 ["current"]
      114 JUMPIFNOT                        R14 ; [+5]
      115 GETTABLEKS                       R13 R3 K9 ["current"]
      117 GETTABLEKS                       R13 R13 K10 ["connectionCountObservable"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R13
      121 GETTABLEKS                       R15 R3 K9 ["current"]
      123 JUMPIFNOT                        R15 ; [+5]
      124 GETTABLEKS                       R14 R3 K9 ["current"]
      126 GETTABLEKS                       R14 R14 K11 ["activeConnectionsObservable"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R14
      130 GETUPVAL                         R16 3
      131 GETTABLEKS                       R16 R16 K12 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      133 JUMPIFNOT                        R16 ; [+8]
      134 GETTABLEKS                       R16 R3 K9 ["current"]
      136 JUMPIFNOT                        R16 ; [+5]
      137 GETTABLEKS                       R15 R3 K9 ["current"]
      139 GETTABLEKS                       R15 R15 K13 ["authRejectedObservable"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R15
      143 GETUPVAL                         R16 0
      144 GETTABLEKS                       R16 R16 K14 ["useMemo"]
      146 NEWCLOSURE                       R17 P7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 NEWTABLE                         R18 0 8
      157 MOVE                             R19 R8
      158 MOVE                             R20 R10
      159 MOVE                             R21 R11
      160 GETTABLEKS                       R22 R5 K15 ["isProcessing"]
      162 MOVE                             R23 R6
      163 MOVE                             R24 R13
      164 MOVE                             R25 R14
      165 MOVE                             R26 R15
      166 SETLIST                          R18 R19 8 [1]
      168 CALL                             R16 2 1
      169 GETUPVAL                         R17 6
      170 GETUPVAL                         R18 7
      171 GETTABLEKS                       R18 R18 K16 ["Provider"]
      173 DUPTABLE                         R19 K18 [{"value"}]
      174 SETTABLEKS                       R16 R19 K17 ["value"]
      176 GETTABLEKS                       R20 R0 K19 ["children"]
      178 CALL                             R17 3 -1
      179 RETURN                           R17 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       49 GETTABLEKS                       R8 R8 K15 ["useAsyncGuard"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R5 K16 ["useAsync"]
       54 GETTABLEKS                       R9 R4 K17 ["createElement"]
       56 DUPTABLE                         R10 K29 [{["state"] = "disconnected", ["isBusy"] = False, ["start"], ["stop"], ["setupInstructions"] = , ["connectionCountObservable"] = , ["activeConnectionsObservable"] = , ["authRejectedObservable"] = }]
       57 DUPCLOSURE                       R11 K30 [PROTO_0]
       58 SETTABLEKS                       R11 R10 K22 ["start"]
       60 DUPCLOSURE                       R11 K31 [PROTO_1]
       61 SETTABLEKS                       R11 R10 K23 ["stop"]
       63 GETTABLEKS                       R11 R4 K32 ["createContext"]
       65 MOVE                             R12 R10
       66 CALL                             R11 1 1
       67 DUPCLOSURE                       R12 K33 [PROTO_2]
       68 DUPCLOSURE                       R13 K34 [PROTO_21]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R11
       77 DUPCLOSURE                       R14 K35 [PROTO_22]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R11
       80 DUPTABLE                         R15 K39 [{"Context", "Provider", "useExternalServer"}]
       81 SETTABLEKS                       R11 R15 K36 ["Context"]
       83 SETTABLEKS                       R13 R15 K37 ["Provider"]
       85 SETTABLEKS                       R14 R15 K38 ["useExternalServer"]
       87 RETURN                           R15 1
