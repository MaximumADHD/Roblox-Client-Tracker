PROTO_0:
        0 DUPTABLE                         R1 K4 [{"label", "url", "disabled", "authorization"}]
        1 GETTABLEKS                       R2 R0 K0 ["label"]
        3 SETTABLEKS                       R2 R1 K0 ["label"]
        5 GETTABLEKS                       R2 R0 K1 ["url"]
        7 SETTABLEKS                       R2 R1 K1 ["url"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K0 ["label"]
       12 GETTABLE                         R2 R3 R4
       13 SETTABLEKS                       R2 R1 K2 ["disabled"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R4 R0 K0 ["label"]
       18 GETTABLE                         R2 R3 R4
       19 SETTABLEKS                       R2 R1 K3 ["authorization"]
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIntegrationsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 NEWTABLE                         R1 0 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K1 ["label"]
       16 GETTABLEKS                       R8 R6 K2 ["disabled"]
       18 SETTABLE                         R8 R1 R7
       19 FORGLOOP                         R2 2 ; [-6]
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 NEWTABLE                         R2 0 0
       26 MOVE                             R3 R0
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETTABLEKS                       R8 R7 K1 ["label"]
       32 GETTABLEKS                       R9 R7 K3 ["authorization"]
       34 SETTABLE                         R9 R2 R8
       35 FORGLOOP                         R3 2 ; [-6]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K4 ["attachSecretsAsync"]
       40 GETUPVAL                         R4 1
       41 MOVE                             R5 R2
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 5
       44 GETTABLEKS                       R4 R4 K5 ["authorizerManager"]
       46 MOVE                             R6 R3
       47 NAMECALL                         R4 R4 K6 ["setAllAuthPersistInfo"]
       49 CALL                             R4 2 0
       50 NEWTABLE                         R4 0 0
       52 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["authorizerManager"]
        8 NAMECALL                         R0 R0 K1 ["getAllAuthPersistInfo"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["extractAndSaveSecretsAsync"]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["setIntegrationsAsync"]
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R4 5
       22 GETUPVAL                         R5 0
       23 GETUPVAL                         R6 6
       24 MOVE                             R7 R1
       25 CALL                             R4 3 -1
       26 CALL                             R2 -1 0
       27 NEWTABLE                         R2 0 0
       29 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["label"]
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADNIL                          R3
       10 JUMP                             ; [+1]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["useContext"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K2 ["Context"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["useState"]
       21 LOADB                            R6 0
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 2
       24 MOVE                             R8 R0
       25 MOVE                             R9 R2
       26 CALL                             R7 2 0
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K3 ["get"]
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K4 ["useAsync"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R10 0 1
       43 MOVE                             R11 R4
       44 SETLIST                          R10 R11 1 [1]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R9 R9 K4 ["useAsync"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R11 0 4
       60 MOVE                             R12 R2
       61 MOVE                             R13 R0
       62 MOVE                             R14 R4
       63 MOVE                             R15 R5
       64 SETLIST                          R11 R12 4 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       70 NEWCLOSURE                       R11 P2
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R12 0 0
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       78 NEWCLOSURE                       R12 P3
       79 CAPTURE                          VAL R6
       80 NEWTABLE                         R13 0 0
       82 CALL                             R11 2 1
       83 DUPTABLE                         R12 K12 [{"initialReadTask", "writeTask", "integrations", "setIntegrations", "setEnabled", "saveAuthPersistInfo"}]
       84 SETTABLEKS                       R8 R12 K6 ["initialReadTask"]
       86 SETTABLEKS                       R9 R12 K7 ["writeTask"]
       88 SETTABLEKS                       R0 R12 K8 ["integrations"]
       90 SETTABLEKS                       R1 R12 K9 ["setIntegrations"]
       92 SETTABLEKS                       R10 R12 K10 ["setEnabled"]
       94 SETTABLEKS                       R11 R12 K11 ["saveAuthPersistInfo"]
       96 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AuthorizerProvider"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["IntegrationManager"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["IntegrationTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K13 ["McpAuthorizerManagerContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K9 ["Parent"]
       49 GETTABLEKS                       R6 R6 K14 ["SecureAuthStorage"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Parent"]
       56 GETTABLEKS                       R7 R7 K15 ["Dash"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K16 ["Guest"]
       63 GETTABLEKS                       R8 R8 K17 ["Environment"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Parent"]
       70 GETTABLEKS                       R9 R9 K18 ["React"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Parent"]
       77 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K20 ["Types"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K22 ["useIntegrationsTelemetry"]
       91 CALL                             R11 1 1
       92 DUPCLOSURE                       R12 K23 [PROTO_1]
       93 CAPTURE                          VAL R6
       94 DUPCLOSURE                       R13 K24 [PROTO_8]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R12
      103 RETURN                           R13 1
