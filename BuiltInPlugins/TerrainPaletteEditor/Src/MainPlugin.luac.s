PROTO_0:
        0 DUPTABLE                         R1 K1 [{"catalogRefreshKey"}]
        1 GETTABLEKS                       R3 R0 K0 ["catalogRefreshKey"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["catalogRefreshKey"]
        6 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K1 ["id"]
        6 ADDK                             R1 R2 K0 [1]
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["selectionRequest"]
        2 DUPTABLE                         R2 K1 [{"selectionRequest"}]
        3 DUPTABLE                         R3 K4 [{"id", "slotIndex"}]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADN                            R4 1
        7 JUMP                             ; [+3]
        8 GETTABLEKS                       R5 R1 K2 ["id"]
       10 ADDK                             R4 R5 K5 [1]
       11 SETTABLEKS                       R4 R3 K2 ["id"]
       13 GETUPVAL                         R4 0
       14 SETTABLEKS                       R4 R3 K3 ["slotIndex"]
       16 SETTABLEKS                       R3 R2 K0 ["selectionRequest"]
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TerrainMaterialPickerProtocol"]
        3 GETTABLEKS                       R1 R1 K1 ["isValidSlotIndex"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R1 R1 K2 ["setState"]
       15 CALL                             R1 2 0
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 GETTABLEKS                       R3 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R3 R3 K2 ["mainDockWidget"]
        6 LOADK                            R6 K3 ["Actions"]
        7 NAMECALL                         R4 R2 K4 ["GetPluginComponent"]
        9 CALL                             R4 2 1
       10 DUPTABLE                         R5 K10 [{["catalogRefreshKey"] = 0, ["enabled"], ["selectionRequest"] = }]
       11 LOADB                            R6 0
       12 JUMPIFEQKNIL                     R3 ; [+3]
       14 GETTABLEKS                       R6 R3 K11 ["Enabled"]
       16 SETTABLEKS                       R6 R5 K7 ["enabled"]
       18 SETTABLEKS                       R5 R0 K12 ["state"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K13 ["new"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K14 ["EDITOR_CPC_ID"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R0 K15 ["communication"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R0 K16 ["selectSlot"]
       34 GETTABLEKS                       R5 R0 K15 ["communication"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K17 ["CPC_CALLBACKS"]
       39 GETTABLEKS                       R7 R7 K18 ["SELECT_SLOT"]
       41 GETTABLEKS                       R8 R0 K16 ["selectSlot"]
       43 NAMECALL                         R5 R5 K19 ["OnInvoke"]
       45 CALL                             R5 3 0
       46 GETTABLEKS                       R5 R0 K15 ["communication"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K20 ["CPC_EVENTS"]
       51 GETTABLEKS                       R7 R7 K21 ["TERRAIN_PALETTE_EDITOR_READY"]
       53 NAMECALL                         R5 R5 K22 ["Fire"]
       55 CALL                             R5 2 0
       56 GETIMPORT                        R5 K25 [task.spawn]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R0
       62 CALL                             R5 1 0
       63 NEWCLOSURE                       R5 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 CAPTURE                          UPVAL U3
       67 SETTABLEKS                       R5 R0 K26 ["onClose"]
       69 NEWCLOSURE                       R5 P3
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R4
       72 CAPTURE                          UPVAL U3
       73 SETTABLEKS                       R5 R0 K27 ["onRestore"]
       75 NEWCLOSURE                       R5 P4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U3
       79 SETTABLEKS                       R5 R0 K28 ["onWidgetEnabledChanged"]
       81 GETUPVAL                         R5 4
       82 GETTABLEKS                       R5 R5 K29 ["Localization"]
       84 GETTABLEKS                       R5 R5 K13 ["new"]
       86 DUPTABLE                         R6 K34 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainPaletteEditor"}]
       87 GETUPVAL                         R7 5
       88 SETTABLEKS                       R7 R6 K30 ["stringResourceTable"]
       90 GETUPVAL                         R7 6
       91 SETTABLEKS                       R7 R6 K31 ["translationResourceTable"]
       93 CALL                             R5 1 1
       94 SETTABLEKS                       R5 R0 K35 ["localizationLEGACY"]
       96 GETUPVAL                         R5 2
       97 GETTABLEKS                       R5 R5 K29 ["Localization"]
       99 GETTABLEKS                       R5 R5 K36 ["createLocalization"]
      101 CALL                             R5 0 1
      102 SETTABLEKS                       R5 R0 K37 ["localization"]
      104 GETUPVAL                         R5 7
      105 GETTABLEKS                       R5 R5 K38 ["Util"]
      107 GETTABLEKS                       R5 R5 K39 ["createFoundationDesignBinding"]
      109 CALL                             R5 0 2
      110 SETTABLEKS                       R6 R0 K40 ["onFoundationStyleSheetChange"]
      112 GETUPVAL                         R7 8
      113 MOVE                             R8 R2
      114 LOADNIL                          R9
      115 LOADNIL                          R10
      116 NEWTABLE                         R11 0 1
      118 MOVE                             R12 R5
      119 SETLIST                          R11 R12 1 [1]
      121 CALL                             R7 4 1
      122 SETTABLEKS                       R7 R0 K41 ["design"]
      124 GETUPVAL                         R7 9
      125 GETTABLEKS                       R7 R7 K13 ["new"]
      127 CALL                             R7 0 1
      128 SETTABLEKS                       R7 R0 K42 ["catalogChangePublisher"]
      130 GETUPVAL                         R7 10
      131 GETTABLEKS                       R7 R7 K13 ["new"]
      133 NEWCLOSURE                       R8 P5
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U11
      136 CALL                             R7 1 1
      137 SETTABLEKS                       R7 R0 K43 ["catalogChangeSubscriber"]
      139 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
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
       60 GETIMPORT                        R10 K25 [Enum.InitialDockState.Float]
       62 SETTABLEKS                       R10 R9 K23 ["InitialDockState"]
       64 GETIMPORT                        R10 K27 [Vector2.new]
       66 LOADN                            R11 900
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
       95 DUPCLOSURE                       R10 K38 [PROTO_15]
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
      115 DUPTABLE                         R13 K50 [{"localization", "refreshKey", "selectionRequest", "onStyleSheetChange", "onCatalogChanged", "plugin"}]
      116 GETTABLEKS                       R14 R0 K15 ["localization"]
      118 SETTABLEKS                       R14 R13 K15 ["localization"]
      120 GETTABLEKS                       R14 R0 K2 ["state"]
      122 GETTABLEKS                       R14 R14 K51 ["catalogRefreshKey"]
      124 SETTABLEKS                       R14 R13 K45 ["refreshKey"]
      126 GETTABLEKS                       R14 R0 K2 ["state"]
      128 GETTABLEKS                       R14 R14 K46 ["selectionRequest"]
      130 SETTABLEKS                       R14 R13 K46 ["selectionRequest"]
      132 GETTABLEKS                       R14 R0 K52 ["onFoundationStyleSheetChange"]
      134 SETTABLEKS                       R14 R13 K47 ["onStyleSheetChange"]
      136 GETTABLEKS                       R14 R0 K53 ["catalogChangePublisher"]
      138 GETTABLEKS                       R14 R14 K54 ["publish"]
      140 SETTABLEKS                       R14 R13 K48 ["onCatalogChanged"]
      142 SETTABLEKS                       R2 R13 K49 ["plugin"]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K43 ["Content"]
      147 CALL                             R7 3 1
      148 SETTABLEKS                       R7 R6 K9 ["MainWidget"]
      150 CALL                             R4 2 -1
      151 RETURN                           R4 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["syncStateWithActionConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["syncStateWithActionConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["communication"]
       10 NAMECALL                         R1 R1 K3 ["cleanup"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["localization"]
       15 NAMECALL                         R1 R1 K5 ["destroy"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K6 ["catalogChangeSubscriber"]
       20 GETTABLEKS                       R1 R1 K3 ["cleanup"]
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["UI"]
       37 GETTABLEKS                       R5 R5 K12 ["DockWidget"]
       39 GETTABLEKS                       R6 R1 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Plugin"]
       43 GETTABLEKS                       R8 R6 K15 ["Mouse"]
       45 GETTABLEKS                       R9 R6 K16 ["Design"]
       47 GETTABLEKS                       R10 R4 K17 ["Util"]
       49 GETTABLEKS                       R10 R10 K18 ["StudioUri"]
       51 GETTABLEKS                       R11 R1 K19 ["Styling"]
       53 GETTABLEKS                       R11 R11 K20 ["registerPluginStyles"]
       55 GETTABLEKS                       R12 R1 K17 ["Util"]
       57 GETTABLEKS                       R12 R12 K21 ["CrossPluginCommunication"]
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R14 R0 K6 ["Packages"]
       63 GETTABLEKS                       R14 R14 K22 ["TerrainPalette"]
       65 CALL                             R13 1 1
       66 GETTABLEKS                       R14 R13 K23 ["Components"]
       68 GETTABLEKS                       R14 R14 K24 ["TerrainPaletteApp"]
       70 GETIMPORT                        R15 K5 [require]
       72 GETTABLEKS                       R16 R0 K25 ["Src"]
       74 GETTABLEKS                       R16 R16 K26 ["TerrainMaterialCatalogPublisher"]
       76 CALL                             R15 1 1
       77 GETIMPORT                        R16 K5 [require]
       79 GETTABLEKS                       R17 R0 K25 ["Src"]
       81 GETTABLEKS                       R17 R17 K27 ["TerrainMaterialCatalogSubscriber"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R0 K25 ["Src"]
       88 GETTABLEKS                       R18 R18 K28 ["Types"]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R18 R13 K29 ["Localization"]
       93 GETTABLEKS                       R18 R18 K30 ["SourceStrings"]
       95 GETTABLEKS                       R19 R13 K29 ["Localization"]
       97 GETTABLEKS                       R19 R19 K31 ["LocalizedStrings"]
       99 GETTABLEKS                       R20 R10 K32 ["fromAction"]
      101 LOADK                            R21 K2 ["TerrainPaletteEditor"]
      102 LOADK                            R22 K33 ["Toggle"]
      103 CALL                             R20 2 1
      104 GETTABLEKS                       R21 R3 K34 ["TERRAIN"]
      106 DUPCLOSURE                       R22 K35 [PROTO_0]
      107 DUPCLOSURE                       R23 K36 [PROTO_1]
      108 GETTABLEKS                       R24 R2 K37 ["PureComponent"]
      110 LOADK                            R26 K38 ["MainPlugin"]
      111 NAMECALL                         R24 R24 K39 ["extend"]
      113 CALL                             R24 2 1
      114 DUPCLOSURE                       R25 K40 [PROTO_14]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R22
      127 SETTABLEKS                       R25 R24 K41 ["init"]
      129 DUPCLOSURE                       R25 K42 [PROTO_16]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R14
      137 SETTABLEKS                       R25 R24 K43 ["render"]
      139 DUPCLOSURE                       R25 K44 [PROTO_17]
      140 SETTABLEKS                       R25 R24 K45 ["willUnmount"]
      142 RETURN                           R24 1
