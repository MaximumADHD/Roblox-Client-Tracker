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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["disconnect"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onConnect"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K2 ["setUserSettingsAsync"]
       14 LOADK                            R2 K3 ["mcp-server"]
       15 NEWTABLE                         R3 1 0
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K4 ["enabled"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setUserSettingsAsync"]
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
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K0 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["enabled"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADB                            R1 0
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["value"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setupMCPServerAsync"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["get"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K0 ["useState"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 2
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADK                            R8 K3 ["connected"]
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K4 ["disconnected"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R11 0 0
       32 CALL                             R9 2 1
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K5 ["useCallback"]
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
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R11 R12 K5 ["useCallback"]
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
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R13 R14 K8 ["useEffect"]
       78 NEWCLOSURE                       R14 P4
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R15 0 2
       83 MOVE                             R16 R12
       84 MOVE                             R17 R10
       85 SETLIST                          R15 R16 2 [1]
       87 CALL                             R13 2 0
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R13 R14 K8 ["useEffect"]
       91 NEWCLOSURE                       R14 P5
       92 CAPTURE                          VAL R9
       93 NEWTABLE                         R15 0 1
       95 MOVE                             R16 R9
       96 SETLIST                          R15 R16 1 [1]
       98 CALL                             R13 2 0
       99 GETUPVAL                         R14 0
      100 GETTABLEKS                       R13 R14 K8 ["useEffect"]
      102 NEWCLOSURE                       R14 P6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 CAPTURE                          UPVAL U4
      106 NEWTABLE                         R15 0 0
      108 CALL                             R13 2 0
      109 GETTABLEKS                       R14 R3 K9 ["current"]
      111 JUMPIFNOT                        R14 ; [+5]
      112 GETTABLEKS                       R14 R3 K9 ["current"]
      114 GETTABLEKS                       R13 R14 K10 ["connectionCountObservable"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R13
      118 DUPTABLE                         R14 K16 [{"state", "start", "stop", "isBusy", "setupInstructions", "connectionCountObservable"}]
      119 SETTABLEKS                       R8 R14 K11 ["state"]
      121 SETTABLEKS                       R10 R14 K12 ["start"]
      123 SETTABLEKS                       R11 R14 K13 ["stop"]
      125 GETTABLEKS                       R15 R5 K17 ["isProcessing"]
      127 SETTABLEKS                       R15 R14 K14 ["isBusy"]
      129 SETTABLEKS                       R6 R14 K15 ["setupInstructions"]
      131 SETTABLEKS                       R13 R14 K10 ["connectionCountObservable"]
      133 GETUPVAL                         R15 5
      134 GETUPVAL                         R17 6
      135 GETTABLEKS                       R16 R17 K18 ["Provider"]
      137 DUPTABLE                         R17 K20 [{"value"}]
      138 SETTABLEKS                       R14 R17 K19 ["value"]
      140 GETTABLEKS                       R18 R0 K21 ["children"]
      142 CALL                             R15 3 -1
      143 RETURN                           R15 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Hooks"]
       44 GETTABLEKS                       R7 R8 K14 ["useAsyncGuard"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R8 R2 K15 ["Util"]
       49 GETTABLEKS                       R7 R8 K16 ["Observable"]
       51 GETTABLEKS                       R8 R4 K17 ["useAsync"]
       53 GETTABLEKS                       R9 R3 K18 ["createElement"]
       55 DUPTABLE                         R10 K25 [{"state", "isBusy", "start", "stop", "setupInstructions", "connectionCountObservable"}]
       56 LOADK                            R11 K26 ["disconnected"]
       57 SETTABLEKS                       R11 R10 K19 ["state"]
       59 LOADB                            R11 0
       60 SETTABLEKS                       R11 R10 K20 ["isBusy"]
       62 DUPCLOSURE                       R11 K27 [PROTO_0]
       63 SETTABLEKS                       R11 R10 K21 ["start"]
       65 DUPCLOSURE                       R11 K28 [PROTO_1]
       66 SETTABLEKS                       R11 R10 K22 ["stop"]
       68 LOADNIL                          R11
       69 SETTABLEKS                       R11 R10 K23 ["setupInstructions"]
       71 LOADNIL                          R11
       72 SETTABLEKS                       R11 R10 K24 ["connectionCountObservable"]
       74 GETTABLEKS                       R11 R3 K29 ["createContext"]
       76 MOVE                             R12 R10
       77 CALL                             R11 1 1
       78 DUPCLOSURE                       R12 K30 [PROTO_2]
       79 DUPCLOSURE                       R13 K31 [PROTO_16]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R11
       87 DUPCLOSURE                       R14 K32 [PROTO_17]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R11
       90 DUPTABLE                         R15 K36 [{"Context", "Provider", "useExternalServer"}]
       91 SETTABLEKS                       R11 R15 K33 ["Context"]
       93 SETTABLEKS                       R13 R15 K34 ["Provider"]
       95 SETTABLEKS                       R14 R15 K35 ["useExternalServer"]
       97 RETURN                           R15 1
