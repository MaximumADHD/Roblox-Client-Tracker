PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+6]
        7 DUPTABLE                         R1 K4 [{"error"}]
        8 LOADK                            R2 K5 ["MCP Server not supported"]
        9 SETTABLEKS                       R2 R1 K3 ["error"]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R2 R0 K3 ["error"]
       14 FASTCALL1                        TYPEOF R2 ; [+2]
       15 GETIMPORT                        R1 K1 [typeof]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+7]
       20 DUPTABLE                         R1 K4 [{"error"}]
       21 GETTABLEKS                       R2 R0 K3 ["error"]
       23 SETTABLEKS                       R2 R1 K3 ["error"]
       25 RETURN                           R1 1
       26 GETTABLEKS                       R2 R0 K7 ["mcpServers"]
       28 FASTCALL1                        TYPEOF R2 ; [+2]
       29 GETIMPORT                        R1 K1 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
       34 RETURN                           R0 1
       35 DUPTABLE                         R1 K4 [{"error"}]
       36 LOADK                            R2 K5 ["MCP Server not supported"]
       37 SETTABLEKS                       R2 R1 K3 ["error"]
       39 RETURN                           R1 1

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
        1 GETTABLEKS                       R0 R0 K0 ["onConnect"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["setUserSettingsAsync"]
       14 LOADK                            R2 K3 ["mcp-server"]
       15 NEWTABLE                         R3 1 0
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K4 ["enabled"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_5:
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
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["enabled"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADB                            R1 0
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["value"]
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupMCPServerAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K3 [{"error"}]
        8 LOADK                            R4 K4 ["MCP Server not supported"]
        9 SETTABLEKS                       R4 R3 K2 ["error"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_16:
        0 DUPTABLE                         R0 K6 [{"state", "start", "stop", "isBusy", "setupInstructions", "connectionCountObservable"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["start"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["stop"]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K7 ["isProcessing"]
       13 SETTABLEKS                       R1 R0 K3 ["isBusy"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["setupInstructions"]
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K5 ["connectionCountObservable"]
       21 RETURN                           R0 1

PROTO_17:
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
       42 NEWTABLE                         R12 0 3
       44 MOVE                             R13 R4
       45 GETTABLEKS                       R14 R5 K6 ["run"]
       47 GETTABLEKS                       R15 R0 K7 ["onConnect"]
       49 SETLIST                          R12 R13 3 [1]
       51 CALL                             R10 2 1
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 NEWTABLE                         R13 0 3
       62 MOVE                             R14 R4
       63 MOVE                             R15 R9
       64 GETTABLEKS                       R16 R5 K6 ["run"]
       66 SETLIST                          R13 R14 3 [1]
       68 CALL                             R11 2 1
       69 GETUPVAL                         R12 3
       70 NEWCLOSURE                       R13 P3
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R14 0 0
       74 CALL                             R12 2 1
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       78 NEWCLOSURE                       R14 P4
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R15 0 2
       83 MOVE                             R16 R12
       84 MOVE                             R17 R10
       85 SETLIST                          R15 R16 2 [1]
       87 CALL                             R13 2 0
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       91 NEWCLOSURE                       R14 P5
       92 CAPTURE                          VAL R9
       93 NEWTABLE                         R15 0 1
       95 MOVE                             R16 R9
       96 SETLIST                          R15 R16 1 [1]
       98 CALL                             R13 2 0
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R13 R13 K8 ["useEffect"]
      102 NEWCLOSURE                       R14 P6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 CAPTURE                          UPVAL U4
      106 NEWTABLE                         R15 0 0
      108 CALL                             R13 2 0
      109 GETTABLEKS                       R14 R3 K9 ["current"]
      111 JUMPIFNOT                        R14 ; [+5]
      112 GETTABLEKS                       R13 R3 K9 ["current"]
      114 GETTABLEKS                       R13 R13 K10 ["connectionCountObservable"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R13
      118 LOADNIL                          R14
      119 GETUPVAL                         R15 5
      120 CALL                             R15 0 1
      121 JUMPIFNOT                        R15 ; [+24]
      122 GETUPVAL                         R15 0
      123 GETTABLEKS                       R15 R15 K11 ["useMemo"]
      125 NEWCLOSURE                       R16 P7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R13
      132 NEWTABLE                         R17 0 6
      134 MOVE                             R18 R8
      135 MOVE                             R19 R10
      136 MOVE                             R20 R11
      137 GETTABLEKS                       R21 R5 K12 ["isProcessing"]
      139 MOVE                             R22 R6
      140 MOVE                             R23 R13
      141 SETLIST                          R17 R18 6 [1]
      143 CALL                             R15 2 1
      144 MOVE                             R14 R15
      145 JUMP                             ; [+16]
      146 DUPTABLE                         R15 K18 [{"state", "start", "stop", "isBusy", "setupInstructions", "connectionCountObservable"}]
      147 SETTABLEKS                       R8 R15 K13 ["state"]
      149 SETTABLEKS                       R10 R15 K14 ["start"]
      151 SETTABLEKS                       R11 R15 K15 ["stop"]
      153 GETTABLEKS                       R16 R5 K12 ["isProcessing"]
      155 SETTABLEKS                       R16 R15 K16 ["isBusy"]
      157 SETTABLEKS                       R6 R15 K17 ["setupInstructions"]
      159 SETTABLEKS                       R13 R15 K10 ["connectionCountObservable"]
      161 MOVE                             R14 R15
      162 GETUPVAL                         R15 6
      163 GETUPVAL                         R16 7
      164 GETTABLEKS                       R16 R16 K19 ["Provider"]
      166 DUPTABLE                         R17 K21 [{"value"}]
      167 SETTABLEKS                       R14 R17 K20 ["value"]
      169 GETTABLEKS                       R18 R0 K22 ["children"]
      171 CALL                             R15 3 -1
      172 RETURN                           R15 -1

PROTO_18:
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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       44 GETTABLEKS                       R7 R7 K14 ["useAsyncGuard"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R8 K16 ["FFlagAssistantUseMemoizedContextValues"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K17 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["Observable"]
       58 GETTABLEKS                       R9 R4 K19 ["useAsync"]
       60 GETTABLEKS                       R10 R3 K20 ["createElement"]
       62 DUPTABLE                         R11 K27 [{"state", "isBusy", "start", "stop", "setupInstructions", "connectionCountObservable"}]
       63 LOADK                            R12 K28 ["disconnected"]
       64 SETTABLEKS                       R12 R11 K21 ["state"]
       66 LOADB                            R12 0
       67 SETTABLEKS                       R12 R11 K22 ["isBusy"]
       69 DUPCLOSURE                       R12 K29 [PROTO_0]
       70 SETTABLEKS                       R12 R11 K23 ["start"]
       72 DUPCLOSURE                       R12 K30 [PROTO_1]
       73 SETTABLEKS                       R12 R11 K24 ["stop"]
       75 LOADNIL                          R12
       76 SETTABLEKS                       R12 R11 K25 ["setupInstructions"]
       78 LOADNIL                          R12
       79 SETTABLEKS                       R12 R11 K26 ["connectionCountObservable"]
       81 GETTABLEKS                       R12 R3 K31 ["createContext"]
       83 MOVE                             R13 R11
       84 CALL                             R12 1 1
       85 DUPCLOSURE                       R13 K32 [PROTO_2]
       86 DUPCLOSURE                       R14 K33 [PROTO_17]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R12
       95 DUPCLOSURE                       R15 K34 [PROTO_18]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R12
       98 DUPTABLE                         R16 K38 [{"Context", "Provider", "useExternalServer"}]
       99 SETTABLEKS                       R12 R16 K35 ["Context"]
      101 SETTABLEKS                       R14 R16 K36 ["Provider"]
      103 SETTABLEKS                       R15 R16 K37 ["useExternalServer"]
      105 RETURN                           R16 1
