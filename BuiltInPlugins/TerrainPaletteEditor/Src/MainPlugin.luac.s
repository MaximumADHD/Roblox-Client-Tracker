PROTO_0:
        0 DUPTABLE                         R1 K1 [{"catalogRefreshKey"}]
        1 GETTABLEKS                       R3 R0 K0 ["catalogRefreshKey"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["catalogRefreshKey"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 GETTABLEN                        R1 R0 1
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R4 K2 [{"enabled"}]
       12 GETTABLEKS                       R5 R1 K3 ["Checked"]
       14 SETTABLEKS                       R5 R4 K1 ["enabled"]
       16 NAMECALL                         R2 R2 K4 ["setState"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R3 K4 [{"enabled"}]
        6 GETTABLEKS                       R4 R0 K5 ["Checked"]
        8 SETTABLEKS                       R4 R3 K3 ["enabled"]
       10 NAMECALL                         R1 R1 K6 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 NAMECALL                         R2 R2 K3 ["BindToChangedAsync"]
       12 CALL                             R2 2 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R2 R2 K4 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K5 ["syncStateWithActionConnection"]
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["enabled"]
        8 JUMPIF                           R1 ; [+6]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 GETTABLEKS                       R3 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R3 R3 K2 ["mainDockWidget"]
        6 LOADK                            R6 K3 ["Actions"]
        7 NAMECALL                         R4 R2 K4 ["GetPluginComponent"]
        9 CALL                             R4 2 1
       10 DUPTABLE                         R5 K8 [{["catalogRefreshKey"] = 0, ["enabled"]}]
       11 LOADB                            R6 0
       12 JUMPIFEQKNIL                     R3 ; [+3]
       14 GETTABLEKS                       R6 R3 K9 ["Enabled"]
       16 SETTABLEKS                       R6 R5 K7 ["enabled"]
       18 SETTABLEKS                       R5 R0 K10 ["state"]
       20 GETIMPORT                        R5 K13 [task.spawn]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 CALL                             R5 1 0
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R5 R0 K14 ["onClose"]
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R5 R0 K15 ["onRestore"]
       39 NEWCLOSURE                       R5 P3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U0
       43 SETTABLEKS                       R5 R0 K16 ["onWidgetEnabledChanged"]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K17 ["Localization"]
       48 GETTABLEKS                       R5 R5 K18 ["new"]
       50 DUPTABLE                         R6 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainPaletteEditor"}]
       51 GETUPVAL                         R7 2
       52 SETTABLEKS                       R7 R6 K19 ["stringResourceTable"]
       54 GETUPVAL                         R7 3
       55 SETTABLEKS                       R7 R6 K20 ["translationResourceTable"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R0 K24 ["localizationLEGACY"]
       60 GETUPVAL                         R5 4
       61 GETTABLEKS                       R5 R5 K17 ["Localization"]
       63 GETTABLEKS                       R5 R5 K25 ["createLocalization"]
       65 CALL                             R5 0 1
       66 SETTABLEKS                       R5 R0 K26 ["localization"]
       68 GETUPVAL                         R5 5
       69 GETTABLEKS                       R5 R5 K27 ["Util"]
       71 GETTABLEKS                       R5 R5 K28 ["createFoundationDesignBinding"]
       73 CALL                             R5 0 2
       74 SETTABLEKS                       R6 R0 K29 ["onFoundationStyleSheetChange"]
       76 GETUPVAL                         R7 6
       77 MOVE                             R8 R2
       78 LOADNIL                          R9
       79 LOADNIL                          R10
       80 NEWTABLE                         R11 0 1
       82 MOVE                             R12 R5
       83 SETLIST                          R11 R12 1 [1]
       85 CALL                             R7 4 1
       86 SETTABLEKS                       R7 R0 K30 ["design"]
       88 GETUPVAL                         R7 7
       89 GETTABLEKS                       R7 R7 K18 ["new"]
       91 CALL                             R7 0 1
       92 SETTABLEKS                       R7 R0 K31 ["catalogChangePublisher"]
       94 GETUPVAL                         R7 8
       95 GETTABLEKS                       R7 R7 K18 ["new"]
       97 NEWCLOSURE                       R8 P4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U9
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R0 K32 ["catalogChangeSubscriber"]
      103 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["enabled"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["provide"]
       11 NEWTABLE                         R5 0 4
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["new"]
       16 MOVE                             R7 R2
       17 CALL                             R6 1 1
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K5 ["new"]
       21 NAMECALL                         R8 R2 K6 ["getMouse"]
       23 CALL                             R8 1 -1
       24 CALL                             R7 -1 1
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K5 ["new"]
       28 GETTABLEKS                       R9 R0 K7 ["design"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R9 R0 K8 ["localizationLEGACY"]
       33 SETLIST                          R5 R6 4 [1]
       35 DUPTABLE                         R6 K10 [{"MainWidget"}]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K11 ["createElement"]
       39 GETUPVAL                         R8 5
       40 NEWTABLE                         R9 16 0
       42 LOADK                            R10 K12 ["TerrainPaletteEditor"]
       43 SETTABLEKS                       R10 R9 K13 ["Id"]
       45 SETTABLEKS                       R3 R9 K14 ["Enabled"]
       47 GETTABLEKS                       R10 R0 K15 ["localization"]
       49 LOADK                            R12 K1 ["Plugin"]
       50 LOADK                            R13 K16 ["MenuItem"]
       51 NAMECALL                         R10 R10 K17 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K18 ["Title"]
       56 GETIMPORT                        R10 K22 [Enum.ZIndexBehavior.Sibling]
       58 SETTABLEKS                       R10 R9 K20 ["ZIndexBehavior"]
       60 GETIMPORT                        R10 K25 [Enum.InitialDockState.Left]
       62 SETTABLEKS                       R10 R9 K23 ["InitialDockState"]
       64 GETIMPORT                        R10 K27 [Vector2.new]
       66 LOADN                            R11 300
       67 LOADN                            R12 600
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K28 ["Size"]
       71 GETIMPORT                        R10 K27 [Vector2.new]
       73 LOADN                            R11 250
       74 LOADN                            R12 400
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K29 ["MinSize"]
       78 GETTABLEKS                       R10 R0 K30 ["onClose"]
       80 SETTABLEKS                       R10 R9 K31 ["OnClose"]
       82 LOADB                            R10 1
       83 SETTABLEKS                       R10 R9 K32 ["ShouldRestore"]
       85 GETTABLEKS                       R10 R0 K33 ["onRestore"]
       87 SETTABLEKS                       R10 R9 K34 ["OnWidgetRestored"]
       89 GETTABLEKS                       R10 R1 K35 ["PluginLoaderContext"]
       91 GETTABLEKS                       R10 R10 K36 ["mainDockWidget"]
       93 SETTABLEKS                       R10 R9 K37 ["Widget"]
       95 DUPCLOSURE                       R10 K38 [PROTO_12]
       96 SETTABLEKS                       R10 R9 K39 ["OnWidgetCreated"]
       98 GETTABLEKS                       R10 R0 K7 ["design"]
      100 SETTABLEKS                       R10 R9 K40 ["PluginDesign"]
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K41 ["Change"]
      105 GETTABLEKS                       R10 R10 K14 ["Enabled"]
      107 GETTABLEKS                       R11 R0 K42 ["onWidgetEnabledChanged"]
      109 SETTABLE                         R11 R9 R10
      110 DUPTABLE                         R10 K44 [{"Content"}]
      111 GETUPVAL                         R11 4
      112 GETTABLEKS                       R11 R11 K11 ["createElement"]
      114 GETUPVAL                         R12 6
      115 DUPTABLE                         R13 K49 [{"localization", "refreshKey", "onStyleSheetChange", "onCatalogChanged", "plugin"}]
      116 GETTABLEKS                       R14 R0 K15 ["localization"]
      118 SETTABLEKS                       R14 R13 K15 ["localization"]
      120 GETTABLEKS                       R14 R0 K2 ["state"]
      122 GETTABLEKS                       R14 R14 K50 ["catalogRefreshKey"]
      124 SETTABLEKS                       R14 R13 K45 ["refreshKey"]
      126 GETTABLEKS                       R14 R0 K51 ["onFoundationStyleSheetChange"]
      128 SETTABLEKS                       R14 R13 K46 ["onStyleSheetChange"]
      130 GETTABLEKS                       R14 R0 K52 ["catalogChangePublisher"]
      132 GETTABLEKS                       R14 R14 K53 ["publish"]
      134 SETTABLEKS                       R14 R13 K47 ["onCatalogChanged"]
      136 SETTABLEKS                       R2 R13 K48 ["plugin"]
      138 CALL                             R11 2 1
      139 SETTABLEKS                       R11 R10 K43 ["Content"]
      141 CALL                             R7 3 1
      142 SETTABLEKS                       R7 R6 K9 ["MainWidget"]
      144 CALL                             R4 2 -1
      145 RETURN                           R4 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["syncStateWithActionConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["syncStateWithActionConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["localization"]
       10 NAMECALL                         R1 R1 K3 ["destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["catalogChangeSubscriber"]
       15 GETTABLEKS                       R1 R1 K5 ["cleanup"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
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
       28 GETTABLEKS                       R4 R2 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["DockWidget"]
       32 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["Plugin"]
       36 GETTABLEKS                       R7 R5 K14 ["Mouse"]
       38 GETTABLEKS                       R8 R5 K15 ["Design"]
       40 GETTABLEKS                       R9 R3 K16 ["Util"]
       42 GETTABLEKS                       R9 R9 K17 ["StudioUri"]
       44 GETTABLEKS                       R10 R2 K18 ["Styling"]
       46 GETTABLEKS                       R10 R10 K19 ["registerPluginStyles"]
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R12 R0 K6 ["Packages"]
       52 GETTABLEKS                       R12 R12 K20 ["TerrainPalette"]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R12 R11 K21 ["Components"]
       57 GETTABLEKS                       R12 R12 K22 ["TerrainPaletteApp"]
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R14 R0 K23 ["Src"]
       63 GETTABLEKS                       R14 R14 K24 ["TerrainMaterialCatalogPublisher"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K23 ["Src"]
       70 GETTABLEKS                       R15 R15 K25 ["TerrainMaterialCatalogSubscriber"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R11 K26 ["Localization"]
       75 GETTABLEKS                       R15 R15 K27 ["SourceStrings"]
       77 GETTABLEKS                       R16 R11 K26 ["Localization"]
       79 GETTABLEKS                       R16 R16 K28 ["LocalizedStrings"]
       81 GETTABLEKS                       R17 R9 K29 ["fromAction"]
       83 LOADK                            R18 K2 ["TerrainPaletteEditor"]
       84 LOADK                            R19 K30 ["Toggle"]
       85 CALL                             R17 2 1
       86 DUPCLOSURE                       R18 K31 [PROTO_0]
       87 GETTABLEKS                       R19 R1 K32 ["PureComponent"]
       89 LOADK                            R21 K33 ["MainPlugin"]
       90 NAMECALL                         R19 R19 K34 ["extend"]
       92 CALL                             R19 2 1
       93 DUPCLOSURE                       R20 K35 [PROTO_11]
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R18
      104 SETTABLEKS                       R20 R19 K36 ["init"]
      106 DUPCLOSURE                       R20 K37 [PROTO_13]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R12
      114 SETTABLEKS                       R20 R19 K38 ["render"]
      116 DUPCLOSURE                       R20 K39 [PROTO_14]
      117 SETTABLEKS                       R20 R19 K40 ["willUnmount"]
      119 RETURN                           R19 1
