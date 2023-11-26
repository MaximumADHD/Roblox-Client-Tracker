PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 1
  RETURN R1 1
  GETUPVAL R1 2
  RETURN R1 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 3
  RETURN R1 1
  GETUPVAL R1 4
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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["getFFlagMSPhase02"]
  NEWTABLE R4 64 0
  GETIMPORT R5 K12 [Enum.Material.Asphalt]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K14 [Enum.Material.Basalt]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K16 [Enum.Material.Brick]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K18 [Enum.Material.Cobblestone]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K20 [Enum.Material.Concrete]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K22 [Enum.Material.CorrodedMetal]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K24 [Enum.Material.CrackedLava]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K26 [Enum.Material.DiamondPlate]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K28 [Enum.Material.Fabric]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K30 [Enum.Material.Foil]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K32 [Enum.Material.ForceField]
  LOADB R6 0
  SETTABLE R6 R4 R5
  GETIMPORT R5 K34 [Enum.Material.Glacier]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K36 [Enum.Material.Glass]
  LOADB R6 0
  SETTABLE R6 R4 R5
  GETIMPORT R5 K38 [Enum.Material.Granite]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K40 [Enum.Material.Grass]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K42 [Enum.Material.Ground]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K44 [Enum.Material.Ice]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K46 [Enum.Material.LeafyGrass]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K48 [Enum.Material.Limestone]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K50 [Enum.Material.Marble]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K52 [Enum.Material.Metal]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K54 [Enum.Material.Mud]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K56 [Enum.Material.Neon]
  LOADB R6 0
  SETTABLE R6 R4 R5
  GETIMPORT R5 K58 [Enum.Material.Pavement]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K60 [Enum.Material.Pebble]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K62 [Enum.Material.Plastic]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K64 [Enum.Material.Rock]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K66 [Enum.Material.Salt]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K68 [Enum.Material.Sand]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K70 [Enum.Material.Sandstone]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K72 [Enum.Material.Slate]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K74 [Enum.Material.SmoothPlastic]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K76 [Enum.Material.Snow]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K78 [Enum.Material.Wood]
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETIMPORT R5 K80 [Enum.Material.WoodPlanks]
  LOADB R6 1
  SETTABLE R6 R4 R5
  NEWTABLE R5 0 32
  GETIMPORT R6 K12 [Enum.Material.Asphalt]
  GETIMPORT R7 K14 [Enum.Material.Basalt]
  GETIMPORT R8 K16 [Enum.Material.Brick]
  GETIMPORT R9 K18 [Enum.Material.Cobblestone]
  GETIMPORT R10 K20 [Enum.Material.Concrete]
  GETIMPORT R11 K22 [Enum.Material.CorrodedMetal]
  GETIMPORT R12 K24 [Enum.Material.CrackedLava]
  GETIMPORT R13 K26 [Enum.Material.DiamondPlate]
  GETIMPORT R14 K28 [Enum.Material.Fabric]
  GETIMPORT R15 K30 [Enum.Material.Foil]
  GETIMPORT R16 K34 [Enum.Material.Glacier]
  GETIMPORT R17 K38 [Enum.Material.Granite]
  GETIMPORT R18 K40 [Enum.Material.Grass]
  GETIMPORT R19 K42 [Enum.Material.Ground]
  GETIMPORT R20 K44 [Enum.Material.Ice]
  GETIMPORT R21 K46 [Enum.Material.LeafyGrass]
  SETLIST R5 R6 16 [1]
  GETIMPORT R6 K48 [Enum.Material.Limestone]
  GETIMPORT R7 K50 [Enum.Material.Marble]
  GETIMPORT R8 K52 [Enum.Material.Metal]
  GETIMPORT R9 K54 [Enum.Material.Mud]
  GETIMPORT R10 K58 [Enum.Material.Pavement]
  GETIMPORT R11 K60 [Enum.Material.Pebble]
  GETIMPORT R12 K62 [Enum.Material.Plastic]
  GETIMPORT R13 K64 [Enum.Material.Rock]
  GETIMPORT R14 K66 [Enum.Material.Salt]
  GETIMPORT R15 K68 [Enum.Material.Sand]
  GETIMPORT R16 K70 [Enum.Material.Sandstone]
  GETIMPORT R17 K72 [Enum.Material.Slate]
  GETIMPORT R18 K74 [Enum.Material.SmoothPlastic]
  GETIMPORT R19 K76 [Enum.Material.Snow]
  GETIMPORT R20 K78 [Enum.Material.Wood]
  GETIMPORT R21 K80 [Enum.Material.WoodPlanks]
  SETLIST R5 R6 16 [17]
  NEWTABLE R6 64 0
  GETIMPORT R7 K12 [Enum.Material.Asphalt]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K14 [Enum.Material.Basalt]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K16 [Enum.Material.Brick]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K82 [Enum.Material.Cardboard]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K84 [Enum.Material.Carpet]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K86 [Enum.Material.CeramicTiles]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K88 [Enum.Material.ClayRoofTiles]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K18 [Enum.Material.Cobblestone]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K20 [Enum.Material.Concrete]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K22 [Enum.Material.CorrodedMetal]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K24 [Enum.Material.CrackedLava]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K26 [Enum.Material.DiamondPlate]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K28 [Enum.Material.Fabric]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K30 [Enum.Material.Foil]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K32 [Enum.Material.ForceField]
  LOADB R8 0
  SETTABLE R8 R6 R7
  GETIMPORT R7 K34 [Enum.Material.Glacier]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K36 [Enum.Material.Glass]
  LOADB R8 0
  SETTABLE R8 R6 R7
  GETIMPORT R7 K38 [Enum.Material.Granite]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K40 [Enum.Material.Grass]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K42 [Enum.Material.Ground]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K44 [Enum.Material.Ice]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K46 [Enum.Material.LeafyGrass]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K90 [Enum.Material.Leather]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K48 [Enum.Material.Limestone]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K50 [Enum.Material.Marble]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K52 [Enum.Material.Metal]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K54 [Enum.Material.Mud]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K56 [Enum.Material.Neon]
  LOADB R8 0
  SETTABLE R8 R6 R7
  GETIMPORT R7 K58 [Enum.Material.Pavement]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K60 [Enum.Material.Pebble]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K92 [Enum.Material.Plaster]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K62 [Enum.Material.Plastic]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K64 [Enum.Material.Rock]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K94 [Enum.Material.RoofShingles]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K96 [Enum.Material.Rubber]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K66 [Enum.Material.Salt]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K68 [Enum.Material.Sand]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K70 [Enum.Material.Sandstone]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K72 [Enum.Material.Slate]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K74 [Enum.Material.SmoothPlastic]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K76 [Enum.Material.Snow]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K78 [Enum.Material.Wood]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R7 K80 [Enum.Material.WoodPlanks]
  LOADB R8 1
  SETTABLE R8 R6 R7
  NEWTABLE R7 0 40
  GETIMPORT R8 K12 [Enum.Material.Asphalt]
  GETIMPORT R9 K14 [Enum.Material.Basalt]
  GETIMPORT R10 K16 [Enum.Material.Brick]
  GETIMPORT R11 K82 [Enum.Material.Cardboard]
  GETIMPORT R12 K84 [Enum.Material.Carpet]
  GETIMPORT R13 K86 [Enum.Material.CeramicTiles]
  GETIMPORT R14 K88 [Enum.Material.ClayRoofTiles]
  GETIMPORT R15 K18 [Enum.Material.Cobblestone]
  GETIMPORT R16 K20 [Enum.Material.Concrete]
  GETIMPORT R17 K22 [Enum.Material.CorrodedMetal]
  GETIMPORT R18 K24 [Enum.Material.CrackedLava]
  GETIMPORT R19 K26 [Enum.Material.DiamondPlate]
  GETIMPORT R20 K28 [Enum.Material.Fabric]
  GETIMPORT R21 K30 [Enum.Material.Foil]
  GETIMPORT R22 K34 [Enum.Material.Glacier]
  GETIMPORT R23 K38 [Enum.Material.Granite]
  SETLIST R7 R8 16 [1]
  GETIMPORT R8 K40 [Enum.Material.Grass]
  GETIMPORT R9 K42 [Enum.Material.Ground]
  GETIMPORT R10 K44 [Enum.Material.Ice]
  GETIMPORT R11 K46 [Enum.Material.LeafyGrass]
  GETIMPORT R12 K90 [Enum.Material.Leather]
  GETIMPORT R13 K48 [Enum.Material.Limestone]
  GETIMPORT R14 K50 [Enum.Material.Marble]
  GETIMPORT R15 K52 [Enum.Material.Metal]
  GETIMPORT R16 K54 [Enum.Material.Mud]
  GETIMPORT R17 K58 [Enum.Material.Pavement]
  GETIMPORT R18 K60 [Enum.Material.Pebble]
  GETIMPORT R19 K92 [Enum.Material.Plaster]
  GETIMPORT R20 K62 [Enum.Material.Plastic]
  GETIMPORT R21 K64 [Enum.Material.Rock]
  GETIMPORT R22 K94 [Enum.Material.RoofShingles]
  GETIMPORT R23 K96 [Enum.Material.Rubber]
  SETLIST R7 R8 16 [17]
  GETIMPORT R8 K66 [Enum.Material.Salt]
  GETIMPORT R9 K68 [Enum.Material.Sand]
  GETIMPORT R10 K70 [Enum.Material.Sandstone]
  GETIMPORT R11 K72 [Enum.Material.Slate]
  GETIMPORT R12 K74 [Enum.Material.SmoothPlastic]
  GETIMPORT R13 K76 [Enum.Material.Snow]
  GETIMPORT R14 K78 [Enum.Material.Wood]
  GETIMPORT R15 K80 [Enum.Material.WoodPlanks]
  SETLIST R7 R8 8 [33]
  DUPCLOSURE R8 K97 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R8 1
