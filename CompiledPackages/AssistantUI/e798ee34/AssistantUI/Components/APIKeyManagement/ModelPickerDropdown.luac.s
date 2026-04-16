PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Model", "Default"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["SettingsDialog"]
        3 LOADK                            R4 K0 ["Model"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Model"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["SettingsDialog"]
       11 LOADK                            R4 K1 ["Default"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Default"]
       17 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 LOADK                            R2 K3 ["studio"]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Default"]
        9 SETTABLEKS                       R2 R1 K1 ["text"]
       11 SETLIST                          R0 R1 1 [1]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K5 ["LLMProviderTypes"]
       20 GETTABLEKS                       R6 R7 K6 ["Claude"]
       22 JUMPIFNOTEQ                      R5 R6 ; [+19]
       24 GETUPVAL                         R6 3
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 DUPTABLE                         R13 K2 [{"id", "text"}]
       29 SETTABLEKS                       R10 R13 K0 ["id"]
       31 SETTABLEKS                       R10 R13 K1 ["text"]
       33 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       35 MOVE                             R12 R0
       36 GETIMPORT                        R11 K9 [table.insert]
       38 CALL                             R11 2 0
       39 FORGLOOP                         R6 2 ; [-12]
       41 JUMP                             ; [+49]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K5 ["LLMProviderTypes"]
       45 GETTABLEKS                       R6 R7 K10 ["Gemini"]
       47 JUMPIFNOTEQ                      R5 R6 ; [+19]
       49 GETUPVAL                         R6 4
       50 LOADNIL                          R7
       51 LOADNIL                          R8
       52 FORGPREP                         R6
       53 DUPTABLE                         R13 K2 [{"id", "text"}]
       54 SETTABLEKS                       R10 R13 K0 ["id"]
       56 SETTABLEKS                       R10 R13 K1 ["text"]
       58 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       60 MOVE                             R12 R0
       61 GETIMPORT                        R11 K9 [table.insert]
       63 CALL                             R11 2 0
       64 FORGLOOP                         R6 2 ; [-12]
       66 JUMP                             ; [+24]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R7 R8 K5 ["LLMProviderTypes"]
       70 GETTABLEKS                       R6 R7 K11 ["OpenAI"]
       72 JUMPIFNOTEQ                      R5 R6 ; [+18]
       74 GETUPVAL                         R6 5
       75 LOADNIL                          R7
       76 LOADNIL                          R8
       77 FORGPREP                         R6
       78 DUPTABLE                         R13 K2 [{"id", "text"}]
       79 SETTABLEKS                       R10 R13 K0 ["id"]
       81 SETTABLEKS                       R10 R13 K1 ["text"]
       83 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       85 MOVE                             R12 R0
       86 GETIMPORT                        R11 K9 [table.insert]
       88 CALL                             R11 2 0
       89 FORGLOOP                         R6 2 ; [-12]
       91 FORGLOOP                         R1 2 ; [-75]
       93 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected id to be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 JUMPIFNOTEQKS                    R0 K6 ["studio"] ; [+3]
       17 GETUPVAL                         R2 0
       18 JUMP                             ; [+1]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K7 ["getProviderForModel"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K8 ["setSelectedModel"]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["enabledProviders"]
        9 GETTABLEKS                       R3 R1 K3 ["selectedModel"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       14 DUPCLOSURE                       R5 K5 [PROTO_0]
       15 CAPTURE                          UPVAL U2
       16 NEWTABLE                         R6 0 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K6 ["locale"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NEWTABLE                         R7 0 2
       36 MOVE                             R8 R2
       37 GETTABLEKS                       R9 R4 K7 ["Default"]
       39 SETLIST                          R7 R8 2 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          VAL R1
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R1 K9 ["setSelectedModel"]
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R8 7
       57 JUMPIFNOTEQ                      R3 R8 ; [+4]
       59 GETTABLEKS                       R7 R4 K7 ["Default"]
       61 JUMP                             ; [+1]
       62 MOVE                             R7 R3
       63 GETUPVAL                         R8 9
       64 GETUPVAL                         R9 10
       65 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder", "testId"}]
       66 LOADK                            R11 K14 ["size-0-0 auto-xy items-stretch"]
       67 SETTABLEKS                       R11 R10 K10 ["tag"]
       69 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       71 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       73 GETUPVAL                         R13 11
       74 GETTABLEKS                       R12 R13 K15 ["ModelPicker"]
       76 GETTABLEKS                       R11 R12 K16 ["Container"]
       78 SETTABLEKS                       R11 R10 K12 ["testId"]
       80 DUPTABLE                         R11 K18 [{"ModelDropdown"}]
       81 GETUPVAL                         R12 9
       82 GETUPVAL                         R14 12
       83 GETTABLEKS                       R13 R14 K19 ["Root"]
       85 DUPTABLE                         R14 K26 [{"label", "placeholder", "onItemChanged", "size", "width", "items", "testId"}]
       86 GETTABLEKS                       R15 R4 K27 ["Model"]
       88 SETTABLEKS                       R15 R14 K20 ["label"]
       90 SETTABLEKS                       R7 R14 K21 ["placeholder"]
       92 SETTABLEKS                       R6 R14 K22 ["onItemChanged"]
       94 GETUPVAL                         R18 13
       95 GETTABLEKS                       R17 R18 K28 ["Enums"]
       97 GETTABLEKS                       R16 R17 K29 ["InputSize"]
       99 GETTABLEKS                       R15 R16 K30 ["XSmall"]
      101 SETTABLEKS                       R15 R14 K23 ["size"]
      103 GETIMPORT                        R15 K33 [UDim.new]
      105 LOADN                            R16 0
      106 LOADN                            R17 44
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K24 ["width"]
      110 SETTABLEKS                       R5 R14 K25 ["items"]
      112 GETUPVAL                         R17 11
      113 GETTABLEKS                       R16 R17 K15 ["ModelPicker"]
      115 GETTABLEKS                       R15 R16 K34 ["Dropdown"]
      117 SETTABLEKS                       R15 R14 K12 ["testId"]
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K17 ["ModelDropdown"]
      122 CALL                             R8 3 -1
      123 RETURN                           R8 -1

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
       29 GETTABLEKS                       R4 R5 K11 ["ProviderModels"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Util"]
       43 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K15 ["Resources"]
       50 GETTABLEKS                       R8 R9 K16 ["Localization"]
       52 GETTABLEKS                       R7 R8 K17 ["Translator"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K18 ["Types"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R1 K19 ["Dropdown"]
       62 GETTABLEKS                       R9 R1 K20 ["View"]
       64 GETTABLEKS                       R10 R4 K21 ["createElement"]
       66 GETTABLEKS                       R11 R7 K22 ["DEFAULT_STUDIO_MODEL"]
       68 GETTABLEKS                       R12 R3 K23 ["claudeModels"]
       70 GETTABLEKS                       R13 R3 K24 ["geminiModels"]
       72 GETTABLEKS                       R14 R3 K25 ["openaiModels"]
       74 DUPCLOSURE                       R15 K26 [PROTO_3]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R1
       89 RETURN                           R15 1
