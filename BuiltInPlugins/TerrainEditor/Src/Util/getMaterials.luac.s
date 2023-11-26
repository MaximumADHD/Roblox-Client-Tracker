PROTO_0:
  NEWTABLE R1 0 22
  GETIMPORT R2 K3 [Enum.Material.Asphalt]
  GETIMPORT R3 K5 [Enum.Material.Basalt]
  GETIMPORT R4 K7 [Enum.Material.Brick]
  GETIMPORT R5 K9 [Enum.Material.Cobblestone]
  GETIMPORT R6 K11 [Enum.Material.Concrete]
  GETIMPORT R7 K13 [Enum.Material.CrackedLava]
  GETIMPORT R8 K15 [Enum.Material.Glacier]
  GETIMPORT R9 K17 [Enum.Material.Grass]
  GETIMPORT R10 K19 [Enum.Material.Ground]
  GETIMPORT R11 K21 [Enum.Material.Ice]
  GETIMPORT R12 K23 [Enum.Material.LeafyGrass]
  GETIMPORT R13 K25 [Enum.Material.Limestone]
  GETIMPORT R14 K27 [Enum.Material.Mud]
  GETIMPORT R15 K29 [Enum.Material.Pavement]
  GETIMPORT R16 K31 [Enum.Material.Rock]
  GETIMPORT R17 K33 [Enum.Material.Salt]
  SETLIST R1 R2 16 [1]
  GETIMPORT R2 K35 [Enum.Material.Sand]
  GETIMPORT R3 K37 [Enum.Material.Sandstone]
  GETIMPORT R4 K39 [Enum.Material.Slate]
  GETIMPORT R5 K41 [Enum.Material.Snow]
  GETIMPORT R6 K43 [Enum.Material.Water]
  GETIMPORT R7 K45 [Enum.Material.WoodPlanks]
  SETLIST R1 R2 6 [17]
  JUMPIFNOT R0 [+8]
  GETIMPORT R4 K47 [Enum.Material.Air]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K50 [table.insert]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
