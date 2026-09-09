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
       70 SETTABLE                         R28 R19 R24
       71 LOADN                            R29 0
       72 JUMPIFNOTLT                      R29 R26 ; [+3]
       74 MOVE                             R28 R26
       75 JUMP                             ; [+1]
       76 MOVE                             R28 R27
       77 SETTABLE                         R28 R20 R24
       78 FORGLOOP                         R21 2 ; [-26]
       80 FORGLOOP                         R12 2 ; [-44]
       82 FORGLOOP                         R3 2 ; [-66]
       84 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R9 1
        7 GETTABLE                         R8 R9 R6
        8 GETUPVAL                         R10 2
        9 GETTABLE                         R9 R10 R6
       10 GETUPVAL                         R11 3
       11 GETTABLE                         R10 R11 R6
       12 MOVE                             R11 R7
       13 LOADNIL                          R12
       14 LOADNIL                          R13
       15 FORGPREP                         R11
       16 GETTABLE                         R16 R8 R14
       17 GETTABLE                         R17 R9 R14
       18 GETTABLE                         R18 R10 R14
       19 MOVE                             R19 R15
       20 LOADNIL                          R20
       21 LOADNIL                          R21
       22 FORGPREP                         R19
       23 GETTABLE                         R24 R18 R22
       24 GETTABLE                         R26 R16 R22
       25 JUMPIFNOTEQ                      R23 R26 ; [+2]
       27 LOADB                            R25 0 +1
       28 LOADB                            R25 1
       29 JUMPIF                           R25 ; [+3]
       30 GETTABLE                         R26 R17 R22
       31 JUMPIFEQ                         R24 R26 ; [+22]
       33 GETUPVAL                         R26 4
       34 GETTABLEKS                       R26 R26 K0 ["transitionAtWithWaterMerge"]
       36 GETUPVAL                         R27 5
       37 MOVE                             R28 R6
       38 MOVE                             R29 R14
       39 MOVE                             R30 R22
       40 MOVE                             R31 R23
       41 MOVE                             R32 R24
       42 CALL                             R26 6 0
       43 JUMPIFNOT                        R25 ; [+10]
       44 LOADN                            R26 0
       45 JUMPIFNOTLT                      R26 R24 ; [+8]
       47 GETUPVAL                         R26 4
       48 GETTABLEKS                       R26 R26 K1 ["WATER_SLOT_INDEX"]
       50 JUMPIFNOTLT                      R26 R23 ; [+3]
       52 LOADB                            R26 1
       53 SETTABLE                         R26 R2 R23
       54 FORGLOOP                         R19 2 ; [-32]
       56 FORGLOOP                         R11 2 ; [-41]
       58 FORGLOOP                         R3 2 ; [-53]
       60 GETUPVAL                         R3 4
       61 GETTABLEKS                       R3 R3 K2 ["assertSlotsValid"]
       63 GETUPVAL                         R4 6
       64 MOVE                             R5 R2
       65 CALL                             R3 2 0
       66 GETUPVAL                         R3 4
       67 GETTABLEKS                       R3 R3 K3 ["write"]
       69 GETUPVAL                         R4 6
       70 MOVE                             R5 R1
       71 GETUPVAL                         R6 5
       72 CALL                             R3 3 0
       73 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["read"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R3
        8 CALL                             R4 1 2
        9 GETUPVAL                         R6 1
       10 MOVE                             R8 R1
       11 GETUPVAL                         R9 3
       12 GETTABLEKS                       R9 R9 K1 ["VoxelResolution"]
       14 MOVE                             R10 R2
       15 NAMECALL                         R6 R6 K2 ["SmoothRegionMaterialSlots"]
       17 CALL                             R6 4 2
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R6 K3 ["Size"]
       21 LOADNIL                          R8
       22 SETTABLEKS                       R8 R7 K3 ["Size"]
       24 DUPTABLE                         R8 K8 [{"materials", "occupancies", "writeMaterials", "writeOccupancies"}]
       25 SETTABLEKS                       R4 R8 K4 ["materials"]
       27 SETTABLEKS                       R5 R8 K5 ["occupancies"]
       29 SETTABLEKS                       R6 R8 K6 ["writeMaterials"]
       31 SETTABLEKS                       R7 R8 K7 ["writeOccupancies"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R9 R8 K9 ["write"]
       43 RETURN                           R8 1

PROTO_3:
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
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R2 R1 K5 ["smoothRegion"]
       18 RETURN                           R1 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["TerrainVoxelChannels"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R4 K12 [PROTO_3]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 DUPTABLE                         R5 K14 [{"new"}]
       32 SETTABLEKS                       R4 R5 K13 ["new"]
       34 RETURN                           R5 1
