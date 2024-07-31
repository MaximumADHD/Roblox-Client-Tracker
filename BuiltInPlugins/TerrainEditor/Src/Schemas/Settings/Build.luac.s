PROTO_0:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Transform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K1 ["Rotation"]
  GETTABLEN R4 R0 1
  GETTABLEN R5 R0 2
  GETTABLEN R6 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K4 [Vector3.new]
  CALL R3 3 1
  ADD R2 R1 R3
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Position"]
  NEWTABLE R2 0 3
  GETTABLEKS R3 R1 K1 ["X"]
  GETTABLEKS R4 R1 K2 ["Y"]
  GETTABLEKS R5 R1 K3 ["Z"]
  SETLIST R2 R3 3 [1]
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["Position"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K4 [Enum.PropertyStatus.Error]
  GETUPVAL R2 2
  LOADK R4 K5 ["SelectionWarning"]
  LOADK R5 K6 ["NaN"]
  NAMECALL R2 R2 K7 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETIMPORT R1 K9 [Enum.PropertyStatus.Ok]
  LOADK R2 K10 [""]
  RETURN R1 2

PROTO_3:
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K2 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  GETTABLEKS R4 R0 K2 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K3 [Enum.PropertyStatus.Error]
  GETUPVAL R2 2
  LOADK R4 K4 ["SelectionWarning"]
  LOADK R5 K5 ["NaN"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K7 ["X"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+11]
  GETTABLEKS R1 R0 K8 ["Y"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+6]
  GETTABLEKS R1 R0 K9 ["Z"]
  LOADN R2 4
  JUMPIFNOTLT R1 R2 [+10]
  GETIMPORT R1 K3 [Enum.PropertyStatus.Error]
  GETUPVAL R2 2
  LOADK R4 K4 ["SelectionWarning"]
  LOADK R5 K10 ["Size"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R3 R0 K7 ["X"]
  GETTABLEKS R4 R0 K8 ["Y"]
  MUL R2 R3 R4
  GETTABLEKS R3 R0 K9 ["Z"]
  MUL R1 R2 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["MaxBuildRegion"]
  POWK R2 R3 K11 [3]
  JUMPIFNOTLT R2 R1 [+15]
  GETIMPORT R1 K3 [Enum.PropertyStatus.Error]
  GETUPVAL R2 2
  LOADK R4 K4 ["SelectionWarning"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R5 K13 ["Volume"]
  JUMP [+1]
  LOADK R5 K14 ["SizeMax"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETIMPORT R1 K16 [Enum.PropertyStatus.Ok]
  LOADK R2 K17 [""]
  RETURN R1 2

PROTO_6:
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  NEWTABLE R1 0 2
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R4 R0 K0 ["Localization"]
  GETUPVAL R5 0
  MOVE R6 R0
  NEWTABLE R7 0 18
  DUPTABLE R8 K4 [{"Id", "Layout", "Schema"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["TerrainType"]
  SETTABLEKS R9 R8 K1 ["Id"]
  GETIMPORT R9 K9 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K2 ["Layout"]
  DUPTABLE R9 K11 [{"Type"}]
  LOADK R10 K5 ["TerrainType"]
  SETTABLEKS R10 R9 K10 ["Type"]
  SETTABLEKS R9 R8 K3 ["Schema"]
  DUPTABLE R9 K16 [{"DataId", "Hidden", "Id", "Schema", "Validate", "Value"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K17 ["Transform"]
  SETTABLEKS R10 R9 K12 ["DataId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K13 ["Hidden"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K18 ["Position"]
  SETTABLEKS R10 R9 K1 ["Id"]
  DUPTABLE R10 K22 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R11 K23 ["Vector"]
  SETTABLEKS R11 R10 K10 ["Type"]
  NEWTABLE R11 0 3
  LOADK R12 K24 ["X"]
  LOADK R13 K25 ["Y"]
  LOADK R14 K26 ["Z"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K19 ["Components"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R11 R10 K20 ["GetValue"]
  DUPCLOSURE R11 K27 [PROTO_1]
  SETTABLEKS R11 R10 K21 ["GetComponents"]
  SETTABLEKS R10 R9 K3 ["Schema"]
  NEWCLOSURE R10 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K14 ["Validate"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["Transform"]
  GETTABLE R10 R1 R11
  SETTABLEKS R10 R9 K15 ["Value"]
  DUPTABLE R10 K28 [{"Id", "Schema", "Validate"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K29 ["Size"]
  SETTABLEKS R11 R10 K1 ["Id"]
  DUPTABLE R11 K22 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R12 K23 ["Vector"]
  SETTABLEKS R12 R11 K10 ["Type"]
  NEWTABLE R12 0 3
  LOADK R13 K24 ["X"]
  LOADK R14 K25 ["Y"]
  LOADK R15 K26 ["Z"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K19 ["Components"]
  DUPCLOSURE R12 K30 [PROTO_3]
  SETTABLEKS R12 R11 K20 ["GetValue"]
  DUPCLOSURE R12 K31 [PROTO_4]
  SETTABLEKS R12 R11 K21 ["GetComponents"]
  SETTABLEKS R11 R10 K3 ["Schema"]
  NEWCLOSURE R11 P5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R11 R10 K14 ["Validate"]
  DUPTABLE R11 K32 [{"Id", "Schema"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K33 ["CraterDepth"]
  SETTABLEKS R12 R11 K1 ["Id"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K3 ["Schema"]
  DUPTABLE R12 K32 [{"Id", "Schema"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K34 ["CraterRadius"]
  SETTABLEKS R13 R12 K1 ["Id"]
  GETUPVAL R13 5
  SETTABLEKS R13 R12 K3 ["Schema"]
  DUPTABLE R13 K32 [{"Id", "Schema"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K35 ["TopRadius"]
  SETTABLEKS R14 R13 K1 ["Id"]
  GETUPVAL R14 5
  SETTABLEKS R14 R13 K3 ["Schema"]
  DUPTABLE R14 K32 [{"Id", "Schema"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K36 ["FillBottom"]
  SETTABLEKS R15 R14 K1 ["Id"]
  GETUPVAL R15 5
  SETTABLEKS R15 R14 K3 ["Schema"]
  DUPTABLE R15 K32 [{"Id", "Schema"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K37 ["WaterLevel"]
  SETTABLEKS R16 R15 K1 ["Id"]
  GETUPVAL R16 5
  SETTABLEKS R16 R15 K3 ["Schema"]
  DUPTABLE R16 K32 [{"Id", "Schema"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K38 ["BankSize"]
  SETTABLEKS R17 R16 K1 ["Id"]
  GETUPVAL R17 5
  SETTABLEKS R17 R16 K3 ["Schema"]
  DUPTABLE R17 K32 [{"Id", "Schema"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K39 ["RimHeight"]
  SETTABLEKS R18 R17 K1 ["Id"]
  GETUPVAL R18 5
  SETTABLEKS R18 R17 K3 ["Schema"]
  DUPTABLE R18 K32 [{"Id", "Schema"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K40 ["TalusSlope"]
  SETTABLEKS R19 R18 K1 ["Id"]
  GETUPVAL R19 5
  SETTABLEKS R19 R18 K3 ["Schema"]
  DUPTABLE R19 K32 [{"Id", "Schema"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K41 ["CliffSlope"]
  SETTABLEKS R20 R19 K1 ["Id"]
  DUPTABLE R20 K46 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R21 K47 ["DelayedSlider"]
  SETTABLEKS R21 R20 K10 ["Type"]
  LOADN R21 0
  SETTABLEKS R21 R20 K42 ["Min"]
  LOADN R21 90
  SETTABLEKS R21 R20 K43 ["Max"]
  LOADB R21 1
  SETTABLEKS R21 R20 K44 ["ShowInput"]
  LOADN R21 1
  SETTABLEKS R21 R20 K45 ["SnapIncrement"]
  SETTABLEKS R20 R19 K3 ["Schema"]
  DUPTABLE R20 K32 [{"Id", "Schema"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K48 ["NoiseScale"]
  SETTABLEKS R21 R20 K1 ["Id"]
  GETUPVAL R21 5
  SETTABLEKS R21 R20 K3 ["Schema"]
  DUPTABLE R21 K32 [{"Id", "Schema"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K49 ["NoiseStrength"]
  SETTABLEKS R22 R21 K1 ["Id"]
  GETUPVAL R22 5
  SETTABLEKS R22 R21 K3 ["Schema"]
  DUPTABLE R22 K51 [{"Children", "Id", "Schema", "Value"}]
  NEWTABLE R23 0 3
  DUPTABLE R24 K32 [{"Id", "Schema"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K52 ["Offset"]
  SETTABLEKS R25 R24 K1 ["Id"]
  DUPTABLE R25 K22 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R26 K23 ["Vector"]
  SETTABLEKS R26 R25 K10 ["Type"]
  NEWTABLE R26 0 2
  LOADK R27 K24 ["X"]
  LOADK R28 K25 ["Y"]
  SETLIST R26 R27 2 [1]
  SETTABLEKS R26 R25 K19 ["Components"]
  DUPCLOSURE R26 K53 [PROTO_6]
  SETTABLEKS R26 R25 K20 ["GetValue"]
  DUPCLOSURE R26 K54 [PROTO_7]
  SETTABLEKS R26 R25 K21 ["GetComponents"]
  SETTABLEKS R25 R24 K3 ["Schema"]
  DUPTABLE R25 K32 [{"Id", "Schema"}]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K55 ["Rotation"]
  SETTABLEKS R26 R25 K1 ["Id"]
  DUPTABLE R26 K46 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R27 K47 ["DelayedSlider"]
  SETTABLEKS R27 R26 K10 ["Type"]
  LOADN R27 0
  SETTABLEKS R27 R26 K42 ["Min"]
  LOADN R27 104
  SETTABLEKS R27 R26 K43 ["Max"]
  LOADB R27 1
  SETTABLEKS R27 R26 K44 ["ShowInput"]
  LOADN R27 1
  SETTABLEKS R27 R26 K45 ["SnapIncrement"]
  SETTABLEKS R26 R25 K3 ["Schema"]
  DUPTABLE R26 K32 [{"Id", "Schema"}]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K56 ["Seed"]
  SETTABLEKS R27 R26 K1 ["Id"]
  DUPTABLE R27 K11 [{"Type"}]
  LOADK R28 K57 ["Number"]
  SETTABLEKS R28 R27 K10 ["Type"]
  SETTABLEKS R27 R26 K3 ["Schema"]
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K50 ["Children"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K58 ["AdvancedNoise"]
  SETTABLEKS R23 R22 K1 ["Id"]
  DUPTABLE R23 K60 [{"Text", "Type"}]
  LOADK R24 K61 [""]
  SETTABLEKS R24 R23 K59 ["Text"]
  LOADK R24 K62 ["Label"]
  SETTABLEKS R24 R23 K10 ["Type"]
  SETTABLEKS R23 R22 K3 ["Schema"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K5 ["TerrainType"]
  GETTABLE R24 R1 R25
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K63 ["None"]
  JUMPIFEQ R24 R25 [+3]
  LOADB R23 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K15 ["Value"]
  DUPTABLE R23 K32 [{"Id", "Schema"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K64 ["Material"]
  SETTABLEKS R24 R23 K1 ["Id"]
  DUPTABLE R24 K66 [{"Height", "Type"}]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K29 ["Size"]
  GETTABLE R26 R1 R27
  JUMPIFNOT R26 [+7]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K29 ["Size"]
  GETTABLE R26 R1 R27
  GETTABLEKS R25 R26 K25 ["Y"]
  JUMP [+1]
  LOADN R25 1
  SETTABLEKS R25 R24 K65 ["Height"]
  LOADK R25 K67 ["MaterialRanges"]
  SETTABLEKS R25 R24 K10 ["Type"]
  SETTABLEKS R24 R23 K3 ["Schema"]
  SETLIST R7 R8 16 [1]
  DUPTABLE R8 K32 [{"Id", "Schema"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K68 ["BlendingEdge"]
  SETTABLEKS R9 R8 K1 ["Id"]
  GETUPVAL R9 5
  SETTABLEKS R9 R8 K3 ["Schema"]
  DUPTABLE R9 K69 [{"Id", "Layout", "Schema", "Value"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K70 ["Confirm"]
  SETTABLEKS R24 R9 K1 ["Id"]
  GETIMPORT R24 K9 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R9 K2 ["Layout"]
  DUPTABLE R24 K73 [{"CanConfirm", "CanRegenerate", "Label", "Type"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K71 ["CanConfirm"]
  LOADB R25 0
  SETTABLEKS R25 R24 K72 ["CanRegenerate"]
  GETUPVAL R27 7
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K70 ["Confirm"]
  NAMECALL R25 R4 K74 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K62 ["Label"]
  LOADK R25 K75 ["ConfirmGeneration"]
  SETTABLEKS R25 R24 K10 ["Type"]
  SETTABLEKS R24 R9 K3 ["Schema"]
  LOADB R24 1
  SETTABLEKS R24 R9 K15 ["Value"]
  SETLIST R7 R8 2 [17]
  DUPTABLE R8 K79 [{"Category", "Data", "Overrides"}]
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K76 ["Category"]
  SETTABLEKS R1 R8 K77 ["Data"]
  SETTABLEKS R3 R8 K78 ["Overrides"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["ApplyById"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["BuildSettings"]
  GETTABLEKS R5 R2 K12 ["Storage"]
  GETTABLEKS R6 R2 K13 ["TerrainType"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K16 ["isVectorNaN"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K17 ["Flags"]
  GETTABLEKS R10 R11 K18 ["getFFlagTerrainEditorNaNWarnings"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K11 ["BuildSettings"]
  NEWTABLE R11 2 0
  NEWTABLE R12 32 0
  GETTABLEKS R13 R4 K19 ["AdvancedNoise"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K21 ["NoiseStrength"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K22 ["BankSize"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K23 ["BlendingEdge"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K24 ["CliffSlope"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K25 ["Confirm"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K27 ["CraterDepth"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K28 ["CraterRadius"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K29 ["FillBottom"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K30 ["NoiseScale"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K31 ["Material"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K32 ["Offset"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K33 ["PlacementMode"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K34 ["Position"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K35 ["RimHeight"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K36 ["TalusSlope"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K37 ["Rotation"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K38 ["Seed"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K39 ["Size"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K40 ["SnapToVoxels"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K13 ["TerrainType"]
  GETTABLEKS R14 R5 K41 ["Global"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K42 ["TopRadius"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K43 ["Transform"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K44 ["WaterLevel"]
  GETTABLEKS R14 R5 K20 ["LocalPersistent"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K31 ["Material"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R4 K45 ["MaterialLUT"]
  GETTABLEKS R14 R5 K26 ["LocalSession"]
  SETTABLE R14 R12 R13
  SETTABLEKS R12 R11 K12 ["Storage"]
  DUPTABLE R12 K51 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R13 K52 ["DelayedSlider"]
  SETTABLEKS R13 R12 K46 ["Type"]
  LOADN R13 0
  SETTABLEKS R13 R12 K47 ["Min"]
  LOADN R13 1
  SETTABLEKS R13 R12 K48 ["Max"]
  LOADB R13 1
  SETTABLEKS R13 R12 K49 ["ShowInput"]
  LOADK R13 K53 [0.01]
  SETTABLEKS R13 R12 K50 ["SnapIncrement"]
  DUPCLOSURE R13 K54 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K55 ["Generator"]
  RETURN R11 1
