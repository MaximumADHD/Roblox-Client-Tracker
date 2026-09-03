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
      238 GETUPVAL                         R28 6
      239 GETTABLEKS                       R28 R28 K36 ["FFlagAssistantUseRemoteService"]
      241 JUMPIF                           R28 ; [+13]
      242 DUPTABLE                         R30 K38 [{["id"] = "apiKeys", ["text"], ["content"]}]
      243 GETTABLEKS                       R31 R15 K39 ["ApiKeys"]
      245 SETTABLEKS                       R31 R30 K27 ["text"]
      247 SETTABLEKS                       R26 R30 K28 ["content"]
      249 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      251 MOVE                             R29 R27
      252 GETIMPORT                        R28 K35 [table.insert]
      254 CALL                             R28 2 0
      255 JUMPIFNOT                        R25 ; [+38]
      256 GETUPVAL                         R28 12
      257 GETUPVAL                         R29 18
      258 DUPTABLE                         R30 K46 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      259 SETTABLEKS                       R8 R30 K2 ["integrations"]
      261 SETTABLEKS                       R24 R30 K40 ["onAddIntegration"]
      263 SETTABLEKS                       R20 R30 K41 ["onRemove"]
      265 SETTABLEKS                       R21 R30 K42 ["onEdit"]
      267 SETTABLEKS                       R10 R30 K43 ["onStatusChange"]
      269 SETTABLEKS                       R11 R30 K44 ["onAuthorizationChange"]
      271 SETTABLEKS                       R17 R30 K45 ["setEnableStatus"]
      273 CALL                             R28 2 1
      274 DUPTABLE                         R31 K47 [{["id"] = "integrations", ["text"], ["content"]}]
      275 GETTABLEKS                       R32 R15 K48 ["Integrations"]
      277 SETTABLEKS                       R32 R31 K27 ["text"]
      279 GETUPVAL                         R32 12
      280 GETUPVAL                         R33 19
      281 DUPTABLE                         R34 K50 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      282 DUPTABLE                         R35 K52 [{"MainContent"}]
      283 SETTABLEKS                       R28 R35 K51 ["MainContent"]
      285 CALL                             R32 3 1
      286 SETTABLEKS                       R32 R31 K28 ["content"]
      288 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      290 MOVE                             R30 R27
      291 GETIMPORT                        R29 K35 [table.insert]
      293 CALL                             R29 2 0
      294 GETUPVAL                         R28 6
      295 GETTABLEKS                       R28 R28 K53 ["FFlagStudioOpenCloudMCP"]
      297 JUMPIFNOT                        R28 ; [+29]
      298 DUPTABLE                         R30 K55 [{["id"] = "permissions", ["text"], ["content"]}]
      299 GETTABLEKS                       R31 R15 K56 ["Permissions"]
      301 SETTABLEKS                       R31 R30 K27 ["text"]
      303 GETUPVAL                         R31 12
      304 GETUPVAL                         R32 13
      305 DUPTABLE                         R33 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      306 GETUPVAL                         R34 14
      307 SETTABLEKS                       R34 R33 K19 ["scroll"]
      309 GETUPVAL                         R34 15
      310 SETTABLEKS                       R34 R33 K20 ["layout"]
      312 DUPTABLE                         R34 K58 [{"ScopePermissionsContent"}]
      313 GETUPVAL                         R35 12
      314 GETUPVAL                         R36 20
      315 CALL                             R35 1 1
      316 SETTABLEKS                       R35 R34 K57 ["ScopePermissionsContent"]
      318 CALL                             R31 3 1
      319 SETTABLEKS                       R31 R30 K28 ["content"]
      321 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      323 MOVE                             R29 R27
      324 GETIMPORT                        R28 K35 [table.insert]
      326 CALL                             R28 2 0
      327 DUPTABLE                         R30 K60 [{["id"] = "skills", ["text"], ["content"]}]
      328 GETTABLEKS                       R31 R15 K61 ["Skills"]
      330 SETTABLEKS                       R31 R30 K27 ["text"]
      332 GETUPVAL                         R31 12
      333 GETUPVAL                         R32 19
      334 DUPTABLE                         R33 K63 [{["tag"] = "col size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge"}]
      335 DUPTABLE                         R34 K65 [{"SkillsContent"}]
      336 GETUPVAL                         R35 12
      337 GETUPVAL                         R36 21
      338 DUPTABLE                         R37 K67 [{"onClose"}]
      339 JUMPIFNOT                        R0 ; [+3]
      340 GETTABLEKS                       R38 R0 K66 ["onClose"]
      342 JUMP                             ; [+1]
      343 LOADNIL                          R38
      344 SETTABLEKS                       R38 R37 K66 ["onClose"]
      346 CALL                             R35 2 1
      347 SETTABLEKS                       R35 R34 K64 ["SkillsContent"]
      349 CALL                             R31 3 1
      350 SETTABLEKS                       R31 R30 K28 ["content"]
      352 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      354 MOVE                             R29 R27
      355 GETIMPORT                        R28 K35 [table.insert]
      357 CALL                             R28 2 0
      358 GETUPVAL                         R28 0
      359 GETTABLEKS                       R28 R28 K10 ["useMemo"]
      361 DUPCLOSURE                       R29 K68 [PROTO_21]
      362 CAPTURE                          UPVAL U6
      363 CAPTURE                          UPVAL U22
      364 NEWTABLE                         R30 0 0
      366 CALL                             R28 2 1
      367 JUMPIFNOT                        R28 ; [+23]
      368 DUPTABLE                         R31 K70 [{["id"] = "internal", ["text"], ["content"]}]
      369 GETTABLEKS                       R32 R15 K71 ["Internal"]
      371 SETTABLEKS                       R32 R31 K27 ["text"]
      373 GETUPVAL                         R32 12
      374 GETUPVAL                         R33 19
      375 DUPTABLE                         R34 K50 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      376 DUPTABLE                         R35 K73 [{"InternalFeaturesContent"}]
      377 GETUPVAL                         R36 12
      378 GETUPVAL                         R37 23
      379 CALL                             R36 1 1
      380 SETTABLEKS                       R36 R35 K72 ["InternalFeaturesContent"]
      382 CALL                             R32 3 1
      383 SETTABLEKS                       R32 R31 K28 ["content"]
      385 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      387 MOVE                             R30 R27
      388 GETIMPORT                        R29 K35 [table.insert]
      390 CALL                             R29 2 0
      391 LOADNIL                          R29
      392 MOVE                             R30 R27
      393 LOADNIL                          R31
      394 LOADNIL                          R32
      395 FORGPREP                         R30
      396 GETTABLEKS                       R35 R34 K25 ["id"]
      398 JUMPIFNOTEQ                      R35 R1 ; [+4]
      400 GETTABLEKS                       R29 R34 K28 ["content"]
      402 JUMP                             ; [+2]
      403 FORGLOOP                         R30 2 ; [-8]
      405 NEWTABLE                         R30 0 0
      407 MOVE                             R31 R27
      408 LOADNIL                          R32
      409 LOADNIL                          R33
      410 FORGPREP                         R31
      411 GETTABLEKS                       R37 R35 K25 ["id"]
      413 JUMPIFEQ                         R37 R1 ; [+2]
      415 LOADB                            R36 0 +1
      416 LOADB                            R36 1
      417 GETTABLEKS                       R37 R35 K25 ["id"]
      419 GETUPVAL                         R38 12
      420 GETUPVAL                         R39 24
      421 DUPTABLE                         R40 K79 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      422 SETTABLEKS                       R34 R40 K74 ["LayoutOrder"]
      424 GETTABLEKS                       R41 R35 K27 ["text"]
      426 SETTABLEKS                       R41 R40 K27 ["text"]
      428 NEWCLOSURE                       R41 P10
      429 CAPTURE                          VAL R2
      430 CAPTURE                          VAL R35
      431 SETTABLEKS                       R41 R40 K75 ["onActivated"]
      433 GETUPVAL                         R41 25
      434 GETTABLEKS                       R41 R41 K80 ["Small"]
      436 SETTABLEKS                       R41 R40 K76 ["size"]
      438 JUMPIFNOT                        R36 ; [+4]
      439 GETUPVAL                         R41 26
      440 GETTABLEKS                       R41 R41 K81 ["Standard"]
      442 JUMP                             ; [+3]
      443 GETUPVAL                         R41 26
      444 GETTABLEKS                       R41 R41 K82 ["Text"]
      446 SETTABLEKS                       R41 R40 K77 ["variant"]
      448 CALL                             R38 2 1
      449 SETTABLE                         R38 R30 R37
      450 FORGLOOP                         R31 2 ; [-40]
      452 GETUPVAL                         R31 27
      453 CALL                             R31 0 1
      454 GETUPVAL                         R32 12
      455 GETUPVAL                         R33 19
      456 DUPTABLE                         R34 K85 [{["tag"] = "row size-full-full", ["testId"]}]
      457 GETUPVAL                         R35 28
      458 GETTABLEKS                       R35 R35 K86 ["IntegrationMenu"]
      460 GETTABLEKS                       R35 R35 K87 ["AddIntegrationDialog"]
      462 SETTABLEKS                       R35 R34 K84 ["testId"]
      464 DUPTABLE                         R35 K93 [{"Dialog", "RobuxPackageModal", "TabList", "Divider", "ContentArea"}]
      465 JUMPIFNOT                        R12 ; [+17]
      466 GETUPVAL                         R36 12
      467 GETUPVAL                         R37 29
      468 DUPTABLE                         R38 K97 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      469 GETTABLEKS                       R39 R12 K98 ["integration"]
      471 SETTABLEKS                       R39 R38 K94 ["initialIntegration"]
      473 GETTABLEKS                       R39 R12 K95 ["onSave"]
      475 SETTABLEKS                       R39 R38 K95 ["onSave"]
      477 SETTABLEKS                       R23 R38 K96 ["checkError"]
      479 SETTABLEKS                       R22 R38 K66 ["onClose"]
      481 CALL                             R36 2 1
      482 JUMP                             ; [+1]
      483 LOADNIL                          R36
      484 SETTABLEKS                       R36 R35 K88 ["Dialog"]
      486 GETUPVAL                         R37 6
      487 GETTABLEKS                       R37 R37 K24 ["FFlagAssistantCreditMetering"]
      489 JUMPIFNOT                        R37 ; [+45]
      490 GETUPVAL                         R37 6
      491 GETTABLEKS                       R37 R37 K99 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      493 JUMPIFNOT                        R37 ; [+41]
      494 GETTABLEKS                       R37 R7 K100 ["isBuyRobuxModalOpen"]
      496 JUMPIFNOT                        R37 ; [+38]
      497 GETUPVAL                         R36 12
      498 GETUPVAL                         R37 30
      499 DUPTABLE                         R38 K106 [{"packages", "isLoading", "hasError", "robuxBalance", "onBuyPackage", "onClose"}]
      500 GETTABLEKS                       R39 R7 K107 ["robuxPackages"]
      502 SETTABLEKS                       R39 R38 K101 ["packages"]
      504 GETTABLEKS                       R39 R7 K108 ["isFetchingRobuxPackages"]
      506 SETTABLEKS                       R39 R38 K102 ["isLoading"]
      508 GETTABLEKS                       R39 R7 K109 ["robuxPackagesError"]
      510 SETTABLEKS                       R39 R38 K103 ["hasError"]
      512 GETTABLEKS                       R39 R7 K110 ["quotaSummary"]
      514 JUMPIFNOT                        R39 ; [+4]
      515 GETTABLEKS                       R39 R7 K110 ["quotaSummary"]
      517 GETTABLEKS                       R39 R39 K104 ["robuxBalance"]
      519 SETTABLEKS                       R39 R38 K104 ["robuxBalance"]
      521 GETTABLEKS                       R39 R7 K111 ["confirmBuyRobuxPackage"]
      523 JUMPIF                           R39 ; [+1]
      524 DUPCLOSURE                       R39 K112 [PROTO_23]
      525 SETTABLEKS                       R39 R38 K105 ["onBuyPackage"]
      527 GETTABLEKS                       R39 R7 K113 ["closeBuyRobuxModal"]
      529 JUMPIF                           R39 ; [+1]
      530 DUPCLOSURE                       R39 K114 [PROTO_24]
      531 SETTABLEKS                       R39 R38 K66 ["onClose"]
      533 CALL                             R36 2 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R36
      536 SETTABLEKS                       R36 R35 K89 ["RobuxPackageModal"]
      538 GETUPVAL                         R36 12
      539 GETUPVAL                         R37 19
      540 DUPTABLE                         R38 K117 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      541 GETIMPORT                        R39 K120 [UDim2.new]
      543 LOADN                            R40 0
      544 LOADN                            R41 125
      545 LOADN                            R42 1
      546 LOADN                            R43 0
      547 CALL                             R39 4 1
      548 SETTABLEKS                       R39 R38 K115 ["Size"]
      550 MOVE                             R39 R31
      551 CALL                             R39 0 1
      552 SETTABLEKS                       R39 R38 K74 ["LayoutOrder"]
      554 MOVE                             R39 R30
      555 CALL                             R36 3 1
      556 SETTABLEKS                       R36 R35 K90 ["TabList"]
      558 GETUPVAL                         R36 12
      559 GETUPVAL                         R37 31
      560 DUPTABLE                         R38 K122 [{"LayoutOrder", "variant", "orientation"}]
      561 MOVE                             R39 R31
      562 CALL                             R39 0 1
      563 SETTABLEKS                       R39 R38 K74 ["LayoutOrder"]
      565 GETUPVAL                         R39 32
      566 GETTABLEKS                       R39 R39 K123 ["Default"]
      568 SETTABLEKS                       R39 R38 K77 ["variant"]
      570 GETUPVAL                         R39 33
      571 GETTABLEKS                       R39 R39 K124 ["Vertical"]
      573 SETTABLEKS                       R39 R38 K121 ["orientation"]
      575 CALL                             R36 2 1
      576 SETTABLEKS                       R36 R35 K91 ["Divider"]
      578 GETUPVAL                         R36 12
      579 GETUPVAL                         R37 19
      580 DUPTABLE                         R38 K125 [{"Size", "LayoutOrder", "testId"}]
      581 GETIMPORT                        R39 K120 [UDim2.new]
      583 LOADN                            R40 1
      584 LOADN                            R41 -125
      585 LOADN                            R42 1
      586 LOADN                            R43 0
      587 CALL                             R39 4 1
      588 SETTABLEKS                       R39 R38 K115 ["Size"]
      590 MOVE                             R39 R31
      591 CALL                             R39 0 1
      592 SETTABLEKS                       R39 R38 K74 ["LayoutOrder"]
      594 GETUPVAL                         R39 28
      595 GETTABLEKS                       R39 R39 K86 ["IntegrationMenu"]
      597 GETTABLEKS                       R39 R39 K126 ["TabContent"]
      599 SETTABLEKS                       R39 R38 K84 ["testId"]
      601 DUPTABLE                         R39 K128 [{"Content"}]
      602 SETTABLEKS                       R29 R39 K127 ["Content"]
      604 CALL                             R36 3 1
      605 SETTABLEKS                       R36 R35 K92 ["ContentArea"]
      607 CALL                             R32 3 -1
      608 RETURN                           R32 -1

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
