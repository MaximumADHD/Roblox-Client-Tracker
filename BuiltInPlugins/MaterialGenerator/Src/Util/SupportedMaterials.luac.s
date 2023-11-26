PROTO_0:
  GETTABLEKS R1 R0 K0 ["Name"]
  LOADK R3 K1 ["rbxasset://textures/MaterialGenerator/Materials/%*.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  DUPCLOSURE R2 K0 [PROTO_0]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Name"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  DUPCLOSURE R2 K0 [PROTO_2]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["map"]
  NEWTABLE R3 0 32
  GETIMPORT R4 K11 [Enum.Material.Asphalt]
  GETIMPORT R5 K13 [Enum.Material.Basalt]
  GETIMPORT R6 K15 [Enum.Material.Brick]
  GETIMPORT R7 K17 [Enum.Material.Cobblestone]
  GETIMPORT R8 K19 [Enum.Material.Concrete]
  GETIMPORT R9 K21 [Enum.Material.CorrodedMetal]
  GETIMPORT R10 K23 [Enum.Material.CrackedLava]
  GETIMPORT R11 K25 [Enum.Material.DiamondPlate]
  GETIMPORT R12 K27 [Enum.Material.Fabric]
  GETIMPORT R13 K29 [Enum.Material.Foil]
  GETIMPORT R14 K31 [Enum.Material.Glacier]
  GETIMPORT R15 K33 [Enum.Material.Granite]
  GETIMPORT R16 K35 [Enum.Material.Grass]
  GETIMPORT R17 K37 [Enum.Material.Ground]
  GETIMPORT R18 K39 [Enum.Material.Ice]
  GETIMPORT R19 K41 [Enum.Material.LeafyGrass]
  SETLIST R3 R4 16 [1]
  GETIMPORT R4 K43 [Enum.Material.Limestone]
  GETIMPORT R5 K45 [Enum.Material.Marble]
  GETIMPORT R6 K47 [Enum.Material.Metal]
  GETIMPORT R7 K49 [Enum.Material.Mud]
  GETIMPORT R8 K51 [Enum.Material.Pavement]
  GETIMPORT R9 K53 [Enum.Material.Pebble]
  GETIMPORT R10 K55 [Enum.Material.Plastic]
  GETIMPORT R11 K57 [Enum.Material.Rock]
  GETIMPORT R12 K59 [Enum.Material.Salt]
  GETIMPORT R13 K61 [Enum.Material.Sand]
  GETIMPORT R14 K63 [Enum.Material.Sandstone]
  GETIMPORT R15 K65 [Enum.Material.Slate]
  GETIMPORT R16 K67 [Enum.Material.SmoothPlastic]
  GETIMPORT R17 K69 [Enum.Material.Snow]
  GETIMPORT R18 K71 [Enum.Material.Wood]
  GETIMPORT R19 K73 [Enum.Material.WoodPlanks]
  SETLIST R3 R4 16 [17]
  NEWTABLE R4 2 0
  DUPCLOSURE R5 K74 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K75 ["getIcons"]
  DUPCLOSURE R5 K76 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K77 ["getNames"]
  RETURN R4 1
