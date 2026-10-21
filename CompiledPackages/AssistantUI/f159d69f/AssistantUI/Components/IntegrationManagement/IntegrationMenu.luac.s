PROTO_0:
        0 DUPTABLE                         R0 K10 [{"ManageIntegrations", "IntegrationNameExists", "IntegrationUrlExists", "Add", "Integrations", "Permissions", "ApiKeys", "Internal", "Skills", "Usage"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K11 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["IntegrationManagement"]
       11 LOADK                            R4 K13 ["IntegrationNameAlreadyExists"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["IntegrationNameExists"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["IntegrationManagement"]
       19 LOADK                            R4 K14 ["IntegrationUrlAlreadyExists"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["IntegrationUrlExists"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K15 ["Settings"]
       27 LOADK                            R4 K3 ["Add"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K16 ["SettingsDialog"]
       35 LOADK                            R4 K17 ["ManageIntegrationsTab"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Integrations"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K16 ["SettingsDialog"]
       43 LOADK                            R4 K18 ["PermissionsTab"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["Permissions"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K16 ["SettingsDialog"]
       51 LOADK                            R4 K19 ["APIKeysTab"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["ApiKeys"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K16 ["SettingsDialog"]
       59 LOADK                            R4 K20 ["InternalTab"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Internal"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K16 ["SettingsDialog"]
       67 LOADK                            R4 K21 ["SkillsTab"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["Skills"]
       73 GETUPVAL                         R2 1
       74 CALL                             R2 0 1
       75 JUMPIFNOT                        R2 ; [+7]
       76 GETUPVAL                         R1 0
       77 LOADK                            R3 K22 ["CreditMetering"]
       78 LOADK                            R4 K23 ["UsageTitle"]
       79 NAMECALL                         R1 R1 K12 ["getText"]
       81 CALL                             R1 3 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R1
       84 SETTABLEKS                       R1 R0 K9 ["Usage"]
       86 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Failed to connect client %*: %*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["label"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R2 R2 K4 ["format"]
        9 CALL                             R2 3 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+83]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["label"]
        5 NAMECALL                         R1 R0 K1 ["getClient"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["label"]
       13 NAMECALL                         R2 R2 K2 ["getAuthorizer"]
       15 CALL                             R2 2 1
       16 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       18 LOADK                            R3 K3 ["Client exists but Authorizer not found"]
       19 GETIMPORT                        R1 K5 [assert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["label"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K6 ["url"]
       30 NAMECALL                         R1 R1 K7 ["getOrCreateAuthorizer"]
       32 CALL                             R1 3 1
       33 LOADNIL                          R2
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantUseVariantHttpTransport"]
       37 JUMPIFNOT                        R3 ; [+10]
       38 GETUPVAL                         R3 4
       39 GETTABLEKS                       R3 R3 K9 ["new"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K6 ["url"]
       44 MOVE                             R5 R1
       45 CALL                             R3 2 1
       46 MOVE                             R2 R3
       47 JUMP                             ; [+9]
       48 GETUPVAL                         R3 5
       49 GETTABLEKS                       R3 R3 K9 ["new"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K6 ["url"]
       54 MOVE                             R5 R1
       55 CALL                             R3 2 1
       56 MOVE                             R2 R3
       57 DUPTABLE                         R5 K13 [{"identifier", "transport", "clientOptions"}]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K0 ["label"]
       61 SETTABLEKS                       R6 R5 K10 ["identifier"]
       63 GETTABLEKS                       R6 R2 K11 ["transport"]
       65 SETTABLEKS                       R6 R5 K11 ["transport"]
       67 GETUPVAL                         R6 6
       68 SETTABLEKS                       R6 R5 K12 ["clientOptions"]
       70 NAMECALL                         R3 R0 K14 ["addClient"]
       72 CALL                             R3 2 0
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K0 ["label"]
       76 NAMECALL                         R3 R0 K15 ["connectClient"]
       78 CALL                             R3 2 1
       79 NEWCLOSURE                       R5 P0
       80 CAPTURE                          UPVAL U1
       81 NAMECALL                         R3 R3 K16 ["catch"]
       83 CALL                             R3 2 0
       84 JUMP                             ; [+24]
       85 GETUPVAL                         R3 1
       86 GETTABLEKS                       R3 R3 K0 ["label"]
       88 NAMECALL                         R1 R0 K1 ["getClient"]
       90 CALL                             R1 2 1
       91 JUMPIFNOT                        R1 ; [+17]
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K0 ["label"]
       95 NAMECALL                         R1 R0 K17 ["closeClient"]
       97 CALL                             R1 2 1
       98 DUPCLOSURE                       R3 K18 [PROTO_2]
       99 NAMECALL                         R1 R1 K16 ["catch"]
      101 CALL                             R1 2 0
      102 GETUPVAL                         R1 2
      103 GETUPVAL                         R3 1
      104 GETTABLEKS                       R3 R3 K0 ["label"]
      106 NAMECALL                         R1 R1 K19 ["removeAuthorizer"]
      108 CALL                             R1 2 0
      109 GETUPVAL                         R1 7
      110 GETUPVAL                         R2 1
      111 GETUPVAL                         R3 0
      112 CALL                             R1 2 0
      113 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R4 K5 [{"label", "url"}]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["label"]
       11 SETTABLEKS                       R5 R4 K3 ["label"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["url"]
       16 SETTABLEKS                       R5 R4 K4 ["url"]
       18 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K7 [table.insert]
       23 CALL                             R2 2 0
       24 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["label"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["label"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["label"]
        4 NAMECALL                         R0 R0 K1 ["promiseInvalidateCredentials"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K2 ["await"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["label"]
       14 NAMECALL                         R0 R0 K3 ["removeAuthorizer"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 2
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U1
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["run"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["label"]
        3 NAMECALL                         R1 R0 K1 ["getClient"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["label"]
       10 NAMECALL                         R1 R0 K2 ["closeClient"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["label"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["label"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 GETUPVAL                         R1 1
        8 RETURN                           R1 1
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["label"]
        4 NAMECALL                         R0 R0 K1 ["promiseInvalidateCredentials"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K2 ["await"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["label"]
       14 NAMECALL                         R0 R0 K3 ["removeAuthorizer"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 2
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U1
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 3
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U5
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 6
       28 LOADNIL                          R1
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 7
       31 GETUPVAL                         R1 5
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["run"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 GETUPVAL                         R2 5
       10 DUPTABLE                         R3 K2 [{"integration", "onSave"}]
       11 SETTABLEKS                       R0 R3 K0 ["integration"]
       13 SETTABLEKS                       R1 R3 K1 ["onSave"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K0 ["label"]
       12 GETTABLEKS                       R9 R0 K0 ["label"]
       14 JUMPIFNOTEQ                      R8 R9 ; [+12]
       16 GETTABLEKS                       R8 R7 K0 ["label"]
       18 GETTABLEKS                       R9 R1 K0 ["label"]
       20 JUMPIFEQ                         R8 R9 ; [+6]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K1 ["IntegrationNameExists"]
       25 SETTABLEKS                       R8 R2 K2 ["nameError"]
       27 GETTABLEKS                       R8 R7 K3 ["url"]
       29 GETTABLEKS                       R9 R0 K3 ["url"]
       31 JUMPIFNOTEQ                      R8 R9 ; [+12]
       33 GETTABLEKS                       R8 R7 K3 ["url"]
       35 GETTABLEKS                       R9 R1 K3 ["url"]
       37 JUMPIFEQ                         R8 R9 ; [+6]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K4 ["IntegrationUrlExists"]
       42 SETTABLEKS                       R8 R2 K5 ["urlError"]
       44 FORGLOOP                         R3 2 ; [-35]
       46 GETIMPORT                        R3 K7 [next]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 JUMPIF                           R3 ; [+2]
       51 LOADNIL                          R3
       52 RETURN                           R3 1
       53 RETURN                           R2 1

PROTO_20:
        0 DUPTABLE                         R0 K3 [{[1] = "", ["url"] = ""}]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K6 [{"integration", "onSave"}]
        3 SETTABLEKS                       R0 R2 K4 ["integration"]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K5 ["onSave"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["AssistantExecutionPermissionsModel"]
        5 GETTABLEKS                       R0 R0 K1 ["new"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["hasInternalPermission"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETTABLEKS                       R3 R0 K1 ["initialTab"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R2 R0 K1 ["initialTab"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K2 ["integrations"]
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useContext"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["Context"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["useContext"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["Context"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K5 ["authorizerManager"]
       28 GETTABLEKS                       R6 R3 K6 ["persistedIntegrations"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K3 ["useContext"]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K4 ["Context"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R6 K2 ["integrations"]
       39 GETTABLEKS                       R9 R6 K7 ["setIntegrations"]
       41 GETTABLEKS                       R10 R6 K8 ["setEnabled"]
       43 GETTABLEKS                       R11 R6 K9 ["saveAuthPersistInfo"]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K0 ["useState"]
       48 LOADNIL                          R13
       49 CALL                             R12 1 2
       50 GETUPVAL                         R14 4
       51 CALL                             R14 0 1
       52 GETUPVAL                         R15 0
       53 GETTABLEKS                       R15 R15 K10 ["useMemo"]
       55 DUPCLOSURE                       R16 K11 [PROTO_0]
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 NEWTABLE                         R17 0 1
       60 GETUPVAL                         R18 5
       61 GETTABLEKS                       R18 R18 K12 ["locale"]
       63 SETLIST                          R17 R18 1 [1]
       65 CALL                             R15 2 1
       66 GETUPVAL                         R16 7
       67 CALL                             R16 0 1
       68 GETUPVAL                         R17 0
       69 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       71 NEWCLOSURE                       R18 P1
       72 CAPTURE                          VAL R16
       73 CAPTURE                          VAL R5
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          UPVAL U11
       78 CAPTURE                          VAL R10
       79 NEWTABLE                         R19 0 2
       81 MOVE                             R20 R16
       82 MOVE                             R21 R5
       83 SETLIST                          R19 R20 2 [1]
       85 CALL                             R17 2 1
       86 GETUPVAL                         R18 0
       87 GETTABLEKS                       R18 R18 K13 ["useCallback"]
       89 NEWCLOSURE                       R19 P2
       90 CAPTURE                          VAL R17
       91 NEWTABLE                         R20 0 1
       93 MOVE                             R21 R17
       94 SETLIST                          R20 R21 1 [1]
       96 CALL                             R18 2 1
       97 GETUPVAL                         R19 0
       98 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      100 NEWCLOSURE                       R20 P3
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R18
      104 NEWTABLE                         R21 0 1
      106 MOVE                             R22 R18
      107 SETLIST                          R21 R22 1 [1]
      109 CALL                             R19 2 1
      110 GETUPVAL                         R20 0
      111 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      113 NEWCLOSURE                       R21 P4
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R9
      117 CAPTURE                          UPVAL U12
      118 NEWTABLE                         R22 0 2
      120 GETTABLEKS                       R23 R14 K14 ["run"]
      122 MOVE                             R24 R5
      123 SETLIST                          R22 R23 2 [1]
      125 CALL                             R20 2 1
      126 GETUPVAL                         R21 0
      127 GETTABLEKS                       R21 R21 K13 ["useCallback"]
      129 NEWCLOSURE                       R22 P5
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R9
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R18
      137 NEWTABLE                         R23 0 4
      139 GETTABLEKS                       R24 R14 K14 ["run"]
      141 MOVE                             R25 R16
      142 MOVE                             R26 R18
      143 MOVE                             R27 R5
      144 SETLIST                          R23 R24 4 [1]
      146 CALL                             R21 2 1
      147 GETUPVAL                         R22 0
      148 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      150 NEWCLOSURE                       R23 P6
      151 CAPTURE                          VAL R13
      152 NEWTABLE                         R24 0 0
      154 CALL                             R22 2 1
      155 GETUPVAL                         R23 0
      156 GETTABLEKS                       R23 R23 K13 ["useCallback"]
      158 NEWCLOSURE                       R24 P7
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R15
      161 NEWTABLE                         R25 0 2
      163 MOVE                             R26 R8
      164 MOVE                             R27 R15
      165 SETLIST                          R25 R26 2 [1]
      167 CALL                             R23 2 1
      168 GETUPVAL                         R24 0
      169 GETTABLEKS                       R24 R24 K13 ["useCallback"]
      171 NEWCLOSURE                       R25 P8
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R19
      174 NEWTABLE                         R26 0 1
      176 MOVE                             R27 R19
      177 SETLIST                          R26 R27 1 [1]
      179 CALL                             R24 2 1
      180 GETUPVAL                         R25 8
      181 GETTABLEKS                       R25 R25 K15 ["FFlagMCPAssistantManagementMenu"]
      183 JUMPIF                           R25 ; [+3]
      184 GETUPVAL                         R25 8
      185 GETTABLEKS                       R25 R25 K16 ["FFlagAssistantMultiEditExternalClient"]
      187 GETUPVAL                         R26 13
      188 GETUPVAL                         R27 14
      189 DUPTABLE                         R28 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      190 GETUPVAL                         R29 15
      191 SETTABLEKS                       R29 R28 K19 ["scroll"]
      193 GETUPVAL                         R29 16
      194 SETTABLEKS                       R29 R28 K20 ["layout"]
      196 DUPTABLE                         R29 K23 [{"ApiKeySettings"}]
      197 GETUPVAL                         R30 13
      198 GETUPVAL                         R31 17
      199 CALL                             R30 1 1
      200 SETTABLEKS                       R30 R29 K22 ["ApiKeySettings"]
      202 CALL                             R26 3 1
      203 NEWTABLE                         R27 0 0
      205 GETUPVAL                         R28 6
      206 CALL                             R28 0 1
      207 JUMPIFNOT                        R28 ; [+29]
      208 DUPTABLE                         R30 K28 [{["id"] = "usage", ["text"], ["content"]}]
      209 GETTABLEKS                       R31 R15 K29 ["Usage"]
      211 SETTABLEKS                       R31 R30 K26 ["text"]
      213 GETUPVAL                         R31 13
      214 GETUPVAL                         R32 14
      215 DUPTABLE                         R33 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      216 GETUPVAL                         R34 15
      217 SETTABLEKS                       R34 R33 K19 ["scroll"]
      219 GETUPVAL                         R34 16
      220 SETTABLEKS                       R34 R33 K20 ["layout"]
      222 DUPTABLE                         R34 K31 [{"UsagePage"}]
      223 GETUPVAL                         R35 13
      224 GETUPVAL                         R36 18
      225 CALL                             R35 1 1
      226 SETTABLEKS                       R35 R34 K30 ["UsagePage"]
      228 CALL                             R31 3 1
      229 SETTABLEKS                       R31 R30 K27 ["content"]
      231 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      233 MOVE                             R29 R27
      234 GETIMPORT                        R28 K34 [table.insert]
      236 CALL                             R28 2 0
      237 GETUPVAL                         R28 19
      238 CALL                             R28 0 1
      239 JUMPIF                           R28 ; [+13]
      240 DUPTABLE                         R30 K36 [{["id"] = "apiKeys", ["text"], ["content"]}]
      241 GETTABLEKS                       R31 R15 K37 ["ApiKeys"]
      243 SETTABLEKS                       R31 R30 K26 ["text"]
      245 SETTABLEKS                       R26 R30 K27 ["content"]
      247 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      249 MOVE                             R29 R27
      250 GETIMPORT                        R28 K34 [table.insert]
      252 CALL                             R28 2 0
      253 JUMPIFNOT                        R25 ; [+38]
      254 GETUPVAL                         R28 13
      255 GETUPVAL                         R29 20
      256 DUPTABLE                         R30 K44 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      257 SETTABLEKS                       R8 R30 K2 ["integrations"]
      259 SETTABLEKS                       R24 R30 K38 ["onAddIntegration"]
      261 SETTABLEKS                       R20 R30 K39 ["onRemove"]
      263 SETTABLEKS                       R21 R30 K40 ["onEdit"]
      265 SETTABLEKS                       R10 R30 K41 ["onStatusChange"]
      267 SETTABLEKS                       R11 R30 K42 ["onAuthorizationChange"]
      269 SETTABLEKS                       R17 R30 K43 ["setEnableStatus"]
      271 CALL                             R28 2 1
      272 DUPTABLE                         R31 K45 [{["id"] = "integrations", ["text"], ["content"]}]
      273 GETTABLEKS                       R32 R15 K46 ["Integrations"]
      275 SETTABLEKS                       R32 R31 K26 ["text"]
      277 GETUPVAL                         R32 13
      278 GETUPVAL                         R33 21
      279 DUPTABLE                         R34 K48 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      280 DUPTABLE                         R35 K50 [{"MainContent"}]
      281 SETTABLEKS                       R28 R35 K49 ["MainContent"]
      283 CALL                             R32 3 1
      284 SETTABLEKS                       R32 R31 K27 ["content"]
      286 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      288 MOVE                             R30 R27
      289 GETIMPORT                        R29 K34 [table.insert]
      291 CALL                             R29 2 0
      292 GETUPVAL                         R28 22
      293 GETTABLEKS                       R28 R28 K51 ["get"]
      295 CALL                             R28 0 1
      296 GETTABLEKS                       R29 R28 K52 ["getEngineFeature"]
      298 LOADK                            R30 K53 ["StudioAssistantPermissions"]
      299 CALL                             R29 1 1
      300 MOVE                             R30 R29
      301 JUMPIFNOT                        R30 ; [+3]
      302 GETTABLEKS                       R30 R28 K54 ["getAssistantPermissionsBridge"]
      304 CALL                             R30 0 1
      305 GETUPVAL                         R31 0
      306 GETTABLEKS                       R31 R31 K10 ["useMemo"]
      308 NEWCLOSURE                       R32 P9
      309 CAPTURE                          VAL R30
      310 CAPTURE                          UPVAL U23
      311 NEWTABLE                         R33 0 1
      313 MOVE                             R34 R30
      314 SETLIST                          R33 R34 1 [1]
      316 CALL                             R31 2 1
      317 JUMPIFNOT                        R31 ; [+39]
      318 DUPTABLE                         R34 K56 [{["id"] = "permissions", ["text"], ["content"]}]
      319 GETTABLEKS                       R35 R15 K57 ["Permissions"]
      321 SETTABLEKS                       R35 R34 K26 ["text"]
      323 GETUPVAL                         R35 13
      324 GETUPVAL                         R36 14
      325 DUPTABLE                         R37 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      326 GETUPVAL                         R38 24
      327 SETTABLEKS                       R38 R37 K19 ["scroll"]
      329 GETUPVAL                         R38 16
      330 SETTABLEKS                       R38 R37 K20 ["layout"]
      332 DUPTABLE                         R38 K59 [{"ContentPadding"}]
      333 GETUPVAL                         R39 13
      334 GETUPVAL                         R40 21
      335 DUPTABLE                         R41 K61 [{["tag"] = "col size-full-0 auto-y padding-right-medium"}]
      336 DUPTABLE                         R42 K63 [{"ExecutionPermissionsContent"}]
      337 GETUPVAL                         R43 13
      338 GETUPVAL                         R44 25
      339 DUPTABLE                         R45 K65 [{"model"}]
      340 SETTABLEKS                       R31 R45 K64 ["model"]
      342 CALL                             R43 2 1
      343 SETTABLEKS                       R43 R42 K62 ["ExecutionPermissionsContent"]
      345 CALL                             R39 3 1
      346 SETTABLEKS                       R39 R38 K58 ["ContentPadding"]
      348 CALL                             R35 3 1
      349 SETTABLEKS                       R35 R34 K27 ["content"]
      351 FASTCALL2                        TABLE_INSERT R27 R34 ; [+4]
      353 MOVE                             R33 R27
      354 GETIMPORT                        R32 K34 [table.insert]
      356 CALL                             R32 2 0
      357 DUPTABLE                         R34 K67 [{["id"] = "skills", ["text"], ["content"]}]
      358 GETTABLEKS                       R35 R15 K68 ["Skills"]
      360 SETTABLEKS                       R35 R34 K26 ["text"]
      362 GETUPVAL                         R35 13
      363 GETUPVAL                         R36 21
      364 DUPTABLE                         R37 K70 [{["tag"] = "col size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge"}]
      365 DUPTABLE                         R38 K72 [{"SkillsContent"}]
      366 GETUPVAL                         R39 13
      367 GETUPVAL                         R40 26
      368 DUPTABLE                         R41 K74 [{"onClose"}]
      369 JUMPIFNOT                        R0 ; [+3]
      370 GETTABLEKS                       R42 R0 K73 ["onClose"]
      372 JUMP                             ; [+1]
      373 LOADNIL                          R42
      374 SETTABLEKS                       R42 R41 K73 ["onClose"]
      376 CALL                             R39 2 1
      377 SETTABLEKS                       R39 R38 K71 ["SkillsContent"]
      379 CALL                             R35 3 1
      380 SETTABLEKS                       R35 R34 K27 ["content"]
      382 FASTCALL2                        TABLE_INSERT R27 R34 ; [+4]
      384 MOVE                             R33 R27
      385 GETIMPORT                        R32 K34 [table.insert]
      387 CALL                             R32 2 0
      388 GETUPVAL                         R32 0
      389 GETTABLEKS                       R32 R32 K10 ["useMemo"]
      391 DUPCLOSURE                       R33 K75 [PROTO_22]
      392 CAPTURE                          UPVAL U22
      393 NEWTABLE                         R34 0 0
      395 CALL                             R32 2 1
      396 JUMPIFNOT                        R32 ; [+23]
      397 DUPTABLE                         R35 K77 [{["id"] = "internal", ["text"], ["content"]}]
      398 GETTABLEKS                       R36 R15 K78 ["Internal"]
      400 SETTABLEKS                       R36 R35 K26 ["text"]
      402 GETUPVAL                         R36 13
      403 GETUPVAL                         R37 21
      404 DUPTABLE                         R38 K48 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      405 DUPTABLE                         R39 K80 [{"InternalFeaturesContent"}]
      406 GETUPVAL                         R40 13
      407 GETUPVAL                         R41 27
      408 CALL                             R40 1 1
      409 SETTABLEKS                       R40 R39 K79 ["InternalFeaturesContent"]
      411 CALL                             R36 3 1
      412 SETTABLEKS                       R36 R35 K27 ["content"]
      414 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      416 MOVE                             R34 R27
      417 GETIMPORT                        R33 K34 [table.insert]
      419 CALL                             R33 2 0
      420 JUMPIFNOT                        R29 ; [+2]
      421 LOADN                            R33 150
      422 JUMP                             ; [+1]
      423 LOADN                            R33 125
      424 LOADNIL                          R34
      425 MOVE                             R35 R27
      426 LOADNIL                          R36
      427 LOADNIL                          R37
      428 FORGPREP                         R35
      429 GETTABLEKS                       R40 R39 K24 ["id"]
      431 JUMPIFNOTEQ                      R40 R1 ; [+4]
      433 GETTABLEKS                       R34 R39 K27 ["content"]
      435 JUMP                             ; [+2]
      436 FORGLOOP                         R35 2 ; [-8]
      438 NEWTABLE                         R35 0 0
      440 MOVE                             R36 R27
      441 LOADNIL                          R37
      442 LOADNIL                          R38
      443 FORGPREP                         R36
      444 GETTABLEKS                       R42 R40 K24 ["id"]
      446 JUMPIFEQ                         R42 R1 ; [+2]
      448 LOADB                            R41 0 +1
      449 LOADB                            R41 1
      450 GETTABLEKS                       R42 R40 K24 ["id"]
      452 GETUPVAL                         R43 13
      453 GETUPVAL                         R44 28
      454 DUPTABLE                         R45 K86 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      455 SETTABLEKS                       R39 R45 K81 ["LayoutOrder"]
      457 GETTABLEKS                       R46 R40 K26 ["text"]
      459 SETTABLEKS                       R46 R45 K26 ["text"]
      461 NEWCLOSURE                       R46 P11
      462 CAPTURE                          VAL R2
      463 CAPTURE                          VAL R40
      464 SETTABLEKS                       R46 R45 K82 ["onActivated"]
      466 GETUPVAL                         R46 29
      467 GETTABLEKS                       R46 R46 K87 ["Small"]
      469 SETTABLEKS                       R46 R45 K83 ["size"]
      471 JUMPIFNOT                        R41 ; [+4]
      472 GETUPVAL                         R46 30
      473 GETTABLEKS                       R46 R46 K88 ["Standard"]
      475 JUMP                             ; [+3]
      476 GETUPVAL                         R46 30
      477 GETTABLEKS                       R46 R46 K89 ["Text"]
      479 SETTABLEKS                       R46 R45 K84 ["variant"]
      481 CALL                             R43 2 1
      482 SETTABLE                         R43 R35 R42
      483 FORGLOOP                         R36 2 ; [-40]
      485 GETUPVAL                         R36 31
      486 CALL                             R36 0 1
      487 GETUPVAL                         R37 13
      488 GETUPVAL                         R38 21
      489 DUPTABLE                         R39 K92 [{["tag"] = "row size-full-full", ["testId"]}]
      490 GETUPVAL                         R40 32
      491 GETTABLEKS                       R40 R40 K93 ["IntegrationMenu"]
      493 GETTABLEKS                       R40 R40 K94 ["AddIntegrationDialog"]
      495 SETTABLEKS                       R40 R39 K91 ["testId"]
      497 DUPTABLE                         R40 K100 [{"Dialog", "RobuxPackageModal", "TabList", "Divider", "ContentArea"}]
      498 JUMPIFNOT                        R12 ; [+17]
      499 GETUPVAL                         R41 13
      500 GETUPVAL                         R42 33
      501 DUPTABLE                         R43 K104 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      502 GETTABLEKS                       R44 R12 K105 ["integration"]
      504 SETTABLEKS                       R44 R43 K101 ["initialIntegration"]
      506 GETTABLEKS                       R44 R12 K102 ["onSave"]
      508 SETTABLEKS                       R44 R43 K102 ["onSave"]
      510 SETTABLEKS                       R23 R43 K103 ["checkError"]
      512 SETTABLEKS                       R22 R43 K73 ["onClose"]
      514 CALL                             R41 2 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R41
      517 SETTABLEKS                       R41 R40 K95 ["Dialog"]
      519 GETUPVAL                         R42 6
      520 CALL                             R42 0 1
      521 JUMPIFNOT                        R42 ; [+45]
      522 GETUPVAL                         R42 8
      523 GETTABLEKS                       R42 R42 K106 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      525 JUMPIFNOT                        R42 ; [+41]
      526 GETTABLEKS                       R42 R7 K107 ["isBuyRobuxModalOpen"]
      528 JUMPIFNOT                        R42 ; [+38]
      529 GETUPVAL                         R41 13
      530 GETUPVAL                         R42 34
      531 DUPTABLE                         R43 K113 [{"packages", "isLoading", "hasError", "robuxBalance", "onBuyPackage", "onClose"}]
      532 GETTABLEKS                       R44 R7 K114 ["robuxPackages"]
      534 SETTABLEKS                       R44 R43 K108 ["packages"]
      536 GETTABLEKS                       R44 R7 K115 ["isFetchingRobuxPackages"]
      538 SETTABLEKS                       R44 R43 K109 ["isLoading"]
      540 GETTABLEKS                       R44 R7 K116 ["robuxPackagesError"]
      542 SETTABLEKS                       R44 R43 K110 ["hasError"]
      544 GETTABLEKS                       R44 R7 K117 ["quotaSummary"]
      546 JUMPIFNOT                        R44 ; [+4]
      547 GETTABLEKS                       R44 R7 K117 ["quotaSummary"]
      549 GETTABLEKS                       R44 R44 K111 ["robuxBalance"]
      551 SETTABLEKS                       R44 R43 K111 ["robuxBalance"]
      553 GETTABLEKS                       R44 R7 K118 ["confirmBuyRobuxPackage"]
      555 JUMPIF                           R44 ; [+1]
      556 DUPCLOSURE                       R44 K119 [PROTO_24]
      557 SETTABLEKS                       R44 R43 K112 ["onBuyPackage"]
      559 GETTABLEKS                       R44 R7 K120 ["closeBuyRobuxModal"]
      561 JUMPIF                           R44 ; [+1]
      562 DUPCLOSURE                       R44 K121 [PROTO_25]
      563 SETTABLEKS                       R44 R43 K73 ["onClose"]
      565 CALL                             R41 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R41
      568 SETTABLEKS                       R41 R40 K96 ["RobuxPackageModal"]
      570 GETUPVAL                         R41 13
      571 GETUPVAL                         R42 21
      572 DUPTABLE                         R43 K124 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      573 GETIMPORT                        R44 K127 [UDim2.new]
      575 LOADN                            R45 0
      576 MOVE                             R46 R33
      577 LOADN                            R47 1
      578 LOADN                            R48 0
      579 CALL                             R44 4 1
      580 SETTABLEKS                       R44 R43 K122 ["Size"]
      582 MOVE                             R44 R36
      583 CALL                             R44 0 1
      584 SETTABLEKS                       R44 R43 K81 ["LayoutOrder"]
      586 MOVE                             R44 R35
      587 CALL                             R41 3 1
      588 SETTABLEKS                       R41 R40 K97 ["TabList"]
      590 GETUPVAL                         R41 13
      591 GETUPVAL                         R42 35
      592 DUPTABLE                         R43 K129 [{"LayoutOrder", "variant", "orientation"}]
      593 MOVE                             R44 R36
      594 CALL                             R44 0 1
      595 SETTABLEKS                       R44 R43 K81 ["LayoutOrder"]
      597 GETUPVAL                         R44 36
      598 GETTABLEKS                       R44 R44 K130 ["Default"]
      600 SETTABLEKS                       R44 R43 K84 ["variant"]
      602 GETUPVAL                         R44 37
      603 GETTABLEKS                       R44 R44 K131 ["Vertical"]
      605 SETTABLEKS                       R44 R43 K128 ["orientation"]
      607 CALL                             R41 2 1
      608 SETTABLEKS                       R41 R40 K98 ["Divider"]
      610 GETUPVAL                         R41 13
      611 GETUPVAL                         R42 21
      612 DUPTABLE                         R43 K132 [{"Size", "LayoutOrder", "testId"}]
      613 GETIMPORT                        R44 K127 [UDim2.new]
      615 LOADN                            R45 1
      616 MINUS                            R46 R33
      617 LOADN                            R47 1
      618 LOADN                            R48 0
      619 CALL                             R44 4 1
      620 SETTABLEKS                       R44 R43 K122 ["Size"]
      622 MOVE                             R44 R36
      623 CALL                             R44 0 1
      624 SETTABLEKS                       R44 R43 K81 ["LayoutOrder"]
      626 GETUPVAL                         R44 32
      627 GETTABLEKS                       R44 R44 K93 ["IntegrationMenu"]
      629 GETTABLEKS                       R44 R44 K133 ["TabContent"]
      631 SETTABLEKS                       R44 R43 K91 ["testId"]
      633 DUPTABLE                         R44 K135 [{"Content"}]
      634 SETTABLEKS                       R34 R44 K134 ["Content"]
      636 CALL                             R41 3 1
      637 SETTABLEKS                       R41 R40 K99 ["ContentArea"]
      639 CALL                             R37 3 -1
      640 RETURN                           R37 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AddIntegrationDialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["APIKeyManagement"]
       22 GETTABLEKS                       R3 R3 K10 ["ApiKeySettingsContent"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["CreditMeteringContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["IntegrationManagement"]
       40 GETTABLEKS                       R5 R5 K14 ["ExecutionPermissionsContent"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["IntegrationManagement"]
       49 GETTABLEKS                       R6 R6 K15 ["ExecutionPermissionsModel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K6 ["Parent"]
       58 GETTABLEKS                       R7 R7 K16 ["IntegrationMenuContent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETIMPORT                        R8 K1 [script]
       65 GETTABLEKS                       R8 R8 K6 ["Parent"]
       67 GETTABLEKS                       R8 R8 K17 ["IntegrationTypes"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETIMPORT                        R9 K1 [script]
       74 GETTABLEKS                       R9 R9 K6 ["Parent"]
       76 GETTABLEKS                       R9 R9 K18 ["InternalFeaturesContent"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K8 ["Components"]
       83 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       85 GETTABLEKS                       R10 R10 K19 ["McpAuthorizerManagerContext"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K8 ["Components"]
       92 GETTABLEKS                       R11 R11 K20 ["DailyUsage"]
       94 GETTABLEKS                       R11 R11 K21 ["RobuxPackageModal"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K8 ["Components"]
      101 GETTABLEKS                       R12 R12 K22 ["SkillsManagement"]
      103 GETTABLEKS                       R12 R12 K23 ["SkillsTabContent"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K8 ["Components"]
      110 GETTABLEKS                       R13 R13 K20 ["DailyUsage"]
      112 GETTABLEKS                       R13 R13 K24 ["UsagePage"]
      114 CALL                             R12 1 1
      115 GETIMPORT                        R13 K5 [require]
      117 GETTABLEKS                       R14 R0 K6 ["Parent"]
      119 GETTABLEKS                       R14 R14 K25 ["Dash"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K6 ["Parent"]
      126 GETTABLEKS                       R15 R15 K26 ["Foundation"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K6 ["Parent"]
      133 GETTABLEKS                       R16 R16 K27 ["ModelContextProtocol"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K8 ["Components"]
      140 GETTABLEKS                       R17 R17 K11 ["Contexts"]
      142 GETTABLEKS                       R17 R17 K28 ["PersistedIntegrationContext"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K5 [require]
      147 GETTABLEKS                       R18 R0 K6 ["Parent"]
      149 GETTABLEKS                       R18 R18 K29 ["React"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K6 ["Parent"]
      156 GETTABLEKS                       R19 R19 K30 ["ReactUtils"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K5 [require]
      161 GETTABLEKS                       R20 R0 K31 ["Util"]
      163 GETTABLEKS                       R20 R20 K32 ["TestIds"]
      165 CALL                             R19 1 1
      166 GETIMPORT                        R20 K5 [require]
      168 GETTABLEKS                       R21 R0 K33 ["Resources"]
      170 GETTABLEKS                       R21 R21 K34 ["Localization"]
      172 GETTABLEKS                       R21 R21 K35 ["Translator"]
      174 CALL                             R20 1 1
      175 GETIMPORT                        R21 K5 [require]
      177 GETTABLEKS                       R22 R0 K36 ["Hooks"]
      179 GETTABLEKS                       R22 R22 K37 ["useAsyncGuard"]
      181 CALL                             R21 1 1
      182 GETIMPORT                        R22 K5 [require]
      184 GETTABLEKS                       R23 R0 K36 ["Hooks"]
      186 GETTABLEKS                       R23 R23 K38 ["useWithClient"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K39 ["Guest"]
      193 GETTABLEKS                       R24 R24 K40 ["Environment"]
      195 CALL                             R23 1 1
      196 GETIMPORT                        R24 K5 [require]
      198 GETTABLEKS                       R25 R0 K41 ["Flags"]
      200 CALL                             R24 1 1
      201 GETIMPORT                        R25 K5 [require]
      203 GETTABLEKS                       R26 R0 K42 ["FlagUtils"]
      205 GETTABLEKS                       R26 R26 K43 ["getIsAssistantUseRemoteService"]
      207 CALL                             R25 1 1
      208 GETTABLEKS                       R25 R25 K44 ["get"]
      210 GETIMPORT                        R26 K5 [require]
      212 GETTABLEKS                       R27 R0 K42 ["FlagUtils"]
      214 GETTABLEKS                       R27 R27 K45 ["getIsCreditMeteringEnabled"]
      216 CALL                             R26 1 1
      217 GETTABLEKS                       R27 R15 K46 ["HttpVariantClientTransport"]
      219 GETTABLEKS                       R27 R27 K46 ["HttpVariantClientTransport"]
      221 GETTABLEKS                       R28 R15 K47 ["StreamableHttpClient"]
      223 GETTABLEKS                       R28 R28 K48 ["StreamableHttpClientTransport"]
      225 GETTABLEKS                       R29 R14 K49 ["Button"]
      227 GETTABLEKS                       R30 R14 K50 ["Divider"]
      229 GETTABLEKS                       R31 R14 K51 ["View"]
      231 GETTABLEKS                       R32 R14 K52 ["ScrollView"]
      233 GETTABLEKS                       R33 R14 K53 ["Enums"]
      235 GETTABLEKS                       R33 R33 K54 ["ButtonSize"]
      237 GETTABLEKS                       R34 R14 K53 ["Enums"]
      239 GETTABLEKS                       R34 R34 K55 ["ButtonVariant"]
      241 GETTABLEKS                       R35 R14 K53 ["Enums"]
      243 GETTABLEKS                       R35 R35 K56 ["DividerVariant"]
      245 GETTABLEKS                       R36 R14 K53 ["Enums"]
      247 GETTABLEKS                       R36 R36 K57 ["DividerOrientation"]
      249 GETTABLEKS                       R37 R18 K58 ["createNextOrder"]
      251 GETTABLEKS                       R38 R17 K59 ["createElement"]
      253 GETTABLEKS                       R39 R15 K60 ["Types"]
      255 GETTABLEKS                       R39 R39 K61 ["emptyObject"]
      257 DUPTABLE                         R40 K69 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      258 GETIMPORT                        R41 K72 [UDim2.fromOffset]
      260 LOADN                            R42 0
      261 LOADN                            R43 0
      262 CALL                             R41 2 1
      263 SETTABLEKS                       R41 R40 K62 ["CanvasSize"]
      265 GETIMPORT                        R41 K75 [Enum.AutomaticSize.X]
      267 SETTABLEKS                       R41 R40 K63 ["AutomaticSize"]
      269 GETIMPORT                        R41 K77 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R41 R40 K64 ["AutomaticCanvasSize"]
      273 GETIMPORT                        R41 K78 [Enum.ScrollingDirection.Y]
      275 SETTABLEKS                       R41 R40 K65 ["ScrollingDirection"]
      277 GETTABLEKS                       R41 R14 K53 ["Enums"]
      279 GETTABLEKS                       R41 R41 K79 ["Visibility"]
      281 GETTABLEKS                       R41 R41 K80 ["Auto"]
      283 SETTABLEKS                       R41 R40 K66 ["scrollBarVisibility"]
      285 GETIMPORT                        R41 K83 [Enum.ScrollBarInset.None]
      287 SETTABLEKS                       R41 R40 K67 ["HorizontalScrollBarInset"]
      289 GETIMPORT                        R41 K85 [Enum.ScrollBarInset.Always]
      291 SETTABLEKS                       R41 R40 K68 ["VerticalScrollBarInset"]
      293 DUPTABLE                         R41 K88 [{"SortOrder", "FillDirection"}]
      294 GETIMPORT                        R42 K90 [Enum.SortOrder.LayoutOrder]
      296 SETTABLEKS                       R42 R41 K86 ["SortOrder"]
      298 GETIMPORT                        R42 K92 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R42 R41 K87 ["FillDirection"]
      302 DUPTABLE                         R42 K93 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "VerticalScrollBarInset"}]
      303 GETIMPORT                        R43 K72 [UDim2.fromOffset]
      305 LOADN                            R44 0
      306 LOADN                            R45 0
      307 CALL                             R43 2 1
      308 SETTABLEKS                       R43 R42 K62 ["CanvasSize"]
      310 GETIMPORT                        R43 K77 [Enum.AutomaticSize.Y]
      312 SETTABLEKS                       R43 R42 K64 ["AutomaticCanvasSize"]
      314 GETIMPORT                        R43 K78 [Enum.ScrollingDirection.Y]
      316 SETTABLEKS                       R43 R42 K65 ["ScrollingDirection"]
      318 GETTABLEKS                       R43 R14 K53 ["Enums"]
      320 GETTABLEKS                       R43 R43 K79 ["Visibility"]
      322 GETTABLEKS                       R43 R43 K84 ["Always"]
      324 SETTABLEKS                       R43 R42 K66 ["scrollBarVisibility"]
      326 GETIMPORT                        R43 K85 [Enum.ScrollBarInset.Always]
      328 SETTABLEKS                       R43 R42 K68 ["VerticalScrollBarInset"]
      330 DUPTABLE                         R43 K95 [{"capabilities"}]
      331 DUPTABLE                         R44 K99 [{"prompts", "resources", "tools"}]
      332 MOVE                             R45 R39
      333 CALL                             R45 0 1
      334 SETTABLEKS                       R45 R44 K96 ["prompts"]
      336 MOVE                             R45 R39
      337 CALL                             R45 0 1
      338 SETTABLEKS                       R45 R44 K97 ["resources"]
      340 MOVE                             R45 R39
      341 CALL                             R45 0 1
      342 SETTABLEKS                       R45 R44 K98 ["tools"]
      344 SETTABLEKS                       R44 R43 K94 ["capabilities"]
      346 DUPCLOSURE                       R44 K100 [PROTO_26]
      347 CAPTURE                          VAL R17
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R21
      352 CAPTURE                          VAL R20
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R22
      355 CAPTURE                          VAL R24
      356 CAPTURE                          VAL R27
      357 CAPTURE                          VAL R28
      358 CAPTURE                          VAL R43
      359 CAPTURE                          VAL R13
      360 CAPTURE                          VAL R38
      361 CAPTURE                          VAL R32
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R41
      364 CAPTURE                          VAL R2
      365 CAPTURE                          VAL R12
      366 CAPTURE                          VAL R25
      367 CAPTURE                          VAL R6
      368 CAPTURE                          VAL R31
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R5
      371 CAPTURE                          VAL R42
      372 CAPTURE                          VAL R4
      373 CAPTURE                          VAL R11
      374 CAPTURE                          VAL R8
      375 CAPTURE                          VAL R29
      376 CAPTURE                          VAL R33
      377 CAPTURE                          VAL R34
      378 CAPTURE                          VAL R37
      379 CAPTURE                          VAL R19
      380 CAPTURE                          VAL R1
      381 CAPTURE                          VAL R10
      382 CAPTURE                          VAL R30
      383 CAPTURE                          VAL R35
      384 CAPTURE                          VAL R36
      385 RETURN                           R44 1
