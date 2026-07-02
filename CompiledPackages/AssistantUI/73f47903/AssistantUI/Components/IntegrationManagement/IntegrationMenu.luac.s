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
        1 JUMPIFNOT                        R1 ; [+82]
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
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K8 ["new"]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K6 ["url"]
       43 MOVE                             R5 R1
       44 CALL                             R3 2 1
       45 MOVE                             R2 R3
       46 JUMP                             ; [+9]
       47 GETUPVAL                         R3 5
       48 GETTABLEKS                       R3 R3 K8 ["new"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K6 ["url"]
       53 MOVE                             R5 R1
       54 CALL                             R3 2 1
       55 MOVE                             R2 R3
       56 DUPTABLE                         R5 K12 [{"identifier", "transport", "clientOptions"}]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K0 ["label"]
       60 SETTABLEKS                       R6 R5 K9 ["identifier"]
       62 GETTABLEKS                       R6 R2 K10 ["transport"]
       64 SETTABLEKS                       R6 R5 K10 ["transport"]
       66 GETUPVAL                         R6 6
       67 SETTABLEKS                       R6 R5 K11 ["clientOptions"]
       69 NAMECALL                         R3 R0 K13 ["addClient"]
       71 CALL                             R3 2 0
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K0 ["label"]
       75 NAMECALL                         R3 R0 K14 ["connectClient"]
       77 CALL                             R3 2 1
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          UPVAL U1
       80 NAMECALL                         R3 R3 K15 ["catch"]
       82 CALL                             R3 2 0
       83 JUMP                             ; [+24]
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R3 R3 K0 ["label"]
       87 NAMECALL                         R1 R0 K1 ["getClient"]
       89 CALL                             R1 2 1
       90 JUMPIFNOT                        R1 ; [+17]
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K0 ["label"]
       94 NAMECALL                         R1 R0 K16 ["closeClient"]
       96 CALL                             R1 2 1
       97 DUPCLOSURE                       R3 K17 [PROTO_2]
       98 NAMECALL                         R1 R1 K15 ["catch"]
      100 CALL                             R1 2 0
      101 GETUPVAL                         R1 2
      102 GETUPVAL                         R3 1
      103 GETTABLEKS                       R3 R3 K0 ["label"]
      105 NAMECALL                         R1 R1 K18 ["removeAuthorizer"]
      107 CALL                             R1 2 0
      108 GETUPVAL                         R1 7
      109 GETUPVAL                         R2 1
      110 GETUPVAL                         R3 0
      111 CALL                             R1 2 0
      112 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["get"]
        6 CALL                             R0 0 1
        7 GETTABLEKS                       R0 R0 K1 ["hasInternalPermission"]
        9 CALL                             R0 0 1
       10 RETURN                           R0 1

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
      172 GETUPVAL                         R24 11
      173 CALL                             R24 0 1
      174 JUMPIF                           R24 ; [+5]
      175 GETUPVAL                         R24 12
      176 CALL                             R24 0 1
      177 JUMPIFNOT                        R24 ; [+2]
      178 GETUPVAL                         R24 13
      179 CALL                             R24 0 1
      180 GETUPVAL                         R25 14
      181 GETUPVAL                         R26 15
      182 DUPTABLE                         R27 K19 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      183 GETUPVAL                         R28 16
      184 SETTABLEKS                       R28 R27 K17 ["scroll"]
      186 GETUPVAL                         R28 17
      187 SETTABLEKS                       R28 R27 K18 ["layout"]
      189 DUPTABLE                         R28 K21 [{"ApiKeySettings"}]
      190 GETUPVAL                         R29 14
      191 GETUPVAL                         R30 18
      192 CALL                             R29 1 1
      193 SETTABLEKS                       R29 R28 K20 ["ApiKeySettings"]
      195 CALL                             R25 3 1
      196 NEWTABLE                         R26 0 0
      198 DUPTABLE                         R29 K26 [{["id"] = "apiKeys", ["text"], ["content"]}]
      199 GETTABLEKS                       R30 R14 K27 ["ApiKeys"]
      201 SETTABLEKS                       R30 R29 K24 ["text"]
      203 SETTABLEKS                       R25 R29 K25 ["content"]
      205 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      207 MOVE                             R28 R26
      208 GETIMPORT                        R27 K30 [table.insert]
      210 CALL                             R27 2 0
      211 JUMPIFNOT                        R24 ; [+38]
      212 GETUPVAL                         R27 14
      213 GETUPVAL                         R28 19
      214 DUPTABLE                         R29 K37 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      215 SETTABLEKS                       R7 R29 K2 ["integrations"]
      217 SETTABLEKS                       R23 R29 K31 ["onAddIntegration"]
      219 SETTABLEKS                       R19 R29 K32 ["onRemove"]
      221 SETTABLEKS                       R20 R29 K33 ["onEdit"]
      223 SETTABLEKS                       R9 R29 K34 ["onStatusChange"]
      225 SETTABLEKS                       R10 R29 K35 ["onAuthorizationChange"]
      227 SETTABLEKS                       R16 R29 K36 ["setEnableStatus"]
      229 CALL                             R27 2 1
      230 DUPTABLE                         R30 K38 [{["id"] = "integrations", ["text"], ["content"]}]
      231 GETTABLEKS                       R31 R14 K39 ["Integrations"]
      233 SETTABLEKS                       R31 R30 K24 ["text"]
      235 GETUPVAL                         R31 14
      236 GETUPVAL                         R32 20
      237 DUPTABLE                         R33 K41 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      238 DUPTABLE                         R34 K43 [{"MainContent"}]
      239 SETTABLEKS                       R27 R34 K42 ["MainContent"]
      241 CALL                             R31 3 1
      242 SETTABLEKS                       R31 R30 K25 ["content"]
      244 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      246 MOVE                             R29 R26
      247 GETIMPORT                        R28 K30 [table.insert]
      249 CALL                             R28 2 0
      250 GETUPVAL                         R27 21
      251 CALL                             R27 0 1
      252 JUMPIFNOT                        R27 ; [+29]
      253 DUPTABLE                         R29 K45 [{["id"] = "permissions", ["text"], ["content"]}]
      254 GETTABLEKS                       R30 R14 K46 ["Permissions"]
      256 SETTABLEKS                       R30 R29 K24 ["text"]
      258 GETUPVAL                         R30 14
      259 GETUPVAL                         R31 15
      260 DUPTABLE                         R32 K19 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      261 GETUPVAL                         R33 16
      262 SETTABLEKS                       R33 R32 K17 ["scroll"]
      264 GETUPVAL                         R33 17
      265 SETTABLEKS                       R33 R32 K18 ["layout"]
      267 DUPTABLE                         R33 K48 [{"ScopePermissionsContent"}]
      268 GETUPVAL                         R34 14
      269 GETUPVAL                         R35 22
      270 CALL                             R34 1 1
      271 SETTABLEKS                       R34 R33 K47 ["ScopePermissionsContent"]
      273 CALL                             R30 3 1
      274 SETTABLEKS                       R30 R29 K25 ["content"]
      276 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      278 MOVE                             R28 R26
      279 GETIMPORT                        R27 K30 [table.insert]
      281 CALL                             R27 2 0
      282 GETUPVAL                         R27 23
      283 CALL                             R27 0 1
      284 JUMPIFNOT                        R27 ; [+37]
      285 DUPTABLE                         R29 K50 [{["id"] = "skills", ["text"], ["content"]}]
      286 GETTABLEKS                       R30 R14 K51 ["Skills"]
      288 SETTABLEKS                       R30 R29 K24 ["text"]
      290 GETUPVAL                         R30 14
      291 GETUPVAL                         R31 15
      292 DUPTABLE                         R32 K19 [{["tag"] = "col gap-medium size-full-full padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge padding-top-xlarge", ["scroll"], ["layout"]}]
      293 GETUPVAL                         R33 16
      294 SETTABLEKS                       R33 R32 K17 ["scroll"]
      296 GETUPVAL                         R33 17
      297 SETTABLEKS                       R33 R32 K18 ["layout"]
      299 DUPTABLE                         R33 K53 [{"SkillsContent"}]
      300 GETUPVAL                         R34 14
      301 GETUPVAL                         R35 24
      302 DUPTABLE                         R36 K55 [{"onClose"}]
      303 JUMPIFNOT                        R0 ; [+3]
      304 GETTABLEKS                       R37 R0 K54 ["onClose"]
      306 JUMP                             ; [+1]
      307 LOADNIL                          R37
      308 SETTABLEKS                       R37 R36 K54 ["onClose"]
      310 CALL                             R34 2 1
      311 SETTABLEKS                       R34 R33 K52 ["SkillsContent"]
      313 CALL                             R30 3 1
      314 SETTABLEKS                       R30 R29 K25 ["content"]
      316 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      318 MOVE                             R28 R26
      319 GETIMPORT                        R27 K30 [table.insert]
      321 CALL                             R27 2 0
      322 GETUPVAL                         R27 0
      323 GETTABLEKS                       R27 R27 K10 ["useMemo"]
      325 DUPCLOSURE                       R28 K56 [PROTO_21]
      326 CAPTURE                          UPVAL U25
      327 CAPTURE                          UPVAL U26
      328 NEWTABLE                         R29 0 0
      330 CALL                             R27 2 1
      331 JUMPIFNOT                        R27 ; [+23]
      332 DUPTABLE                         R30 K58 [{["id"] = "internal", ["text"], ["content"]}]
      333 GETTABLEKS                       R31 R14 K59 ["Internal"]
      335 SETTABLEKS                       R31 R30 K24 ["text"]
      337 GETUPVAL                         R31 14
      338 GETUPVAL                         R32 20
      339 DUPTABLE                         R33 K41 [{["tag"] = "col gap-medium size-full-full padding-xlarge"}]
      340 DUPTABLE                         R34 K61 [{"InternalFeaturesContent"}]
      341 GETUPVAL                         R35 14
      342 GETUPVAL                         R36 27
      343 CALL                             R35 1 1
      344 SETTABLEKS                       R35 R34 K60 ["InternalFeaturesContent"]
      346 CALL                             R31 3 1
      347 SETTABLEKS                       R31 R30 K25 ["content"]
      349 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      351 MOVE                             R29 R26
      352 GETIMPORT                        R28 K30 [table.insert]
      354 CALL                             R28 2 0
      355 LOADNIL                          R28
      356 MOVE                             R29 R26
      357 LOADNIL                          R30
      358 LOADNIL                          R31
      359 FORGPREP                         R29
      360 GETTABLEKS                       R34 R33 K22 ["id"]
      362 JUMPIFNOTEQ                      R34 R1 ; [+4]
      364 GETTABLEKS                       R28 R33 K25 ["content"]
      366 JUMP                             ; [+2]
      367 FORGLOOP                         R29 2 ; [-8]
      369 NEWTABLE                         R29 0 0
      371 MOVE                             R30 R26
      372 LOADNIL                          R31
      373 LOADNIL                          R32
      374 FORGPREP                         R30
      375 GETTABLEKS                       R36 R34 K22 ["id"]
      377 JUMPIFEQ                         R36 R1 ; [+2]
      379 LOADB                            R35 0 +1
      380 LOADB                            R35 1
      381 GETTABLEKS                       R36 R34 K22 ["id"]
      383 GETUPVAL                         R37 14
      384 GETUPVAL                         R38 28
      385 DUPTABLE                         R39 K67 [{["LayoutOrder"], ["text"], ["onActivated"], ["size"], ["variant"], ["tag"] = "size-full-0"}]
      386 SETTABLEKS                       R33 R39 K62 ["LayoutOrder"]
      388 GETTABLEKS                       R40 R34 K24 ["text"]
      390 SETTABLEKS                       R40 R39 K24 ["text"]
      392 NEWCLOSURE                       R40 P10
      393 CAPTURE                          VAL R2
      394 CAPTURE                          VAL R34
      395 SETTABLEKS                       R40 R39 K63 ["onActivated"]
      397 GETUPVAL                         R40 29
      398 GETTABLEKS                       R40 R40 K68 ["Small"]
      400 SETTABLEKS                       R40 R39 K64 ["size"]
      402 JUMPIFNOT                        R35 ; [+4]
      403 GETUPVAL                         R40 30
      404 GETTABLEKS                       R40 R40 K69 ["Standard"]
      406 JUMP                             ; [+3]
      407 GETUPVAL                         R40 30
      408 GETTABLEKS                       R40 R40 K70 ["Text"]
      410 SETTABLEKS                       R40 R39 K65 ["variant"]
      412 CALL                             R37 2 1
      413 SETTABLE                         R37 R29 R36
      414 FORGLOOP                         R30 2 ; [-40]
      416 GETUPVAL                         R30 31
      417 CALL                             R30 0 1
      418 GETUPVAL                         R31 14
      419 GETUPVAL                         R32 20
      420 DUPTABLE                         R33 K73 [{["tag"] = "row size-full-full", ["testId"]}]
      421 GETUPVAL                         R34 32
      422 GETTABLEKS                       R34 R34 K74 ["IntegrationMenu"]
      424 GETTABLEKS                       R34 R34 K75 ["AddIntegrationDialog"]
      426 SETTABLEKS                       R34 R33 K72 ["testId"]
      428 DUPTABLE                         R34 K80 [{"Dialog", "TabList", "Divider", "ContentArea"}]
      429 JUMPIFNOT                        R11 ; [+17]
      430 GETUPVAL                         R35 14
      431 GETUPVAL                         R36 33
      432 DUPTABLE                         R37 K84 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      433 GETTABLEKS                       R38 R11 K85 ["integration"]
      435 SETTABLEKS                       R38 R37 K81 ["initialIntegration"]
      437 GETTABLEKS                       R38 R11 K82 ["onSave"]
      439 SETTABLEKS                       R38 R37 K82 ["onSave"]
      441 SETTABLEKS                       R22 R37 K83 ["checkError"]
      443 SETTABLEKS                       R21 R37 K54 ["onClose"]
      445 CALL                             R35 2 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R35
      448 SETTABLEKS                       R35 R34 K76 ["Dialog"]
      450 GETUPVAL                         R35 14
      451 GETUPVAL                         R36 20
      452 DUPTABLE                         R37 K88 [{["Size"], ["LayoutOrder"], ["tag"] = "col gap-small padding-medium"}]
      453 GETIMPORT                        R38 K91 [UDim2.new]
      455 LOADN                            R39 0
      456 LOADN                            R40 125
      457 LOADN                            R41 1
      458 LOADN                            R42 0
      459 CALL                             R38 4 1
      460 SETTABLEKS                       R38 R37 K86 ["Size"]
      462 MOVE                             R38 R30
      463 CALL                             R38 0 1
      464 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      466 MOVE                             R38 R29
      467 CALL                             R35 3 1
      468 SETTABLEKS                       R35 R34 K77 ["TabList"]
      470 GETUPVAL                         R35 14
      471 GETUPVAL                         R36 34
      472 DUPTABLE                         R37 K93 [{"LayoutOrder", "variant", "orientation"}]
      473 MOVE                             R38 R30
      474 CALL                             R38 0 1
      475 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      477 GETUPVAL                         R38 35
      478 GETTABLEKS                       R38 R38 K94 ["Default"]
      480 SETTABLEKS                       R38 R37 K65 ["variant"]
      482 GETUPVAL                         R38 36
      483 GETTABLEKS                       R38 R38 K95 ["Vertical"]
      485 SETTABLEKS                       R38 R37 K92 ["orientation"]
      487 CALL                             R35 2 1
      488 SETTABLEKS                       R35 R34 K78 ["Divider"]
      490 GETUPVAL                         R35 14
      491 GETUPVAL                         R36 20
      492 DUPTABLE                         R37 K96 [{"Size", "LayoutOrder", "testId"}]
      493 GETIMPORT                        R38 K91 [UDim2.new]
      495 LOADN                            R39 1
      496 LOADN                            R40 -125
      497 LOADN                            R41 1
      498 LOADN                            R42 0
      499 CALL                             R38 4 1
      500 SETTABLEKS                       R38 R37 K86 ["Size"]
      502 MOVE                             R38 R30
      503 CALL                             R38 0 1
      504 SETTABLEKS                       R38 R37 K62 ["LayoutOrder"]
      506 GETUPVAL                         R38 32
      507 GETTABLEKS                       R38 R38 K74 ["IntegrationMenu"]
      509 GETTABLEKS                       R38 R38 K97 ["TabContent"]
      511 SETTABLEKS                       R38 R37 K72 ["testId"]
      513 DUPTABLE                         R38 K99 [{"Content"}]
      514 SETTABLEKS                       R28 R38 K98 ["Content"]
      516 CALL                             R35 3 1
      517 SETTABLEKS                       R35 R34 K79 ["ContentArea"]
      519 CALL                             R31 3 -1
      520 RETURN                           R31 -1

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
      164 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantMultiEditExternalClient"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R22 R0 K35 ["Flags"]
      171 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantPrivilegedCodeExecution"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R23 R0 K35 ["Flags"]
      178 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantUseVariantHttpTransport"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K5 [require]
      183 GETTABLEKS                       R24 R0 K35 ["Flags"]
      185 GETTABLEKS                       R24 R24 K39 ["FFlagAssistantUserSkills"]
      187 CALL                             R23 1 1
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R25 R0 K35 ["Flags"]
      192 GETTABLEKS                       R25 R25 K40 ["FFlagExternalMCPUI"]
      194 CALL                             R24 1 1
      195 GETIMPORT                        R25 K5 [require]
      197 GETTABLEKS                       R26 R0 K35 ["Flags"]
      199 GETTABLEKS                       R26 R26 K41 ["FFlagMCPAssistantManagementMenu"]
      201 CALL                             R25 1 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K35 ["Flags"]
      206 GETTABLEKS                       R27 R27 K42 ["FFlagStudioOpenCloudMCP"]
      208 CALL                             R26 1 1
      209 GETTABLEKS                       R27 R11 K43 ["HttpVariantClientTransport"]
      211 GETTABLEKS                       R27 R27 K43 ["HttpVariantClientTransport"]
      213 GETTABLEKS                       R28 R11 K44 ["StreamableHttpClient"]
      215 GETTABLEKS                       R28 R28 K45 ["StreamableHttpClientTransport"]
      217 GETTABLEKS                       R29 R10 K46 ["Button"]
      219 GETTABLEKS                       R30 R10 K47 ["Divider"]
      221 GETTABLEKS                       R31 R10 K48 ["View"]
      223 GETTABLEKS                       R32 R10 K49 ["ScrollView"]
      225 GETTABLEKS                       R33 R10 K50 ["Enums"]
      227 GETTABLEKS                       R33 R33 K51 ["ButtonSize"]
      229 GETTABLEKS                       R34 R10 K50 ["Enums"]
      231 GETTABLEKS                       R34 R34 K52 ["ButtonVariant"]
      233 GETTABLEKS                       R35 R10 K50 ["Enums"]
      235 GETTABLEKS                       R35 R35 K53 ["DividerVariant"]
      237 GETTABLEKS                       R36 R10 K50 ["Enums"]
      239 GETTABLEKS                       R36 R36 K54 ["DividerOrientation"]
      241 GETTABLEKS                       R37 R14 K55 ["createNextOrder"]
      243 GETTABLEKS                       R38 R13 K56 ["createElement"]
      245 GETTABLEKS                       R39 R11 K57 ["Types"]
      247 GETTABLEKS                       R39 R39 K58 ["emptyObject"]
      249 DUPTABLE                         R40 K66 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      250 GETIMPORT                        R41 K69 [UDim2.fromOffset]
      252 LOADN                            R42 0
      253 LOADN                            R43 0
      254 CALL                             R41 2 1
      255 SETTABLEKS                       R41 R40 K59 ["CanvasSize"]
      257 GETIMPORT                        R41 K72 [Enum.AutomaticSize.X]
      259 SETTABLEKS                       R41 R40 K60 ["AutomaticSize"]
      261 GETIMPORT                        R41 K74 [Enum.AutomaticSize.Y]
      263 SETTABLEKS                       R41 R40 K61 ["AutomaticCanvasSize"]
      265 GETIMPORT                        R41 K75 [Enum.ScrollingDirection.Y]
      267 SETTABLEKS                       R41 R40 K62 ["ScrollingDirection"]
      269 GETTABLEKS                       R41 R10 K50 ["Enums"]
      271 GETTABLEKS                       R41 R41 K76 ["Visibility"]
      273 GETTABLEKS                       R41 R41 K77 ["Auto"]
      275 SETTABLEKS                       R41 R40 K63 ["scrollBarVisibility"]
      277 GETIMPORT                        R41 K80 [Enum.ScrollBarInset.None]
      279 SETTABLEKS                       R41 R40 K64 ["HorizontalScrollBarInset"]
      281 GETIMPORT                        R41 K82 [Enum.ScrollBarInset.Always]
      283 SETTABLEKS                       R41 R40 K65 ["VerticalScrollBarInset"]
      285 DUPTABLE                         R41 K85 [{"SortOrder", "FillDirection"}]
      286 GETIMPORT                        R42 K87 [Enum.SortOrder.LayoutOrder]
      288 SETTABLEKS                       R42 R41 K83 ["SortOrder"]
      290 GETIMPORT                        R42 K89 [Enum.FillDirection.Vertical]
      292 SETTABLEKS                       R42 R41 K84 ["FillDirection"]
      294 DUPTABLE                         R42 K91 [{"capabilities"}]
      295 DUPTABLE                         R43 K95 [{"prompts", "resources", "tools"}]
      296 MOVE                             R44 R39
      297 CALL                             R44 0 1
      298 SETTABLEKS                       R44 R43 K92 ["prompts"]
      300 MOVE                             R44 R39
      301 CALL                             R44 0 1
      302 SETTABLEKS                       R44 R43 K93 ["resources"]
      304 MOVE                             R44 R39
      305 CALL                             R44 0 1
      306 SETTABLEKS                       R44 R43 K94 ["tools"]
      308 SETTABLEKS                       R43 R42 K90 ["capabilities"]
      310 DUPCLOSURE                       R43 K96 [PROTO_23]
      311 CAPTURE                          VAL R13
      312 CAPTURE                          VAL R12
      313 CAPTURE                          VAL R6
      314 CAPTURE                          VAL R17
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R18
      317 CAPTURE                          VAL R22
      318 CAPTURE                          VAL R27
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R42
      321 CAPTURE                          VAL R9
      322 CAPTURE                          VAL R25
      323 CAPTURE                          VAL R24
      324 CAPTURE                          VAL R20
      325 CAPTURE                          VAL R38
      326 CAPTURE                          VAL R32
      327 CAPTURE                          VAL R40
      328 CAPTURE                          VAL R41
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R31
      332 CAPTURE                          VAL R26
      333 CAPTURE                          VAL R7
      334 CAPTURE                          VAL R23
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R21
      337 CAPTURE                          VAL R19
      338 CAPTURE                          VAL R5
      339 CAPTURE                          VAL R29
      340 CAPTURE                          VAL R33
      341 CAPTURE                          VAL R34
      342 CAPTURE                          VAL R37
      343 CAPTURE                          VAL R15
      344 CAPTURE                          VAL R1
      345 CAPTURE                          VAL R30
      346 CAPTURE                          VAL R35
      347 CAPTURE                          VAL R36
      348 RETURN                           R43 1
