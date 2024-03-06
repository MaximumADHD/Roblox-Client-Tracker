PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plugin"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K2 ["getMouse"]
  CALL R2 1 -1
  CALL R1 -1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Store"]
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 4
  LOADNIL R4
  NEWTABLE R5 0 0
  CALL R2 3 1
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K1 ["new"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K4 ["DEPRECATED_Theme"]
  GETTABLEKS R4 R5 K1 ["new"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K1 ["new"]
  CALL R5 0 -1
  CALL R4 -1 1
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K8 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
  LOADK R7 K9 ["TerrainToolsV2"]
  SETTABLEKS R7 R6 K5 ["pluginName"]
  GETUPVAL R7 9
  SETTABLEKS R7 R6 K6 ["stringResourceTable"]
  GETUPVAL R7 10
  SETTABLEKS R7 R6 K7 ["translationResourceTable"]
  CALL R5 1 1
  DUPTABLE R6 K18 [{"EditPlane", "CopySelected", "CutSelected", "DeleteSelected", "PasteSelected", "DuplicateSelected", "Apply", "Cancel"}]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K25 ["ctrl+shift+space"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K10 ["EditPlane"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K26 ["EditPlaneAction"]
  LOADK R11 K27 ["StatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K26 ["EditPlaneAction"]
  LOADK R11 K29 ["Text"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  SETTABLEKS R7 R6 K10 ["EditPlane"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K30 ["ctrl+c"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K11 ["CopySelected"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K32 ["CopyStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K33 ["CopyText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K11 ["CopySelected"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K34 ["ctrl+x"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K12 ["CutSelected"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K35 ["CutStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K36 ["CutText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K12 ["CutSelected"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K37 ["delete"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K13 ["DeleteSelected"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K38 ["DeleteStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K39 ["DeleteText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K13 ["DeleteSelected"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K40 ["ctrl+v"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K14 ["PasteSelected"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K41 ["PasteStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K42 ["PasteText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K14 ["PasteSelected"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K43 ["ctrl+d"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K15 ["DuplicateSelected"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K44 ["DuplicateStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K31 ["SelectionAction"]
  LOADK R11 K45 ["DuplicateText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["DuplicateSelected"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K46 ["return"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K16 ["Apply"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K47 ["TransformAction"]
  LOADK R11 K48 ["ApplyStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K47 ["TransformAction"]
  LOADK R11 K49 ["ApplyText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K16 ["Apply"]
  GETUPVAL R8 11
  JUMPIFNOT R8 [+25]
  DUPTABLE R7 K24 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["allowBinding"]
  LOADK R8 K50 ["escape"]
  SETTABLEKS R8 R7 K20 ["defaultShortcut"]
  LOADK R8 K51 ["Quit"]
  SETTABLEKS R8 R7 K21 ["id"]
  LOADK R10 K47 ["TransformAction"]
  LOADK R11 K52 ["CancelStatusTip"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K22 ["statusTip"]
  LOADK R10 K47 ["TransformAction"]
  LOADK R11 K53 ["CancelText"]
  NAMECALL R8 R5 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["text"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["Cancel"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K1 ["new"]
  GETUPVAL R8 1
  MOVE R9 R6
  CALL R7 2 1
  GETUPVAL R9 13
  GETTABLEKS R8 R9 K1 ["new"]
  GETUPVAL R9 14
  CALL R8 1 1
  GETIMPORT R9 K55 [require]
  GETUPVAL R13 15
  GETTABLEKS R12 R13 K56 ["Src"]
  GETTABLEKS R11 R12 K57 ["Util"]
  GETTABLEKS R10 R11 K58 ["getTerrain"]
  CALL R9 1 1
  CALL R9 0 1
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K59 ["Terrain"]
  GETTABLEKS R10 R11 K1 ["new"]
  MOVE R11 R9
  CALL R10 1 1
  GETUPVAL R12 16
  GETTABLEKS R11 R12 K1 ["new"]
  GETUPVAL R12 1
  CALL R11 1 1
  GETUPVAL R13 17
  GETTABLEKS R12 R13 K1 ["new"]
  DUPTABLE R13 K62 [{"localization", "analytics"}]
  SETTABLEKS R5 R13 K60 ["localization"]
  SETTABLEKS R8 R13 K61 ["analytics"]
  CALL R12 1 1
  GETUPVAL R14 18
  GETTABLEKS R13 R14 K1 ["new"]
  DUPTABLE R14 K64 [{"terrain", "localization", "analytics"}]
  SETTABLEKS R9 R14 K63 ["terrain"]
  SETTABLEKS R5 R14 K60 ["localization"]
  SETTABLEKS R8 R14 K61 ["analytics"]
  CALL R13 1 1
  GETUPVAL R15 19
  GETTABLEKS R14 R15 K1 ["new"]
  DUPTABLE R15 K65 [{"terrain", "localization"}]
  SETTABLEKS R9 R15 K63 ["terrain"]
  SETTABLEKS R5 R15 K60 ["localization"]
  CALL R14 1 1
  GETUPVAL R15 20
  CALL R15 0 1
  GETUPVAL R17 21
  GETTABLEKS R16 R17 K1 ["new"]
  CALL R16 0 1
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K66 ["CalloutController"]
  GETTABLEKS R17 R18 K1 ["new"]
  CALL R17 0 1
  LOADK R20 K67 ["ColormapCallout"]
  LOADK R21 K68 ["Title"]
  NAMECALL R18 R5 K28 ["getText"]
  CALL R18 3 1
  LOADK R21 K67 ["ColormapCallout"]
  LOADK R22 K69 ["Description"]
  NAMECALL R19 R5 K28 ["getText"]
  CALL R19 3 1
  LOADK R22 K70 ["TerrainToolsColormapCallout"]
  MOVE R23 R18
  MOVE R24 R19
  LOADK R25 K71 ["https://developer.roblox.com/en-us/articles/importing-terrain-data"]
  NAMECALL R20 R17 K72 ["defineCallout"]
  CALL R20 5 0
  LOADK R20 K73 ["LiveEditCallout"]
  LOADK R21 K68 ["Title"]
  NAMECALL R18 R5 K28 ["getText"]
  CALL R18 3 1
  LOADK R21 K73 ["LiveEditCallout"]
  LOADK R22 K69 ["Description"]
  NAMECALL R19 R5 K28 ["getText"]
  CALL R19 3 1
  LOADK R22 K74 ["TerrainToolsLiveEditCallout"]
  MOVE R23 R18
  MOVE R24 R19
  LOADK R25 K75 ["https://devforum.roblox.com/t/improvements-to-the-terrain-editor/2344311"]
  NAMECALL R20 R17 K72 ["defineCallout"]
  CALL R20 5 0
  LOADK R20 K76 ["FillCallout"]
  LOADK R21 K68 ["Title"]
  NAMECALL R18 R5 K28 ["getText"]
  CALL R18 3 1
  LOADK R21 K76 ["FillCallout"]
  LOADK R22 K69 ["Description"]
  NAMECALL R19 R5 K28 ["getText"]
  CALL R19 3 1
  LOADK R22 K77 ["TerrainToolsFillCallout"]
  MOVE R23 R18
  MOVE R24 R19
  LOADK R25 K75 ["https://devforum.roblox.com/t/improvements-to-the-terrain-editor/2344311"]
  NAMECALL R20 R17 K72 ["defineCallout"]
  CALL R20 5 0
  LOADNIL R18
  GETUPVAL R19 22
  JUMPIFNOT R19 [+11]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K78 ["ShorelineController"]
  GETTABLEKS R19 R20 K1 ["new"]
  MOVE R20 R8
  GETUPVAL R21 1
  MOVE R22 R2
  MOVE R23 R10
  CALL R19 4 1
  MOVE R18 R19
  LOADNIL R19
  GETUPVAL R20 23
  JUMPIFNOT R20 [+11]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K79 ["SmoothVoxelsController"]
  GETTABLEKS R20 R21 K1 ["new"]
  MOVE R21 R8
  GETUPVAL R22 1
  MOVE R23 R2
  MOVE R24 R10
  CALL R20 4 1
  MOVE R19 R20
  DUPTABLE R20 K94 [{"plugin", "mouse", "store", "theme", "devFrameworkThemeItem", "localization", "analytics", "imageLoader", "terrain", "pluginActivationController", "pluginActionsController", "terrainImporter", "terrainGeneration", "seaLevel", "calloutController", "shorelineController", "smoothVoxelsController"}]
  SETTABLEKS R0 R20 K80 ["plugin"]
  SETTABLEKS R1 R20 K81 ["mouse"]
  SETTABLEKS R3 R20 K82 ["store"]
  SETTABLEKS R4 R20 K83 ["theme"]
  SETTABLEKS R15 R20 K84 ["devFrameworkThemeItem"]
  SETTABLEKS R5 R20 K60 ["localization"]
  SETTABLEKS R8 R20 K61 ["analytics"]
  SETTABLEKS R16 R20 K85 ["imageLoader"]
  SETTABLEKS R10 R20 K63 ["terrain"]
  SETTABLEKS R11 R20 K86 ["pluginActivationController"]
  SETTABLEKS R7 R20 K87 ["pluginActionsController"]
  SETTABLEKS R12 R20 K88 ["terrainImporter"]
  SETTABLEKS R13 R20 K89 ["terrainGeneration"]
  SETTABLEKS R14 R20 K90 ["seaLevel"]
  SETTABLEKS R17 R20 K91 ["calloutController"]
  SETTABLEKS R18 R20 K92 ["shorelineController"]
  SETTABLEKS R19 R20 K93 ["smoothVoxelsController"]
  RETURN R20 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETIMPORT R6 K3 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CALL R6 1 0
  FORGLOOP R1 2 [-6]
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["destroy"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  GETUPVAL R0 3
  GETUPVAL R1 4
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["pluginLoaderContext"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["mount"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 1
  LOADNIL R2
  GETIMPORT R3 K4 [pcall]
  DUPCLOSURE R4 K5 [PROTO_3]
  CALL R3 1 2
  JUMPIFNOT R3 [+15]
  JUMPIFNOT R4 [+14]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["DeveloperTools"]
  GETTABLEKS R5 R6 K7 ["forPlugin"]
  LOADK R6 K8 ["Terrain Editor"]
  GETUPVAL R7 5
  CALL R5 2 1
  LOADK R8 K9 ["Roact tree"]
  MOVE R9 R1
  GETUPVAL R10 2
  NAMECALL R6 R5 K10 ["addRoactTree"]
  CALL R6 4 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K11 ["Unloading"]
  NEWCLOSURE R7 P1
  CAPTURE REF R1
  CAPTURE UPVAL U2
  CAPTURE REF R2
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  NAMECALL R5 R5 K12 ["Connect"]
  CALL R5 2 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_6:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETIMPORT R3 K4 [game]
  LOADK R5 K5 ["TerrainToolsImportUploadAssets"]
  NAMECALL R3 R3 K6 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K4 [game]
  LOADK R6 K7 ["TerrainEditorOverhaul"]
  NAMECALL R4 R4 K6 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K8 ["Shorelines_Tooling"]
  NAMECALL R5 R5 K6 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K4 [game]
  LOADK R8 K9 ["SmoothVoxels_Tooling"]
  NAMECALL R6 R6 K6 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R2 K12 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Framework"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R10 R2 K12 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Roact"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R11 R2 K12 ["Packages"]
  GETTABLEKS R10 R11 K15 ["Rodux"]
  CALL R9 1 1
  GETTABLEKS R10 R7 K16 ["ContextServices"]
  GETTABLEKS R11 R10 K17 ["Analytics"]
  GETTABLEKS R12 R10 K18 ["Mouse"]
  GETTABLEKS R13 R10 K19 ["Store"]
  GETTABLEKS R14 R10 K20 ["Localization"]
  GETIMPORT R15 K11 [require]
  GETTABLEKS R17 R2 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["ContextItems"]
  CALL R15 1 1
  GETIMPORT R16 K11 [require]
  GETTABLEKS R19 R2 K21 ["Src"]
  GETTABLEKS R18 R19 K23 ["Util"]
  GETTABLEKS R17 R18 K24 ["createAnalyticsHandlers"]
  CALL R16 1 1
  GETTABLEKS R17 R7 K25 ["Http"]
  GETIMPORT R18 K11 [require]
  GETTABLEKS R21 R2 K21 ["Src"]
  GETTABLEKS R20 R21 K26 ["Reducers"]
  GETTABLEKS R19 R20 K27 ["MainReducer"]
  CALL R18 1 1
  GETIMPORT R19 K11 [require]
  GETTABLEKS R22 R2 K21 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K29 ["PluginTheme"]
  CALL R19 1 1
  GETIMPORT R20 K11 [require]
  GETTABLEKS R23 R2 K21 ["Src"]
  GETTABLEKS R22 R23 K28 ["Resources"]
  GETTABLEKS R21 R22 K30 ["makeTheme"]
  CALL R20 1 1
  GETTABLEKS R23 R2 K21 ["Src"]
  GETTABLEKS R22 R23 K28 ["Resources"]
  GETTABLEKS R21 R22 K31 ["SourceStrings"]
  GETTABLEKS R24 R2 K21 ["Src"]
  GETTABLEKS R23 R24 K28 ["Resources"]
  GETTABLEKS R22 R23 K32 ["LocalizedStrings"]
  GETIMPORT R23 K11 [require]
  GETTABLEKS R26 R2 K21 ["Src"]
  GETTABLEKS R25 R26 K23 ["Util"]
  GETTABLEKS R24 R25 K33 ["PluginActionsController"]
  CALL R23 1 1
  GETIMPORT R24 K11 [require]
  GETTABLEKS R27 R2 K21 ["Src"]
  GETTABLEKS R26 R27 K23 ["Util"]
  GETTABLEKS R25 R26 K34 ["PluginActivationController"]
  CALL R24 1 1
  GETIMPORT R25 K11 [require]
  GETTABLEKS R28 R2 K21 ["Src"]
  GETTABLEKS R27 R28 K35 ["TerrainInterfaces"]
  GETTABLEKS R26 R27 K36 ["TerrainImporterInstance"]
  CALL R25 1 1
  GETIMPORT R26 K11 [require]
  GETTABLEKS R29 R2 K21 ["Src"]
  GETTABLEKS R28 R29 K35 ["TerrainInterfaces"]
  GETTABLEKS R27 R28 K37 ["TerrainGenerationInstance"]
  CALL R26 1 1
  GETIMPORT R27 K11 [require]
  GETTABLEKS R30 R2 K21 ["Src"]
  GETTABLEKS R29 R30 K35 ["TerrainInterfaces"]
  GETTABLEKS R28 R29 K38 ["TerrainSeaLevel"]
  CALL R27 1 1
  GETIMPORT R28 K11 [require]
  GETTABLEKS R31 R2 K21 ["Src"]
  GETTABLEKS R30 R31 K23 ["Util"]
  GETTABLEKS R29 R30 K39 ["ImageLoader"]
  CALL R28 1 1
  GETIMPORT R29 K11 [require]
  GETTABLEKS R32 R2 K21 ["Src"]
  GETTABLEKS R31 R32 K40 ["Components"]
  GETTABLEKS R30 R31 K41 ["TerrainTools"]
  CALL R29 1 1
  NEWCLOSURE R30 P0
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R23
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R20
  CAPTURE VAL R28
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R31 K42 [PROTO_2]
  NEWCLOSURE R32 P2
  CAPTURE VAL R30
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R29
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R31
  MOVE R33 R32
  CALL R33 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_6]
  RETURN R0 1
