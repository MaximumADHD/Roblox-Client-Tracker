PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
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
  GETIMPORT R3 K10 [Enum.Material.Aluminum]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K12 ["Metal"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K14 [Enum.Material.Asphalt]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K15 ["Concrete"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K17 [Enum.Material.Basalt]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K20 [Enum.Material.Brick]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K21 ["Stone"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K23 [Enum.Material.Cardboard]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K24 ["Paper"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K26 [Enum.Material.Carpet]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K27 ["Fabric"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K29 [Enum.Material.CeramicTiles]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K30 ["Ceramic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K32 [Enum.Material.ClayRoofTiles]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K30 ["Ceramic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K34 [Enum.Material.Cobblestone]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K21 ["Stone"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K35 [Enum.Material.Concrete]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K15 ["Concrete"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K37 [Enum.Material.CorrodedMetal]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K12 ["Metal"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K39 [Enum.Material.CrackedLava]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K41 [Enum.Material.DiamondPlate]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K12 ["Metal"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K42 [Enum.Material.Fabric]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K27 ["Fabric"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K44 [Enum.Material.ForceField]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K45 ["Special"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K47 [Enum.Material.Glacier]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K48 ["Organic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K50 [Enum.Material.Glass]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K51 ["Translucent"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K53 [Enum.Material.Granite]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K55 [Enum.Material.Grass]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K57 [Enum.Material.Ground]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K59 [Enum.Material.Ice]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K48 ["Organic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K61 [Enum.Material.LeafyGrass]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K63 [Enum.Material.Leather]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K27 ["Fabric"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K65 [Enum.Material.Limestone]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K67 [Enum.Material.Neon]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K45 ["Special"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K69 [Enum.Material.Marble]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K70 [Enum.Material.Metal]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K12 ["Metal"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K72 [Enum.Material.Mud]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K74 [Enum.Material.Pavement]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K15 ["Concrete"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K76 [Enum.Material.Pebble]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K78 [Enum.Material.Plaster]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K30 ["Ceramic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K80 [Enum.Material.Plastic]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K79 ["Plastic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K81 [Enum.Material.Rock]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K83 [Enum.Material.RoofShingles]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K84 ["Synthetic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K86 [Enum.Material.Rubber]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K84 ["Synthetic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K88 [Enum.Material.Salt]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K48 ["Organic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K90 [Enum.Material.Sand]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K92 [Enum.Material.Sandstone]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K94 [Enum.Material.Slate]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K18 ["Rock"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K96 [Enum.Material.SmoothPlastic]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K79 ["Plastic"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K98 [Enum.Material.Snow]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K56 ["Ground"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K100 [Enum.Material.Wood]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K99 ["Wood"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K102 [Enum.Material.WoodPlanks]
  NEWTABLE R4 0 2
  LOADK R5 K11 ["Materials"]
  LOADK R6 K99 ["Wood"]
  SETLIST R4 R5 2 [1]
  SETTABLE R4 R2 R3
  DUPCLOSURE R3 K103 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
