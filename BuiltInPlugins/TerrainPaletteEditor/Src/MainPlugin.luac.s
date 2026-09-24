PROTO_0:
        0 DUPTABLE                         R1 K1 [{"catalogRefreshKey"}]
        1 GETTABLEKS                       R3 R0 K0 ["catalogRefreshKey"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["catalogRefreshKey"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["telemetry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["onEvent"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["TerrainMaterialPickerProtocol"]
        3 GETTABLEKS                       R2 R2 K1 ["isValidSlotIndex"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+10]
        8 JUMPIFNOTEQKS                    R1 K2 ["externalRequest"] ; [+7]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["telemetry"]
       13 NAMECALL                         R2 R2 K4 ["reportInvalidExternalSelection"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["selectedSlotIndex"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+3]
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 DUPTABLE                         R2 K8 [{"id", "slotIndex"}]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K9 ["nextSelectionRequestId"]
       29 SETTABLEKS                       R3 R2 K6 ["id"]
       31 SETTABLEKS                       R0 R2 K7 ["slotIndex"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R4 R3 K9 ["nextSelectionRequestId"]
       36 ADDK                             R4 R4 K10 [1]
       37 SETTABLEKS                       R4 R3 K9 ["nextSelectionRequestId"]
       39 JUMPIFNOTEQKS                    R1 K2 ["externalRequest"] ; [+10]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K3 ["telemetry"]
       44 GETTABLEKS                       R5 R2 K6 ["id"]
       46 NAMECALL                         R3 R3 K11 ["beginExternalSelection"]
       48 CALL                             R3 2 0
       49 JUMP                             ; [+6]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K3 ["telemetry"]
       53 NAMECALL                         R3 R3 K12 ["clearPendingExternalSelection"]
       55 CALL                             R3 1 0
       56 GETUPVAL                         R3 1
       57 DUPTABLE                         R5 K14 [{"selectionRequest"}]
       58 SETTABLEKS                       R2 R5 K13 ["selectionRequest"]
       60 NAMECALL                         R3 R3 K15 ["setState"]
       62 CALL                             R3 2 0
       63 LOADB                            R3 1
       64 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["externalRequest"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["sourceSync"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["selectedSlotIndex"]
        3 JUMPIFEQKNIL                     R0 ; [+13]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["communication"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["CPC_EVENTS"]
       11 GETTABLEKS                       R3 R3 K3 ["TERRAIN_PALETTE_SELECTION_CHANGED"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K4 ["Fire"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedSlotIndex"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["onSelectionChanged"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["selectedSlotIndex"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
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
       20 LOADN                            R5 1
       21 SETTABLEKS                       R5 R0 K13 ["nextSelectionRequestId"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K14 ["new"]
       26 GETTABLEKS                       R6 R1 K15 ["Telemetry"]
       28 JUMPIF                           R6 ; [+3]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K16 ["TelemetryServiceInterface"]
       32 GETTABLEKS                       R7 R0 K12 ["state"]
       34 GETTABLEKS                       R7 R7 K7 ["enabled"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R0 K17 ["telemetry"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R5 R0 K18 ["onTerrainPaletteEvent"]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K14 ["new"]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K19 ["EDITOR_CPC_ID"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R0 K20 ["communication"]
       52 NEWCLOSURE                       R5 P1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R0
       55 NEWCLOSURE                       R6 P2
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R6 R0 K21 ["selectSlot"]
       59 GETTABLEKS                       R6 R0 K20 ["communication"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K22 ["CPC_CALLBACKS"]
       64 GETTABLEKS                       R8 R8 K23 ["SELECT_SLOT"]
       66 GETTABLEKS                       R9 R0 K21 ["selectSlot"]
       68 NAMECALL                         R6 R6 K24 ["OnInvoke"]
       70 CALL                             R6 3 0
       71 GETTABLEKS                       R6 R0 K20 ["communication"]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K25 ["CPC_EVENTS"]
       76 GETTABLEKS                       R8 R8 K26 ["TERRAIN_EDITOR_SOURCE_MATERIAL_CHANGED"]
       78 NEWCLOSURE                       R9 P3
       79 CAPTURE                          VAL R5
       80 NAMECALL                         R6 R6 K27 ["Connect"]
       82 CALL                             R6 3 0
       83 NEWCLOSURE                       R6 P4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U3
       86 SETTABLEKS                       R6 R0 K28 ["onSelectionChanged"]
       88 GETTABLEKS                       R6 R0 K20 ["communication"]
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K25 ["CPC_EVENTS"]
       93 GETTABLEKS                       R8 R8 K29 ["TERRAIN_EDITOR_READY"]
       95 NEWCLOSURE                       R9 P5
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R6 R6 K27 ["Connect"]
       99 CALL                             R6 3 0
      100 GETTABLEKS                       R6 R0 K20 ["communication"]
      102 GETUPVAL                         R8 3
      103 GETTABLEKS                       R8 R8 K25 ["CPC_EVENTS"]
      105 GETTABLEKS                       R8 R8 K30 ["TERRAIN_PALETTE_EDITOR_READY"]
      107 NAMECALL                         R6 R6 K31 ["Fire"]
      109 CALL                             R6 2 0
      110 GETIMPORT                        R6 K34 [task.spawn]
      112 NEWCLOSURE                       R7 P6
      113 CAPTURE                          VAL R4
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R0
      116 CALL                             R6 1 0
      117 NEWCLOSURE                       R6 P7
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R4
      120 CAPTURE                          UPVAL U5
      121 SETTABLEKS                       R6 R0 K35 ["onClose"]
      123 NEWCLOSURE                       R6 P8
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R4
      126 CAPTURE                          UPVAL U5
      127 SETTABLEKS                       R6 R0 K36 ["onRestore"]
      129 NEWCLOSURE                       R6 P9
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R4
      132 CAPTURE                          UPVAL U5
      133 SETTABLEKS                       R6 R0 K37 ["onWidgetEnabledChanged"]
      135 GETUPVAL                         R6 6
      136 GETTABLEKS                       R6 R6 K38 ["Localization"]
      138 GETTABLEKS                       R6 R6 K14 ["new"]
      140 DUPTABLE                         R7 K43 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainPaletteEditor"}]
      141 GETUPVAL                         R8 7
      142 SETTABLEKS                       R8 R7 K39 ["stringResourceTable"]
      144 GETUPVAL                         R8 8
      145 SETTABLEKS                       R8 R7 K40 ["translationResourceTable"]
      147 CALL                             R6 1 1
      148 SETTABLEKS                       R6 R0 K44 ["localizationLEGACY"]
      150 GETUPVAL                         R6 4
      151 GETTABLEKS                       R6 R6 K38 ["Localization"]
      153 GETTABLEKS                       R6 R6 K45 ["createLocalization"]
      155 CALL                             R6 0 1
      156 SETTABLEKS                       R6 R0 K46 ["localization"]
      158 GETUPVAL                         R6 9
      159 GETTABLEKS                       R6 R6 K47 ["Util"]
      161 GETTABLEKS                       R6 R6 K48 ["createFoundationDesignBinding"]
      163 CALL                             R6 0 2
      164 SETTABLEKS                       R7 R0 K49 ["onFoundationStyleSheetChange"]
      166 GETUPVAL                         R8 10
      167 MOVE                             R9 R2
      168 LOADNIL                          R10
      169 LOADNIL                          R11
      170 NEWTABLE                         R12 0 1
      172 MOVE                             R13 R6
      173 SETLIST                          R12 R13 1 [1]
      175 CALL                             R8 4 1
      176 SETTABLEKS                       R8 R0 K50 ["design"]
      178 GETUPVAL                         R8 11
      179 GETTABLEKS                       R8 R8 K14 ["new"]
      181 CALL                             R8 0 1
      182 SETTABLEKS                       R8 R0 K51 ["catalogChangePublisher"]
      184 GETUPVAL                         R8 12
      185 GETTABLEKS                       R8 R8 K14 ["new"]
      187 NEWCLOSURE                       R9 P10
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U13
      190 CALL                             R8 1 1
      191 SETTABLEKS                       R8 R0 K52 ["catalogChangeSubscriber"]
      193 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R2 K0 ["enabled"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R4 K0 ["enabled"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["telemetry"]
       11 GETTABLEKS                       R5 R0 K1 ["state"]
       13 GETTABLEKS                       R5 R5 K0 ["enabled"]
       15 NAMECALL                         R3 R3 K3 ["setEditorEnabled"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
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
       95 DUPCLOSURE                       R10 K38 [PROTO_19]
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
      115 DUPTABLE                         R13 K52 [{"localization", "refreshKey", "selectionRequest", "onEvent", "onStyleSheetChange", "onCatalogChanged", "onSelectionChanged", "plugin"}]
      116 GETTABLEKS                       R14 R0 K15 ["localization"]
      118 SETTABLEKS                       R14 R13 K15 ["localization"]
      120 GETTABLEKS                       R14 R0 K2 ["state"]
      122 GETTABLEKS                       R14 R14 K53 ["catalogRefreshKey"]
      124 SETTABLEKS                       R14 R13 K45 ["refreshKey"]
      126 GETTABLEKS                       R14 R0 K2 ["state"]
      128 GETTABLEKS                       R14 R14 K46 ["selectionRequest"]
      130 SETTABLEKS                       R14 R13 K46 ["selectionRequest"]
      132 GETTABLEKS                       R14 R0 K54 ["onTerrainPaletteEvent"]
      134 SETTABLEKS                       R14 R13 K47 ["onEvent"]
      136 GETTABLEKS                       R14 R0 K55 ["onFoundationStyleSheetChange"]
      138 SETTABLEKS                       R14 R13 K48 ["onStyleSheetChange"]
      140 GETTABLEKS                       R14 R0 K56 ["catalogChangePublisher"]
      142 GETTABLEKS                       R14 R14 K57 ["publish"]
      144 SETTABLEKS                       R14 R13 K49 ["onCatalogChanged"]
      146 GETTABLEKS                       R14 R0 K50 ["onSelectionChanged"]
      148 SETTABLEKS                       R14 R13 K50 ["onSelectionChanged"]
      150 SETTABLEKS                       R2 R13 K51 ["plugin"]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K43 ["Content"]
      155 CALL                             R7 3 1
      156 SETTABLEKS                       R7 R6 K9 ["MainWidget"]
      158 CALL                             R4 2 -1
      159 RETURN                           R4 -1

PROTO_21:
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
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["SharedPluginConstants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["UI"]
       44 GETTABLEKS                       R6 R6 K13 ["DockWidget"]
       46 GETTABLEKS                       R7 R2 K14 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K15 ["Plugin"]
       50 GETTABLEKS                       R9 R7 K16 ["Mouse"]
       52 GETTABLEKS                       R10 R7 K17 ["Design"]
       54 GETTABLEKS                       R11 R5 K18 ["Util"]
       56 GETTABLEKS                       R11 R11 K19 ["StudioUri"]
       58 GETTABLEKS                       R12 R2 K20 ["Styling"]
       60 GETTABLEKS                       R12 R12 K21 ["registerPluginStyles"]
       62 GETTABLEKS                       R13 R2 K18 ["Util"]
       64 GETTABLEKS                       R13 R13 K22 ["CrossPluginCommunication"]
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K6 ["Packages"]
       70 GETTABLEKS                       R15 R15 K23 ["TerrainPalette"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R14 K24 ["Components"]
       75 GETTABLEKS                       R15 R15 K25 ["TerrainPaletteApp"]
       77 GETIMPORT                        R16 K5 [require]
       79 GETTABLEKS                       R17 R0 K26 ["Src"]
       81 GETTABLEKS                       R17 R17 K27 ["TerrainMaterialCatalogPublisher"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R0 K26 ["Src"]
       88 GETTABLEKS                       R18 R18 K28 ["TerrainMaterialCatalogSubscriber"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R0 K26 ["Src"]
       95 GETTABLEKS                       R19 R19 K18 ["Util"]
       97 GETTABLEKS                       R19 R19 K29 ["TerrainPaletteTelemetry"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R0 K26 ["Src"]
      104 GETTABLEKS                       R20 R20 K30 ["Types"]
      106 CALL                             R19 1 1
      107 GETTABLEKS                       R20 R14 K31 ["Localization"]
      109 GETTABLEKS                       R20 R20 K32 ["SourceStrings"]
      111 GETTABLEKS                       R21 R14 K31 ["Localization"]
      113 GETTABLEKS                       R21 R21 K33 ["LocalizedStrings"]
      115 GETTABLEKS                       R22 R11 K34 ["fromAction"]
      117 LOADK                            R23 K2 ["TerrainPaletteEditor"]
      118 LOADK                            R24 K35 ["Toggle"]
      119 CALL                             R22 2 1
      120 GETTABLEKS                       R23 R4 K36 ["TERRAIN"]
      122 DUPCLOSURE                       R24 K37 [PROTO_0]
      123 GETTABLEKS                       R25 R3 K38 ["PureComponent"]
      125 LOADK                            R27 K39 ["MainPlugin"]
      126 NAMECALL                         R25 R25 K40 ["extend"]
      128 CALL                             R25 2 1
      129 DUPCLOSURE                       R26 K41 [PROTO_17]
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R24
      144 SETTABLEKS                       R26 R25 K42 ["init"]
      146 DUPCLOSURE                       R26 K43 [PROTO_18]
      147 SETTABLEKS                       R26 R25 K44 ["didUpdate"]
      149 DUPCLOSURE                       R26 K45 [PROTO_20]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R15
      157 SETTABLEKS                       R26 R25 K46 ["render"]
      159 DUPCLOSURE                       R26 K47 [PROTO_21]
      160 SETTABLEKS                       R26 R25 K48 ["willUnmount"]
      162 RETURN                           R25 1
