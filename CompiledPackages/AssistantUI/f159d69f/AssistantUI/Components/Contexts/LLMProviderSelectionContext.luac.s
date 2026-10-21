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
        2 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantEval"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 GETUPVAL                         R1 1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K0 ["selectedModel"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantEval"]
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R2 3
       17 JUMPIFNOT                        R2 ; [+2]
       18 GETUPVAL                         R1 3
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K1 ["selectedProvider"]
       23 GETUPVAL                         R1 5
       24 SETTABLEKS                       R1 R0 K2 ["enabledProviders"]
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K3 ["setSelectedModel"]
       29 GETUPVAL                         R1 7
       30 SETTABLEKS                       R1 R0 K4 ["toggleProvider"]
       32 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantEval"]
        7 JUMPIFNOT                        R4 ; [+27]
        8 GETUPVAL                         R4 2
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+24]
       11 GETTABLEKS                       R5 R4 K1 ["isEvaluationRunning"]
       13 JUMPIFNOT                        R5 ; [+21]
       14 GETTABLEKS                       R5 R4 K2 ["evalConfig"]
       16 JUMPIFNOT                        R5 ; [+18]
       17 GETTABLEKS                       R5 R4 K2 ["evalConfig"]
       19 GETTABLEKS                       R5 R5 K3 ["modelName"]
       21 JUMPIFNOT                        R5 ; [+13]
       22 GETTABLEKS                       R5 R4 K2 ["evalConfig"]
       24 GETTABLEKS                       R5 R5 K4 ["modelProvider"]
       26 JUMPIFNOT                        R5 ; [+8]
       27 GETTABLEKS                       R5 R4 K2 ["evalConfig"]
       29 GETTABLEKS                       R2 R5 K3 ["modelName"]
       31 GETTABLEKS                       R5 R4 K2 ["evalConfig"]
       33 GETTABLEKS                       R3 R5 K4 ["modelProvider"]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K5 ["useState"]
       38 GETUPVAL                         R5 4
       39 CALL                             R4 1 2
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K5 ["useState"]
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K6 ["LLMProviderTypes"]
       46 GETTABLEKS                       R7 R7 K7 ["Studio"]
       48 CALL                             R6 1 2
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K5 ["useState"]
       52 NEWTABLE                         R9 0 0
       54 CALL                             R8 1 2
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K5 ["useState"]
       58 LOADB                            R11 0
       59 CALL                             R10 1 2
       60 GETUPVAL                         R12 3
       61 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       63 NEWCLOSURE                       R13 P0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R11
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R14 0 2
       75 GETTABLEKS                       R15 R1 K9 ["getSettingsObservable"]
       77 MOVE                             R16 R10
       78 SETLIST                          R14 R15 2 [1]
       80 CALL                             R12 2 0
       81 GETUPVAL                         R12 3
       82 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       84 NEWCLOSURE                       R13 P1
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U5
       89 NEWTABLE                         R14 0 1
       91 GETTABLEKS                       R15 R1 K11 ["setProviderSetting"]
       93 SETLIST                          R14 R15 1 [1]
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       99 NEWCLOSURE                       R14 P2
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R7
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R15 0 3
      111 MOVE                             R16 R8
      112 MOVE                             R17 R6
      113 GETTABLEKS                       R18 R1 K11 ["setProviderSetting"]
      115 SETLIST                          R15 R16 3 [1]
      117 CALL                             R13 2 1
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R14 R14 K12 ["FFlagMCPAssistantManagementMenu"]
      121 JUMPIFNOT                        R14 ; [+16]
      122 GETUPVAL                         R14 7
      123 CALL                             R14 0 1
      124 GETUPVAL                         R15 3
      125 GETTABLEKS                       R15 R15 K8 ["useEffect"]
      127 NEWCLOSURE                       R16 P3
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R6
      130 CAPTURE                          UPVAL U5
      131 NEWTABLE                         R17 0 2
      133 MOVE                             R18 R6
      134 MOVE                             R19 R14
      135 SETLIST                          R17 R18 2 [1]
      137 CALL                             R15 2 0
      138 GETUPVAL                         R14 3
      139 GETTABLEKS                       R14 R14 K13 ["useMemo"]
      141 NEWCLOSURE                       R15 P4
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          REF R2
      144 CAPTURE                          VAL R4
      145 CAPTURE                          REF R3
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R13
      150 NEWTABLE                         R16 0 7
      152 MOVE                             R17 R4
      153 MOVE                             R18 R6
      154 MOVE                             R19 R8
      155 MOVE                             R20 R12
      156 MOVE                             R21 R13
      157 MOVE                             R22 R2
      158 MOVE                             R23 R3
      159 SETLIST                          R16 R17 7 [1]
      161 CALL                             R14 2 1
      162 GETUPVAL                         R15 8
      163 GETUPVAL                         R16 9
      164 GETTABLEKS                       R16 R16 K14 ["Provider"]
      166 DUPTABLE                         R17 K16 [{"value"}]
      167 SETTABLEKS                       R14 R17 K15 ["value"]
      169 GETTABLEKS                       R18 R0 K17 ["children"]
      171 CALL                             R15 3 -1
      172 CLOSEUPVALS                      R2
      173 RETURN                           R15 -1

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
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Util"]
       37 GETTABLEKS                       R6 R6 K14 ["AssistantEval"]
       39 GETTABLEKS                       R6 R6 K15 ["useEval"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K17 ["useSettingsContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K18 ["useWithClient"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R2 K19 ["createElement"]
       58 GETTABLEKS                       R9 R3 K20 ["DEFAULT_STUDIO_MODEL"]
       60 DUPTABLE                         R10 K26 [{"selectedModel", "selectedProvider", "enabledProviders", "setSelectedModel", "toggleProvider"}]
       61 SETTABLEKS                       R9 R10 K21 ["selectedModel"]
       63 GETTABLEKS                       R11 R3 K27 ["LLMProviderTypes"]
       65 GETTABLEKS                       R11 R11 K28 ["Studio"]
       67 SETTABLEKS                       R11 R10 K22 ["selectedProvider"]
       69 NEWTABLE                         R11 0 0
       71 SETTABLEKS                       R11 R10 K23 ["enabledProviders"]
       73 DUPCLOSURE                       R11 K29 [PROTO_0]
       74 SETTABLEKS                       R11 R10 K24 ["setSelectedModel"]
       76 DUPCLOSURE                       R11 K30 [PROTO_1]
       77 SETTABLEKS                       R11 R10 K25 ["toggleProvider"]
       79 GETTABLEKS                       R11 R2 K31 ["createContext"]
       81 MOVE                             R12 R10
       82 CALL                             R11 1 1
       83 DUPCLOSURE                       R12 K32 [PROTO_10]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R11
       94 DUPTABLE                         R13 K35 [{"Context", "Provider"}]
       95 SETTABLEKS                       R11 R13 K33 ["Context"]
       97 SETTABLEKS                       R12 R13 K34 ["Provider"]
       99 RETURN                           R13 1
