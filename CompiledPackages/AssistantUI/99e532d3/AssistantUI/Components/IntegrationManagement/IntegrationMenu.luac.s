PROTO_0:
        0 DUPTABLE                         R0 K6 [{"ManageIntegrations", "IntegrationNameExists", "IntegrationUrlExists", "Add", "Integrations", "ApiKeys"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K7 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K8 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K7 ["IntegrationManagement"]
       11 LOADK                            R4 K9 ["IntegrationNameAlreadyExists"]
       12 NAMECALL                         R1 R1 K8 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["IntegrationNameExists"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K7 ["IntegrationManagement"]
       19 LOADK                            R4 K10 ["IntegrationUrlAlreadyExists"]
       20 NAMECALL                         R1 R1 K8 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["IntegrationUrlExists"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["Settings"]
       27 LOADK                            R4 K3 ["Add"]
       28 NAMECALL                         R1 R1 K8 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K12 ["SettingsDialog"]
       35 LOADK                            R4 K13 ["ManageIntegrationsTab"]
       36 NAMECALL                         R1 R1 K8 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Integrations"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K12 ["SettingsDialog"]
       43 LOADK                            R4 K14 ["APIKeysTab"]
       44 NAMECALL                         R1 R1 K8 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["ApiKeys"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to connect client %*: %*"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["label"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["label"]
        5 NAMECALL                         R1 R0 K1 ["getClient"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K0 ["label"]
       13 NAMECALL                         R2 R2 K2 ["getAuthorizer"]
       15 CALL                             R2 2 1
       16 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       18 LOADK                            R3 K3 ["Client exists but Authorizer not found"]
       19 GETIMPORT                        R1 K5 [assert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K0 ["label"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K6 ["url"]
       30 NAMECALL                         R1 R1 K7 ["getOrCreateAuthorizer"]
       32 CALL                             R1 3 1
       33 LOADNIL                          R2
       34 GETUPVAL                         R3 3
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R3 R4 K8 ["new"]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K6 ["url"]
       43 MOVE                             R5 R1
       44 CALL                             R3 2 1
       45 MOVE                             R2 R3
       46 JUMP                             ; [+9]
       47 GETUPVAL                         R4 5
       48 GETTABLEKS                       R3 R4 K8 ["new"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K6 ["url"]
       53 MOVE                             R5 R1
       54 CALL                             R3 2 1
       55 MOVE                             R2 R3
       56 DUPTABLE                         R5 K12 [{"identifier", "transport", "clientOptions"}]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R6 R7 K0 ["label"]
       60 SETTABLEKS                       R6 R5 K9 ["identifier"]
       62 GETTABLEKS                       R6 R2 K10 ["transport"]
       64 SETTABLEKS                       R6 R5 K10 ["transport"]
       66 GETUPVAL                         R6 6
       67 SETTABLEKS                       R6 R5 K11 ["clientOptions"]
       69 NAMECALL                         R3 R0 K13 ["addClient"]
       71 CALL                             R3 2 0
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R5 R6 K0 ["label"]
       75 NAMECALL                         R3 R0 K14 ["connectClient"]
       77 CALL                             R3 2 1
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          UPVAL U1
       80 NAMECALL                         R3 R3 K15 ["catch"]
       82 CALL                             R3 2 0
       83 JUMP                             ; [+24]
       84 GETUPVAL                         R4 1
       85 GETTABLEKS                       R3 R4 K0 ["label"]
       87 NAMECALL                         R1 R0 K1 ["getClient"]
       89 CALL                             R1 2 1
       90 JUMPIFNOT                        R1 ; [+17]
       91 GETUPVAL                         R4 1
       92 GETTABLEKS                       R3 R4 K0 ["label"]
       94 NAMECALL                         R1 R0 K16 ["closeClient"]
       96 CALL                             R1 2 1
       97 DUPCLOSURE                       R3 K17 [PROTO_2]
       98 NAMECALL                         R1 R1 K15 ["catch"]
      100 CALL                             R1 2 0
      101 GETUPVAL                         R1 2
      102 GETUPVAL                         R4 1
      103 GETTABLEKS                       R3 R4 K0 ["label"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["label"]
       11 SETTABLEKS                       R5 R4 K3 ["label"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["url"]
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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["label"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["filter"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["label"]
        4 NAMECALL                         R0 R0 K1 ["promiseInvalidateCredentials"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K2 ["await"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K0 ["label"]
       14 NAMECALL                         R0 R0 K3 ["removeAuthorizer"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 2
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U1
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["run"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["label"]
        3 NAMECALL                         R1 R0 K1 ["getClient"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["label"]
       10 NAMECALL                         R1 R0 K2 ["closeClient"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["label"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["label"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 GETUPVAL                         R1 1
        8 RETURN                           R1 1
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["label"]
        4 NAMECALL                         R0 R0 K1 ["promiseInvalidateCredentials"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K2 ["await"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K0 ["label"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["run"]
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
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K1 ["IntegrationNameExists"]
       25 SETTABLEKS                       R8 R2 K2 ["nameError"]
       27 GETTABLEKS                       R8 R7 K3 ["url"]
       29 GETTABLEKS                       R9 R0 K3 ["url"]
       31 JUMPIFNOTEQ                      R8 R9 ; [+12]
       33 GETTABLEKS                       R8 R7 K3 ["url"]
       35 GETTABLEKS                       R9 R1 K3 ["url"]
       37 JUMPIFEQ                         R8 R9 ; [+6]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K4 ["IntegrationUrlExists"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETTABLEKS                       R3 R0 K1 ["initialTab"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R2 R0 K1 ["initialTab"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K2 ["integrations"]
       11 CALL                             R1 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["useContext"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["Context"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K3 ["useContext"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K4 ["Context"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K5 ["authorizerManager"]
       28 GETTABLEKS                       R6 R3 K6 ["persistedIntegrations"]
       30 GETTABLEKS                       R7 R6 K2 ["integrations"]
       32 GETTABLEKS                       R8 R6 K7 ["setIntegrations"]
       34 GETTABLEKS                       R9 R6 K8 ["setEnabled"]
       36 GETTABLEKS                       R10 R6 K9 ["saveAuthPersistInfo"]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K0 ["useState"]
       41 LOADNIL                          R12
       42 CALL                             R11 1 2
       43 GETUPVAL                         R13 3
       44 CALL                             R13 0 1
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R14 R15 K10 ["useMemo"]
       48 DUPCLOSURE                       R15 K11 [PROTO_0]
       49 CAPTURE                          UPVAL U4
       50 NEWTABLE                         R16 0 1
       52 GETUPVAL                         R18 4
       53 GETTABLEKS                       R17 R18 K12 ["locale"]
       55 SETLIST                          R16 R17 1 [1]
       57 CALL                             R14 2 1
       58 GETUPVAL                         R15 5
       59 CALL                             R15 0 1
       60 GETUPVAL                         R17 0
       61 GETTABLEKS                       R16 R17 K13 ["useCallback"]
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
       78 GETUPVAL                         R18 0
       79 GETTABLEKS                       R17 R18 K13 ["useCallback"]
       81 NEWCLOSURE                       R18 P2
       82 CAPTURE                          VAL R16
       83 NEWTABLE                         R19 0 1
       85 MOVE                             R20 R16
       86 SETLIST                          R19 R20 1 [1]
       88 CALL                             R17 2 1
       89 GETUPVAL                         R19 0
       90 GETTABLEKS                       R18 R19 K13 ["useCallback"]
       92 NEWCLOSURE                       R19 P3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R17
       96 NEWTABLE                         R20 0 1
       98 MOVE                             R21 R17
       99 SETLIST                          R20 R21 1 [1]
      101 CALL                             R18 2 1
      102 GETUPVAL                         R20 0
      103 GETTABLEKS                       R19 R20 K13 ["useCallback"]
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
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R20 R21 K13 ["useCallback"]
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
      139 GETUPVAL                         R22 0
      140 GETTABLEKS                       R21 R22 K13 ["useCallback"]
      142 NEWCLOSURE                       R22 P6
      143 CAPTURE                          VAL R12
      144 NEWTABLE                         R23 0 0
      146 CALL                             R21 2 1
      147 GETUPVAL                         R23 0
      148 GETTABLEKS                       R22 R23 K13 ["useCallback"]
      150 NEWCLOSURE                       R23 P7
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R14
      153 NEWTABLE                         R24 0 2
      155 MOVE                             R25 R7
      156 MOVE                             R26 R14
      157 SETLIST                          R24 R25 2 [1]
      159 CALL                             R22 2 1
      160 GETUPVAL                         R24 0
      161 GETTABLEKS                       R23 R24 K13 ["useCallback"]
      163 NEWCLOSURE                       R24 P8
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R18
      166 NEWTABLE                         R25 0 1
      168 MOVE                             R26 R18
      169 SETLIST                          R25 R26 1 [1]
      171 CALL                             R23 2 1
      172 GETUPVAL                         R24 11
      173 CALL                             R24 0 1
      174 JUMPIF                           R24 ; [+2]
      175 GETUPVAL                         R24 12
      176 CALL                             R24 0 1
      177 GETUPVAL                         R25 13
      178 GETUPVAL                         R26 14
      179 DUPTABLE                         R27 K18 [{"tag", "scroll", "layout"}]
      180 LOADK                            R28 K19 ["col size-full-full padding-top-xlarge padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge gap-medium"]
      181 SETTABLEKS                       R28 R27 K15 ["tag"]
      183 GETUPVAL                         R28 15
      184 SETTABLEKS                       R28 R27 K16 ["scroll"]
      186 GETUPVAL                         R28 16
      187 SETTABLEKS                       R28 R27 K17 ["layout"]
      189 DUPTABLE                         R28 K21 [{"ApiKeySettings"}]
      190 GETUPVAL                         R29 13
      191 GETUPVAL                         R30 17
      192 CALL                             R29 1 1
      193 SETTABLEKS                       R29 R28 K20 ["ApiKeySettings"]
      195 CALL                             R25 3 1
      196 NEWTABLE                         R26 0 0
      198 DUPTABLE                         R29 K25 [{"id", "text", "content"}]
      199 LOADK                            R30 K26 ["apiKeys"]
      200 SETTABLEKS                       R30 R29 K22 ["id"]
      202 GETTABLEKS                       R30 R14 K27 ["ApiKeys"]
      204 SETTABLEKS                       R30 R29 K23 ["text"]
      206 SETTABLEKS                       R25 R29 K24 ["content"]
      208 FASTCALL2                        TABLE_INSERT R26 R29 ; [+4]
      210 MOVE                             R28 R26
      211 GETIMPORT                        R27 K30 [table.insert]
      213 CALL                             R27 2 0
      214 JUMPIFNOT                        R24 ; [+44]
      215 GETUPVAL                         R27 13
      216 GETUPVAL                         R28 18
      217 DUPTABLE                         R29 K37 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      218 SETTABLEKS                       R7 R29 K2 ["integrations"]
      220 SETTABLEKS                       R23 R29 K31 ["onAddIntegration"]
      222 SETTABLEKS                       R19 R29 K32 ["onRemove"]
      224 SETTABLEKS                       R20 R29 K33 ["onEdit"]
      226 SETTABLEKS                       R9 R29 K34 ["onStatusChange"]
      228 SETTABLEKS                       R10 R29 K35 ["onAuthorizationChange"]
      230 SETTABLEKS                       R16 R29 K36 ["setEnableStatus"]
      232 CALL                             R27 2 1
      233 DUPTABLE                         R30 K25 [{"id", "text", "content"}]
      234 LOADK                            R31 K2 ["integrations"]
      235 SETTABLEKS                       R31 R30 K22 ["id"]
      237 GETTABLEKS                       R31 R14 K38 ["Integrations"]
      239 SETTABLEKS                       R31 R30 K23 ["text"]
      241 GETUPVAL                         R31 13
      242 GETUPVAL                         R32 19
      243 DUPTABLE                         R33 K39 [{"tag"}]
      244 LOADK                            R34 K40 ["col size-full-full padding-xlarge gap-medium"]
      245 SETTABLEKS                       R34 R33 K15 ["tag"]
      247 DUPTABLE                         R34 K42 [{"MainContent"}]
      248 SETTABLEKS                       R27 R34 K41 ["MainContent"]
      250 CALL                             R31 3 1
      251 SETTABLEKS                       R31 R30 K24 ["content"]
      253 FASTCALL2                        TABLE_INSERT R26 R30 ; [+4]
      255 MOVE                             R29 R26
      256 GETIMPORT                        R28 K30 [table.insert]
      258 CALL                             R28 2 0
      259 LOADNIL                          R27
      260 MOVE                             R28 R26
      261 LOADNIL                          R29
      262 LOADNIL                          R30
      263 FORGPREP                         R28
      264 GETTABLEKS                       R33 R32 K22 ["id"]
      266 JUMPIFNOTEQ                      R33 R1 ; [+4]
      268 GETTABLEKS                       R27 R32 K24 ["content"]
      270 JUMP                             ; [+2]
      271 FORGLOOP                         R28 2 ; [-8]
      273 NEWTABLE                         R28 0 0
      275 MOVE                             R29 R26
      276 LOADNIL                          R30
      277 LOADNIL                          R31
      278 FORGPREP                         R29
      279 GETTABLEKS                       R35 R33 K22 ["id"]
      281 JUMPIFEQ                         R35 R1 ; [+2]
      283 LOADB                            R34 0 +1
      284 LOADB                            R34 1
      285 GETTABLEKS                       R35 R33 K22 ["id"]
      287 GETUPVAL                         R36 13
      288 GETUPVAL                         R37 20
      289 DUPTABLE                         R38 K47 [{"LayoutOrder", "text", "onActivated", "size", "variant", "tag"}]
      290 SETTABLEKS                       R32 R38 K43 ["LayoutOrder"]
      292 GETTABLEKS                       R39 R33 K23 ["text"]
      294 SETTABLEKS                       R39 R38 K23 ["text"]
      296 NEWCLOSURE                       R39 P9
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R33
      299 SETTABLEKS                       R39 R38 K44 ["onActivated"]
      301 GETUPVAL                         R40 21
      302 GETTABLEKS                       R39 R40 K48 ["Small"]
      304 SETTABLEKS                       R39 R38 K45 ["size"]
      306 JUMPIFNOT                        R34 ; [+4]
      307 GETUPVAL                         R40 22
      308 GETTABLEKS                       R39 R40 K49 ["Standard"]
      310 JUMP                             ; [+3]
      311 GETUPVAL                         R40 22
      312 GETTABLEKS                       R39 R40 K50 ["Text"]
      314 SETTABLEKS                       R39 R38 K46 ["variant"]
      316 LOADK                            R39 K51 ["size-full-0"]
      317 SETTABLEKS                       R39 R38 K15 ["tag"]
      319 CALL                             R36 2 1
      320 SETTABLE                         R36 R28 R35
      321 FORGLOOP                         R29 2 ; [-43]
      323 GETUPVAL                         R29 23
      324 CALL                             R29 0 1
      325 GETUPVAL                         R30 13
      326 GETUPVAL                         R31 19
      327 DUPTABLE                         R32 K53 [{"tag", "testId"}]
      328 LOADK                            R33 K54 ["row size-full-full"]
      329 SETTABLEKS                       R33 R32 K15 ["tag"]
      331 GETUPVAL                         R35 24
      332 GETTABLEKS                       R34 R35 K55 ["IntegrationMenu"]
      334 GETTABLEKS                       R33 R34 K56 ["AddIntegrationDialog"]
      336 SETTABLEKS                       R33 R32 K52 ["testId"]
      338 DUPTABLE                         R33 K61 [{"Dialog", "TabList", "Divider", "ContentArea"}]
      339 JUMPIFNOT                        R11 ; [+17]
      340 GETUPVAL                         R34 13
      341 GETUPVAL                         R35 25
      342 DUPTABLE                         R36 K66 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      343 GETTABLEKS                       R37 R11 K67 ["integration"]
      345 SETTABLEKS                       R37 R36 K62 ["initialIntegration"]
      347 GETTABLEKS                       R37 R11 K63 ["onSave"]
      349 SETTABLEKS                       R37 R36 K63 ["onSave"]
      351 SETTABLEKS                       R22 R36 K64 ["checkError"]
      353 SETTABLEKS                       R21 R36 K65 ["onClose"]
      355 CALL                             R34 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R34
      358 SETTABLEKS                       R34 R33 K57 ["Dialog"]
      360 GETUPVAL                         R34 13
      361 GETUPVAL                         R35 19
      362 DUPTABLE                         R36 K69 [{"Size", "LayoutOrder", "tag"}]
      363 GETIMPORT                        R37 K72 [UDim2.new]
      365 LOADN                            R38 0
      366 LOADN                            R39 125
      367 LOADN                            R40 1
      368 LOADN                            R41 0
      369 CALL                             R37 4 1
      370 SETTABLEKS                       R37 R36 K68 ["Size"]
      372 MOVE                             R37 R29
      373 CALL                             R37 0 1
      374 SETTABLEKS                       R37 R36 K43 ["LayoutOrder"]
      376 LOADK                            R37 K73 ["col padding-medium gap-small"]
      377 SETTABLEKS                       R37 R36 K15 ["tag"]
      379 MOVE                             R37 R28
      380 CALL                             R34 3 1
      381 SETTABLEKS                       R34 R33 K58 ["TabList"]
      383 GETUPVAL                         R34 13
      384 GETUPVAL                         R35 26
      385 DUPTABLE                         R36 K75 [{"LayoutOrder", "variant", "orientation"}]
      386 MOVE                             R37 R29
      387 CALL                             R37 0 1
      388 SETTABLEKS                       R37 R36 K43 ["LayoutOrder"]
      390 GETUPVAL                         R38 27
      391 GETTABLEKS                       R37 R38 K76 ["Default"]
      393 SETTABLEKS                       R37 R36 K46 ["variant"]
      395 GETUPVAL                         R38 28
      396 GETTABLEKS                       R37 R38 K77 ["Vertical"]
      398 SETTABLEKS                       R37 R36 K74 ["orientation"]
      400 CALL                             R34 2 1
      401 SETTABLEKS                       R34 R33 K59 ["Divider"]
      403 GETUPVAL                         R34 13
      404 GETUPVAL                         R35 19
      405 DUPTABLE                         R36 K78 [{"Size", "LayoutOrder", "testId"}]
      406 GETIMPORT                        R37 K72 [UDim2.new]
      408 LOADN                            R38 1
      409 LOADN                            R39 131
      410 LOADN                            R40 1
      411 LOADN                            R41 0
      412 CALL                             R37 4 1
      413 SETTABLEKS                       R37 R36 K68 ["Size"]
      415 MOVE                             R37 R29
      416 CALL                             R37 0 1
      417 SETTABLEKS                       R37 R36 K43 ["LayoutOrder"]
      419 GETUPVAL                         R39 24
      420 GETTABLEKS                       R38 R39 K55 ["IntegrationMenu"]
      422 GETTABLEKS                       R37 R38 K79 ["TabContent"]
      424 SETTABLEKS                       R37 R36 K52 ["testId"]
      426 DUPTABLE                         R37 K81 [{"Content"}]
      427 SETTABLEKS                       R27 R37 K80 ["Content"]
      429 CALL                             R34 3 1
      430 SETTABLEKS                       R34 R33 K60 ["ContentArea"]
      432 CALL                             R30 3 -1
      433 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["AddIntegrationDialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["APIKeyManagement"]
       22 GETTABLEKS                       R3 R4 K10 ["ApiKeySettingsContent"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K11 ["IntegrationMenuContent"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K12 ["IntegrationTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Components"]
       47 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       49 GETTABLEKS                       R6 R7 K14 ["McpAuthorizerManagerContext"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K6 ["Parent"]
       56 GETTABLEKS                       R7 R8 K15 ["Dash"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K6 ["Parent"]
       63 GETTABLEKS                       R8 R9 K16 ["Foundation"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K6 ["Parent"]
       70 GETTABLEKS                       R9 R10 K17 ["ModelContextProtocol"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K8 ["Components"]
       77 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       79 GETTABLEKS                       R10 R11 K18 ["PersistedIntegrationContext"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R12 R0 K6 ["Parent"]
       86 GETTABLEKS                       R11 R12 K19 ["React"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R13 R0 K6 ["Parent"]
       93 GETTABLEKS                       R12 R13 K20 ["ReactUtils"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R14 R0 K21 ["Util"]
      100 GETTABLEKS                       R13 R14 K22 ["TestIds"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Resources"]
      107 GETTABLEKS                       R15 R16 K24 ["Localization"]
      109 GETTABLEKS                       R14 R15 K25 ["Translator"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K27 ["useAsyncGuard"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K26 ["Hooks"]
      123 GETTABLEKS                       R16 R17 K28 ["useWithClient"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R18 R0 K29 ["Flags"]
      130 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantUseVariantHttpTransport"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R19 R0 K29 ["Flags"]
      137 GETTABLEKS                       R18 R19 K31 ["FFlagCAP2605"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R20 R0 K29 ["Flags"]
      144 GETTABLEKS                       R19 R20 K32 ["FFlagMCPAssistantManagementMenu"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R20 R8 K33 ["HttpVariantClientTransport"]
      149 GETTABLEKS                       R19 R20 K33 ["HttpVariantClientTransport"]
      151 GETTABLEKS                       R21 R8 K34 ["StreamableHttpClient"]
      153 GETTABLEKS                       R20 R21 K35 ["StreamableHttpClientTransport"]
      155 GETTABLEKS                       R21 R7 K36 ["Button"]
      157 GETTABLEKS                       R22 R7 K37 ["Divider"]
      159 GETTABLEKS                       R23 R7 K38 ["View"]
      161 GETTABLEKS                       R24 R7 K39 ["ScrollView"]
      163 GETTABLEKS                       R26 R7 K40 ["Enums"]
      165 GETTABLEKS                       R25 R26 K41 ["ButtonSize"]
      167 GETTABLEKS                       R27 R7 K40 ["Enums"]
      169 GETTABLEKS                       R26 R27 K42 ["ButtonVariant"]
      171 GETTABLEKS                       R28 R7 K40 ["Enums"]
      173 GETTABLEKS                       R27 R28 K43 ["DividerVariant"]
      175 GETTABLEKS                       R29 R7 K40 ["Enums"]
      177 GETTABLEKS                       R28 R29 K44 ["DividerOrientation"]
      179 GETTABLEKS                       R29 R11 K45 ["createNextOrder"]
      181 GETTABLEKS                       R30 R10 K46 ["createElement"]
      183 GETTABLEKS                       R32 R8 K47 ["Types"]
      185 GETTABLEKS                       R31 R32 K48 ["emptyObject"]
      187 DUPTABLE                         R32 K56 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      188 GETIMPORT                        R33 K59 [UDim2.fromOffset]
      190 LOADN                            R34 0
      191 LOADN                            R35 0
      192 CALL                             R33 2 1
      193 SETTABLEKS                       R33 R32 K49 ["CanvasSize"]
      195 GETIMPORT                        R33 K62 [Enum.AutomaticSize.X]
      197 SETTABLEKS                       R33 R32 K50 ["AutomaticSize"]
      199 GETIMPORT                        R33 K64 [Enum.AutomaticSize.Y]
      201 SETTABLEKS                       R33 R32 K51 ["AutomaticCanvasSize"]
      203 GETIMPORT                        R33 K65 [Enum.ScrollingDirection.Y]
      205 SETTABLEKS                       R33 R32 K52 ["ScrollingDirection"]
      207 GETTABLEKS                       R35 R7 K40 ["Enums"]
      209 GETTABLEKS                       R34 R35 K66 ["Visibility"]
      211 GETTABLEKS                       R33 R34 K67 ["Auto"]
      213 SETTABLEKS                       R33 R32 K53 ["scrollBarVisibility"]
      215 GETIMPORT                        R33 K70 [Enum.ScrollBarInset.None]
      217 SETTABLEKS                       R33 R32 K54 ["HorizontalScrollBarInset"]
      219 GETIMPORT                        R33 K72 [Enum.ScrollBarInset.Always]
      221 SETTABLEKS                       R33 R32 K55 ["VerticalScrollBarInset"]
      223 DUPTABLE                         R33 K75 [{"SortOrder", "FillDirection"}]
      224 GETIMPORT                        R34 K77 [Enum.SortOrder.LayoutOrder]
      226 SETTABLEKS                       R34 R33 K73 ["SortOrder"]
      228 GETIMPORT                        R34 K79 [Enum.FillDirection.Vertical]
      230 SETTABLEKS                       R34 R33 K74 ["FillDirection"]
      232 DUPTABLE                         R34 K81 [{"capabilities"}]
      233 DUPTABLE                         R35 K85 [{"prompts", "resources", "tools"}]
      234 MOVE                             R36 R31
      235 CALL                             R36 0 1
      236 SETTABLEKS                       R36 R35 K82 ["prompts"]
      238 MOVE                             R36 R31
      239 CALL                             R36 0 1
      240 SETTABLEKS                       R36 R35 K83 ["resources"]
      242 MOVE                             R36 R31
      243 CALL                             R36 0 1
      244 SETTABLEKS                       R36 R35 K84 ["tools"]
      246 SETTABLEKS                       R35 R34 K80 ["capabilities"]
      248 DUPCLOSURE                       R35 K86 [PROTO_22]
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R13
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R34
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R18
      261 CAPTURE                          VAL R17
      262 CAPTURE                          VAL R30
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R33
      266 CAPTURE                          VAL R2
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R23
      269 CAPTURE                          VAL R21
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R26
      272 CAPTURE                          VAL R29
      273 CAPTURE                          VAL R12
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R27
      277 CAPTURE                          VAL R28
      278 RETURN                           R35 1
