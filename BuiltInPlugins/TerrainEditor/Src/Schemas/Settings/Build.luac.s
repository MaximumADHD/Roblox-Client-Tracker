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
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K2 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_3:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  GETTABLEKS R4 R0 K2 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["X"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+11]
  GETTABLEKS R1 R0 K1 ["Y"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+6]
  GETTABLEKS R1 R0 K2 ["Z"]
  LOADN R2 4
  JUMPIFNOTLT R1 R2 [+10]
  GETIMPORT R1 K6 [Enum.PropertyStatus.Error]
  GETUPVAL R2 0
  LOADK R4 K7 ["SelectionWarning"]
  LOADK R5 K8 ["Size"]
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R3 R0 K0 ["X"]
  GETTABLEKS R4 R0 K1 ["Y"]
  MUL R2 R3 R4
  GETTABLEKS R3 R0 K2 ["Z"]
  MUL R1 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["MaxBuildRegion"]
  POWK R2 R3 K10 [3]
  JUMPIFNOTLT R2 R1 [+10]
  GETIMPORT R1 K6 [Enum.PropertyStatus.Error]
  GETUPVAL R2 0
  LOADK R4 K7 ["SelectionWarning"]
  LOADK R5 K12 ["SizeMax"]
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETIMPORT R1 K14 [Enum.PropertyStatus.Ok]
  LOADK R2 K15 [""]
  RETURN R1 2

