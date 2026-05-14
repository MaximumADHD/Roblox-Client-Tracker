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
       85 DUPTABLE                         R19 K45 [{"LayoutOrder", "Items", "Enabled", "SelectedId", "OnItemActivated"}]
       86 LOADN                            R20 1
       87 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
       89 SETTABLEKS                       R4 R19 K41 ["Items"]
       91 GETIMPORT                        R21 K47 [next]
       93 MOVE                             R22 R4
       94 CALL                             R21 1 1
       95 JUMPIFNOTEQKNIL                  R21 ; [+2]
       97 LOADB                            R20 0 +1
       98 LOADB                            R20 1
       99 SETTABLEKS                       R20 R19 K42 ["Enabled"]
      101 GETTABLEKS                       R20 R0 K9 ["SourceLanguage"]
      103 SETTABLEKS                       R20 R19 K43 ["SelectedId"]
      105 NEWCLOSURE                       R20 P0
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R20 R19 K44 ["OnItemActivated"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K28 ["Selector"]
      112 GETUPVAL                         R17 5
      113 GETTABLEKS                       R17 R17 K21 ["createElement"]
      115 LOADK                            R18 K48 ["TextLabel"]
      116 GETUPVAL                         R19 8
      117 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      119 GETTABLEKS                       R19 R19 K50 ["join"]
      121 GETTABLEKS                       R20 R2 K51 ["fontStyle"]
      123 GETTABLEKS                       R20 R20 K52 ["Subtext"]
      125 DUPTABLE                         R21 K59 [{"LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text"}]
      126 LOADN                            R22 2
      127 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      129 LOADN                            R22 1
      130 SETTABLEKS                       R22 R21 K53 ["BackgroundTransparency"]
      132 LOADN                            R22 0
      133 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      135 GETIMPORT                        R22 K61 [UDim2.new]
      137 LOADN                            R23 1
      138 LOADN                            R24 0
      139 LOADN                            R25 0
      140 GETTABLEKS                       R26 R2 K51 ["fontStyle"]
      142 GETTABLEKS                       R26 R26 K62 ["Subtitle"]
      144 GETTABLEKS                       R26 R26 K63 ["TextSize"]
      146 CALL                             R22 4 1
      147 SETTABLEKS                       R22 R21 K55 ["Size"]
      149 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      151 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      153 GETIMPORT                        R22 K67 [Enum.TextYAlignment.Top]
      155 SETTABLEKS                       R22 R21 K57 ["TextYAlignment"]
      157 GETUPVAL                         R23 9
      158 JUMPIFNOT                        R23 ; [+6]
      159 LOADK                            R24 K5 ["General"]
      160 LOADK                            R25 K68 ["SourceLanguageDescExp"]
      161 NAMECALL                         R22 R1 K7 ["getText"]
      163 CALL                             R22 3 1
      164 JUMP                             ; [+5]
      165 LOADK                            R24 K5 ["General"]
      166 LOADK                            R25 K69 ["SourceLanguageDesc"]
      167 NAMECALL                         R22 R1 K7 ["getText"]
      169 CALL                             R22 3 1
      170 SETTABLEKS                       R22 R21 K58 ["Text"]
      172 CALL                             R19 2 -1
      173 CALL                             R17 -1 1
      174 SETTABLEKS                       R17 R16 K29 ["Description"]
      176 CALL                             R13 3 1
      177 SETTABLEKS                       R13 R12 K9 ["SourceLanguage"]
      179 GETUPVAL                         R13 5
      180 GETTABLEKS                       R13 R13 K21 ["createElement"]
      182 GETUPVAL                         R14 10
      183 DUPTABLE                         R15 K70 [{"LayoutOrder"}]
      184 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      186 CALL                             R16 1 1
      187 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K10 ["Separator1"]
      192 GETUPVAL                         R13 5
      193 GETTABLEKS                       R13 R13 K21 ["createElement"]
      195 GETUPVAL                         R14 6
      196 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      197 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      199 CALL                             R16 1 1
      200 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      202 LOADK                            R18 K5 ["General"]
      203 LOADK                            R19 K71 ["AutoTextCaptureTitle"]
      204 NAMECALL                         R16 R1 K7 ["getText"]
      206 CALL                             R16 3 1
      207 SETTABLEKS                       R16 R15 K23 ["Title"]
      209 DUPTABLE                         R16 K76 [{"Layout", "ToggleButton", "Description", "LinkText", "Padding", "DeletionToggleButton", "DeletionDescription"}]
      210 GETUPVAL                         R17 5
      211 GETTABLEKS                       R17 R17 K21 ["createElement"]
      213 LOADK                            R18 K31 ["UIListLayout"]
      214 DUPTABLE                         R19 K78 [{"SortOrder", "FillDirection", "Padding"}]
      215 GETIMPORT                        R20 K36 [Enum.SortOrder.LayoutOrder]
      217 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
      219 GETIMPORT                        R20 K80 [Enum.FillDirection.Vertical]
      221 SETTABLEKS                       R20 R19 K77 ["FillDirection"]
      223 GETIMPORT                        R20 K38 [UDim.new]
      225 LOADN                            R21 0
      226 GETTABLEKS                       R22 R2 K39 ["uiListLayout"]
      228 GETTABLEKS                       R22 R22 K40 ["padding"]
      230 CALL                             R20 2 1
      231 SETTABLEKS                       R20 R19 K33 ["Padding"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K27 ["Layout"]
      236 GETUPVAL                         R17 5
      237 GETTABLEKS                       R17 R17 K21 ["createElement"]
      239 GETUPVAL                         R18 11
      240 DUPTABLE                         R19 K84 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
      241 GETTABLEKS                       R21 R0 K85 ["AutoTextCaptureEnabled"]
      243 JUMPIFEQKNIL                     R21 ; [+2]
      245 LOADB                            R20 0 +1
      246 LOADB                            R20 1
      247 SETTABLEKS                       R20 R19 K81 ["Disabled"]
      249 LOADN                            R20 1
      250 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      252 GETTABLEKS                       R20 R0 K86 ["AutoTextCaptureEnabledChanged"]
      254 SETTABLEKS                       R20 R19 K82 ["OnClick"]
      256 GETTABLEKS                       R20 R0 K85 ["AutoTextCaptureEnabled"]
      258 SETTABLEKS                       R20 R19 K83 ["Selected"]
      260 CALL                             R17 2 1
      261 SETTABLEKS                       R17 R16 K72 ["ToggleButton"]
      263 GETUPVAL                         R18 12
      264 JUMPIFNOT                        R18 ; [+70]
      265 GETUPVAL                         R17 5
      266 GETTABLEKS                       R17 R17 K21 ["createElement"]
      268 LOADK                            R18 K48 ["TextLabel"]
      269 GETUPVAL                         R19 8
      270 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      272 GETTABLEKS                       R19 R19 K50 ["join"]
      274 GETTABLEKS                       R20 R2 K51 ["fontStyle"]
      276 GETTABLEKS                       R20 R20 K52 ["Subtext"]
      278 DUPTABLE                         R21 K89 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped"}]
      279 GETIMPORT                        R22 K91 [Enum.AutomaticSize.XY]
      281 SETTABLEKS                       R22 R21 K87 ["AutomaticSize"]
      283 LOADN                            R22 2
      284 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      286 LOADN                            R22 1
      287 SETTABLEKS                       R22 R21 K53 ["BackgroundTransparency"]
      289 LOADN                            R22 0
      290 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      292 GETIMPORT                        R22 K61 [UDim2.new]
      294 LOADN                            R23 1
      295 LOADN                            R24 0
      296 LOADN                            R25 0
      297 GETTABLEKS                       R26 R2 K51 ["fontStyle"]
      299 GETTABLEKS                       R26 R26 K62 ["Subtitle"]
      301 GETTABLEKS                       R26 R26 K63 ["TextSize"]
      303 CALL                             R22 4 1
      304 SETTABLEKS                       R22 R21 K55 ["Size"]
      306 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      308 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      310 GETIMPORT                        R22 K67 [Enum.TextYAlignment.Top]
      312 SETTABLEKS                       R22 R21 K57 ["TextYAlignment"]
      314 GETUPVAL                         R23 9
      315 JUMPIFNOT                        R23 ; [+6]
      316 LOADK                            R24 K5 ["General"]
      317 LOADK                            R25 K92 ["NewAtcAdditionDescriptionExp"]
      318 NAMECALL                         R22 R1 K7 ["getText"]
      320 CALL                             R22 3 1
      321 JUMP                             ; [+5]
      322 LOADK                            R24 K5 ["General"]
      323 LOADK                            R25 K93 ["NewAtcAdditionDescription"]
      324 NAMECALL                         R22 R1 K7 ["getText"]
      326 CALL                             R22 3 1
      327 SETTABLEKS                       R22 R21 K58 ["Text"]
      329 LOADB                            R22 1
      330 SETTABLEKS                       R22 R21 K88 ["TextWrapped"]
      332 CALL                             R19 2 -1
      333 CALL                             R17 -1 1
      334 JUMP                             ; [+54]
      335 GETUPVAL                         R17 5
      336 GETTABLEKS                       R17 R17 K21 ["createElement"]
      338 LOADK                            R18 K48 ["TextLabel"]
      339 GETUPVAL                         R19 8
      340 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      342 GETTABLEKS                       R19 R19 K50 ["join"]
      344 GETTABLEKS                       R20 R2 K51 ["fontStyle"]
      346 GETTABLEKS                       R20 R20 K52 ["Subtext"]
      348 DUPTABLE                         R21 K59 [{"LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text"}]
      349 LOADN                            R22 1
      350 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      352 LOADN                            R22 1
      353 SETTABLEKS                       R22 R21 K53 ["BackgroundTransparency"]
      355 LOADN                            R22 0
      356 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      358 GETIMPORT                        R22 K61 [UDim2.new]
      360 LOADN                            R23 1
      361 LOADN                            R24 0
      362 LOADN                            R25 0
      363 GETTABLEKS                       R26 R2 K51 ["fontStyle"]
      365 GETTABLEKS                       R26 R26 K62 ["Subtitle"]
      367 GETTABLEKS                       R26 R26 K63 ["TextSize"]
      369 CALL                             R22 4 1
      370 SETTABLEKS                       R22 R21 K55 ["Size"]
      372 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      374 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      376 GETIMPORT                        R22 K67 [Enum.TextYAlignment.Top]
      378 SETTABLEKS                       R22 R21 K57 ["TextYAlignment"]
      380 LOADK                            R24 K5 ["General"]
      381 LOADK                            R25 K94 ["AutoTextCaptureDesc"]
      382 NAMECALL                         R22 R1 K7 ["getText"]
      384 CALL                             R22 3 1
      385 SETTABLEKS                       R22 R21 K58 ["Text"]
      387 CALL                             R19 2 -1
      388 CALL                             R17 -1 1
      389 SETTABLEKS                       R17 R16 K29 ["Description"]
      391 GETUPVAL                         R18 12
      392 JUMPIFNOT                        R18 ; [+38]
      393 GETUPVAL                         R17 5
      394 GETTABLEKS                       R17 R17 K21 ["createElement"]
      396 GETUPVAL                         R18 13
      397 DUPTABLE                         R19 K96 [{"OnClick", "LayoutOrder", "Size", "Style", "Text"}]
      398 DUPCLOSURE                       R20 K97 [PROTO_14]
      399 CAPTURE                          UPVAL U14
      400 SETTABLEKS                       R20 R19 K82 ["OnClick"]
      402 LOADN                            R20 3
      403 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      405 GETIMPORT                        R20 K61 [UDim2.new]
      407 LOADN                            R21 1
      408 LOADN                            R22 0
      409 LOADN                            R23 0
      410 GETTABLEKS                       R24 R2 K51 ["fontStyle"]
      412 GETTABLEKS                       R24 R24 K62 ["Subtitle"]
      414 GETTABLEKS                       R24 R24 K63 ["TextSize"]
      416 CALL                             R20 4 1
      417 SETTABLEKS                       R20 R19 K55 ["Size"]
      419 LOADK                            R20 K98 ["Body"]
      420 SETTABLEKS                       R20 R19 K95 ["Style"]
      422 LOADK                            R22 K5 ["General"]
      423 LOADK                            R23 K99 ["NewAtcAdditionDescriptionLink"]
      424 NAMECALL                         R20 R1 K7 ["getText"]
      426 CALL                             R20 3 1
      427 SETTABLEKS                       R20 R19 K58 ["Text"]
      429 CALL                             R17 2 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R17
      432 SETTABLEKS                       R17 R16 K73 ["LinkText"]
      434 GETUPVAL                         R18 12
      435 JUMPIFNOT                        R18 ; [+17]
      436 GETUPVAL                         R17 5
      437 GETTABLEKS                       R17 R17 K21 ["createElement"]
      439 LOADK                            R18 K100 ["UIPadding"]
      440 DUPTABLE                         R19 K102 [{"PaddingBottom"}]
      441 GETIMPORT                        R20 K38 [UDim.new]
      443 LOADN                            R21 0
      444 GETTABLEKS                       R22 R2 K103 ["atcFrame"]
      446 GETTABLEKS                       R22 R22 K101 ["PaddingBottom"]
      448 CALL                             R20 2 1
      449 SETTABLEKS                       R20 R19 K101 ["PaddingBottom"]
      451 CALL                             R17 2 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R17
      454 SETTABLEKS                       R17 R16 K33 ["Padding"]
      456 GETUPVAL                         R18 12
      457 JUMPIFNOT                        R18 ; [+26]
      458 GETUPVAL                         R17 5
      459 GETTABLEKS                       R17 R17 K21 ["createElement"]
      461 GETUPVAL                         R18 11
      462 DUPTABLE                         R19 K84 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
      463 GETTABLEKS                       R21 R0 K85 ["AutoTextCaptureEnabled"]
      465 JUMPIFEQKNIL                     R21 ; [+2]
      467 LOADB                            R20 0 +1
      468 LOADB                            R20 1
      469 SETTABLEKS                       R20 R19 K81 ["Disabled"]
      471 LOADN                            R20 4
      472 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      474 GETTABLEKS                       R20 R0 K104 ["IsAutomaticEntriesDeletionEnabledChanged"]
      476 SETTABLEKS                       R20 R19 K82 ["OnClick"]
      478 GETTABLEKS                       R20 R0 K105 ["IsAutomaticEntriesDeletionEnabled"]
      480 SETTABLEKS                       R20 R19 K83 ["Selected"]
      482 CALL                             R17 2 1
      483 JUMP                             ; [+1]
      484 LOADNIL                          R17
      485 SETTABLEKS                       R17 R16 K74 ["DeletionToggleButton"]
      487 GETUPVAL                         R18 12
      488 JUMPIFNOT                        R18 ; [+62]
      489 GETUPVAL                         R17 5
      490 GETTABLEKS                       R17 R17 K21 ["createElement"]
      492 LOADK                            R18 K48 ["TextLabel"]
      493 GETUPVAL                         R19 8
      494 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      496 GETTABLEKS                       R19 R19 K50 ["join"]
      498 GETTABLEKS                       R20 R2 K51 ["fontStyle"]
      500 GETTABLEKS                       R20 R20 K52 ["Subtext"]
      502 DUPTABLE                         R21 K106 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped"}]
      503 LOADN                            R22 5
      504 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      506 GETIMPORT                        R22 K91 [Enum.AutomaticSize.XY]
      508 SETTABLEKS                       R22 R21 K87 ["AutomaticSize"]
      510 LOADN                            R22 1
      511 SETTABLEKS                       R22 R21 K53 ["BackgroundTransparency"]
      513 LOADN                            R22 0
      514 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      516 GETIMPORT                        R22 K61 [UDim2.new]
      518 LOADN                            R23 1
      519 LOADN                            R24 0
      520 LOADN                            R25 0
      521 GETTABLEKS                       R26 R2 K51 ["fontStyle"]
      523 GETTABLEKS                       R26 R26 K62 ["Subtitle"]
      525 GETTABLEKS                       R26 R26 K63 ["TextSize"]
      527 CALL                             R22 4 1
      528 SETTABLEKS                       R22 R21 K55 ["Size"]
      530 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      532 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      534 GETIMPORT                        R22 K67 [Enum.TextYAlignment.Top]
      536 SETTABLEKS                       R22 R21 K57 ["TextYAlignment"]
      538 LOADK                            R24 K5 ["General"]
      539 LOADK                            R25 K107 ["NewAtcDeletionDescription"]
      540 NAMECALL                         R22 R1 K7 ["getText"]
      542 CALL                             R22 3 1
      543 SETTABLEKS                       R22 R21 K58 ["Text"]
      545 LOADB                            R22 1
      546 SETTABLEKS                       R22 R21 K88 ["TextWrapped"]
      548 CALL                             R19 2 -1
      549 CALL                             R17 -1 1
      550 JUMP                             ; [+1]
      551 LOADNIL                          R17
      552 SETTABLEKS                       R17 R16 K75 ["DeletionDescription"]
      554 CALL                             R13 3 1
      555 SETTABLEKS                       R13 R12 K11 ["AutoTextCapture"]
      557 GETUPVAL                         R13 5
      558 GETTABLEKS                       R13 R13 K21 ["createElement"]
      560 GETUPVAL                         R14 10
      561 DUPTABLE                         R15 K70 [{"LayoutOrder"}]
      562 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      564 CALL                             R16 1 1
      565 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      567 CALL                             R13 2 1
      568 SETTABLEKS                       R13 R12 K12 ["Separator2"]
      570 GETUPVAL                         R13 5
      571 GETTABLEKS                       R13 R13 K21 ["createElement"]
      573 GETUPVAL                         R14 6
      574 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      575 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      577 CALL                             R16 1 1
      578 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      580 LOADK                            R18 K5 ["General"]
      581 LOADK                            R19 K108 ["UseTranslatedContentTitle"]
      582 NAMECALL                         R16 R1 K7 ["getText"]
      584 CALL                             R16 3 1
      585 SETTABLEKS                       R16 R15 K23 ["Title"]
      587 DUPTABLE                         R16 K109 [{"Layout", "ToggleButton", "Description"}]
      588 GETUPVAL                         R17 5
      589 GETTABLEKS                       R17 R17 K21 ["createElement"]
      591 LOADK                            R18 K31 ["UIListLayout"]
      592 DUPTABLE                         R19 K34 [{"SortOrder", "Padding"}]
      593 GETIMPORT                        R20 K36 [Enum.SortOrder.LayoutOrder]
      595 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
      597 GETIMPORT                        R20 K38 [UDim.new]
      599 LOADN                            R21 0
      600 GETTABLEKS                       R22 R2 K39 ["uiListLayout"]
      602 GETTABLEKS                       R22 R22 K40 ["padding"]
      604 CALL                             R20 2 1
      605 SETTABLEKS                       R20 R19 K33 ["Padding"]
      607 CALL                             R17 2 1
      608 SETTABLEKS                       R17 R16 K27 ["Layout"]
      610 GETUPVAL                         R17 5
      611 GETTABLEKS                       R17 R17 K21 ["createElement"]
      613 GETUPVAL                         R18 11
      614 DUPTABLE                         R19 K84 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
      615 GETTABLEKS                       R21 R0 K110 ["UseTranslatedContentEnabled"]
      617 JUMPIFEQKNIL                     R21 ; [+2]
      619 LOADB                            R20 0 +1
      620 LOADB                            R20 1
      621 SETTABLEKS                       R20 R19 K81 ["Disabled"]
      623 LOADN                            R20 1
      624 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      626 GETTABLEKS                       R20 R0 K111 ["UseTranslatedContentEnabledChanged"]
      628 SETTABLEKS                       R20 R19 K82 ["OnClick"]
      630 GETTABLEKS                       R20 R0 K110 ["UseTranslatedContentEnabled"]
      632 SETTABLEKS                       R20 R19 K83 ["Selected"]
      634 CALL                             R17 2 1
      635 SETTABLEKS                       R17 R16 K72 ["ToggleButton"]
      637 GETUPVAL                         R17 5
      638 GETTABLEKS                       R17 R17 K21 ["createElement"]
      640 LOADK                            R18 K48 ["TextLabel"]
      641 GETUPVAL                         R19 8
      642 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      644 GETTABLEKS                       R19 R19 K50 ["join"]
      646 GETTABLEKS                       R20 R2 K51 ["fontStyle"]
      648 GETTABLEKS                       R20 R20 K52 ["Subtext"]
      650 DUPTABLE                         R21 K59 [{"LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text"}]
      651 LOADN                            R22 2
      652 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      654 LOADN                            R22 1
      655 SETTABLEKS                       R22 R21 K53 ["BackgroundTransparency"]
      657 LOADN                            R22 0
      658 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      660 GETIMPORT                        R22 K61 [UDim2.new]
      662 LOADN                            R23 1
      663 LOADN                            R24 0
      664 LOADN                            R25 0
      665 GETTABLEKS                       R26 R2 K51 ["fontStyle"]
      667 GETTABLEKS                       R26 R26 K62 ["Subtitle"]
      669 GETTABLEKS                       R26 R26 K63 ["TextSize"]
      671 CALL                             R22 4 1
      672 SETTABLEKS                       R22 R21 K55 ["Size"]
      674 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      676 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      678 GETIMPORT                        R22 K67 [Enum.TextYAlignment.Top]
      680 SETTABLEKS                       R22 R21 K57 ["TextYAlignment"]
      682 GETUPVAL                         R23 9
      683 JUMPIFNOT                        R23 ; [+6]
      684 LOADK                            R24 K5 ["General"]
      685 LOADK                            R25 K112 ["UseTranslatedContentDescExp"]
      686 NAMECALL                         R22 R1 K7 ["getText"]
      688 CALL                             R22 3 1
      689 JUMP                             ; [+5]
      690 LOADK                            R24 K5 ["General"]
      691 LOADK                            R25 K113 ["UseTranslatedContentDesc"]
      692 NAMECALL                         R22 R1 K7 ["getText"]
      694 CALL                             R22 3 1
      695 SETTABLEKS                       R22 R21 K58 ["Text"]
      697 CALL                             R19 2 -1
      698 CALL                             R17 -1 1
      699 SETTABLEKS                       R17 R16 K29 ["Description"]
      701 CALL                             R13 3 1
      702 SETTABLEKS                       R13 R12 K13 ["UseTranslatedContent"]
      704 GETUPVAL                         R13 5
      705 GETTABLEKS                       R13 R13 K21 ["createElement"]
      707 GETUPVAL                         R14 10
      708 DUPTABLE                         R15 K70 [{"LayoutOrder"}]
      709 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      711 CALL                             R16 1 1
      712 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      714 CALL                             R13 2 1
      715 SETTABLEKS                       R13 R12 K14 ["Separator3"]
      717 MOVE                             R13 R5
      718 JUMPIFNOT                        R13 ; [+18]
      719 GETUPVAL                         R13 5
      720 GETTABLEKS                       R13 R13 K21 ["createElement"]
      722 GETUPVAL                         R14 6
      723 DUPTABLE                         R15 K24 [{"LayoutOrder", "Title"}]
      724 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      726 CALL                             R16 1 1
      727 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      729 LOADK                            R18 K5 ["General"]
      730 LOADK                            R19 K15 ["AutoTranslationTitle"]
      731 NAMECALL                         R16 R1 K7 ["getText"]
      733 CALL                             R16 3 1
      734 SETTABLEKS                       R16 R15 K23 ["Title"]
      736 CALL                             R13 2 1
      737 SETTABLEKS                       R13 R12 K15 ["AutoTranslationTitle"]
      739 MOVE                             R13 R7
      740 JUMPIFNOT                        R13 ; [+27]
      741 GETUPVAL                         R13 5
      742 GETTABLEKS                       R13 R13 K21 ["createElement"]
      744 GETUPVAL                         R14 15
      745 DUPTABLE                         R15 K115 [{"Layout", "LayoutOrder", "AutomaticSize", "Spacing"}]
      746 GETIMPORT                        R16 K80 [Enum.FillDirection.Vertical]
      748 SETTABLEKS                       R16 R15 K27 ["Layout"]
      750 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      752 CALL                             R16 1 1
      753 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      755 GETIMPORT                        R16 K117 [Enum.AutomaticSize.Y]
      757 SETTABLEKS                       R16 R15 K87 ["AutomaticSize"]
      759 GETIMPORT                        R16 K38 [UDim.new]
      761 LOADN                            R17 0
      762 LOADN                            R18 10
      763 CALL                             R16 2 1
      764 SETTABLEKS                       R16 R15 K114 ["Spacing"]
      766 MOVE                             R16 R6
      767 CALL                             R13 3 1
      768 SETTABLEKS                       R13 R12 K16 ["AutoTranslationOptions"]
      770 MOVE                             R13 R8
      771 JUMPIFNOT                        R13 ; [+56]
      772 GETUPVAL                         R13 5
      773 GETTABLEKS                       R13 R13 K21 ["createElement"]
      775 LOADK                            R14 K48 ["TextLabel"]
      776 GETUPVAL                         R15 8
      777 GETTABLEKS                       R15 R15 K49 ["Dictionary"]
      779 GETTABLEKS                       R15 R15 K50 ["join"]
      781 GETTABLEKS                       R16 R2 K51 ["fontStyle"]
      783 GETTABLEKS                       R16 R16 K52 ["Subtext"]
      785 DUPTABLE                         R17 K59 [{"LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text"}]
      786 NAMECALL                         R18 R3 K25 ["getNextOrder"]
      788 CALL                             R18 1 1
      789 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      791 LOADN                            R18 1
      792 SETTABLEKS                       R18 R17 K53 ["BackgroundTransparency"]
      794 LOADN                            R18 0
      795 SETTABLEKS                       R18 R17 K54 ["BorderSizePixel"]
      797 GETIMPORT                        R18 K61 [UDim2.new]
      799 LOADN                            R19 1
      800 LOADN                            R20 0
      801 LOADN                            R21 0
      802 GETTABLEKS                       R22 R2 K51 ["fontStyle"]
      804 GETTABLEKS                       R22 R22 K62 ["Subtitle"]
      806 GETTABLEKS                       R22 R22 K63 ["TextSize"]
      808 CALL                             R18 4 1
      809 SETTABLEKS                       R18 R17 K55 ["Size"]
      811 GETIMPORT                        R18 K65 [Enum.TextXAlignment.Left]
      813 SETTABLEKS                       R18 R17 K56 ["TextXAlignment"]
      815 GETIMPORT                        R18 K67 [Enum.TextYAlignment.Top]
      817 SETTABLEKS                       R18 R17 K57 ["TextYAlignment"]
      819 LOADK                            R20 K5 ["General"]
      820 LOADK                            R21 K118 ["AutoTranslationOnlyAvailableForEnMessage"]
      821 NAMECALL                         R18 R1 K7 ["getText"]
      823 CALL                             R18 3 1
      824 SETTABLEKS                       R18 R17 K58 ["Text"]
      826 CALL                             R15 2 -1
      827 CALL                             R13 -1 1
      828 SETTABLEKS                       R13 R12 K17 ["AutoTranlsationUnavailable"]
      830 MOVE                             R13 R5
      831 JUMPIFNOT                        R13 ; [+11]
      832 GETUPVAL                         R13 5
      833 GETTABLEKS                       R13 R13 K21 ["createElement"]
      835 GETUPVAL                         R14 10
      836 DUPTABLE                         R15 K70 [{"LayoutOrder"}]
      837 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      839 CALL                             R16 1 1
      840 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      842 CALL                             R13 2 1
      843 SETTABLEKS                       R13 R12 K18 ["Separator4"]
      845 MOVE                             R13 R9
      846 JUMPIFNOT                        R13 ; [+113]
      847 GETUPVAL                         R13 5
      848 GETTABLEKS                       R13 R13 K21 ["createElement"]
      850 LOADK                            R14 K119 ["Frame"]
      851 DUPTABLE                         R15 K120 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      852 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      854 CALL                             R16 1 1
      855 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      857 GETIMPORT                        R16 K61 [UDim2.new]
      859 LOADN                            R17 1
      860 LOADN                            R18 0
      861 LOADN                            R19 0
      862 LOADN                            R20 20
      863 CALL                             R16 4 1
      864 SETTABLEKS                       R16 R15 K55 ["Size"]
      866 LOADN                            R16 1
      867 SETTABLEKS                       R16 R15 K53 ["BackgroundTransparency"]
      869 DUPTABLE                         R16 K122 [{"LinkTextLabel", "LinkText"}]
      870 GETUPVAL                         R17 5
      871 GETTABLEKS                       R17 R17 K21 ["createElement"]
      873 GETUPVAL                         R18 16
      874 DUPTABLE                         R19 K124 [{"Position", "Size", "Style", "Text", "TextXAlignment", "TextYAlignment"}]
      875 GETIMPORT                        R20 K61 [UDim2.new]
      877 LOADN                            R21 0
      878 GETTABLEKS                       R22 R11 K125 ["X"]
      880 LOADN                            R23 0
      881 LOADN                            R24 0
      882 CALL                             R20 4 1
      883 SETTABLEKS                       R20 R19 K123 ["Position"]
      885 GETIMPORT                        R20 K61 [UDim2.new]
      887 LOADN                            R21 1
      888 GETTABLEKS                       R23 R11 K125 ["X"]
      890 MINUS                            R22 R23
      891 LOADN                            R23 1
      892 LOADN                            R24 0
      893 CALL                             R20 4 1
      894 SETTABLEKS                       R20 R19 K55 ["Size"]
      896 LOADK                            R20 K98 ["Body"]
      897 SETTABLEKS                       R20 R19 K95 ["Style"]
      899 GETUPVAL                         R21 9
      900 JUMPIFNOT                        R21 ; [+6]
      901 LOADK                            R22 K5 ["General"]
      902 LOADK                            R23 K126 ["LocalizationSettingsNonLinkTextExp"]
      903 NAMECALL                         R20 R1 K7 ["getText"]
      905 CALL                             R20 3 1
      906 JUMP                             ; [+5]
      907 LOADK                            R22 K5 ["General"]
      908 LOADK                            R23 K127 ["LocalizationSettingsNonLinkText"]
      909 NAMECALL                         R20 R1 K7 ["getText"]
      911 CALL                             R20 3 1
      912 SETTABLEKS                       R20 R19 K58 ["Text"]
      914 GETIMPORT                        R20 K65 [Enum.TextXAlignment.Left]
      916 SETTABLEKS                       R20 R19 K56 ["TextXAlignment"]
      918 GETIMPORT                        R20 K67 [Enum.TextYAlignment.Top]
      920 SETTABLEKS                       R20 R19 K57 ["TextYAlignment"]
      922 CALL                             R17 2 1
      923 SETTABLEKS                       R17 R16 K121 ["LinkTextLabel"]
      925 GETUPVAL                         R17 5
      926 GETTABLEKS                       R17 R17 K21 ["createElement"]
      928 GETUPVAL                         R18 13
      929 DUPTABLE                         R19 K128 [{"OnClick", "Size", "Style", "Text"}]
      930 GETUPVAL                         R20 17
      931 MOVE                             R21 R10
      932 CALL                             R20 1 1
      933 SETTABLEKS                       R20 R19 K82 ["OnClick"]
      935 GETIMPORT                        R20 K61 [UDim2.new]
      937 LOADN                            R21 0
      938 GETTABLEKS                       R22 R11 K125 ["X"]
      940 LOADN                            R23 0
      941 GETTABLEKS                       R24 R11 K116 ["Y"]
      943 CALL                             R20 4 1
      944 SETTABLEKS                       R20 R19 K55 ["Size"]
      946 LOADK                            R20 K98 ["Body"]
      947 SETTABLEKS                       R20 R19 K95 ["Style"]
      949 LOADK                            R22 K5 ["General"]
      950 LOADK                            R23 K6 ["LocalizationSettingsLinkText"]
      951 NAMECALL                         R20 R1 K7 ["getText"]
      953 CALL                             R20 3 1
      954 SETTABLEKS                       R20 R19 K58 ["Text"]
      956 CALL                             R17 2 1
      957 SETTABLEKS                       R17 R16 K73 ["LinkText"]
      959 CALL                             R13 3 1
      960 SETTABLEKS                       R13 R12 K19 ["HyperLink"]
      962 RETURN                           R12 1

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
