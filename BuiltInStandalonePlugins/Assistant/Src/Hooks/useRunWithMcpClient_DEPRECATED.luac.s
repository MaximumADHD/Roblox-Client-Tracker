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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["Deprecated hook"]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K3 ["use"]
       12 CALL                             R0 1 1
       13 NAMECALL                         R0 R0 K4 ["get"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K5 ["useState"]
       19 LOADNIL                          R2
       20 CALL                             R1 1 2
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+35]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K6 ["useContext"]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R4 R5 K7 ["Context"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K8 ["persistedIntegrations"]
       33 GETTABLEKS                       R5 R4 K9 ["initialReadTask"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K6 ["useContext"]
       38 GETUPVAL                         R8 5
       39 GETTABLEKS                       R7 R8 K7 ["Context"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K10 ["useEffect"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R9 0 2
       53 MOVE                             R10 R0
       54 MOVE                             R11 R5
       55 SETLIST                          R9 R10 2 [1]
       57 CALL                             R7 2 0
       58 RETURN                           R1 1
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R3 R4 K10 ["useEffect"]
       62 NEWCLOSURE                       R4 P1
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R5 0 1
       68 MOVE                             R6 R0
       69 SETLIST                          R5 R6 1 [1]
       71 CALL                             R3 2 0
       72 RETURN                           R1 1

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
       53 GETTABLEKS                       R10 R0 K11 ["Src"]
       55 GETTABLEKS                       R9 R10 K15 ["Flags"]
       57 GETTABLEKS                       R8 R9 K16 ["FFlagMCPAssistantDeduplicateMcpClient"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R10 R1 K15 ["Flags"]
       62 GETTABLEKS                       R9 R10 K17 ["Shared"]
       64 GETTABLEKS                       R8 R9 K18 ["FFlagMCPAssistantManagementMenu"]
       66 GETTABLEKS                       R11 R1 K19 ["Components"]
       68 GETTABLEKS                       R10 R11 K20 ["Contexts"]
       70 GETTABLEKS                       R9 R10 K21 ["McpAuthorizerManagerContext"]
       72 GETTABLEKS                       R12 R1 K19 ["Components"]
       74 GETTABLEKS                       R11 R12 K20 ["Contexts"]
       76 GETTABLEKS                       R10 R11 K22 ["PersistedIntegrationContext"]
       78 GETTABLEKS                       R11 R6 K23 ["promiseMcpHost"]
       80 GETTABLEKS                       R12 R2 K24 ["ContextServices"]
       82 GETTABLEKS                       R13 R12 K25 ["Plugin"]
       84 DUPCLOSURE                       R14 K26 [PROTO_10]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 RETURN                           R14 1
