PROTO_0:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["new"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["plugin"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K2 ["Plugin"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K0 ["new"]
       14 GETIMPORT                        R2 K4 [Instance.new]
       16 LOADK                            R3 K5 ["StyleSheet"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 1
       19 SETTABLEKS                       R1 R0 K6 ["Design"]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R1 R2 K0 ["new"]
       24 DUPTABLE                         R2 K10 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K7 ["stringResourceTable"]
       28 GETUPVAL                         R3 5
       29 SETTABLEKS                       R3 R2 K8 ["translationResourceTable"]
       31 LOADK                            R3 K11 ["PlaceVersionHistory"]
       32 SETTABLEKS                       R3 R2 K9 ["pluginName"]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K12 ["Localization"]
       37 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 2
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 8
       27 GETTABLEKS                       R5 R6 K3 ["provide"]
       29 MOVE                             R6 R3
       30 DUPTABLE                         R7 K5 [{"MainWidget"}]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K6 ["createElement"]
       34 GETUPVAL                         R11 9
       35 GETTABLEKS                       R10 R11 K7 ["UI"]
       37 GETTABLEKS                       R9 R10 K8 ["DockWidget"]
       39 NEWTABLE                         R10 8 0
       41 LOADK                            R11 K9 ["PlaceVersionHistory"]
       42 SETTABLEKS                       R11 R10 K10 ["Id"]
       44 JUMPIFNOT                        R1 ; [+8]
       45 GETTABLEKS                       R11 R3 K11 ["Localization"]
       47 LOADK                            R13 K12 ["Label"]
       48 LOADK                            R14 K13 ["VersionHistory"]
       49 NAMECALL                         R11 R11 K14 ["getText"]
       51 CALL                             R11 3 1
       52 JUMP                             ; [+1]
       53 LOADK                            R11 K15 [""]
       54 SETTABLEKS                       R11 R10 K16 ["Title"]
       56 SETTABLEKS                       R1 R10 K17 ["Enabled"]
       58 GETTABLEKS                       R11 R0 K18 ["widget"]
       60 SETTABLEKS                       R11 R10 K19 ["Widget"]
       62 SETTABLEKS                       R2 R10 K20 ["OnWidgetRestored"]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R12 R13 K21 ["Change"]
       67 GETTABLEKS                       R11 R12 K17 ["Enabled"]
       69 SETTABLE                         R4 R10 R11
       70 DUPTABLE                         R11 K23 [{"ContextStack"}]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R12 R13 K6 ["createElement"]
       74 GETUPVAL                         R14 10
       75 GETTABLEKS                       R13 R14 K22 ["ContextStack"]
       77 DUPTABLE                         R14 K25 [{"providers"}]
       78 NEWTABLE                         R15 0 6
       80 GETUPVAL                         R17 2
       81 GETTABLEKS                       R16 R17 K6 ["createElement"]
       83 GETUPVAL                         R17 11
       84 CALL                             R16 1 1
       85 GETUPVAL                         R18 2
       86 GETTABLEKS                       R17 R18 K6 ["createElement"]
       88 GETUPVAL                         R18 12
       89 DUPTABLE                         R19 K26 [{"widget"}]
       90 GETTABLEKS                       R20 R0 K18 ["widget"]
       92 SETTABLEKS                       R20 R19 K18 ["widget"]
       94 CALL                             R17 2 1
       95 GETUPVAL                         R19 2
       96 GETTABLEKS                       R18 R19 K6 ["createElement"]
       98 GETUPVAL                         R19 13
       99 CALL                             R18 1 1
      100 GETUPVAL                         R20 2
      101 GETTABLEKS                       R19 R20 K6 ["createElement"]
      103 GETUPVAL                         R20 14
      104 CALL                             R19 1 1
      105 GETUPVAL                         R21 2
      106 GETTABLEKS                       R20 R21 K6 ["createElement"]
      108 GETUPVAL                         R21 15
      109 CALL                             R20 1 1
      110 GETUPVAL                         R22 2
      111 GETTABLEKS                       R21 R22 K6 ["createElement"]
      113 GETUPVAL                         R22 16
      114 CALL                             R21 1 -1
      115 SETLIST                          R15 R16 -1 [1]
      117 SETTABLEKS                       R15 R14 K24 ["providers"]
      119 DUPTABLE                         R15 K28 [{"App"}]
      120 MOVE                             R16 R1
      121 JUMPIFNOT                        R16 ; [+14]
      122 GETUPVAL                         R17 2
      123 GETTABLEKS                       R16 R17 K6 ["createElement"]
      125 GETUPVAL                         R17 17
      126 LOADNIL                          R18
      127 DUPTABLE                         R19 K30 [{"MainView"}]
      128 GETUPVAL                         R21 2
      129 GETTABLEKS                       R20 R21 K6 ["createElement"]
      131 GETUPVAL                         R21 18
      132 CALL                             R20 1 1
      133 SETTABLEKS                       R20 R19 K29 ["MainView"]
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K27 ["App"]
      138 CALL                             R12 3 1
      139 SETTABLEKS                       R12 R11 K22 ["ContextStack"]
      141 CALL                             R8 3 1
      142 SETTABLEKS                       R8 R7 K4 ["MainWidget"]
      144 CALL                             R5 2 -1
      145 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Plugin"]
       39 GETTABLEKS                       R7 R5 K13 ["Design"]
       41 GETTABLEKS                       R8 R5 K14 ["Localization"]
       43 GETTABLEKS                       R12 R0 K15 ["Src"]
       45 GETTABLEKS                       R11 R12 K16 ["Resources"]
       47 GETTABLEKS                       R10 R11 K14 ["Localization"]
       49 GETTABLEKS                       R9 R10 K17 ["SourceStrings"]
       51 GETTABLEKS                       R13 R0 K15 ["Src"]
       53 GETTABLEKS                       R12 R13 K16 ["Resources"]
       55 GETTABLEKS                       R11 R12 K14 ["Localization"]
       57 GETTABLEKS                       R10 R11 K18 ["LocalizedStrings"]
       59 GETTABLEKS                       R12 R4 K19 ["Components"]
       61 GETTABLEKS                       R11 R12 K20 ["FoundationProviderAdapter"]
       63 GETTABLEKS                       R13 R0 K15 ["Src"]
       65 GETTABLEKS                       R12 R13 K19 ["Components"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K21 ["MainView"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R15 R0 K15 ["Src"]
       74 GETTABLEKS                       R14 R15 K22 ["Hooks"]
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R16 R14 K23 ["useActionConnection"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R17 R0 K15 ["Src"]
       83 GETTABLEKS                       R16 R17 K24 ["Contexts"]
       85 GETIMPORT                        R17 K5 [require]
       87 GETTABLEKS                       R18 R16 K25 ["WidgetContextProvider"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K5 [require]
       92 GETTABLEKS                       R19 R16 K26 ["SettingContextProvider"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R16 K27 ["NetworkContextProvider"]
       99 CALL                             R19 1 1
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R21 R16 K28 ["StudioContextProvider"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R22 R16 K29 ["ControllerContextProvider"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K5 [require]
      112 GETTABLEKS                       R23 R16 K30 ["DialogContextProvider"]
      114 CALL                             R22 1 1
      115 DUPTABLE                         R23 K35 [{"DataModel", "PluginId", "Category", "ItemId"}]
      116 LOADK                            R24 K36 ["Standalone"]
      117 SETTABLEKS                       R24 R23 K31 ["DataModel"]
      119 LOADK                            R24 K2 ["PlaceVersionHistory"]
      120 SETTABLEKS                       R24 R23 K32 ["PluginId"]
      122 LOADK                            R24 K37 ["Actions"]
      123 SETTABLEKS                       R24 R23 K33 ["Category"]
      125 LOADK                            R24 K38 ["Toggle"]
      126 SETTABLEKS                       R24 R23 K34 ["ItemId"]
      128 DUPCLOSURE                       R24 K39 [PROTO_2]
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R13
      148 SETGLOBAL                        R24 K40 ["MainPlugin"]
      150 GETGLOBAL                        R24 K40 ["MainPlugin"]
      152 RETURN                           R24 1
