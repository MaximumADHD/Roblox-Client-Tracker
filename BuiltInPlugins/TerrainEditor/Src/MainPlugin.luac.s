PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["onClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["onRestore"]
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["toolController"]
        8 JUMPIFNOT                        R0 ; [+43]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K4 ["toolController"]
       12 NAMECALL                         R0 R0 K5 ["getTool"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R0 R0 K6 ["_name"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["Empty"]
       20 JUMPIFEQ                         R0 R1 ; [+31]
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["toolController"]
       26 NAMECALL                         R1 R1 K8 ["getToolIndex"]
       28 CALL                             R1 1 1
       29 SETTABLEKS                       R1 R0 K9 ["toolIndex"]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K4 ["toolController"]
       35 NAMECALL                         R1 R1 K10 ["getTabIndex"]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K11 ["tabIndex"]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K4 ["toolController"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K11 ["tabIndex"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K9 ["toolIndex"]
       49 NAMECALL                         R0 R0 K12 ["setTabAndToolIndex"]
       51 CALL                             R0 3 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R0 ; [+28]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       11 GETTABLEKS                       R0 R0 K2 ["mainButton"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["state"]
       16 GETTABLEKS                       R2 R2 K4 ["enabled"]
       18 NAMECALL                         R0 R0 K5 ["SetActive"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["props"]
       24 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       26 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       31 NAMECALL                         R0 R0 K8 ["Connect"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["toolController"]
       10 JUMPIFNOT                        R1 ; [+28]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["tabIndex"]
       14 JUMPIFNOT                        R1 ; [+24]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["toolIndex"]
       18 JUMPIFNOT                        R1 ; [+20]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["toolController"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["tabIndex"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["toolIndex"]
       28 NAMECALL                         R1 R1 K6 ["setTabAndToolIndex"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 0
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R1 K5 ["toolIndex"]
       35 GETUPVAL                         R1 0
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K4 ["tabIndex"]
       39 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["onRestore"]
        6 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["onClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["terrainMaterialTelemetry"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MaterialSettings"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["SourceMaterialSlot"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["PlacePersistent"]
       12 NAMECALL                         R0 R0 K4 ["getGlobal"]
       14 CALL                             R0 4 1
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K5 ["isValidSlotIndex"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["terrainPaletteCommunication"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K7 ["CPC_EVENTS"]
       27 GETTABLEKS                       R3 R3 K8 ["TERRAIN_EDITOR_SOURCE_MATERIAL_CHANGED"]
       29 MOVE                             R4 R0
       30 NAMECALL                         R1 R1 K9 ["Fire"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidSlotIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["pluginController"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K4 ["PlacePersistent"]
       19 NAMECALL                         R1 R1 K5 ["getGlobal"]
       21 CALL                             R1 4 1
       22 JUMPIFNOTEQ                      R1 R0 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["toolController"]
       28 NAMECALL                         R2 R2 K7 ["getTool"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K1 ["pluginController"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K2 ["MaterialSettings"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K3 ["SourceMaterialSlot"]
       40 MOVE                             R7 R0
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K4 ["PlacePersistent"]
       44 NAMECALL                         R3 R3 K8 ["setGlobal"]
       46 CALL                             R3 5 0
       47 NEWTABLE                         R5 1 0
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K2 ["MaterialSettings"]
       52 NEWTABLE                         R7 1 0
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K9 ["InvalidSourceMode"]
       57 LOADB                            R9 0
       58 SETTABLE                         R9 R7 R8
       59 SETTABLE                         R7 R5 R6
       60 NAMECALL                         R3 R2 K10 ["setPayload"]
       62 CALL                             R3 2 0
       63 GETIMPORT                        R3 K13 [task.spawn]
       65 NEWCLOSURE                       R4 P0
       66 CAPTURE                          VAL R2
       67 CALL                             R3 1 0
       68 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        3 JUMPIFNOTEQ                      R0 R4 ; [+21]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["SourceMaterialSlot"]
        8 JUMPIFNOTEQ                      R1 R4 ; [+16]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["PlacePersistent"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+11]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["isValidSlotIndex"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K4 ["publishSourceMaterial"]
       24 CALL                             R4 0 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["resume"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["pause"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADB                            R3 0
        3 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETTABLEKS                       R4 R1 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R4 R4 K2 ["mainDockWidget"]
       10 LOADB                            R5 0
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K3 ["Enabled"]
       15 MOVE                             R3 R5
       16 DUPTABLE                         R6 K5 [{"enabled"}]
       17 SETTABLEKS                       R3 R6 K4 ["enabled"]
       19 NAMECALL                         R4 R0 K6 ["setState"]
       21 CALL                             R4 2 0
       22 GETIMPORT                        R5 K8 [workspace]
       24 GETTABLEKS                       R5 R5 K9 ["Terrain"]
       26 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       28 LOADK                            R6 K10 ["Workspace must contain Terrain"]
       29 GETIMPORT                        R4 K12 [assert]
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R6 R1 K1 ["PluginLoaderContext"]
       34 JUMPIFNOT                        R6 ; [+7]
       35 GETTABLEKS                       R5 R1 K1 ["PluginLoaderContext"]
       37 GETTABLEKS                       R5 R5 K13 ["signals"]
       39 GETTABLEKS                       R5 R5 K14 ["GridBackendReloadRequired"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R5 R4 K14 ["GridBackendReloadRequired"]
       44 SETTABLEKS                       R5 R0 K15 ["gridBackendReloadRequiredSignal"]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R5 R0 K16 ["toggleEnabled"]
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 SETTABLEKS                       R5 R0 K17 ["onClose"]
       55 NEWCLOSURE                       R5 P2
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R5 R0 K18 ["onCreated"]
       59 NEWCLOSURE                       R5 P3
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R5 R0 K19 ["onRestore"]
       63 NEWCLOSURE                       R5 P4
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R5 R0 K20 ["onWidgetEnabledChanged"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K21 ["Localization"]
       70 GETTABLEKS                       R5 R5 K22 ["new"]
       72 DUPTABLE                         R6 K28 [{["libraries"], ["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainEditor"}]
       73 NEWTABLE                         R7 2 0
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K29 ["Resources"]
       78 GETTABLEKS                       R8 R8 K30 ["LOCALIZATION_PROJECT_NAME"]
       80 DUPTABLE                         R9 K31 [{"stringResourceTable", "translationResourceTable"}]
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K29 ["Resources"]
       84 GETTABLEKS                       R10 R10 K32 ["SourceStrings"]
       86 SETTABLEKS                       R10 R9 K24 ["stringResourceTable"]
       88 GETUPVAL                         R10 2
       89 GETTABLEKS                       R10 R10 K29 ["Resources"]
       91 GETTABLEKS                       R10 R10 K33 ["LocalizedStrings"]
       93 SETTABLEKS                       R10 R9 K25 ["translationResourceTable"]
       95 SETTABLE                         R9 R7 R8
       96 GETUPVAL                         R8 3
       97 GETTABLEKS                       R8 R8 K29 ["Resources"]
       99 GETTABLEKS                       R8 R8 K30 ["LOCALIZATION_PROJECT_NAME"]
      101 DUPTABLE                         R9 K31 [{"stringResourceTable", "translationResourceTable"}]
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R10 R10 K29 ["Resources"]
      105 GETTABLEKS                       R10 R10 K32 ["SourceStrings"]
      107 SETTABLEKS                       R10 R9 K24 ["stringResourceTable"]
      109 GETUPVAL                         R10 3
      110 GETTABLEKS                       R10 R10 K29 ["Resources"]
      112 GETTABLEKS                       R10 R10 K33 ["LocalizedStrings"]
      114 SETTABLEKS                       R10 R9 K25 ["translationResourceTable"]
      116 SETTABLE                         R9 R7 R8
      117 SETTABLEKS                       R7 R6 K23 ["libraries"]
      119 GETUPVAL                         R7 4
      120 SETTABLEKS                       R7 R6 K24 ["stringResourceTable"]
      122 GETUPVAL                         R7 5
      123 SETTABLEKS                       R7 R6 K25 ["translationResourceTable"]
      125 CALL                             R5 1 1
      126 SETTABLEKS                       R5 R0 K34 ["localization"]
      128 GETUPVAL                         R5 6
      129 GETTABLEKS                       R5 R5 K22 ["new"]
      131 GETTABLEKS                       R6 R1 K35 ["Telemetry"]
      133 JUMPIF                           R6 ; [+3]
      134 GETUPVAL                         R6 7
      135 GETTABLEKS                       R6 R6 K36 ["TelemetryServiceInterface"]
      137 CALL                             R5 1 1
      138 SETTABLEKS                       R5 R0 K37 ["terrainMaterialTelemetry"]
      140 GETUPVAL                         R5 1
      141 GETTABLEKS                       R5 R5 K38 ["Analytics"]
      143 GETTABLEKS                       R5 R5 K22 ["new"]
      145 NEWCLOSURE                       R6 P5
      146 CAPTURE                          UPVAL U8
      147 CAPTURE                          VAL R0
      148 CALL                             R5 1 1
      149 SETTABLEKS                       R5 R0 K39 ["analytics"]
      151 GETUPVAL                         R5 9
      152 GETTABLEKS                       R5 R5 K22 ["new"]
      154 MOVE                             R6 R2
      155 GETTABLEKS                       R7 R0 K34 ["localization"]
      157 CALL                             R5 2 1
      158 SETTABLEKS                       R5 R0 K40 ["shortcutController"]
      160 GETUPVAL                         R5 10
      161 GETTABLEKS                       R5 R5 K22 ["new"]
      163 MOVE                             R6 R2
      164 CALL                             R5 1 1
      165 SETTABLEKS                       R5 R0 K41 ["pluginController"]
      167 GETUPVAL                         R5 11
      168 GETTABLEKS                       R5 R5 K22 ["new"]
      170 CALL                             R5 0 1
      171 SETTABLEKS                       R5 R0 K42 ["studioServices"]
      173 GETUPVAL                         R5 12
      174 CALL                             R5 0 1
      175 SETTABLEKS                       R5 R0 K43 ["stylizer"]
      177 GETUPVAL                         R5 13
      178 GETTABLEKS                       R5 R5 K22 ["new"]
      180 GETTABLEKS                       R6 R0 K41 ["pluginController"]
      182 GETTABLEKS                       R7 R0 K40 ["shortcutController"]
      184 GETTABLEKS                       R8 R0 K39 ["analytics"]
      186 GETTABLEKS                       R9 R0 K34 ["localization"]
      188 GETTABLEKS                       R10 R0 K43 ["stylizer"]
      190 CALL                             R5 5 1
      191 SETTABLEKS                       R5 R0 K44 ["toolController"]
      193 GETUPVAL                         R5 14
      194 CALL                             R5 0 1
      195 JUMPIFNOT                        R5 ; [+78]
      196 GETUPVAL                         R5 15
      197 GETTABLEKS                       R5 R5 K22 ["new"]
      199 GETUPVAL                         R6 16
      200 GETTABLEKS                       R6 R6 K45 ["EDITOR_CPC_ID"]
      202 CALL                             R5 1 1
      203 SETTABLEKS                       R5 R0 K46 ["terrainPaletteCommunication"]
      205 NEWCLOSURE                       R5 P6
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U17
      208 CAPTURE                          UPVAL U18
      209 CAPTURE                          UPVAL U19
      210 CAPTURE                          UPVAL U20
      211 CAPTURE                          UPVAL U16
      212 SETTABLEKS                       R5 R0 K47 ["publishSourceMaterial"]
      214 GETTABLEKS                       R5 R0 K46 ["terrainPaletteCommunication"]
      216 GETUPVAL                         R7 16
      217 GETTABLEKS                       R7 R7 K48 ["CPC_EVENTS"]
      219 GETTABLEKS                       R7 R7 K49 ["TERRAIN_PALETTE_SELECTION_CHANGED"]
      221 NEWCLOSURE                       R8 P7
      222 CAPTURE                          UPVAL U20
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U17
      225 CAPTURE                          UPVAL U18
      226 CAPTURE                          UPVAL U19
      227 NAMECALL                         R5 R5 K50 ["Connect"]
      229 CALL                             R5 3 1
      230 SETTABLEKS                       R5 R0 K51 ["terrainPaletteSelectionChangedConnection"]
      232 GETTABLEKS                       R5 R0 K41 ["pluginController"]
      234 GETTABLEKS                       R5 R5 K52 ["GlobalChanged"]
      236 NEWCLOSURE                       R7 P8
      237 CAPTURE                          UPVAL U17
      238 CAPTURE                          UPVAL U18
      239 CAPTURE                          UPVAL U19
      240 CAPTURE                          UPVAL U20
      241 CAPTURE                          VAL R0
      242 NAMECALL                         R5 R5 K50 ["Connect"]
      244 CALL                             R5 2 1
      245 SETTABLEKS                       R5 R0 K53 ["sourceMaterialChangedConnection"]
      247 GETTABLEKS                       R5 R0 K46 ["terrainPaletteCommunication"]
      249 GETUPVAL                         R7 16
      250 GETTABLEKS                       R7 R7 K48 ["CPC_EVENTS"]
      252 GETTABLEKS                       R7 R7 K54 ["TERRAIN_PALETTE_EDITOR_READY"]
      254 GETTABLEKS                       R8 R0 K47 ["publishSourceMaterial"]
      256 NAMECALL                         R5 R5 K50 ["Connect"]
      258 CALL                             R5 3 1
      259 SETTABLEKS                       R5 R0 K55 ["terrainPaletteEditorReadyConnection"]
      261 GETTABLEKS                       R5 R0 K47 ["publishSourceMaterial"]
      263 CALL                             R5 0 0
      264 GETTABLEKS                       R5 R0 K46 ["terrainPaletteCommunication"]
      266 GETUPVAL                         R7 16
      267 GETTABLEKS                       R7 R7 K48 ["CPC_EVENTS"]
      269 GETTABLEKS                       R7 R7 K56 ["TERRAIN_EDITOR_READY"]
      271 NAMECALL                         R5 R5 K57 ["Fire"]
      273 CALL                             R5 2 0
      274 NEWCLOSURE                       R5 P9
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R5 R0 K58 ["onFocused"]
      278 NEWCLOSURE                       R5 P10
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R5 R0 K59 ["onUnfocused"]
      282 GETTABLEKS                       R6 R0 K60 ["props"]
      284 GETTABLEKS                       R6 R6 K1 ["PluginLoaderContext"]
      286 JUMPIFNOT                        R6 ; [+7]
      287 GETTABLEKS                       R5 R0 K60 ["props"]
      289 GETTABLEKS                       R5 R5 K1 ["PluginLoaderContext"]
      291 GETTABLEKS                       R5 R5 K61 ["mainButton"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R5
      295 SETTABLEKS                       R5 R0 K62 ["button"]
      297 GETUPVAL                         R5 21
      298 GETTABLEKS                       R5 R5 K63 ["Util"]
      300 GETTABLEKS                       R5 R5 K64 ["createFoundationDesignBinding"]
      302 CALL                             R5 0 2
      303 SETTABLEKS                       R6 R0 K65 ["onFoundationStyleSheetChange"]
      305 GETUPVAL                         R7 22
      306 GETTABLEKS                       R8 R1 K0 ["Plugin"]
      308 LOADNIL                          R9
      309 LOADNIL                          R10
      310 NEWTABLE                         R11 0 1
      312 MOVE                             R12 R5
      313 SETLIST                          R11 R12 1 [1]
      315 CALL                             R7 4 1
      316 SETTABLEKS                       R7 R0 K66 ["design"]
      318 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["enabled"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["terrainMaterialTelemetry"]
       10 NAMECALL                         R1 R1 K3 ["reportEditorOpened"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["button"]
        2 GETTABLEKS                       R5 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R5 K2 ["enabled"]
        6 NAMECALL                         R3 R3 K3 ["SetActive"]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+13]
       12 GETTABLEKS                       R3 R2 K2 ["enabled"]
       14 JUMPIF                           R3 ; [+10]
       15 GETTABLEKS                       R3 R0 K1 ["state"]
       17 GETTABLEKS                       R3 R3 K2 ["enabled"]
       19 JUMPIFNOT                        R3 ; [+5]
       20 GETTABLEKS                       R3 R0 K4 ["terrainMaterialTelemetry"]
       22 NAMECALL                         R3 R3 K5 ["reportEditorOpened"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["sourceMaterialChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["sourceMaterialChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["terrainPaletteSelectionChangedConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["terrainPaletteSelectionChangedConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["terrainPaletteEditorReadyConnection"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["terrainPaletteEditorReadyConnection"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["pluginController"]
       26 NAMECALL                         R1 R1 K5 ["destroy"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K6 ["toolController"]
       31 NAMECALL                         R1 R1 K5 ["destroy"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 9
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K4 ["new"]
       18 NAMECALL                         R8 R3 K5 ["getMouse"]
       20 CALL                             R8 1 -1
       21 CALL                             R7 -1 1
       22 GETTABLEKS                       R8 R0 K6 ["stylizer"]
       24 GETTABLEKS                       R9 R0 K7 ["localization"]
       26 GETTABLEKS                       R10 R0 K8 ["analytics"]
       28 GETTABLEKS                       R11 R0 K9 ["shortcutController"]
       30 GETTABLEKS                       R12 R0 K10 ["pluginController"]
       32 GETTABLEKS                       R13 R0 K11 ["studioServices"]
       34 GETTABLEKS                       R14 R0 K12 ["toolController"]
       36 SETLIST                          R5 R6 9 [1]
       38 MOVE                             R7 R5
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K4 ["new"]
       42 GETTABLEKS                       R9 R0 K13 ["design"]
       44 CALL                             R8 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R6 K16 [table.insert]
       48 CALL                             R6 -1 0
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K17 ["provide"]
       52 MOVE                             R7 R5
       53 DUPTABLE                         R8 K20 [{"ExpandedTerrainRestartDialog", "MainWidget"}]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K21 ["createElement"]
       57 GETUPVAL                         R10 5
       58 DUPTABLE                         R11 K24 [{"reloadRequiredSignal", "overlayGui"}]
       59 GETTABLEKS                       R12 R0 K25 ["gridBackendReloadRequiredSignal"]
       61 SETTABLEKS                       R12 R11 K22 ["reloadRequiredSignal"]
       63 GETTABLEKS                       R13 R1 K26 ["PluginLoaderContext"]
       65 JUMPIFNOT                        R13 ; [+5]
       66 GETTABLEKS                       R12 R1 K26 ["PluginLoaderContext"]
       68 GETTABLEKS                       R12 R12 K27 ["mainDockWidget"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R12
       72 SETTABLEKS                       R12 R11 K23 ["overlayGui"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K18 ["ExpandedTerrainRestartDialog"]
       77 GETUPVAL                         R9 4
       78 GETTABLEKS                       R9 R9 K21 ["createElement"]
       80 GETUPVAL                         R10 6
       81 NEWTABLE                         R11 16 0
       83 LOADK                            R12 K28 ["TerrainEditor"]
       84 SETTABLEKS                       R12 R11 K29 ["Id"]
       86 SETTABLEKS                       R4 R11 K30 ["Enabled"]
       88 GETTABLEKS                       R12 R0 K7 ["localization"]
       90 LOADK                            R14 K2 ["Plugin"]
       91 LOADK                            R15 K31 ["Name"]
       92 NAMECALL                         R12 R12 K32 ["getText"]
       94 CALL                             R12 3 1
       95 SETTABLEKS                       R12 R11 K33 ["Title"]
       97 GETIMPORT                        R12 K37 [Enum.ZIndexBehavior.Sibling]
       99 SETTABLEKS                       R12 R11 K35 ["ZIndexBehavior"]
      101 GETIMPORT                        R12 K40 [Enum.InitialDockState.Left]
      103 SETTABLEKS                       R12 R11 K38 ["InitialDockState"]
      105 GETIMPORT                        R12 K42 [Vector2.new]
      107 LOADN                            R13 640
      108 LOADN                            R14 480
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K43 ["Size"]
      112 GETIMPORT                        R12 K42 [Vector2.new]
      114 LOADN                            R13 350
      115 LOADN                            R14 200
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K44 ["MinSize"]
      119 GETTABLEKS                       R12 R0 K45 ["onClose"]
      121 SETTABLEKS                       R12 R11 K46 ["OnClose"]
      123 LOADB                            R12 1
      124 SETTABLEKS                       R12 R11 K47 ["ShouldRestore"]
      126 GETTABLEKS                       R12 R0 K48 ["onCreated"]
      128 SETTABLEKS                       R12 R11 K49 ["OnWidgetCreated"]
      130 GETTABLEKS                       R12 R0 K50 ["onFocused"]
      132 SETTABLEKS                       R12 R11 K51 ["OnWidgetFocused"]
      134 GETTABLEKS                       R12 R0 K52 ["onUnfocused"]
      136 SETTABLEKS                       R12 R11 K53 ["OnWidgetFocusReleased"]
      138 GETTABLEKS                       R12 R0 K54 ["onRestore"]
      140 SETTABLEKS                       R12 R11 K55 ["OnWidgetRestored"]
      142 GETTABLEKS                       R13 R0 K0 ["props"]
      144 GETTABLEKS                       R13 R13 K26 ["PluginLoaderContext"]
      146 JUMPIFNOT                        R13 ; [+7]
      147 GETTABLEKS                       R12 R0 K0 ["props"]
      149 GETTABLEKS                       R12 R12 K26 ["PluginLoaderContext"]
      151 GETTABLEKS                       R12 R12 K27 ["mainDockWidget"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R12
      155 SETTABLEKS                       R12 R11 K56 ["Widget"]
      157 GETUPVAL                         R12 7
      158 GETTABLEKS                       R12 R12 K57 ["Change"]
      160 GETTABLEKS                       R12 R12 K30 ["Enabled"]
      162 GETTABLEKS                       R13 R0 K58 ["onWidgetEnabledChanged"]
      164 SETTABLE                         R13 R11 R12
      165 GETUPVAL                         R13 8
      166 CALL                             R13 0 1
      167 JUMPIF                           R13 ; [+3]
      168 GETUPVAL                         R13 9
      169 CALL                             R13 0 1
      170 JUMPIFNOT                        R13 ; [+22]
      171 DUPTABLE                         R12 K60 [{"Provider"}]
      172 GETUPVAL                         R13 4
      173 GETTABLEKS                       R13 R13 K21 ["createElement"]
      175 GETUPVAL                         R14 10
      176 DUPTABLE                         R15 K62 [{"onStyleSheetChange"}]
      177 GETTABLEKS                       R16 R0 K63 ["onFoundationStyleSheetChange"]
      179 SETTABLEKS                       R16 R15 K61 ["onStyleSheetChange"]
      181 DUPTABLE                         R16 K65 [{"App"}]
      182 GETUPVAL                         R17 4
      183 GETTABLEKS                       R17 R17 K21 ["createElement"]
      185 GETUPVAL                         R18 11
      186 CALL                             R17 1 1
      187 SETTABLEKS                       R17 R16 K64 ["App"]
      189 CALL                             R13 3 1
      190 SETTABLEKS                       R13 R12 K59 ["Provider"]
      192 JUMP                             ; [+8]
      193 DUPTABLE                         R12 K65 [{"App"}]
      194 GETUPVAL                         R13 4
      195 GETTABLEKS                       R13 R13 K21 ["createElement"]
      197 GETUPVAL                         R14 11
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R13 R12 K64 ["App"]
      201 CALL                             R9 3 1
      202 SETTABLEKS                       R9 R8 K19 ["MainWidget"]
      204 LOADB                            R9 1
      205 CALL                             R6 3 -1
      206 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["SharedPluginConstants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["Packages"]
       39 GETTABLEKS                       R6 R6 K10 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["Packages"]
       46 GETTABLEKS                       R7 R7 K11 ["TerrainPalette"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R5 K12 ["Components"]
       51 GETTABLEKS                       R7 R7 K13 ["FoundationProviderAdapter"]
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K5 ["Packages"]
       57 GETTABLEKS                       R9 R9 K14 ["Framework"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K5 ["Packages"]
       64 GETTABLEKS                       R10 R10 K15 ["MaterialFramework"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R8 K16 ["UI"]
       69 GETTABLEKS                       R11 R10 K17 ["DockWidget"]
       71 GETTABLEKS                       R12 R8 K18 ["ContextServices"]
       73 GETTABLEKS                       R13 R12 K19 ["Plugin"]
       75 GETTABLEKS                       R14 R12 K20 ["Mouse"]
       77 GETTABLEKS                       R15 R12 K21 ["Design"]
       79 GETTABLEKS                       R16 R8 K22 ["Styling"]
       81 GETTABLEKS                       R16 R16 K23 ["registerPluginStyles"]
       83 GETTABLEKS                       R17 R8 K24 ["Util"]
       85 GETTABLEKS                       R17 R17 K25 ["CrossPluginCommunication"]
       87 GETTABLEKS                       R18 R9 K26 ["Context"]
       89 GETTABLEKS                       R18 R18 K27 ["StudioServices"]
       91 GETIMPORT                        R19 K4 [require]
       93 GETTABLEKS                       R20 R0 K28 ["Src"]
       95 GETTABLEKS                       R20 R20 K29 ["Resources"]
       97 GETTABLEKS                       R20 R20 K30 ["MakeTheme"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R20 R0 K28 ["Src"]
      102 GETTABLEKS                       R20 R20 K29 ["Resources"]
      104 GETTABLEKS                       R20 R20 K31 ["Localization"]
      106 GETTABLEKS                       R20 R20 K32 ["SourceStrings"]
      108 GETTABLEKS                       R21 R0 K28 ["Src"]
      110 GETTABLEKS                       R21 R21 K29 ["Resources"]
      112 GETTABLEKS                       R21 R21 K31 ["Localization"]
      114 GETTABLEKS                       R21 R21 K33 ["LocalizedStrings"]
      116 GETTABLEKS                       R22 R0 K28 ["Src"]
      118 GETTABLEKS                       R22 R22 K12 ["Components"]
      120 GETIMPORT                        R23 K4 [require]
      122 GETTABLEKS                       R24 R22 K34 ["App"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K4 [require]
      127 GETTABLEKS                       R25 R22 K35 ["ExpandedTerrainRestartDialog"]
      129 GETTABLEKS                       R25 R25 K36 ["Controller"]
      131 CALL                             R24 1 1
      132 GETTABLEKS                       R25 R0 K28 ["Src"]
      134 GETTABLEKS                       R25 R25 K37 ["Controllers"]
      136 GETIMPORT                        R26 K4 [require]
      138 GETTABLEKS                       R27 R25 K38 ["ShortcutController"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K4 [require]
      143 GETTABLEKS                       R28 R25 K39 ["PluginController"]
      145 CALL                             R27 1 1
      146 GETIMPORT                        R28 K4 [require]
      148 GETTABLEKS                       R29 R25 K40 ["ToolController"]
      150 CALL                             R28 1 1
      151 GETIMPORT                        R29 K4 [require]
      153 GETTABLEKS                       R30 R0 K28 ["Src"]
      155 GETTABLEKS                       R30 R30 K29 ["Resources"]
      157 GETTABLEKS                       R30 R30 K41 ["AnalyticsHandlers"]
      159 CALL                             R29 1 1
      160 GETIMPORT                        R30 K4 [require]
      162 GETTABLEKS                       R31 R0 K28 ["Src"]
      164 GETTABLEKS                       R31 R31 K24 ["Util"]
      166 GETTABLEKS                       R31 R31 K42 ["TerrainMaterialTelemetry"]
      168 CALL                             R30 1 1
      169 GETIMPORT                        R31 K4 [require]
      171 GETTABLEKS                       R32 R0 K28 ["Src"]
      173 GETTABLEKS                       R32 R32 K43 ["Types"]
      175 CALL                             R31 1 1
      176 GETTABLEKS                       R32 R31 K44 ["Category"]
      178 GETTABLEKS                       R33 R31 K45 ["MaterialSettings"]
      180 GETTABLEKS                       R34 R31 K46 ["Storage"]
      182 GETTABLEKS                       R35 R31 K47 ["Tool"]
      184 GETTABLEKS                       R36 R4 K48 ["TERRAIN"]
      186 GETTABLEKS                       R37 R6 K49 ["TerrainMaterialPickerProtocol"]
      188 GETIMPORT                        R38 K4 [require]
      190 GETTABLEKS                       R39 R0 K28 ["Src"]
      192 GETTABLEKS                       R39 R39 K50 ["Flags"]
      194 GETTABLEKS                       R39 R39 K51 ["getFFlagEnableTerrainPalette"]
      196 CALL                             R38 1 1
      197 GETIMPORT                        R39 K4 [require]
      199 GETTABLEKS                       R40 R0 K28 ["Src"]
      201 GETTABLEKS                       R40 R40 K50 ["Flags"]
      203 GETTABLEKS                       R40 R40 K52 ["getFFlagMigrateTerrainEditorTelemetryToV2"]
      205 CALL                             R39 1 1
      206 GETIMPORT                        R40 K4 [require]
      208 GETTABLEKS                       R41 R0 K28 ["Src"]
      210 GETTABLEKS                       R41 R41 K50 ["Flags"]
      212 GETTABLEKS                       R41 R41 K53 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      214 CALL                             R40 1 1
      215 GETTABLEKS                       R41 R2 K54 ["PureComponent"]
      217 LOADK                            R43 K55 ["MainPlugin"]
      218 NAMECALL                         R41 R41 K56 ["extend"]
      220 CALL                             R41 2 1
      221 DUPCLOSURE                       R42 K57 [PROTO_12]
      222 CAPTURE                          VAL R35
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R30
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R27
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R28
      236 CAPTURE                          VAL R38
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R36
      239 CAPTURE                          VAL R32
      240 CAPTURE                          VAL R33
      241 CAPTURE                          VAL R34
      242 CAPTURE                          VAL R37
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R16
      245 SETTABLEKS                       R42 R41 K58 ["init"]
      247 DUPCLOSURE                       R42 K59 [PROTO_13]
      248 CAPTURE                          VAL R39
      249 SETTABLEKS                       R42 R41 K60 ["didMount"]
      251 DUPCLOSURE                       R42 K61 [PROTO_14]
      252 CAPTURE                          VAL R39
      253 SETTABLEKS                       R42 R41 K62 ["didUpdate"]
      255 DUPCLOSURE                       R42 K63 [PROTO_15]
      256 SETTABLEKS                       R42 R41 K64 ["willUnmount"]
      258 DUPCLOSURE                       R42 K65 [PROTO_16]
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R12
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R38
      268 CAPTURE                          VAL R40
      269 CAPTURE                          VAL R7
      270 CAPTURE                          VAL R23
      271 SETTABLEKS                       R42 R41 K66 ["render"]
      273 RETURN                           R41 1
