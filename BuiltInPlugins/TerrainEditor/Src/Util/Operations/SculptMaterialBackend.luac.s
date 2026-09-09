PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["SolidMaterialIndex"]
        4 LENGTH                           R2 R3
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K2 [table.create]
        8 GETTABLEKS                       R4 R0 K3 ["SolidMaterialIndex"]
       10 LENGTH                           R3 R4
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K2 [table.create]
       14 GETTABLEKS                       R5 R0 K3 ["SolidMaterialIndex"]
       16 LENGTH                           R4 R5
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K2 [table.create]
       20 GETTABLEKS                       R6 R0 K3 ["SolidMaterialIndex"]
       22 LENGTH                           R5 R6
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K3 ["SolidMaterialIndex"]
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 GETTABLEKS                       R11 R0 K4 ["SolidOccupancy"]
       31 GETTABLE                         R10 R11 R8
       32 GETTABLEKS                       R12 R0 K5 ["LiquidOccupancy"]
       34 GETTABLE                         R11 R12 R8
       35 GETIMPORT                        R12 K2 [table.create]
       37 LENGTH                           R13 R9
       38 CALL                             R12 1 1
       39 GETIMPORT                        R13 K2 [table.create]
       41 LENGTH                           R14 R9
       42 CALL                             R13 1 1
       43 GETIMPORT                        R14 K2 [table.create]
       45 LENGTH                           R15 R9
       46 CALL                             R14 1 1
       47 GETIMPORT                        R15 K2 [table.create]
       49 LENGTH                           R16 R9
       50 CALL                             R15 1 1
       51 SETTABLE                         R12 R1 R8
       52 SETTABLE                         R13 R2 R8
       53 SETTABLE                         R14 R3 R8
       54 SETTABLE                         R15 R4 R8
       55 MOVE                             R16 R9
       56 LOADNIL                          R17
       57 LOADNIL                          R18
       58 FORGPREP                         R16
       59 GETTABLE                         R21 R10 R19
       60 GETTABLE                         R22 R11 R19
       61 GETIMPORT                        R23 K2 [table.create]
       63 LENGTH                           R24 R20
       64 CALL                             R23 1 1
       65 GETIMPORT                        R24 K2 [table.create]
       67 LENGTH                           R25 R20
       68 CALL                             R24 1 1
       69 GETIMPORT                        R25 K2 [table.create]
       71 LENGTH                           R26 R20
       72 CALL                             R25 1 1
       73 GETIMPORT                        R26 K2 [table.create]
       75 LENGTH                           R27 R20
       76 CALL                             R26 1 1
       77 SETTABLE                         R23 R12 R19
       78 SETTABLE                         R24 R13 R19
       79 SETTABLE                         R25 R14 R19
       80 SETTABLE                         R26 R15 R19
       81 MOVE                             R27 R20
       82 LOADNIL                          R28
       83 LOADNIL                          R29
       84 FORGPREP                         R27
       85 GETTABLE                         R32 R21 R30
       86 GETTABLE                         R33 R22 R30
       87 LOADN                            R35 0
       88 JUMPIFNOTLT                      R35 R32 ; [+3]
       90 MOVE                             R34 R31
       91 JUMP                             ; [+10]
       92 LOADN                            R35 0
       93 JUMPIFNOTLT                      R35 R33 ; [+5]
       95 GETUPVAL                         R34 0
       96 GETTABLEKS                       R34 R34 K6 ["WATER_SLOT_INDEX"]
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R34 0
      100 GETTABLEKS                       R34 R34 K7 ["AIR_SLOT_INDEX"]
      102 LOADN                            R36 0
      103 JUMPIFNOTLT                      R36 R32 ; [+3]
      105 MOVE                             R35 R32
      106 JUMP                             ; [+1]
      107 MOVE                             R35 R33
      108 SETTABLE                         R34 R23 R30
      109 SETTABLE                         R35 R24 R30
      110 SETTABLE                         R34 R25 R30
      111 SETTABLE                         R35 R26 R30
      112 FORGLOOP                         R27 2 ; [-28]
      114 FORGLOOP                         R16 2 ; [-56]
      116 FORGLOOP                         R5 2 ; [-88]
      118 RETURN                           R1 4

PROTO_1:
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

PROTO_2:
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
       31 JUMPIFEQ                         R24 R26 ; [+19]
       33 GETUPVAL                         R26 4
       34 GETTABLEKS                       R26 R26 K0 ["transitionAtWithWaterMerge"]
       36 GETUPVAL                         R27 5
       37 MOVE                             R28 R6
       38 MOVE                             R29 R14
       39 MOVE                             R30 R22
       40 MOVE                             R31 R23
       41 MOVE                             R32 R24
       42 CALL                             R26 6 0
       43 JUMPIFNOT                        R25 ; [+7]
       44 GETUPVAL                         R26 4
       45 GETTABLEKS                       R26 R26 K1 ["WATER_SLOT_INDEX"]
       47 JUMPIFNOTLT                      R26 R23 ; [+3]
       49 LOADB                            R26 1
       50 SETTABLE                         R26 R2 R23
       51 FORGLOOP                         R19 2 ; [-29]
       53 FORGLOOP                         R11 2 ; [-38]
       55 FORGLOOP                         R3 2 ; [-50]
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K2 ["assertSlotsValid"]
       60 GETUPVAL                         R4 6
       61 MOVE                             R5 R2
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R3 R3 K3 ["write"]
       66 GETUPVAL                         R4 6
       67 MOVE                             R5 R1
       68 GETUPVAL                         R6 5
       69 CALL                             R3 3 0
       70 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["read"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 CALL                             R3 1 4
        9 DUPTABLE                         R7 K5 [{"materials", "occupancies", "writeMaterials", "writeOccupancies"}]
       10 SETTABLEKS                       R3 R7 K1 ["materials"]
       12 SETTABLEKS                       R4 R7 K2 ["occupancies"]
       14 SETTABLEKS                       R5 R7 K3 ["writeMaterials"]
       16 SETTABLEKS                       R6 R7 K4 ["writeOccupancies"]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R6
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 SETTABLEKS                       R8 R7 K6 ["write"]
       28 RETURN                           R7 1

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
       14 SETTABLEKS                       R2 R1 K5 ["isMaterialValid"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R2 R1 K6 ["readRegion"]
       22 RETURN                           R1 1

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
