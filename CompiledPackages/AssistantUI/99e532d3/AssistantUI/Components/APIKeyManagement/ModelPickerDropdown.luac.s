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
       17 JUMPIFNOTEQKS                    R5 K5 ["Claude"] ; [+19]
       19 GETUPVAL                         R6 2
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 DUPTABLE                         R13 K2 [{"id", "text"}]
       24 SETTABLEKS                       R10 R13 K0 ["id"]
       26 SETTABLEKS                       R10 R13 K1 ["text"]
       28 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       30 MOVE                             R12 R0
       31 GETIMPORT                        R11 K8 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-12]
       36 JUMP                             ; [+39]
       37 JUMPIFNOTEQKS                    R5 K9 ["Gemini"] ; [+19]
       39 GETUPVAL                         R6 3
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 DUPTABLE                         R13 K2 [{"id", "text"}]
       44 SETTABLEKS                       R10 R13 K0 ["id"]
       46 SETTABLEKS                       R10 R13 K1 ["text"]
       48 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       50 MOVE                             R12 R0
       51 GETIMPORT                        R11 K8 [table.insert]
       53 CALL                             R11 2 0
       54 FORGLOOP                         R6 2 ; [-12]
       56 JUMP                             ; [+19]
       57 JUMPIFNOTEQKS                    R5 K10 ["OpenAI"] ; [+18]
       59 GETUPVAL                         R6 4
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 DUPTABLE                         R13 K2 [{"id", "text"}]
       64 SETTABLEKS                       R10 R13 K0 ["id"]
       66 SETTABLEKS                       R10 R13 K1 ["text"]
       68 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       70 MOVE                             R12 R0
       71 GETIMPORT                        R11 K8 [table.insert]
       73 CALL                             R11 2 0
       74 FORGLOOP                         R6 2 ; [-12]
       76 FORGLOOP                         R1 2 ; [-60]
       78 RETURN                           R0 1

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
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R2
       36 GETTABLEKS                       R9 R4 K7 ["Default"]
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R8 0 1
       50 GETTABLEKS                       R9 R1 K9 ["setSelectedModel"]
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R8 6
       56 JUMPIFNOTEQ                      R3 R8 ; [+4]
       58 GETTABLEKS                       R7 R4 K7 ["Default"]
       60 JUMP                             ; [+1]
       61 MOVE                             R7 R3
       62 GETUPVAL                         R8 8
       63 GETUPVAL                         R9 9
       64 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder", "testId"}]
       65 LOADK                            R11 K14 ["size-0-0 auto-xy items-stretch"]
       66 SETTABLEKS                       R11 R10 K10 ["tag"]
       68 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       70 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       72 GETUPVAL                         R13 10
       73 GETTABLEKS                       R12 R13 K15 ["ModelPicker"]
       75 GETTABLEKS                       R11 R12 K16 ["Container"]
       77 SETTABLEKS                       R11 R10 K12 ["testId"]
       79 DUPTABLE                         R11 K18 [{"ModelDropdown"}]
       80 GETUPVAL                         R12 8
       81 GETUPVAL                         R14 11
       82 GETTABLEKS                       R13 R14 K19 ["Root"]
       84 DUPTABLE                         R14 K26 [{"label", "placeholder", "onItemChanged", "size", "width", "items", "testId"}]
       85 GETTABLEKS                       R15 R4 K27 ["Model"]
       87 SETTABLEKS                       R15 R14 K20 ["label"]
       89 SETTABLEKS                       R7 R14 K21 ["placeholder"]
       91 SETTABLEKS                       R6 R14 K22 ["onItemChanged"]
       93 GETUPVAL                         R18 12
       94 GETTABLEKS                       R17 R18 K28 ["Enums"]
       96 GETTABLEKS                       R16 R17 K29 ["InputSize"]
       98 GETTABLEKS                       R15 R16 K30 ["XSmall"]
      100 SETTABLEKS                       R15 R14 K23 ["size"]
      102 GETIMPORT                        R15 K33 [UDim.new]
      104 LOADN                            R16 0
      105 LOADN                            R17 44
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K24 ["width"]
      109 SETTABLEKS                       R5 R14 K25 ["items"]
      111 GETUPVAL                         R17 10
      112 GETTABLEKS                       R16 R17 K15 ["ModelPicker"]
      114 GETTABLEKS                       R15 R16 K34 ["Dropdown"]
      116 SETTABLEKS                       R15 R14 K12 ["testId"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K17 ["ModelDropdown"]
      121 CALL                             R8 3 -1
      122 RETURN                           R8 -1

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
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R1
       88 RETURN                           R15 1
