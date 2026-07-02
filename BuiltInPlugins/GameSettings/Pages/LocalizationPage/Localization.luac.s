PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 DUPTABLE                         R10 K4 [{"Id", "Label"}]
        8 SETTABLEKS                       R6 R10 K2 ["Id"]
       10 GETTABLE                         R11 R1 R6
       11 SETTABLEKS                       R11 R10 K3 ["Label"]
       13 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       15 MOVE                             R9 R2
       16 GETIMPORT                        R8 K7 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 2 ; [-13]
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getSupportedLanguages"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["SupportedLanguages"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StudioLocaleId"]
        4 NAMECALL                         R1 R1 K1 ["getLanguageCodeToNames"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K2 ["LanguageCodeToNames"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getSourceLanguage"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["SourceLanguage"]
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 GETTABLE                         R2 R3 R1
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R3 0
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K2 ["getAutoTranslationTargetLanguages"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 SETTABLEKS                       R2 R0 K3 ["AutoTranslationTargetLanguages"]
       19 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+12]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R4 R4 K0 ["getAutoLocalizationSettings"]
        9 CALL                             R4 2 3
       10 MOVE                             R1 R4
       11 MOVE                             R3 R5
       12 MOVE                             R2 R6
       13 SETTABLEKS                       R3 R0 K1 ["IsAutomaticEntriesDeletionEnabled"]
       15 JUMP                             ; [+7]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R5 2
       18 NAMECALL                         R3 R3 K2 ["getAutoLocalizationSettings_Deprecated"]
       20 CALL                             R3 2 2
       21 MOVE                             R1 R3
       22 MOVE                             R2 R4
       23 SETTABLEKS                       R1 R0 K3 ["AutoTextCaptureEnabled"]
       25 SETTABLEKS                       R2 R0 K4 ["UseTranslatedContentEnabled"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAutoTranslationFeatureStatus"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["IsAutomaticTranslationAllowed"]
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAutoTranslationSetings"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["AutoTranslationSettings"]
        7 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["localizationPageController"]
        9 NEWTABLE                         R5 0 6
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 NEWCLOSURE                       R7 P1
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R8 P2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 NEWCLOSURE                       R9 P3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 NEWCLOSURE                       R10 P4
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 NEWCLOSURE                       R11 P5
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 SETLIST                          R5 R6 6 [1]
       32 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["SourceLanguage"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setSourceLanguage"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["AutoTextCaptureEnabled"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Settings"]
       10 GETTABLEKS                       R1 R1 K1 ["Changed"]
       12 GETTABLEKS                       R1 R1 K3 ["UseTranslatedContentEnabled"]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["Settings"]
       19 GETTABLEKS                       R2 R2 K1 ["Changed"]
       21 GETTABLEKS                       R2 R2 K4 ["IsAutomaticEntriesDeletionEnabled"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 JUMPIFNOTEQKNIL                  R0 ; [+5]
       27 JUMPIFNOTEQKNIL                  R1 ; [+3]
       29 JUMPIFEQKNIL                     R2 ; [+57]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 JUMPIFEQKNIL                     R0 ; [+3]
       36 MOVE                             R3 R0
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["Settings"]
       41 GETTABLEKS                       R6 R6 K5 ["Current"]
       43 GETTABLEKS                       R3 R6 K2 ["AutoTextCaptureEnabled"]
       45 JUMPIFEQKNIL                     R1 ; [+3]
       47 MOVE                             R4 R1
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["Settings"]
       52 GETTABLEKS                       R6 R6 K5 ["Current"]
       54 GETTABLEKS                       R4 R6 K3 ["UseTranslatedContentEnabled"]
       56 GETUPVAL                         R6 1
       57 JUMPIFNOT                        R6 ; [+11]
       58 JUMPIFEQKNIL                     R2 ; [+3]
       60 MOVE                             R5 R2
       61 JUMP                             ; [+7]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["Settings"]
       65 GETTABLEKS                       R6 R6 K5 ["Current"]
       67 GETTABLEKS                       R5 R6 K4 ["IsAutomaticEntriesDeletionEnabled"]
       69 GETUPVAL                         R6 1
       70 JUMPIFNOT                        R6 ; [+9]
       71 GETUPVAL                         R6 2
       72 GETUPVAL                         R8 3
       73 MOVE                             R9 R3
       74 MOVE                             R10 R5
       75 MOVE                             R11 R4
       76 NAMECALL                         R6 R6 K6 ["setAutoLocalizationSettings"]
       78 CALL                             R6 5 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R6 2
       81 GETUPVAL                         R8 3
       82 MOVE                             R9 R3
       83 MOVE                             R10 R4
       84 NAMECALL                         R6 R6 K7 ["setAutoLocalizationSettings_Deprecated"]
       86 CALL                             R6 4 0
       87 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["AutoTranslationSettings"]
        7 JUMPIFEQKNIL                     R0 ; [+27]
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["Settings"]
       14 GETTABLEKS                       R2 R2 K3 ["Current"]
       16 GETTABLEKS                       R2 R2 K2 ["AutoTranslationSettings"]
       18 GETIMPORT                        R3 K5 [pairs]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 GETTABLE                         R8 R2 R6
       24 JUMPIFEQ                         R8 R7 ; [+2]
       26 SETTABLE                         R7 R1 R6
       27 FORGLOOP                         R3 2 ; [-5]
       29 GETUPVAL                         R3 1
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R1
       32 NAMECALL                         R3 R3 K6 ["setAutoTranslationSetings"]
       34 CALL                             R3 3 0
       35 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["localizationPageController"]
        9 NEWTABLE                         R5 0 3
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R3
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 NEWCLOSURE                       R8 P2
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 SETLIST                          R5 R6 3 [1]
       26 RETURN                           R5 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["AutoTranslationTargetLanguages"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K1 ["IsAutomaticTranslationAllowed"]
        7 JUMPIF                           R3 ; [+3]
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+61]
       11 NEWTABLE                         R3 0 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["new"]
       16 CALL                             R4 0 1
       17 GETIMPORT                        R5 K4 [pairs]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 3
       21 FORGPREP_NEXT                    R5
       22 JUMPIFNOT                        R9 ; [+40]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K5 ["createElement"]
       26 GETUPVAL                         R11 3
       27 DUPTABLE                         R12 K8 [{"LayoutOrder", "Title"}]
       28 NAMECALL                         R13 R4 K9 ["getNextOrder"]
       30 CALL                             R13 1 1
       31 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       33 GETTABLEKS                       R14 R0 K10 ["LanguageCodeToNames"]
       35 GETTABLE                         R13 R14 R8
       36 SETTABLEKS                       R13 R12 K7 ["Title"]
       38 DUPTABLE                         R13 K12 [{"ToggleButton"}]
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K5 ["createElement"]
       42 GETUPVAL                         R15 4
       43 DUPTABLE                         R16 K15 [{"OnClick", "Selected"}]
       44 GETTABLEKS                       R17 R0 K16 ["AutoTranslationSettingChanged"]
       46 GETTABLEKS                       R18 R0 K17 ["AutoTranslationSettings"]
       48 MOVE                             R19 R8
       49 CALL                             R17 2 1
       50 SETTABLEKS                       R17 R16 K13 ["OnClick"]
       52 GETTABLEKS                       R19 R0 K17 ["AutoTranslationSettings"]
       54 GETTABLE                         R18 R19 R8
       55 ORK                              R17 R18 K18 [False]
       56 SETTABLEKS                       R17 R16 K14 ["Selected"]
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K11 ["ToggleButton"]
       61 CALL                             R10 3 1
       62 SETTABLE                         R10 R3 R8
       63 FORGLOOP                         R5 2 ; [-42]
       65 GETIMPORT                        R5 K20 [next]
       67 MOVE                             R6 R3
       68 CALL                             R5 1 1
       69 JUMPIFEQKNIL                     R5 ; [+2]
       71 RETURN                           R3 1
       72 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SourceLanguageChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["https://create.roblox.com/docs/production/localization/manual-translations#automatic-text-capture"]
        2 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R5 R0 K1 ["SupportedLanguages"]
        7 GETTABLEKS                       R6 R0 K2 ["LanguageCodeToNames"]
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R5 R0 K3 ["IsAutomaticTranslationAllowed"]
       12 JUMPIF                           R5 ; [+2]
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 GETUPVAL                         R6 3
       16 MOVE                             R7 R0
       17 MOVE                             R8 R2
       18 CALL                             R6 2 1
       19 JUMPIFNOTEQKNIL                  R6 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 MOVE                             R8 R5
       24 JUMPIFNOT                        R8 ; [+1]
       25 NOT                              R8 R7
       26 GETUPVAL                         R10 2
       27 CALL                             R10 0 1
       28 NOT                              R9 R10
       29 GETTABLEKS                       R10 R0 K4 ["GameId"]
       31 GETUPVAL                         R11 4
       32 LOADK                            R14 K5 ["General"]
       33 LOADK                            R15 K6 ["LocalizationSettingsLinkText"]
       34 NAMECALL                         R12 R1 K7 ["getText"]
       36 CALL                             R12 3 1
       37 LOADN                            R13 14
       38 LOADK                            R14 K8 ["SourceSans"]
       39 CALL                             R11 3 1
       40 DUPTABLE                         R12 K20 [{"SourceLanguage", "Separator1", "AutoTextCapture", "Separator2", "UseTranslatedContent", "Separator3", "AutoTranslationTitle", "AutoTranslationOptions", "AutoTranlsationUnavailable", "Separator4", "HyperLink"}]
       41 GETUPVAL                         R13 5
       42 GETTABLEKS                       R13 R13 K21 ["createElement"]
       44 GETUPVAL                         R14 6
       45 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
       46 NAMECALL                         R16 R3 K25 ["getNextOrder"]
       48 CALL                             R16 1 1
       49 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       51 LOADK                            R18 K5 ["General"]
       52 LOADK                            R19 K26 ["SourceLanguageTitle"]
       53 NAMECALL                         R16 R1 K7 ["getText"]
       55 CALL                             R16 3 1
       56 SETTABLEKS                       R16 R15 K23 ["Title"]
       58 DUPTABLE                         R16 K30 [{"Layout", "Selector", "Description"}]
       59 GETUPVAL                         R17 5
       60 GETTABLEKS                       R17 R17 K21 ["createElement"]
       62 LOADK                            R18 K31 ["UIListLayout"]
       63 DUPTABLE                         R19 K34 [{"SortOrder", "Padding"}]
       64 GETIMPORT                        R20 K36 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
       68 GETIMPORT                        R20 K38 [UDim.new]
       70 LOADN                            R21 0
       71 GETTABLEKS                       R22 R2 K39 ["uiListLayout"]
       73 GETTABLEKS                       R22 R22 K40 ["padding"]
       75 CALL                             R20 2 1
       76 SETTABLEKS                       R20 R19 K33 ["Padding"]
       78 CALL                             R17 2 1
       79 SETTABLEKS                       R17 R16 K27 ["Layout"]
       81 GETUPVAL                         R17 5
       82 GETTABLEKS                       R17 R17 K21 ["createElement"]
       84 GETUPVAL                         R18 7
       85 DUPTABLE                         R19 K46 [{["LayoutOrder"] = 1, ["Items"], ["Enabled"], ["SelectedId"], ["OnItemActivated"]}]
       86 SETTABLEKS                       R4 R19 K42 ["Items"]
       88 GETIMPORT                        R21 K48 [next]
       90 MOVE                             R22 R4
       91 CALL                             R21 1 1
       92 JUMPIFNOTEQKNIL                  R21 ; [+2]
       94 LOADB                            R20 0 +1
       95 LOADB                            R20 1
       96 SETTABLEKS                       R20 R19 K43 ["Enabled"]
       98 GETTABLEKS                       R20 R0 K9 ["SourceLanguage"]
      100 SETTABLEKS                       R20 R19 K44 ["SelectedId"]
      102 NEWCLOSURE                       R20 P0
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R20 R19 K45 ["OnItemActivated"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K28 ["Selector"]
      109 GETUPVAL                         R17 5
      110 GETTABLEKS                       R17 R17 K21 ["createElement"]
      112 LOADK                            R18 K49 ["TextLabel"]
      113 GETUPVAL                         R19 8
      114 GETTABLEKS                       R19 R19 K50 ["Dictionary"]
      116 GETTABLEKS                       R19 R19 K51 ["join"]
      118 GETTABLEKS                       R20 R2 K52 ["fontStyle"]
      120 GETTABLEKS                       R20 R20 K53 ["Subtext"]
      122 DUPTABLE                         R21 K62 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      123 GETIMPORT                        R22 K64 [UDim2.new]
      125 LOADN                            R23 1
      126 LOADN                            R24 0
      127 LOADN                            R25 0
      128 GETTABLEKS                       R26 R2 K52 ["fontStyle"]
      130 GETTABLEKS                       R26 R26 K65 ["Subtitle"]
      132 GETTABLEKS                       R26 R26 K66 ["TextSize"]
      134 CALL                             R22 4 1
      135 SETTABLEKS                       R22 R21 K58 ["Size"]
      137 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      139 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      141 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      143 SETTABLEKS                       R22 R21 K60 ["TextYAlignment"]
      145 GETUPVAL                         R23 9
      146 JUMPIFNOT                        R23 ; [+6]
      147 LOADK                            R24 K5 ["General"]
      148 LOADK                            R25 K71 ["SourceLanguageDescExp"]
      149 NAMECALL                         R22 R1 K7 ["getText"]
      151 CALL                             R22 3 1
      152 JUMP                             ; [+5]
      153 LOADK                            R24 K5 ["General"]
      154 LOADK                            R25 K72 ["SourceLanguageDesc"]
      155 NAMECALL                         R22 R1 K7 ["getText"]
      157 CALL                             R22 3 1
      158 SETTABLEKS                       R22 R21 K61 ["Text"]
      160 CALL                             R19 2 -1
      161 CALL                             R17 -1 1
      162 SETTABLEKS                       R17 R16 K29 ["Description"]
      164 CALL                             R13 3 1
      165 SETTABLEKS                       R13 R12 K9 ["SourceLanguage"]
      167 GETUPVAL                         R13 5
      168 GETTABLEKS                       R13 R13 K21 ["createElement"]
      170 GETUPVAL                         R14 10
      171 DUPTABLE                         R15 K73 [{"LayoutOrder"}]
      172 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      174 CALL                             R16 1 1
      175 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K10 ["Separator1"]
      180 GETUPVAL                         R13 5
      181 GETTABLEKS                       R13 R13 K21 ["createElement"]
      183 GETUPVAL                         R14 6
      184 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      185 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      187 CALL                             R16 1 1
      188 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      190 LOADK                            R18 K5 ["General"]
      191 LOADK                            R19 K74 ["AutoTextCaptureTitle"]
      192 NAMECALL                         R16 R1 K7 ["getText"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K23 ["Title"]
      197 DUPTABLE                         R16 K79 [{"Layout", "ToggleButton", "Description", "LinkText", "Padding", "DeletionToggleButton", "DeletionDescription"}]
      198 GETUPVAL                         R17 5
      199 GETTABLEKS                       R17 R17 K21 ["createElement"]
      201 LOADK                            R18 K31 ["UIListLayout"]
      202 DUPTABLE                         R19 K81 [{"SortOrder", "FillDirection", "Padding"}]
      203 GETIMPORT                        R20 K36 [Enum.SortOrder.LayoutOrder]
      205 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
      207 GETIMPORT                        R20 K83 [Enum.FillDirection.Vertical]
      209 SETTABLEKS                       R20 R19 K80 ["FillDirection"]
      211 GETIMPORT                        R20 K38 [UDim.new]
      213 LOADN                            R21 0
      214 GETTABLEKS                       R22 R2 K39 ["uiListLayout"]
      216 GETTABLEKS                       R22 R22 K40 ["padding"]
      218 CALL                             R20 2 1
      219 SETTABLEKS                       R20 R19 K33 ["Padding"]
      221 CALL                             R17 2 1
      222 SETTABLEKS                       R17 R16 K27 ["Layout"]
      224 GETUPVAL                         R17 5
      225 GETTABLEKS                       R17 R17 K21 ["createElement"]
      227 GETUPVAL                         R18 11
      228 DUPTABLE                         R19 K87 [{["Disabled"], ["LayoutOrder"] = 1, ["OnClick"], ["Selected"]}]
      229 GETTABLEKS                       R21 R0 K88 ["AutoTextCaptureEnabled"]
      231 JUMPIFEQKNIL                     R21 ; [+2]
      233 LOADB                            R20 0 +1
      234 LOADB                            R20 1
      235 SETTABLEKS                       R20 R19 K84 ["Disabled"]
      237 GETTABLEKS                       R20 R0 K89 ["AutoTextCaptureEnabledChanged"]
      239 SETTABLEKS                       R20 R19 K85 ["OnClick"]
      241 GETTABLEKS                       R20 R0 K88 ["AutoTextCaptureEnabled"]
      243 SETTABLEKS                       R20 R19 K86 ["Selected"]
      245 CALL                             R17 2 1
      246 SETTABLEKS                       R17 R16 K75 ["ToggleButton"]
      248 GETUPVAL                         R18 12
      249 JUMPIFNOT                        R18 ; [+58]
      250 GETUPVAL                         R17 5
      251 GETTABLEKS                       R17 R17 K21 ["createElement"]
      253 LOADK                            R18 K49 ["TextLabel"]
      254 GETUPVAL                         R19 8
      255 GETTABLEKS                       R19 R19 K50 ["Dictionary"]
      257 GETTABLEKS                       R19 R19 K51 ["join"]
      259 GETTABLEKS                       R20 R2 K52 ["fontStyle"]
      261 GETTABLEKS                       R20 R20 K53 ["Subtext"]
      263 DUPTABLE                         R21 K93 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True}]
      264 GETIMPORT                        R22 K95 [Enum.AutomaticSize.XY]
      266 SETTABLEKS                       R22 R21 K90 ["AutomaticSize"]
      268 GETIMPORT                        R22 K64 [UDim2.new]
      270 LOADN                            R23 1
      271 LOADN                            R24 0
      272 LOADN                            R25 0
      273 GETTABLEKS                       R26 R2 K52 ["fontStyle"]
      275 GETTABLEKS                       R26 R26 K65 ["Subtitle"]
      277 GETTABLEKS                       R26 R26 K66 ["TextSize"]
      279 CALL                             R22 4 1
      280 SETTABLEKS                       R22 R21 K58 ["Size"]
      282 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      284 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      286 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      288 SETTABLEKS                       R22 R21 K60 ["TextYAlignment"]
      290 GETUPVAL                         R23 9
      291 JUMPIFNOT                        R23 ; [+6]
      292 LOADK                            R24 K5 ["General"]
      293 LOADK                            R25 K96 ["NewAtcAdditionDescriptionExp"]
      294 NAMECALL                         R22 R1 K7 ["getText"]
      296 CALL                             R22 3 1
      297 JUMP                             ; [+5]
      298 LOADK                            R24 K5 ["General"]
      299 LOADK                            R25 K97 ["NewAtcAdditionDescription"]
      300 NAMECALL                         R22 R1 K7 ["getText"]
      302 CALL                             R22 3 1
      303 SETTABLEKS                       R22 R21 K61 ["Text"]
      305 CALL                             R19 2 -1
      306 CALL                             R17 -1 1
      307 JUMP                             ; [+45]
      308 GETUPVAL                         R17 5
      309 GETTABLEKS                       R17 R17 K21 ["createElement"]
      311 LOADK                            R18 K49 ["TextLabel"]
      312 GETUPVAL                         R19 8
      313 GETTABLEKS                       R19 R19 K50 ["Dictionary"]
      315 GETTABLEKS                       R19 R19 K51 ["join"]
      317 GETTABLEKS                       R20 R2 K52 ["fontStyle"]
      319 GETTABLEKS                       R20 R20 K53 ["Subtext"]
      321 DUPTABLE                         R21 K98 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      322 GETIMPORT                        R22 K64 [UDim2.new]
      324 LOADN                            R23 1
      325 LOADN                            R24 0
      326 LOADN                            R25 0
      327 GETTABLEKS                       R26 R2 K52 ["fontStyle"]
      329 GETTABLEKS                       R26 R26 K65 ["Subtitle"]
      331 GETTABLEKS                       R26 R26 K66 ["TextSize"]
      333 CALL                             R22 4 1
      334 SETTABLEKS                       R22 R21 K58 ["Size"]
      336 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      338 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      340 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      342 SETTABLEKS                       R22 R21 K60 ["TextYAlignment"]
      344 LOADK                            R24 K5 ["General"]
      345 LOADK                            R25 K99 ["AutoTextCaptureDesc"]
      346 NAMECALL                         R22 R1 K7 ["getText"]
      348 CALL                             R22 3 1
      349 SETTABLEKS                       R22 R21 K61 ["Text"]
      351 CALL                             R19 2 -1
      352 CALL                             R17 -1 1
      353 SETTABLEKS                       R17 R16 K29 ["Description"]
      355 GETUPVAL                         R18 12
      356 JUMPIFNOT                        R18 ; [+32]
      357 GETUPVAL                         R17 5
      358 GETTABLEKS                       R17 R17 K21 ["createElement"]
      360 GETUPVAL                         R18 13
      361 DUPTABLE                         R19 K103 [{["OnClick"], ["LayoutOrder"] = 3, ["Size"], ["Style"] = "Body", ["Text"]}]
      362 DUPCLOSURE                       R20 K104 [PROTO_14]
      363 CAPTURE                          UPVAL U14
      364 SETTABLEKS                       R20 R19 K85 ["OnClick"]
      366 GETIMPORT                        R20 K64 [UDim2.new]
      368 LOADN                            R21 1
      369 LOADN                            R22 0
      370 LOADN                            R23 0
      371 GETTABLEKS                       R24 R2 K52 ["fontStyle"]
      373 GETTABLEKS                       R24 R24 K65 ["Subtitle"]
      375 GETTABLEKS                       R24 R24 K66 ["TextSize"]
      377 CALL                             R20 4 1
      378 SETTABLEKS                       R20 R19 K58 ["Size"]
      380 LOADK                            R22 K5 ["General"]
      381 LOADK                            R23 K105 ["NewAtcAdditionDescriptionLink"]
      382 NAMECALL                         R20 R1 K7 ["getText"]
      384 CALL                             R20 3 1
      385 SETTABLEKS                       R20 R19 K61 ["Text"]
      387 CALL                             R17 2 1
      388 JUMP                             ; [+1]
      389 LOADNIL                          R17
      390 SETTABLEKS                       R17 R16 K76 ["LinkText"]
      392 GETUPVAL                         R18 12
      393 JUMPIFNOT                        R18 ; [+17]
      394 GETUPVAL                         R17 5
      395 GETTABLEKS                       R17 R17 K21 ["createElement"]
      397 LOADK                            R18 K106 ["UIPadding"]
      398 DUPTABLE                         R19 K108 [{"PaddingBottom"}]
      399 GETIMPORT                        R20 K38 [UDim.new]
      401 LOADN                            R21 0
      402 GETTABLEKS                       R22 R2 K109 ["atcFrame"]
      404 GETTABLEKS                       R22 R22 K107 ["PaddingBottom"]
      406 CALL                             R20 2 1
      407 SETTABLEKS                       R20 R19 K107 ["PaddingBottom"]
      409 CALL                             R17 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R17
      412 SETTABLEKS                       R17 R16 K33 ["Padding"]
      414 GETUPVAL                         R18 12
      415 JUMPIFNOT                        R18 ; [+23]
      416 GETUPVAL                         R17 5
      417 GETTABLEKS                       R17 R17 K21 ["createElement"]
      419 GETUPVAL                         R18 11
      420 DUPTABLE                         R19 K111 [{["Disabled"], ["LayoutOrder"] = 4, ["OnClick"], ["Selected"]}]
      421 GETTABLEKS                       R21 R0 K88 ["AutoTextCaptureEnabled"]
      423 JUMPIFEQKNIL                     R21 ; [+2]
      425 LOADB                            R20 0 +1
      426 LOADB                            R20 1
      427 SETTABLEKS                       R20 R19 K84 ["Disabled"]
      429 GETTABLEKS                       R20 R0 K112 ["IsAutomaticEntriesDeletionEnabledChanged"]
      431 SETTABLEKS                       R20 R19 K85 ["OnClick"]
      433 GETTABLEKS                       R20 R0 K113 ["IsAutomaticEntriesDeletionEnabled"]
      435 SETTABLEKS                       R20 R19 K86 ["Selected"]
      437 CALL                             R17 2 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R17
      440 SETTABLEKS                       R17 R16 K77 ["DeletionToggleButton"]
      442 GETUPVAL                         R18 12
      443 JUMPIFNOT                        R18 ; [+50]
      444 GETUPVAL                         R17 5
      445 GETTABLEKS                       R17 R17 K21 ["createElement"]
      447 LOADK                            R18 K49 ["TextLabel"]
      448 GETUPVAL                         R19 8
      449 GETTABLEKS                       R19 R19 K50 ["Dictionary"]
      451 GETTABLEKS                       R19 R19 K51 ["join"]
      453 GETTABLEKS                       R20 R2 K52 ["fontStyle"]
      455 GETTABLEKS                       R20 R20 K53 ["Subtext"]
      457 DUPTABLE                         R21 K115 [{["LayoutOrder"] = 5, ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextWrapped"] = True}]
      458 GETIMPORT                        R22 K95 [Enum.AutomaticSize.XY]
      460 SETTABLEKS                       R22 R21 K90 ["AutomaticSize"]
      462 GETIMPORT                        R22 K64 [UDim2.new]
      464 LOADN                            R23 1
      465 LOADN                            R24 0
      466 LOADN                            R25 0
      467 GETTABLEKS                       R26 R2 K52 ["fontStyle"]
      469 GETTABLEKS                       R26 R26 K65 ["Subtitle"]
      471 GETTABLEKS                       R26 R26 K66 ["TextSize"]
      473 CALL                             R22 4 1
      474 SETTABLEKS                       R22 R21 K58 ["Size"]
      476 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      478 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      480 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      482 SETTABLEKS                       R22 R21 K60 ["TextYAlignment"]
      484 LOADK                            R24 K5 ["General"]
      485 LOADK                            R25 K116 ["NewAtcDeletionDescription"]
      486 NAMECALL                         R22 R1 K7 ["getText"]
      488 CALL                             R22 3 1
      489 SETTABLEKS                       R22 R21 K61 ["Text"]
      491 CALL                             R19 2 -1
      492 CALL                             R17 -1 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R17
      495 SETTABLEKS                       R17 R16 K78 ["DeletionDescription"]
      497 CALL                             R13 3 1
      498 SETTABLEKS                       R13 R12 K11 ["AutoTextCapture"]
      500 GETUPVAL                         R13 5
      501 GETTABLEKS                       R13 R13 K21 ["createElement"]
      503 GETUPVAL                         R14 10
      504 DUPTABLE                         R15 K73 [{"LayoutOrder"}]
      505 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      507 CALL                             R16 1 1
      508 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      510 CALL                             R13 2 1
      511 SETTABLEKS                       R13 R12 K12 ["Separator2"]
      513 GETUPVAL                         R13 5
      514 GETTABLEKS                       R13 R13 K21 ["createElement"]
      516 GETUPVAL                         R14 6
      517 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      518 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      520 CALL                             R16 1 1
      521 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      523 LOADK                            R18 K5 ["General"]
      524 LOADK                            R19 K117 ["UseTranslatedContentTitle"]
      525 NAMECALL                         R16 R1 K7 ["getText"]
      527 CALL                             R16 3 1
      528 SETTABLEKS                       R16 R15 K23 ["Title"]
      530 DUPTABLE                         R16 K118 [{"Layout", "ToggleButton", "Description"}]
      531 GETUPVAL                         R17 5
      532 GETTABLEKS                       R17 R17 K21 ["createElement"]
      534 LOADK                            R18 K31 ["UIListLayout"]
      535 DUPTABLE                         R19 K34 [{"SortOrder", "Padding"}]
      536 GETIMPORT                        R20 K36 [Enum.SortOrder.LayoutOrder]
      538 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
      540 GETIMPORT                        R20 K38 [UDim.new]
      542 LOADN                            R21 0
      543 GETTABLEKS                       R22 R2 K39 ["uiListLayout"]
      545 GETTABLEKS                       R22 R22 K40 ["padding"]
      547 CALL                             R20 2 1
      548 SETTABLEKS                       R20 R19 K33 ["Padding"]
      550 CALL                             R17 2 1
      551 SETTABLEKS                       R17 R16 K27 ["Layout"]
      553 GETUPVAL                         R17 5
      554 GETTABLEKS                       R17 R17 K21 ["createElement"]
      556 GETUPVAL                         R18 11
      557 DUPTABLE                         R19 K87 [{["Disabled"], ["LayoutOrder"] = 1, ["OnClick"], ["Selected"]}]
      558 GETTABLEKS                       R21 R0 K119 ["UseTranslatedContentEnabled"]
      560 JUMPIFEQKNIL                     R21 ; [+2]
      562 LOADB                            R20 0 +1
      563 LOADB                            R20 1
      564 SETTABLEKS                       R20 R19 K84 ["Disabled"]
      566 GETTABLEKS                       R20 R0 K120 ["UseTranslatedContentEnabledChanged"]
      568 SETTABLEKS                       R20 R19 K85 ["OnClick"]
      570 GETTABLEKS                       R20 R0 K119 ["UseTranslatedContentEnabled"]
      572 SETTABLEKS                       R20 R19 K86 ["Selected"]
      574 CALL                             R17 2 1
      575 SETTABLEKS                       R17 R16 K75 ["ToggleButton"]
      577 GETUPVAL                         R17 5
      578 GETTABLEKS                       R17 R17 K21 ["createElement"]
      580 LOADK                            R18 K49 ["TextLabel"]
      581 GETUPVAL                         R19 8
      582 GETTABLEKS                       R19 R19 K50 ["Dictionary"]
      584 GETTABLEKS                       R19 R19 K51 ["join"]
      586 GETTABLEKS                       R20 R2 K52 ["fontStyle"]
      588 GETTABLEKS                       R20 R20 K53 ["Subtext"]
      590 DUPTABLE                         R21 K62 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      591 GETIMPORT                        R22 K64 [UDim2.new]
      593 LOADN                            R23 1
      594 LOADN                            R24 0
      595 LOADN                            R25 0
      596 GETTABLEKS                       R26 R2 K52 ["fontStyle"]
      598 GETTABLEKS                       R26 R26 K65 ["Subtitle"]
      600 GETTABLEKS                       R26 R26 K66 ["TextSize"]
      602 CALL                             R22 4 1
      603 SETTABLEKS                       R22 R21 K58 ["Size"]
      605 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      607 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      609 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      611 SETTABLEKS                       R22 R21 K60 ["TextYAlignment"]
      613 GETUPVAL                         R23 9
      614 JUMPIFNOT                        R23 ; [+6]
      615 LOADK                            R24 K5 ["General"]
      616 LOADK                            R25 K121 ["UseTranslatedContentDescExp"]
      617 NAMECALL                         R22 R1 K7 ["getText"]
      619 CALL                             R22 3 1
      620 JUMP                             ; [+5]
      621 LOADK                            R24 K5 ["General"]
      622 LOADK                            R25 K122 ["UseTranslatedContentDesc"]
      623 NAMECALL                         R22 R1 K7 ["getText"]
      625 CALL                             R22 3 1
      626 SETTABLEKS                       R22 R21 K61 ["Text"]
      628 CALL                             R19 2 -1
      629 CALL                             R17 -1 1
      630 SETTABLEKS                       R17 R16 K29 ["Description"]
      632 CALL                             R13 3 1
      633 SETTABLEKS                       R13 R12 K13 ["UseTranslatedContent"]
      635 GETUPVAL                         R13 5
      636 GETTABLEKS                       R13 R13 K21 ["createElement"]
      638 GETUPVAL                         R14 10
      639 DUPTABLE                         R15 K73 [{"LayoutOrder"}]
      640 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      642 CALL                             R16 1 1
      643 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      645 CALL                             R13 2 1
      646 SETTABLEKS                       R13 R12 K14 ["Separator3"]
      648 MOVE                             R13 R5
      649 JUMPIFNOT                        R13 ; [+18]
      650 GETUPVAL                         R13 5
      651 GETTABLEKS                       R13 R13 K21 ["createElement"]
      653 GETUPVAL                         R14 6
      654 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      655 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      657 CALL                             R16 1 1
      658 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      660 LOADK                            R18 K5 ["General"]
      661 LOADK                            R19 K15 ["AutoTranslationTitle"]
      662 NAMECALL                         R16 R1 K7 ["getText"]
      664 CALL                             R16 3 1
      665 SETTABLEKS                       R16 R15 K23 ["Title"]
      667 CALL                             R13 2 1
      668 SETTABLEKS                       R13 R12 K15 ["AutoTranslationTitle"]
      670 MOVE                             R13 R7
      671 JUMPIFNOT                        R13 ; [+27]
      672 GETUPVAL                         R13 5
      673 GETTABLEKS                       R13 R13 K21 ["createElement"]
      675 GETUPVAL                         R14 15
      676 DUPTABLE                         R15 K124 [{"Layout", "LayoutOrder", "AutomaticSize", "Spacing"}]
      677 GETIMPORT                        R16 K83 [Enum.FillDirection.Vertical]
      679 SETTABLEKS                       R16 R15 K27 ["Layout"]
      681 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      683 CALL                             R16 1 1
      684 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      686 GETIMPORT                        R16 K126 [Enum.AutomaticSize.Y]
      688 SETTABLEKS                       R16 R15 K90 ["AutomaticSize"]
      690 GETIMPORT                        R16 K38 [UDim.new]
      692 LOADN                            R17 0
      693 LOADN                            R18 10
      694 CALL                             R16 2 1
      695 SETTABLEKS                       R16 R15 K123 ["Spacing"]
      697 MOVE                             R16 R6
      698 CALL                             R13 3 1
      699 SETTABLEKS                       R13 R12 K16 ["AutoTranslationOptions"]
      701 MOVE                             R13 R8
      702 JUMPIFNOT                        R13 ; [+50]
      703 GETUPVAL                         R13 5
      704 GETTABLEKS                       R13 R13 K21 ["createElement"]
      706 LOADK                            R14 K49 ["TextLabel"]
      707 GETUPVAL                         R15 8
      708 GETTABLEKS                       R15 R15 K50 ["Dictionary"]
      710 GETTABLEKS                       R15 R15 K51 ["join"]
      712 GETTABLEKS                       R16 R2 K52 ["fontStyle"]
      714 GETTABLEKS                       R16 R16 K53 ["Subtext"]
      716 DUPTABLE                         R17 K127 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      717 NAMECALL                         R18 R3 K25 ["getNextOrder"]
      719 CALL                             R18 1 1
      720 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      722 GETIMPORT                        R18 K64 [UDim2.new]
      724 LOADN                            R19 1
      725 LOADN                            R20 0
      726 LOADN                            R21 0
      727 GETTABLEKS                       R22 R2 K52 ["fontStyle"]
      729 GETTABLEKS                       R22 R22 K65 ["Subtitle"]
      731 GETTABLEKS                       R22 R22 K66 ["TextSize"]
      733 CALL                             R18 4 1
      734 SETTABLEKS                       R18 R17 K58 ["Size"]
      736 GETIMPORT                        R18 K68 [Enum.TextXAlignment.Left]
      738 SETTABLEKS                       R18 R17 K59 ["TextXAlignment"]
      740 GETIMPORT                        R18 K70 [Enum.TextYAlignment.Top]
      742 SETTABLEKS                       R18 R17 K60 ["TextYAlignment"]
      744 LOADK                            R20 K5 ["General"]
      745 LOADK                            R21 K128 ["AutoTranslationOnlyAvailableForEnMessage"]
      746 NAMECALL                         R18 R1 K7 ["getText"]
      748 CALL                             R18 3 1
      749 SETTABLEKS                       R18 R17 K61 ["Text"]
      751 CALL                             R15 2 -1
      752 CALL                             R13 -1 1
      753 SETTABLEKS                       R13 R12 K17 ["AutoTranlsationUnavailable"]
      755 MOVE                             R13 R5
      756 JUMPIFNOT                        R13 ; [+11]
      757 GETUPVAL                         R13 5
      758 GETTABLEKS                       R13 R13 K21 ["createElement"]
      760 GETUPVAL                         R14 10
      761 DUPTABLE                         R15 K73 [{"LayoutOrder"}]
      762 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      764 CALL                             R16 1 1
      765 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      767 CALL                             R13 2 1
      768 SETTABLEKS                       R13 R12 K18 ["Separator4"]
      770 MOVE                             R13 R9
      771 JUMPIFNOT                        R13 ; [+104]
      772 GETUPVAL                         R13 5
      773 GETTABLEKS                       R13 R13 K21 ["createElement"]
      775 LOADK                            R14 K129 ["Frame"]
      776 DUPTABLE                         R15 K130 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      777 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      779 CALL                             R16 1 1
      780 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      782 GETIMPORT                        R16 K64 [UDim2.new]
      784 LOADN                            R17 1
      785 LOADN                            R18 0
      786 LOADN                            R19 0
      787 LOADN                            R20 20
      788 CALL                             R16 4 1
      789 SETTABLEKS                       R16 R15 K58 ["Size"]
      791 DUPTABLE                         R16 K132 [{"LinkTextLabel", "LinkText"}]
      792 GETUPVAL                         R17 5
      793 GETTABLEKS                       R17 R17 K21 ["createElement"]
      795 GETUPVAL                         R18 16
      796 DUPTABLE                         R19 K134 [{["Position"], ["Size"], ["Style"] = "Body", ["Text"], ["TextXAlignment"], ["TextYAlignment"]}]
      797 GETIMPORT                        R20 K64 [UDim2.new]
      799 LOADN                            R21 0
      800 GETTABLEKS                       R22 R11 K135 ["X"]
      802 LOADN                            R23 0
      803 LOADN                            R24 0
      804 CALL                             R20 4 1
      805 SETTABLEKS                       R20 R19 K133 ["Position"]
      807 GETIMPORT                        R20 K64 [UDim2.new]
      809 LOADN                            R21 1
      810 GETTABLEKS                       R23 R11 K135 ["X"]
      812 MINUS                            R22 R23
      813 LOADN                            R23 1
      814 LOADN                            R24 0
      815 CALL                             R20 4 1
      816 SETTABLEKS                       R20 R19 K58 ["Size"]
      818 GETUPVAL                         R21 9
      819 JUMPIFNOT                        R21 ; [+6]
      820 LOADK                            R22 K5 ["General"]
      821 LOADK                            R23 K136 ["LocalizationSettingsNonLinkTextExp"]
      822 NAMECALL                         R20 R1 K7 ["getText"]
      824 CALL                             R20 3 1
      825 JUMP                             ; [+5]
      826 LOADK                            R22 K5 ["General"]
      827 LOADK                            R23 K137 ["LocalizationSettingsNonLinkText"]
      828 NAMECALL                         R20 R1 K7 ["getText"]
      830 CALL                             R20 3 1
      831 SETTABLEKS                       R20 R19 K61 ["Text"]
      833 GETIMPORT                        R20 K68 [Enum.TextXAlignment.Left]
      835 SETTABLEKS                       R20 R19 K59 ["TextXAlignment"]
      837 GETIMPORT                        R20 K70 [Enum.TextYAlignment.Top]
      839 SETTABLEKS                       R20 R19 K60 ["TextYAlignment"]
      841 CALL                             R17 2 1
      842 SETTABLEKS                       R17 R16 K131 ["LinkTextLabel"]
      844 GETUPVAL                         R17 5
      845 GETTABLEKS                       R17 R17 K21 ["createElement"]
      847 GETUPVAL                         R18 13
      848 DUPTABLE                         R19 K138 [{["OnClick"], ["Size"], ["Style"] = "Body", ["Text"]}]
      849 GETUPVAL                         R20 17
      850 MOVE                             R21 R10
      851 CALL                             R20 1 1
      852 SETTABLEKS                       R20 R19 K85 ["OnClick"]
      854 GETIMPORT                        R20 K64 [UDim2.new]
      856 LOADN                            R21 0
      857 GETTABLEKS                       R22 R11 K135 ["X"]
      859 LOADN                            R23 0
      860 GETTABLEKS                       R24 R11 K125 ["Y"]
      862 CALL                             R20 4 1
      863 SETTABLEKS                       R20 R19 K58 ["Size"]
      865 LOADK                            R22 K5 ["General"]
      866 LOADK                            R23 K6 ["LocalizationSettingsLinkText"]
      867 NAMECALL                         R20 R1 K7 ["getText"]
      869 CALL                             R20 3 1
      870 SETTABLEKS                       R20 R19 K61 ["Text"]
      872 CALL                             R17 2 1
      873 SETTABLEKS                       R17 R16 K76 ["LinkText"]
      875 CALL                             R13 3 1
      876 SETTABLEKS                       R13 R12 K19 ["HyperLink"]
      878 RETURN                           R12 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       11 GETUPVAL                         R7 2
       12 SETTABLEKS                       R7 R6 K4 ["SettingsLoadJobs"]
       14 GETUPVAL                         R7 3
       15 SETTABLEKS                       R7 R6 K5 ["SettingsSaveJobs"]
       17 LOADK                            R9 K10 ["General"]
       18 LOADK                            R11 K11 ["Category"]
       19 GETUPVAL                         R12 4
       20 CONCAT                           R10 R11 R12
       21 NAMECALL                         R7 R2 K12 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K6 ["Title"]
       26 GETIMPORT                        R7 K14 [script]
       28 GETTABLEKS                       R7 R7 K15 ["Name"]
       30 SETTABLEKS                       R7 R6 K7 ["PageId"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R7 R6 K8 ["CreateChildren"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_18:
        0 DUPTABLE                         R2 K10 [{"SupportedLanguages", "LanguageCodeToNames", "IsAutomaticTranslationAllowed", "AutoTranslationTargetLanguages", "SourceLanguage", "AutoTextCaptureEnabled", "IsAutomaticEntriesDeletionEnabled", "UseTranslatedContentEnabled", "AutoTranslationSettings", "GameId"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["SupportedLanguages"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["SupportedLanguages"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K1 ["LanguageCodeToNames"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["LanguageCodeToNames"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K2 ["IsAutomaticTranslationAllowed"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["IsAutomaticTranslationAllowed"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K3 ["AutoTranslationTargetLanguages"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["AutoTranslationTargetLanguages"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K4 ["SourceLanguage"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["SourceLanguage"]
       26 MOVE                             R3 R0
       27 LOADK                            R4 K5 ["AutoTextCaptureEnabled"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K5 ["AutoTextCaptureEnabled"]
       31 GETUPVAL                         R4 0
       32 JUMPIFNOT                        R4 ; [+4]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K6 ["IsAutomaticEntriesDeletionEnabled"]
       35 CALL                             R3 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K6 ["IsAutomaticEntriesDeletionEnabled"]
       40 MOVE                             R3 R0
       41 LOADK                            R4 K7 ["UseTranslatedContentEnabled"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K7 ["UseTranslatedContentEnabled"]
       45 MOVE                             R3 R0
       46 LOADK                            R4 K8 ["AutoTranslationSettings"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K8 ["AutoTranslationSettings"]
       50 GETTABLEKS                       R3 R1 K11 ["Metadata"]
       52 GETTABLEKS                       R3 R3 K12 ["gameId"]
       54 SETTABLEKS                       R3 R2 K9 ["GameId"]
       56 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["SourceLanguage"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R4 2
        9 SETTABLE                         R0 R3 R4
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 4
       13 LOADK                            R4 K2 ["AutoTranslationSettings"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

PROTO_22:
        0 DUPTABLE                         R2 K5 [{"SourceLanguageChanged", "AutoTextCaptureEnabledChanged", "IsAutomaticEntriesDeletionEnabledChanged", "UseTranslatedContentEnabledChanged", "AutoTranslationSettingChanged"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R3 R2 K0 ["SourceLanguageChanged"]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K6 ["AutoTextCaptureEnabled"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["AutoTextCaptureEnabledChanged"]
       12 GETUPVAL                         R4 2
       13 JUMPIFNOT                        R4 ; [+4]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K7 ["IsAutomaticEntriesDeletionEnabled"]
       16 CALL                             R3 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K2 ["IsAutomaticEntriesDeletionEnabledChanged"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K8 ["UseTranslatedContentEnabled"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K3 ["UseTranslatedContentEnabledChanged"]
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R3 R2 K4 ["AutoTranslationSettingChanged"]
       32 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_24:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_27:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETIMPORT                        R2 K5 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R2 K9 ["Packages"]
       23 GETTABLEKS                       R4 R4 K10 ["Roact"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R2 K9 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["RoactRodux"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R2 K9 ["Packages"]
       37 GETTABLEKS                       R6 R6 K12 ["Cryo"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R7 R2 K9 ["Packages"]
       44 GETTABLEKS                       R7 R7 K13 ["Framework"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K1 [game]
       49 LOADK                            R9 K14 ["GuiService"]
       50 NAMECALL                         R7 R7 K3 ["GetService"]
       52 CALL                             R7 2 1
       53 GETTABLEKS                       R8 R6 K15 ["ContextServices"]
       55 GETTABLEKS                       R9 R8 K16 ["withContext"]
       57 GETTABLEKS                       R10 R6 K17 ["UI"]
       59 GETTABLEKS                       R11 R10 K18 ["LinkText"]
       61 GETTABLEKS                       R12 R10 K19 ["Pane"]
       63 GETTABLEKS                       R13 R10 K20 ["SelectInput"]
       65 GETTABLEKS                       R14 R10 K21 ["Separator"]
       67 GETTABLEKS                       R15 R10 K22 ["TextLabel"]
       69 GETTABLEKS                       R16 R10 K23 ["TitledFrame"]
       71 GETTABLEKS                       R17 R10 K24 ["ToggleButton"]
       73 GETTABLEKS                       R18 R6 K25 ["Util"]
       75 GETTABLEKS                       R19 R18 K26 ["LayoutOrderIterator"]
       77 GETIMPORT                        R20 K8 [require]
       79 GETTABLEKS                       R21 R2 K27 ["Src"]
       81 GETTABLEKS                       R21 R21 K28 ["Components"]
       83 GETTABLEKS                       R21 R21 K29 ["SettingsPages"]
       85 GETTABLEKS                       R21 R21 K30 ["SettingsPage"]
       87 CALL                             R20 1 1
       88 GETIMPORT                        R21 K8 [require]
       90 GETTABLEKS                       R22 R2 K27 ["Src"]
       92 GETTABLEKS                       R22 R22 K31 ["Actions"]
       94 GETTABLEKS                       R22 R22 K32 ["AddChange"]
       96 CALL                             R21 1 1
       97 GETIMPORT                        R22 K8 [require]
       99 GETTABLEKS                       R23 R1 K33 ["Thunks"]
      101 GETTABLEKS                       R23 R23 K34 ["ReloadAutoTranslationTargetLanguages"]
      103 CALL                             R22 1 1
      104 GETIMPORT                        R23 K8 [require]
      106 GETTABLEKS                       R24 R2 K27 ["Src"]
      108 GETTABLEKS                       R24 R24 K25 ["Util"]
      110 GETTABLEKS                       R24 R24 K35 ["GameSettingsUtilities"]
      112 CALL                             R23 1 1
      113 GETTABLEKS                       R23 R23 K36 ["calculateTextSize"]
      115 GETIMPORT                        R24 K8 [require]
      117 GETTABLEKS                       R25 R2 K27 ["Src"]
      119 GETTABLEKS                       R25 R25 K25 ["Util"]
      121 GETTABLEKS                       R25 R25 K35 ["GameSettingsUtilities"]
      123 CALL                             R24 1 1
      124 GETTABLEKS                       R24 R24 K37 ["getAutoTranslationAllowed"]
      126 GETIMPORT                        R25 K8 [require]
      128 GETTABLEKS                       R26 R2 K27 ["Src"]
      130 GETTABLEKS                       R26 R26 K25 ["Util"]
      132 GETTABLEKS                       R26 R26 K35 ["GameSettingsUtilities"]
      134 CALL                             R25 1 1
      135 GETTABLEKS                       R25 R25 K38 ["getAutoTranslatedLanguages"]
      137 GETIMPORT                        R26 K8 [require]
      139 GETTABLEKS                       R27 R2 K27 ["Src"]
      141 GETTABLEKS                       R27 R27 K25 ["Util"]
      143 GETTABLEKS                       R27 R27 K39 ["BrowserUtils"]
      145 CALL                             R26 1 1
      146 GETTABLEKS                       R26 R26 K40 ["OpenLocalizationSettings"]
      148 GETTABLEKS                       R27 R3 K41 ["PureComponent"]
      150 GETIMPORT                        R29 K5 [script]
      152 GETTABLEKS                       R29 R29 K42 ["Name"]
      154 NAMECALL                         R27 R27 K43 ["extend"]
      156 CALL                             R27 2 1
      157 GETIMPORT                        R28 K5 [script]
      159 GETTABLEKS                       R28 R28 K42 ["Name"]
      161 GETIMPORT                        R29 K1 [game]
      163 LOADK                            R31 K44 ["LocalizationUseNewAtcEndpoint"]
      164 LOADB                            R32 0
      165 NAMECALL                         R29 R29 K45 ["DefineFastFlag"]
      167 CALL                             R29 3 1
      168 GETIMPORT                        R30 K8 [require]
      170 GETTABLEKS                       R31 R2 K27 ["Src"]
      172 GETTABLEKS                       R31 R31 K46 ["Flags"]
      174 GETTABLEKS                       R31 R31 K47 ["getFFlagGameSettingsGameToExperience"]
      176 CALL                             R30 1 1
      177 CALL                             R30 0 1
      178 DUPCLOSURE                       R31 K48 [PROTO_0]
      179 DUPCLOSURE                       R32 K49 [PROTO_7]
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R29
      183 DUPCLOSURE                       R33 K50 [PROTO_11]
      184 CAPTURE                          VAL R29
      185 DUPCLOSURE                       R34 K51 [PROTO_12]
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R17
      191 DUPCLOSURE                       R35 K52 [PROTO_15]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R31
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R34
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R29
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R26
      210 DUPCLOSURE                       R36 K53 [PROTO_17]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R32
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R35
      217 SETTABLEKS                       R36 R27 K54 ["render"]
      219 DUPCLOSURE                       R36 K55 [PROTO_18]
      220 CAPTURE                          VAL R29
      221 DUPCLOSURE                       R37 K56 [PROTO_22]
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R29
      225 CAPTURE                          VAL R5
      226 MOVE                             R38 R9
      227 DUPTABLE                         R39 K60 [{"Localization", "Mouse", "Stylizer"}]
      228 GETTABLEKS                       R40 R8 K57 ["Localization"]
      230 SETTABLEKS                       R40 R39 K57 ["Localization"]
      232 GETTABLEKS                       R40 R8 K58 ["Mouse"]
      234 SETTABLEKS                       R40 R39 K58 ["Mouse"]
      236 GETTABLEKS                       R40 R8 K59 ["Stylizer"]
      238 SETTABLEKS                       R40 R39 K59 ["Stylizer"]
      240 CALL                             R38 1 1
      241 MOVE                             R39 R27
      242 CALL                             R38 1 1
      243 MOVE                             R27 R38
      244 GETIMPORT                        R38 K8 [require]
      246 GETTABLEKS                       R39 R2 K27 ["Src"]
      248 GETTABLEKS                       R39 R39 K61 ["Networking"]
      250 GETTABLEKS                       R39 R39 K62 ["settingFromState"]
      252 CALL                             R38 1 1
      253 GETTABLEKS                       R39 R4 K63 ["connect"]
      255 DUPCLOSURE                       R40 K64 [PROTO_24]
      256 CAPTURE                          VAL R38
      257 CAPTURE                          VAL R36
      258 DUPCLOSURE                       R41 K65 [PROTO_27]
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R37
      261 CALL                             R39 2 1
      262 MOVE                             R40 R27
      263 CALL                             R39 1 1
      264 MOVE                             R27 R39
      265 SETTABLEKS                       R28 R27 K66 ["LocalizationId"]
      267 RETURN                           R27 1
