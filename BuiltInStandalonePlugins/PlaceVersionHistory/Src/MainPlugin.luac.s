PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["RespondHeartbeatAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 GETTABLEKS                       R3 R0 K1 ["widget"]
        5 GETUPVAL                         R4 1
        6 CALL                             R1 3 2
        7 GETTABLEKS                       R3 R0 K0 ["plugin"]
        9 LOADK                            R5 K2 ["PlaceVersionHistory"]
       10 NAMECALL                         R3 R3 K3 ["GetPluginComponent"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R5 R3 K4 ["OnHeartbeatRequest"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R7 0 0
       20 CALL                             R4 3 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 NEWTABLE                         R6 0 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R7 0 0
       41 CALL                             R5 2 1
       42 GETUPVAL                         R7 9
       43 GETTABLEKS                       R6 R7 K7 ["provide"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K9 [{"MainWidget"}]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K10 ["createElement"]
       50 GETUPVAL                         R12 10
       51 GETTABLEKS                       R11 R12 K11 ["UI"]
       53 GETTABLEKS                       R10 R11 K12 ["DockWidget"]
       55 NEWTABLE                         R11 8 0
       57 LOADK                            R12 K2 ["PlaceVersionHistory"]
       58 SETTABLEKS                       R12 R11 K13 ["Id"]
       60 JUMPIFNOT                        R1 ; [+8]
       61 GETTABLEKS                       R12 R4 K14 ["Localization"]
       63 LOADK                            R14 K15 ["Label"]
       64 LOADK                            R15 K16 ["VersionHistory"]
       65 NAMECALL                         R12 R12 K17 ["getText"]
       67 CALL                             R12 3 1
       68 JUMP                             ; [+1]
       69 LOADK                            R12 K18 [""]
       70 SETTABLEKS                       R12 R11 K19 ["Title"]
       72 SETTABLEKS                       R1 R11 K20 ["Enabled"]
       74 GETTABLEKS                       R12 R0 K1 ["widget"]
       76 SETTABLEKS                       R12 R11 K21 ["Widget"]
       78 SETTABLEKS                       R2 R11 K22 ["OnWidgetRestored"]
       80 GETUPVAL                         R14 3
       81 GETTABLEKS                       R13 R14 K23 ["Change"]
       83 GETTABLEKS                       R12 R13 K20 ["Enabled"]
       85 SETTABLE                         R5 R11 R12
       86 DUPTABLE                         R12 K25 [{"ContextStack"}]
       87 GETUPVAL                         R14 3
       88 GETTABLEKS                       R13 R14 K10 ["createElement"]
       90 GETUPVAL                         R15 11
       91 GETTABLEKS                       R14 R15 K24 ["ContextStack"]
       93 DUPTABLE                         R15 K27 [{"providers"}]
       94 NEWTABLE                         R16 0 7
       96 GETUPVAL                         R18 3
       97 GETTABLEKS                       R17 R18 K10 ["createElement"]
       99 GETUPVAL                         R18 12
      100 CALL                             R17 1 1
      101 GETUPVAL                         R19 3
      102 GETTABLEKS                       R18 R19 K10 ["createElement"]
      104 GETUPVAL                         R19 13
      105 DUPTABLE                         R20 K28 [{"widget"}]
      106 GETTABLEKS                       R21 R0 K1 ["widget"]
      108 SETTABLEKS                       R21 R20 K1 ["widget"]
      110 CALL                             R18 2 1
      111 GETUPVAL                         R20 3
      112 GETTABLEKS                       R19 R20 K10 ["createElement"]
      114 GETUPVAL                         R20 14
      115 CALL                             R19 1 1
      116 GETUPVAL                         R21 3
      117 GETTABLEKS                       R20 R21 K10 ["createElement"]
      119 GETUPVAL                         R21 15
      120 CALL                             R20 1 1
      121 GETUPVAL                         R22 3
      122 GETTABLEKS                       R21 R22 K10 ["createElement"]
      124 GETUPVAL                         R22 16
      125 CALL                             R21 1 1
      126 GETUPVAL                         R23 3
      127 GETTABLEKS                       R22 R23 K10 ["createElement"]
      129 GETUPVAL                         R23 17
      130 CALL                             R22 1 1
      131 GETUPVAL                         R24 3
      132 GETTABLEKS                       R23 R24 K10 ["createElement"]
      134 GETUPVAL                         R24 18
      135 CALL                             R23 1 -1
      136 SETLIST                          R16 R17 -1 [1]
      138 SETTABLEKS                       R16 R15 K26 ["providers"]
      140 DUPTABLE                         R16 K30 [{"App"}]
      141 MOVE                             R17 R1
      142 JUMPIFNOT                        R17 ; [+14]
      143 GETUPVAL                         R18 3
      144 GETTABLEKS                       R17 R18 K10 ["createElement"]
      146 GETUPVAL                         R18 19
      147 LOADNIL                          R19
      148 DUPTABLE                         R20 K32 [{"MainView"}]
      149 GETUPVAL                         R22 3
      150 GETTABLEKS                       R21 R22 K10 ["createElement"]
      152 GETUPVAL                         R22 20
      153 CALL                             R21 1 1
      154 SETTABLEKS                       R21 R20 K31 ["MainView"]
      156 CALL                             R17 3 1
      157 SETTABLEKS                       R17 R16 K29 ["App"]
      159 CALL                             R13 3 1
      160 SETTABLEKS                       R13 R12 K24 ["ContextStack"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K8 ["MainWidget"]
      165 CALL                             R6 2 -1
      166 RETURN                           R6 -1

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
       81 GETTABLEKS                       R16 R2 K24 ["useEventConnection"]
       83 GETTABLEKS                       R18 R0 K15 ["Src"]
       85 GETTABLEKS                       R17 R18 K25 ["Contexts"]
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R17 K26 ["WidgetContextProvider"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R17 K27 ["SettingContextProvider"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K5 [require]
       99 GETTABLEKS                       R21 R17 K28 ["NetworkContextProvider"]
      101 CALL                             R20 1 1
      102 GETIMPORT                        R21 K5 [require]
      104 GETTABLEKS                       R22 R17 K29 ["StudioContextProvider"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K5 [require]
      109 GETTABLEKS                       R23 R17 K30 ["ControllerContextProvider"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K5 [require]
      114 GETTABLEKS                       R24 R17 K31 ["DialogContextProvider"]
      116 CALL                             R23 1 1
      117 GETIMPORT                        R24 K5 [require]
      119 GETTABLEKS                       R25 R17 K32 ["PopoverContextProvider"]
      121 CALL                             R24 1 1
      122 DUPTABLE                         R25 K37 [{"DataModel", "PluginId", "Category", "ItemId"}]
      123 LOADK                            R26 K38 ["Standalone"]
      124 SETTABLEKS                       R26 R25 K33 ["DataModel"]
      126 LOADK                            R26 K2 ["PlaceVersionHistory"]
      127 SETTABLEKS                       R26 R25 K34 ["PluginId"]
      129 LOADK                            R26 K39 ["Actions"]
      130 SETTABLEKS                       R26 R25 K35 ["Category"]
      132 LOADK                            R26 K40 ["Toggle"]
      133 SETTABLEKS                       R26 R25 K36 ["ItemId"]
      135 DUPCLOSURE                       R26 K41 [PROTO_3]
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R25
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R13
      157 SETGLOBAL                        R26 K42 ["MainPlugin"]
      159 GETGLOBAL                        R26 K42 ["MainPlugin"]
      161 RETURN                           R26 1
