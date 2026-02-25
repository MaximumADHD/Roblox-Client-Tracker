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
      172 NOT                              R24 R7
      173 JUMPIF                           R24 ; [+5]
      174 LENGTH                           R25 R7
      175 JUMPIFEQKN                       R25 K15 [0] ; [+2]
      177 LOADB                            R24 0 +1
      178 LOADB                            R24 1
      179 JUMPIFEQKNIL                     R7 ; [+2]
      181 LOADB                            R25 0 +1
      182 LOADB                            R25 1
      183 LOADNIL                          R26
      184 GETUPVAL                         R27 11
      185 CALL                             R27 0 1
      186 JUMPIFNOT                        R27 ; [+49]
      187 LOADNIL                          R27
      188 JUMPIFNOT                        R24 ; [+10]
      189 GETUPVAL                         R28 12
      190 GETUPVAL                         R29 13
      191 DUPTABLE                         R30 K18 [{"onAddIntegration", "isLoading"}]
      192 SETTABLEKS                       R23 R30 K16 ["onAddIntegration"]
      194 SETTABLEKS                       R25 R30 K17 ["isLoading"]
      196 CALL                             R28 2 1
      197 MOVE                             R27 R28
      198 JUMP                             ; [+26]
      199 FASTCALL2K                       ASSERT R7 K19 ; [+5]
      201 MOVE                             R29 R7
      202 LOADK                            R30 K19 ["Checked by isEmpty"]
      203 GETIMPORT                        R28 K21 [assert]
      205 CALL                             R28 2 0
      206 GETUPVAL                         R28 12
      207 GETUPVAL                         R29 14
      208 DUPTABLE                         R30 K27 [{"integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      209 SETTABLEKS                       R7 R30 K2 ["integrations"]
      211 SETTABLEKS                       R23 R30 K16 ["onAddIntegration"]
      213 SETTABLEKS                       R19 R30 K22 ["onRemove"]
      215 SETTABLEKS                       R20 R30 K23 ["onEdit"]
      217 SETTABLEKS                       R9 R30 K24 ["onStatusChange"]
      219 SETTABLEKS                       R10 R30 K25 ["onAuthorizationChange"]
      221 SETTABLEKS                       R16 R30 K26 ["setEnableStatus"]
      223 CALL                             R28 2 1
      224 MOVE                             R27 R28
      225 GETUPVAL                         R28 12
      226 GETUPVAL                         R29 15
      227 DUPTABLE                         R30 K29 [{"tag"}]
      228 LOADK                            R31 K30 ["col size-full-full padding-xlarge gap-medium"]
      229 SETTABLEKS                       R31 R30 K28 ["tag"]
      231 DUPTABLE                         R31 K32 [{"MainContent"}]
      232 SETTABLEKS                       R27 R31 K31 ["MainContent"]
      234 CALL                             R28 3 1
      235 MOVE                             R26 R28
      236 LOADNIL                          R27
      237 GETUPVAL                         R28 16
      238 CALL                             R28 0 1
      239 JUMPIFNOT                        R28 ; [+20]
      240 GETUPVAL                         R28 12
      241 GETUPVAL                         R29 17
      242 DUPTABLE                         R30 K35 [{"tag", "scroll", "layout"}]
      243 LOADK                            R31 K36 ["col size-full-full padding-top-xlarge padding-bottom-xlarge padding-left-xlarge padding-right-xxlarge gap-medium"]
      244 SETTABLEKS                       R31 R30 K28 ["tag"]
      246 GETUPVAL                         R31 18
      247 SETTABLEKS                       R31 R30 K33 ["scroll"]
      249 GETUPVAL                         R31 19
      250 SETTABLEKS                       R31 R30 K34 ["layout"]
      252 DUPTABLE                         R31 K38 [{"ApiKeySettings"}]
      253 GETUPVAL                         R32 12
      254 GETUPVAL                         R33 20
      255 CALL                             R32 1 1
      256 SETTABLEKS                       R32 R31 K37 ["ApiKeySettings"]
      258 CALL                             R28 3 1
      259 MOVE                             R27 R28
      260 NEWTABLE                         R28 0 0
      262 GETUPVAL                         R29 16
      263 CALL                             R29 0 1
      264 JUMPIFNOT                        R29 ; [+16]
      265 DUPTABLE                         R31 K42 [{"id", "text", "content"}]
      266 LOADK                            R32 K43 ["apiKeys"]
      267 SETTABLEKS                       R32 R31 K39 ["id"]
      269 GETTABLEKS                       R32 R14 K44 ["ApiKeys"]
      271 SETTABLEKS                       R32 R31 K40 ["text"]
      273 SETTABLEKS                       R27 R31 K41 ["content"]
      275 FASTCALL2                        TABLE_INSERT R28 R31 ; [+4]
      277 MOVE                             R30 R28
      278 GETIMPORT                        R29 K47 [table.insert]
      280 CALL                             R29 2 0
      281 GETUPVAL                         R29 11
      282 CALL                             R29 0 1
      283 JUMPIFNOT                        R29 ; [+16]
      284 DUPTABLE                         R31 K42 [{"id", "text", "content"}]
      285 LOADK                            R32 K2 ["integrations"]
      286 SETTABLEKS                       R32 R31 K39 ["id"]
      288 GETTABLEKS                       R32 R14 K48 ["Integrations"]
      290 SETTABLEKS                       R32 R31 K40 ["text"]
      292 SETTABLEKS                       R26 R31 K41 ["content"]
      294 FASTCALL2                        TABLE_INSERT R28 R31 ; [+4]
      296 MOVE                             R30 R28
      297 GETIMPORT                        R29 K47 [table.insert]
      299 CALL                             R29 2 0
      300 LOADNIL                          R29
      301 MOVE                             R30 R28
      302 LOADNIL                          R31
      303 LOADNIL                          R32
      304 FORGPREP                         R30
      305 GETTABLEKS                       R35 R34 K39 ["id"]
      307 JUMPIFNOTEQ                      R35 R1 ; [+4]
      309 GETTABLEKS                       R29 R34 K41 ["content"]
      311 JUMP                             ; [+2]
      312 FORGLOOP                         R30 2 ; [-8]
      314 NEWTABLE                         R30 0 0
      316 MOVE                             R31 R28
      317 LOADNIL                          R32
      318 LOADNIL                          R33
      319 FORGPREP                         R31
      320 GETTABLEKS                       R37 R35 K39 ["id"]
      322 JUMPIFEQ                         R37 R1 ; [+2]
      324 LOADB                            R36 0 +1
      325 LOADB                            R36 1
      326 GETTABLEKS                       R37 R35 K39 ["id"]
      328 GETUPVAL                         R38 12
      329 GETUPVAL                         R39 21
      330 DUPTABLE                         R40 K53 [{"LayoutOrder", "text", "onActivated", "size", "variant", "tag"}]
      331 SETTABLEKS                       R34 R40 K49 ["LayoutOrder"]
      333 GETTABLEKS                       R41 R35 K40 ["text"]
      335 SETTABLEKS                       R41 R40 K40 ["text"]
      337 NEWCLOSURE                       R41 P9
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R35
      340 SETTABLEKS                       R41 R40 K50 ["onActivated"]
      342 GETUPVAL                         R42 22
      343 GETTABLEKS                       R41 R42 K54 ["Small"]
      345 SETTABLEKS                       R41 R40 K51 ["size"]
      347 JUMPIFNOT                        R36 ; [+4]
      348 GETUPVAL                         R42 23
      349 GETTABLEKS                       R41 R42 K55 ["Standard"]
      351 JUMP                             ; [+3]
      352 GETUPVAL                         R42 23
      353 GETTABLEKS                       R41 R42 K56 ["Text"]
      355 SETTABLEKS                       R41 R40 K52 ["variant"]
      357 LOADK                            R41 K57 ["size-full-0"]
      358 SETTABLEKS                       R41 R40 K28 ["tag"]
      360 CALL                             R38 2 1
      361 SETTABLE                         R38 R30 R37
      362 FORGLOOP                         R31 2 ; [-43]
      364 GETUPVAL                         R31 24
      365 CALL                             R31 0 1
      366 GETUPVAL                         R32 12
      367 GETUPVAL                         R33 15
      368 DUPTABLE                         R34 K59 [{"tag", "testId"}]
      369 LOADK                            R35 K60 ["row size-full-full"]
      370 SETTABLEKS                       R35 R34 K28 ["tag"]
      372 GETUPVAL                         R37 25
      373 GETTABLEKS                       R36 R37 K61 ["IntegrationMenu"]
      375 GETTABLEKS                       R35 R36 K62 ["AddIntegrationDialog"]
      377 SETTABLEKS                       R35 R34 K58 ["testId"]
      379 DUPTABLE                         R35 K67 [{"Dialog", "TabList", "Divider", "ContentArea"}]
      380 JUMPIFNOT                        R11 ; [+17]
      381 GETUPVAL                         R36 12
      382 GETUPVAL                         R37 26
      383 DUPTABLE                         R38 K72 [{"initialIntegration", "onSave", "checkError", "onClose"}]
      384 GETTABLEKS                       R39 R11 K73 ["integration"]
      386 SETTABLEKS                       R39 R38 K68 ["initialIntegration"]
      388 GETTABLEKS                       R39 R11 K69 ["onSave"]
      390 SETTABLEKS                       R39 R38 K69 ["onSave"]
      392 SETTABLEKS                       R22 R38 K70 ["checkError"]
      394 SETTABLEKS                       R21 R38 K71 ["onClose"]
      396 CALL                             R36 2 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R36
      399 SETTABLEKS                       R36 R35 K63 ["Dialog"]
      401 GETUPVAL                         R36 12
      402 GETUPVAL                         R37 15
      403 DUPTABLE                         R38 K75 [{"Size", "LayoutOrder", "tag"}]
      404 GETIMPORT                        R39 K78 [UDim2.new]
      406 LOADN                            R40 0
      407 LOADN                            R41 125
      408 LOADN                            R42 1
      409 LOADN                            R43 0
      410 CALL                             R39 4 1
      411 SETTABLEKS                       R39 R38 K74 ["Size"]
      413 MOVE                             R39 R31
      414 CALL                             R39 0 1
      415 SETTABLEKS                       R39 R38 K49 ["LayoutOrder"]
      417 LOADK                            R39 K79 ["col padding-medium gap-small"]
      418 SETTABLEKS                       R39 R38 K28 ["tag"]
      420 MOVE                             R39 R30
      421 CALL                             R36 3 1
      422 SETTABLEKS                       R36 R35 K64 ["TabList"]
      424 GETUPVAL                         R36 12
      425 GETUPVAL                         R37 27
      426 DUPTABLE                         R38 K81 [{"LayoutOrder", "variant", "orientation"}]
      427 MOVE                             R39 R31
      428 CALL                             R39 0 1
      429 SETTABLEKS                       R39 R38 K49 ["LayoutOrder"]
      431 GETUPVAL                         R40 28
      432 GETTABLEKS                       R39 R40 K82 ["Default"]
      434 SETTABLEKS                       R39 R38 K52 ["variant"]
      436 GETUPVAL                         R40 29
      437 GETTABLEKS                       R39 R40 K83 ["Vertical"]
      439 SETTABLEKS                       R39 R38 K80 ["orientation"]
      441 CALL                             R36 2 1
      442 SETTABLEKS                       R36 R35 K65 ["Divider"]
      444 GETUPVAL                         R36 12
      445 GETUPVAL                         R37 15
      446 DUPTABLE                         R38 K84 [{"Size", "LayoutOrder", "testId"}]
      447 GETIMPORT                        R39 K78 [UDim2.new]
      449 LOADN                            R40 1
      450 LOADN                            R41 131
      451 LOADN                            R42 1
      452 LOADN                            R43 0
      453 CALL                             R39 4 1
      454 SETTABLEKS                       R39 R38 K74 ["Size"]
      456 MOVE                             R39 R31
      457 CALL                             R39 0 1
      458 SETTABLEKS                       R39 R38 K49 ["LayoutOrder"]
      460 GETUPVAL                         R41 25
      461 GETTABLEKS                       R40 R41 K61 ["IntegrationMenu"]
      463 GETTABLEKS                       R39 R40 K85 ["TabContent"]
      465 SETTABLEKS                       R39 R38 K58 ["testId"]
      467 DUPTABLE                         R39 K87 [{"Content"}]
      468 SETTABLEKS                       R29 R39 K86 ["Content"]
      470 CALL                             R36 3 1
      471 SETTABLEKS                       R36 R35 K66 ["ContentArea"]
      473 CALL                             R32 3 -1
      474 RETURN                           R32 -1

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
       31 GETTABLEKS                       R4 R5 K11 ["IntegrationMenuEmptyState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K12 ["IntegrationMenuItems"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R7 R8 K6 ["Parent"]
       49 GETTABLEKS                       R6 R7 K13 ["IntegrationTypes"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Components"]
       56 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       58 GETTABLEKS                       R7 R8 K15 ["McpAuthorizerManagerContext"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Parent"]
       65 GETTABLEKS                       R8 R9 K16 ["Dash"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K6 ["Parent"]
       72 GETTABLEKS                       R9 R10 K17 ["Foundation"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K6 ["Parent"]
       79 GETTABLEKS                       R10 R11 K18 ["ModelContextProtocol"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Components"]
       86 GETTABLEKS                       R12 R13 K14 ["Contexts"]
       88 GETTABLEKS                       R11 R12 K19 ["PersistedIntegrationContext"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K6 ["Parent"]
       95 GETTABLEKS                       R12 R13 K20 ["React"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R14 R0 K6 ["Parent"]
      102 GETTABLEKS                       R13 R14 K21 ["ReactUtils"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R15 R0 K22 ["Util"]
      109 GETTABLEKS                       R14 R15 K23 ["TestIds"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R17 R0 K24 ["Resources"]
      116 GETTABLEKS                       R16 R17 K25 ["Localization"]
      118 GETTABLEKS                       R15 R16 K26 ["Translator"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K28 ["useAsyncGuard"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R18 R0 K27 ["Hooks"]
      132 GETTABLEKS                       R17 R18 K29 ["useWithClient"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R19 R0 K30 ["Flags"]
      139 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantUseVariantHttpTransport"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R20 R0 K30 ["Flags"]
      146 GETTABLEKS                       R19 R20 K32 ["FFlagMCPAssistantExternalAPIKey"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R21 R0 K30 ["Flags"]
      153 GETTABLEKS                       R20 R21 K33 ["FFlagMCPAssistantManagementMenu"]
      155 CALL                             R19 1 1
      156 GETTABLEKS                       R21 R9 K34 ["HttpVariantClientTransport"]
      158 GETTABLEKS                       R20 R21 K34 ["HttpVariantClientTransport"]
      160 GETTABLEKS                       R22 R9 K35 ["StreamableHttpClient"]
      162 GETTABLEKS                       R21 R22 K36 ["StreamableHttpClientTransport"]
      164 GETTABLEKS                       R22 R8 K37 ["Button"]
      166 GETTABLEKS                       R23 R8 K38 ["Divider"]
      168 GETTABLEKS                       R24 R8 K39 ["View"]
      170 GETTABLEKS                       R25 R8 K40 ["ScrollView"]
      172 GETTABLEKS                       R27 R8 K41 ["Enums"]
      174 GETTABLEKS                       R26 R27 K42 ["ButtonSize"]
      176 GETTABLEKS                       R28 R8 K41 ["Enums"]
      178 GETTABLEKS                       R27 R28 K43 ["ButtonVariant"]
      180 GETTABLEKS                       R29 R8 K41 ["Enums"]
      182 GETTABLEKS                       R28 R29 K44 ["DividerVariant"]
      184 GETTABLEKS                       R30 R8 K41 ["Enums"]
      186 GETTABLEKS                       R29 R30 K45 ["DividerOrientation"]
      188 GETTABLEKS                       R30 R12 K46 ["createNextOrder"]
      190 GETTABLEKS                       R31 R11 K47 ["createElement"]
      192 GETTABLEKS                       R33 R9 K48 ["Types"]
      194 GETTABLEKS                       R32 R33 K49 ["emptyObject"]
      196 DUPTABLE                         R33 K57 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
      197 GETIMPORT                        R34 K60 [UDim2.fromOffset]
      199 LOADN                            R35 0
      200 LOADN                            R36 0
      201 CALL                             R34 2 1
      202 SETTABLEKS                       R34 R33 K50 ["CanvasSize"]
      204 GETIMPORT                        R34 K63 [Enum.AutomaticSize.X]
      206 SETTABLEKS                       R34 R33 K51 ["AutomaticSize"]
      208 GETIMPORT                        R34 K65 [Enum.AutomaticSize.Y]
      210 SETTABLEKS                       R34 R33 K52 ["AutomaticCanvasSize"]
      212 GETIMPORT                        R34 K66 [Enum.ScrollingDirection.Y]
      214 SETTABLEKS                       R34 R33 K53 ["ScrollingDirection"]
      216 GETTABLEKS                       R36 R8 K41 ["Enums"]
      218 GETTABLEKS                       R35 R36 K67 ["Visibility"]
      220 GETTABLEKS                       R34 R35 K68 ["Auto"]
      222 SETTABLEKS                       R34 R33 K54 ["scrollBarVisibility"]
      224 GETIMPORT                        R34 K71 [Enum.ScrollBarInset.None]
      226 SETTABLEKS                       R34 R33 K55 ["HorizontalScrollBarInset"]
      228 GETIMPORT                        R34 K73 [Enum.ScrollBarInset.Always]
      230 SETTABLEKS                       R34 R33 K56 ["VerticalScrollBarInset"]
      232 DUPTABLE                         R34 K76 [{"SortOrder", "FillDirection"}]
      233 GETIMPORT                        R35 K78 [Enum.SortOrder.LayoutOrder]
      235 SETTABLEKS                       R35 R34 K74 ["SortOrder"]
      237 GETIMPORT                        R35 K80 [Enum.FillDirection.Vertical]
      239 SETTABLEKS                       R35 R34 K75 ["FillDirection"]
      241 DUPTABLE                         R35 K82 [{"capabilities"}]
      242 DUPTABLE                         R36 K86 [{"prompts", "resources", "tools"}]
      243 MOVE                             R37 R32
      244 CALL                             R37 0 1
      245 SETTABLEKS                       R37 R36 K83 ["prompts"]
      247 MOVE                             R37 R32
      248 CALL                             R37 0 1
      249 SETTABLEKS                       R37 R36 K84 ["resources"]
      251 MOVE                             R37 R32
      252 CALL                             R37 0 1
      253 SETTABLEKS                       R37 R36 K85 ["tools"]
      255 SETTABLEKS                       R36 R35 K81 ["capabilities"]
      257 DUPCLOSURE                       R36 K87 [PROTO_22]
      258 CAPTURE                          VAL R11
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R6
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R16
      264 CAPTURE                          VAL R17
      265 CAPTURE                          VAL R20
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R35
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R18
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R33
      277 CAPTURE                          VAL R34
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R22
      280 CAPTURE                          VAL R26
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R30
      283 CAPTURE                          VAL R13
      284 CAPTURE                          VAL R1
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R28
      287 CAPTURE                          VAL R29
      288 RETURN                           R36 1
