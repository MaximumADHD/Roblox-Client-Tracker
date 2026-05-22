PROTO_0:
        0 DUPTABLE                         R0 K7 [{"ManageIntegrations", "IntegrationNameExists", "IntegrationUrlExists", "Add", "Integrations", "ApiKeys", "Internal"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["IntegrationManagement"]
       11 LOADK                            R4 K10 ["IntegrationNameAlreadyExists"]
       12 NAMECALL                         R1 R1 K9 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["IntegrationNameExists"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["IntegrationManagement"]
       19 LOADK                            R4 K11 ["IntegrationUrlAlreadyExists"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["IntegrationUrlExists"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K12 ["Settings"]
       27 LOADK                            R4 K3 ["Add"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K13 ["SettingsDialog"]
       35 LOADK                            R4 K14 ["ManageIntegrationsTab"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Integrations"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K13 ["SettingsDialog"]
       43 LOADK                            R4 K15 ["APIKeysTab"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ApiKeys"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K13 ["SettingsDialog"]
       51 LOADK                            R4 K16 ["InternalTab"]
       52 NAMECALL                         R1 R1 K9 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Internal"]
       57 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K2 [{"label", "url"}]
        1 LOADK                            R1 K3 [""]
        2 SETTABLEKS                       R1 R0 K0 ["label"]
        4 LOADK                            R1 K3 [""]
        5 SETTABLEKS                       R1 R0 K1 ["url"]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R2 K6 [{"integration", "onSave"}]
        9 SETTABLEKS                       R0 R2 K4 ["integration"]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K5 ["onSave"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

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
      182 DUPTABLE                         R27 K18 [{"tag", "scroll", "layout"}]
      183 LOADK                            R28 K19 ["col size-full-full padding-top-xlarge padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge gap-medium"]
      184 SETTABLEKS                       R28 R27 K15 ["tag"]
      186 GETUPVAL                         R28 16
      187 SETTABLEKS                       R28 R27 K16 ["scroll"]
      189 GETUPVAL                         R28 17
      190 SETTABLEKS                       R28 R27 K17 ["layout"]
      192 DUPTABLE                         R28 K21 [{"ApiKeySettings"}]
      193 GETUPVAL                         R29 14
      194 GETUPVAL                         R30 18
      195 CALL                             R29 1 1
      196 SETTABLEKS                       R29 R28 K20 ["ApiKeySettings"]
      198 CALL                             R25 3 1
      199 NEWTABLE                         R26 0 0
      201 DUPTABLE                         R29 K25 [{"id", "text", "content"}]
      202 LOADK                            R30 K26 ["apiKeys"]
      203 SETTABLEKS                       R30 R29 K22 ["id"]
      205 GETTABLEKS                       R30 R14 K27 ["ApiKeys"]
      207 SETTABLEKS                       R30 R29 K23 ["text"]
      209 SETTABLEKS                       R25 R29 K24 ["content"]
      211 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      213 MOVE                             R28 R26
      214 GETIMPORT                        R27 K30 [table.insert]
      216 CALL                             R27 2 0
      217 JUMPIFNOT                        R24 ; [+44]
      218 GETUPVAL                         R27 14
      219 GETUPVAL                         R28 19
      220 DUPTABLE                         R29 K37 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      221 SETTABLEKS                       R7 R29 K2 ["integrations"]
      223 SETTABLEKS                       R23 R29 K31 ["onAddIntegration"]
      225 SETTABLEKS                       R19 R29 K32 ["onRemove"]
      227 SETTABLEKS                       R20 R29 K33 ["onEdit"]
      229 SETTABLEKS                       R9 R29 K34 ["onStatusChange"]
      231 SETTABLEKS                       R10 R29 K35 ["onAuthorizationChange"]
      233 SETTABLEKS                       R16 R29 K36 ["setEnableStatus"]
      235 CALL                             R27 2 1
      236 DUPTABLE                         R30 K25 [{"id", "text", "content"}]
      237 LOADK                            R31 K2 ["integrations"]
      238 SETTABLEKS                       R31 R30 K22 ["id"]
      240 GETTABLEKS                       R31 R14 K38 ["Integrations"]
      242 SETTABLEKS                       R31 R30 K23 ["text"]
      244 GETUPVAL                         R31 14
      245 GETUPVAL                         R32 20
      246 DUPTABLE                         R33 K39 [{"tag"}]
      247 LOADK                            R34 K40 ["col size-full-full padding-xlarge gap-medium"]
      248 SETTABLEKS                       R34 R33 K15 ["tag"]
      250 DUPTABLE                         R34 K42 [{"MainContent"}]
      251 SETTABLEKS                       R27 R34 K41 ["MainContent"]
      253 CALL                             R31 3 1
      254 SETTABLEKS                       R31 R30 K24 ["content"]
      256 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      258 MOVE                             R29 R26
      259 GETIMPORT                        R28 K30 [table.insert]
      261 CALL                             R28 2 0
      262 GETUPVAL                         R27 0
      263 GETTABLEKS                       R27 R27 K10 ["useMemo"]
      265 DUPCLOSURE                       R28 K43 [PROTO_21]
      266 CAPTURE                          UPVAL U21
      267 CAPTURE                          UPVAL U22
      268 NEWTABLE                         R29 0 0
      270 CALL                             R27 2 1
      271 JUMPIFNOT                        R27 ; [+29]
      272 DUPTABLE                         R30 K25 [{"id", "text", "content"}]
      273 LOADK                            R31 K44 ["internal"]
      274 SETTABLEKS                       R31 R30 K22 ["id"]
      276 GETTABLEKS                       R31 R14 K45 ["Internal"]
      278 SETTABLEKS                       R31 R30 K23 ["text"]
      280 GETUPVAL                         R31 14
      281 GETUPVAL                         R32 20
      282 DUPTABLE                         R33 K39 [{"tag"}]
      283 LOADK                            R34 K40 ["col size-full-full padding-xlarge gap-medium"]
      284 SETTABLEKS                       R34 R33 K15 ["tag"]
      286 DUPTABLE                         R34 K47 [{"InternalFeaturesContent"}]
      287 GETUPVAL                         R35 14
      288 GETUPVAL                         R36 23
      289 CALL                             R35 1 1
      290 SETTABLEKS                       R35 R34 K46 ["InternalFeaturesContent"]
      292 CALL                             R31 3 1
      293 SETTABLEKS                       R31 R30 K24 ["content"]
      295 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      297 MOVE                             R29 R26
      298 GETIMPORT                        R28 K30 [table.insert]
      300 CALL                             R28 2 0
      301 LOADNIL                          R28
      302 MOVE                             R29 R26
      303 LOADNIL                          R30
      304 LOADNIL                          R31
      305 FORGPREP                         R29
      306 GETTABLEKS                       R34 R33 K22 ["id"]
      308 JUMPIFNOTEQ                      R34 R1 ; [+4]
      310 GETTABLEKS                       R28 R33 K24 ["content"]
      312 JUMP                             ; [+2]
      313 FORGLOOP                         R29 2 ; [-8]
      315 NEWTABLE                         R29 0 0
      317 MOVE                             R30 R26
      318 LOADNIL                          R31
      319 LOADNIL                          R32
      320 FORGPREP                         R30
      321 GETTABLEKS                       R36 R34 K22 ["id"]
      323 JUMPIFEQ                         R36 R1 ; [+2]
      325 LOADB                            R35 0 +1
      326 LOADB                            R35 1
      327 GETTABLEKS                       R36 R34 K22 ["id"]
      329 GETUPVAL                         R37 14
      330 GETUPVAL                         R38 24
      331 DUPTABLE                         R39 K52 [{"LayoutOrder", "text", "onActivated", "size", "variant", "tag"}]
      332 SETTABLEKS                       R33 R39 K48 ["LayoutOrder"]
      334 GETTABLEKS                       R40 R34 K23 ["text"]
      336 SETTABLEKS                       R40 R39 K23 ["text"]
      338 NEWCLOSURE                       R40 P10
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R34
      341 SETTABLEKS                       R40 R39 K49 ["onActivated"]
      343 GETUPVAL                         R40 25
      344 GETTABLEKS                       R40 R40 K53 ["Small"]
      346 SETTABLEKS                       R40 R39 K50 ["size"]
      348 JUMPIFNOT                        R35 ; [+4]
      349 GETUPVAL                         R40 26
      350 GETTABLEKS                       R40 R40 K54 ["Standard"]
      352 JUMP                             ; [+3]
      353 GETUPVAL                         R40 26
      354 GETTABLEKS                       R40 R40 K55 ["Text"]
      356 SETTABLEKS                       R40 R39 K51 ["variant"]
      358 LOADK                            R40 K56 ["size-full-0"]
      359 SETTABLEKS                       R40 R39 K15 ["tag"]
      361 CALL                             R37 2 1
      362 SETTABLE                         R37 R29 R36
      363 FORGLOOP                         R30 2 ; [-43]
      365 GETUPVAL                         R30 27
      366 CALL                             R30 0 1
      367 GETUPVAL                         R31 14
      368 GETUPVAL                         R32 20
      369 DUPTABLE                         R33 K58 [{"tag", "testId"}]
      370 LOADK                            R34 K59 ["row size-full-full"]
      371 SETTABLEKS                       R34 R33 K15 ["tag"]
      373 GETUPVAL                         R34 28
      374 GETTABLEKS                       R34 R34 K60 ["IntegrationMenu"]
      376 GETTABLEKS                       R34 R34 K61 ["AddIntegrationDialog"]
      378 SETTABLEKS                       R34 R33 K57 ["testId"]
      380 DUPTABLE                         R34 K66 [{"Dialog", "TabList", "Divider", "ContentArea"}]
      381 JUMPIFNOT                        R11 ; [+17]
      382 GETUPVAL                         R35 14
      383 GETUPVAL                         R36 29
      384 DUPTABLE                         R37 K71 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      385 GETTABLEKS                       R38 R11 K72 ["integration"]
      387 SETTABLEKS                       R38 R37 K67 ["initialIntegration"]
      389 GETTABLEKS                       R38 R11 K68 ["onSave"]
      391 SETTABLEKS                       R38 R37 K68 ["onSave"]
      393 SETTABLEKS                       R22 R37 K69 ["checkError"]
      395 SETTABLEKS                       R21 R37 K70 ["onClose"]
      397 CALL                             R35 2 1
      398 JUMP                             ; [+1]
      399 LOADNIL                          R35
      400 SETTABLEKS                       R35 R34 K62 ["Dialog"]
      402 GETUPVAL                         R35 14
      403 GETUPVAL                         R36 20
      404 DUPTABLE                         R37 K74 [{"Size", "LayoutOrder", "tag"}]
      405 GETIMPORT                        R38 K77 [UDim2.new]
      407 LOADN                            R39 0
      408 LOADN                            R40 125
      409 LOADN                            R41 1
      410 LOADN                            R42 0
      411 CALL                             R38 4 1
      412 SETTABLEKS                       R38 R37 K73 ["Size"]
      414 MOVE                             R38 R30
      415 CALL                             R38 0 1
      416 SETTABLEKS                       R38 R37 K48 ["LayoutOrder"]
      418 LOADK                            R38 K78 ["col padding-medium gap-small"]
      419 SETTABLEKS                       R38 R37 K15 ["tag"]
      421 MOVE                             R38 R29
      422 CALL                             R35 3 1
      423 SETTABLEKS                       R35 R34 K63 ["TabList"]
      425 GETUPVAL                         R35 14
      426 GETUPVAL                         R36 30
      427 DUPTABLE                         R37 K80 [{"LayoutOrder", "variant", "orientation"}]
      428 MOVE                             R38 R30
      429 CALL                             R38 0 1
      430 SETTABLEKS                       R38 R37 K48 ["LayoutOrder"]
      432 GETUPVAL                         R38 31
      433 GETTABLEKS                       R38 R38 K81 ["Default"]
      435 SETTABLEKS                       R38 R37 K51 ["variant"]
      437 GETUPVAL                         R38 32
      438 GETTABLEKS                       R38 R38 K82 ["Vertical"]
      440 SETTABLEKS                       R38 R37 K79 ["orientation"]
      442 CALL                             R35 2 1
      443 SETTABLEKS                       R35 R34 K64 ["Divider"]
      445 GETUPVAL                         R35 14
      446 GETUPVAL                         R36 20
      447 DUPTABLE                         R37 K83 [{"Size", "LayoutOrder", "testId"}]
      448 GETIMPORT                        R38 K77 [UDim2.new]
      450 LOADN                            R39 1
      451 LOADN                            R40 131
      452 LOADN                            R41 1
      453 LOADN                            R42 0
      454 CALL                             R38 4 1
      455 SETTABLEKS                       R38 R37 K73 ["Size"]
      457 MOVE                             R38 R30
      458 CALL                             R38 0 1
      459 SETTABLEKS                       R38 R37 K48 ["LayoutOrder"]
      461 GETUPVAL                         R38 28
      462 GETTABLEKS                       R38 R38 K60 ["IntegrationMenu"]
      464 GETTABLEKS                       R38 R38 K84 ["TabContent"]
      466 SETTABLEKS                       R38 R37 K57 ["testId"]
      468 DUPTABLE                         R38 K86 [{"Content"}]
      469 SETTABLEKS                       R28 R38 K85 ["Content"]
      471 CALL                             R35 3 1
      472 SETTABLEKS                       R35 R34 K65 ["ContentArea"]
      474 CALL                             R31 3 -1
      475 RETURN                           R31 -1

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
       63 GETTABLEKS                       R8 R0 K6 ["Parent"]
       65 GETTABLEKS                       R8 R8 K16 ["Dash"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Parent"]
       72 GETTABLEKS                       R9 R9 K17 ["Foundation"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Parent"]
       79 GETTABLEKS                       R10 R10 K18 ["ModelContextProtocol"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K8 ["Components"]
       86 GETTABLEKS                       R11 R11 K14 ["Contexts"]
       88 GETTABLEKS                       R11 R11 K19 ["PersistedIntegrationContext"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K6 ["Parent"]
       95 GETTABLEKS                       R12 R12 K20 ["React"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K6 ["Parent"]
      102 GETTABLEKS                       R13 R13 K21 ["ReactUtils"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K22 ["Util"]
      109 GETTABLEKS                       R14 R14 K23 ["TestIds"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K24 ["Resources"]
      116 GETTABLEKS                       R15 R15 K25 ["Localization"]
      118 GETTABLEKS                       R15 R15 K26 ["Translator"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      125 GETTABLEKS                       R16 R16 K28 ["useAsyncGuard"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      132 GETTABLEKS                       R17 R17 K29 ["useWithClient"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K30 ["Guest"]
      139 GETTABLEKS                       R18 R18 K31 ["Environment"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K32 ["Flags"]
      146 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantMultiEditExternalClient"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K32 ["Flags"]
      153 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantPrivilegedCodeExecution"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R21 R0 K32 ["Flags"]
      160 GETTABLEKS                       R21 R21 K35 ["FFlagAssistantUseVariantHttpTransport"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R22 R0 K32 ["Flags"]
      167 GETTABLEKS                       R22 R22 K36 ["FFlagExternalMCPUI"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K5 [require]
      172 GETTABLEKS                       R23 R0 K32 ["Flags"]
      174 GETTABLEKS                       R23 R23 K37 ["FFlagMCPAssistantManagementMenu"]
      176 CALL                             R22 1 1
      177 GETTABLEKS                       R23 R9 K38 ["HttpVariantClientTransport"]
      179 GETTABLEKS                       R23 R23 K38 ["HttpVariantClientTransport"]
      181 GETTABLEKS                       R24 R9 K39 ["StreamableHttpClient"]
      183 GETTABLEKS                       R24 R24 K40 ["StreamableHttpClientTransport"]
      185 GETTABLEKS                       R25 R8 K41 ["Button"]
      187 GETTABLEKS                       R26 R8 K42 ["Divider"]
      189 GETTABLEKS                       R27 R8 K43 ["View"]
      191 GETTABLEKS                       R28 R8 K44 ["ScrollView"]
      193 GETTABLEKS                       R29 R8 K45 ["Enums"]
      195 GETTABLEKS                       R29 R29 K46 ["ButtonSize"]
      197 GETTABLEKS                       R30 R8 K45 ["Enums"]
      199 GETTABLEKS                       R30 R30 K47 ["ButtonVariant"]
      201 GETTABLEKS                       R31 R8 K45 ["Enums"]
      203 GETTABLEKS                       R31 R31 K48 ["DividerVariant"]
      205 GETTABLEKS                       R32 R8 K45 ["Enums"]
      207 GETTABLEKS                       R32 R32 K49 ["DividerOrientation"]
      209 GETTABLEKS                       R33 R12 K50 ["createNextOrder"]
      211 GETTABLEKS                       R34 R11 K51 ["createElement"]
      213 GETTABLEKS                       R35 R9 K52 ["Types"]
      215 GETTABLEKS                       R35 R35 K53 ["emptyObject"]
      217 DUPTABLE                         R36 K61 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      218 GETIMPORT                        R37 K64 [UDim2.fromOffset]
      220 LOADN                            R38 0
      221 LOADN                            R39 0
      222 CALL                             R37 2 1
      223 SETTABLEKS                       R37 R36 K54 ["CanvasSize"]
      225 GETIMPORT                        R37 K67 [Enum.AutomaticSize.X]
      227 SETTABLEKS                       R37 R36 K55 ["AutomaticSize"]
      229 GETIMPORT                        R37 K69 [Enum.AutomaticSize.Y]
      231 SETTABLEKS                       R37 R36 K56 ["AutomaticCanvasSize"]
      233 GETIMPORT                        R37 K70 [Enum.ScrollingDirection.Y]
      235 SETTABLEKS                       R37 R36 K57 ["ScrollingDirection"]
      237 GETTABLEKS                       R37 R8 K45 ["Enums"]
      239 GETTABLEKS                       R37 R37 K71 ["Visibility"]
      241 GETTABLEKS                       R37 R37 K72 ["Auto"]
      243 SETTABLEKS                       R37 R36 K58 ["scrollBarVisibility"]
      245 GETIMPORT                        R37 K75 [Enum.ScrollBarInset.None]
      247 SETTABLEKS                       R37 R36 K59 ["HorizontalScrollBarInset"]
      249 GETIMPORT                        R37 K77 [Enum.ScrollBarInset.Always]
      251 SETTABLEKS                       R37 R36 K60 ["VerticalScrollBarInset"]
      253 DUPTABLE                         R37 K80 [{"SortOrder", "FillDirection"}]
      254 GETIMPORT                        R38 K82 [Enum.SortOrder.LayoutOrder]
      256 SETTABLEKS                       R38 R37 K78 ["SortOrder"]
      258 GETIMPORT                        R38 K84 [Enum.FillDirection.Vertical]
      260 SETTABLEKS                       R38 R37 K79 ["FillDirection"]
      262 DUPTABLE                         R38 K86 [{"capabilities"}]
      263 DUPTABLE                         R39 K90 [{"prompts", "resources", "tools"}]
      264 MOVE                             R40 R35
      265 CALL                             R40 0 1
      266 SETTABLEKS                       R40 R39 K87 ["prompts"]
      268 MOVE                             R40 R35
      269 CALL                             R40 0 1
      270 SETTABLEKS                       R40 R39 K88 ["resources"]
      272 MOVE                             R40 R35
      273 CALL                             R40 0 1
      274 SETTABLEKS                       R40 R39 K89 ["tools"]
      276 SETTABLEKS                       R39 R38 K85 ["capabilities"]
      278 DUPCLOSURE                       R39 K91 [PROTO_23]
      279 CAPTURE                          VAL R11
      280 CAPTURE                          VAL R10
      281 CAPTURE                          VAL R6
      282 CAPTURE                          VAL R15
      283 CAPTURE                          VAL R14
      284 CAPTURE                          VAL R16
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R23
      287 CAPTURE                          VAL R24
      288 CAPTURE                          VAL R38
      289 CAPTURE                          VAL R7
      290 CAPTURE                          VAL R22
      291 CAPTURE                          VAL R21
      292 CAPTURE                          VAL R18
      293 CAPTURE                          VAL R34
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R36
      296 CAPTURE                          VAL R37
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R27
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R17
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R25
      304 CAPTURE                          VAL R29
      305 CAPTURE                          VAL R30
      306 CAPTURE                          VAL R33
      307 CAPTURE                          VAL R13
      308 CAPTURE                          VAL R1
      309 CAPTURE                          VAL R26
      310 CAPTURE                          VAL R31
      311 CAPTURE                          VAL R32
      312 RETURN                           R39 1
