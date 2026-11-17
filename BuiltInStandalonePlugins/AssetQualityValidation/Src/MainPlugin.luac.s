PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"assetDMData"}]
        2 SETTABLEKS                       R0 R3 K0 ["assetDMData"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_1]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFEQ                         R0 R1 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+7]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        7 GETTABLEN                        R0 R1 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       12 NAMECALL                         R2 R0 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       17 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R2 K5 [{[1] = False, ["assetDMData"], ["bundleTypeItems"], ["allowedBundleTypeSettings"]}]
        1 GETTABLEKS                       R3 R1 K6 ["AssetDMListener"]
        3 NAMECALL                         R3 R3 K7 ["getCurrentState"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K2 ["assetDMData"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K3 ["bundleTypeItems"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K4 ["allowedBundleTypeSettings"]
       16 SETTABLEKS                       R2 R0 K8 ["state"]
       18 GETTABLEKS                       R2 R1 K6 ["AssetDMListener"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K9 ["setProviderFunction"]
       24 CALL                             R2 2 0
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K10 ["toggleEnabled"]
       29 GETTABLEKS                       R2 R1 K11 ["Plugin"]
       31 LOADK                            R4 K12 ["Actions"]
       32 NAMECALL                         R2 R2 K13 ["GetPluginComponent"]
       34 CALL                             R2 2 1
       35 GETIMPORT                        R3 K16 [task.spawn]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U0
       41 CALL                             R3 1 0
       42 NEWCLOSURE                       R3 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U0
       46 SETTABLEKS                       R3 R0 K17 ["onClose"]
       48 NEWCLOSURE                       R3 P4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U0
       52 SETTABLEKS                       R3 R0 K18 ["onRestore"]
       54 NEWCLOSURE                       R3 P5
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U0
       58 SETTABLEKS                       R3 R0 K19 ["onWidgetEnabledChanged"]
       60 NEWCLOSURE                       R3 P6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R3 R0 K20 ["onDockWidgetCreated"]
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K21 ["Localization"]
       67 GETTABLEKS                       R3 R3 K22 ["new"]
       69 DUPTABLE                         R4 K28 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetQualityValidation", ["libraries"]}]
       70 GETUPVAL                         R5 2
       71 SETTABLEKS                       R5 R4 K23 ["stringResourceTable"]
       73 GETUPVAL                         R5 3
       74 SETTABLEKS                       R5 R4 K24 ["translationResourceTable"]
       76 GETUPVAL                         R6 4
       77 GETTABLEKS                       R6 R6 K29 ["getFFlagAQVFollowup"]
       79 CALL                             R6 0 1
       80 JUMPIFNOT                        R6 ; [+2]
       81 GETUPVAL                         R5 5
       82 JUMP                             ; [+1]
       83 LOADNIL                          R5
       84 SETTABLEKS                       R5 R4 K27 ["libraries"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R0 K30 ["localizationLEGACY"]
       89 GETUPVAL                         R3 6
       90 GETTABLEKS                       R3 R3 K21 ["Localization"]
       92 GETTABLEKS                       R3 R3 K22 ["new"]
       94 DUPTABLE                         R4 K31 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetQualityValidation"}]
       95 GETUPVAL                         R5 2
       96 SETTABLEKS                       R5 R4 K23 ["stringResourceTable"]
       98 GETUPVAL                         R5 3
       99 SETTABLEKS                       R5 R4 K24 ["translationResourceTable"]
      101 CALL                             R3 1 1
      102 SETTABLEKS                       R3 R0 K32 ["localization"]
      104 GETUPVAL                         R3 1
      105 GETTABLEKS                       R3 R3 K33 ["Analytics"]
      107 GETTABLEKS                       R3 R3 K22 ["new"]
      109 DUPCLOSURE                       R4 K34 [PROTO_12]
      110 NEWTABLE                         R5 0 0
      112 CALL                             R3 2 1
      113 SETTABLEKS                       R3 R0 K35 ["analytics"]
      115 GETUPVAL                         R3 7
      116 GETTABLEKS                       R3 R3 K22 ["new"]
      118 CALL                             R3 0 1
      119 SETTABLEKS                       R3 R0 K36 ["DEPRECATED_stylizer"]
      121 GETUPVAL                         R3 8
      122 GETTABLEKS                       R3 R3 K37 ["Util"]
      124 GETTABLEKS                       R3 R3 K38 ["createFoundationDesignBinding"]
      126 CALL                             R3 0 2
      127 SETTABLEKS                       R4 R0 K39 ["onFoundationStyleSheetChange"]
      129 GETUPVAL                         R5 9
      130 GETTABLEKS                       R6 R1 K11 ["Plugin"]
      132 LOADNIL                          R7
      133 LOADNIL                          R8
      134 NEWTABLE                         R9 0 1
      136 MOVE                             R10 R3
      137 SETLIST                          R9 R10 1 [1]
      139 CALL                             R5 4 1
      140 SETTABLEKS                       R5 R0 K40 ["design"]
      142 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R2 R0 K0 ["items"]
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+14]
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R3 K3 [{"bundleTypeItems", "allowedBundleTypeSettings"}]
       10 GETTABLEKS                       R4 R0 K0 ["items"]
       12 SETTABLEKS                       R4 R3 K1 ["bundleTypeItems"]
       14 GETTABLEKS                       R4 R0 K2 ["allowedBundleTypeSettings"]
       16 SETTABLEKS                       R4 R3 K2 ["allowedBundleTypeSettings"]
       18 NAMECALL                         R1 R1 K4 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K5 ["new"]
       28 GETTABLEKS                       R10 R0 K7 ["design"]
       30 CALL                             R9 1 1
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K5 ["new"]
       34 CALL                             R10 0 1
       35 GETTABLEKS                       R11 R0 K8 ["localizationLEGACY"]
       37 SETLIST                          R6 R7 5 [1]
       39 DUPTABLE                         R7 K10 [{"MainWidget"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K11 ["createElement"]
       43 GETUPVAL                         R9 6
       44 NEWTABLE                         R10 16 0
       46 LOADK                            R11 K12 ["AssetQualityValidation"]
       47 SETTABLEKS                       R11 R10 K13 ["Id"]
       49 SETTABLEKS                       R4 R10 K14 ["Enabled"]
       51 GETTABLEKS                       R11 R0 K15 ["localization"]
       53 LOADK                            R13 K2 ["Plugin"]
       54 LOADK                            R14 K16 ["Name"]
       55 NAMECALL                         R11 R11 K17 ["getText"]
       57 CALL                             R11 3 1
       58 SETTABLEKS                       R11 R10 K18 ["Title"]
       60 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       64 GETIMPORT                        R11 K25 [Enum.InitialDockState.Bottom]
       66 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       68 GETIMPORT                        R11 K27 [Vector2.new]
       70 LOADN                            R12 640
       71 LOADN                            R13 480
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K28 ["Size"]
       75 GETIMPORT                        R11 K27 [Vector2.new]
       77 LOADN                            R12 250
       78 LOADN                            R13 200
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       82 GETTABLEKS                       R11 R0 K30 ["onClose"]
       84 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       86 LOADB                            R11 1
       87 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
       89 GETTABLEKS                       R11 R0 K33 ["onRestore"]
       91 SETTABLEKS                       R11 R10 K34 ["OnWidgetRestored"]
       93 GETTABLEKS                       R11 R1 K35 ["PluginLoaderContext"]
       95 GETTABLEKS                       R11 R11 K36 ["mainDockWidget"]
       97 SETTABLEKS                       R11 R10 K37 ["Widget"]
       99 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
      103 GETTABLEKS                       R11 R0 K7 ["design"]
      105 SETTABLEKS                       R11 R10 K40 ["PluginDesign"]
      107 GETUPVAL                         R11 5
      108 GETTABLEKS                       R11 R11 K41 ["Change"]
      110 GETTABLEKS                       R11 R11 K14 ["Enabled"]
      112 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      114 SETTABLE                         R12 R10 R11
      115 DUPTABLE                         R11 K44 [{"FoundationProvider"}]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K11 ["createElement"]
      119 GETUPVAL                         R13 7
      120 DUPTABLE                         R14 K46 [{"onStyleSheetChange"}]
      121 GETTABLEKS                       R15 R0 K47 ["onFoundationStyleSheetChange"]
      123 SETTABLEKS                       R15 R14 K45 ["onStyleSheetChange"]
      125 NEWTABLE                         R15 0 1
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R16 R16 K11 ["createElement"]
      130 GETUPVAL                         R17 8
      131 GETTABLEKS                       R17 R17 K48 ["Provider"]
      133 DUPTABLE                         R18 K49 [{"localization"}]
      134 GETTABLEKS                       R19 R0 K15 ["localization"]
      136 SETTABLEKS                       R19 R18 K15 ["localization"]
      138 DUPTABLE                         R19 K51 [{"ValidationPanel"}]
      139 GETUPVAL                         R20 5
      140 GETTABLEKS                       R20 R20 K11 ["createElement"]
      142 GETUPVAL                         R21 9
      143 DUPTABLE                         R22 K57 [{["showContent"] = True, ["assetDMData"], ["bundleTypeItems"], ["allowedBundleTypeSettings"]}]
      144 GETTABLEKS                       R23 R2 K54 ["assetDMData"]
      146 SETTABLEKS                       R23 R22 K54 ["assetDMData"]
      148 GETTABLEKS                       R23 R2 K55 ["bundleTypeItems"]
      150 SETTABLEKS                       R23 R22 K55 ["bundleTypeItems"]
      152 GETTABLEKS                       R23 R2 K56 ["allowedBundleTypeSettings"]
      154 SETTABLEKS                       R23 R22 K56 ["allowedBundleTypeSettings"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K50 ["ValidationPanel"]
      159 CALL                             R16 3 -1
      160 SETLIST                          R15 R16 -1 [1]
      162 CALL                             R12 3 1
      163 SETTABLEKS                       R12 R11 K43 ["FoundationProvider"]
      165 CALL                             R8 3 1
      166 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      168 CALL                             R5 2 -1
      169 RETURN                           R5 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R2 K14 ["UI"]
       38 GETTABLEKS                       R6 R6 K15 ["DockWidget"]
       40 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       46 GETTABLEKS                       R10 R7 K19 ["Design"]
       48 GETTABLEKS                       R11 R2 K20 ["Style"]
       50 GETTABLEKS                       R11 R11 K21 ["Themes"]
       52 GETTABLEKS                       R11 R11 K22 ["StudioTheme"]
       54 GETTABLEKS                       R12 R3 K23 ["Util"]
       56 GETTABLEKS                       R12 R12 K24 ["StudioUri"]
       58 GETTABLEKS                       R13 R2 K25 ["Styling"]
       60 GETTABLEKS                       R13 R13 K26 ["registerPluginStyles"]
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R0 K27 ["Bin"]
       66 GETTABLEKS                       R15 R15 K28 ["Common"]
       68 GETTABLEKS                       R15 R15 K29 ["defineLuaFlags"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R16 R0 K30 ["Src"]
       75 GETTABLEKS                       R16 R16 K23 ["Util"]
       77 GETTABLEKS                       R16 R16 K31 ["localizationLibraries"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R0 K30 ["Src"]
       82 GETTABLEKS                       R16 R16 K32 ["Resources"]
       84 GETTABLEKS                       R16 R16 K13 ["Localization"]
       86 GETTABLEKS                       R16 R16 K33 ["SourceStrings"]
       88 GETTABLEKS                       R17 R0 K30 ["Src"]
       90 GETTABLEKS                       R17 R17 K32 ["Resources"]
       92 GETTABLEKS                       R17 R17 K13 ["Localization"]
       94 GETTABLEKS                       R17 R17 K34 ["LocalizedStrings"]
       96 GETTABLEKS                       R18 R0 K30 ["Src"]
       98 GETTABLEKS                       R18 R18 K10 ["Components"]
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R18 K35 ["ValidationPanel"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R0 K30 ["Src"]
      109 GETTABLEKS                       R21 R21 K23 ["Util"]
      111 GETTABLEKS                       R21 R21 K36 ["fetchBundleTypes"]
      113 CALL                             R20 1 1
      114 GETTABLEKS                       R21 R1 K37 ["PureComponent"]
      116 LOADK                            R23 K38 ["MainPlugin"]
      117 NAMECALL                         R21 R21 K39 ["extend"]
      119 CALL                             R21 2 1
      120 GETTABLEKS                       R22 R12 K40 ["fromAction"]
      122 LOADK                            R23 K2 ["AssetQualityValidation"]
      123 LOADK                            R24 K41 ["Toggle"]
      124 CALL                             R22 2 1
      125 DUPCLOSURE                       R23 K42 [PROTO_13]
      126 CAPTURE                          VAL R22
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R13
      136 SETTABLEKS                       R23 R21 K43 ["init"]
      138 DUPCLOSURE                       R23 K44 [PROTO_15]
      139 CAPTURE                          VAL R20
      140 SETTABLEKS                       R23 R21 K45 ["didMount"]
      142 DUPCLOSURE                       R23 K46 [PROTO_16]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R19
      153 SETTABLEKS                       R23 R21 K47 ["render"]
      155 DUPCLOSURE                       R23 K48 [PROTO_17]
      156 SETTABLEKS                       R23 R21 K49 ["willUnmount"]
      158 RETURN                           R21 1
