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
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K1 [warn]
        6 GETVARARGS                       R1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

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
        6 JUMPIF                           R2 ; [+12]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+9]
       10 GETIMPORT                        R4 K3 [warn]
       12 LOADK                            R6 K4 ["Failed to set settings: %*"]
       13 MOVE                             R8 R3
       14 NAMECALL                         R6 R6 K5 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

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
       27 GETTABLEKS                       R4 R4 K11 ["FFlagDebugLogAssistantUI"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 2 0
       32 NEWTABLE                         R5 0 4
       34 DUPTABLE                         R6 K14 [{"key", "type"}]
       35 LOADK                            R7 K15 ["label"]
       36 SETTABLEKS                       R7 R6 K12 ["key"]
       38 LOADK                            R7 K16 ["string"]
       39 SETTABLEKS                       R7 R6 K13 ["type"]
       41 DUPTABLE                         R7 K14 [{"key", "type"}]
       42 LOADK                            R8 K17 ["url"]
       43 SETTABLEKS                       R8 R7 K12 ["key"]
       45 LOADK                            R8 K16 ["string"]
       46 SETTABLEKS                       R8 R7 K13 ["type"]
       48 DUPTABLE                         R8 K19 [{"key", "type", "optional"}]
       49 LOADK                            R9 K20 ["disabled"]
       50 SETTABLEKS                       R9 R8 K12 ["key"]
       52 LOADK                            R9 K21 ["boolean"]
       53 SETTABLEKS                       R9 R8 K13 ["type"]
       55 LOADB                            R9 1
       56 SETTABLEKS                       R9 R8 K18 ["optional"]
       58 DUPTABLE                         R9 K19 [{"key", "type", "optional"}]
       59 LOADK                            R10 K22 ["authorization"]
       60 SETTABLEKS                       R10 R9 K12 ["key"]
       62 LOADK                            R10 K23 ["table"]
       63 SETTABLEKS                       R10 R9 K13 ["type"]
       65 LOADB                            R10 1
       66 SETTABLEKS                       R10 R9 K18 ["optional"]
       68 SETLIST                          R5 R6 4 [1]
       70 DUPCLOSURE                       R6 K24 [PROTO_0]
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R7 K25 [PROTO_1]
       73 CAPTURE                          VAL R3
       74 DUPCLOSURE                       R8 K26 [PROTO_3]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R8 R4 K27 ["getIntegrationsAsync"]
       79 DUPCLOSURE                       R8 K28 [PROTO_5]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R8 R4 K29 ["setIntegrationsAsync"]
       83 RETURN                           R4 1
