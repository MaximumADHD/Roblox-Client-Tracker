PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["SolidMaterialIndex"]
        4 LENGTH                           R2 R3
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K2 [table.create]
        8 GETTABLEKS                       R4 R0 K3 ["SolidMaterialIndex"]
       10 LENGTH                           R3 R4
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K3 ["SolidMaterialIndex"]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETTABLEKS                       R9 R0 K4 ["SolidOccupancy"]
       19 GETTABLE                         R8 R9 R6
       20 GETTABLEKS                       R10 R0 K5 ["LiquidOccupancy"]
       22 GETTABLE                         R9 R10 R6
       23 GETIMPORT                        R10 K2 [table.create]
       25 LENGTH                           R11 R7
       26 CALL                             R10 1 1
       27 GETIMPORT                        R11 K2 [table.create]
       29 LENGTH                           R12 R7
       30 CALL                             R11 1 1
       31 SETTABLE                         R10 R1 R6
       32 SETTABLE                         R11 R2 R6
       33 MOVE                             R12 R7
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 FORGPREP                         R12
       37 GETTABLE                         R17 R8 R15
       38 GETTABLE                         R18 R9 R15
       39 GETIMPORT                        R19 K2 [table.create]
       41 LENGTH                           R20 R16
       42 CALL                             R19 1 1
       43 GETIMPORT                        R20 K2 [table.create]
       45 LENGTH                           R21 R16
       46 CALL                             R20 1 1
       47 SETTABLE                         R19 R10 R15
       48 SETTABLE                         R20 R11 R15
       49 MOVE                             R21 R16
       50 LOADNIL                          R22
       51 LOADNIL                          R23
       52 FORGPREP                         R21
       53 GETTABLE                         R26 R17 R24
       54 GETTABLE                         R27 R18 R24
       55 LOADN                            R29 0
       56 JUMPIFNOTLT                      R29 R26 ; [+3]
       58 MOVE                             R28 R25
       59 JUMP                             ; [+10]
       60 LOADN                            R29 0
       61 JUMPIFNOTLT                      R29 R27 ; [+5]
       63 GETUPVAL                         R28 0
       64 GETTABLEKS                       R28 R28 K6 ["WATER_SLOT_INDEX"]
       66 JUMP                             ; [+3]
       67 GETUPVAL                         R28 0
       68 GETTABLEKS                       R28 R28 K7 ["AIR_SLOT_INDEX"]
       70 LOADN                            R30 0
       71 JUMPIFNOTLT                      R30 R26 ; [+3]
       73 MOVE                             R29 R26
       74 JUMP                             ; [+1]
       75 MOVE                             R29 R27
       76 SETTABLE                         R28 R19 R24
       77 SETTABLE                         R29 R20 R24
       78 FORGLOOP                         R21 2 ; [-26]
       80 FORGLOOP                         R12 2 ; [-44]
       82 FORGLOOP                         R3 2 ; [-66]
       84 RETURN                           R1 2

