PROTO_0:
        0 GETTABLEKS                       R9 R0 K0 ["SolidMaterialIndex"]
        2 GETTABLE                         R8 R9 R1
        3 GETTABLE                         R7 R8 R2
        4 GETTABLEKS                       R10 R0 K1 ["SolidOccupancy"]
        6 GETTABLE                         R9 R10 R1
        7 GETTABLE                         R8 R9 R2
        8 GETTABLEKS                       R11 R0 K2 ["LiquidOccupancy"]
       10 GETTABLE                         R10 R11 R1
       11 GETTABLE                         R9 R10 R2
       12 GETTABLE                         R10 R7 R3
       13 JUMPIFNOTEQ                      R10 R4 ; [+9]
       15 GETTABLE                         R10 R8 R3
       16 JUMPIFNOTEQ                      R10 R5 ; [+6]
       18 GETTABLE                         R10 R9 R3
       19 JUMPIFNOTEQ                      R10 R6 ; [+3]
       21 LOADB                            R10 0
       22 RETURN                           R10 1
       23 SETTABLE                         R4 R7 R3
       24 SETTABLE                         R5 R8 R3
       25 SETTABLE                         R6 R9 R3
       26 LOADB                            R10 1
       27 RETURN                           R10 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTEQKNIL                  R2 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["getInvalidSlotIndices"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 SETUPVAL                         R1 0
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R1 0
       13 GETTABLE                         R3 R1 R0
       14 JUMPIFEQKB                       R3 TRUE ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["WATER_SLOT_INDEX"]
        4 JUMPIFNOTLT                      R2 R0 ; [+4]
        6 GETUPVAL                         R2 1
        7 LOADB                            R3 1
        8 SETTABLE                         R3 R2 R0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R8 0
        1 GETTABLE                         R7 R8 R1
        2 GETTABLE                         R6 R7 R2
        3 GETTABLE                         R5 R6 R3
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["WATER_SLOT_INDEX"]
        7 JUMPIFNOTEQ                      R4 R7 ; [+12]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["transitionAt"]
       12 GETUPVAL                         R7 2
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 MOVE                             R11 R4
       17 MOVE                             R12 R5
       18 CALL                             R6 6 1
       19 JUMP                             ; [+10]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K2 ["transitionAtWithWaterMerge"]
       23 GETUPVAL                         R7 2
       24 MOVE                             R8 R1
       25 MOVE                             R9 R2
       26 MOVE                             R10 R3
       27 MOVE                             R11 R4
       28 MOVE                             R12 R5
       29 CALL                             R6 6 1
       30 JUMPIFNOT                        R6 ; [+8]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K0 ["WATER_SLOT_INDEX"]
       34 JUMPIFNOTLT                      R7 R4 ; [+4]
       36 GETUPVAL                         R7 3
       37 LOADB                            R8 1
       38 SETTABLE                         R8 R7 R4
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["SolidMaterialIndex"]
        3 GETTABLE                         R8 R9 R1
        4 GETTABLE                         R7 R8 R2
        5 GETUPVAL                         R10 0
        6 GETTABLEKS                       R10 R10 K1 ["SolidOccupancy"]
        8 GETTABLE                         R9 R10 R1
        9 GETTABLE                         R8 R9 R2
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R11 R11 K2 ["LiquidOccupancy"]
       13 GETTABLE                         R10 R11 R1
       14 GETTABLE                         R9 R10 R2
       15 GETTABLE                         R10 R7 R3
       16 GETTABLE                         R11 R8 R3
       17 GETTABLE                         R12 R9 R3
       18 LOADB                            R13 0
       19 GETUPVAL                         R14 1
       20 GETTABLEKS                       R14 R14 K3 ["AIR_SLOT_INDEX"]
       22 JUMPIFNOTEQ                      R4 R14 ; [+80]
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R14 R14 K4 ["WATER_SLOT_INDEX"]
       27 JUMPIFNOTEQ                      R5 R14 ; [+35]
       29 JUMPIFNOTEQKN                    R11 K5 [0] ; [+33]
       31 JUMPIFNOTEQKN                    R12 K5 [0] ; [+31]
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R17 R14 K0 ["SolidMaterialIndex"]
       36 GETTABLE                         R16 R17 R1
       37 GETTABLE                         R15 R16 R2
       38 GETTABLEKS                       R18 R14 K1 ["SolidOccupancy"]
       40 GETTABLE                         R17 R18 R1
       41 GETTABLE                         R16 R17 R2
       42 GETTABLEKS                       R19 R14 K2 ["LiquidOccupancy"]
       44 GETTABLE                         R18 R19 R1
       45 GETTABLE                         R17 R18 R2
       46 GETTABLE                         R18 R15 R3
       47 JUMPIFNOTEQ                      R18 R10 ; [+9]
       49 GETTABLE                         R18 R16 R3
       50 JUMPIFNOTEQ                      R18 R11 ; [+6]
       52 GETTABLE                         R18 R17 R3
       53 JUMPIFNOTEQKN                    R18 K6 [1] ; [+3]
       55 LOADB                            R13 0
       56 JUMP                             ; [+215]
       57 SETTABLE                         R10 R15 R3
       58 SETTABLE                         R11 R16 R3
       59 LOADN                            R18 1
       60 SETTABLE                         R18 R17 R3
       61 LOADB                            R13 1
       62 JUMP                             ; [+209]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K4 ["WATER_SLOT_INDEX"]
       66 JUMPIFNOTLT                      R14 R5 ; [+205]
       68 JUMPIFNOTEQKN                    R11 K5 [0] ; [+203]
       70 JUMPIFNOTEQKN                    R12 K5 [0] ; [+201]
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R17 R14 K0 ["SolidMaterialIndex"]
       75 GETTABLE                         R16 R17 R1
       76 GETTABLE                         R15 R16 R2
       77 GETTABLEKS                       R18 R14 K1 ["SolidOccupancy"]
       79 GETTABLE                         R17 R18 R1
       80 GETTABLE                         R16 R17 R2
       81 GETTABLEKS                       R19 R14 K2 ["LiquidOccupancy"]
       83 GETTABLE                         R18 R19 R1
       84 GETTABLE                         R17 R18 R2
       85 GETTABLE                         R18 R15 R3
       86 JUMPIFNOTEQ                      R18 R5 ; [+9]
       88 GETTABLE                         R18 R16 R3
       89 JUMPIFNOTEQKN                    R18 K6 [1] ; [+6]
       91 GETTABLE                         R18 R17 R3
       92 JUMPIFNOTEQKN                    R18 K5 [0] ; [+3]
       94 LOADB                            R13 0
       95 JUMP                             ; [+176]
       96 SETTABLE                         R5 R15 R3
       97 LOADN                            R18 1
       98 SETTABLE                         R18 R16 R3
       99 LOADN                            R18 0
      100 SETTABLE                         R18 R17 R3
      101 LOADB                            R13 1
      102 JUMP                             ; [+169]
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R14 R14 K4 ["WATER_SLOT_INDEX"]
      106 JUMPIFNOTEQ                      R4 R14 ; [+108]
      108 LOADN                            R14 0
      109 JUMPIFNOTLT                      R14 R12 ; [+162]
      111 JUMPIF                           R6 ; [+160]
      112 GETUPVAL                         R14 1
      113 GETTABLEKS                       R14 R14 K3 ["AIR_SLOT_INDEX"]
      115 JUMPIFNOTEQ                      R5 R14 ; [+31]
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R17 R14 K0 ["SolidMaterialIndex"]
      120 GETTABLE                         R16 R17 R1
      121 GETTABLE                         R15 R16 R2
      122 GETTABLEKS                       R18 R14 K1 ["SolidOccupancy"]
      124 GETTABLE                         R17 R18 R1
      125 GETTABLE                         R16 R17 R2
      126 GETTABLEKS                       R19 R14 K2 ["LiquidOccupancy"]
      128 GETTABLE                         R18 R19 R1
      129 GETTABLE                         R17 R18 R2
      130 GETTABLE                         R18 R15 R3
      131 JUMPIFNOTEQ                      R18 R10 ; [+9]
      133 GETTABLE                         R18 R16 R3
      134 JUMPIFNOTEQ                      R18 R11 ; [+6]
      136 GETTABLE                         R18 R17 R3
      137 JUMPIFNOTEQKN                    R18 K5 [0] ; [+3]
      139 LOADB                            R13 0
      140 JUMP                             ; [+131]
      141 SETTABLE                         R10 R15 R3
      142 SETTABLE                         R11 R16 R3
      143 LOADN                            R18 0
      144 SETTABLE                         R18 R17 R3
      145 LOADB                            R13 1
      146 JUMP                             ; [+125]
      147 GETUPVAL                         R14 1
      148 GETTABLEKS                       R14 R14 K4 ["WATER_SLOT_INDEX"]
      150 JUMPIFNOTLT                      R14 R5 ; [+121]
      152 LOADN                            R14 0
      153 JUMPIFNOTLT                      R14 R11 ; [+31]
      155 GETUPVAL                         R14 0
      156 GETTABLEKS                       R17 R14 K0 ["SolidMaterialIndex"]
      158 GETTABLE                         R16 R17 R1
      159 GETTABLE                         R15 R16 R2
      160 GETTABLEKS                       R18 R14 K1 ["SolidOccupancy"]
      162 GETTABLE                         R17 R18 R1
      163 GETTABLE                         R16 R17 R2
      164 GETTABLEKS                       R19 R14 K2 ["LiquidOccupancy"]
      166 GETTABLE                         R18 R19 R1
      167 GETTABLE                         R17 R18 R2
      168 GETTABLE                         R18 R15 R3
      169 JUMPIFNOTEQ                      R18 R10 ; [+9]
      171 GETTABLE                         R18 R16 R3
      172 JUMPIFNOTEQ                      R18 R11 ; [+6]
      174 GETTABLE                         R18 R17 R3
      175 JUMPIFNOTEQKN                    R18 K5 [0] ; [+3]
      177 LOADB                            R13 0
      178 JUMP                             ; [+93]
      179 SETTABLE                         R10 R15 R3
      180 SETTABLE                         R11 R16 R3
      181 LOADN                            R18 0
      182 SETTABLE                         R18 R17 R3
      183 LOADB                            R13 1
      184 JUMP                             ; [+87]
      185 GETUPVAL                         R14 0
      186 GETTABLEKS                       R17 R14 K0 ["SolidMaterialIndex"]
      188 GETTABLE                         R16 R17 R1
      189 GETTABLE                         R15 R16 R2
      190 GETTABLEKS                       R18 R14 K1 ["SolidOccupancy"]
      192 GETTABLE                         R17 R18 R1
      193 GETTABLE                         R16 R17 R2
      194 GETTABLEKS                       R19 R14 K2 ["LiquidOccupancy"]
      196 GETTABLE                         R18 R19 R1
      197 GETTABLE                         R17 R18 R2
      198 GETTABLE                         R18 R15 R3
      199 JUMPIFNOTEQ                      R18 R5 ; [+9]
      201 GETTABLE                         R18 R16 R3
      202 JUMPIFNOTEQ                      R18 R12 ; [+6]
      204 GETTABLE                         R18 R17 R3
      205 JUMPIFNOTEQKN                    R18 K5 [0] ; [+3]
      207 LOADB                            R13 0
      208 JUMP                             ; [+63]
      209 SETTABLE                         R5 R15 R3
      210 SETTABLE                         R12 R16 R3
      211 LOADN                            R18 0
      212 SETTABLE                         R18 R17 R3
      213 LOADB                            R13 1
      214 JUMP                             ; [+57]
      215 LOADN                            R14 0
      216 JUMPIFNOTLT                      R14 R11 ; [+55]
      218 JUMPIFNOTEQKNIL                  R4 ; [+20]
      220 LOADNIL                          R15
      221 GETUPVAL                         R16 2
      222 JUMPIFNOTEQKNIL                  R16 ; [+9]
      224 GETUPVAL                         R16 1
      225 GETTABLEKS                       R16 R16 K7 ["getInvalidSlotIndices"]
      227 GETUPVAL                         R17 3
      228 CALL                             R16 1 1
      229 MOVE                             R15 R16
      230 SETUPVAL                         R15 2
      231 JUMP                             ; [+1]
      232 GETUPVAL                         R15 2
      233 GETTABLE                         R16 R15 R10
      234 JUMPIFEQKB                       R16 TRUE ; [+2]
      236 LOADB                            R14 0 +1
      237 LOADB                            R14 1
      238 JUMP                             ; [+4]
      239 JUMPIFEQ                         R10 R4 ; [+2]
      241 LOADB                            R14 0 +1
      242 LOADB                            R14 1
      243 JUMPIFNOT                        R14 ; [+28]
      244 GETUPVAL                         R14 1
      245 GETTABLEKS                       R14 R14 K4 ["WATER_SLOT_INDEX"]
      247 JUMPIFNOTEQ                      R5 R14 ; [+13]
      249 GETUPVAL                         R14 1
      250 GETTABLEKS                       R14 R14 K8 ["transitionAt"]
      252 GETUPVAL                         R15 0
      253 MOVE                             R16 R1
      254 MOVE                             R17 R2
      255 MOVE                             R18 R3
      256 MOVE                             R19 R5
      257 MOVE                             R20 R11
      258 CALL                             R14 6 1
      259 MOVE                             R13 R14
      260 JUMP                             ; [+11]
      261 GETUPVAL                         R14 1
      262 GETTABLEKS                       R14 R14 K9 ["transitionAtWithWaterMerge"]
      264 GETUPVAL                         R15 0
      265 MOVE                             R16 R1
      266 MOVE                             R17 R2
      267 MOVE                             R18 R3
      268 MOVE                             R19 R5
      269 MOVE                             R20 R11
      270 CALL                             R14 6 1
      271 MOVE                             R13 R14
      272 MOVE                             R14 R13
      273 JUMPIFNOT                        R14 ; [+8]
      274 GETUPVAL                         R15 1
      275 GETTABLEKS                       R15 R15 K4 ["WATER_SLOT_INDEX"]
      277 JUMPIFNOTLT                      R15 R5 ; [+4]
      279 GETUPVAL                         R15 4
      280 LOADB                            R16 1
      281 SETTABLE                         R16 R15 R5
      282 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assertSlotsValid"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["write"]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 GETUPVAL                         R5 3
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["read"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["getMaterialIdentities"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K4 [table.create]
       13 LENGTH                           R5 R3
       14 CALL                             R4 1 1
       15 MOVE                             R5 R3
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 GETIMPORT                        R10 K4 [table.create]
       21 LENGTH                           R11 R9
       22 CALL                             R10 1 1
       23 SETTABLE                         R10 R4 R8
       24 MOVE                             R11 R9
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 GETIMPORT                        R16 K4 [table.create]
       30 LENGTH                           R17 R15
       31 CALL                             R16 1 1
       32 SETTABLE                         R16 R10 R14
       33 MOVE                             R17 R15
       34 LOADNIL                          R18
       35 LOADNIL                          R19
       36 FORGPREP                         R17
       37 GETUPVAL                         R22 0
       38 GETTABLEKS                       R22 R22 K5 ["getOccupancy"]
       40 MOVE                             R23 R2
       41 MOVE                             R24 R8
       42 MOVE                             R25 R14
       43 MOVE                             R26 R20
       44 CALL                             R22 4 1
       45 SETTABLE                         R22 R16 R20
       46 FORGLOOP                         R17 1 ; [-10]
       48 FORGLOOP                         R11 2 ; [-21]
       50 FORGLOOP                         R5 2 ; [-32]
       52 NEWTABLE                         R5 0 0
       54 LOADNIL                          R6
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          REF R6
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R0
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R5
       62 DUPTABLE                         R9 K11 [{"materials", "occupancies", "paint", "replace", "write"}]
       63 SETTABLEKS                       R3 R9 K6 ["materials"]
       65 SETTABLEKS                       R4 R9 K7 ["occupancies"]
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R10 R9 K8 ["paint"]
       74 NEWCLOSURE                       R10 P3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          REF R6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R10 R9 K9 ["replace"]
       82 NEWCLOSURE                       R10 P4
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R10 R9 K10 ["write"]
       89 CLOSEUPVALS                      R6
       90 RETURN                           R9 1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R1 K4 [{"air", "water", "isMaterialValid", "readRegion"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["AIR_SLOT_INDEX"]
        4 SETTABLEKS                       R2 R1 K0 ["air"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K6 ["WATER_SLOT_INDEX"]
        9 SETTABLEKS                       R2 R1 K1 ["water"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K2 ["isMaterialValid"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R1 K3 ["readRegion"]
       21 RETURN                           R1 1

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
       17 DUPCLOSURE                       R3 K10 [PROTO_6]
       18 CAPTURE                          VAL R1
       19 DUPCLOSURE                       R4 K11 [PROTO_9]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 DUPTABLE                         R5 K13 [{"new"}]
       23 SETTABLEKS                       R4 R5 K12 ["new"]
       25 RETURN                           R5 1
