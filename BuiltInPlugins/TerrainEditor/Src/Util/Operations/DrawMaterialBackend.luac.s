PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["isSlotValid"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R1
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isSlotValid"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["assertSlotValid"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R3
        5 CALL                             R4 2 0
        6 GETUPVAL                         R4 1
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 NAMECALL                         R4 R4 K1 ["FillBallSlot"]
       12 CALL                             R4 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["assertSlotValid"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R3
        5 CALL                             R4 2 0
        6 GETUPVAL                         R4 1
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 NAMECALL                         R4 R4 K1 ["FillBlockSlot"]
       12 CALL                             R4 4 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["assertSlotValid"]
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R4
        5 CALL                             R5 2 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R7 R1
        8 MOVE                             R8 R2
        9 MOVE                             R9 R3
       10 MOVE                             R10 R4
       11 NAMECALL                         R5 R5 K1 ["FillCylinderSlot"]
       13 CALL                             R5 5 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R1
        2 GETTABLE                         R5 R6 R2
        3 GETTABLE                         R4 R5 R3
        4 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getOccupancy"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 -1
        8 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["transitionAtWithWaterMerge"]
        3 GETUPVAL                         R7 1
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 MOVE                             R12 R5
        9 CALL                             R6 6 0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["WATER_SLOT_INDEX"]
       13 JUMPIFNOTLT                      R6 R4 ; [+4]
       15 GETUPVAL                         R6 2
       16 LOADB                            R7 1
       17 SETTABLE                         R7 R6 R4
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["SolidMaterialIndex"]
        3 GETTABLE                         R7 R8 R1
        4 GETTABLE                         R6 R7 R2
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K1 ["AIR_SLOT_INDEX"]
        8 SETTABLE                         R7 R6 R3
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K2 ["SolidOccupancy"]
       12 GETTABLE                         R7 R8 R1
       13 GETTABLE                         R6 R7 R2
       14 LOADN                            R7 0
       15 SETTABLE                         R7 R6 R3
       16 JUMPIF                           R5 ; [+7]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K3 ["LiquidOccupancy"]
       20 GETTABLE                         R7 R8 R1
       21 GETTABLE                         R6 R7 R2
       22 LOADN                            R7 0
       23 SETTABLE                         R7 R6 R3
       24 JUMPIFNOT                        R4 ; [+24]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K0 ["SolidMaterialIndex"]
       28 GETTABLE                         R7 R8 R1
       29 GETTABLE                         R6 R7 R2
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K1 ["AIR_SLOT_INDEX"]
       33 SETTABLE                         R7 R6 R3
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K2 ["SolidOccupancy"]
       37 GETTABLE                         R7 R8 R1
       38 GETTABLE                         R6 R7 R2
       39 LOADN                            R7 0
       40 SETTABLE                         R7 R6 R3
       41 JUMPIF                           R5 ; [+7]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K3 ["LiquidOccupancy"]
       45 GETTABLE                         R7 R8 R1
       46 GETTABLE                         R6 R7 R2
       47 LOADN                            R7 0
       48 SETTABLE                         R7 R6 R3
       49 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["assertSlotsValid"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 CALL                             R3 2 0
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["write"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R1
       12 GETUPVAL                         R6 3
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["write"]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R1
       19 GETUPVAL                         R6 4
       20 CALL                             R3 3 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["read"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["getMaterialIdentities"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["clone"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 NEWTABLE                         R5 0 0
       18 DUPTABLE                         R6 K7 [{"materials", "sizeX", "sizeY", "sizeZ"}]
       19 SETTABLEKS                       R3 R6 K3 ["materials"]
       21 GETTABLEKS                       R8 R2 K8 ["SolidMaterialIndex"]
       23 LENGTH                           R7 R8
       24 SETTABLEKS                       R7 R6 K4 ["sizeX"]
       26 GETTABLEKS                       R9 R2 K8 ["SolidMaterialIndex"]
       28 GETTABLEN                        R8 R9 1
       29 LENGTH                           R7 R8
       30 SETTABLEKS                       R7 R6 K5 ["sizeY"]
       32 GETTABLEKS                       R10 R2 K8 ["SolidMaterialIndex"]
       34 GETTABLEN                        R9 R10 1
       35 GETTABLEN                        R8 R9 1
       36 LENGTH                           R7 R8
       37 SETTABLEKS                       R7 R6 K6 ["sizeZ"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R7 R6 K9 ["getMaterial"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R7 R6 K10 ["getOccupancy"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R7 R6 K11 ["setAdded"]
       54 NEWCLOSURE                       R7 P3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R7 R6 K12 ["setSubtracted"]
       60 NEWCLOSURE                       R7 P4
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R7 R6 K13 ["write"]
       68 RETURN                           R6 1

PROTO_11:
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
       14 SETTABLEKS                       R2 R1 K5 ["isMaterialValid"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R1 K6 ["canUseGeometricFill"]
       21 NEWCLOSURE                       R2 P2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K7 ["fillBall"]
       26 NEWCLOSURE                       R2 P3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R1 K8 ["fillBlock"]
       31 NEWCLOSURE                       R2 P4
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R1 K9 ["fillCylinder"]
       36 NEWCLOSURE                       R2 P5
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R1 K10 ["readRegion"]
       41 RETURN                           R1 1

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
       16 DUPCLOSURE                       R2 K9 [PROTO_11]
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K11 [{"new"}]
       19 SETTABLEKS                       R2 R3 K10 ["new"]
       21 RETURN                           R3 1
