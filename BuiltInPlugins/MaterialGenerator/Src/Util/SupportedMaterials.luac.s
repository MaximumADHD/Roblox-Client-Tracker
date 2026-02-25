PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 LOADK                            R3 K1 ["rbxasset://textures/MaterialGenerator/Materials/%*.png"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPCLOSURE                       R2 K0 [PROTO_0]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPCLOSURE                       R2 K0 [PROTO_2]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["map"]
       18 NEWTABLE                         R3 0 32
       20 GETIMPORT                        R4 K11 [Enum.Material.Asphalt]
       22 GETIMPORT                        R5 K13 [Enum.Material.Basalt]
       24 GETIMPORT                        R6 K15 [Enum.Material.Brick]
       26 GETIMPORT                        R7 K17 [Enum.Material.Cobblestone]
       28 GETIMPORT                        R8 K19 [Enum.Material.Concrete]
       30 GETIMPORT                        R9 K21 [Enum.Material.CorrodedMetal]
       32 GETIMPORT                        R10 K23 [Enum.Material.CrackedLava]
       34 GETIMPORT                        R11 K25 [Enum.Material.DiamondPlate]
       36 GETIMPORT                        R12 K27 [Enum.Material.Fabric]
       38 GETIMPORT                        R13 K29 [Enum.Material.Foil]
       40 GETIMPORT                        R14 K31 [Enum.Material.Glacier]
       42 GETIMPORT                        R15 K33 [Enum.Material.Granite]
       44 GETIMPORT                        R16 K35 [Enum.Material.Grass]
       46 GETIMPORT                        R17 K37 [Enum.Material.Ground]
       48 GETIMPORT                        R18 K39 [Enum.Material.Ice]
       50 GETIMPORT                        R19 K41 [Enum.Material.LeafyGrass]
       52 SETLIST                          R3 R4 16 [1]
       54 GETIMPORT                        R4 K43 [Enum.Material.Limestone]
       56 GETIMPORT                        R5 K45 [Enum.Material.Marble]
       58 GETIMPORT                        R6 K47 [Enum.Material.Metal]
       60 GETIMPORT                        R7 K49 [Enum.Material.Mud]
       62 GETIMPORT                        R8 K51 [Enum.Material.Pavement]
       64 GETIMPORT                        R9 K53 [Enum.Material.Pebble]
       66 GETIMPORT                        R10 K55 [Enum.Material.Plastic]
       68 GETIMPORT                        R11 K57 [Enum.Material.Rock]
       70 GETIMPORT                        R12 K59 [Enum.Material.Salt]
       72 GETIMPORT                        R13 K61 [Enum.Material.Sand]
       74 GETIMPORT                        R14 K63 [Enum.Material.Sandstone]
       76 GETIMPORT                        R15 K65 [Enum.Material.Slate]
       78 GETIMPORT                        R16 K67 [Enum.Material.SmoothPlastic]
       80 GETIMPORT                        R17 K69 [Enum.Material.Snow]
       82 GETIMPORT                        R18 K71 [Enum.Material.Wood]
       84 GETIMPORT                        R19 K73 [Enum.Material.WoodPlanks]
       86 SETLIST                          R3 R4 16 [17]
       88 NEWTABLE                         R4 2 0
       90 DUPCLOSURE                       R5 K74 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R5 R4 K75 ["getIcons"]
       95 DUPCLOSURE                       R5 K76 [PROTO_3]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R5 R4 K77 ["getNames"]
      100 RETURN                           R4 1
