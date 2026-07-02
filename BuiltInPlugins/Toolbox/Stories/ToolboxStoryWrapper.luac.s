PROTO_0:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createThunkMiddleware"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["store"]
        6 JUMPIF                           R2 ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Store"]
       10 GETTABLEKS                       R2 R2 K3 ["new"]
       12 GETUPVAL                         R3 2
       13 LOADNIL                          R4
       14 MOVE                             R5 R1
       15 CALL                             R2 3 1
       16 GETTABLEKS                       R3 R0 K4 ["storeSetup"]
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETTABLEKS                       R3 R0 K4 ["storeSetup"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R4 R0 K6 ["pluginGui"]
       25 ORK                              R3 R4 K5 []
       26 GETTABLEKS                       R4 R0 K7 ["settings"]
       28 JUMPIF                           R4 ; [+6]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K3 ["new"]
       32 GETIMPORT                        R5 K9 [plugin]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R0 K10 ["networkInterface"]
       37 JUMPIF                           R5 ; [+4]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K3 ["new"]
       41 CALL                             R5 0 1
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K3 ["new"]
       45 MOVE                             R7 R4
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K2 ["Store"]
       50 GETTABLEKS                       R7 R7 K3 ["new"]
       52 MOVE                             R8 R2
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 6
       55 GETTABLEKS                       R8 R8 K11 ["API"]
       57 GETTABLEKS                       R8 R8 K3 ["new"]
       59 DUPTABLE                         R9 K13 [{"networking"}]
       60 GETUPVAL                         R10 7
       61 GETTABLEKS                       R10 R10 K14 ["mock"]
       63 CALL                             R10 0 1
       64 SETTABLEKS                       R10 R9 K12 ["networking"]
       66 CALL                             R8 1 1
       67 GETUPVAL                         R9 8
       68 GETUPVAL                         R10 9
       69 CALL                             R10 0 1
       70 GETUPVAL                         R11 10
       71 CALL                             R9 2 1
       72 GETUPVAL                         R10 11
       73 GETTABLEKS                       R10 R10 K3 ["new"]
       75 GETTABLEKS                       R11 R0 K15 ["assetAnalytics"]
       77 JUMPIF                           R11 ; [+4]
       78 GETUPVAL                         R11 12
       79 GETTABLEKS                       R11 R11 K14 ["mock"]
       81 CALL                             R11 0 1
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R0 K16 ["legacyTheme"]
       85 JUMPIF                           R11 ; [+4]
       86 GETUPVAL                         R11 13
       87 GETTABLEKS                       R11 R11 K17 ["createDummyThemeManager"]
       89 CALL                             R11 0 1
       90 GETUPVAL                         R12 14
       91 GETTABLEKS                       R12 R12 K18 ["Resources"]
       93 GETTABLEKS                       R12 R12 K19 ["Localization"]
       95 GETTABLEKS                       R12 R12 K20 ["SourceStrings"]
       97 GETUPVAL                         R13 14
       98 GETTABLEKS                       R13 R13 K18 ["Resources"]
      100 GETTABLEKS                       R13 R13 K19 ["Localization"]
      102 GETTABLEKS                       R13 R13 K21 ["LocalizedStrings"]
      104 GETUPVAL                         R14 6
      105 GETTABLEKS                       R14 R14 K19 ["Localization"]
      107 GETTABLEKS                       R14 R14 K3 ["new"]
      109 DUPTABLE                         R15 K31 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Toolbox", ["libraries"], ["overrideGetLocale"], ["overrideLocaleId"] = "en-us", ["overrideLocaleChangedSignal"]}]
      110 SETTABLEKS                       R12 R15 K22 ["stringResourceTable"]
      112 SETTABLEKS                       R13 R15 K23 ["translationResourceTable"]
      114 NEWTABLE                         R16 1 0
      116 GETUPVAL                         R17 15
      117 GETTABLEKS                       R17 R17 K18 ["Resources"]
      119 GETTABLEKS                       R17 R17 K32 ["LOCALIZATION_PROJECT_NAME"]
      121 DUPTABLE                         R18 K33 [{"stringResourceTable", "translationResourceTable"}]
      122 GETUPVAL                         R19 15
      123 GETTABLEKS                       R19 R19 K18 ["Resources"]
      125 GETTABLEKS                       R19 R19 K20 ["SourceStrings"]
      127 SETTABLEKS                       R19 R18 K22 ["stringResourceTable"]
      129 GETUPVAL                         R19 15
      130 GETTABLEKS                       R19 R19 K18 ["Resources"]
      132 GETTABLEKS                       R19 R19 K21 ["LocalizedStrings"]
      134 SETTABLEKS                       R19 R18 K23 ["translationResourceTable"]
      136 SETTABLE                         R18 R16 R17
      137 SETTABLEKS                       R16 R15 K26 ["libraries"]
      139 DUPCLOSURE                       R16 K34 [PROTO_0]
      140 SETTABLEKS                       R16 R15 K27 ["overrideGetLocale"]
      142 GETUPVAL                         R16 16
      143 GETTABLEKS                       R16 R16 K3 ["new"]
      145 CALL                             R16 0 1
      146 SETTABLEKS                       R16 R15 K30 ["overrideLocaleChangedSignal"]
      148 CALL                             R14 1 1
      149 NEWTABLE                         R15 0 6
      151 MOVE                             R16 R7
      152 MOVE                             R17 R6
      153 MOVE                             R18 R8
      154 MOVE                             R19 R10
      155 MOVE                             R20 R9
      156 MOVE                             R21 R14
      157 SETLIST                          R15 R16 6 [1]
      159 GETUPVAL                         R16 17
      160 GETTABLEKS                       R16 R16 K35 ["createElement"]
      162 GETUPVAL                         R17 18
      163 DUPTABLE                         R18 K37 [{"store", "plugin", "pluginGui", "settings", "theme", "networkInterface"}]
      164 SETTABLEKS                       R2 R18 K1 ["store"]
      166 GETIMPORT                        R19 K9 [plugin]
      168 SETTABLEKS                       R19 R18 K8 ["plugin"]
      170 SETTABLEKS                       R3 R18 K6 ["pluginGui"]
      172 SETTABLEKS                       R4 R18 K7 ["settings"]
      174 SETTABLEKS                       R11 R18 K36 ["theme"]
      176 SETTABLEKS                       R5 R18 K10 ["networkInterface"]
      178 NEWTABLE                         R19 0 1
      180 GETUPVAL                         R20 6
      181 GETTABLEKS                       R20 R20 K38 ["provide"]
      183 MOVE                             R21 R15
      184 GETUPVAL                         R23 17
      185 GETTABLEKS                       R23 R23 K39 ["Children"]
      187 GETTABLE                         R22 R0 R23
      188 CALL                             R20 2 -1
      189 SETLIST                          R19 R20 -1 [1]
      191 CALL                             R16 3 -1
      192 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K5 [require]
       21 GETTABLEKS                       R5 R1 K8 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K9 ["Http"]
       26 GETTABLEKS                       R5 R5 K10 ["Networking"]
       28 GETTABLEKS                       R6 R4 K11 ["ContextServices"]
       30 GETTABLEKS                       R7 R4 K12 ["Style"]
       32 GETTABLEKS                       R7 R7 K13 ["ThemeSwitcher"]
       34 GETTABLEKS                       R8 R4 K14 ["Util"]
       36 GETTABLEKS                       R8 R8 K15 ["Signal"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R10 R0 K16 ["Src"]
       42 GETTABLEKS                       R10 R10 K14 ["Util"]
       44 GETTABLEKS                       R10 R10 K17 ["Settings"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K16 ["Src"]
       51 GETTABLEKS                       R11 R11 K14 ["Util"]
       53 GETTABLEKS                       R11 R11 K18 ["ToolboxTheme"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R0 K16 ["Src"]
       60 GETTABLEKS                       R12 R12 K19 ["Reducers"]
       62 GETTABLEKS                       R12 R12 K20 ["ToolboxReducer"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R0 K16 ["Src"]
       69 GETTABLEKS                       R13 R13 K10 ["Networking"]
       71 GETTABLEKS                       R13 R13 K21 ["NetworkInterfaceMock"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R14 R0 K16 ["Src"]
       78 GETTABLEKS                       R14 R14 K14 ["Util"]
       80 GETTABLEKS                       R14 R14 K22 ["Analytics"]
       82 GETTABLEKS                       R14 R14 K23 ["AssetAnalyticsContextItem"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K16 ["Src"]
       89 GETTABLEKS                       R15 R15 K14 ["Util"]
       91 GETTABLEKS                       R15 R15 K22 ["Analytics"]
       93 GETTABLEKS                       R15 R15 K24 ["AssetAnalytics"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K16 ["Src"]
      100 GETTABLEKS                       R16 R16 K25 ["Components"]
      102 GETTABLEKS                       R16 R16 K26 ["ExternalServicesWrapper"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K16 ["Src"]
      109 GETTABLEKS                       R17 R17 K11 ["ContextServices"]
      111 GETTABLEKS                       R17 R17 K17 ["Settings"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K16 ["Src"]
      118 GETTABLEKS                       R18 R18 K14 ["Util"]
      120 GETTABLEKS                       R18 R18 K27 ["makeTheme"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K16 ["Src"]
      127 GETTABLEKS                       R19 R19 K28 ["Themes"]
      129 GETTABLEKS                       R19 R19 K29 ["getAssetConfigTheme"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K30 ["TestUtils"]
      136 GETTABLEKS                       R20 R20 K31 ["CoreTestUtils"]
      138 CALL                             R19 1 1
      139 DUPCLOSURE                       R20 K32 [PROTO_1]
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R15
      159 RETURN                           R20 1
