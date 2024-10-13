PROTO_0:
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 0
  RETURN R1 1
  GETUPVAL R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 64 0
  GETIMPORT R3 K10 [Enum.Material.Asphalt]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K12 [Enum.Material.Basalt]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K14 [Enum.Material.Brick]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K16 [Enum.Material.Cardboard]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K18 [Enum.Material.Carpet]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K20 [Enum.Material.CeramicTiles]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K22 [Enum.Material.ClayRoofTiles]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K24 [Enum.Material.Cobblestone]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K26 [Enum.Material.Concrete]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K28 [Enum.Material.CorrodedMetal]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K30 [Enum.Material.CrackedLava]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K32 [Enum.Material.DiamondPlate]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K34 [Enum.Material.Fabric]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K36 [Enum.Material.Foil]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K38 [Enum.Material.ForceField]
  LOADB R4 0
  SETTABLE R4 R2 R3
  GETIMPORT R3 K40 [Enum.Material.Glacier]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K42 [Enum.Material.Glass]
  LOADB R4 0
  SETTABLE R4 R2 R3
  GETIMPORT R3 K44 [Enum.Material.Granite]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K46 [Enum.Material.Grass]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K48 [Enum.Material.Ground]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K50 [Enum.Material.Ice]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K52 [Enum.Material.LeafyGrass]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K54 [Enum.Material.Leather]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K56 [Enum.Material.Limestone]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K58 [Enum.Material.Marble]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K60 [Enum.Material.Metal]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K62 [Enum.Material.Mud]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K64 [Enum.Material.Neon]
  LOADB R4 0
  SETTABLE R4 R2 R3
  GETIMPORT R3 K66 [Enum.Material.Pavement]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K68 [Enum.Material.Pebble]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K70 [Enum.Material.Plaster]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K72 [Enum.Material.Plastic]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K74 [Enum.Material.Rock]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K76 [Enum.Material.RoofShingles]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K78 [Enum.Material.Rubber]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K80 [Enum.Material.Salt]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K82 [Enum.Material.Sand]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K84 [Enum.Material.Sandstone]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K86 [Enum.Material.Slate]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K88 [Enum.Material.SmoothPlastic]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K90 [Enum.Material.Snow]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K92 [Enum.Material.Wood]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETIMPORT R3 K94 [Enum.Material.WoodPlanks]
  LOADB R4 1
  SETTABLE R4 R2 R3
  NEWTABLE R3 0 40
  GETIMPORT R4 K10 [Enum.Material.Asphalt]
  GETIMPORT R5 K12 [Enum.Material.Basalt]
  GETIMPORT R6 K14 [Enum.Material.Brick]
  GETIMPORT R7 K16 [Enum.Material.Cardboard]
  GETIMPORT R8 K18 [Enum.Material.Carpet]
  GETIMPORT R9 K20 [Enum.Material.CeramicTiles]
  GETIMPORT R10 K22 [Enum.Material.ClayRoofTiles]
  GETIMPORT R11 K24 [Enum.Material.Cobblestone]
  GETIMPORT R12 K26 [Enum.Material.Concrete]
  GETIMPORT R13 K28 [Enum.Material.CorrodedMetal]
  GETIMPORT R14 K30 [Enum.Material.CrackedLava]
  GETIMPORT R15 K32 [Enum.Material.DiamondPlate]
  GETIMPORT R16 K34 [Enum.Material.Fabric]
  GETIMPORT R17 K36 [Enum.Material.Foil]
  GETIMPORT R18 K40 [Enum.Material.Glacier]
  GETIMPORT R19 K44 [Enum.Material.Granite]
  SETLIST R3 R4 16 [1]
  GETIMPORT R4 K46 [Enum.Material.Grass]
  GETIMPORT R5 K48 [Enum.Material.Ground]
  GETIMPORT R6 K50 [Enum.Material.Ice]
  GETIMPORT R7 K52 [Enum.Material.LeafyGrass]
  GETIMPORT R8 K54 [Enum.Material.Leather]
  GETIMPORT R9 K56 [Enum.Material.Limestone]
  GETIMPORT R10 K58 [Enum.Material.Marble]
  GETIMPORT R11 K60 [Enum.Material.Metal]
  GETIMPORT R12 K62 [Enum.Material.Mud]
  GETIMPORT R13 K66 [Enum.Material.Pavement]
  GETIMPORT R14 K68 [Enum.Material.Pebble]
  GETIMPORT R15 K70 [Enum.Material.Plaster]
  GETIMPORT R16 K72 [Enum.Material.Plastic]
  GETIMPORT R17 K74 [Enum.Material.Rock]
  GETIMPORT R18 K76 [Enum.Material.RoofShingles]
  GETIMPORT R19 K78 [Enum.Material.Rubber]
  SETLIST R3 R4 16 [17]
  GETIMPORT R4 K80 [Enum.Material.Salt]
  GETIMPORT R5 K82 [Enum.Material.Sand]
  GETIMPORT R6 K84 [Enum.Material.Sandstone]
  GETIMPORT R7 K86 [Enum.Material.Slate]
  GETIMPORT R8 K88 [Enum.Material.SmoothPlastic]
  GETIMPORT R9 K90 [Enum.Material.Snow]
  GETIMPORT R10 K92 [Enum.Material.Wood]
  GETIMPORT R11 K94 [Enum.Material.WoodPlanks]
  SETLIST R3 R4 8 [33]
  DUPCLOSURE R4 K95 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
