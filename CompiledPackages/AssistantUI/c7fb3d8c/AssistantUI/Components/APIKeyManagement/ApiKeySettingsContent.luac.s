PROTO_0:
        0 DUPTABLE                         R0 K6 [{"ClaudeAPIKey", "GoogleAPIKey", "OpenAIAPIKey", "APIKeyLegalSummary", "APIKeysTab", "DefaultDescription"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K7 ["SettingsDialog"]
        3 LOADK                            R4 K0 ["ClaudeAPIKey"]
        4 NAMECALL                         R1 R1 K8 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ClaudeAPIKey"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K7 ["SettingsDialog"]
       11 LOADK                            R4 K1 ["GoogleAPIKey"]
       12 NAMECALL                         R1 R1 K8 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["GoogleAPIKey"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K7 ["SettingsDialog"]
       19 LOADK                            R4 K2 ["OpenAIAPIKey"]
       20 NAMECALL                         R1 R1 K8 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["OpenAIAPIKey"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["SettingsDialog"]
       27 LOADK                            R4 K3 ["APIKeyLegalSummary"]
       28 NAMECALL                         R1 R1 K8 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["APIKeyLegalSummary"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K7 ["SettingsDialog"]
       35 LOADK                            R4 K4 ["APIKeysTab"]
       36 NAMECALL                         R1 R1 K8 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["APIKeysTab"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K7 ["SettingsDialog"]
       43 LOADK                            R4 K5 ["DefaultDescription"]
       44 NAMECALL                         R1 R1 K8 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["DefaultDescription"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["getSetting"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K2 ["CLAUDE_API_KEY"]
        6 CALL                             R1 1 1
        7 ORK                              R0 R1 K0 [""]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["getSetting"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K2 ["GEMINI_API_KEY"]
        6 CALL                             R1 1 1
        7 ORK                              R0 R1 K0 [""]
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["getSetting"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K2 ["OPENAI_API_KEY"]
        6 CALL                             R1 1 1
        7 ORK                              R0 R1 K0 [""]
        8 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K1 ["CLAUDE_API_KEY"]
        4 GETTABLE                         R3 R0 R4
        5 ORK                              R2 R3 K0 [""]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["GEMINI_API_KEY"]
       11 GETTABLE                         R3 R0 R4
       12 ORK                              R2 R3 K0 [""]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K3 ["OPENAI_API_KEY"]
       18 GETTABLE                         R3 R0 R4
       19 ORK                              R2 R3 K0 [""]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSettingsObservable"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R1 R0 K1 ["connect"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toggleProvider"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["getFirstModelForProvider"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["setSelectedModel"]
       16 MOVE                             R4 R2
       17 MOVE                             R5 R0
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setKeySetting"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CLAUDE_API_KEY"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["GEMINI_API_KEY"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 GETUPVAL                         R1 2
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K2 ["OPENAI_API_KEY"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+3]
       19 GETUPVAL                         R1 3
       20 RETURN                           R1 1
       21 LOADK                            R1 K3 [""]
       22 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["enabledProviders"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R4 K7 [{"LayoutOrder", "providerId", "providerCheckboxName", "isEnabled", "apiKeyValue", "onApiKeyChange", "onToggle"}]
        1 SETTABLEKS                       R0 R4 K0 ["LayoutOrder"]
        3 SETTABLEKS                       R1 R4 K1 ["providerId"]
        5 SETTABLEKS                       R3 R4 K2 ["providerCheckboxName"]
        7 GETIMPORT                        R6 K10 [table.find]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K11 ["enabledProviders"]
       12 MOVE                             R8 R1
       13 CALL                             R6 2 1
       14 JUMPIFNOTEQKNIL                  R6 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K3 ["isEnabled"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K12 ["CLAUDE_API_KEY"]
       23 JUMPIFNOTEQ                      R2 R6 ; [+3]
       25 GETUPVAL                         R5 2
       26 JUMP                             ; [+15]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K13 ["GEMINI_API_KEY"]
       30 JUMPIFNOTEQ                      R2 R6 ; [+3]
       32 GETUPVAL                         R5 3
       33 JUMP                             ; [+8]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K14 ["OPENAI_API_KEY"]
       37 JUMPIFNOTEQ                      R2 R6 ; [+3]
       39 GETUPVAL                         R5 4
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K15 [""]
       42 SETTABLEKS                       R5 R4 K4 ["apiKeyValue"]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K5 ["onApiKeyChange"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R5 R4 K6 ["onToggle"]
       54 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{"tag", "LayoutOrder"}]
        3 LOADK                            R3 K3 ["auto-xy padding-y-small"]
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["Context"]
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       17 DUPCLOSURE                       R3 K3 [PROTO_0]
       18 CAPTURE                          UPVAL U4
       19 NEWTABLE                         R4 0 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R5 R6 K4 ["locale"]
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K5 ["useState"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CALL                             R3 1 2
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K5 ["useState"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U5
       40 CALL                             R5 1 2
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K5 ["useState"]
       44 NEWCLOSURE                       R8 P3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U5
       47 CALL                             R7 1 2
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R9 R10 K6 ["useEffect"]
       51 NEWCLOSURE                       R10 P4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 NEWTABLE                         R11 0 1
       59 GETTABLEKS                       R12 R1 K7 ["getSettingsObservable"]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 0
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       67 NEWCLOSURE                       R10 P5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U6
       70 NEWTABLE                         R11 0 2
       72 GETTABLEKS                       R12 R0 K9 ["toggleProvider"]
       74 GETTABLEKS                       R13 R0 K10 ["setSelectedModel"]
       76 SETLIST                          R11 R12 2 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R10 R11 K8 ["useCallback"]
       82 NEWCLOSURE                       R11 P6
       83 CAPTURE                          VAL R1
       84 NEWTABLE                         R12 0 1
       86 GETTABLEKS                       R13 R1 K11 ["setKeySetting"]
       88 SETLIST                          R12 R13 1 [1]
       90 CALL                             R10 2 1
       91 GETUPVAL                         R11 7
       92 CALL                             R11 0 1
       93 NEWCLOSURE                       R12 P7
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R7
       98 NEWCLOSURE                       R13 P8
       99 CAPTURE                          VAL R0
      100 NEWCLOSURE                       R14 P9
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 NEWCLOSURE                       R15 P10
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          VAL R11
      112 GETTABLEKS                       R17 R0 K12 ["selectedModel"]
      114 GETUPVAL                         R19 5
      115 GETTABLEKS                       R18 R19 K13 ["DEFAULT_STUDIO_MODEL"]
      117 JUMPIFEQ                         R17 R18 ; [+2]
      119 LOADB                            R16 0 +1
      120 LOADB                            R16 1
      121 GETUPVAL                         R17 8
      122 GETUPVAL                         R18 9
      123 DUPTABLE                         R19 K15 [{"tag"}]
      124 LOADK                            R20 K16 ["col auto-xy gap-medium padding-x-large"]
      125 SETTABLEKS                       R20 R19 K14 ["tag"]
      127 DUPTABLE                         R20 K26 [{"ModelPicker", "DefaultDescription", "FirstSpacer", "APIKeysTitle", "LegalSummary", "SecondSpacer", "Claude", "OpenAI", "Gemini"}]
      128 GETUPVAL                         R21 8
      129 GETUPVAL                         R22 10
      130 DUPTABLE                         R23 K28 [{"LayoutOrder"}]
      131 MOVE                             R24 R11
      132 CALL                             R24 0 1
      133 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      135 CALL                             R21 2 1
      136 SETTABLEKS                       R21 R20 K17 ["ModelPicker"]
      138 MOVE                             R21 R16
      139 JUMPIFNOT                        R21 ; [+15]
      140 GETUPVAL                         R21 8
      141 GETUPVAL                         R22 11
      142 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      143 LOADK                            R24 K31 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      144 SETTABLEKS                       R24 R23 K14 ["tag"]
      146 GETTABLEKS                       R24 R2 K18 ["DefaultDescription"]
      148 SETTABLEKS                       R24 R23 K29 ["Text"]
      150 MOVE                             R24 R11
      151 CALL                             R24 0 1
      152 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K18 ["DefaultDescription"]
      157 GETUPVAL                         R21 8
      158 GETUPVAL                         R22 9
      159 DUPTABLE                         R23 K32 [{"tag", "LayoutOrder"}]
      160 LOADK                            R24 K33 ["auto-xy padding-y-small"]
      161 SETTABLEKS                       R24 R23 K14 ["tag"]
      163 MOVE                             R24 R11
      164 CALL                             R24 0 1
      165 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      167 CALL                             R21 2 1
      168 SETTABLEKS                       R21 R20 K19 ["FirstSpacer"]
      170 GETUPVAL                         R21 8
      171 GETUPVAL                         R22 11
      172 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      173 LOADK                            R24 K34 ["auto-xy text-title-small text-wrap text-align-x-left"]
      174 SETTABLEKS                       R24 R23 K14 ["tag"]
      176 GETTABLEKS                       R24 R2 K35 ["APIKeysTab"]
      178 SETTABLEKS                       R24 R23 K29 ["Text"]
      180 MOVE                             R24 R11
      181 CALL                             R24 0 1
      182 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      184 CALL                             R21 2 1
      185 SETTABLEKS                       R21 R20 K20 ["APIKeysTitle"]
      187 GETUPVAL                         R21 8
      188 GETUPVAL                         R22 11
      189 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      190 LOADK                            R24 K31 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      191 SETTABLEKS                       R24 R23 K14 ["tag"]
      193 GETTABLEKS                       R24 R2 K36 ["APIKeyLegalSummary"]
      195 SETTABLEKS                       R24 R23 K29 ["Text"]
      197 MOVE                             R24 R11
      198 CALL                             R24 0 1
      199 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      201 CALL                             R21 2 1
      202 SETTABLEKS                       R21 R20 K21 ["LegalSummary"]
      204 GETUPVAL                         R21 8
      205 GETUPVAL                         R22 9
      206 DUPTABLE                         R23 K32 [{"tag", "LayoutOrder"}]
      207 LOADK                            R24 K33 ["auto-xy padding-y-small"]
      208 SETTABLEKS                       R24 R23 K14 ["tag"]
      210 MOVE                             R24 R11
      211 CALL                             R24 0 1
      212 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      214 CALL                             R21 2 1
      215 SETTABLEKS                       R21 R20 K22 ["SecondSpacer"]
      217 GETUPVAL                         R21 8
      218 GETUPVAL                         R22 12
      219 MOVE                             R23 R14
      220 MOVE                             R24 R11
      221 CALL                             R24 0 1
      222 LOADK                            R25 K23 ["Claude"]
      223 GETUPVAL                         R27 5
      224 GETTABLEKS                       R26 R27 K37 ["CLAUDE_API_KEY"]
      226 GETTABLEKS                       R27 R2 K38 ["ClaudeAPIKey"]
      228 CALL                             R23 4 1
      229 CALL                             R21 2 1
      230 SETTABLEKS                       R21 R20 K23 ["Claude"]
      232 GETUPVAL                         R21 8
      233 GETUPVAL                         R22 12
      234 MOVE                             R23 R14
      235 MOVE                             R24 R11
      236 CALL                             R24 0 1
      237 LOADK                            R25 K24 ["OpenAI"]
      238 GETUPVAL                         R27 5
      239 GETTABLEKS                       R26 R27 K39 ["OPENAI_API_KEY"]
      241 GETTABLEKS                       R27 R2 K40 ["OpenAIAPIKey"]
      243 CALL                             R23 4 1
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K24 ["OpenAI"]
      247 GETUPVAL                         R21 8
      248 GETUPVAL                         R22 12
      249 MOVE                             R23 R14
      250 MOVE                             R24 R11
      251 CALL                             R24 0 1
      252 LOADK                            R25 K25 ["Gemini"]
      253 GETUPVAL                         R27 5
      254 GETTABLEKS                       R26 R27 K41 ["GEMINI_API_KEY"]
      256 GETTABLEKS                       R27 R2 K42 ["GoogleAPIKey"]
      258 CALL                             R23 4 1
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K25 ["Gemini"]
      262 CALL                             R17 3 -1
      263 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["LLMProviderSelectionContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K11 ["ModelPickerDropdown"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R6 R7 K6 ["Parent"]
       38 GETTABLEKS                       R5 R6 K12 ["ProviderModels"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K13 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R10 K1 [script]
       59 GETTABLEKS                       R9 R10 K6 ["Parent"]
       61 GETTABLEKS                       R8 R9 K15 ["SingleProviderApiKeySettingsContent"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K16 ["Resources"]
       68 GETTABLEKS                       R10 R11 K17 ["Localization"]
       70 GETTABLEKS                       R9 R10 K18 ["Translator"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K19 ["Types"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       82 GETTABLEKS                       R11 R12 K21 ["useSettingsContext"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R13 R0 K22 ["Flags"]
       89 GETTABLEKS                       R12 R13 K23 ["FFlagMCPAssistantExternalAPIKey"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R5 K24 ["createElement"]
       94 GETTABLEKS                       R13 R1 K25 ["Text"]
       96 GETTABLEKS                       R14 R1 K26 ["View"]
       98 GETTABLEKS                       R15 R6 K27 ["createNextOrder"]
      100 DUPCLOSURE                       R16 K28 [PROTO_15]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R7
      114 RETURN                           R16 1
