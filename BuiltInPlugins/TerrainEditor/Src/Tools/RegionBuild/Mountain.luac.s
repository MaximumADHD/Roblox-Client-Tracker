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
  NEWTABLE R13 8 0
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
  LOADK R15 K35 [0.3]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K36 ["BlendingEdge"]
  LOADN R15 0
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K37 ["Frequency"]
  LOADK R15 K38 [0.4]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K39 ["Material"]
  DUPTABLE R15 K42 [{"Unit", "MaterialList"}]
  GETTABLEKS R16 R8 K43 ["Percentage"]
  SETTABLEKS R16 R15 K40 ["Unit"]
  NEWTABLE R16 0 4
  DUPTABLE R17 K48 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
  GETIMPORT R18 K51 [Enum.Material.Rock]
  SETTABLEKS R18 R17 K39 ["Material"]
  LOADK R18 K52 [0.7]
  SETTABLEKS R18 R17 K44 ["MinHeight"]
  LOADN R18 1
  SETTABLEKS R18 R17 K45 ["MaxHeight"]
  LOADN R18 45
  SETTABLEKS R18 R17 K46 ["MinSlope"]
  LOADN R18 90
  SETTABLEKS R18 R17 K47 ["MaxSlope"]
  DUPTABLE R18 K48 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
  GETIMPORT R19 K54 [Enum.Material.Grass]
  SETTABLEKS R19 R18 K39 ["Material"]
  LOADK R19 K55 [0.1]
  SETTABLEKS R19 R18 K44 ["MinHeight"]
  LOADK R19 K52 [0.7]
  SETTABLEKS R19 R18 K45 ["MaxHeight"]
  LOADN R19 10
  SETTABLEKS R19 R18 K46 ["MinSlope"]
  LOADN R19 90
  SETTABLEKS R19 R18 K47 ["MaxSlope"]
  DUPTABLE R19 K48 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
  GETIMPORT R20 K57 [Enum.Material.Ground]
  SETTABLEKS R20 R19 K39 ["Material"]
  LOADK R20 K55 [0.1]
  SETTABLEKS R20 R19 K44 ["MinHeight"]
  LOADK R20 K58 [0.8]
  SETTABLEKS R20 R19 K45 ["MaxHeight"]
  LOADN R20 0
  SETTABLEKS R20 R19 K46 ["MinSlope"]
  LOADN R20 20
  SETTABLEKS R20 R19 K47 ["MaxSlope"]
  DUPTABLE R20 K48 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
  GETIMPORT R21 K60 [Enum.Material.Mud]
  SETTABLEKS R21 R20 K39 ["Material"]
  LOADN R21 0
  SETTABLEKS R21 R20 K44 ["MinHeight"]
  LOADK R21 K52 [0.7]
  SETTABLEKS R21 R20 K45 ["MaxHeight"]
  LOADN R21 0
  SETTABLEKS R21 R20 K46 ["MinSlope"]
  LOADN R21 30
  SETTABLEKS R21 R20 K47 ["MaxSlope"]
  SETLIST R16 R17 4 [1]
  SETTABLEKS R16 R15 K41 ["MaterialList"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K61 ["Size"]
  LOADN R16 200
  LOADN R17 100
  LOADN R18 200
  FASTCALL VECTOR [+2]
  GETIMPORT R15 K63 [Vector3.new]
  CALL R15 3 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K64 ["SnapToVoxels"]
  LOADB R15 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R5 K65 ["Transform"]
  GETIMPORT R15 K67 [CFrame.new]
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
  DUPTABLE R13 K68 [{"Id", "Schema"}]
  GETTABLEKS R14 R7 K69 ["Region"]
  SETTABLEKS R14 R13 K22 ["Id"]
  DUPTABLE R14 K73 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R15 R7 K69 ["Region"]
  SETTABLEKS R15 R14 K70 ["Type"]
  LOADB R15 0
  SETTABLEKS R15 R14 K71 ["Wireframe"]
  LOADB R15 0
  SETTABLEKS R15 R14 K72 ["Rotation"]
  SETTABLEKS R14 R13 K23 ["Schema"]
  SETLIST R12 R13 1 [1]
  GETTABLEKS R15 R10 K74 ["Mountain"]
  GETTABLEKS R16 R9 K75 ["None"]
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R13 R1 K30 ["new"]
  CALL R13 5 1
  RETURN R13 1
