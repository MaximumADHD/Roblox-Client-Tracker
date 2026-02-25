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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFEQKS                       R0 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["Unloading"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K3 ["authorizerManager"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Unloading"]
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
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["useState"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+35]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K5 ["persistedIntegrations"]
       24 GETTABLEKS                       R5 R4 K6 ["initialReadTask"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K3 ["useContext"]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R7 R8 K4 ["Context"]
       32 CALL                             R6 1 1
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K7 ["useEffect"]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R9 0 2
       44 MOVE                             R10 R0
       45 MOVE                             R11 R5
       46 SETLIST                          R9 R10 2 [1]
       48 CALL                             R7 2 0
       49 RETURN                           R1 1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K7 ["useEffect"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R5 0 1
       59 MOVE                             R6 R0
       60 SETLIST                          R5 R6 1 [1]
       62 CALL                             R3 2 0
       63 RETURN                           R1 1

PROTO_11:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K0 ["Components"]
       15 GETTABLEKS                       R4 R5 K1 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K2 ["McpClientContextProvider"]
       19 DUPTABLE                         R4 K4 [{"runWithClient"}]
       20 SETTABLEKS                       R1 R4 K3 ["runWithClient"]
       22 GETTABLEKS                       R5 R0 K5 ["children"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R7 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Src"]
       46 GETTABLEKS                       R8 R9 K13 ["Host"]
       48 GETTABLEKS                       R7 R8 K14 ["startMcpHost"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R13 K1 [script]
       55 GETTABLEKS                       R12 R13 K15 ["Parent"]
       57 GETTABLEKS                       R11 R12 K15 ["Parent"]
       59 GETTABLEKS                       R10 R11 K15 ["Parent"]
       61 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       63 GETTABLEKS                       R8 R9 K17 ["useRunWithMcpClient_DEPRECATED"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K11 ["Src"]
       70 GETTABLEKS                       R10 R11 K18 ["Flags"]
       72 GETTABLEKS                       R9 R10 K19 ["FFlagMCPAssistantDeduplicateMcpClient"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R11 R1 K18 ["Flags"]
       77 GETTABLEKS                       R10 R11 K20 ["Shared"]
       79 GETTABLEKS                       R9 R10 K21 ["FFlagMCPAssistantManagementMenu"]
       81 GETTABLEKS                       R12 R1 K22 ["Components"]
       83 GETTABLEKS                       R11 R12 K23 ["Contexts"]
       85 GETTABLEKS                       R10 R11 K24 ["McpAuthorizerManagerContext"]
       87 GETTABLEKS                       R13 R1 K22 ["Components"]
       89 GETTABLEKS                       R12 R13 K23 ["Contexts"]
       91 GETTABLEKS                       R11 R12 K25 ["PersistedIntegrationContext"]
       93 GETTABLEKS                       R12 R6 K26 ["promiseMcpHost"]
       95 GETTABLEKS                       R13 R2 K27 ["ContextServices"]
       97 GETTABLEKS                       R14 R13 K28 ["Plugin"]
       99 GETTABLEKS                       R15 R4 K29 ["createElement"]
      101 DUPCLOSURE                       R16 K30 [PROTO_10]
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R12
      108 DUPCLOSURE                       R17 K31 [PROTO_11]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R1
      114 RETURN                           R17 1
