PROTO_0:
        0 LOADB                            R1 0
        1 MODK                             R2 R0 K0 [1]
        2 JUMPIFNOTEQKN                    R2 K1 [0] ; [+10]
        4 LOADB                            R1 0
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R2 R0 ; [+6]
        8 LOADN                            R2 63
        9 JUMPIFLE                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K2 [table.create]
       10 LENGTH                           R8 R6
       11 CALL                             R7 1 1
       12 SETTABLE                         R7 R1 R5
       13 MOVE                             R8 R6
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETIMPORT                        R13 K4 [table.clone]
       19 MOVE                             R14 R12
       20 CALL                             R13 1 1
       21 SETTABLE                         R13 R7 R11
       22 FORGLOOP                         R8 2 ; [-6]
       24 FORGLOOP                         R2 2 ; [-17]
       26 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"SolidMaterialIndex", "SolidOccupancy", "LiquidOccupancy"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["cloneArray"]
        4 GETTABLEKS                       R3 R0 K0 ["SolidMaterialIndex"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["SolidMaterialIndex"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["cloneArray"]
       12 GETTABLEKS                       R3 R0 K1 ["SolidOccupancy"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K1 ["SolidOccupancy"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["cloneArray"]
       20 GETTABLEKS                       R3 R0 K2 ["LiquidOccupancy"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K2 ["LiquidOccupancy"]
       25 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R7 R0 K0 ["SolidOccupancy"]
        2 GETTABLE                         R6 R7 R1
        3 GETTABLE                         R5 R6 R2
        4 GETTABLE                         R4 R5 R3
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R4 ; [+7]
        8 GETTABLEKS                       R7 R0 K1 ["SolidMaterialIndex"]
       10 GETTABLE                         R6 R7 R1
       11 GETTABLE                         R5 R6 R2
       12 GETTABLE                         R4 R5 R3
       13 RETURN                           R4 1
       14 GETTABLEKS                       R7 R0 K2 ["LiquidOccupancy"]
       16 GETTABLE                         R6 R7 R1
       17 GETTABLE                         R5 R6 R2
       18 GETTABLE                         R4 R5 R3
       19 LOADN                            R5 0
       20 JUMPIFNOTLT                      R5 R4 ; [+3]
       22 LOADN                            R4 1
       23 RETURN                           R4 1
       24 LOADN                            R4 0
       25 RETURN                           R4 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["SolidMaterialIndex"]
        4 LENGTH                           R2 R3
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K3 ["SolidMaterialIndex"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETIMPORT                        R7 K2 [table.create]
       13 LENGTH                           R8 R6
       14 CALL                             R7 1 1
       15 SETTABLE                         R7 R1 R5
       16 MOVE                             R8 R6
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 GETIMPORT                        R13 K2 [table.create]
       22 LENGTH                           R14 R12
       23 CALL                             R13 1 1
       24 SETTABLE                         R13 R7 R11
       25 MOVE                             R14 R12
       26 LOADNIL                          R15
       27 LOADNIL                          R16
       28 FORGPREP                         R14
       29 GETUPVAL                         R19 0
       30 GETTABLEKS                       R19 R19 K4 ["getMaterialIdentity"]
       32 MOVE                             R20 R0
       33 MOVE                             R21 R5
       34 MOVE                             R22 R11
       35 MOVE                             R23 R17
       36 CALL                             R19 4 1
       37 SETTABLE                         R19 R13 R17
       38 FORGLOOP                         R14 1 ; [-10]
       40 FORGLOOP                         R8 2 ; [-21]
       42 FORGLOOP                         R2 2 ; [-32]
       44 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R7 R0 K0 ["SolidOccupancy"]
        2 GETTABLE                         R6 R7 R1
        3 GETTABLE                         R5 R6 R2
        4 GETTABLE                         R4 R5 R3
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R4 ; [+2]
        8 RETURN                           R4 1
        9 GETTABLEKS                       R8 R0 K1 ["LiquidOccupancy"]
       11 GETTABLE                         R7 R8 R1
       12 GETTABLE                         R6 R7 R2
       13 GETTABLE                         R5 R6 R3
       14 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R4 K3 [{"materialIndex", "occupancy", "liquidOccupancy"}]
        1 GETTABLEKS                       R8 R0 K4 ["SolidMaterialIndex"]
        3 GETTABLE                         R7 R8 R1
        4 GETTABLE                         R6 R7 R2
        5 GETTABLE                         R5 R6 R3
        6 SETTABLEKS                       R5 R4 K0 ["materialIndex"]
        8 GETTABLEKS                       R8 R0 K5 ["SolidOccupancy"]
       10 GETTABLE                         R7 R8 R1
       11 GETTABLE                         R6 R7 R2
       12 GETTABLE                         R5 R6 R3
       13 SETTABLEKS                       R5 R4 K1 ["occupancy"]
       15 GETTABLEKS                       R8 R0 K6 ["LiquidOccupancy"]
       17 GETTABLE                         R7 R8 R1
       18 GETTABLE                         R6 R7 R2
       19 GETTABLE                         R5 R6 R3
       20 SETTABLEKS                       R5 R4 K2 ["liquidOccupancy"]
       22 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R7 R0 K0 ["SolidMaterialIndex"]
        2 GETTABLE                         R6 R7 R1
        3 GETTABLE                         R5 R6 R2
        4 GETTABLEKS                       R6 R4 K1 ["materialIndex"]
        6 SETTABLE                         R6 R5 R3
        7 GETTABLEKS                       R7 R0 K2 ["SolidOccupancy"]
        9 GETTABLE                         R6 R7 R1
       10 GETTABLE                         R5 R6 R2
       11 GETTABLEKS                       R6 R4 K3 ["occupancy"]
       13 SETTABLE                         R6 R5 R3
       14 GETTABLEKS                       R7 R0 K4 ["LiquidOccupancy"]
       16 GETTABLE                         R6 R7 R1
       17 GETTABLE                         R5 R6 R2
       18 GETTABLEKS                       R6 R4 K5 ["liquidOccupancy"]
       20 SETTABLE                         R6 R5 R3
       21 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R2 0
        1 MODK                             R3 R1 K0 [1]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+10]
        4 LOADB                            R2 0
        5 LOADN                            R3 0
        6 JUMPIFNOTLE                      R3 R1 ; [+6]
        8 LOADN                            R3 63
        9 JUMPIFLE                         R1 R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 JUMPIFEQKN                       R1 K1 [0] ; [+3]
       18 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
       20 LOADB                            R2 1
       21 RETURN                           R2 1
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K2 ["GetMaterialSlot"]
       25 CALL                             R3 2 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isSlotValid"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 LOADK                            R4 K1 ["Invalid terrain material slot index: %*"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 2 1
       11 FASTCALL2                        ASSERT R3 R4 ; [+3]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["assertSlotValid"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R5
        9 CALL                             R7 2 0
       10 FORGLOOP                         R2 1 ; [-7]
       12 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R4 R1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["VoxelResolution"]
        4 GETUPVAL                         R6 1
        5 NAMECALL                         R2 R0 K1 ["ReadVoxelChannels"]
        7 CALL                             R2 4 1
        8 DUPTABLE                         R3 K5 [{"SolidMaterialIndex", "SolidOccupancy", "LiquidOccupancy"}]
        9 GETTABLEKS                       R4 R2 K2 ["SolidMaterialIndex"]
       11 SETTABLEKS                       R4 R3 K2 ["SolidMaterialIndex"]
       13 GETTABLEKS                       R4 R2 K3 ["SolidOccupancy"]
       15 SETTABLEKS                       R4 R3 K3 ["SolidOccupancy"]
       17 GETTABLEKS                       R4 R2 K4 ["LiquidOccupancy"]
       19 SETTABLEKS                       R4 R3 K4 ["LiquidOccupancy"]
       21 RETURN                           R3 1

PROTO_12:
        0 MOVE                             R5 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["VoxelResolution"]
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R0 K1 ["WriteVoxelChannels"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_13:
        0 MOVE                             R4 R2
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R9 R9 K0 ["assertSlotValid"]
        7 MOVE                             R10 R0
        8 MOVE                             R11 R8
        9 CALL                             R9 2 0
       10 FORGLOOP                         R4 2 ; [-7]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["read"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 MOVE                             R5 R3
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K2 ["write"]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R4
       28 CALL                             R6 3 0
       29 RETURN                           R5 1

PROTO_14:
        0 LOADB                            R4 0
        1 MODK                             R5 R1 K0 [1]
        2 JUMPIFNOTEQKN                    R5 K1 [0] ; [+10]
        4 LOADB                            R4 0
        5 LOADN                            R5 0
        6 JUMPIFNOTLE                      R5 R1 ; [+6]
        8 LOADN                            R5 63
        9 JUMPIFLE                         R1 R5 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 LOADK                            R5 K2 ["Invalid terrain material slot index: %*"]
       14 MOVE                             R7 R1
       15 NAMECALL                         R5 R5 K3 ["format"]
       17 CALL                             R5 2 1
       18 FASTCALL2                        ASSERT R4 R5 ; [+3]
       20 GETIMPORT                        R3 K5 [assert]
       22 CALL                             R3 2 0
       23 MOVE                             R3 R2
       24 JUMPIF                           R3 ; [+9]
       25 GETTABLEKS                       R4 R0 K6 ["occupancy"]
       27 GETTABLEKS                       R5 R0 K7 ["liquidOccupancy"]
       29 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       31 GETIMPORT                        R3 K10 [math.max]
       33 CALL                             R3 2 1
       34 LOADB                            R5 0
       35 LOADN                            R6 0
       36 JUMPIFNOTLE                      R6 R3 ; [+6]
       38 LOADN                            R6 1
       39 JUMPIFLE                         R3 R6 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 LOADK                            R6 K11 ["Invalid terrain occupancy: %*"]
       44 MOVE                             R8 R3
       45 NAMECALL                         R6 R6 K3 ["format"]
       47 CALL                             R6 2 1
       48 FASTCALL2                        ASSERT R5 R6 ; [+3]
       50 GETIMPORT                        R4 K5 [assert]
       52 CALL                             R4 2 0
       53 LOADNIL                          R4
       54 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
       56 DUPTABLE                         R5 K13 [{["materialIndex"] = 0, ["occupancy"] = 0, ["liquidOccupancy"] = 0}]
       57 MOVE                             R4 R5
       58 JUMP                             ; [+13]
       59 JUMPIFNOTEQKN                    R1 K0 [1] ; [+6]
       61 DUPTABLE                         R5 K14 [{["materialIndex"] = 0, ["occupancy"] = 0, ["liquidOccupancy"]}]
       62 SETTABLEKS                       R3 R5 K7 ["liquidOccupancy"]
       64 MOVE                             R4 R5
       65 JUMP                             ; [+6]
       66 DUPTABLE                         R5 K15 [{["materialIndex"], ["occupancy"], ["liquidOccupancy"] = 0}]
       67 SETTABLEKS                       R1 R5 K12 ["materialIndex"]
       69 SETTABLEKS                       R3 R5 K6 ["occupancy"]
       71 MOVE                             R4 R5
       72 LOADB                            R5 1
       73 GETTABLEKS                       R6 R4 K12 ["materialIndex"]
       75 GETTABLEKS                       R7 R0 K12 ["materialIndex"]
       77 JUMPIFNOTEQ                      R6 R7 ; [+16]
       79 LOADB                            R5 1
       80 GETTABLEKS                       R6 R4 K6 ["occupancy"]
       82 GETTABLEKS                       R7 R0 K6 ["occupancy"]
       84 JUMPIFNOTEQ                      R6 R7 ; [+9]
       86 GETTABLEKS                       R6 R4 K7 ["liquidOccupancy"]
       88 GETTABLEKS                       R7 R0 K7 ["liquidOccupancy"]
       90 JUMPIFNOTEQ                      R6 R7 ; [+2]
       92 LOADB                            R5 0 +1
       93 LOADB                            R5 1
       94 JUMPIFNOT                        R5 ; [+2]
       95 MOVE                             R6 R4
       96 JUMP                             ; [+1]
       97 MOVE                             R6 R0
       98 MOVE                             R7 R5
       99 RETURN                           R6 2

PROTO_15:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["transition"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["getVoxel"]
        6 MOVE                             R8 R0
        7 MOVE                             R9 R1
        8 MOVE                             R10 R2
        9 MOVE                             R11 R3
       10 CALL                             R7 4 1
       11 MOVE                             R8 R4
       12 MOVE                             R9 R5
       13 CALL                             R6 3 2
       14 JUMPIFNOT                        R7 ; [+9]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K2 ["setVoxel"]
       18 MOVE                             R9 R0
       19 MOVE                             R10 R1
       20 MOVE                             R11 R2
       21 MOVE                             R12 R3
       22 MOVE                             R13 R6
       23 CALL                             R8 5 0
       24 RETURN                           R7 1

PROTO_16:
        0 LOADB                            R7 0
        1 MODK                             R8 R4 K0 [1]
        2 JUMPIFNOTEQKN                    R8 K1 [0] ; [+10]
        4 LOADB                            R7 0
        5 LOADN                            R8 0
        6 JUMPIFNOTLE                      R8 R4 ; [+6]
        8 LOADN                            R8 63
        9 JUMPIFLE                         R4 R8 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 LOADK                            R8 K2 ["Invalid terrain material slot index: %*"]
       14 MOVE                             R10 R4
       15 NAMECALL                         R8 R8 K3 ["format"]
       17 CALL                             R8 2 1
       18 FASTCALL2                        ASSERT R7 R8 ; [+3]
       20 GETIMPORT                        R6 K5 [assert]
       22 CALL                             R6 2 0
       23 LOADB                            R7 0
       24 LOADN                            R8 0
       25 JUMPIFNOTLE                      R8 R5 ; [+6]
       27 LOADN                            R8 1
       28 JUMPIFLE                         R5 R8 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 LOADK                            R8 K6 ["Invalid terrain occupancy: %*"]
       33 MOVE                             R10 R5
       34 NAMECALL                         R8 R8 K3 ["format"]
       36 CALL                             R8 2 1
       37 FASTCALL2                        ASSERT R7 R8 ; [+3]
       39 GETIMPORT                        R6 K5 [assert]
       41 CALL                             R6 2 0
       42 GETTABLEKS                       R8 R0 K7 ["SolidMaterialIndex"]
       44 GETTABLE                         R7 R8 R1
       45 GETTABLE                         R6 R7 R2
       46 GETTABLEKS                       R9 R0 K8 ["SolidOccupancy"]
       48 GETTABLE                         R8 R9 R1
       49 GETTABLE                         R7 R8 R2
       50 GETTABLEKS                       R10 R0 K9 ["LiquidOccupancy"]
       52 GETTABLE                         R9 R10 R1
       53 GETTABLE                         R8 R9 R2
       54 GETTABLE                         R9 R6 R3
       55 GETTABLE                         R10 R7 R3
       56 GETTABLE                         R11 R8 R3
       57 LOADNIL                          R12
       58 LOADNIL                          R13
       59 LOADNIL                          R14
       60 JUMPIFEQKN                       R4 K1 [0] ; [+4]
       62 LOADN                            R15 0
       63 JUMPIFNOTLE                      R5 R15 ; [+5]
       65 LOADN                            R12 0
       66 LOADN                            R13 0
       67 LOADN                            R14 0
       68 JUMP                             ; [+39]
       69 JUMPIFNOTEQKN                    R4 K0 [1] ; [+14]
       71 LOADN                            R15 0
       72 JUMPIFNOTLT                      R15 R10 ; [+11]
       74 LOADN                            R15 1
       75 JUMPIFNOTLT                      R10 R15 ; [+8]
       77 LOADN                            R15 1
       78 JUMPIFNOTLT                      R15 R9 ; [+5]
       80 MOVE                             R12 R9
       81 MOVE                             R13 R10
       82 MOVE                             R14 R5
       83 JUMP                             ; [+24]
       84 LOADN                            R15 1
       85 JUMPIFNOTLT                      R15 R4 ; [+13]
       87 JUMPIFNOTEQKN                    R10 K1 [0] ; [+11]
       89 LOADN                            R15 0
       90 JUMPIFNOTLT                      R15 R11 ; [+8]
       92 LOADN                            R15 1
       93 JUMPIFNOTLT                      R5 R15 ; [+5]
       95 MOVE                             R12 R4
       96 MOVE                             R13 R5
       97 MOVE                             R14 R11
       98 JUMP                             ; [+9]
       99 JUMPIFNOTEQKN                    R4 K0 [1] ; [+5]
      101 LOADN                            R12 0
      102 LOADN                            R13 0
      103 MOVE                             R14 R5
      104 JUMP                             ; [+3]
      105 MOVE                             R12 R4
      106 MOVE                             R13 R5
      107 LOADN                            R14 0
      108 LOADB                            R15 1
      109 JUMPIFNOTEQ                      R12 R9 ; [+8]
      111 LOADB                            R15 1
      112 JUMPIFNOTEQ                      R13 R10 ; [+5]
      114 JUMPIFNOTEQ                      R14 R11 ; [+2]
      116 LOADB                            R15 0 +1
      117 LOADB                            R15 1
      118 JUMPIFNOT                        R15 ; [+3]
      119 SETTABLE                         R12 R6 R3
      120 SETTABLE                         R13 R7 R3
      121 SETTABLE                         R14 R8 R3
      122 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 3
       18 LOADK                            R3 K9 ["SolidMaterialIndex"]
       19 LOADK                            R4 K10 ["SolidOccupancy"]
       20 LOADK                            R5 K11 ["LiquidOccupancy"]
       21 SETLIST                          R2 R3 3 [1]
       23 DUPTABLE                         R3 K16 [{["AIR_SLOT_INDEX"] = 0, ["WATER_SLOT_INDEX"] = 1}]
       24 DUPCLOSURE                       R4 K17 [PROTO_0]
       25 DUPCLOSURE                       R5 K18 [PROTO_1]
       26 SETTABLEKS                       R5 R3 K19 ["cloneArray"]
       28 DUPCLOSURE                       R5 K20 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R3 K21 ["clone"]
       32 DUPCLOSURE                       R5 K22 [PROTO_3]
       33 SETTABLEKS                       R5 R3 K23 ["getMaterialIdentity"]
       35 DUPCLOSURE                       R5 K24 [PROTO_4]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R3 K25 ["getMaterialIdentities"]
       39 DUPCLOSURE                       R5 K26 [PROTO_5]
       40 SETTABLEKS                       R5 R3 K27 ["getOccupancy"]
       42 DUPCLOSURE                       R5 K28 [PROTO_6]
       43 SETTABLEKS                       R5 R3 K29 ["getVoxel"]
       45 DUPCLOSURE                       R5 K30 [PROTO_7]
       46 SETTABLEKS                       R5 R3 K31 ["setVoxel"]
       48 DUPCLOSURE                       R5 K32 [PROTO_8]
       49 SETTABLEKS                       R5 R3 K33 ["isSlotValid"]
       51 DUPCLOSURE                       R5 K34 [PROTO_9]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R5 R3 K35 ["assertSlotValid"]
       55 DUPCLOSURE                       R5 K36 [PROTO_10]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R5 R3 K37 ["assertSlotsValid"]
       59 DUPCLOSURE                       R5 K38 [PROTO_11]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R5 R3 K39 ["read"]
       64 DUPCLOSURE                       R5 K40 [PROTO_12]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R5 R3 K41 ["write"]
       68 DUPCLOSURE                       R5 K42 [PROTO_13]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R5 R3 K43 ["edit"]
       72 DUPCLOSURE                       R5 K44 [PROTO_14]
       73 SETTABLEKS                       R5 R3 K45 ["transition"]
       75 DUPCLOSURE                       R5 K46 [PROTO_15]
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R5 R3 K47 ["transitionAt"]
       79 DUPCLOSURE                       R5 K48 [PROTO_16]
       80 SETTABLEKS                       R5 R3 K49 ["transitionAtWithWaterMerge"]
       82 RETURN                           R3 1
