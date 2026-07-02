PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EmulatedGameLocale"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["EmulatedGameLocale"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlayerEmulationEnabled"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETTABLEKS                       R2 R0 K3 ["state"]
        4 GETTABLEKS                       R2 R2 K4 ["localeId"]
        6 LOADK                            R3 K5 ["-"]
        7 LOADK                            R4 K6 ["_"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R2 R0 K7 ["props"]
       11 GETTABLEKS                       R2 R2 K8 ["languagesTable"]
       13 JUMPIFEQKS                       R1 K9 [""] ; [+7]
       15 GETTABLE                         R3 R2 R1
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETTABLE                         R3 R2 R1
       18 GETTABLEKS                       R3 R3 K10 ["displayText"]
       20 RETURN                           R3 1
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETIMPORT                        R2 K4 [string.gsub]
        6 GETTABLEKS                       R3 R0 K5 ["state"]
        8 GETTABLEKS                       R3 R3 K6 ["localeId"]
       10 LOADK                            R4 K7 ["-"]
       11 LOADK                            R5 K8 ["_"]
       12 CALL                             R2 3 1
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K9 ["languagesTable"]
       17 JUMPIFEQKS                       R2 K10 [""] ; [+18]
       19 GETTABLE                         R4 R3 R2
       20 JUMPIFNOT                        R4 ; [+15]
       21 GETIMPORT                        R4 K12 [string.format]
       23 LOADK                            R7 K13 ["LanguageSection"]
       24 LOADK                            R8 K14 ["InstructionText"]
       25 NAMECALL                         R5 R1 K15 ["getText"]
       27 CALL                             R5 3 1
       28 GETTABLE                         R6 R3 R2
       29 GETTABLEKS                       R6 R6 K16 ["displayText"]
       31 GETTABLE                         R7 R3 R2
       32 GETTABLEKS                       R7 R7 K17 ["languageCode"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1
       36 LOADK                            R4 K10 [""]
       37 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["LOCALEID_SETTING_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K5 ["EmulatedGameLocale"]
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["localeId"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["PlayerEmulationEnabled"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K3 ["EmulatedGameLocale"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R2 R3 K3 ["EmulatedGameLocale"]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EmulatedGameLocale"]
        3 DUPTABLE                         R4 K2 [{"localeId"}]
        4 SETTABLEKS                       R1 R4 K1 ["localeId"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K4 ["props"]
       11 GETTABLEKS                       R2 R2 K5 ["Plugin"]
       13 NAMECALL                         R2 R2 K6 ["get"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K7 ["LOCALEID_SETTING_KEY"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R2 K8 ["SetSetting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["localeId"]
        2 JUMPIF                           R1 ; [+13]
        3 GETUPVAL                         R1 0
        4 LOADK                            R2 K1 [""]
        5 SETTABLEKS                       R2 R1 K2 ["EmulatedGameLocale"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["textBoxRef"]
       10 GETTABLEKS                       R1 R1 K4 ["current"]
       12 NAMECALL                         R1 R1 K5 ["CaptureFocus"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R1 R0 K0 ["localeId"]
       18 GETUPVAL                         R2 0
       19 SETTABLEKS                       R1 R2 K2 ["EmulatedGameLocale"]
       21 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 4 0
        2 GETTABLEKS                       R2 R0 K0 ["displayText"]
        4 JUMPIFEQKNIL                     R2 ; [+14]
        6 GETTABLEKS                       R2 R0 K0 ["displayText"]
        8 SETTABLEKS                       R2 R1 K1 ["Id"]
       10 GETTABLEKS                       R2 R0 K0 ["displayText"]
       12 SETTABLEKS                       R2 R1 K2 ["Label"]
       14 GETTABLEKS                       R2 R0 K3 ["localeId"]
       16 SETTABLEKS                       R2 R1 K3 ["localeId"]
       18 RETURN                           R1 1
       19 GETTABLEKS                       R2 R0 K4 ["displayTextStringKey"]
       21 JUMPIFEQKNIL                     R2 ; [+29]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K5 ["props"]
       26 GETTABLEKS                       R2 R2 K6 ["Localization"]
       28 GETTABLEKS                       R4 R0 K7 ["displayTextSectionKey"]
       30 GETTABLEKS                       R5 R0 K4 ["displayTextStringKey"]
       32 NAMECALL                         R2 R2 K8 ["getText"]
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K1 ["Id"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K5 ["props"]
       40 GETTABLEKS                       R2 R2 K6 ["Localization"]
       42 GETTABLEKS                       R4 R0 K7 ["displayTextSectionKey"]
       44 GETTABLEKS                       R5 R0 K4 ["displayTextStringKey"]
       46 NAMECALL                         R2 R2 K8 ["getText"]
       48 CALL                             R2 3 1
       49 SETTABLEKS                       R2 R1 K2 ["Label"]
       51 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"localeId"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["EmulatedGameLocale"]
        4 SETTABLEKS                       R2 R1 K0 ["localeId"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K4 ["createRef"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K5 ["textBoxRef"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K6 ["signalTokens"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onItemClicked"]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K8 ["createLanguageListForSelectInput"]
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onRobloxForcePlayModeRobloxLocaleIdChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Networking"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K3 ["loadLanguages"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 LOADK                            R4 K4 ["EmulatedGameLocale"]
       15 NAMECALL                         R2 R2 K5 ["GetPropertyChangedSignal"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R2 K6 ["Connect"]
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R4 R0 K7 ["signalTokens"]
       25 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R3 K10 [table.insert]
       30 CALL                             R3 2 0
       31 NAMECALL                         R3 R0 K11 ["initLocaleId"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["signalTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["signalTokens"]
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 GETTABLEKS                       R0 R0 K2 ["Text"]
       13 GETUPVAL                         R1 1
       14 SETTABLEKS                       R0 R1 K3 ["EmulatedGameLocale"]
       16 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["mainSwitchEnabled"]
        6 GETTABLEKS                       R4 R1 K3 ["localeId"]
        8 GETTABLEKS                       R5 R2 K4 ["languagesList"]
       10 GETTABLEKS                       R6 R2 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R2 K6 ["Localization"]
       14 GETTABLEKS                       R8 R2 K7 ["LayoutOrder"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 LOADK                            R10 K9 ["Frame"]
       20 DUPTABLE                         R11 K14 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
       21 GETIMPORT                        R12 K17 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R12 R11 K10 ["AutomaticSize"]
       25 GETIMPORT                        R12 K20 [UDim2.fromScale]
       27 LOADN                            R13 1
       28 LOADN                            R14 0
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R11 K11 ["Size"]
       32 DUPTABLE                         R12 K25 [{"Layout", "Label", "LanguageDropdown", "LocaleIdTextBox"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K8 ["createElement"]
       36 LOADK                            R14 K26 ["UIListLayout"]
       37 DUPTABLE                         R15 K34 [{["HorizontalFlex"], ["VerticalAlignment"], ["SortOrder"], ["FillDirection"], ["Padding"], ["Wraps"] = True}]
       38 GETIMPORT                        R16 K37 [Enum.UIFlexAlignment.SpaceBetween]
       40 SETTABLEKS                       R16 R15 K27 ["HorizontalFlex"]
       42 GETIMPORT                        R16 K39 [Enum.VerticalAlignment.Center]
       44 SETTABLEKS                       R16 R15 K28 ["VerticalAlignment"]
       46 GETIMPORT                        R16 K40 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R16 R15 K29 ["SortOrder"]
       50 GETIMPORT                        R16 K42 [Enum.FillDirection.Horizontal]
       52 SETTABLEKS                       R16 R15 K30 ["FillDirection"]
       54 GETTABLEKS                       R16 R6 K43 ["HORIZONTAL_LISTLAYOUT_PADDING"]
       56 SETTABLEKS                       R16 R15 K31 ["Padding"]
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K21 ["Layout"]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K8 ["createElement"]
       64 GETUPVAL                         R14 1
       65 DUPTABLE                         R15 K47 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["StyleModifier"], ["Text"], ["TextXAlignment"]}]
       66 GETIMPORT                        R16 K49 [Enum.AutomaticSize.XY]
       68 SETTABLEKS                       R16 R15 K10 ["AutomaticSize"]
       70 JUMPIFNOT                        R3 ; [+2]
       71 LOADNIL                          R16
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R16 2
       74 GETTABLEKS                       R16 R16 K50 ["Disabled"]
       76 SETTABLEKS                       R16 R15 K44 ["StyleModifier"]
       78 LOADK                            R18 K51 ["LanguageSection"]
       79 LOADK                            R19 K52 ["LabelText"]
       80 NAMECALL                         R16 R7 K53 ["getText"]
       82 CALL                             R16 3 1
       83 SETTABLEKS                       R16 R15 K45 ["Text"]
       85 GETIMPORT                        R16 K55 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R16 R15 K46 ["TextXAlignment"]
       89 DUPTABLE                         R16 K57 [{"FlexItem"}]
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K8 ["createElement"]
       93 LOADK                            R18 K58 ["UIFlexItem"]
       94 DUPTABLE                         R19 K60 [{"FlexMode"}]
       95 GETIMPORT                        R20 K63 [Enum.UIFlexMode.Grow]
       97 SETTABLEKS                       R20 R19 K59 ["FlexMode"]
       99 CALL                             R17 2 1
      100 SETTABLEKS                       R17 R16 K56 ["FlexItem"]
      102 CALL                             R13 3 1
      103 SETTABLEKS                       R13 R12 K22 ["Label"]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K8 ["createElement"]
      108 GETUPVAL                         R14 3
      109 DUPTABLE                         R15 K69 [{["Items"], ["LayoutOrder"] = 2, ["OnItemActivated"], ["SelectedId"], ["Enabled"]}]
      110 GETUPVAL                         R16 4
      111 MOVE                             R17 R5
      112 GETTABLEKS                       R18 R0 K70 ["createLanguageListForSelectInput"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K64 ["Items"]
      117 GETTABLEKS                       R16 R0 K71 ["onItemClicked"]
      119 SETTABLEKS                       R16 R15 K66 ["OnItemActivated"]
      121 NAMECALL                         R16 R0 K72 ["getCurrentLanguageName"]
      123 CALL                             R16 1 1
      124 JUMPIF                           R16 ; [+5]
      125 LOADK                            R18 K51 ["LanguageSection"]
      126 LOADK                            R19 K73 ["CustomLanguageDisplayText"]
      127 NAMECALL                         R16 R7 K53 ["getText"]
      129 CALL                             R16 3 1
      130 SETTABLEKS                       R16 R15 K67 ["SelectedId"]
      132 SETTABLEKS                       R3 R15 K68 ["Enabled"]
      134 CALL                             R13 2 1
      135 SETTABLEKS                       R13 R12 K23 ["LanguageDropdown"]
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R13 R13 K8 ["createElement"]
      140 LOADK                            R14 K9 ["Frame"]
      141 DUPTABLE                         R15 K79 [{["Size"], ["BorderColor3"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["LayoutOrder"] = 3}]
      142 GETTABLEKS                       R16 R6 K80 ["LOCALEID_TEXTBOX_SIZE"]
      144 SETTABLEKS                       R16 R15 K11 ["Size"]
      146 GETTABLEKS                       R16 R6 K81 ["BorderColor"]
      148 SETTABLEKS                       R16 R15 K74 ["BorderColor3"]
      150 GETTABLEKS                       R16 R6 K82 ["BackgroundColor"]
      152 SETTABLEKS                       R16 R15 K77 ["BackgroundColor3"]
      154 DUPTABLE                         R16 K84 [{"Padding", "TextBox"}]
      155 GETUPVAL                         R17 0
      156 GETTABLEKS                       R17 R17 K8 ["createElement"]
      158 LOADK                            R18 K85 ["UIPadding"]
      159 DUPTABLE                         R19 K87 [{"PaddingLeft"}]
      160 GETTABLEKS                       R20 R6 K88 ["TEXT_INDENT_PADDING"]
      162 SETTABLEKS                       R20 R19 K86 ["PaddingLeft"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K31 ["Padding"]
      167 GETUPVAL                         R17 0
      168 GETTABLEKS                       R17 R17 K8 ["createElement"]
      170 GETUPVAL                         R18 5
      171 NEWTABLE                         R19 4 0
      173 NEWCLOSURE                       R20 P0
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U6
      176 SETTABLEKS                       R20 R19 K89 ["OnFocusLost"]
      178 NOT                              R20 R3
      179 SETTABLEKS                       R20 R19 K50 ["Disabled"]
      181 SETTABLEKS                       R4 R19 K45 ["Text"]
      183 GETUPVAL                         R20 0
      184 GETTABLEKS                       R20 R20 K90 ["Ref"]
      186 GETTABLEKS                       R21 R0 K91 ["textBoxRef"]
      188 SETTABLE                         R21 R19 R20
      189 CALL                             R17 2 1
      190 SETTABLEKS                       R17 R16 K83 ["TextBox"]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K24 ["LocaleIdTextBox"]
      195 CALL                             R9 3 1
      196 GETUPVAL                         R10 0
      197 GETTABLEKS                       R10 R10 K8 ["createElement"]
      199 LOADK                            R11 K9 ["Frame"]
      200 DUPTABLE                         R12 K92 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      201 GETIMPORT                        R13 K17 [Enum.AutomaticSize.Y]
      203 SETTABLEKS                       R13 R12 K10 ["AutomaticSize"]
      205 GETIMPORT                        R13 K20 [UDim2.fromScale]
      207 LOADN                            R14 1
      208 LOADN                            R15 0
      209 CALL                             R13 2 1
      210 SETTABLEKS                       R13 R12 K11 ["Size"]
      212 DUPTABLE                         R13 K94 [{"Padding", "TextLabel"}]
      213 GETUPVAL                         R14 0
      214 GETTABLEKS                       R14 R14 K8 ["createElement"]
      216 LOADK                            R15 K85 ["UIPadding"]
      217 DUPTABLE                         R16 K96 [{"PaddingLeft", "PaddingBottom"}]
      218 GETTABLEKS                       R17 R6 K88 ["TEXT_INDENT_PADDING"]
      220 SETTABLEKS                       R17 R16 K86 ["PaddingLeft"]
      222 GETTABLEKS                       R17 R6 K43 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      224 SETTABLEKS                       R17 R16 K95 ["PaddingBottom"]
      226 CALL                             R14 2 1
      227 SETTABLEKS                       R14 R13 K31 ["Padding"]
      229 GETUPVAL                         R14 0
      230 GETTABLEKS                       R14 R14 K8 ["createElement"]
      232 GETUPVAL                         R15 1
      233 DUPTABLE                         R16 K99 [{["AutomaticSize"], ["Size"], ["StyleModifier"], ["TextSize"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      234 GETIMPORT                        R17 K17 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R17 R16 K10 ["AutomaticSize"]
      238 GETIMPORT                        R17 K20 [UDim2.fromScale]
      240 LOADN                            R18 1
      241 LOADN                            R19 0
      242 CALL                             R17 2 1
      243 SETTABLEKS                       R17 R16 K11 ["Size"]
      245 JUMPIFNOT                        R3 ; [+2]
      246 LOADNIL                          R17
      247 JUMP                             ; [+3]
      248 GETUPVAL                         R17 2
      249 GETTABLEKS                       R17 R17 K50 ["Disabled"]
      251 SETTABLEKS                       R17 R16 K44 ["StyleModifier"]
      253 GETTABLEKS                       R17 R6 K100 ["LANGUAGE_INSTRUCTION_TEXT_SIZE"]
      255 SETTABLEKS                       R17 R16 K97 ["TextSize"]
      257 NAMECALL                         R17 R0 K101 ["getTestLangInstructionText"]
      259 CALL                             R17 1 1
      260 SETTABLEKS                       R17 R16 K45 ["Text"]
      262 GETIMPORT                        R17 K55 [Enum.TextXAlignment.Left]
      264 SETTABLEKS                       R17 R16 K46 ["TextXAlignment"]
      266 CALL                             R14 2 1
      267 SETTABLEKS                       R14 R13 K93 ["TextLabel"]
      269 CALL                             R10 3 1
      270 GETUPVAL                         R11 0
      271 GETTABLEKS                       R11 R11 K8 ["createElement"]
      273 LOADK                            R12 K9 ["Frame"]
      274 DUPTABLE                         R13 K102 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      275 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
      277 SETTABLEKS                       R14 R13 K10 ["AutomaticSize"]
      279 GETIMPORT                        R14 K20 [UDim2.fromScale]
      281 LOADN                            R15 1
      282 LOADN                            R16 0
      283 CALL                             R14 2 1
      284 SETTABLEKS                       R14 R13 K11 ["Size"]
      286 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      288 DUPTABLE                         R14 K105 [{"Layout", "SelectorModule", "TextModule"}]
      289 GETUPVAL                         R15 0
      290 GETTABLEKS                       R15 R15 K8 ["createElement"]
      292 LOADK                            R16 K26 ["UIListLayout"]
      293 DUPTABLE                         R17 K106 [{"SortOrder", "FillDirection", "Padding"}]
      294 GETIMPORT                        R18 K40 [Enum.SortOrder.LayoutOrder]
      296 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      298 GETIMPORT                        R18 K108 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R18 R17 K30 ["FillDirection"]
      302 GETTABLEKS                       R18 R6 K43 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      304 SETTABLEKS                       R18 R17 K31 ["Padding"]
      306 CALL                             R15 2 1
      307 SETTABLEKS                       R15 R14 K21 ["Layout"]
      309 SETTABLEKS                       R9 R14 K103 ["SelectorModule"]
      311 SETTABLEKS                       R10 R14 K104 ["TextModule"]
      313 CALL                             R11 3 -1
      314 RETURN                           R11 -1

PROTO_16:
        0 DUPTABLE                         R2 K3 [{"mainSwitchEnabled", "languagesTable", "languagesList"}]
        1 GETTABLEKS                       R3 R0 K4 ["MainSwitch"]
        3 GETTABLEKS                       R3 R3 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 GETTABLEKS                       R3 R0 K5 ["Languages"]
        9 GETTABLEKS                       R3 R3 K1 ["languagesTable"]
       11 SETTABLEKS                       R3 R2 K1 ["languagesTable"]
       13 GETTABLEKS                       R3 R0 K5 ["Languages"]
       15 GETTABLEKS                       R3 R3 K2 ["languagesList"]
       17 SETTABLEKS                       R3 R2 K2 ["languagesList"]
       19 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"loadLanguages"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["loadLanguages"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PlayerEmulatorService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K15 ["withContext"]
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R2 K16 ["Src"]
       50 GETTABLEKS                       R9 R9 K14 ["ContextServices"]
       52 GETTABLEKS                       R9 R9 K17 ["NetworkingContext"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K9 [require]
       57 GETTABLEKS                       R10 R2 K16 ["Src"]
       59 GETTABLEKS                       R10 R10 K18 ["Util"]
       61 GETTABLEKS                       R10 R10 K19 ["Constants"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K9 [require]
       66 GETTABLEKS                       R11 R2 K16 ["Src"]
       68 GETTABLEKS                       R11 R11 K18 ["Util"]
       70 GETTABLEKS                       R11 R11 K20 ["PlayerEmulatorUtilities"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R10 R10 K21 ["getStudioLocaleId"]
       75 GETTABLEKS                       R11 R5 K22 ["UI"]
       77 GETTABLEKS                       R12 R11 K23 ["SelectInput"]
       79 GETTABLEKS                       R13 R11 K24 ["TextInput"]
       81 GETTABLEKS                       R14 R11 K25 ["TextLabel"]
       83 GETTABLEKS                       R15 R5 K26 ["Dash"]
       85 GETTABLEKS                       R16 R15 K27 ["map"]
       87 GETTABLEKS                       R17 R5 K18 ["Util"]
       89 GETTABLEKS                       R17 R17 K28 ["StyleModifier"]
       91 GETIMPORT                        R18 K9 [require]
       93 GETTABLEKS                       R19 R2 K16 ["Src"]
       95 GETTABLEKS                       R19 R19 K29 ["Networking"]
       97 GETTABLEKS                       R19 R19 K30 ["Requests"]
       99 GETTABLEKS                       R19 R19 K31 ["GetLanguages"]
      101 CALL                             R18 1 1
      102 DUPCLOSURE                       R19 K32 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 DUPCLOSURE                       R20 K33 [PROTO_1]
      105 CAPTURE                          VAL R1
      106 DUPCLOSURE                       R21 K34 [PROTO_2]
      107 CAPTURE                          VAL R1
      108 MOVE                             R22 R10
      109 CALL                             R22 0 1
      110 SETTABLEKS                       R22 R0 K35 ["RobloxForcePlayModeRobloxLocaleId"]
      112 GETTABLEKS                       R22 R3 K36 ["PureComponent"]
      114 LOADK                            R24 K37 ["LanguageSection"]
      115 NAMECALL                         R22 R22 K38 ["extend"]
      117 CALL                             R22 2 1
      118 DUPCLOSURE                       R23 K39 [PROTO_3]
      119 SETTABLEKS                       R23 R22 K40 ["getCurrentLanguageName"]
      121 DUPCLOSURE                       R23 K41 [PROTO_4]
      122 SETTABLEKS                       R23 R22 K42 ["getTestLangInstructionText"]
      124 DUPCLOSURE                       R23 K43 [PROTO_5]
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R23 R22 K44 ["initLocaleId"]
      129 DUPCLOSURE                       R23 K45 [PROTO_6]
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R10
      132 SETTABLEKS                       R23 R22 K46 ["onPlayerEmulationEnabledChanged"]
      134 DUPCLOSURE                       R23 K47 [PROTO_7]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R9
      137 SETTABLEKS                       R23 R22 K48 ["onRobloxForcePlayModeRobloxLocaleIdChanged"]
      139 DUPCLOSURE                       R23 K49 [PROTO_10]
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R23 R22 K50 ["init"]
      144 DUPCLOSURE                       R23 K51 [PROTO_12]
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R23 R22 K52 ["didMount"]
      148 DUPCLOSURE                       R23 K53 [PROTO_13]
      149 SETTABLEKS                       R23 R22 K54 ["willUnmount"]
      151 DUPCLOSURE                       R23 K55 [PROTO_15]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R23 R22 K56 ["render"]
      161 MOVE                             R23 R7
      162 DUPTABLE                         R24 K60 [{"Stylizer", "Localization", "Networking", "Plugin"}]
      163 GETTABLEKS                       R25 R6 K57 ["Stylizer"]
      165 SETTABLEKS                       R25 R24 K57 ["Stylizer"]
      167 GETTABLEKS                       R25 R6 K58 ["Localization"]
      169 SETTABLEKS                       R25 R24 K58 ["Localization"]
      171 SETTABLEKS                       R8 R24 K29 ["Networking"]
      173 GETTABLEKS                       R25 R6 K59 ["Plugin"]
      175 SETTABLEKS                       R25 R24 K59 ["Plugin"]
      177 CALL                             R23 1 1
      178 MOVE                             R24 R22
      179 CALL                             R23 1 1
      180 MOVE                             R22 R23
      181 DUPCLOSURE                       R23 K61 [PROTO_16]
      182 DUPCLOSURE                       R24 K62 [PROTO_18]
      183 CAPTURE                          VAL R18
      184 GETTABLEKS                       R25 R4 K63 ["connect"]
      186 MOVE                             R26 R23
      187 MOVE                             R27 R24
      188 CALL                             R25 2 1
      189 MOVE                             R26 R22
      190 CALL                             R25 1 -1
      191 RETURN                           R25 -1
