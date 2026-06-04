PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["placeId"]
        8 JUMPIFEQKN                       R2 K2 [0] ; [+20]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K3 ["universeId"]
       13 JUMPIFEQKN                       R2 K2 [0] ; [+15]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["createElement"]
       18 GETUPVAL                         R2 2
       19 LOADNIL                          R3
       20 DUPTABLE                         R4 K6 [{"MainView"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["createElement"]
       24 GETUPVAL                         R6 3
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K5 ["MainView"]
       28 CALL                             R1 3 1
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["RespondHeartbeatAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["plugin"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K2 ["Plugin"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["new"]
       14 GETIMPORT                        R2 K4 [Instance.new]
       16 LOADK                            R3 K5 ["StyleSheet"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 1
       19 SETTABLEKS                       R1 R0 K6 ["Design"]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K0 ["new"]
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
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
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 NEWTABLE                         R6 0 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R7 0 0
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 9
       43 GETTABLEKS                       R6 R6 K7 ["provide"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K9 [{"MainWidget"}]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K10 ["createElement"]
       50 GETUPVAL                         R10 10
       51 GETTABLEKS                       R10 R10 K11 ["UI"]
       53 GETTABLEKS                       R10 R10 K12 ["DockWidget"]
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
       80 GETUPVAL                         R12 3
       81 GETTABLEKS                       R12 R12 K23 ["Change"]
       83 GETTABLEKS                       R12 R12 K20 ["Enabled"]
       85 SETTABLE                         R5 R11 R12
       86 DUPTABLE                         R12 K25 [{"ContextStack"}]
       87 GETUPVAL                         R13 3
       88 GETTABLEKS                       R13 R13 K10 ["createElement"]
       90 GETUPVAL                         R14 11
       91 GETTABLEKS                       R14 R14 K24 ["ContextStack"]
       93 DUPTABLE                         R15 K27 [{"providers"}]
       94 NEWTABLE                         R16 0 7
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R17 R17 K10 ["createElement"]
       99 GETUPVAL                         R18 12
      100 CALL                             R17 1 1
      101 GETUPVAL                         R18 3
      102 GETTABLEKS                       R18 R18 K10 ["createElement"]
      104 GETUPVAL                         R19 13
      105 DUPTABLE                         R20 K28 [{"widget"}]
      106 GETTABLEKS                       R21 R0 K1 ["widget"]
      108 SETTABLEKS                       R21 R20 K1 ["widget"]
      110 CALL                             R18 2 1
      111 GETUPVAL                         R19 3
      112 GETTABLEKS                       R19 R19 K10 ["createElement"]
      114 GETUPVAL                         R20 14
      115 CALL                             R19 1 1
      116 GETUPVAL                         R20 3
      117 GETTABLEKS                       R20 R20 K10 ["createElement"]
      119 GETUPVAL                         R21 15
      120 CALL                             R20 1 1
      121 GETUPVAL                         R21 3
      122 GETTABLEKS                       R21 R21 K10 ["createElement"]
      124 GETUPVAL                         R22 16
      125 CALL                             R21 1 1
      126 GETUPVAL                         R22 3
      127 GETTABLEKS                       R22 R22 K10 ["createElement"]
      129 GETUPVAL                         R23 17
      130 DUPTABLE                         R24 K30 [{"bridge"}]
      131 SETTABLEKS                       R3 R24 K29 ["bridge"]
      133 CALL                             R22 2 1
      134 GETUPVAL                         R23 3
      135 GETTABLEKS                       R23 R23 K10 ["createElement"]
      137 GETUPVAL                         R24 18
      138 CALL                             R23 1 -1
      139 SETLIST                          R16 R17 -1 [1]
      141 SETTABLEKS                       R16 R15 K26 ["providers"]
      143 DUPTABLE                         R16 K32 [{"App"}]
      144 MOVE                             R17 R1
      145 JUMPIFNOT                        R17 ; [+25]
      146 GETUPVAL                         R18 19
      147 GETTABLEKS                       R18 R18 K33 ["FFlagPVHZeroPlaceIdCheck"]
      149 JUMPIFNOT                        R18 ; [+7]
      150 GETUPVAL                         R17 3
      151 GETTABLEKS                       R17 R17 K10 ["createElement"]
      153 GETGLOBAL                        R18 K31 ["App"]
      155 CALL                             R17 1 1
      156 JUMP                             ; [+14]
      157 GETUPVAL                         R17 3
      158 GETTABLEKS                       R17 R17 K10 ["createElement"]
      160 GETUPVAL                         R18 20
      161 LOADNIL                          R19
      162 DUPTABLE                         R20 K35 [{"MainView"}]
      163 GETUPVAL                         R21 3
      164 GETTABLEKS                       R21 R21 K10 ["createElement"]
      166 GETUPVAL                         R22 21
      167 CALL                             R21 1 1
      168 SETTABLEKS                       R21 R20 K34 ["MainView"]
      170 CALL                             R17 3 1
      171 SETTABLEKS                       R17 R16 K31 ["App"]
      173 CALL                             R13 3 1
      174 SETTABLEKS                       R13 R12 K24 ["ContextStack"]
      176 CALL                             R9 3 1
      177 SETTABLEKS                       R9 R8 K8 ["MainWidget"]
      179 CALL                             R6 2 -1
      180 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       48 GETTABLEKS                       R8 R6 K16 ["Design"]
       50 GETTABLEKS                       R9 R6 K17 ["Localization"]
       52 GETTABLEKS                       R10 R0 K18 ["Src"]
       54 GETTABLEKS                       R10 R10 K19 ["Resources"]
       56 GETTABLEKS                       R10 R10 K17 ["Localization"]
       58 GETTABLEKS                       R10 R10 K20 ["SourceStrings"]
       60 GETTABLEKS                       R11 R0 K18 ["Src"]
       62 GETTABLEKS                       R11 R11 K19 ["Resources"]
       64 GETTABLEKS                       R11 R11 K17 ["Localization"]
       66 GETTABLEKS                       R11 R11 K21 ["LocalizedStrings"]
       68 GETTABLEKS                       R12 R5 K22 ["Components"]
       70 GETTABLEKS                       R12 R12 K23 ["FoundationProviderAdapter"]
       72 GETTABLEKS                       R13 R0 K18 ["Src"]
       74 GETTABLEKS                       R13 R13 K22 ["Components"]
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R13 K24 ["MainView"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R0 K18 ["Src"]
       83 GETTABLEKS                       R15 R15 K25 ["Hooks"]
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R17 R15 K26 ["useActionConnection"]
       89 CALL                             R16 1 1
       90 GETTABLEKS                       R17 R3 K27 ["useEventConnection"]
       92 GETTABLEKS                       R18 R0 K18 ["Src"]
       94 GETTABLEKS                       R18 R18 K28 ["Contexts"]
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R18 K29 ["SettingContext"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R18 K30 ["WidgetContextProvider"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R18 K31 ["SettingContextProvider"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K5 [require]
      113 GETTABLEKS                       R23 R18 K32 ["NetworkContextProvider"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K5 [require]
      118 GETTABLEKS                       R24 R18 K33 ["StudioContextProvider"]
      120 CALL                             R23 1 1
      121 GETIMPORT                        R24 K5 [require]
      123 GETTABLEKS                       R25 R18 K34 ["ControllerContextProvider"]
      125 CALL                             R24 1 1
      126 GETIMPORT                        R25 K5 [require]
      128 GETTABLEKS                       R26 R18 K35 ["DialogContextProvider"]
      130 CALL                             R25 1 1
      131 GETIMPORT                        R26 K5 [require]
      133 GETTABLEKS                       R27 R18 K36 ["PopoverContextProvider"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K5 [require]
      138 GETTABLEKS                       R28 R0 K18 ["Src"]
      140 GETTABLEKS                       R28 R28 K37 ["Types"]
      142 CALL                             R27 1 1
      143 DUPTABLE                         R28 K42 [{"DataModel", "PluginId", "Category", "ItemId"}]
      144 LOADK                            R29 K43 ["Standalone"]
      145 SETTABLEKS                       R29 R28 K38 ["DataModel"]
      147 LOADK                            R29 K2 ["PlaceVersionHistory"]
      148 SETTABLEKS                       R29 R28 K39 ["PluginId"]
      150 LOADK                            R29 K44 ["Actions"]
      151 SETTABLEKS                       R29 R28 K40 ["Category"]
      153 LOADK                            R29 K45 ["Toggle"]
      154 SETTABLEKS                       R29 R28 K41 ["ItemId"]
      156 DUPCLOSURE                       R29 K46 [PROTO_0]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R14
      161 SETGLOBAL                        R29 K47 ["App"]
      163 DUPCLOSURE                       R29 K48 [PROTO_4]
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R28
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R14
      186 SETGLOBAL                        R29 K49 ["MainPlugin"]
      188 GETGLOBAL                        R29 K49 ["MainPlugin"]
      190 RETURN                           R29 1
