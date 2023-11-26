PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  DUPTABLE R1 K8 [{"plugin", "mouse", "store", "theme", "localization", "terrain", "networking"}]
  SETTABLEKS R0 R1 K1 ["plugin"]
  NAMECALL R2 R0 K9 ["GetMouse"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["mouse"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["Store"]
  GETTABLEKS R2 R3 K0 ["new"]
  GETUPVAL R3 2
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["store"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K11 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K4 ["theme"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K5 ["localization"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K6 ["terrain"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K12 ["Networking"]
  GETTABLEKS R2 R3 K11 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K7 ["networking"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Analytics"]
  GETTABLEKS R1 R2 K1 ["mock"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  GETTABLEKS R3 R0 K3 ["networking"]
  CALL R2 1 1
  DUPTABLE R3 K19 [{"plugin", "mouse", "store", "theme", "devFrameworkThemeItem", "localization", "analytics", "networking", "imageUploader", "terrain", "pluginActivationController", "terrainImporter", "terrainGeneration", "seaLevel", "shorelineController", "smoothVoxelsController"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K20 ["Plugin"]
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K4 ["plugin"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["plugin"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["Mouse"]
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K5 ["mouse"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["mouse"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Store"]
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K6 ["store"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["store"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K23 ["DEPRECATED_Theme"]
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K7 ["theme"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["theme"]
  GETUPVAL R4 3
  LOADB R5 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["devFrameworkThemeItem"]
  GETTABLEKS R4 R0 K9 ["localization"]
  SETTABLEKS R4 R3 K9 ["localization"]
  SETTABLEKS R1 R3 K10 ["analytics"]
  GETTABLEKS R4 R0 K3 ["networking"]
  SETTABLEKS R4 R3 K3 ["networking"]
  SETTABLEKS R2 R3 K11 ["imageUploader"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K24 ["Terrain"]
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K12 ["terrain"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["terrain"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K2 ["new"]
  GETTABLEKS R5 R0 K4 ["plugin"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["pluginActivationController"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K2 ["new"]
  DUPTABLE R5 K26 [{"terrain", "localization", "analytics", "imageUploader", "userId"}]
  GETTABLEKS R6 R0 K12 ["terrain"]
  SETTABLEKS R6 R5 K12 ["terrain"]
  GETTABLEKS R6 R0 K9 ["localization"]
  SETTABLEKS R6 R5 K9 ["localization"]
  SETTABLEKS R1 R5 K10 ["analytics"]
  SETTABLEKS R2 R5 K11 ["imageUploader"]
  LOADN R6 0
  SETTABLEKS R6 R5 K25 ["userId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["terrainImporter"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K2 ["new"]
  DUPTABLE R5 K27 [{"terrain", "localization", "analytics"}]
  GETTABLEKS R6 R0 K12 ["terrain"]
  SETTABLEKS R6 R5 K12 ["terrain"]
  GETTABLEKS R6 R0 K9 ["localization"]
  SETTABLEKS R6 R5 K9 ["localization"]
  SETTABLEKS R1 R5 K10 ["analytics"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["terrainGeneration"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K2 ["new"]
  DUPTABLE R5 K28 [{"terrain", "localization"}]
  GETTABLEKS R6 R0 K12 ["terrain"]
  SETTABLEKS R6 R5 K12 ["terrain"]
  GETTABLEKS R6 R0 K9 ["localization"]
  SETTABLEKS R6 R5 K9 ["localization"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["seaLevel"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K2 ["new"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K4 ["plugin"]
  GETTABLEKS R7 R0 K6 ["store"]
  GETTABLEKS R8 R0 K12 ["terrain"]
  LOADB R9 1
  CALL R4 5 1
  SETTABLEKS R4 R3 K17 ["shorelineController"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K2 ["new"]
  MOVE R5 R1
  GETTABLEKS R6 R0 K4 ["plugin"]
  GETTABLEKS R7 R0 K6 ["store"]
  GETTABLEKS R8 R0 K12 ["terrain"]
  LOADB R9 1
  CALL R4 5 1
  SETTABLEKS R4 R3 K18 ["smoothVoxelsController"]
  RETURN R3 1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["smoothVoxelsController"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K2 ["shorelineController"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K3 ["seaLevel"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K4 ["terrainGeneration"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K5 ["terrainImporter"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K6 ["pluginActivationController"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K7 ["imageUploader"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K8 ["localization"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K9 ["devFrameworkThemeItem"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K10 ["theme"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K11 ["store"]
  NAMECALL R2 R2 K12 ["destruct"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K13 ["plugin"]
  NAMECALL R2 R2 K14 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createMocks"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["mocks"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createMockContextItems"]
  GETTABLEKS R2 R0 K1 ["mocks"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["mockItems"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["cleanupMocks"]
  GETTABLEKS R2 R0 K1 ["mocks"]
  GETTABLEKS R3 R0 K2 ["mockItems"]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["mocks"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["mockItems"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["provide"]
  NEWTABLE R2 0 12
  GETTABLEKS R4 R0 K1 ["mockItems"]
  GETTABLEKS R3 R4 K2 ["plugin"]
  GETTABLEKS R5 R0 K1 ["mockItems"]
  GETTABLEKS R4 R5 K3 ["mouse"]
  GETTABLEKS R6 R0 K1 ["mockItems"]
  GETTABLEKS R5 R6 K4 ["store"]
  GETTABLEKS R7 R0 K1 ["mockItems"]
  GETTABLEKS R6 R7 K5 ["theme"]
  GETTABLEKS R8 R0 K1 ["mockItems"]
  GETTABLEKS R7 R8 K6 ["localization"]
  GETTABLEKS R9 R0 K1 ["mockItems"]
  GETTABLEKS R8 R9 K7 ["analytics"]
  GETTABLEKS R10 R0 K1 ["mockItems"]
  GETTABLEKS R9 R10 K8 ["pluginActivationController"]
  GETTABLEKS R11 R0 K1 ["mockItems"]
  GETTABLEKS R10 R11 K9 ["terrainImporter"]
  GETTABLEKS R12 R0 K1 ["mockItems"]
  GETTABLEKS R11 R12 K10 ["terrainGeneration"]
  GETTABLEKS R13 R0 K1 ["mockItems"]
  GETTABLEKS R12 R13 K11 ["seaLevel"]
  GETTABLEKS R14 R0 K1 ["mockItems"]
  GETTABLEKS R13 R14 K12 ["shorelineController"]
  GETTABLEKS R15 R0 K1 ["mockItems"]
  GETTABLEKS R14 R15 K13 ["smoothVoxelsController"]
  SETLIST R2 R3 12 [1]
  DUPTABLE R3 K15 [{"WrappedComponent"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["createFragment"]
  GETTABLEKS R6 R0 K17 ["props"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["Children"]
  GETTABLE R5 R6 R7
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["WrappedComponent"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  LOADB R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["function"] [+19]
  LOADB R4 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K3 ["table"] [+11]
  GETTABLEKS R6 R0 K4 ["render"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["function"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K5 [+4]
  LOADK R5 K5 ["MockWrapper.createElementWithMockContext passed invalid component"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K10 [{"MyComponent"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["MyComponent"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["ContextItems"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K12 ["Http"]
  GETTABLEKS R9 R1 K13 ["TestHelpers"]
  GETTABLEKS R8 R9 K14 ["Instances"]
  GETTABLEKS R7 R8 K15 ["MockPlugin"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K13 ["TestHelpers"]
  GETTABLEKS R9 R10 K16 ["MockTerrain"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K17 ["Localization"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K18 ["Reducers"]
  GETTABLEKS R11 R12 K19 ["MainReducer"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K20 ["Resources"]
  GETTABLEKS R12 R13 K21 ["PluginTheme"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K20 ["Resources"]
  GETTABLEKS R13 R14 K22 ["makeTheme"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K23 ["Util"]
  GETTABLEKS R14 R15 K24 ["PluginActivationController"]
  CALL R13 1 1
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["TerrainInterfaces"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R14 K26 ["TerrainGenerationInstance"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R14 K27 ["TerrainImporterInstance"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R14 K28 ["TerrainSeaLevel"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K23 ["Util"]
  GETTABLEKS R19 R20 K29 ["ShorelineController"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K23 ["Util"]
  GETTABLEKS R20 R21 K30 ["SmoothVoxelsController"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K10 ["Src"]
  GETTABLEKS R22 R23 K23 ["Util"]
  GETTABLEKS R21 R22 K31 ["ImageUploader"]
  CALL R20 1 1
  GETTABLEKS R21 R2 K32 ["PureComponent"]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K33 ["Name"]
  NAMECALL R21 R21 K34 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K35 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R22 R21 K36 ["createMocks"]
  DUPCLOSURE R22 K37 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R22 R21 K38 ["createMockContextItems"]
  DUPCLOSURE R22 K39 [PROTO_2]
  SETTABLEKS R22 R21 K40 ["cleanupMocks"]
  DUPCLOSURE R22 K41 [PROTO_3]
  CAPTURE VAL R21
  SETTABLEKS R22 R21 K42 ["init"]
  DUPCLOSURE R22 K43 [PROTO_4]
  CAPTURE VAL R21
  SETTABLEKS R22 R21 K44 ["willUnmount"]
  DUPCLOSURE R22 K45 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K46 ["render"]
  DUPCLOSURE R22 K47 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R21
  SETTABLEKS R22 R21 K48 ["createElementWithMockContext"]
  RETURN R21 1
