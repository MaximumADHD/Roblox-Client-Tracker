PROTO_0:
        0 DUPTABLE                         R0 K10 [{"ManageIntegrations", "IntegrationNameExists", "IntegrationUrlExists", "Add", "Integrations", "ApiKeys", "Internal", "Permissions", "Skills", "Usage"}]
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
       43 LOADK                            R4 K18 ["APIKeysTab"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ApiKeys"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K16 ["SettingsDialog"]
       51 LOADK                            R4 K19 ["InternalTab"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Internal"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K16 ["SettingsDialog"]
       59 LOADK                            R4 K20 ["PermissionsTab"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Permissions"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K16 ["SettingsDialog"]
       67 LOADK                            R4 K21 ["SkillsTab"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["Skills"]
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K22 ["FFlagAssistantCreditMetering"]
       76 JUMPIFNOT                        R2 ; [+7]
       77 GETUPVAL                         R1 0
       78 LOADK                            R3 K23 ["CreditMetering"]
       79 LOADK                            R4 K24 ["UsageTitle"]
       80 NAMECALL                         R1 R1 K12 ["getText"]
       82 CALL                             R1 3 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R1
       85 SETTABLEKS                       R1 R0 K9 ["Usage"]
       87 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to connect client %*: %*"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["label"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R3 R3 K4 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantPrivilegedCodeExecution"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["get"]
        7 CALL                             R0 0 1
        8 GETTABLEKS                       R0 R0 K2 ["hasInternalPermission"]
       10 CALL                             R0 0 1
       11 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
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
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          UPVAL U10
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
      117 CAPTURE                          UPVAL U11
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
      134 CAPTURE                          UPVAL U11
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
      180 GETUPVAL                         R25 6
      181 GETTABLEKS                       R25 R25 K15 ["FFlagMCPAssistantManagementMenu"]
      183 JUMPIF                           R25 ; [+3]
      184 GETUPVAL                         R25 6
      185 GETTABLEKS                       R25 R25 K16 ["FFlagAssistantMultiEditExternalClient"]
      187 GETUPVAL                         R26 12
      188 GETUPVAL                         R27 13
      189 DUPTABLE                         R28 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      190 GETUPVAL                         R29 14
      191 SETTABLEKS                       R29 R28 K19 ["scroll"]
      193 GETUPVAL                         R29 15
      194 SETTABLEKS                       R29 R28 K20 ["layout"]
      196 DUPTABLE                         R29 K23 [{"ApiKeySettings"}]
      197 GETUPVAL                         R30 12
      198 GETUPVAL                         R31 16
      199 CALL                             R30 1 1
      200 SETTABLEKS                       R30 R29 K22 ["ApiKeySettings"]
      202 CALL                             R26 3 1
      203 NEWTABLE                         R27 0 0
      205 GETUPVAL                         R28 6
      206 GETTABLEKS                       R28 R28 K24 ["FFlagAssistantCreditMetering"]
      208 JUMPIFNOT                        R28 ; [+29]
      209 DUPTABLE                         R30 K29 [{["id"] = "usage", ["text"], ["content"]}]
      210 GETTABLEKS                       R31 R15 K30 ["Usage"]
      212 SETTABLEKS                       R31 R30 K27 ["text"]
      214 GETUPVAL                         R31 12
      215 GETUPVAL                         R32 13
      216 DUPTABLE                         R33 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      217 GETUPVAL                         R34 14
      218 SETTABLEKS                       R34 R33 K19 ["scroll"]
      220 GETUPVAL                         R34 15
      221 SETTABLEKS                       R34 R33 K20 ["layout"]
      223 DUPTABLE                         R34 K32 [{"UsagePage"}]
      224 GETUPVAL                         R35 12
      225 GETUPVAL                         R36 17
      226 CALL                             R35 1 1
      227 SETTABLEKS                       R35 R34 K31 ["UsagePage"]
      229 CALL                             R31 3 1
      230 SETTABLEKS                       R31 R30 K28 ["content"]
      232 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      234 MOVE                             R29 R27
      235 GETIMPORT                        R28 K35 [table.insert]
      237 CALL                             R28 2 0
      238 DUPTABLE                         R30 K37 [{["id"] = "apiKeys", ["text"], ["content"]}]
      239 GETTABLEKS                       R31 R15 K38 ["ApiKeys"]
      241 SETTABLEKS                       R31 R30 K27 ["text"]
      243 SETTABLEKS                       R26 R30 K28 ["content"]
      245 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      247 MOVE                             R29 R27
      248 GETIMPORT                        R28 K35 [table.insert]
      250 CALL                             R28 2 0
      251 JUMPIFNOT                        R25 ; [+38]
      252 GETUPVAL                         R28 12
      253 GETUPVAL                         R29 18
      254 DUPTABLE                         R30 K45 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      255 SETTABLEKS                       R8 R30 K2 ["integrations"]
      257 SETTABLEKS                       R24 R30 K39 ["onAddIntegration"]
      259 SETTABLEKS                       R20 R30 K40 ["onRemove"]
      261 SETTABLEKS                       R21 R30 K41 ["onEdit"]
      263 SETTABLEKS                       R10 R30 K42 ["onStatusChange"]
      265 SETTABLEKS                       R11 R30 K43 ["onAuthorizationChange"]
      267 SETTABLEKS                       R17 R30 K44 ["setEnableStatus"]
      269 CALL                             R28 2 1
      270 DUPTABLE                         R31 K46 [{["id"] = "integrations", ["text"], ["content"]}]
      271 GETTABLEKS                       R32 R15 K47 ["Integrations"]
      273 SETTABLEKS                       R32 R31 K27 ["text"]
      275 GETUPVAL                         R32 12
      276 GETUPVAL                         R33 19
      277 DUPTABLE                         R34 K49 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      278 DUPTABLE                         R35 K51 [{"MainContent"}]
      279 SETTABLEKS                       R28 R35 K50 ["MainContent"]
      281 CALL                             R32 3 1
      282 SETTABLEKS                       R32 R31 K28 ["content"]
      284 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      286 MOVE                             R30 R27
      287 GETIMPORT                        R29 K35 [table.insert]
      289 CALL                             R29 2 0
      290 GETUPVAL                         R28 6
      291 GETTABLEKS                       R28 R28 K52 ["FFlagStudioOpenCloudMCP"]
      293 JUMPIFNOT                        R28 ; [+29]
      294 DUPTABLE                         R30 K54 [{["id"] = "permissions", ["text"], ["content"]}]
      295 GETTABLEKS                       R31 R15 K55 ["Permissions"]
      297 SETTABLEKS                       R31 R30 K27 ["text"]
      299 GETUPVAL                         R31 12
      300 GETUPVAL                         R32 13
      301 DUPTABLE                         R33 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      302 GETUPVAL                         R34 14
      303 SETTABLEKS                       R34 R33 K19 ["scroll"]
      305 GETUPVAL                         R34 15
      306 SETTABLEKS                       R34 R33 K20 ["layout"]
      308 DUPTABLE                         R34 K57 [{"ScopePermissionsContent"}]
      309 GETUPVAL                         R35 12
      310 GETUPVAL                         R36 20
      311 CALL                             R35 1 1
      312 SETTABLEKS                       R35 R34 K56 ["ScopePermissionsContent"]
      314 CALL                             R31 3 1
      315 SETTABLEKS                       R31 R30 K28 ["content"]
      317 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      319 MOVE                             R29 R27
      320 GETIMPORT                        R28 K35 [table.insert]
      322 CALL                             R28 2 0
      323 DUPTABLE                         R30 K59 [{["id"] = "skills", ["text"], ["content"]}]
      324 GETTABLEKS                       R31 R15 K60 ["Skills"]
      326 SETTABLEKS                       R31 R30 K27 ["text"]
      328 GETUPVAL                         R31 12
      329 GETUPVAL                         R32 19
      330 DUPTABLE                         R33 K62 [{["tag"] = "col size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge"}]
      331 DUPTABLE                         R34 K64 [{"SkillsContent"}]
      332 GETUPVAL                         R35 12
      333 GETUPVAL                         R36 21
      334 DUPTABLE                         R37 K66 [{"onClose"}]
      335 JUMPIFNOT                        R0 ; [+3]
      336 GETTABLEKS                       R38 R0 K65 ["onClose"]
      338 JUMP                             ; [+1]
      339 LOADNIL                          R38
      340 SETTABLEKS                       R38 R37 K65 ["onClose"]
      342 CALL                             R35 2 1
      343 SETTABLEKS                       R35 R34 K63 ["SkillsContent"]
      345 CALL                             R31 3 1
      346 SETTABLEKS                       R31 R30 K28 ["content"]
      348 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      350 MOVE                             R29 R27
      351 GETIMPORT                        R28 K35 [table.insert]
      353 CALL                             R28 2 0
      354 GETUPVAL                         R28 0
      355 GETTABLEKS                       R28 R28 K10 ["useMemo"]
      357 DUPCLOSURE                       R29 K67 [PROTO_21]
      358 CAPTURE                          UPVAL U6
      359 CAPTURE                          UPVAL U22
      360 NEWTABLE                         R30 0 0
      362 CALL                             R28 2 1
      363 JUMPIFNOT                        R28 ; [+23]
      364 DUPTABLE                         R31 K69 [{["id"] = "internal", ["text"], ["content"]}]
      365 GETTABLEKS                       R32 R15 K70 ["Internal"]
      367 SETTABLEKS                       R32 R31 K27 ["text"]
      369 GETUPVAL                         R32 12
      370 GETUPVAL                         R33 19
      371 DUPTABLE                         R34 K49 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      372 DUPTABLE                         R35 K72 [{"InternalFeaturesContent"}]
      373 GETUPVAL                         R36 12
      374 GETUPVAL                         R37 23
      375 CALL                             R36 1 1
      376 SETTABLEKS                       R36 R35 K71 ["InternalFeaturesContent"]
      378 CALL                             R32 3 1
      379 SETTABLEKS                       R32 R31 K28 ["content"]
      381 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      383 MOVE                             R30 R27
      384 GETIMPORT                        R29 K35 [table.insert]
      386 CALL                             R29 2 0
      387 LOADNIL                          R29
      388 MOVE                             R30 R27
      389 LOADNIL                          R31
      390 LOADNIL                          R32
      391 FORGPREP                         R30
      392 GETTABLEKS                       R35 R34 K25 ["id"]
      394 JUMPIFNOTEQ                      R35 R1 ; [+4]
      396 GETTABLEKS                       R29 R34 K28 ["content"]
      398 JUMP                             ; [+2]
      399 FORGLOOP                         R30 2 ; [-8]
      401 NEWTABLE                         R30 0 0
      403 MOVE                             R31 R27
      404 LOADNIL                          R32
      405 LOADNIL                          R33
      406 FORGPREP                         R31
      407 GETTABLEKS                       R37 R35 K25 ["id"]
      409 JUMPIFEQ                         R37 R1 ; [+2]
      411 LOADB                            R36 0 +1
      412 LOADB                            R36 1
      413 GETTABLEKS                       R37 R35 K25 ["id"]
      415 GETUPVAL                         R38 12
      416 GETUPVAL                         R39 24
      417 DUPTABLE                         R40 K78 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      418 SETTABLEKS                       R34 R40 K73 ["LayoutOrder"]
      420 GETTABLEKS                       R41 R35 K27 ["text"]
      422 SETTABLEKS                       R41 R40 K27 ["text"]
      424 NEWCLOSURE                       R41 P10
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R35
      427 SETTABLEKS                       R41 R40 K74 ["onActivated"]
      429 GETUPVAL                         R41 25
      430 GETTABLEKS                       R41 R41 K79 ["Small"]
      432 SETTABLEKS                       R41 R40 K75 ["size"]
      434 JUMPIFNOT                        R36 ; [+4]
      435 GETUPVAL                         R41 26
      436 GETTABLEKS                       R41 R41 K80 ["Standard"]
      438 JUMP                             ; [+3]
      439 GETUPVAL                         R41 26
      440 GETTABLEKS                       R41 R41 K81 ["Text"]
      442 SETTABLEKS                       R41 R40 K76 ["variant"]
      444 CALL                             R38 2 1
      445 SETTABLE                         R38 R30 R37
      446 FORGLOOP                         R31 2 ; [-40]
      448 GETUPVAL                         R31 27
      449 CALL                             R31 0 1
      450 GETUPVAL                         R32 12
      451 GETUPVAL                         R33 19
      452 DUPTABLE                         R34 K84 [{["tag"] = "row size-full-full", ["testId"]}]
      453 GETUPVAL                         R35 28
      454 GETTABLEKS                       R35 R35 K85 ["IntegrationMenu"]
      456 GETTABLEKS                       R35 R35 K86 ["AddIntegrationDialog"]
      458 SETTABLEKS                       R35 R34 K83 ["testId"]
      460 DUPTABLE                         R35 K92 [{"Dialog", "RobuxPackageModal", "TabList", "Divider", "ContentArea"}]
      461 JUMPIFNOT                        R12 ; [+17]
      462 GETUPVAL                         R36 12
      463 GETUPVAL                         R37 29
      464 DUPTABLE                         R38 K96 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      465 GETTABLEKS                       R39 R12 K97 ["integration"]
      467 SETTABLEKS                       R39 R38 K93 ["initialIntegration"]
      469 GETTABLEKS                       R39 R12 K94 ["onSave"]
      471 SETTABLEKS                       R39 R38 K94 ["onSave"]
      473 SETTABLEKS                       R23 R38 K95 ["checkError"]
      475 SETTABLEKS                       R22 R38 K65 ["onClose"]
      477 CALL                             R36 2 1
      478 JUMP                             ; [+1]
      479 LOADNIL                          R36
      480 SETTABLEKS                       R36 R35 K87 ["Dialog"]
      482 GETUPVAL                         R37 6
      483 GETTABLEKS                       R37 R37 K24 ["FFlagAssistantCreditMetering"]
      485 JUMPIFNOT                        R37 ; [+41]
      486 GETTABLEKS                       R37 R7 K98 ["isBuyRobuxModalOpen"]
      488 JUMPIFNOT                        R37 ; [+38]
      489 GETUPVAL                         R36 12
      490 GETUPVAL                         R37 30
      491 DUPTABLE                         R38 K104 [{"packages", "isLoading", "hasError", "robuxBalance", "onBuyPackage", "onClose"}]
      492 GETTABLEKS                       R39 R7 K105 ["robuxPackages"]
      494 SETTABLEKS                       R39 R38 K99 ["packages"]
      496 GETTABLEKS                       R39 R7 K106 ["isFetchingRobuxPackages"]
      498 SETTABLEKS                       R39 R38 K100 ["isLoading"]
      500 GETTABLEKS                       R39 R7 K107 ["robuxPackagesError"]
      502 SETTABLEKS                       R39 R38 K101 ["hasError"]
      504 GETTABLEKS                       R39 R7 K108 ["quotaSummary"]
      506 JUMPIFNOT                        R39 ; [+4]
      507 GETTABLEKS                       R39 R7 K108 ["quotaSummary"]
      509 GETTABLEKS                       R39 R39 K102 ["robuxBalance"]
      511 SETTABLEKS                       R39 R38 K102 ["robuxBalance"]
      513 GETTABLEKS                       R39 R7 K109 ["confirmBuyRobuxPackage"]
      515 JUMPIF                           R39 ; [+1]
      516 DUPCLOSURE                       R39 K110 [PROTO_23]
      517 SETTABLEKS                       R39 R38 K103 ["onBuyPackage"]
      519 GETTABLEKS                       R39 R7 K111 ["closeBuyRobuxModal"]
      521 JUMPIF                           R39 ; [+1]
      522 DUPCLOSURE                       R39 K112 [PROTO_24]
      523 SETTABLEKS                       R39 R38 K65 ["onClose"]
      525 CALL                             R36 2 1
      526 JUMP                             ; [+1]
      527 LOADNIL                          R36
      528 SETTABLEKS                       R36 R35 K88 ["RobuxPackageModal"]
      530 GETUPVAL                         R36 12
      531 GETUPVAL                         R37 19
      532 DUPTABLE                         R38 K115 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      533 GETIMPORT                        R39 K118 [UDim2.new]
      535 LOADN                            R40 0
      536 LOADN                            R41 125
      537 LOADN                            R42 1
      538 LOADN                            R43 0
      539 CALL                             R39 4 1
      540 SETTABLEKS                       R39 R38 K113 ["Size"]
      542 MOVE                             R39 R31
      543 CALL                             R39 0 1
      544 SETTABLEKS                       R39 R38 K73 ["LayoutOrder"]
      546 MOVE                             R39 R30
      547 CALL                             R36 3 1
      548 SETTABLEKS                       R36 R35 K89 ["TabList"]
      550 GETUPVAL                         R36 12
      551 GETUPVAL                         R37 31
      552 DUPTABLE                         R38 K120 [{"LayoutOrder", "variant", "orientation"}]
      553 MOVE                             R39 R31
      554 CALL                             R39 0 1
      555 SETTABLEKS                       R39 R38 K73 ["LayoutOrder"]
      557 GETUPVAL                         R39 32
      558 GETTABLEKS                       R39 R39 K121 ["Default"]
      560 SETTABLEKS                       R39 R38 K76 ["variant"]
      562 GETUPVAL                         R39 33
      563 GETTABLEKS                       R39 R39 K122 ["Vertical"]
      565 SETTABLEKS                       R39 R38 K119 ["orientation"]
      567 CALL                             R36 2 1
      568 SETTABLEKS                       R36 R35 K90 ["Divider"]
      570 GETUPVAL                         R36 12
      571 GETUPVAL                         R37 19
      572 DUPTABLE                         R38 K123 [{"Size", "LayoutOrder", "testId"}]
      573 GETIMPORT                        R39 K118 [UDim2.new]
      575 LOADN                            R40 1
      576 LOADN                            R41 -125
      577 LOADN                            R42 1
      578 LOADN                            R43 0
      579 CALL                             R39 4 1
      580 SETTABLEKS                       R39 R38 K113 ["Size"]
      582 MOVE                             R39 R31
      583 CALL                             R39 0 1
      584 SETTABLEKS                       R39 R38 K73 ["LayoutOrder"]
      586 GETUPVAL                         R39 28
      587 GETTABLEKS                       R39 R39 K85 ["IntegrationMenu"]
      589 GETTABLEKS                       R39 R39 K124 ["TabContent"]
      591 SETTABLEKS                       R39 R38 K83 ["testId"]
      593 DUPTABLE                         R39 K126 [{"Content"}]
      594 SETTABLEKS                       R29 R39 K125 ["Content"]
      596 CALL                             R36 3 1
      597 SETTABLEKS                       R36 R35 K91 ["ContentArea"]
      599 CALL                             R32 3 -1
      600 RETURN                           R32 -1

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
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K13 ["IntegrationMenuContent"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K6 ["Parent"]
       49 GETTABLEKS                       R6 R6 K14 ["IntegrationTypes"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K6 ["Parent"]
       58 GETTABLEKS                       R7 R7 K15 ["InternalFeaturesContent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Components"]
       65 GETTABLEKS                       R8 R8 K11 ["Contexts"]
       67 GETTABLEKS                       R8 R8 K16 ["McpAuthorizerManagerContext"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Components"]
       74 GETTABLEKS                       R9 R9 K17 ["DailyUsage"]
       76 GETTABLEKS                       R9 R9 K18 ["RobuxPackageModal"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETIMPORT                        R10 K1 [script]
       83 GETTABLEKS                       R10 R10 K6 ["Parent"]
       85 GETTABLEKS                       R10 R10 K19 ["ScopePermissionsContent"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K8 ["Components"]
       92 GETTABLEKS                       R11 R11 K20 ["SkillsManagement"]
       94 GETTABLEKS                       R11 R11 K21 ["SkillsTabContent"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K8 ["Components"]
      101 GETTABLEKS                       R12 R12 K17 ["DailyUsage"]
      103 GETTABLEKS                       R12 R12 K22 ["UsagePage"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K6 ["Parent"]
      110 GETTABLEKS                       R13 R13 K23 ["Dash"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K6 ["Parent"]
      117 GETTABLEKS                       R14 R14 K24 ["Foundation"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K6 ["Parent"]
      124 GETTABLEKS                       R15 R15 K25 ["ModelContextProtocol"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K8 ["Components"]
      131 GETTABLEKS                       R16 R16 K11 ["Contexts"]
      133 GETTABLEKS                       R16 R16 K26 ["PersistedIntegrationContext"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K6 ["Parent"]
      140 GETTABLEKS                       R17 R17 K27 ["React"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K6 ["Parent"]
      147 GETTABLEKS                       R18 R18 K28 ["ReactUtils"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K5 [require]
      152 GETTABLEKS                       R19 R0 K29 ["Util"]
      154 GETTABLEKS                       R19 R19 K30 ["TestIds"]
      156 CALL                             R18 1 1
      157 GETIMPORT                        R19 K5 [require]
      159 GETTABLEKS                       R20 R0 K31 ["Resources"]
      161 GETTABLEKS                       R20 R20 K32 ["Localization"]
      163 GETTABLEKS                       R20 R20 K33 ["Translator"]
      165 CALL                             R19 1 1
      166 GETIMPORT                        R20 K5 [require]
      168 GETTABLEKS                       R21 R0 K34 ["Hooks"]
      170 GETTABLEKS                       R21 R21 K35 ["useAsyncGuard"]
      172 CALL                             R20 1 1
      173 GETIMPORT                        R21 K5 [require]
      175 GETTABLEKS                       R22 R0 K34 ["Hooks"]
      177 GETTABLEKS                       R22 R22 K36 ["useWithClient"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K37 ["Guest"]
      184 GETTABLEKS                       R23 R23 K38 ["Environment"]
      186 CALL                             R22 1 1
      187 GETIMPORT                        R23 K5 [require]
      189 GETTABLEKS                       R24 R0 K39 ["Flags"]
      191 CALL                             R23 1 1
      192 GETTABLEKS                       R24 R14 K40 ["HttpVariantClientTransport"]
      194 GETTABLEKS                       R24 R24 K40 ["HttpVariantClientTransport"]
      196 GETTABLEKS                       R25 R14 K41 ["StreamableHttpClient"]
      198 GETTABLEKS                       R25 R25 K42 ["StreamableHttpClientTransport"]
      200 GETTABLEKS                       R26 R13 K43 ["Button"]
      202 GETTABLEKS                       R27 R13 K44 ["Divider"]
      204 GETTABLEKS                       R28 R13 K45 ["View"]
      206 GETTABLEKS                       R29 R13 K46 ["ScrollView"]
      208 GETTABLEKS                       R30 R13 K47 ["Enums"]
      210 GETTABLEKS                       R30 R30 K48 ["ButtonSize"]
      212 GETTABLEKS                       R31 R13 K47 ["Enums"]
      214 GETTABLEKS                       R31 R31 K49 ["ButtonVariant"]
      216 GETTABLEKS                       R32 R13 K47 ["Enums"]
      218 GETTABLEKS                       R32 R32 K50 ["DividerVariant"]
      220 GETTABLEKS                       R33 R13 K47 ["Enums"]
      222 GETTABLEKS                       R33 R33 K51 ["DividerOrientation"]
      224 GETTABLEKS                       R34 R17 K52 ["createNextOrder"]
      226 GETTABLEKS                       R35 R16 K53 ["createElement"]
      228 GETTABLEKS                       R36 R14 K54 ["Types"]
      230 GETTABLEKS                       R36 R36 K55 ["emptyObject"]
      232 DUPTABLE                         R37 K63 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      233 GETIMPORT                        R38 K66 [UDim2.fromOffset]
      235 LOADN                            R39 0
      236 LOADN                            R40 0
      237 CALL                             R38 2 1
      238 SETTABLEKS                       R38 R37 K56 ["CanvasSize"]
      240 GETIMPORT                        R38 K69 [Enum.AutomaticSize.X]
      242 SETTABLEKS                       R38 R37 K57 ["AutomaticSize"]
      244 GETIMPORT                        R38 K71 [Enum.AutomaticSize.Y]
      246 SETTABLEKS                       R38 R37 K58 ["AutomaticCanvasSize"]
      248 GETIMPORT                        R38 K72 [Enum.ScrollingDirection.Y]
      250 SETTABLEKS                       R38 R37 K59 ["ScrollingDirection"]
      252 GETTABLEKS                       R38 R13 K47 ["Enums"]
      254 GETTABLEKS                       R38 R38 K73 ["Visibility"]
      256 GETTABLEKS                       R38 R38 K74 ["Auto"]
      258 SETTABLEKS                       R38 R37 K60 ["scrollBarVisibility"]
      260 GETIMPORT                        R38 K77 [Enum.ScrollBarInset.None]
      262 SETTABLEKS                       R38 R37 K61 ["HorizontalScrollBarInset"]
      264 GETIMPORT                        R38 K79 [Enum.ScrollBarInset.Always]
      266 SETTABLEKS                       R38 R37 K62 ["VerticalScrollBarInset"]
      268 DUPTABLE                         R38 K82 [{"SortOrder", "FillDirection"}]
      269 GETIMPORT                        R39 K84 [Enum.SortOrder.LayoutOrder]
      271 SETTABLEKS                       R39 R38 K80 ["SortOrder"]
      273 GETIMPORT                        R39 K86 [Enum.FillDirection.Vertical]
      275 SETTABLEKS                       R39 R38 K81 ["FillDirection"]
      277 DUPTABLE                         R39 K88 [{"capabilities"}]
      278 DUPTABLE                         R40 K92 [{"prompts", "resources", "tools"}]
      279 MOVE                             R41 R36
      280 CALL                             R41 0 1
      281 SETTABLEKS                       R41 R40 K89 ["prompts"]
      283 MOVE                             R41 R36
      284 CALL                             R41 0 1
      285 SETTABLEKS                       R41 R40 K90 ["resources"]
      287 MOVE                             R41 R36
      288 CALL                             R41 0 1
      289 SETTABLEKS                       R41 R40 K91 ["tools"]
      291 SETTABLEKS                       R40 R39 K87 ["capabilities"]
      293 DUPCLOSURE                       R40 K93 [PROTO_25]
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R20
      299 CAPTURE                          VAL R19
      300 CAPTURE                          VAL R23
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R24
      303 CAPTURE                          VAL R25
      304 CAPTURE                          VAL R39
      305 CAPTURE                          VAL R12
      306 CAPTURE                          VAL R35
      307 CAPTURE                          VAL R29
      308 CAPTURE                          VAL R37
      309 CAPTURE                          VAL R38
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R28
      314 CAPTURE                          VAL R9
      315 CAPTURE                          VAL R10
      316 CAPTURE                          VAL R22
      317 CAPTURE                          VAL R6
      318 CAPTURE                          VAL R26
      319 CAPTURE                          VAL R30
      320 CAPTURE                          VAL R31
      321 CAPTURE                          VAL R34
      322 CAPTURE                          VAL R18
      323 CAPTURE                          VAL R1
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R27
      326 CAPTURE                          VAL R32
      327 CAPTURE                          VAL R33
      328 RETURN                           R40 1
