PROTO_0:
  NEWTABLE R2 0 22
  GETIMPORT R3 K3 [Enum.Material.Asphalt]
  GETIMPORT R4 K5 [Enum.Material.Basalt]
  GETIMPORT R5 K7 [Enum.Material.Brick]
  GETIMPORT R6 K9 [Enum.Material.Cobblestone]
  GETIMPORT R7 K11 [Enum.Material.Concrete]
  GETIMPORT R8 K13 [Enum.Material.CrackedLava]
  GETIMPORT R9 K15 [Enum.Material.Glacier]
  GETIMPORT R10 K17 [Enum.Material.Grass]
  GETIMPORT R11 K19 [Enum.Material.Ground]
  GETIMPORT R12 K21 [Enum.Material.Ice]
  GETIMPORT R13 K23 [Enum.Material.LeafyGrass]
  GETIMPORT R14 K25 [Enum.Material.Limestone]
  GETIMPORT R15 K27 [Enum.Material.Mud]
  GETIMPORT R16 K29 [Enum.Material.Pavement]
  GETIMPORT R17 K31 [Enum.Material.Rock]
  GETIMPORT R18 K33 [Enum.Material.Salt]
  SETLIST R2 R3 16 [1]
  GETIMPORT R3 K35 [Enum.Material.Sand]
  GETIMPORT R4 K37 [Enum.Material.Sandstone]
  GETIMPORT R5 K39 [Enum.Material.Slate]
  GETIMPORT R6 K41 [Enum.Material.Snow]
  GETIMPORT R7 K43 [Enum.Material.Water]
  GETIMPORT R8 K45 [Enum.Material.WoodPlanks]
  SETLIST R2 R3 6 [17]
  JUMPIFNOT R0 [+8]
  GETIMPORT R5 K47 [Enum.Material.Air]
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K50 [table.insert]
  CALL R3 2 0
  JUMPIFNOTEQKB R1 FALSE [+11]
  GETIMPORT R3 K52 [table.remove]
  MOVE R4 R2
  GETIMPORT R5 K54 [table.find]
  MOVE R6 R2
  GETIMPORT R7 K43 [Enum.Material.Water]
  CALL R5 2 -1
  CALL R3 -1 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  RETURN R1 1