PROTO_5:
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  NEWTABLE R1 0 2
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R4 R0 K0 ["Localization"]
  GETUPVAL R5 0
  MOVE R6 R0
  NEWTABLE R7 0 16
  DUPTABLE R8 K3 [{"Id", "Schema"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["TerrainType"]
  SETTABLEKS R9 R8 K1 ["Id"]
  DUPTABLE R9 K7 [{"Items", "Type"}]
  GETUPVAL R10 2
  MOVE R11 R4
  LOADNIL R12
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["TerrainType"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K5 ["Items"]
  LOADK R10 K8 ["Select"]
  SETTABLEKS R10 R9 K6 ["Type"]
  SETTABLEKS R9 R8 K2 ["Schema"]
  DUPTABLE R9 K12 [{"DataId", "Hidden", "Id", "Schema", "Value"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["Transform"]
  SETTABLEKS R10 R9 K9 ["DataId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K10 ["Hidden"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["Position"]
  SETTABLEKS R10 R9 K1 ["Id"]
  DUPTABLE R10 K18 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R11 K19 ["Vector"]
  SETTABLEKS R11 R10 K6 ["Type"]
  NEWTABLE R11 0 3
  LOADK R12 K20 ["X"]
  LOADK R13 K21 ["Y"]
  LOADK R14 K22 ["Z"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K15 ["Components"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R11 R10 K16 ["GetValue"]
  DUPCLOSURE R11 K23 [PROTO_1]
  SETTABLEKS R11 R10 K17 ["GetComponents"]
  SETTABLEKS R10 R9 K2 ["Schema"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["Transform"]
  GETTABLE R10 R1 R11
  SETTABLEKS R10 R9 K11 ["Value"]
  DUPTABLE R10 K25 [{"Id", "Schema", "Validate"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K26 ["Size"]
  SETTABLEKS R11 R10 K1 ["Id"]
  DUPTABLE R11 K18 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R12 K19 ["Vector"]
  SETTABLEKS R12 R11 K6 ["Type"]
  NEWTABLE R12 0 3
  LOADK R13 K20 ["X"]
  LOADK R14 K21 ["Y"]
  LOADK R15 K22 ["Z"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K15 ["Components"]
  DUPCLOSURE R12 K27 [PROTO_2]
  SETTABLEKS R12 R11 K16 ["GetValue"]
  DUPCLOSURE R12 K28 [PROTO_3]
  SETTABLEKS R12 R11 K17 ["GetComponents"]
  SETTABLEKS R11 R10 K2 ["Schema"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R11 R10 K24 ["Validate"]
  DUPTABLE R11 K3 [{"Id", "Schema"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K29 ["CraterDepth"]
  SETTABLEKS R12 R11 K1 ["Id"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K2 ["Schema"]
  DUPTABLE R12 K3 [{"Id", "Schema"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["CraterRadius"]
  SETTABLEKS R13 R12 K1 ["Id"]
  GETUPVAL R13 5
  SETTABLEKS R13 R12 K2 ["Schema"]
  DUPTABLE R13 K3 [{"Id", "Schema"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K31 ["TopRadius"]
  SETTABLEKS R14 R13 K1 ["Id"]
  GETUPVAL R14 5
  SETTABLEKS R14 R13 K2 ["Schema"]
  DUPTABLE R14 K3 [{"Id", "Schema"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K32 ["FillBottom"]
  SETTABLEKS R15 R14 K1 ["Id"]
  GETUPVAL R15 5
  SETTABLEKS R15 R14 K2 ["Schema"]
  DUPTABLE R15 K3 [{"Id", "Schema"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K33 ["WaterLevel"]
  SETTABLEKS R16 R15 K1 ["Id"]
  GETUPVAL R16 5
  SETTABLEKS R16 R15 K2 ["Schema"]
  DUPTABLE R16 K3 [{"Id", "Schema"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K34 ["BankSize"]
  SETTABLEKS R17 R16 K1 ["Id"]
  GETUPVAL R17 5
  SETTABLEKS R17 R16 K2 ["Schema"]
  DUPTABLE R17 K3 [{"Id", "Schema"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K35 ["RimHeight"]
  SETTABLEKS R18 R17 K1 ["Id"]
  GETUPVAL R18 5
  SETTABLEKS R18 R17 K2 ["Schema"]
  DUPTABLE R18 K3 [{"Id", "Schema"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K36 ["Frequency"]
  SETTABLEKS R19 R18 K1 ["Id"]
  GETUPVAL R19 5
  SETTABLEKS R19 R18 K2 ["Schema"]
  DUPTABLE R19 K3 [{"Id", "Schema"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K37 ["Amplitude"]
  SETTABLEKS R20 R19 K1 ["Id"]
  GETUPVAL R20 5
  SETTABLEKS R20 R19 K2 ["Schema"]
  DUPTABLE R20 K39 [{"Children", "Id", "Schema", "Value"}]
  NEWTABLE R21 0 2
  DUPTABLE R22 K3 [{"Id", "Schema"}]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K40 ["Offset"]
  SETTABLEKS R23 R22 K1 ["Id"]
  DUPTABLE R23 K18 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R24 K19 ["Vector"]
  SETTABLEKS R24 R23 K6 ["Type"]
  NEWTABLE R24 0 2
  LOADK R25 K20 ["X"]
  LOADK R26 K21 ["Y"]
  SETLIST R24 R25 2 [1]
  SETTABLEKS R24 R23 K15 ["Components"]
  DUPCLOSURE R24 K41 [PROTO_5]
  SETTABLEKS R24 R23 K16 ["GetValue"]
  DUPCLOSURE R24 K42 [PROTO_6]
  SETTABLEKS R24 R23 K17 ["GetComponents"]
  SETTABLEKS R23 R22 K2 ["Schema"]
  DUPTABLE R23 K3 [{"Id", "Schema"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K43 ["Seed"]
  SETTABLEKS R24 R23 K1 ["Id"]
  DUPTABLE R24 K44 [{"Type"}]
  LOADK R25 K45 ["Number"]
  SETTABLEKS R25 R24 K6 ["Type"]
  SETTABLEKS R24 R23 K2 ["Schema"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K38 ["Children"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K46 ["AdvancedNoise"]
  SETTABLEKS R21 R20 K1 ["Id"]
  DUPTABLE R21 K48 [{"Text", "Type"}]
  LOADK R22 K49 [""]
  SETTABLEKS R22 R21 K47 ["Text"]
  LOADK R22 K50 ["Label"]
  SETTABLEKS R22 R21 K6 ["Type"]
  SETTABLEKS R21 R20 K2 ["Schema"]
  LOADB R21 1
  SETTABLEKS R21 R20 K11 ["Value"]
  DUPTABLE R21 K3 [{"Id", "Schema"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K51 ["Material"]
  SETTABLEKS R22 R21 K1 ["Id"]
  DUPTABLE R22 K53 [{"Height", "Type"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K26 ["Size"]
  GETTABLE R24 R1 R25
  GETTABLEKS R23 R24 K21 ["Y"]
  SETTABLEKS R23 R22 K52 ["Height"]
  LOADK R23 K54 ["MaterialRanges"]
  SETTABLEKS R23 R22 K6 ["Type"]
  SETTABLEKS R22 R21 K2 ["Schema"]
  DUPTABLE R22 K3 [{"Id", "Schema"}]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K55 ["BlendingEdge"]
  SETTABLEKS R23 R22 K1 ["Id"]
  GETUPVAL R23 5
  SETTABLEKS R23 R22 K2 ["Schema"]
  DUPTABLE R23 K57 [{"Id", "Layout", "Schema", "Value"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K58 ["Commit"]
  SETTABLEKS R24 R23 K1 ["Id"]
  GETIMPORT R24 K62 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K56 ["Layout"]
  DUPTABLE R24 K63 [{"Label", "Type"}]
  GETUPVAL R27 6
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K58 ["Commit"]
  NAMECALL R25 R4 K64 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K50 ["Label"]
  LOADK R25 K65 ["Button"]
  SETTABLEKS R25 R24 K6 ["Type"]
  SETTABLEKS R24 R23 K2 ["Schema"]
  LOADB R24 1
  SETTABLEKS R24 R23 K11 ["Value"]
  SETLIST R7 R8 16 [1]
  DUPTABLE R8 K69 [{"Category", "Data", "Overrides"}]
  GETUPVAL R9 6
  SETTABLEKS R9 R8 K66 ["Category"]
  SETTABLEKS R1 R8 K67 ["Data"]
  SETTABLEKS R3 R8 K68 ["Overrides"]
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
  GETTABLEKS R5 R2 K12 ["EnumType"]
  GETTABLEKS R6 R2 K13 ["Storage"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K16 ["getItems"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K11 ["BuildSettings"]
  NEWTABLE R10 2 0
  NEWTABLE R11 32 0
  GETTABLEKS R12 R4 K17 ["AdvancedNoise"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K19 ["Amplitude"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K20 ["BankSize"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K21 ["BlendingEdge"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K22 ["Commit"]
  GETTABLEKS R13 R6 K23 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K24 ["CraterDepth"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K25 ["CraterRadius"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K26 ["FillBottom"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K27 ["Frequency"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K28 ["Material"]
  GETTABLEKS R13 R6 K23 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K29 ["Offset"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K30 ["Position"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K31 ["RimHeight"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K32 ["Seed"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K33 ["Size"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K34 ["SnapToVoxels"]
  GETTABLEKS R13 R6 K23 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K35 ["TerrainType"]
  GETTABLEKS R13 R6 K36 ["Global"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K37 ["TopRadius"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K38 ["Transform"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K39 ["WaterLevel"]
  GETTABLEKS R13 R6 K18 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K28 ["Material"]
  GETTABLEKS R13 R6 K23 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K40 ["MaterialLUT"]
  GETTABLEKS R13 R6 K23 ["LocalSession"]
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R10 K13 ["Storage"]
  DUPTABLE R11 K46 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R12 K47 ["Slider"]
  SETTABLEKS R12 R11 K41 ["Type"]
  LOADN R12 0
  SETTABLEKS R12 R11 K42 ["Min"]
  LOADN R12 1
  SETTABLEKS R12 R11 K43 ["Max"]
  LOADB R12 1
  SETTABLEKS R12 R11 K44 ["ShowInput"]
  LOADK R12 K48 [0.01]
  SETTABLEKS R12 R11 K45 ["SnapIncrement"]
  DUPCLOSURE R12 K49 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R12 R10 K50 ["Generator"]
  RETURN R10 1
