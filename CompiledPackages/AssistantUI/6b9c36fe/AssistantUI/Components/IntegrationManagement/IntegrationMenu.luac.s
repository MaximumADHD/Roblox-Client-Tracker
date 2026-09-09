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
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["hasInternalPermission"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

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
      292 GETUPVAL                         R28 8
      293 GETTABLEKS                       R28 R28 K51 ["FFlagStudioOpenCloudMCP"]
      295 JUMPIFNOT                        R28 ; [+29]
      296 DUPTABLE                         R30 K53 [{["id"] = "permissions", ["text"], ["content"]}]
      297 GETTABLEKS                       R31 R15 K54 ["Permissions"]
      299 SETTABLEKS                       R31 R30 K26 ["text"]
      301 GETUPVAL                         R31 13
      302 GETUPVAL                         R32 14
      303 DUPTABLE                         R33 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      304 GETUPVAL                         R34 15
      305 SETTABLEKS                       R34 R33 K19 ["scroll"]
      307 GETUPVAL                         R34 16
      308 SETTABLEKS                       R34 R33 K20 ["layout"]
      310 DUPTABLE                         R34 K56 [{"ScopePermissionsContent"}]
      311 GETUPVAL                         R35 13
      312 GETUPVAL                         R36 22
      313 CALL                             R35 1 1
      314 SETTABLEKS                       R35 R34 K55 ["ScopePermissionsContent"]
      316 CALL                             R31 3 1
      317 SETTABLEKS                       R31 R30 K27 ["content"]
      319 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      321 MOVE                             R29 R27
      322 GETIMPORT                        R28 K34 [table.insert]
      324 CALL                             R28 2 0
      325 DUPTABLE                         R30 K58 [{["id"] = "skills", ["text"], ["content"]}]
      326 GETTABLEKS                       R31 R15 K59 ["Skills"]
      328 SETTABLEKS                       R31 R30 K26 ["text"]
      330 GETUPVAL                         R31 13
      331 GETUPVAL                         R32 21
      332 DUPTABLE                         R33 K61 [{["tag"] = "col size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge"}]
      333 DUPTABLE                         R34 K63 [{"SkillsContent"}]
      334 GETUPVAL                         R35 13
      335 GETUPVAL                         R36 23
      336 DUPTABLE                         R37 K65 [{"onClose"}]
      337 JUMPIFNOT                        R0 ; [+3]
      338 GETTABLEKS                       R38 R0 K64 ["onClose"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R38
      342 SETTABLEKS                       R38 R37 K64 ["onClose"]
      344 CALL                             R35 2 1
      345 SETTABLEKS                       R35 R34 K62 ["SkillsContent"]
      347 CALL                             R31 3 1
      348 SETTABLEKS                       R31 R30 K27 ["content"]
      350 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      352 MOVE                             R29 R27
      353 GETIMPORT                        R28 K34 [table.insert]
      355 CALL                             R28 2 0
      356 GETUPVAL                         R28 0
      357 GETTABLEKS                       R28 R28 K10 ["useMemo"]
      359 DUPCLOSURE                       R29 K66 [PROTO_21]
      360 CAPTURE                          UPVAL U24
      361 NEWTABLE                         R30 0 0
      363 CALL                             R28 2 1
      364 JUMPIFNOT                        R28 ; [+23]
      365 DUPTABLE                         R31 K68 [{["id"] = "internal", ["text"], ["content"]}]
      366 GETTABLEKS                       R32 R15 K69 ["Internal"]
      368 SETTABLEKS                       R32 R31 K26 ["text"]
      370 GETUPVAL                         R32 13
      371 GETUPVAL                         R33 21
      372 DUPTABLE                         R34 K48 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      373 DUPTABLE                         R35 K71 [{"InternalFeaturesContent"}]
      374 GETUPVAL                         R36 13
      375 GETUPVAL                         R37 25
      376 CALL                             R36 1 1
      377 SETTABLEKS                       R36 R35 K70 ["InternalFeaturesContent"]
      379 CALL                             R32 3 1
      380 SETTABLEKS                       R32 R31 K27 ["content"]
      382 FASTCALL2                        TABLE_INSERT R27 R31 ; [+4]
      384 MOVE                             R30 R27
      385 GETIMPORT                        R29 K34 [table.insert]
      387 CALL                             R29 2 0
      388 LOADNIL                          R29
      389 MOVE                             R30 R27
      390 LOADNIL                          R31
      391 LOADNIL                          R32
      392 FORGPREP                         R30
      393 GETTABLEKS                       R35 R34 K24 ["id"]
      395 JUMPIFNOTEQ                      R35 R1 ; [+4]
      397 GETTABLEKS                       R29 R34 K27 ["content"]
      399 JUMP                             ; [+2]
      400 FORGLOOP                         R30 2 ; [-8]
      402 NEWTABLE                         R30 0 0
      404 MOVE                             R31 R27
      405 LOADNIL                          R32
      406 LOADNIL                          R33
      407 FORGPREP                         R31
      408 GETTABLEKS                       R37 R35 K24 ["id"]
      410 JUMPIFEQ                         R37 R1 ; [+2]
      412 LOADB                            R36 0 +1
      413 LOADB                            R36 1
      414 GETTABLEKS                       R37 R35 K24 ["id"]
      416 GETUPVAL                         R38 13
      417 GETUPVAL                         R39 26
      418 DUPTABLE                         R40 K77 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      419 SETTABLEKS                       R34 R40 K72 ["LayoutOrder"]
      421 GETTABLEKS                       R41 R35 K26 ["text"]
      423 SETTABLEKS                       R41 R40 K26 ["text"]
      425 NEWCLOSURE                       R41 P10
      426 CAPTURE                          VAL R2
      427 CAPTURE                          VAL R35
      428 SETTABLEKS                       R41 R40 K73 ["onActivated"]
      430 GETUPVAL                         R41 27
      431 GETTABLEKS                       R41 R41 K78 ["Small"]
      433 SETTABLEKS                       R41 R40 K74 ["size"]
      435 JUMPIFNOT                        R36 ; [+4]
      436 GETUPVAL                         R41 28
      437 GETTABLEKS                       R41 R41 K79 ["Standard"]
      439 JUMP                             ; [+3]
      440 GETUPVAL                         R41 28
      441 GETTABLEKS                       R41 R41 K80 ["Text"]
      443 SETTABLEKS                       R41 R40 K75 ["variant"]
      445 CALL                             R38 2 1
      446 SETTABLE                         R38 R30 R37
      447 FORGLOOP                         R31 2 ; [-40]
      449 GETUPVAL                         R31 29
      450 CALL                             R31 0 1
      451 GETUPVAL                         R32 13
      452 GETUPVAL                         R33 21
      453 DUPTABLE                         R34 K83 [{["tag"] = "row size-full-full", ["testId"]}]
      454 GETUPVAL                         R35 30
      455 GETTABLEKS                       R35 R35 K84 ["IntegrationMenu"]
      457 GETTABLEKS                       R35 R35 K85 ["AddIntegrationDialog"]
      459 SETTABLEKS                       R35 R34 K82 ["testId"]
      461 DUPTABLE                         R35 K91 [{"Dialog", "RobuxPackageModal", "TabList", "Divider", "ContentArea"}]
      462 JUMPIFNOT                        R12 ; [+17]
      463 GETUPVAL                         R36 13
      464 GETUPVAL                         R37 31
      465 DUPTABLE                         R38 K95 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      466 GETTABLEKS                       R39 R12 K96 ["integration"]
      468 SETTABLEKS                       R39 R38 K92 ["initialIntegration"]
      470 GETTABLEKS                       R39 R12 K93 ["onSave"]
      472 SETTABLEKS                       R39 R38 K93 ["onSave"]
      474 SETTABLEKS                       R23 R38 K94 ["checkError"]
      476 SETTABLEKS                       R22 R38 K64 ["onClose"]
      478 CALL                             R36 2 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R36
      481 SETTABLEKS                       R36 R35 K86 ["Dialog"]
      483 GETUPVAL                         R37 6
      484 CALL                             R37 0 1
      485 JUMPIFNOT                        R37 ; [+45]
      486 GETUPVAL                         R37 8
      487 GETTABLEKS                       R37 R37 K97 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      489 JUMPIFNOT                        R37 ; [+41]
      490 GETTABLEKS                       R37 R7 K98 ["isBuyRobuxModalOpen"]
      492 JUMPIFNOT                        R37 ; [+38]
      493 GETUPVAL                         R36 13
      494 GETUPVAL                         R37 32
      495 DUPTABLE                         R38 K104 [{"packages", "isLoading", "hasError", "robuxBalance", "onBuyPackage", "onClose"}]
      496 GETTABLEKS                       R39 R7 K105 ["robuxPackages"]
      498 SETTABLEKS                       R39 R38 K99 ["packages"]
      500 GETTABLEKS                       R39 R7 K106 ["isFetchingRobuxPackages"]
      502 SETTABLEKS                       R39 R38 K100 ["isLoading"]
      504 GETTABLEKS                       R39 R7 K107 ["robuxPackagesError"]
      506 SETTABLEKS                       R39 R38 K101 ["hasError"]
      508 GETTABLEKS                       R39 R7 K108 ["quotaSummary"]
      510 JUMPIFNOT                        R39 ; [+4]
      511 GETTABLEKS                       R39 R7 K108 ["quotaSummary"]
      513 GETTABLEKS                       R39 R39 K102 ["robuxBalance"]
      515 SETTABLEKS                       R39 R38 K102 ["robuxBalance"]
      517 GETTABLEKS                       R39 R7 K109 ["confirmBuyRobuxPackage"]
      519 JUMPIF                           R39 ; [+1]
      520 DUPCLOSURE                       R39 K110 [PROTO_23]
      521 SETTABLEKS                       R39 R38 K103 ["onBuyPackage"]
      523 GETTABLEKS                       R39 R7 K111 ["closeBuyRobuxModal"]
      525 JUMPIF                           R39 ; [+1]
      526 DUPCLOSURE                       R39 K112 [PROTO_24]
      527 SETTABLEKS                       R39 R38 K64 ["onClose"]
      529 CALL                             R36 2 1
      530 JUMP                             ; [+1]
      531 LOADNIL                          R36
      532 SETTABLEKS                       R36 R35 K87 ["RobuxPackageModal"]
      534 GETUPVAL                         R36 13
      535 GETUPVAL                         R37 21
      536 DUPTABLE                         R38 K115 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      537 GETIMPORT                        R39 K118 [UDim2.new]
      539 LOADN                            R40 0
      540 LOADN                            R41 125
      541 LOADN                            R42 1
      542 LOADN                            R43 0
      543 CALL                             R39 4 1
      544 SETTABLEKS                       R39 R38 K113 ["Size"]
      546 MOVE                             R39 R31
      547 CALL                             R39 0 1
      548 SETTABLEKS                       R39 R38 K72 ["LayoutOrder"]
      550 MOVE                             R39 R30
      551 CALL                             R36 3 1
      552 SETTABLEKS                       R36 R35 K88 ["TabList"]
      554 GETUPVAL                         R36 13
      555 GETUPVAL                         R37 33
      556 DUPTABLE                         R38 K120 [{"LayoutOrder", "variant", "orientation"}]
      557 MOVE                             R39 R31
      558 CALL                             R39 0 1
      559 SETTABLEKS                       R39 R38 K72 ["LayoutOrder"]
      561 GETUPVAL                         R39 34
      562 GETTABLEKS                       R39 R39 K121 ["Default"]
      564 SETTABLEKS                       R39 R38 K75 ["variant"]
      566 GETUPVAL                         R39 35
      567 GETTABLEKS                       R39 R39 K122 ["Vertical"]
      569 SETTABLEKS                       R39 R38 K119 ["orientation"]
      571 CALL                             R36 2 1
      572 SETTABLEKS                       R36 R35 K89 ["Divider"]
      574 GETUPVAL                         R36 13
      575 GETUPVAL                         R37 21
      576 DUPTABLE                         R38 K123 [{"Size", "LayoutOrder", "testId"}]
      577 GETIMPORT                        R39 K118 [UDim2.new]
      579 LOADN                            R40 1
      580 LOADN                            R41 -125
      581 LOADN                            R42 1
      582 LOADN                            R43 0
      583 CALL                             R39 4 1
      584 SETTABLEKS                       R39 R38 K113 ["Size"]
      586 MOVE                             R39 R31
      587 CALL                             R39 0 1
      588 SETTABLEKS                       R39 R38 K72 ["LayoutOrder"]
      590 GETUPVAL                         R39 30
      591 GETTABLEKS                       R39 R39 K84 ["IntegrationMenu"]
      593 GETTABLEKS                       R39 R39 K124 ["TabContent"]
      595 SETTABLEKS                       R39 R38 K82 ["testId"]
      597 DUPTABLE                         R39 K126 [{"Content"}]
      598 SETTABLEKS                       R29 R39 K125 ["Content"]
      600 CALL                             R36 3 1
      601 SETTABLEKS                       R36 R35 K90 ["ContentArea"]
      603 CALL                             R32 3 -1
      604 RETURN                           R32 -1

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
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K40 ["FlagUtils"]
      196 GETTABLEKS                       R25 R25 K41 ["getIsAssistantUseRemoteService"]
      198 CALL                             R24 1 1
      199 GETTABLEKS                       R24 R24 K42 ["get"]
      201 GETIMPORT                        R25 K5 [require]
      203 GETTABLEKS                       R26 R0 K40 ["FlagUtils"]
      205 GETTABLEKS                       R26 R26 K43 ["getIsCreditMeteringEnabled"]
      207 CALL                             R25 1 1
      208 GETTABLEKS                       R26 R14 K44 ["HttpVariantClientTransport"]
      210 GETTABLEKS                       R26 R26 K44 ["HttpVariantClientTransport"]
      212 GETTABLEKS                       R27 R14 K45 ["StreamableHttpClient"]
      214 GETTABLEKS                       R27 R27 K46 ["StreamableHttpClientTransport"]
      216 GETTABLEKS                       R28 R13 K47 ["Button"]
      218 GETTABLEKS                       R29 R13 K48 ["Divider"]
      220 GETTABLEKS                       R30 R13 K49 ["View"]
      222 GETTABLEKS                       R31 R13 K50 ["ScrollView"]
      224 GETTABLEKS                       R32 R13 K51 ["Enums"]
      226 GETTABLEKS                       R32 R32 K52 ["ButtonSize"]
      228 GETTABLEKS                       R33 R13 K51 ["Enums"]
      230 GETTABLEKS                       R33 R33 K53 ["ButtonVariant"]
      232 GETTABLEKS                       R34 R13 K51 ["Enums"]
      234 GETTABLEKS                       R34 R34 K54 ["DividerVariant"]
      236 GETTABLEKS                       R35 R13 K51 ["Enums"]
      238 GETTABLEKS                       R35 R35 K55 ["DividerOrientation"]
      240 GETTABLEKS                       R36 R17 K56 ["createNextOrder"]
      242 GETTABLEKS                       R37 R16 K57 ["createElement"]
      244 GETTABLEKS                       R38 R14 K58 ["Types"]
      246 GETTABLEKS                       R38 R38 K59 ["emptyObject"]
      248 DUPTABLE                         R39 K67 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      249 GETIMPORT                        R40 K70 [UDim2.fromOffset]
      251 LOADN                            R41 0
      252 LOADN                            R42 0
      253 CALL                             R40 2 1
      254 SETTABLEKS                       R40 R39 K60 ["CanvasSize"]
      256 GETIMPORT                        R40 K73 [Enum.AutomaticSize.X]
      258 SETTABLEKS                       R40 R39 K61 ["AutomaticSize"]
      260 GETIMPORT                        R40 K75 [Enum.AutomaticSize.Y]
      262 SETTABLEKS                       R40 R39 K62 ["AutomaticCanvasSize"]
      264 GETIMPORT                        R40 K76 [Enum.ScrollingDirection.Y]
      266 SETTABLEKS                       R40 R39 K63 ["ScrollingDirection"]
      268 GETTABLEKS                       R40 R13 K51 ["Enums"]
      270 GETTABLEKS                       R40 R40 K77 ["Visibility"]
      272 GETTABLEKS                       R40 R40 K78 ["Auto"]
      274 SETTABLEKS                       R40 R39 K64 ["scrollBarVisibility"]
      276 GETIMPORT                        R40 K81 [Enum.ScrollBarInset.None]
      278 SETTABLEKS                       R40 R39 K65 ["HorizontalScrollBarInset"]
      280 GETIMPORT                        R40 K83 [Enum.ScrollBarInset.Always]
      282 SETTABLEKS                       R40 R39 K66 ["VerticalScrollBarInset"]
      284 DUPTABLE                         R40 K86 [{"SortOrder", "FillDirection"}]
      285 GETIMPORT                        R41 K88 [Enum.SortOrder.LayoutOrder]
      287 SETTABLEKS                       R41 R40 K84 ["SortOrder"]
      289 GETIMPORT                        R41 K90 [Enum.FillDirection.Vertical]
      291 SETTABLEKS                       R41 R40 K85 ["FillDirection"]
      293 DUPTABLE                         R41 K92 [{"capabilities"}]
      294 DUPTABLE                         R42 K96 [{"prompts", "resources", "tools"}]
      295 MOVE                             R43 R38
      296 CALL                             R43 0 1
      297 SETTABLEKS                       R43 R42 K93 ["prompts"]
      299 MOVE                             R43 R38
      300 CALL                             R43 0 1
      301 SETTABLEKS                       R43 R42 K94 ["resources"]
      303 MOVE                             R43 R38
      304 CALL                             R43 0 1
      305 SETTABLEKS                       R43 R42 K95 ["tools"]
      307 SETTABLEKS                       R42 R41 K91 ["capabilities"]
      309 DUPCLOSURE                       R42 K97 [PROTO_25]
      310 CAPTURE                          VAL R16
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R7
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R20
      315 CAPTURE                          VAL R19
      316 CAPTURE                          VAL R25
      317 CAPTURE                          VAL R21
      318 CAPTURE                          VAL R23
      319 CAPTURE                          VAL R26
      320 CAPTURE                          VAL R27
      321 CAPTURE                          VAL R41
      322 CAPTURE                          VAL R12
      323 CAPTURE                          VAL R37
      324 CAPTURE                          VAL R31
      325 CAPTURE                          VAL R39
      326 CAPTURE                          VAL R40
      327 CAPTURE                          VAL R2
      328 CAPTURE                          VAL R11
      329 CAPTURE                          VAL R24
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R30
      332 CAPTURE                          VAL R9
      333 CAPTURE                          VAL R10
      334 CAPTURE                          VAL R22
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R28
      337 CAPTURE                          VAL R32
      338 CAPTURE                          VAL R33
      339 CAPTURE                          VAL R36
      340 CAPTURE                          VAL R18
      341 CAPTURE                          VAL R1
      342 CAPTURE                          VAL R8
      343 CAPTURE                          VAL R29
      344 CAPTURE                          VAL R34
      345 CAPTURE                          VAL R35
      346 RETURN                           R42 1