PROTO_1:
        0 SUBK                             R11 R1 K0 [1]
        1 GETUPVAL                         R12 0
        2 MUL                              R10 R11 R12
        3 ADD                              R9 R10 R2
        4 SUBK                             R8 R9 K0 [1]
        5 GETUPVAL                         R9 1
        6 MUL                              R7 R8 R9
        7 ADD                              R6 R7 R3
        8 GETUPVAL                         R8 2
        9 GETTABLE                         R7 R8 R6
       10 JUMPIFNOT                        R7 ; [+5]
       11 SETTABLEKS                       R4 R7 K1 ["material"]
       13 SETTABLEKS                       R5 R7 K2 ["occupancy"]
       15 RETURN                           R0 0
       16 DUPTABLE                         R8 K6 [{"material", "occupancy", "voxelX", "voxelY", "voxelZ"}]
       17 SETTABLEKS                       R4 R8 K1 ["material"]
       19 SETTABLEKS                       R5 R8 K2 ["occupancy"]
       21 SETTABLEKS                       R1 R8 K3 ["voxelX"]
       23 SETTABLEKS                       R2 R8 K4 ["voxelY"]
       25 SETTABLEKS                       R3 R8 K5 ["voxelZ"]
       27 GETUPVAL                         R9 2
       28 SETTABLE                         R8 R9 R6
       29 GETUPVAL                         R10 3
       30 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       32 MOVE                             R11 R8
       33 GETIMPORT                        R9 K9 [table.insert]
       35 CALL                             R9 2 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R9 R7 K1 ["occupancy"]
       13 LOADN                            R10 0
       14 LOADN                            R11 1
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R8 K4 [math.clamp]
       18 CALL                             R8 3 1
       19 GETTABLEKS                       R10 R7 K5 ["material"]
       21 GETUPVAL                         R14 1
       22 GETTABLEKS                       R15 R7 K6 ["voxelX"]
       24 GETTABLE                         R13 R14 R15
       25 GETTABLEKS                       R14 R7 K7 ["voxelY"]
       27 GETTABLE                         R12 R13 R14
       28 GETTABLEKS                       R13 R7 K8 ["voxelZ"]
       30 GETTABLE                         R11 R12 R13
       31 JUMPIFNOTEQ                      R10 R11 ; [+2]
       33 LOADB                            R9 0 +1
       34 LOADB                            R9 1
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K9 ["transitionAtWithWaterMerge"]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R12 R7 K6 ["voxelX"]
       41 GETTABLEKS                       R13 R7 K7 ["voxelY"]
       43 GETTABLEKS                       R14 R7 K8 ["voxelZ"]
       45 GETTABLEKS                       R15 R7 K5 ["material"]
       47 MOVE                             R16 R8
       48 CALL                             R10 6 0
       49 JUMPIFNOT                        R9 ; [+14]
       50 LOADN                            R10 0
       51 JUMPIFNOTLT                      R10 R8 ; [+12]
       53 GETTABLEKS                       R10 R7 K5 ["material"]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R11 R11 K10 ["WATER_SLOT_INDEX"]
       58 JUMPIFNOTLT                      R11 R10 ; [+5]
       60 GETTABLEKS                       R10 R7 K5 ["material"]
       62 LOADB                            R11 1
       63 SETTABLE                         R11 R2 R10
       64 FORGLOOP                         R3 2 ; [-54]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K11 ["assertSlotsValid"]
       69 GETUPVAL                         R4 4
       70 MOVE                             R5 R2
       71 CALL                             R3 2 0
       72 GETUPVAL                         R3 2
       73 GETTABLEKS                       R3 R3 K12 ["write"]
       75 GETUPVAL                         R4 4
       76 MOVE                             R5 R1
       77 GETUPVAL                         R6 3
       78 CALL                             R3 3 0
       79 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["read"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 CALL                             R3 1 2
        9 NEWTABLE                         R5 0 0
       11 NEWTABLE                         R6 0 0
       13 GETTABLEN                        R8 R3 1
       14 LENGTH                           R7 R8
       15 GETTABLEN                        R10 R3 1
       16 GETTABLEN                        R9 R10 1
       17 LENGTH                           R8 R9
       18 DUPTABLE                         R9 K3 [{"materials", "occupancies"}]
       19 SETTABLEKS                       R3 R9 K1 ["materials"]
       21 SETTABLEKS                       R4 R9 K2 ["occupancies"]
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R5
       28 SETTABLEKS                       R10 R9 K4 ["setVoxel"]
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R10 R9 K5 ["write"]
       38 RETURN                           R9 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"air", "water"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AIR_SLOT_INDEX"]
        4 SETTABLEKS                       R2 R1 K0 ["air"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["WATER_SLOT_INDEX"]
        9 SETTABLEKS                       R2 R1 K1 ["water"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R2 R1 K5 ["readRegion"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["TerrainVoxelChannels"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R3 K10 [PROTO_4]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 DUPTABLE                         R4 K12 [{"new"}]
       22 SETTABLEKS                       R3 R4 K11 ["new"]
       24 RETURN                           R4 1
