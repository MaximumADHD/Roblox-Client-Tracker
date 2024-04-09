MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Schemas"]
  GETTABLEKS R5 R6 K12 ["Settings"]
  GETTABLEKS R4 R5 K13 ["Build"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K15 ["BuildSettings"]
  GETTABLEKS R6 R4 K16 ["Category"]
  GETTABLEKS R7 R4 K17 ["Gizmo"]
  GETTABLEKS R8 R4 K18 ["MaterialUnit"]
  GETTABLEKS R9 R4 K19 ["Tab"]
  GETTABLEKS R10 R4 K20 ["TerrainType"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K24 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R13 16 0
  GETTABLEKS R14 R5 K25 ["AdvancedNoise"]
  DUPTABLE R15 K27 [{"Children"}]
  NEWTABLE R16 2 0
  GETTABLEKS R17 R5 K28 ["Offset"]
  GETIMPORT R18 K31 [Vector2.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K32 ["Seed"]
  LOADK R18 K33 [0.123]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K26 ["Children"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K34 ["Amplitude"]
  LOADK R15 K35 [0.5]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K36 ["BlendingEdge"]
  LOADN R15 0
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K37 ["CraterDepth"]
  LOADK R15 K38 [0.2]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K39 ["CraterRadius"]
  LOADK R15 K40 [0.1]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K41 ["Frequency"]
  LOADK R15 K42 [0.4]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K43 ["Material"]
  DUPTABLE R15 K50 [{"Unit", "Min", "Max", "MaterialIndex", "MaterialList", "FillMaterial"}]
  GETTABLEKS R16 R8 K51 ["Percentage"]
  SETTABLEKS R16 R15 K44 ["Unit"]
  LOADN R16 0
  SETTABLEKS R16 R15 K45 ["Min"]
  LOADN R16 1
  SETTABLEKS R16 R15 K46 ["Max"]
  LOADN R16 1
  SETTABLEKS R16 R15 K47 ["MaterialIndex"]
  NEWTABLE R16 0 3
  DUPTABLE R17 K57 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R18 K60 [Enum.Material.Rock]
  SETTABLEKS R18 R17 K43 ["Material"]
  LOADK R18 K40 [0.1]
  SETTABLEKS R18 R17 K52 ["MinHeight"]
  LOADK R18 K61 [0.7]
  SETTABLEKS R18 R17 K53 ["MaxHeight"]
  LOADN R18 0
  SETTABLEKS R18 R17 K54 ["MinSlope"]
  LOADN R18 45
  SETTABLEKS R18 R17 K55 ["MaxSlope"]
  LOADN R18 0
  SETTABLEKS R18 R17 K56 ["Priority"]
  DUPTABLE R18 K57 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R19 K63 [Enum.Material.Grass]
  SETTABLEKS R19 R18 K43 ["Material"]
  LOADN R19 0
  SETTABLEKS R19 R18 K52 ["MinHeight"]
  LOADK R19 K35 [0.5]
  SETTABLEKS R19 R18 K53 ["MaxHeight"]
  LOADN R19 0
  SETTABLEKS R19 R18 K54 ["MinSlope"]
  LOADN R19 30
  SETTABLEKS R19 R18 K55 ["MaxSlope"]
  LOADN R19 1
  SETTABLEKS R19 R18 K56 ["Priority"]
  DUPTABLE R19 K57 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
  GETIMPORT R20 K65 [Enum.Material.Basalt]
  SETTABLEKS R20 R19 K43 ["Material"]
  LOADN R20 0
  SETTABLEKS R20 R19 K52 ["MinHeight"]
  LOADN R20 1
  SETTABLEKS R20 R19 K53 ["MaxHeight"]
  LOADN R20 10
  SETTABLEKS R20 R19 K54 ["MinSlope"]
  LOADN R20 90
  SETTABLEKS R20 R19 K55 ["MaxSlope"]
  LOADN R20 2
  SETTABLEKS R20 R19 K56 ["Priority"]
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K48 ["MaterialList"]
  GETIMPORT R16 K67 [Enum.Material.CrackedLava]
  SETTABLEKS R16 R15 K49 ["FillMaterial"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K68 ["Size"]
  LOADN R16 244
  LOADN R17 200
  LOADN R18 244
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K70 [Vector3.new]
  CALL R15 3 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K71 ["SnapToVoxels"]
  LOADB R15 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K72 ["Transform"]
  GETIMPORT R15 K74 [CFrame.new]
  CALL R15 0 1
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K21 ["Defaults"]
  GETTABLEKS R13 R6 K15 ["BuildSettings"]
  SETTABLEKS R13 R12 K22 ["Id"]
  MOVE R14 R2
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+1]
  MOVE R13 R3
  SETTABLEKS R13 R12 K23 ["Schema"]
  SETLIST R11 R12 1 [1]
  NEWTABLE R12 0 1
  DUPTABLE R13 K75 [{"Id", "Schema"}]
  GETTABLEKS R14 R7 K76 ["Region"]
  SETTABLEKS R14 R13 K22 ["Id"]
  DUPTABLE R14 K80 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R15 R7 K76 ["Region"]
  SETTABLEKS R15 R14 K77 ["Type"]
  LOADB R15 0
  SETTABLEKS R15 R14 K78 ["Wireframe"]
  LOADB R15 0
  SETTABLEKS R15 R14 K79 ["Rotation"]
  SETTABLEKS R14 R13 K23 ["Schema"]
  SETLIST R12 R13 1 [1]
  GETTABLEKS R15 R10 K81 ["Volcano"]
  GETTABLEKS R16 R9 K82 ["None"]
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R13 R1 K30 ["new"]
  CALL R13 5 1
  RETURN R13 1
