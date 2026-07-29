PROTO_0:
        0 DUPTABLE                         R0 K9 [{"ManageIntegrations", "IntegrationNameExists", "IntegrationUrlExists", "Add", "Integrations", "ApiKeys", "Internal", "Permissions", "Skills"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K10 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K11 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K10 ["IntegrationManagement"]
       11 LOADK                            R4 K12 ["IntegrationNameAlreadyExists"]
       12 NAMECALL                         R1 R1 K11 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["IntegrationNameExists"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K10 ["IntegrationManagement"]
       19 LOADK                            R4 K13 ["IntegrationUrlAlreadyExists"]
       20 NAMECALL                         R1 R1 K11 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["IntegrationUrlExists"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K14 ["Settings"]
       27 LOADK                            R4 K3 ["Add"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K15 ["SettingsDialog"]
       35 LOADK                            R4 K16 ["ManageIntegrationsTab"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Integrations"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K15 ["SettingsDialog"]
       43 LOADK                            R4 K17 ["APIKeysTab"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ApiKeys"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K15 ["SettingsDialog"]
       51 LOADK                            R4 K18 ["InternalTab"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Internal"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K15 ["SettingsDialog"]
       59 LOADK                            R4 K19 ["PermissionsTab"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Permissions"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K15 ["SettingsDialog"]
       67 LOADK                            R4 K20 ["SkillsTab"]
       68 NAMECALL                         R1 R1 K11 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["Skills"]
       73 RETURN                           R0 1

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
       30 GETTABLEKS                       R7 R6 K2 ["integrations"]
       32 GETTABLEKS                       R8 R6 K7 ["setIntegrations"]
       34 GETTABLEKS                       R9 R6 K8 ["setEnabled"]
       36 GETTABLEKS                       R10 R6 K9 ["saveAuthPersistInfo"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K0 ["useState"]
       41 LOADNIL                          R12
       42 CALL                             R11 1 2
       43 GETUPVAL                         R13 3
       44 CALL                             R13 0 1
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K10 ["useMemo"]
       48 DUPCLOSURE                       R15 K11 [PROTO_0]
       49 CAPTURE                          UPVAL U4
       50 NEWTABLE                         R16 0 1
       52 GETUPVAL                         R17 4
       53 GETTABLEKS                       R17 R17 K12 ["locale"]
       55 SETLIST                          R16 R17 1 [1]
       57 CALL                             R14 2 1
       58 GETUPVAL                         R15 5
       59 CALL                             R15 0 1
       60 GETUPVAL                         R16 0
       61 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       63 NEWCLOSURE                       R17 P1
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R5
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          VAL R9
       71 NEWTABLE                         R18 0 2
       73 MOVE                             R19 R15
       74 MOVE                             R20 R5
       75 SETLIST                          R18 R19 2 [1]
       77 CALL                             R16 2 1
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       81 NEWCLOSURE                       R18 P2
       82 CAPTURE                          VAL R16
       83 NEWTABLE                         R19 0 1
       85 MOVE                             R20 R16
       86 SETLIST                          R19 R20 1 [1]
       88 CALL                             R17 2 1
       89 GETUPVAL                         R18 0
       90 GETTABLEKS                       R18 R18 K13 ["useCallback"]
       92 NEWCLOSURE                       R19 P3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R17
       96 NEWTABLE                         R20 0 1
       98 MOVE                             R21 R17
       99 SETLIST                          R20 R21 1 [1]
      101 CALL                             R18 2 1
      102 GETUPVAL                         R19 0
      103 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      105 NEWCLOSURE                       R20 P4
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R8
      109 CAPTURE                          UPVAL U10
      110 NEWTABLE                         R21 0 2
      112 GETTABLEKS                       R22 R13 K14 ["run"]
      114 MOVE                             R23 R5
      115 SETLIST                          R21 R22 2 [1]
      117 CALL                             R19 2 1
      118 GETUPVAL                         R20 0
      119 GETTABLEKS                       R20 R20 K13 ["useCallback"]
      121 NEWCLOSURE                       R21 P5
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R8
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R17
      129 NEWTABLE                         R22 0 4
      131 GETTABLEKS                       R23 R13 K14 ["run"]
      133 MOVE                             R24 R15
      134 MOVE                             R25 R17
      135 MOVE                             R26 R5
      136 SETLIST                          R22 R23 4 [1]
      138 CALL                             R20 2 1
      139 GETUPVAL                         R21 0
      140 GETTABLEKS                       R21 R21 K13 ["useCallback"]
      142 NEWCLOSURE                       R22 P6
      143 CAPTURE                          VAL R12
      144 NEWTABLE                         R23 0 0
      146 CALL                             R21 2 1
      147 GETUPVAL                         R22 0
      148 GETTABLEKS                       R22 R22 K13 ["useCallback"]
      150 NEWCLOSURE                       R23 P7
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R14
      153 NEWTABLE                         R24 0 2
      155 MOVE                             R25 R7
      156 MOVE                             R26 R14
      157 SETLIST                          R24 R25 2 [1]
      159 CALL                             R22 2 1
      160 GETUPVAL                         R23 0
      161 GETTABLEKS                       R23 R23 K13 ["useCallback"]
      163 NEWCLOSURE                       R24 P8
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R18
      166 NEWTABLE                         R25 0 1
      168 MOVE                             R26 R18
      169 SETLIST                          R25 R26 1 [1]
      171 CALL                             R23 2 1
      172 GETUPVAL                         R24 6
      173 GETTABLEKS                       R24 R24 K15 ["FFlagMCPAssistantManagementMenu"]
      175 JUMPIF                           R24 ; [+3]
      176 GETUPVAL                         R24 6
      177 GETTABLEKS                       R24 R24 K16 ["FFlagAssistantMultiEditExternalClient"]
      179 GETUPVAL                         R25 11
      180 GETUPVAL                         R26 12
      181 DUPTABLE                         R27 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      182 GETUPVAL                         R28 13
      183 SETTABLEKS                       R28 R27 K19 ["scroll"]
      185 GETUPVAL                         R28 14
      186 SETTABLEKS                       R28 R27 K20 ["layout"]
      188 DUPTABLE                         R28 K23 [{"ApiKeySettings"}]
      189 GETUPVAL                         R29 11
      190 GETUPVAL                         R30 15
      191 CALL                             R29 1 1
      192 SETTABLEKS                       R29 R28 K22 ["ApiKeySettings"]
      194 CALL                             R25 3 1
      195 NEWTABLE                         R26 0 0
      197 DUPTABLE                         R29 K28 [{["id"] = "apiKeys", ["text"], ["content"]}]
      198 GETTABLEKS                       R30 R14 K29 ["ApiKeys"]
      200 SETTABLEKS                       R30 R29 K26 ["text"]
      202 SETTABLEKS                       R25 R29 K27 ["content"]
      204 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      206 MOVE                             R28 R26
      207 GETIMPORT                        R27 K32 [table.insert]
      209 CALL                             R27 2 0
      210 JUMPIFNOT                        R24 ; [+38]
      211 GETUPVAL                         R27 11
      212 GETUPVAL                         R28 16
      213 DUPTABLE                         R29 K39 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      214 SETTABLEKS                       R7 R29 K2 ["integrations"]
      216 SETTABLEKS                       R23 R29 K33 ["onAddIntegration"]
      218 SETTABLEKS                       R19 R29 K34 ["onRemove"]
      220 SETTABLEKS                       R20 R29 K35 ["onEdit"]
      222 SETTABLEKS                       R9 R29 K36 ["onStatusChange"]
      224 SETTABLEKS                       R10 R29 K37 ["onAuthorizationChange"]
      226 SETTABLEKS                       R16 R29 K38 ["setEnableStatus"]
      228 CALL                             R27 2 1
      229 DUPTABLE                         R30 K40 [{["id"] = "integrations", ["text"], ["content"]}]
      230 GETTABLEKS                       R31 R14 K41 ["Integrations"]
      232 SETTABLEKS                       R31 R30 K26 ["text"]
      234 GETUPVAL                         R31 11
      235 GETUPVAL                         R32 17
      236 DUPTABLE                         R33 K43 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      237 DUPTABLE                         R34 K45 [{"MainContent"}]
      238 SETTABLEKS                       R27 R34 K44 ["MainContent"]
      240 CALL                             R31 3 1
      241 SETTABLEKS                       R31 R30 K27 ["content"]
      243 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      245 MOVE                             R29 R26
      246 GETIMPORT                        R28 K32 [table.insert]
      248 CALL                             R28 2 0
      249 GETUPVAL                         R27 6
      250 GETTABLEKS                       R27 R27 K46 ["FFlagStudioOpenCloudMCP"]
      252 JUMPIFNOT                        R27 ; [+29]
      253 DUPTABLE                         R29 K48 [{["id"] = "permissions", ["text"], ["content"]}]
      254 GETTABLEKS                       R30 R14 K49 ["Permissions"]
      256 SETTABLEKS                       R30 R29 K26 ["text"]
      258 GETUPVAL                         R30 11
      259 GETUPVAL                         R31 12
      260 DUPTABLE                         R32 K21 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      261 GETUPVAL                         R33 13
      262 SETTABLEKS                       R33 R32 K19 ["scroll"]
      264 GETUPVAL                         R33 14
      265 SETTABLEKS                       R33 R32 K20 ["layout"]
      267 DUPTABLE                         R33 K51 [{"ScopePermissionsContent"}]
      268 GETUPVAL                         R34 11
      269 GETUPVAL                         R35 18
      270 CALL                             R34 1 1
      271 SETTABLEKS                       R34 R33 K50 ["ScopePermissionsContent"]
      273 CALL                             R30 3 1
      274 SETTABLEKS                       R30 R29 K27 ["content"]
      276 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      278 MOVE                             R28 R26
      279 GETIMPORT                        R27 K32 [table.insert]
      281 CALL                             R27 2 0
      282 DUPTABLE                         R29 K53 [{["id"] = "skills", ["text"], ["content"]}]
      283 GETTABLEKS                       R30 R14 K54 ["Skills"]
      285 SETTABLEKS                       R30 R29 K26 ["text"]
      287 GETUPVAL                         R30 11
      288 GETUPVAL                         R31 17
      289 DUPTABLE                         R32 K56 [{["tag"] = "col size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge"}]
      290 DUPTABLE                         R33 K58 [{"SkillsContent"}]
      291 GETUPVAL                         R34 11
      292 GETUPVAL                         R35 19
      293 DUPTABLE                         R36 K60 [{"onClose"}]
      294 JUMPIFNOT                        R0 ; [+3]
      295 GETTABLEKS                       R37 R0 K59 ["onClose"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R37
      299 SETTABLEKS                       R37 R36 K59 ["onClose"]
      301 CALL                             R34 2 1
      302 SETTABLEKS                       R34 R33 K57 ["SkillsContent"]
      304 CALL                             R30 3 1
      305 SETTABLEKS                       R30 R29 K27 ["content"]
      307 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      309 MOVE                             R28 R26
      310 GETIMPORT                        R27 K32 [table.insert]
      312 CALL                             R27 2 0
      313 GETUPVAL                         R27 0
      314 GETTABLEKS                       R27 R27 K10 ["useMemo"]
      316 DUPCLOSURE                       R28 K61 [PROTO_21]
      317 CAPTURE                          UPVAL U6
      318 CAPTURE                          UPVAL U20
      319 NEWTABLE                         R29 0 0
      321 CALL                             R27 2 1
      322 JUMPIFNOT                        R27 ; [+23]
      323 DUPTABLE                         R30 K63 [{["id"] = "internal", ["text"], ["content"]}]
      324 GETTABLEKS                       R31 R14 K64 ["Internal"]
      326 SETTABLEKS                       R31 R30 K26 ["text"]
      328 GETUPVAL                         R31 11
      329 GETUPVAL                         R32 17
      330 DUPTABLE                         R33 K43 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      331 DUPTABLE                         R34 K66 [{"InternalFeaturesContent"}]
      332 GETUPVAL                         R35 11
      333 GETUPVAL                         R36 21
      334 CALL                             R35 1 1
      335 SETTABLEKS                       R35 R34 K65 ["InternalFeaturesContent"]
      337 CALL                             R31 3 1
      338 SETTABLEKS                       R31 R30 K27 ["content"]
      340 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      342 MOVE                             R29 R26
      343 GETIMPORT                        R28 K32 [table.insert]
      345 CALL                             R28 2 0
      346 LOADNIL                          R28
      347 MOVE                             R29 R26
      348 LOADNIL                          R30
      349 LOADNIL                          R31
      350 FORGPREP                         R29
      351 GETTABLEKS                       R34 R33 K24 ["id"]
      353 JUMPIFNOTEQ                      R34 R1 ; [+4]
      355 GETTABLEKS                       R28 R33 K27 ["content"]
      357 JUMP                             ; [+2]
      358 FORGLOOP                         R29 2 ; [-8]
      360 NEWTABLE                         R29 0 0
      362 MOVE                             R30 R26
      363 LOADNIL                          R31
      364 LOADNIL                          R32
      365 FORGPREP                         R30
      366 GETTABLEKS                       R36 R34 K24 ["id"]
      368 JUMPIFEQ                         R36 R1 ; [+2]
      370 LOADB                            R35 0 +1
      371 LOADB                            R35 1
      372 GETTABLEKS                       R36 R34 K24 ["id"]
      374 GETUPVAL                         R37 11
      375 GETUPVAL                         R38 22
      376 DUPTABLE                         R39 K72 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      377 SETTABLEKS                       R33 R39 K67 ["LayoutOrder"]
      379 GETTABLEKS                       R40 R34 K26 ["text"]
      381 SETTABLEKS                       R40 R39 K26 ["text"]
      383 NEWCLOSURE                       R40 P10
      384 CAPTURE                          VAL R2
      385 CAPTURE                          VAL R34
      386 SETTABLEKS                       R40 R39 K68 ["onActivated"]
      388 GETUPVAL                         R40 23
      389 GETTABLEKS                       R40 R40 K73 ["Small"]
      391 SETTABLEKS                       R40 R39 K69 ["size"]
      393 JUMPIFNOT                        R35 ; [+4]
      394 GETUPVAL                         R40 24
      395 GETTABLEKS                       R40 R40 K74 ["Standard"]
      397 JUMP                             ; [+3]
      398 GETUPVAL                         R40 24
      399 GETTABLEKS                       R40 R40 K75 ["Text"]
      401 SETTABLEKS                       R40 R39 K70 ["variant"]
      403 CALL                             R37 2 1
      404 SETTABLE                         R37 R29 R36
      405 FORGLOOP                         R30 2 ; [-40]
      407 GETUPVAL                         R30 25
      408 CALL                             R30 0 1
      409 GETUPVAL                         R31 11
      410 GETUPVAL                         R32 17
      411 DUPTABLE                         R33 K78 [{["tag"] = "row size-full-full", ["testId"]}]
      412 GETUPVAL                         R34 26
      413 GETTABLEKS                       R34 R34 K79 ["IntegrationMenu"]
      415 GETTABLEKS                       R34 R34 K80 ["AddIntegrationDialog"]
      417 SETTABLEKS                       R34 R33 K77 ["testId"]
      419 DUPTABLE                         R34 K85 [{"Dialog", "TabList", "Divider", "ContentArea"}]
      420 JUMPIFNOT                        R11 ; [+17]
      421 GETUPVAL                         R35 11
      422 GETUPVAL                         R36 27
      423 DUPTABLE                         R37 K89 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      424 GETTABLEKS                       R38 R11 K90 ["integration"]
      426 SETTABLEKS                       R38 R37 K86 ["initialIntegration"]
      428 GETTABLEKS                       R38 R11 K87 ["onSave"]
      430 SETTABLEKS                       R38 R37 K87 ["onSave"]
      432 SETTABLEKS                       R22 R37 K88 ["checkError"]
      434 SETTABLEKS                       R21 R37 K59 ["onClose"]
      436 CALL                             R35 2 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R35
      439 SETTABLEKS                       R35 R34 K81 ["Dialog"]
      441 GETUPVAL                         R35 11
      442 GETUPVAL                         R36 17
      443 DUPTABLE                         R37 K93 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      444 GETIMPORT                        R38 K96 [UDim2.new]
      446 LOADN                            R39 0
      447 LOADN                            R40 125
      448 LOADN                            R41 1
      449 LOADN                            R42 0
      450 CALL                             R38 4 1
      451 SETTABLEKS                       R38 R37 K91 ["Size"]
      453 MOVE                             R38 R30
      454 CALL                             R38 0 1
      455 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      457 MOVE                             R38 R29
      458 CALL                             R35 3 1
      459 SETTABLEKS                       R35 R34 K82 ["TabList"]
      461 GETUPVAL                         R35 11
      462 GETUPVAL                         R36 28
      463 DUPTABLE                         R37 K98 [{"LayoutOrder", "variant", "orientation"}]
      464 MOVE                             R38 R30
      465 CALL                             R38 0 1
      466 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      468 GETUPVAL                         R38 29
      469 GETTABLEKS                       R38 R38 K99 ["Default"]
      471 SETTABLEKS                       R38 R37 K70 ["variant"]
      473 GETUPVAL                         R38 30
      474 GETTABLEKS                       R38 R38 K100 ["Vertical"]
      476 SETTABLEKS                       R38 R37 K97 ["orientation"]
      478 CALL                             R35 2 1
      479 SETTABLEKS                       R35 R34 K83 ["Divider"]
      481 GETUPVAL                         R35 11
      482 GETUPVAL                         R36 17
      483 DUPTABLE                         R37 K101 [{"Size", "LayoutOrder", "testId"}]
      484 GETIMPORT                        R38 K96 [UDim2.new]
      486 LOADN                            R39 1
      487 LOADN                            R40 -125
      488 LOADN                            R41 1
      489 LOADN                            R42 0
      490 CALL                             R38 4 1
      491 SETTABLEKS                       R38 R37 K91 ["Size"]
      493 MOVE                             R38 R30
      494 CALL                             R38 0 1
      495 SETTABLEKS                       R38 R37 K67 ["LayoutOrder"]
      497 GETUPVAL                         R38 26
      498 GETTABLEKS                       R38 R38 K79 ["IntegrationMenu"]
      500 GETTABLEKS                       R38 R38 K102 ["TabContent"]
      502 SETTABLEKS                       R38 R37 K77 ["testId"]
      504 DUPTABLE                         R38 K104 [{"Content"}]
      505 SETTABLEKS                       R28 R38 K103 ["Content"]
      507 CALL                             R35 3 1
      508 SETTABLEKS                       R35 R34 K84 ["ContentArea"]
      510 CALL                             R31 3 -1
      511 RETURN                           R31 -1

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
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["IntegrationMenuContent"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["IntegrationTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K6 ["Parent"]
       49 GETTABLEKS                       R6 R6 K13 ["InternalFeaturesContent"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Components"]
       56 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       58 GETTABLEKS                       R7 R7 K15 ["McpAuthorizerManagerContext"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETIMPORT                        R8 K1 [script]
       65 GETTABLEKS                       R8 R8 K6 ["Parent"]
       67 GETTABLEKS                       R8 R8 K16 ["ScopePermissionsContent"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Components"]
       74 GETTABLEKS                       R9 R9 K17 ["SkillsManagement"]
       76 GETTABLEKS                       R9 R9 K18 ["SkillsTabContent"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Parent"]
       83 GETTABLEKS                       R10 R10 K19 ["Dash"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Parent"]
       90 GETTABLEKS                       R11 R11 K20 ["Foundation"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Parent"]
       97 GETTABLEKS                       R12 R12 K21 ["ModelContextProtocol"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K8 ["Components"]
      104 GETTABLEKS                       R13 R13 K14 ["Contexts"]
      106 GETTABLEKS                       R13 R13 K22 ["PersistedIntegrationContext"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K6 ["Parent"]
      113 GETTABLEKS                       R14 R14 K23 ["React"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K6 ["Parent"]
      120 GETTABLEKS                       R15 R15 K24 ["ReactUtils"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K25 ["Util"]
      127 GETTABLEKS                       R16 R16 K26 ["TestIds"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K27 ["Resources"]
      134 GETTABLEKS                       R17 R17 K28 ["Localization"]
      136 GETTABLEKS                       R17 R17 K29 ["Translator"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      143 GETTABLEKS                       R18 R18 K31 ["useAsyncGuard"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R19 R0 K30 ["Hooks"]
      150 GETTABLEKS                       R19 R19 K32 ["useWithClient"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K33 ["Guest"]
      157 GETTABLEKS                       R20 R20 K34 ["Environment"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R21 R0 K35 ["Flags"]
      164 CALL                             R20 1 1
      165 GETTABLEKS                       R21 R11 K36 ["HttpVariantClientTransport"]
      167 GETTABLEKS                       R21 R21 K36 ["HttpVariantClientTransport"]
      169 GETTABLEKS                       R22 R11 K37 ["StreamableHttpClient"]
      171 GETTABLEKS                       R22 R22 K38 ["StreamableHttpClientTransport"]
      173 GETTABLEKS                       R23 R10 K39 ["Button"]
      175 GETTABLEKS                       R24 R10 K40 ["Divider"]
      177 GETTABLEKS                       R25 R10 K41 ["View"]
      179 GETTABLEKS                       R26 R10 K42 ["ScrollView"]
      181 GETTABLEKS                       R27 R10 K43 ["Enums"]
      183 GETTABLEKS                       R27 R27 K44 ["ButtonSize"]
      185 GETTABLEKS                       R28 R10 K43 ["Enums"]
      187 GETTABLEKS                       R28 R28 K45 ["ButtonVariant"]
      189 GETTABLEKS                       R29 R10 K43 ["Enums"]
      191 GETTABLEKS                       R29 R29 K46 ["DividerVariant"]
      193 GETTABLEKS                       R30 R10 K43 ["Enums"]
      195 GETTABLEKS                       R30 R30 K47 ["DividerOrientation"]
      197 GETTABLEKS                       R31 R14 K48 ["createNextOrder"]
      199 GETTABLEKS                       R32 R13 K49 ["createElement"]
      201 GETTABLEKS                       R33 R11 K50 ["Types"]
      203 GETTABLEKS                       R33 R33 K51 ["emptyObject"]
      205 DUPTABLE                         R34 K59 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      206 GETIMPORT                        R35 K62 [UDim2.fromOffset]
      208 LOADN                            R36 0
      209 LOADN                            R37 0
      210 CALL                             R35 2 1
      211 SETTABLEKS                       R35 R34 K52 ["CanvasSize"]
      213 GETIMPORT                        R35 K65 [Enum.AutomaticSize.X]
      215 SETTABLEKS                       R35 R34 K53 ["AutomaticSize"]
      217 GETIMPORT                        R35 K67 [Enum.AutomaticSize.Y]
      219 SETTABLEKS                       R35 R34 K54 ["AutomaticCanvasSize"]
      221 GETIMPORT                        R35 K68 [Enum.ScrollingDirection.Y]
      223 SETTABLEKS                       R35 R34 K55 ["ScrollingDirection"]
      225 GETTABLEKS                       R35 R10 K43 ["Enums"]
      227 GETTABLEKS                       R35 R35 K69 ["Visibility"]
      229 GETTABLEKS                       R35 R35 K70 ["Auto"]
      231 SETTABLEKS                       R35 R34 K56 ["scrollBarVisibility"]
      233 GETIMPORT                        R35 K73 [Enum.ScrollBarInset.None]
      235 SETTABLEKS                       R35 R34 K57 ["HorizontalScrollBarInset"]
      237 GETIMPORT                        R35 K75 [Enum.ScrollBarInset.Always]
      239 SETTABLEKS                       R35 R34 K58 ["VerticalScrollBarInset"]
      241 DUPTABLE                         R35 K78 [{"SortOrder", "FillDirection"}]
      242 GETIMPORT                        R36 K80 [Enum.SortOrder.LayoutOrder]
      244 SETTABLEKS                       R36 R35 K76 ["SortOrder"]
      246 GETIMPORT                        R36 K82 [Enum.FillDirection.Vertical]
      248 SETTABLEKS                       R36 R35 K77 ["FillDirection"]
      250 DUPTABLE                         R36 K84 [{"capabilities"}]
      251 DUPTABLE                         R37 K88 [{"prompts", "resources", "tools"}]
      252 MOVE                             R38 R33
      253 CALL                             R38 0 1
      254 SETTABLEKS                       R38 R37 K85 ["prompts"]
      256 MOVE                             R38 R33
      257 CALL                             R38 0 1
      258 SETTABLEKS                       R38 R37 K86 ["resources"]
      260 MOVE                             R38 R33
      261 CALL                             R38 0 1
      262 SETTABLEKS                       R38 R37 K87 ["tools"]
      264 SETTABLEKS                       R37 R36 K83 ["capabilities"]
      266 DUPCLOSURE                       R37 K89 [PROTO_23]
      267 CAPTURE                          VAL R13
      268 CAPTURE                          VAL R12
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R16
      272 CAPTURE                          VAL R18
      273 CAPTURE                          VAL R20
      274 CAPTURE                          VAL R21
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R36
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R32
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R35
      282 CAPTURE                          VAL R2
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R25
      285 CAPTURE                          VAL R7
      286 CAPTURE                          VAL R8
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R28
      292 CAPTURE                          VAL R31
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R24
      296 CAPTURE                          VAL R29
      297 CAPTURE                          VAL R30
      298 RETURN                           R37 1
