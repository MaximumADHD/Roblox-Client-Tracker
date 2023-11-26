PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_updateSignal"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_updateSignal"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [tick]
  CALL R0 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["_generateStartTime"]
  SUB R1 R0 R2
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["_stopAndClearGenerator"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  MOVE R2 R0
  JUMPIFNOT R2 [+9]
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["TerrainGeneration requires an options table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  DUPTABLE R2 K17 [{"_terrain", "_localization", "_analytics", "_generateSettings", "_generating", "_generateStartTime", "_generator", "_generatorProgressConnection", "_generatorPausedConnection", "_generatorFinishedConnection", "_updateSignal"}]
  GETTABLEKS R3 R0 K18 ["terrain"]
  SETTABLEKS R3 R2 K6 ["_terrain"]
  GETTABLEKS R3 R0 K19 ["localization"]
  SETTABLEKS R3 R2 K7 ["_localization"]
  GETTABLEKS R3 R0 K20 ["analytics"]
  SETTABLEKS R3 R2 K8 ["_analytics"]
  DUPTABLE R3 K27 [{"position", "size", "biomeSelection", "biomeSize", "haveCaves", "seed"}]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K30 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R3 K21 ["position"]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K30 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R3 K22 ["size"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K23 ["biomeSelection"]
  LOADN R4 0
  SETTABLEKS R4 R3 K24 ["biomeSize"]
  LOADB R4 0
  SETTABLEKS R4 R3 K25 ["haveCaves"]
  LOADK R4 K31 ["0"]
  SETTABLEKS R4 R3 K26 ["seed"]
  SETTABLEKS R3 R2 K9 ["_generateSettings"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["_generating"]
  LOADN R3 0
  SETTABLEKS R3 R2 K11 ["_generateStartTime"]
  LOADNIL R3
  SETTABLEKS R3 R2 K12 ["_generator"]
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["_generatorProgressConnection"]
  LOADNIL R3
  SETTABLEKS R3 R2 K14 ["_generatorPausedConnection"]
  LOADNIL R3
  SETTABLEKS R3 R2 K15 ["_generatorFinishedConnection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K29 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["_updateSignal"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K33 [setmetatable]
  CALL R1 2 1
  GETTABLEKS R3 R1 K6 ["_terrain"]
  FASTCALL2K ASSERT R3 K34 [+4]
  LOADK R4 K34 ["TerrainGeneration.new() requires a terrain instance"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K35 ["_onGeneratorProgressUpdate"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K36 ["_onGeneratorPaused"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K37 ["_onGeneratorFinished"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_updateSignal"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_generating"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_generator"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K1 ["getProgress"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  LOADN R1 0
  RETURN R1 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_generator"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K1 ["isPaused"]
  CALL R1 0 -1
  RETURN R1 -1
  LOADB R1 0
  RETURN R1 1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["_generateSettings"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_generateSettings"]
  RETURN R0 0

PROTO_9:
  NAMECALL R1 R0 K0 ["cancelGeneration"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_generating"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K1 ["_generator"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R3 1
  NAMECALL R1 R0 K2 ["_setGenerating"]
  CALL R1 2 0
  GETTABLEKS R2 R0 K3 ["_generateSettings"]
  GETTABLEKS R1 R2 K4 ["position"]
  GETTABLEKS R3 R0 K3 ["_generateSettings"]
  GETTABLEKS R2 R3 K5 ["size"]
  GETTABLEKS R4 R0 K3 ["_generateSettings"]
  GETTABLEKS R3 R4 K6 ["seed"]
  GETTABLEKS R5 R0 K3 ["_generateSettings"]
  GETTABLEKS R4 R5 K7 ["biomeSelection"]
  GETTABLEKS R6 R1 K8 ["X"]
  GETTABLEKS R7 R1 K9 ["Y"]
  GETTABLEKS R8 R1 K10 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K13 [Vector3.new]
  CALL R5 3 1
  GETTABLEKS R7 R2 K8 ["X"]
  GETTABLEKS R8 R2 K9 ["Y"]
  GETTABLEKS R9 R2 K10 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K13 [Vector3.new]
  CALL R6 3 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K14 ["Dictionary"]
  GETTABLEKS R7 R8 K15 ["join"]
  MOVE R8 R4
  NEWTABLE R9 0 0
  CALL R7 2 1
  NEWTABLE R8 0 0
  GETIMPORT R9 K17 [pairs]
  MOVE R10 R4
  CALL R9 1 3
  FORGPREP_NEXT R9
  JUMPIFNOT R13 [+15]
  MOVE R15 R8
  GETTABLEKS R16 R0 K18 ["_localization"]
  LOADK R18 K19 ["Generate"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K20 ["BiomeToLocalizationKey"]
  GETTABLE R19 R20 R12
  NAMECALL R16 R16 K21 ["getText"]
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K24 [table.insert]
  CALL R14 -1 0
  FORGLOOP R9 2 [-17]
  GETUPVAL R9 2
  GETTABLEKS R10 R0 K25 ["_terrain"]
  DUPTABLE R11 K28 [{"position", "size", "biomeSelection", "biomeSize", "haveCaves", "seed"}]
  SETTABLEKS R5 R11 K4 ["position"]
  SETTABLEKS R6 R11 K5 ["size"]
  SETTABLEKS R7 R11 K7 ["biomeSelection"]
  GETTABLEKS R13 R0 K3 ["_generateSettings"]
  GETTABLEKS R12 R13 K26 ["biomeSize"]
  SETTABLEKS R12 R11 K26 ["biomeSize"]
  GETTABLEKS R13 R0 K3 ["_generateSettings"]
  GETTABLEKS R12 R13 K27 ["haveCaves"]
  SETTABLEKS R12 R11 K27 ["haveCaves"]
  SETTABLEKS R3 R11 K6 ["seed"]
  GETTABLEKS R12 R0 K29 ["_analytics"]
  CALL R9 3 1
  SETTABLEKS R9 R0 K1 ["_generator"]
  GETTABLEKS R10 R0 K1 ["_generator"]
  GETTABLEKS R9 R10 K30 ["progressSignal"]
  GETTABLEKS R11 R0 K31 ["_onGeneratorProgressUpdate"]
  NAMECALL R9 R9 K32 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K33 ["_generatorProgressConnection"]
  GETTABLEKS R10 R0 K1 ["_generator"]
  GETTABLEKS R9 R10 K34 ["pauseSignal"]
  GETTABLEKS R11 R0 K35 ["_onGeneratorPaused"]
  NAMECALL R9 R9 K32 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K36 ["_generatorPausedConnection"]
  GETTABLEKS R10 R0 K1 ["_generator"]
  GETTABLEKS R9 R10 K37 ["finishSignal"]
  GETTABLEKS R11 R0 K38 ["_onGeneratorFinished"]
  NAMECALL R9 R9 K32 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K39 ["_generatorFinishedConnection"]
  GETIMPORT R9 K41 [tick]
  CALL R9 0 1
  SETTABLEKS R9 R0 K42 ["_generateStartTime"]
  GETIMPORT R9 K44 [spawn]
  GETTABLEKS R11 R0 K1 ["_generator"]
  GETTABLEKS R10 R11 K45 ["start"]
  CALL R9 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_generator"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K1 ["isPaused"]
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K2 ["resume"]
  CALL R1 0 0
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K3 ["pause"]
  CALL R1 0 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_generator"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["_generator"]
  GETTABLEKS R1 R2 K1 ["cancel"]
  CALL R1 0 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_generating"]
  JUMPIFEQ R1 R2 [+8]
  SETTABLEKS R1 R0 K0 ["_generating"]
  GETTABLEKS R2 R0 K1 ["_updateSignal"]
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_generatorProgressConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_generatorProgressConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_generatorProgressConnection"]
  GETTABLEKS R1 R0 K2 ["_generatorPausedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_generatorPausedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_generatorPausedConnection"]
  GETTABLEKS R1 R0 K3 ["_generatorFinishedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["_generatorFinishedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_generatorFinishedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_generator"]
  LOADB R3 0
  NAMECALL R1 R0 K5 ["_setGenerating"]
  CALL R1 2 0
  RETURN R0 0

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
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R4 K9 ["ContextItem"]
  GETTABLEKS R4 R1 K10 ["Util"]
  GETTABLEKS R5 R4 K11 ["Signal"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K13 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K14 ["makeTerrainGenerator"]
  CALL R7 1 1
  LOADK R10 K15 ["TerrainGeneration"]
  NAMECALL R8 R3 K16 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K17 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K18 ["new"]
  DUPCLOSURE R9 K19 [PROTO_4]
  SETTABLEKS R9 R8 K20 ["getSignal"]
  DUPCLOSURE R9 K21 [PROTO_5]
  SETTABLEKS R9 R8 K22 ["isGenerating"]
  DUPCLOSURE R9 K23 [PROTO_6]
  SETTABLEKS R9 R8 K24 ["getProgress"]
  DUPCLOSURE R9 K25 [PROTO_7]
  SETTABLEKS R9 R8 K26 ["isPaused"]
  DUPCLOSURE R9 K27 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K28 ["updateSettings"]
  DUPCLOSURE R9 K29 [PROTO_9]
  SETTABLEKS R9 R8 K30 ["destroy"]
  DUPCLOSURE R9 K31 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K32 ["startGeneration"]
  DUPCLOSURE R9 K33 [PROTO_11]
  SETTABLEKS R9 R8 K34 ["togglePauseGeneration"]
  DUPCLOSURE R9 K35 [PROTO_12]
  SETTABLEKS R9 R8 K36 ["cancelGeneration"]
  DUPCLOSURE R9 K37 [PROTO_13]
  SETTABLEKS R9 R8 K38 ["_setGenerating"]
  DUPCLOSURE R9 K39 [PROTO_14]
  SETTABLEKS R9 R8 K40 ["_stopAndClearGenerator"]
  RETURN R8 1
