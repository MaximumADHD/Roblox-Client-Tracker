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
       24 DUPTABLE                         R2 K11 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PlaceVersionHistory"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K7 ["stringResourceTable"]
       28 GETUPVAL                         R3 5
       29 SETTABLEKS                       R3 R2 K8 ["translationResourceTable"]
       31 CALL                             R1 1 1
       32 SETTABLEKS                       R1 R0 K12 ["Localization"]
       34 RETURN                           R0 1

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
      145 JUMPIFNOT                        R17 ; [+6]
      146 GETUPVAL                         R17 3
      147 GETTABLEKS                       R17 R17 K10 ["createElement"]
      149 GETGLOBAL                        R18 K31 ["App"]
      151 CALL                             R17 1 1
      152 SETTABLEKS                       R17 R16 K31 ["App"]
      154 CALL                             R13 3 1
      155 SETTABLEKS                       R13 R12 K24 ["ContextStack"]
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K8 ["MainWidget"]
      160 CALL                             R6 2 -1
      161 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Plugin"]
       39 GETTABLEKS                       R7 R5 K13 ["Design"]
       41 GETTABLEKS                       R8 R5 K14 ["Localization"]
       43 GETTABLEKS                       R9 R0 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Resources"]
       47 GETTABLEKS                       R9 R9 K14 ["Localization"]
       49 GETTABLEKS                       R9 R9 K17 ["SourceStrings"]
       51 GETTABLEKS                       R10 R0 K15 ["Src"]
       53 GETTABLEKS                       R10 R10 K16 ["Resources"]
       55 GETTABLEKS                       R10 R10 K14 ["Localization"]
       57 GETTABLEKS                       R10 R10 K18 ["LocalizedStrings"]
       59 GETTABLEKS                       R11 R4 K19 ["Components"]
       61 GETTABLEKS                       R11 R11 K20 ["FoundationProviderAdapter"]
       63 GETTABLEKS                       R12 R0 K15 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Components"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K21 ["MainView"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R14 R0 K15 ["Src"]
       74 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R16 R14 K23 ["useActionConnection"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R16 R2 K24 ["useEventConnection"]
       83 GETTABLEKS                       R17 R0 K15 ["Src"]
       85 GETTABLEKS                       R17 R17 K25 ["Contexts"]
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R17 K26 ["SettingContext"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R17 K27 ["WidgetContextProvider"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K5 [require]
       99 GETTABLEKS                       R21 R17 K28 ["SettingContextProvider"]
      101 CALL                             R20 1 1
      102 GETIMPORT                        R21 K5 [require]
      104 GETTABLEKS                       R22 R17 K29 ["NetworkContextProvider"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K5 [require]
      109 GETTABLEKS                       R23 R17 K30 ["StudioContextProvider"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K5 [require]
      114 GETTABLEKS                       R24 R17 K31 ["ControllerContextProvider"]
      116 CALL                             R23 1 1
      117 GETIMPORT                        R24 K5 [require]
      119 GETTABLEKS                       R25 R17 K32 ["DialogContextProvider"]
      121 CALL                             R24 1 1
      122 GETIMPORT                        R25 K5 [require]
      124 GETTABLEKS                       R26 R17 K33 ["PopoverContextProvider"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K5 [require]
      129 GETTABLEKS                       R27 R0 K15 ["Src"]
      131 GETTABLEKS                       R27 R27 K34 ["Types"]
      133 CALL                             R26 1 1
      134 DUPTABLE                         R27 K42 [{["DataModel"] = "Standalone", ["PluginId"] = "PlaceVersionHistory", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      135 DUPCLOSURE                       R28 K43 [PROTO_0]
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R13
      140 SETGLOBAL                        R28 K44 ["App"]
      142 DUPCLOSURE                       R28 K45 [PROTO_4]
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R27
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R24
      161 CAPTURE                          VAL R25
      162 SETGLOBAL                        R28 K46 ["MainPlugin"]
      164 GETGLOBAL                        R28 K46 ["MainPlugin"]
      166 RETURN                           R28 1
