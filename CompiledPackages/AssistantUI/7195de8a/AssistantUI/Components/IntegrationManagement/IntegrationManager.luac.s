PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+4]
        7 LOADNIL                          R1
        8 LOADK                            R2 K3 ["Expected top level key to be a table"]
        9 RETURN                           R1 2
       10 GETTABLEKS                       R1 R0 K4 ["integrations"]
       12 JUMPIF                           R1 ; [+4]
       13 NEWTABLE                         R2 0 0
       15 LOADNIL                          R3
       16 RETURN                           R2 2
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K2 ["table"] ; [+4]
       24 LOADNIL                          R2
       25 LOADK                            R3 K5 ["Expected integrations to be a table"]
       26 RETURN                           R2 2
       27 MOVE                             R2 R1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 FASTCALL1                        TYPEOF R6 ; [+3]
       32 MOVE                             R8 R6
       33 GETIMPORT                        R7 K1 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFEQKS                       R7 K2 ["table"] ; [+9]
       38 LOADNIL                          R7
       39 LOADK                            R9 K6 ["Stored integration at index %* must be a table"]
       40 MOVE                             R11 R5
       41 NAMECALL                         R9 R9 K7 ["format"]
       43 CALL                             R9 2 1
       44 MOVE                             R8 R9
       45 RETURN                           R7 2
       46 GETUPVAL                         R7 0
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 GETTABLEKS                       R12 R11 K8 ["key"]
       52 GETTABLEKS                       R13 R11 K9 ["type"]
       54 GETTABLE                         R14 R6 R12
       55 GETTABLEKS                       R15 R11 K10 ["optional"]
       57 JUMPIFNOT                        R15 ; [+2]
       58 JUMPIFEQKNIL                     R14 ; [+17]
       60 FASTCALL1                        TYPEOF R14 ; [+3]
       61 MOVE                             R16 R14
       62 GETIMPORT                        R15 K1 [typeof]
       64 CALL                             R15 1 1
       65 JUMPIFEQ                         R15 R13 ; [+10]
       67 LOADNIL                          R15
       68 LOADK                            R17 K11 ["Stored integration at index %* has unexpected type for key: %*"]
       69 MOVE                             R19 R5
       70 MOVE                             R20 R12
       71 NAMECALL                         R17 R17 K7 ["format"]
       73 CALL                             R17 3 1
       74 MOVE                             R16 R17
       75 RETURN                           R15 2
       76 FORGLOOP                         R7 2 ; [-27]
       78 FORGLOOP                         R2 2 ; [-48]
       80 MOVE                             R2 R1
       81 LOADNIL                          R3
       82 RETURN                           R2 2

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETIMPORT                        R0 K2 [warn]
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["integrations"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K2 ["Failed to read settings from environment:"]
        8 MOVE                             R5 R2
        9 CALL                             R3 2 0
       10 NEWTABLE                         R3 0 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R2
       15 CALL                             R3 1 2
       16 JUMPIF                           R3 ; [+7]
       17 GETUPVAL                         R5 0
       18 LOADK                            R6 K3 ["Read integrations had validation errors:"]
       19 MOVE                             R7 R4
       20 CALL                             R5 2 0
       21 NEWTABLE                         R5 0 0
       23 RETURN                           R5 1
       24 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["integrations"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["integrations"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["FFlagDebugLogAssistantUI"]
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETIMPORT                        R4 K4 [warn]
       13 LOADK                            R6 K5 ["Failed to set settings: %*"]
       14 MOVE                             R8 R3
       15 NAMECALL                         R6 R6 K6 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 2 0
       30 NEWTABLE                         R5 0 4
       32 DUPTABLE                         R6 K15 [{["key"] = "label", ["type"] = "string"}]
       33 DUPTABLE                         R7 K17 [{["key"] = "url", ["type"] = "string"}]
       34 DUPTABLE                         R8 K22 [{["key"] = "disabled", ["type"] = "boolean", ["optional"] = True}]
       35 DUPTABLE                         R9 K25 [{["key"] = "authorization", ["type"] = "table", ["optional"] = True}]
       36 SETLIST                          R5 R6 4 [1]
       38 DUPCLOSURE                       R6 K26 [PROTO_0]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R7 K27 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R8 K28 [PROTO_3]
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R8 R4 K29 ["getIntegrationsAsync"]
       47 DUPCLOSURE                       R8 K30 [PROTO_5]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R8 R4 K31 ["setIntegrationsAsync"]
       51 RETURN                           R4 1
