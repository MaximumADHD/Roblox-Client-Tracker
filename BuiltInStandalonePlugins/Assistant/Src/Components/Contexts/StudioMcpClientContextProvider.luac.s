PROTO_0:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to connect to MCP host: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFEQKS                       R0 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Unloading"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["authorizerManager"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U4
       16 NAMECALL                         R0 R0 K4 ["andThen"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R0 R0 K5 ["catch"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to connect to MCP host: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Unloading"]
        4 LOADNIL                          R2
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K1 ["andThen"]
       10 CALL                             R0 2 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R0 R0 K2 ["catch"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["FFlagMCPAssistantManagementMenu"]
       15 JUMPIFNOT                        R3 ; [+35]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K5 ["Context"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K6 ["persistedIntegrations"]
       25 GETTABLEKS                       R5 R4 K7 ["initialReadTask"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K4 ["useContext"]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K5 ["Context"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R9 0 2
       45 MOVE                             R10 R0
       46 MOVE                             R11 R5
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 0
       50 RETURN                           R1 1
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K8 ["useEffect"]
       54 NEWCLOSURE                       R4 P1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R5 0 1
       60 MOVE                             R6 R0
       61 SETLIST                          R5 R6 1 [1]
       63 CALL                             R3 2 0
       64 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Components"]
        6 GETTABLEKS                       R3 R3 K1 ["Contexts"]
        8 GETTABLEKS                       R3 R3 K2 ["McpClientContextProvider"]
       10 DUPTABLE                         R4 K4 [{"runWithClient"}]
       11 SETTABLEKS                       R1 R4 K3 ["runWithClient"]
       13 GETTABLEKS                       R5 R0 K5 ["children"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Host"]
       48 GETTABLEKS                       R7 R7 K14 ["startMcpHost"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Flags"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R1 K16 ["Components"]
       60 GETTABLEKS                       R8 R8 K17 ["Contexts"]
       62 GETTABLEKS                       R8 R8 K18 ["McpAuthorizerManagerContext"]
       64 GETTABLEKS                       R9 R1 K16 ["Components"]
       66 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       68 GETTABLEKS                       R9 R9 K19 ["PersistedIntegrationContext"]
       70 GETTABLEKS                       R10 R6 K20 ["promiseMcpHost"]
       72 GETTABLEKS                       R11 R2 K21 ["ContextServices"]
       74 GETTABLEKS                       R12 R11 K22 ["Plugin"]
       76 GETTABLEKS                       R13 R4 K23 ["createElement"]
       78 DUPCLOSURE                       R14 K24 [PROTO_10]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R10
       85 DUPCLOSURE                       R15 K25 [PROTO_11]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R1
       89 RETURN                           R15 1
