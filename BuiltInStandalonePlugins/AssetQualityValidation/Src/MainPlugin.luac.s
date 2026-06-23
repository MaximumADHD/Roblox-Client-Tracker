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
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 DUPTABLE                         R2 K5 [{"enabled"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K1 ["enabled"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["enabled"]
        7 JUMPIFEQ                         R0 R1 ; [+15]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R3 K5 [{"enabled"}]
       18 SETTABLEKS                       R0 R3 K1 ["enabled"]
       20 NAMECALL                         R1 R1 K6 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["enabled"]
        9 JUMPIFEQ                         R1 R2 ; [+17]
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K6 [{"enabled"}]
       20 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       22 SETTABLEKS                       R4 R3 K2 ["enabled"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["props"]
       23 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R2 K4 [{"enabled", "assetDMData", "bundleTypeItems", "allowedBundleTypeSettings"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 GETTABLEKS                       R3 R1 K5 ["AssetDMListener"]
        6 NAMECALL                         R3 R3 K6 ["getCurrentState"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["assetDMData"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["bundleTypeItems"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["allowedBundleTypeSettings"]
       19 SETTABLEKS                       R2 R0 K7 ["state"]
       21 GETTABLEKS                       R2 R1 K5 ["AssetDMListener"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K8 ["setProviderFunction"]
       27 CALL                             R2 2 0
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R0 K9 ["toggleEnabled"]
       32 GETTABLEKS                       R2 R1 K10 ["Plugin"]
       34 LOADK                            R4 K11 ["Actions"]
       35 NAMECALL                         R2 R2 K12 ["GetPluginComponent"]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R3 0
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETIMPORT                        R3 K15 [task.spawn]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U1
       46 CALL                             R3 1 0
       47 NEWCLOSURE                       R3 P3
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U1
       52 SETTABLEKS                       R3 R0 K16 ["onClose"]
       54 NEWCLOSURE                       R3 P4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U1
       59 SETTABLEKS                       R3 R0 K17 ["onRestore"]
       61 NEWCLOSURE                       R3 P5
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R3 R0 K18 ["onWidgetEnabledChanged"]
       68 NEWCLOSURE                       R3 P6
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R3 R0 K19 ["onDockWidgetCreated"]
       73 GETUPVAL                         R3 2
       74 GETTABLEKS                       R3 R3 K20 ["Localization"]
       76 GETTABLEKS                       R3 R3 K21 ["new"]
       78 DUPTABLE                         R4 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       79 GETUPVAL                         R5 3
       80 SETTABLEKS                       R5 R4 K22 ["stringResourceTable"]
       82 GETUPVAL                         R5 4
       83 SETTABLEKS                       R5 R4 K23 ["translationResourceTable"]
       85 LOADK                            R5 K26 ["AssetQualityValidation"]
       86 SETTABLEKS                       R5 R4 K24 ["pluginName"]
       88 CALL                             R3 1 1
       89 SETTABLEKS                       R3 R0 K27 ["localizationLEGACY"]
       91 GETUPVAL                         R3 5
       92 GETTABLEKS                       R3 R3 K20 ["Localization"]
       94 GETTABLEKS                       R3 R3 K21 ["new"]
       96 DUPTABLE                         R4 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       97 GETUPVAL                         R5 3
       98 SETTABLEKS                       R5 R4 K22 ["stringResourceTable"]
      100 GETUPVAL                         R5 4
      101 SETTABLEKS                       R5 R4 K23 ["translationResourceTable"]
      103 LOADK                            R5 K26 ["AssetQualityValidation"]
      104 SETTABLEKS                       R5 R4 K24 ["pluginName"]
      106 CALL                             R3 1 1
      107 SETTABLEKS                       R3 R0 K28 ["localization"]
      109 GETUPVAL                         R3 2
      110 GETTABLEKS                       R3 R3 K29 ["Analytics"]
      112 GETTABLEKS                       R3 R3 K21 ["new"]
      114 DUPCLOSURE                       R4 K30 [PROTO_12]
      115 NEWTABLE                         R5 0 0
      117 CALL                             R3 2 1
      118 SETTABLEKS                       R3 R0 K31 ["analytics"]
      120 GETUPVAL                         R3 6
      121 GETTABLEKS                       R3 R3 K21 ["new"]
      123 CALL                             R3 0 1
      124 SETTABLEKS                       R3 R0 K32 ["DEPRECATED_stylizer"]
      126 GETUPVAL                         R3 7
      127 GETTABLEKS                       R3 R3 K33 ["Util"]
      129 GETTABLEKS                       R3 R3 K34 ["createFoundationDesignBinding"]
      131 CALL                             R3 0 2
      132 SETTABLEKS                       R4 R0 K35 ["onFoundationStyleSheetChange"]
      134 GETUPVAL                         R5 8
      135 GETTABLEKS                       R6 R1 K10 ["Plugin"]
      137 LOADNIL                          R7
      138 LOADNIL                          R8
      139 NEWTABLE                         R9 0 1
      141 MOVE                             R10 R3
      142 SETLIST                          R9 R10 1 [1]
      144 CALL                             R5 4 1
      145 SETTABLEKS                       R5 R0 K36 ["design"]
      147 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_17:
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
       70 LOADN                            R12 128
       71 LOADN                            R13 224
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
      143 DUPTABLE                         R22 K56 [{"showContent", "assetDMData", "bundleTypeItems", "allowedBundleTypeSettings"}]
      144 LOADB                            R23 1
      145 SETTABLEKS                       R23 R22 K52 ["showContent"]
      147 GETTABLEKS                       R23 R2 K53 ["assetDMData"]
      149 SETTABLEKS                       R23 R22 K53 ["assetDMData"]
      151 GETTABLEKS                       R23 R2 K54 ["bundleTypeItems"]
      153 SETTABLEKS                       R23 R22 K54 ["bundleTypeItems"]
      155 GETTABLEKS                       R23 R2 K55 ["allowedBundleTypeSettings"]
      157 SETTABLEKS                       R23 R22 K55 ["allowedBundleTypeSettings"]
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K50 ["ValidationPanel"]
      162 CALL                             R16 3 -1
      163 SETLIST                          R15 R16 -1 [1]
      165 CALL                             R12 3 1
      166 SETTABLEKS                       R12 R11 K43 ["FoundationProvider"]
      168 CALL                             R8 3 1
      169 SETTABLEKS                       R8 R7 K9 ["MainWidget"]
      171 CALL                             R5 2 -1
      172 RETURN                           R5 -1

PROTO_18:
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
       62 GETTABLEKS                       R14 R0 K27 ["Src"]
       64 GETTABLEKS                       R14 R14 K28 ["Resources"]
       66 GETTABLEKS                       R14 R14 K13 ["Localization"]
       68 GETTABLEKS                       R14 R14 K29 ["SourceStrings"]
       70 GETTABLEKS                       R15 R0 K27 ["Src"]
       72 GETTABLEKS                       R15 R15 K28 ["Resources"]
       74 GETTABLEKS                       R15 R15 K13 ["Localization"]
       76 GETTABLEKS                       R15 R15 K30 ["LocalizedStrings"]
       78 GETTABLEKS                       R16 R0 K27 ["Src"]
       80 GETTABLEKS                       R16 R16 K10 ["Components"]
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R16 K31 ["ValidationPanel"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R0 K27 ["Src"]
       91 GETTABLEKS                       R19 R19 K23 ["Util"]
       93 GETTABLEKS                       R19 R19 K32 ["fetchBundleTypes"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R0 K33 ["Bin"]
      100 GETTABLEKS                       R20 R20 K34 ["Common"]
      102 GETTABLEKS                       R20 R20 K35 ["defineLuaFlags"]
      104 CALL                             R19 1 1
      105 GETTABLEKS                       R20 R19 K36 ["getFFlagRegisterActionsPluginLoader"]
      107 CALL                             R20 0 1
      108 GETTABLEKS                       R21 R1 K37 ["PureComponent"]
      110 LOADK                            R23 K38 ["MainPlugin"]
      111 NAMECALL                         R21 R21 K39 ["extend"]
      113 CALL                             R21 2 1
      114 GETTABLEKS                       R22 R12 K40 ["fromAction"]
      116 LOADK                            R23 K2 ["AssetQualityValidation"]
      117 LOADK                            R24 K41 ["Toggle"]
      118 CALL                             R22 2 1
      119 DUPCLOSURE                       R23 K42 [PROTO_13]
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R22
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R23 R21 K43 ["init"]
      131 DUPCLOSURE                       R23 K44 [PROTO_15]
      132 CAPTURE                          VAL R18
      133 SETTABLEKS                       R23 R21 K45 ["didMount"]
      135 DUPCLOSURE                       R23 K46 [PROTO_16]
      136 CAPTURE                          VAL R20
      137 SETTABLEKS                       R23 R21 K47 ["didUpdate"]
      139 DUPCLOSURE                       R23 K48 [PROTO_17]
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R17
      150 SETTABLEKS                       R23 R21 K49 ["render"]
      152 DUPCLOSURE                       R23 K50 [PROTO_18]
      153 SETTABLEKS                       R23 R21 K51 ["willUnmount"]
      155 RETURN                           R21 1
