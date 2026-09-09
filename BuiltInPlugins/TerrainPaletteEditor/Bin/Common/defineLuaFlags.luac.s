PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["Terrain"]
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K4 [game]
       10 LOADK                            R3 K5 ["EnableTerrainPalette"]
       11 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 GETTABLEKS                       R1 R0 K7 ["ExpandedTerrainResolved"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableTerrainPalette"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K5 [{"getFFlagEnableTerrainPalette"}]
        9 DUPCLOSURE                       R1 K6 [PROTO_0]
       10 SETTABLEKS                       R1 R0 K4 ["getFFlagEnableTerrainPalette"]
       12 RETURN                           R0 1
