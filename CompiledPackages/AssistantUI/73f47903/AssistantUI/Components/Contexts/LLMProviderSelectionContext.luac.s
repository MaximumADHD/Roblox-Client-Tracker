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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["ANTHROPIC_PROVIDER_ENABLED"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K1 ["OPENAI_PROVIDER_ENABLED"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["GEMINI_PROVIDER_ENABLED"]
       20 SETLIST                          R2 R3 3 [1]
       22 MOVE                             R3 R2
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 GETTABLE                         R8 R0 R7
       27 JUMPIFNOT                        R8 ; [+16]
       28 GETTABLE                         R8 R0 R7
       29 JUMPIFNOTEQKS                    R8 K3 ["true"] ; [+14]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K4 ["getProviderForCheckboxSettingsKey"]
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
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K8 ["CURRENT_MODEL"]
       52 GETTABLE                         R3 R0 R4
       53 JUMPIFNOT                        R3 ; [+22]
       54 JUMPIFEQKS                       R3 K9 [""] ; [+21]
       56 GETUPVAL                         R4 5
       57 JUMPIFEQ                         R3 R4 ; [+18]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R4 R4 K10 ["getProviderForModel"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSettingsObservable"]
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
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["setProviderSetting"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K1 ["CURRENT_MODEL"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCheckboxSettingsKeyForProvider"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["setProviderSetting"]
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
       61 JUMPIFNOTEQ                      R4 R0 ; [+19]
       63 GETUPVAL                         R4 5
       64 GETUPVAL                         R5 6
       65 CALL                             R4 1 0
       66 GETUPVAL                         R4 7
       67 GETUPVAL                         R5 8
       68 GETTABLEKS                       R5 R5 K11 ["LLMProviderTypes"]
       70 GETTABLEKS                       R5 R5 K12 ["Studio"]
       72 CALL                             R4 1 0
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K1 ["setProviderSetting"]
       76 GETUPVAL                         R5 8
       77 GETTABLEKS                       R5 R5 K13 ["CURRENT_MODEL"]
       79 GETUPVAL                         R6 6
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["LLMProviderTypes"]
        4 GETTABLEKS                       R3 R3 K1 ["Studio"]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 DUPTABLE                         R4 K3 [{"onlyUseStaticServers"}]
       11 SETTABLEKS                       R1 R4 K2 ["onlyUseStaticServers"]
       13 NAMECALL                         R2 R0 K4 ["applyRequestFilters"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K5 [{"selectedModel", "selectedProvider", "enabledProviders", "setSelectedModel", "toggleProvider"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETUPVAL                         R1 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 2
        9 SETTABLEKS                       R1 R0 K0 ["selectedModel"]
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+2]
       16 GETUPVAL                         R1 3
       17 JUMP                             ; [+1]
       18 GETUPVAL                         R1 4
       19 SETTABLEKS                       R1 R0 K1 ["selectedProvider"]
       21 GETUPVAL                         R1 5
       22 SETTABLEKS                       R1 R0 K2 ["enabledProviders"]
       24 GETUPVAL                         R1 6
       25 SETTABLEKS                       R1 R0 K3 ["setSelectedModel"]
       27 GETUPVAL                         R1 7
       28 SETTABLEKS                       R1 R0 K4 ["toggleProvider"]
       30 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+27]
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+24]
       10 GETTABLEKS                       R5 R4 K0 ["isEvaluationRunning"]
       12 JUMPIFNOT                        R5 ; [+21]
       13 GETTABLEKS                       R5 R4 K1 ["evalConfig"]
       15 JUMPIFNOT                        R5 ; [+18]
       16 GETTABLEKS                       R5 R4 K1 ["evalConfig"]
       18 GETTABLEKS                       R5 R5 K2 ["modelName"]
       20 JUMPIFNOT                        R5 ; [+13]
       21 GETTABLEKS                       R5 R4 K1 ["evalConfig"]
       23 GETTABLEKS                       R5 R5 K3 ["modelProvider"]
       25 JUMPIFNOT                        R5 ; [+8]
       26 GETTABLEKS                       R5 R4 K1 ["evalConfig"]
       28 GETTABLEKS                       R2 R5 K2 ["modelName"]
       30 GETTABLEKS                       R5 R4 K1 ["evalConfig"]
       32 GETTABLEKS                       R3 R5 K3 ["modelProvider"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K4 ["useState"]
       37 GETUPVAL                         R5 4
       38 CALL                             R4 1 2
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K4 ["useState"]
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R7 R7 K5 ["LLMProviderTypes"]
       45 GETTABLEKS                       R7 R7 K6 ["Studio"]
       47 CALL                             R6 1 2
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K4 ["useState"]
       51 NEWTABLE                         R9 0 0
       53 CALL                             R8 1 2
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K4 ["useState"]
       57 LOADB                            R11 0
       58 CALL                             R10 1 2
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       62 NEWCLOSURE                       R13 P0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 NEWTABLE                         R14 0 2
       74 GETTABLEKS                       R15 R1 K8 ["getSettingsObservable"]
       76 MOVE                             R16 R10
       77 SETLIST                          R14 R15 2 [1]
       79 CALL                             R12 2 0
       80 GETUPVAL                         R12 3
       81 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       83 NEWCLOSURE                       R13 P1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R1
       87 CAPTURE                          UPVAL U5
       88 NEWTABLE                         R14 0 1
       90 GETTABLEKS                       R15 R1 K10 ["setProviderSetting"]
       92 SETLIST                          R14 R15 1 [1]
       94 CALL                             R12 2 1
       95 GETUPVAL                         R13 3
       96 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       98 NEWCLOSURE                       R14 P2
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R7
      107 CAPTURE                          UPVAL U5
      108 NEWTABLE                         R15 0 3
      110 MOVE                             R16 R8
      111 MOVE                             R17 R6
      112 GETTABLEKS                       R18 R1 K10 ["setProviderSetting"]
      114 SETLIST                          R15 R16 3 [1]
      116 CALL                             R13 2 1
      117 GETUPVAL                         R14 7
      118 CALL                             R14 0 1
      119 JUMPIFNOT                        R14 ; [+16]
      120 GETUPVAL                         R14 8
      121 CALL                             R14 0 1
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R15 R15 K7 ["useEffect"]
      125 NEWCLOSURE                       R16 P3
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R6
      128 CAPTURE                          UPVAL U5
      129 NEWTABLE                         R17 0 2
      131 MOVE                             R18 R6
      132 MOVE                             R19 R14
      133 SETLIST                          R17 R18 2 [1]
      135 CALL                             R15 2 0
      136 GETUPVAL                         R14 3
      137 GETTABLEKS                       R14 R14 K11 ["useMemo"]
      139 NEWCLOSURE                       R15 P4
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          REF R2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          REF R3
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R13
      148 NEWTABLE                         R16 0 7
      150 MOVE                             R17 R4
      151 MOVE                             R18 R6
      152 MOVE                             R19 R8
      153 MOVE                             R20 R12
      154 MOVE                             R21 R13
      155 MOVE                             R22 R2
      156 MOVE                             R23 R3
      157 SETLIST                          R16 R17 7 [1]
      159 CALL                             R14 2 1
      160 GETUPVAL                         R15 9
      161 GETUPVAL                         R16 10
      162 GETTABLEKS                       R16 R16 K12 ["Provider"]
      164 DUPTABLE                         R17 K14 [{"value"}]
      165 SETTABLEKS                       R14 R17 K13 ["value"]
      167 GETTABLEKS                       R18 R0 K15 ["children"]
      169 CALL                             R15 3 -1
      170 CLOSEUPVALS                      R2
      171 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["APIKeyManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["ProviderModels"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R5 K13 ["FFlagAssistantEval"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K14 ["FFlagMCPAssistantManagementMenu"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["AssistantEval"]
       48 GETTABLEKS                       R7 R7 K17 ["useEval"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K19 ["useSettingsContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K20 ["useWithClient"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K21 ["createElement"]
       67 GETTABLEKS                       R10 R3 K22 ["DEFAULT_STUDIO_MODEL"]
       69 DUPTABLE                         R11 K28 [{"selectedModel", "selectedProvider", "enabledProviders", "setSelectedModel", "toggleProvider"}]
       70 SETTABLEKS                       R10 R11 K23 ["selectedModel"]
       72 GETTABLEKS                       R12 R3 K29 ["LLMProviderTypes"]
       74 GETTABLEKS                       R12 R12 K30 ["Studio"]
       76 SETTABLEKS                       R12 R11 K24 ["selectedProvider"]
       78 NEWTABLE                         R12 0 0
       80 SETTABLEKS                       R12 R11 K25 ["enabledProviders"]
       82 DUPCLOSURE                       R12 K31 [PROTO_0]
       83 SETTABLEKS                       R12 R11 K26 ["setSelectedModel"]
       85 DUPCLOSURE                       R12 K32 [PROTO_1]
       86 SETTABLEKS                       R12 R11 K27 ["toggleProvider"]
       88 GETTABLEKS                       R12 R2 K33 ["createContext"]
       90 MOVE                             R13 R11
       91 CALL                             R12 1 1
       92 DUPCLOSURE                       R13 K34 [PROTO_10]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R12
      104 DUPTABLE                         R14 K37 [{"Context", "Provider"}]
      105 SETTABLEKS                       R12 R14 K35 ["Context"]
      107 SETTABLEKS                       R13 R14 K36 ["Provider"]
      109 RETURN                           R14 1
