PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 3
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K0 ["ANTHROPIC_PROVIDER_ENABLED"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K1 ["OPENAI_PROVIDER_ENABLED"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K2 ["GEMINI_PROVIDER_ENABLED"]
       20 SETLIST                          R2 R3 3 [1]
       22 MOVE                             R3 R2
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 GETTABLE                         R8 R0 R7
       27 JUMPIFNOT                        R8 ; [+16]
       28 GETTABLE                         R8 R0 R7
       29 JUMPIFNOTEQKS                    R8 K3 ["true"] ; [+14]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K4 ["getProviderForCheckboxSettingsKey"]
       34 MOVE                             R9 R7
       35 CALL                             R8 1 1
       36 JUMPIFNOT                        R8 ; [+7]
       37 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       39 MOVE                             R10 R1
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K7 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R3 2 ; [-19]
       46 GETUPVAL                         R3 4
       47 MOVE                             R4 R1
       48 CALL                             R3 1 0
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K8 ["CURRENT_MODEL"]
       52 GETTABLE                         R3 R0 R4
       53 JUMPIFNOT                        R3 ; [+22]
       54 JUMPIFEQKS                       R3 K9 [""] ; [+21]
       56 GETUPVAL                         R4 5
       57 JUMPIFEQ                         R3 R4 ; [+18]
       59 GETUPVAL                         R5 3
       60 GETTABLEKS                       R4 R5 K10 ["getProviderForModel"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 GETIMPORT                        R5 K12 [table.find]
       66 MOVE                             R6 R1
       67 MOVE                             R7 R4
       68 CALL                             R5 2 1
       69 JUMPIFNOT                        R5 ; [+6]
       70 GETUPVAL                         R5 6
       71 MOVE                             R6 R3
       72 CALL                             R5 1 0
       73 GETUPVAL                         R5 7
       74 MOVE                             R6 R4
       75 CALL                             R5 1 0
       76 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSettingsObservable"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 NAMECALL                         R1 R0 K1 ["connect"]
       15 CALL                             R1 2 1
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["setProviderSetting"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K1 ["CURRENT_MODEL"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getCheckboxSettingsKeyForProvider"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["setProviderSetting"]
        8 MOVE                             R4 R2
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADK                            R5 K2 ["true"]
       11 JUMP                             ; [+1]
       12 LOADK                            R5 K3 ["false"]
       13 CALL                             R3 2 0
       14 JUMPIFNOT                        R1 ; [+25]
       15 GETIMPORT                        R3 K6 [table.clone]
       17 GETUPVAL                         R4 2
       18 CALL                             R3 1 1
       19 GETIMPORT                        R5 K8 [table.find]
       21 MOVE                             R6 R3
       22 MOVE                             R7 R0
       23 CALL                             R5 2 1
       24 JUMPIFNOTEQKNIL                  R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 JUMPIF                           R4 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       31 MOVE                             R6 R3
       32 MOVE                             R7 R0
       33 GETIMPORT                        R5 K10 [table.insert]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R3
       38 CALL                             R5 1 0
       39 RETURN                           R0 0
       40 NEWTABLE                         R3 0 0
       42 GETUPVAL                         R4 2
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 JUMPIFEQ                         R8 R0 ; [+8]
       48 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       50 MOVE                             R10 R3
       51 MOVE                             R11 R8
       52 GETIMPORT                        R9 K10 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R4 2 ; [-10]
       57 GETUPVAL                         R4 3
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 GETUPVAL                         R4 4
       61 JUMPIFNOTEQ                      R4 R0 ; [+15]
       63 GETUPVAL                         R4 5
       64 GETUPVAL                         R5 6
       65 CALL                             R4 1 0
       66 GETUPVAL                         R4 7
       67 LOADK                            R5 K11 ["Studio"]
       68 CALL                             R4 1 0
       69 GETUPVAL                         R5 1
       70 GETTABLEKS                       R4 R5 K1 ["setProviderSetting"]
       72 GETUPVAL                         R6 8
       73 GETTABLEKS                       R5 R6 K12 ["CURRENT_MODEL"]
       75 GETUPVAL                         R6 6
       76 CALL                             R4 2 0
       77 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"selectedModel", "selectedProvider", "enabledProviders", "setSelectedModel", "toggleProvider"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["selectedModel"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedProvider"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["enabledProviders"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedModel"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["toggleProvider"]
       16 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKS                       R2 K0 ["Studio"] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 DUPTABLE                         R4 K2 [{"onlyUseStaticServers"}]
        6 SETTABLEKS                       R1 R4 K1 ["onlyUseStaticServers"]
        8 NAMECALL                         R2 R0 K3 ["applyRequestFilters"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["useState"]
       10 LOADK                            R5 K1 ["Studio"]
       11 CALL                             R4 1 2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K0 ["useState"]
       15 NEWTABLE                         R7 0 0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K0 ["useState"]
       21 LOADB                            R9 0
       22 CALL                             R8 1 2
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R10 R11 K2 ["useEffect"]
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R8
       29 CAPTURE                          VAL R9
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R7
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R12 0 2
       38 GETTABLEKS                       R13 R1 K3 ["getSettingsObservable"]
       40 MOVE                             R14 R8
       41 SETLIST                          R12 R13 2 [1]
       43 CALL                             R10 2 0
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R12 0 1
       54 GETTABLEKS                       R13 R1 K5 ["setProviderSetting"]
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       62 NEWCLOSURE                       R12 P2
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          UPVAL U3
       72 NEWTABLE                         R13 0 3
       74 MOVE                             R14 R6
       75 MOVE                             R15 R4
       76 GETTABLEKS                       R16 R1 K5 ["setProviderSetting"]
       78 SETLIST                          R13 R14 3 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       84 NEWCLOSURE                       R13 P3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 NEWTABLE                         R14 0 5
       92 MOVE                             R15 R2
       93 MOVE                             R16 R4
       94 MOVE                             R17 R6
       95 MOVE                             R18 R10
       96 MOVE                             R19 R11
       97 SETLIST                          R14 R15 5 [1]
       99 CALL                             R12 2 1
      100 GETUPVAL                         R13 5
      101 CALL                             R13 0 1
      102 JUMPIFNOT                        R13 ; [+15]
      103 GETUPVAL                         R13 6
      104 CALL                             R13 0 1
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R14 R15 K2 ["useEffect"]
      108 NEWCLOSURE                       R15 P4
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R16 0 2
      113 MOVE                             R17 R4
      114 MOVE                             R18 R13
      115 SETLIST                          R16 R17 2 [1]
      117 CALL                             R14 2 0
      118 GETUPVAL                         R13 7
      119 GETUPVAL                         R15 8
      120 GETTABLEKS                       R14 R15 K7 ["Provider"]
      122 DUPTABLE                         R15 K9 [{"value"}]
      123 SETTABLEKS                       R12 R15 K8 ["value"]
      125 GETTABLEKS                       R16 R0 K10 ["children"]
      127 CALL                             R13 3 -1
      128 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["APIKeyManagement"]
       13 GETTABLEKS                       R2 R3 K8 ["ProviderModels"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R6 K13 ["FFlagMCPAssistantManagementMenu"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R6 R7 K15 ["useSettingsContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R8 K16 ["useWithClient"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K17 ["createElement"]
       51 GETTABLEKS                       R8 R3 K18 ["DEFAULT_STUDIO_MODEL"]
       53 DUPTABLE                         R9 K24 [{"selectedModel", "selectedProvider", "enabledProviders", "setSelectedModel", "toggleProvider"}]
       54 SETTABLEKS                       R8 R9 K19 ["selectedModel"]
       56 LOADK                            R10 K25 ["Studio"]
       57 SETTABLEKS                       R10 R9 K20 ["selectedProvider"]
       59 NEWTABLE                         R10 0 0
       61 SETTABLEKS                       R10 R9 K21 ["enabledProviders"]
       63 DUPCLOSURE                       R10 K26 [PROTO_0]
       64 SETTABLEKS                       R10 R9 K22 ["setSelectedModel"]
       66 DUPCLOSURE                       R10 K27 [PROTO_1]
       67 SETTABLEKS                       R10 R9 K23 ["toggleProvider"]
       69 GETTABLEKS                       R10 R2 K28 ["createContext"]
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K29 [PROTO_10]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 DUPTABLE                         R12 K32 [{"Context", "Provider"}]
       84 SETTABLEKS                       R10 R12 K30 ["Context"]
       86 SETTABLEKS                       R11 R12 K31 ["Provider"]
       88 RETURN                           R12 1
