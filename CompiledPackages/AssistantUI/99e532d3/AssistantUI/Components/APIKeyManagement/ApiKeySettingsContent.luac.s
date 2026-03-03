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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       12 DUPCLOSURE                       R3 K3 [PROTO_0]
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R4 0 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K4 ["locale"]
       19 SETLIST                          R4 R5 1 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K5 ["useState"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U4
       28 CALL                             R3 1 2
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K5 ["useState"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CALL                             R5 1 2
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K5 ["useState"]
       39 NEWCLOSURE                       R8 P3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U4
       42 CALL                             R7 1 2
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R9 R10 K6 ["useEffect"]
       46 NEWCLOSURE                       R10 P4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 1
       54 GETTABLEKS                       R12 R1 K7 ["getSettingsObservable"]
       56 SETLIST                          R11 R12 1 [1]
       58 CALL                             R9 2 0
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       62 NEWCLOSURE                       R10 P5
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U5
       65 NEWTABLE                         R11 0 2
       67 GETTABLEKS                       R12 R0 K9 ["toggleProvider"]
       69 GETTABLEKS                       R13 R0 K10 ["setSelectedModel"]
       71 SETLIST                          R11 R12 2 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R10 R11 K8 ["useCallback"]
       77 NEWCLOSURE                       R11 P6
       78 CAPTURE                          VAL R1
       79 NEWTABLE                         R12 0 1
       81 GETTABLEKS                       R13 R1 K11 ["setKeySetting"]
       83 SETLIST                          R12 R13 1 [1]
       85 CALL                             R10 2 1
       86 GETUPVAL                         R11 6
       87 CALL                             R11 0 1
       88 NEWCLOSURE                       R12 P7
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 NEWCLOSURE                       R13 P8
       94 CAPTURE                          VAL R0
       95 NEWCLOSURE                       R14 P9
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 NEWCLOSURE                       R15 P10
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R11
      107 GETTABLEKS                       R17 R0 K12 ["selectedModel"]
      109 GETUPVAL                         R19 4
      110 GETTABLEKS                       R18 R19 K13 ["DEFAULT_STUDIO_MODEL"]
      112 JUMPIFEQ                         R17 R18 ; [+2]
      114 LOADB                            R16 0 +1
      115 LOADB                            R16 1
      116 GETUPVAL                         R17 7
      117 GETUPVAL                         R18 8
      118 DUPTABLE                         R19 K15 [{"tag"}]
      119 LOADK                            R20 K16 ["col auto-xy gap-medium padding-x-large"]
      120 SETTABLEKS                       R20 R19 K14 ["tag"]
      122 DUPTABLE                         R20 K26 [{"ModelPicker", "DefaultDescription", "FirstSpacer", "APIKeysTitle", "LegalSummary", "SecondSpacer", "Claude", "OpenAI", "Gemini"}]
      123 GETUPVAL                         R21 7
      124 GETUPVAL                         R22 9
      125 DUPTABLE                         R23 K28 [{"LayoutOrder"}]
      126 MOVE                             R24 R11
      127 CALL                             R24 0 1
      128 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K17 ["ModelPicker"]
      133 MOVE                             R21 R16
      134 JUMPIFNOT                        R21 ; [+15]
      135 GETUPVAL                         R21 7
      136 GETUPVAL                         R22 10
      137 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      138 LOADK                            R24 K31 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      139 SETTABLEKS                       R24 R23 K14 ["tag"]
      141 GETTABLEKS                       R24 R2 K18 ["DefaultDescription"]
      143 SETTABLEKS                       R24 R23 K29 ["Text"]
      145 MOVE                             R24 R11
      146 CALL                             R24 0 1
      147 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      149 CALL                             R21 2 1
      150 SETTABLEKS                       R21 R20 K18 ["DefaultDescription"]
      152 GETUPVAL                         R21 7
      153 GETUPVAL                         R22 8
      154 DUPTABLE                         R23 K32 [{"tag", "LayoutOrder"}]
      155 LOADK                            R24 K33 ["auto-xy padding-y-small"]
      156 SETTABLEKS                       R24 R23 K14 ["tag"]
      158 MOVE                             R24 R11
      159 CALL                             R24 0 1
      160 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      162 CALL                             R21 2 1
      163 SETTABLEKS                       R21 R20 K19 ["FirstSpacer"]
      165 GETUPVAL                         R21 7
      166 GETUPVAL                         R22 10
      167 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      168 LOADK                            R24 K34 ["auto-xy text-title-small text-wrap text-align-x-left"]
      169 SETTABLEKS                       R24 R23 K14 ["tag"]
      171 GETTABLEKS                       R24 R2 K35 ["APIKeysTab"]
      173 SETTABLEKS                       R24 R23 K29 ["Text"]
      175 MOVE                             R24 R11
      176 CALL                             R24 0 1
      177 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      179 CALL                             R21 2 1
      180 SETTABLEKS                       R21 R20 K20 ["APIKeysTitle"]
      182 GETUPVAL                         R21 7
      183 GETUPVAL                         R22 10
      184 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      185 LOADK                            R24 K31 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      186 SETTABLEKS                       R24 R23 K14 ["tag"]
      188 GETTABLEKS                       R24 R2 K36 ["APIKeyLegalSummary"]
      190 SETTABLEKS                       R24 R23 K29 ["Text"]
      192 MOVE                             R24 R11
      193 CALL                             R24 0 1
      194 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K21 ["LegalSummary"]
      199 GETUPVAL                         R21 7
      200 GETUPVAL                         R22 8
      201 DUPTABLE                         R23 K32 [{"tag", "LayoutOrder"}]
      202 LOADK                            R24 K33 ["auto-xy padding-y-small"]
      203 SETTABLEKS                       R24 R23 K14 ["tag"]
      205 MOVE                             R24 R11
      206 CALL                             R24 0 1
      207 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K22 ["SecondSpacer"]
      212 GETUPVAL                         R21 7
      213 GETUPVAL                         R22 11
      214 MOVE                             R23 R14
      215 MOVE                             R24 R11
      216 CALL                             R24 0 1
      217 LOADK                            R25 K23 ["Claude"]
      218 GETUPVAL                         R27 4
      219 GETTABLEKS                       R26 R27 K37 ["CLAUDE_API_KEY"]
      221 GETTABLEKS                       R27 R2 K38 ["ClaudeAPIKey"]
      223 CALL                             R23 4 1
      224 CALL                             R21 2 1
      225 SETTABLEKS                       R21 R20 K23 ["Claude"]
      227 GETUPVAL                         R21 7
      228 GETUPVAL                         R22 11
      229 MOVE                             R23 R14
      230 MOVE                             R24 R11
      231 CALL                             R24 0 1
      232 LOADK                            R25 K24 ["OpenAI"]
      233 GETUPVAL                         R27 4
      234 GETTABLEKS                       R26 R27 K39 ["OPENAI_API_KEY"]
      236 GETTABLEKS                       R27 R2 K40 ["OpenAIAPIKey"]
      238 CALL                             R23 4 1
      239 CALL                             R21 2 1
      240 SETTABLEKS                       R21 R20 K24 ["OpenAI"]
      242 GETUPVAL                         R21 7
      243 GETUPVAL                         R22 11
      244 MOVE                             R23 R14
      245 MOVE                             R24 R11
      246 CALL                             R24 0 1
      247 LOADK                            R25 K25 ["Gemini"]
      248 GETUPVAL                         R27 4
      249 GETTABLEKS                       R26 R27 K41 ["GEMINI_API_KEY"]
      251 GETTABLEKS                       R27 R2 K42 ["GoogleAPIKey"]
      253 CALL                             R23 4 1
      254 CALL                             R21 2 1
      255 SETTABLEKS                       R21 R20 K25 ["Gemini"]
      257 CALL                             R17 3 -1
      258 RETURN                           R17 -1

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
       85 GETTABLEKS                       R11 R5 K22 ["createElement"]
       87 GETTABLEKS                       R12 R1 K23 ["Text"]
       89 GETTABLEKS                       R13 R1 K24 ["View"]
       91 GETTABLEKS                       R14 R6 K25 ["createNextOrder"]
       93 DUPCLOSURE                       R15 K26 [PROTO_15]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R7
      106 RETURN                           R15 1
