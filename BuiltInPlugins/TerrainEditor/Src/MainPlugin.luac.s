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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolController"]
        3 NAMECALL                         R0 R0 K1 ["getTool"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R0 R0 K2 ["OnInternalsChanged"]
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
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
       26 GETTABLEKS                       R2 R2 K1 ["pluginController"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K2 ["MaterialSettings"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K3 ["SourceMaterialSlot"]
       34 MOVE                             R6 R0
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K4 ["PlacePersistent"]
       38 NAMECALL                         R2 R2 K6 ["setGlobal"]
       40 CALL                             R2 5 0
       41 GETIMPORT                        R2 K9 [task.spawn]
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U1
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["resume"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginController"]
        3 NAMECALL                         R0 R0 K1 ["pause"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
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
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R0 K7 ["toggleEnabled"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R4 R0 K8 ["onClose"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R0 K9 ["onCreated"]
       35 NEWCLOSURE                       R4 P3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R4 R0 K10 ["onRestore"]
       39 NEWCLOSURE                       R4 P4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R0 K11 ["onWidgetEnabledChanged"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K12 ["Localization"]
       46 GETTABLEKS                       R4 R4 K13 ["new"]
       48 DUPTABLE                         R5 K19 [{["libraries"], ["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TerrainEditor"}]
       49 NEWTABLE                         R6 2 0
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K20 ["Resources"]
       54 GETTABLEKS                       R7 R7 K21 ["LOCALIZATION_PROJECT_NAME"]
       56 DUPTABLE                         R8 K22 [{"stringResourceTable", "translationResourceTable"}]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K20 ["Resources"]
       60 GETTABLEKS                       R9 R9 K23 ["SourceStrings"]
       62 SETTABLEKS                       R9 R8 K15 ["stringResourceTable"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K20 ["Resources"]
       67 GETTABLEKS                       R9 R9 K24 ["LocalizedStrings"]
       69 SETTABLEKS                       R9 R8 K16 ["translationResourceTable"]
       71 SETTABLE                         R8 R6 R7
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R7 R7 K20 ["Resources"]
       75 GETTABLEKS                       R7 R7 K21 ["LOCALIZATION_PROJECT_NAME"]
       77 DUPTABLE                         R8 K22 [{"stringResourceTable", "translationResourceTable"}]
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R9 R9 K20 ["Resources"]
       81 GETTABLEKS                       R9 R9 K23 ["SourceStrings"]
       83 SETTABLEKS                       R9 R8 K15 ["stringResourceTable"]
       85 GETUPVAL                         R9 3
       86 GETTABLEKS                       R9 R9 K20 ["Resources"]
       88 GETTABLEKS                       R9 R9 K24 ["LocalizedStrings"]
       90 SETTABLEKS                       R9 R8 K16 ["translationResourceTable"]
       92 SETTABLE                         R8 R6 R7
       93 SETTABLEKS                       R6 R5 K14 ["libraries"]
       95 GETUPVAL                         R6 4
       96 SETTABLEKS                       R6 R5 K15 ["stringResourceTable"]
       98 GETUPVAL                         R6 5
       99 SETTABLEKS                       R6 R5 K16 ["translationResourceTable"]
      101 CALL                             R4 1 1
      102 SETTABLEKS                       R4 R0 K25 ["localization"]
      104 GETUPVAL                         R4 1
      105 GETTABLEKS                       R4 R4 K26 ["Analytics"]
      107 GETTABLEKS                       R4 R4 K13 ["new"]
      109 GETUPVAL                         R5 6
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R0 K27 ["analytics"]
      113 GETUPVAL                         R4 7
      114 GETTABLEKS                       R4 R4 K13 ["new"]
      116 MOVE                             R5 R2
      117 GETTABLEKS                       R6 R0 K25 ["localization"]
      119 CALL                             R4 2 1
      120 SETTABLEKS                       R4 R0 K28 ["shortcutController"]
      122 GETUPVAL                         R4 8
      123 GETTABLEKS                       R4 R4 K13 ["new"]
      125 MOVE                             R5 R2
      126 CALL                             R4 1 1
      127 SETTABLEKS                       R4 R0 K29 ["pluginController"]
      129 GETUPVAL                         R4 9
      130 GETTABLEKS                       R4 R4 K13 ["new"]
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R0 K30 ["studioServices"]
      135 GETUPVAL                         R4 10
      136 CALL                             R4 0 1
      137 SETTABLEKS                       R4 R0 K31 ["stylizer"]
      139 GETUPVAL                         R4 11
      140 GETTABLEKS                       R4 R4 K13 ["new"]
      142 GETTABLEKS                       R5 R0 K29 ["pluginController"]
      144 GETTABLEKS                       R6 R0 K28 ["shortcutController"]
      146 GETTABLEKS                       R7 R0 K27 ["analytics"]
      148 GETTABLEKS                       R8 R0 K25 ["localization"]
      150 GETTABLEKS                       R9 R0 K31 ["stylizer"]
      152 CALL                             R4 5 1
      153 SETTABLEKS                       R4 R0 K32 ["toolController"]
      155 GETUPVAL                         R4 12
      156 CALL                             R4 0 1
      157 JUMPIFNOT                        R4 ; [+78]
      158 GETUPVAL                         R4 13
      159 GETTABLEKS                       R4 R4 K13 ["new"]
      161 GETUPVAL                         R5 14
      162 GETTABLEKS                       R5 R5 K33 ["EDITOR_CPC_ID"]
      164 CALL                             R4 1 1
      165 SETTABLEKS                       R4 R0 K34 ["terrainPaletteCommunication"]
      167 NEWCLOSURE                       R4 P5
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U15
      170 CAPTURE                          UPVAL U16
      171 CAPTURE                          UPVAL U17
      172 CAPTURE                          UPVAL U18
      173 CAPTURE                          UPVAL U14
      174 SETTABLEKS                       R4 R0 K35 ["publishSourceMaterial"]
      176 GETTABLEKS                       R4 R0 K34 ["terrainPaletteCommunication"]
      178 GETUPVAL                         R6 14
      179 GETTABLEKS                       R6 R6 K36 ["CPC_EVENTS"]
      181 GETTABLEKS                       R6 R6 K37 ["TERRAIN_PALETTE_SELECTION_CHANGED"]
      183 NEWCLOSURE                       R7 P6
      184 CAPTURE                          UPVAL U18
      185 CAPTURE                          VAL R0
      186 CAPTURE                          UPVAL U15
      187 CAPTURE                          UPVAL U16
      188 CAPTURE                          UPVAL U17
      189 NAMECALL                         R4 R4 K38 ["Connect"]
      191 CALL                             R4 3 1
      192 SETTABLEKS                       R4 R0 K39 ["terrainPaletteSelectionChangedConnection"]
      194 GETTABLEKS                       R4 R0 K29 ["pluginController"]
      196 GETTABLEKS                       R4 R4 K40 ["GlobalChanged"]
      198 NEWCLOSURE                       R6 P7
      199 CAPTURE                          UPVAL U15
      200 CAPTURE                          UPVAL U16
      201 CAPTURE                          UPVAL U17
      202 CAPTURE                          UPVAL U18
      203 CAPTURE                          VAL R0
      204 NAMECALL                         R4 R4 K38 ["Connect"]
      206 CALL                             R4 2 1
      207 SETTABLEKS                       R4 R0 K41 ["sourceMaterialChangedConnection"]
      209 GETTABLEKS                       R4 R0 K34 ["terrainPaletteCommunication"]
      211 GETUPVAL                         R6 14
      212 GETTABLEKS                       R6 R6 K36 ["CPC_EVENTS"]
      214 GETTABLEKS                       R6 R6 K42 ["TERRAIN_PALETTE_EDITOR_READY"]
      216 GETTABLEKS                       R7 R0 K35 ["publishSourceMaterial"]
      218 NAMECALL                         R4 R4 K38 ["Connect"]
      220 CALL                             R4 3 1
      221 SETTABLEKS                       R4 R0 K43 ["terrainPaletteEditorReadyConnection"]
      223 GETTABLEKS                       R4 R0 K35 ["publishSourceMaterial"]
      225 CALL                             R4 0 0
      226 GETTABLEKS                       R4 R0 K34 ["terrainPaletteCommunication"]
      228 GETUPVAL                         R6 14
      229 GETTABLEKS                       R6 R6 K36 ["CPC_EVENTS"]
      231 GETTABLEKS                       R6 R6 K44 ["TERRAIN_EDITOR_READY"]
      233 NAMECALL                         R4 R4 K45 ["Fire"]
      235 CALL                             R4 2 0
      236 NEWCLOSURE                       R4 P8
      237 CAPTURE                          VAL R0
      238 SETTABLEKS                       R4 R0 K46 ["onFocused"]
      240 NEWCLOSURE                       R4 P9
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R4 R0 K47 ["onUnfocused"]
      244 GETTABLEKS                       R5 R0 K48 ["props"]
      246 GETTABLEKS                       R5 R5 K1 ["PluginLoaderContext"]
      248 JUMPIFNOT                        R5 ; [+7]
      249 GETTABLEKS                       R4 R0 K48 ["props"]
      251 GETTABLEKS                       R4 R4 K1 ["PluginLoaderContext"]
      253 GETTABLEKS                       R4 R4 K49 ["mainButton"]
      255 JUMP                             ; [+1]
      256 LOADNIL                          R4
      257 SETTABLEKS                       R4 R0 K50 ["button"]
      259 GETUPVAL                         R4 12
      260 CALL                             R4 0 1
      261 JUMPIF                           R4 ; [+3]
      262 GETUPVAL                         R4 19
      263 CALL                             R4 0 1
      264 JUMPIFNOT                        R4 ; [+21]
      265 GETUPVAL                         R4 20
      266 GETTABLEKS                       R4 R4 K51 ["Util"]
      268 GETTABLEKS                       R4 R4 K52 ["createFoundationDesignBinding"]
      270 CALL                             R4 0 2
      271 SETTABLEKS                       R5 R0 K53 ["onFoundationStyleSheetChange"]
      273 GETUPVAL                         R6 21
      274 GETTABLEKS                       R7 R1 K0 ["Plugin"]
      276 LOADNIL                          R8
      277 LOADNIL                          R9
      278 NEWTABLE                         R10 0 1
      280 MOVE                             R11 R4
      281 SETLIST                          R10 R11 1 [1]
      283 CALL                             R6 4 1
      284 SETTABLEKS                       R6 R0 K54 ["design"]
      286 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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
       38 GETUPVAL                         R6 2
       39 CALL                             R6 0 1
       40 JUMPIF                           R6 ; [+3]
       41 GETUPVAL                         R6 3
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+11]
       44 MOVE                             R7 R5
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K4 ["new"]
       48 GETTABLEKS                       R9 R0 K13 ["design"]
       50 CALL                             R8 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R6 K16 [table.insert]
       54 CALL                             R6 -1 0
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K17 ["provide"]
       58 MOVE                             R7 R5
       59 DUPTABLE                         R8 K19 [{"MainWidget"}]
       60 GETUPVAL                         R9 6
       61 GETTABLEKS                       R9 R9 K20 ["createElement"]
       63 GETUPVAL                         R10 7
       64 NEWTABLE                         R11 16 0
       66 LOADK                            R12 K21 ["TerrainEditor"]
       67 SETTABLEKS                       R12 R11 K22 ["Id"]
       69 SETTABLEKS                       R4 R11 K23 ["Enabled"]
       71 GETTABLEKS                       R12 R0 K7 ["localization"]
       73 LOADK                            R14 K2 ["Plugin"]
       74 LOADK                            R15 K24 ["Name"]
       75 NAMECALL                         R12 R12 K25 ["getText"]
       77 CALL                             R12 3 1
       78 SETTABLEKS                       R12 R11 K26 ["Title"]
       80 GETIMPORT                        R12 K30 [Enum.ZIndexBehavior.Sibling]
       82 SETTABLEKS                       R12 R11 K28 ["ZIndexBehavior"]
       84 GETIMPORT                        R12 K33 [Enum.InitialDockState.Left]
       86 SETTABLEKS                       R12 R11 K31 ["InitialDockState"]
       88 GETIMPORT                        R12 K35 [Vector2.new]
       90 LOADN                            R13 640
       91 LOADN                            R14 480
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K36 ["Size"]
       95 GETIMPORT                        R12 K35 [Vector2.new]
       97 LOADN                            R13 350
       98 LOADN                            R14 200
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K37 ["MinSize"]
      102 GETTABLEKS                       R12 R0 K38 ["onClose"]
      104 SETTABLEKS                       R12 R11 K39 ["OnClose"]
      106 LOADB                            R12 1
      107 SETTABLEKS                       R12 R11 K40 ["ShouldRestore"]
      109 GETTABLEKS                       R12 R0 K41 ["onCreated"]
      111 SETTABLEKS                       R12 R11 K42 ["OnWidgetCreated"]
      113 GETTABLEKS                       R12 R0 K43 ["onFocused"]
      115 SETTABLEKS                       R12 R11 K44 ["OnWidgetFocused"]
      117 GETTABLEKS                       R12 R0 K45 ["onUnfocused"]
      119 SETTABLEKS                       R12 R11 K46 ["OnWidgetFocusReleased"]
      121 GETTABLEKS                       R12 R0 K47 ["onRestore"]
      123 SETTABLEKS                       R12 R11 K48 ["OnWidgetRestored"]
      125 GETTABLEKS                       R13 R0 K0 ["props"]
      127 GETTABLEKS                       R13 R13 K49 ["PluginLoaderContext"]
      129 JUMPIFNOT                        R13 ; [+7]
      130 GETTABLEKS                       R12 R0 K0 ["props"]
      132 GETTABLEKS                       R12 R12 K49 ["PluginLoaderContext"]
      134 GETTABLEKS                       R12 R12 K50 ["mainDockWidget"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R12
      138 SETTABLEKS                       R12 R11 K51 ["Widget"]
      140 GETUPVAL                         R12 8
      141 GETTABLEKS                       R12 R12 K52 ["Change"]
      143 GETTABLEKS                       R12 R12 K23 ["Enabled"]
      145 GETTABLEKS                       R13 R0 K53 ["onWidgetEnabledChanged"]
      147 SETTABLE                         R13 R11 R12
      148 GETUPVAL                         R13 2
      149 CALL                             R13 0 1
      150 JUMPIF                           R13 ; [+3]
      151 GETUPVAL                         R13 3
      152 CALL                             R13 0 1
      153 JUMPIFNOT                        R13 ; [+22]
      154 DUPTABLE                         R12 K55 [{"Provider"}]
      155 GETUPVAL                         R13 6
      156 GETTABLEKS                       R13 R13 K20 ["createElement"]
      158 GETUPVAL                         R14 9
      159 DUPTABLE                         R15 K57 [{"onStyleSheetChange"}]
      160 GETTABLEKS                       R16 R0 K58 ["onFoundationStyleSheetChange"]
      162 SETTABLEKS                       R16 R15 K56 ["onStyleSheetChange"]
      164 DUPTABLE                         R16 K60 [{"App"}]
      165 GETUPVAL                         R17 6
      166 GETTABLEKS                       R17 R17 K20 ["createElement"]
      168 GETUPVAL                         R18 10
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K59 ["App"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K54 ["Provider"]
      175 JUMP                             ; [+8]
      176 DUPTABLE                         R12 K60 [{"App"}]
      177 GETUPVAL                         R13 6
      178 GETTABLEKS                       R13 R13 K20 ["createElement"]
      180 GETUPVAL                         R14 10
      181 CALL                             R13 1 1
      182 SETTABLEKS                       R13 R12 K59 ["App"]
      184 CALL                             R9 3 1
      185 SETTABLEKS                       R9 R8 K18 ["MainWidget"]
      187 LOADB                            R9 1
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["Packages"]
       39 GETTABLEKS                       R6 R6 K10 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K11 ["Components"]
       44 GETTABLEKS                       R6 R6 K12 ["FoundationProviderAdapter"]
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K5 ["Packages"]
       50 GETTABLEKS                       R8 R8 K13 ["Framework"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K5 ["Packages"]
       57 GETTABLEKS                       R9 R9 K14 ["MaterialFramework"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R7 K15 ["UI"]
       62 GETTABLEKS                       R10 R9 K16 ["DockWidget"]
       64 GETTABLEKS                       R11 R7 K17 ["ContextServices"]
       66 GETTABLEKS                       R12 R11 K18 ["Plugin"]
       68 GETTABLEKS                       R13 R11 K19 ["Mouse"]
       70 GETTABLEKS                       R14 R11 K20 ["Design"]
       72 GETTABLEKS                       R15 R7 K21 ["Styling"]
       74 GETTABLEKS                       R15 R15 K22 ["registerPluginStyles"]
       76 GETTABLEKS                       R16 R7 K23 ["Util"]
       78 GETTABLEKS                       R16 R16 K24 ["CrossPluginCommunication"]
       80 GETTABLEKS                       R17 R8 K25 ["Context"]
       82 GETTABLEKS                       R17 R17 K26 ["StudioServices"]
       84 GETIMPORT                        R18 K4 [require]
       86 GETTABLEKS                       R19 R0 K27 ["Src"]
       88 GETTABLEKS                       R19 R19 K28 ["Resources"]
       90 GETTABLEKS                       R19 R19 K29 ["MakeTheme"]
       92 CALL                             R18 1 1
       93 GETTABLEKS                       R19 R0 K27 ["Src"]
       95 GETTABLEKS                       R19 R19 K28 ["Resources"]
       97 GETTABLEKS                       R19 R19 K30 ["Localization"]
       99 GETTABLEKS                       R19 R19 K31 ["SourceStrings"]
      101 GETTABLEKS                       R20 R0 K27 ["Src"]
      103 GETTABLEKS                       R20 R20 K28 ["Resources"]
      105 GETTABLEKS                       R20 R20 K30 ["Localization"]
      107 GETTABLEKS                       R20 R20 K32 ["LocalizedStrings"]
      109 GETTABLEKS                       R21 R0 K27 ["Src"]
      111 GETTABLEKS                       R21 R21 K11 ["Components"]
      113 GETIMPORT                        R22 K4 [require]
      115 GETTABLEKS                       R23 R21 K33 ["App"]
      117 CALL                             R22 1 1
      118 GETTABLEKS                       R23 R0 K27 ["Src"]
      120 GETTABLEKS                       R23 R23 K34 ["Controllers"]
      122 GETIMPORT                        R24 K4 [require]
      124 GETTABLEKS                       R25 R23 K35 ["ShortcutController"]
      126 CALL                             R24 1 1
      127 GETIMPORT                        R25 K4 [require]
      129 GETTABLEKS                       R26 R23 K36 ["PluginController"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K4 [require]
      134 GETTABLEKS                       R27 R23 K37 ["ToolController"]
      136 CALL                             R26 1 1
      137 GETIMPORT                        R27 K4 [require]
      139 GETTABLEKS                       R28 R0 K27 ["Src"]
      141 GETTABLEKS                       R28 R28 K28 ["Resources"]
      143 GETTABLEKS                       R28 R28 K38 ["AnalyticsHandlers"]
      145 CALL                             R27 1 1
      146 GETIMPORT                        R28 K4 [require]
      148 GETTABLEKS                       R29 R0 K27 ["Src"]
      150 GETTABLEKS                       R29 R29 K39 ["Types"]
      152 CALL                             R28 1 1
      153 GETTABLEKS                       R29 R28 K40 ["Category"]
      155 GETTABLEKS                       R30 R28 K41 ["MaterialSettings"]
      157 GETTABLEKS                       R31 R28 K42 ["Storage"]
      159 GETTABLEKS                       R32 R28 K43 ["Tool"]
      161 GETTABLEKS                       R33 R3 K44 ["TERRAIN"]
      163 GETTABLEKS                       R34 R5 K45 ["TerrainMaterialPickerProtocol"]
      165 GETIMPORT                        R35 K4 [require]
      167 GETTABLEKS                       R36 R0 K27 ["Src"]
      169 GETTABLEKS                       R36 R36 K46 ["Flags"]
      171 GETTABLEKS                       R36 R36 K47 ["getFFlagEnableTerrainPalette"]
      173 CALL                             R35 1 1
      174 GETIMPORT                        R36 K4 [require]
      176 GETTABLEKS                       R37 R0 K27 ["Src"]
      178 GETTABLEKS                       R37 R37 K46 ["Flags"]
      180 GETTABLEKS                       R37 R37 K48 ["getFFlagTerrainEditorMigrateFoundationFonts"]
      182 CALL                             R36 1 1
      183 GETTABLEKS                       R37 R1 K49 ["PureComponent"]
      185 LOADK                            R39 K50 ["MainPlugin"]
      186 NAMECALL                         R37 R37 K51 ["extend"]
      188 CALL                             R37 2 1
      189 DUPCLOSURE                       R38 K52 [PROTO_11]
      190 CAPTURE                          VAL R32
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R27
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R35
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R33
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R31
      208 CAPTURE                          VAL R34
      209 CAPTURE                          VAL R36
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R15
      212 SETTABLEKS                       R38 R37 K53 ["init"]
      214 DUPCLOSURE                       R38 K54 [PROTO_12]
      215 SETTABLEKS                       R38 R37 K55 ["didUpdate"]
      217 DUPCLOSURE                       R38 K56 [PROTO_13]
      218 SETTABLEKS                       R38 R37 K57 ["willUnmount"]
      220 DUPCLOSURE                       R38 K58 [PROTO_14]
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R35
      224 CAPTURE                          VAL R36
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R22
      232 SETTABLEKS                       R38 R37 K59 ["render"]
      234 RETURN                           R37 1
