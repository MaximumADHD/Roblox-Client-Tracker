PROTO_0:
        0 NEWTABLE                         R2 0 22
        2 GETIMPORT                        R3 K3 [Enum.Material.Asphalt]
        4 GETIMPORT                        R4 K5 [Enum.Material.Basalt]
        6 GETIMPORT                        R5 K7 [Enum.Material.Brick]
        8 GETIMPORT                        R6 K9 [Enum.Material.Cobblestone]
       10 GETIMPORT                        R7 K11 [Enum.Material.Concrete]
       12 GETIMPORT                        R8 K13 [Enum.Material.CrackedLava]
       14 GETIMPORT                        R9 K15 [Enum.Material.Glacier]
       16 GETIMPORT                        R10 K17 [Enum.Material.Grass]
       18 GETIMPORT                        R11 K19 [Enum.Material.Ground]
       20 GETIMPORT                        R12 K21 [Enum.Material.Ice]
       22 GETIMPORT                        R13 K23 [Enum.Material.LeafyGrass]
       24 GETIMPORT                        R14 K25 [Enum.Material.Limestone]
       26 GETIMPORT                        R15 K27 [Enum.Material.Mud]
       28 GETIMPORT                        R16 K29 [Enum.Material.Pavement]
       30 GETIMPORT                        R17 K31 [Enum.Material.Rock]
       32 GETIMPORT                        R18 K33 [Enum.Material.Salt]
       34 SETLIST                          R2 R3 16 [1]
       36 GETIMPORT                        R3 K35 [Enum.Material.Sand]
       38 GETIMPORT                        R4 K37 [Enum.Material.Sandstone]
       40 GETIMPORT                        R5 K39 [Enum.Material.Slate]
       42 GETIMPORT                        R6 K41 [Enum.Material.Snow]
       44 GETIMPORT                        R7 K43 [Enum.Material.Water]
       46 GETIMPORT                        R8 K45 [Enum.Material.WoodPlanks]
       48 SETLIST                          R2 R3 6 [17]
       50 JUMPIFNOT                        R0 ; [+8]
       51 GETIMPORT                        R5 K47 [Enum.Material.Air]
       53 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       55 MOVE                             R4 R2
       56 GETIMPORT                        R3 K50 [table.insert]
       58 CALL                             R3 2 0
       59 JUMPIFNOTEQKB                    R1 FALSE ; [+11]
       61 GETIMPORT                        R3 K52 [table.remove]
       63 MOVE                             R4 R2
       64 GETIMPORT                        R5 K54 [table.find]
       66 MOVE                             R6 R2
       67 GETIMPORT                        R7 K43 [Enum.Material.Water]
       69 CALL                             R5 2 -1
       70 CALL                             R3 -1 0
       71 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 RETURN                           R1 1
