PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R1 K5 [Vector3.new]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 MULK                             R3 R0 K1 [1000]
        5 FASTCALL1                        MATH_ROUND R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.round]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K1 [1000]
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [CFrame.new]
        3 GETTABLEKS                       R5 R0 K3 ["Position"]
        5 CALL                             R4 1 1
        6 MOVE                             R5 R1
        7 CALL                             R3 2 2
        8 GETTABLEKS                       R8 R3 K4 ["X"]
       10 GETUPVAL                         R9 1
       11 DIV                              R7 R8 R9
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K7 [math.floor]
       15 CALL                             R6 1 1
       16 GETTABLEKS                       R9 R3 K8 ["Y"]
       18 GETUPVAL                         R10 1
       19 DIV                              R8 R9 R10
       20 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       21 GETIMPORT                        R7 K7 [math.floor]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R10 R3 K9 ["Z"]
       26 GETUPVAL                         R11 1
       27 DIV                              R9 R10 R11
       28 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       29 GETIMPORT                        R8 K7 [math.floor]
       31 CALL                             R8 1 1
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R5 K11 [Vector3.new]
       35 CALL                             R5 3 1
       36 GETTABLEKS                       R9 R4 K4 ["X"]
       38 GETUPVAL                         R10 1
       39 DIV                              R8 R9 R10
       40 FASTCALL1                        MATH_CEIL R8 ; [+2]
       41 GETIMPORT                        R7 K13 [math.ceil]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R10 R4 K8 ["Y"]
       46 GETUPVAL                         R11 1
       47 DIV                              R9 R10 R11
       48 FASTCALL1                        MATH_CEIL R9 ; [+2]
       49 GETIMPORT                        R8 K13 [math.ceil]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R11 R4 K9 ["Z"]
       54 GETUPVAL                         R12 1
       55 DIV                              R10 R11 R12
       56 FASTCALL1                        MATH_CEIL R10 ; [+2]
       57 GETIMPORT                        R9 K13 [math.ceil]
       59 CALL                             R9 1 1
       60 FASTCALL                         VECTOR ; [+2]
       61 GETIMPORT                        R6 K11 [Vector3.new]
       63 CALL                             R6 3 1
       64 SUB                              R7 R6 R5
       65 GETUPVAL                         R8 0
       66 MOVE                             R9 R0
       67 MOVE                             R10 R1
       68 CALL                             R8 2 2
       69 GETUPVAL                         R11 1
       70 DIV                              R10 R8 R11
       71 GETUPVAL                         R12 1
       72 DIV                              R11 R9 R12
       73 SUB                              R12 R11 R10
       74 GETTABLEKS                       R16 R10 K4 ["X"]
       76 FASTCALL1                        MATH_CEIL R16 ; [+2]
       77 GETIMPORT                        R15 K13 [math.ceil]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R10 K4 ["X"]
       82 SUB                              R14 R15 R16
       83 GETTABLEKS                       R17 R10 K8 ["Y"]
       85 FASTCALL1                        MATH_CEIL R17 ; [+2]
       86 GETIMPORT                        R16 K13 [math.ceil]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R17 R10 K8 ["Y"]
       91 SUB                              R15 R16 R17
       92 GETTABLEKS                       R18 R10 K9 ["Z"]
       94 FASTCALL1                        MATH_CEIL R18 ; [+2]
       95 GETIMPORT                        R17 K13 [math.ceil]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R18 R10 K9 ["Z"]
      100 SUB                              R16 R17 R18
      101 FASTCALL                         VECTOR ; [+2]
      102 GETIMPORT                        R13 K11 [Vector3.new]
      104 CALL                             R13 3 1
      105 GETTABLEKS                       R16 R11 K4 ["X"]
      107 GETTABLEKS                       R18 R11 K4 ["X"]
      109 FASTCALL1                        MATH_FLOOR R18 ; [+2]
      110 GETIMPORT                        R17 K7 [math.floor]
      112 CALL                             R17 1 1
      113 SUB                              R15 R16 R17
      114 GETTABLEKS                       R17 R11 K8 ["Y"]
      116 GETTABLEKS                       R19 R11 K8 ["Y"]
      118 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      119 GETIMPORT                        R18 K7 [math.floor]
      121 CALL                             R18 1 1
      122 SUB                              R16 R17 R18
      123 GETTABLEKS                       R18 R11 K9 ["Z"]
      125 GETTABLEKS                       R20 R11 K9 ["Z"]
      127 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      128 GETIMPORT                        R19 K7 [math.floor]
      130 CALL                             R19 1 1
      131 SUB                              R17 R18 R19
      132 FASTCALL                         VECTOR ; [+2]
      133 GETIMPORT                        R14 K11 [Vector3.new]
      135 CALL                             R14 3 1
      136 GETTABLEKS                       R17 R2 K14 ["Max"]
      138 GETTABLEKS                       R18 R2 K15 ["Min"]
      140 SUB                              R16 R17 R18
      141 GETTABLEKS                       R18 R16 K4 ["X"]
      143 GETTABLEKS                       R19 R16 K8 ["Y"]
      145 GETTABLEKS                       R20 R16 K9 ["Z"]
      147 FASTCALL                         VECTOR ; [+2]
      148 GETIMPORT                        R17 K11 [Vector3.new]
      150 CALL                             R17 3 1
      151 MOVE                             R15 R17
      152 DUPTABLE                         R16 K24 [{"adjustmentMax", "adjustmentMin", "adjustmentOffset", "boundingRegion", "boundingRegionCenter", "inverseRotation", "unrotatedRegionCenter", "unrotatedRegionSize"}]
      153 GETTABLEKS                       R19 R14 K4 ["X"]
      155 JUMPIFNOTEQKN                    R19 K25 [0] ; [+3]
      157 LOADN                            R18 1
      158 JUMP                             ; [+6]
      159 MULK                             R21 R19 K26 [1000]
      160 FASTCALL1                        MATH_ROUND R21 ; [+2]
      161 GETIMPORT                        R20 K28 [math.round]
      163 CALL                             R20 1 1
      164 DIVK                             R18 R20 K26 [1000]
      165 GETTABLEKS                       R20 R14 K8 ["Y"]
      167 JUMPIFNOTEQKN                    R20 K25 [0] ; [+3]
      169 LOADN                            R19 1
      170 JUMP                             ; [+6]
      171 MULK                             R22 R20 K26 [1000]
      172 FASTCALL1                        MATH_ROUND R22 ; [+2]
      173 GETIMPORT                        R21 K28 [math.round]
      175 CALL                             R21 1 1
      176 DIVK                             R19 R21 K26 [1000]
      177 GETTABLEKS                       R21 R14 K9 ["Z"]
      179 JUMPIFNOTEQKN                    R21 K25 [0] ; [+3]
      181 LOADN                            R20 1
      182 JUMP                             ; [+6]
      183 MULK                             R23 R21 K26 [1000]
      184 FASTCALL1                        MATH_ROUND R23 ; [+2]
      185 GETIMPORT                        R22 K28 [math.round]
      187 CALL                             R22 1 1
      188 DIVK                             R20 R22 K26 [1000]
      189 FASTCALL                         VECTOR ; [+2]
      190 GETIMPORT                        R17 K11 [Vector3.new]
      192 CALL                             R17 3 1
      193 SETTABLEKS                       R17 R16 K16 ["adjustmentMax"]
      195 GETTABLEKS                       R19 R13 K4 ["X"]
      197 JUMPIFNOTEQKN                    R19 K25 [0] ; [+3]
      199 LOADN                            R18 1
      200 JUMP                             ; [+6]
      201 MULK                             R21 R19 K26 [1000]
      202 FASTCALL1                        MATH_ROUND R21 ; [+2]
      203 GETIMPORT                        R20 K28 [math.round]
      205 CALL                             R20 1 1
      206 DIVK                             R18 R20 K26 [1000]
      207 GETTABLEKS                       R20 R13 K8 ["Y"]
      209 JUMPIFNOTEQKN                    R20 K25 [0] ; [+3]
      211 LOADN                            R19 1
      212 JUMP                             ; [+6]
      213 MULK                             R22 R20 K26 [1000]
      214 FASTCALL1                        MATH_ROUND R22 ; [+2]
      215 GETIMPORT                        R21 K28 [math.round]
      217 CALL                             R21 1 1
      218 DIVK                             R19 R21 K26 [1000]
      219 GETTABLEKS                       R21 R13 K9 ["Z"]
      221 JUMPIFNOTEQKN                    R21 K25 [0] ; [+3]
      223 LOADN                            R20 1
      224 JUMP                             ; [+6]
      225 MULK                             R23 R21 K26 [1000]
      226 FASTCALL1                        MATH_ROUND R23 ; [+2]
      227 GETIMPORT                        R22 K28 [math.round]
      229 CALL                             R22 1 1
      230 DIVK                             R20 R22 K26 [1000]
      231 FASTCALL                         VECTOR ; [+2]
      232 GETIMPORT                        R17 K11 [Vector3.new]
      234 CALL                             R17 3 1
      235 SETTABLEKS                       R17 R16 K17 ["adjustmentMin"]
      237 ADD                              R17 R12 R13
      238 SETTABLEKS                       R17 R16 K18 ["adjustmentOffset"]
      240 SETTABLEKS                       R2 R16 K19 ["boundingRegion"]
      242 MULK                             R17 R15 K29 [0.5]
      243 SETTABLEKS                       R17 R16 K20 ["boundingRegionCenter"]
      245 GETTABLEKS                       R17 R0 K30 ["Rotation"]
      247 NAMECALL                         R17 R17 K31 ["Inverse"]
      249 CALL                             R17 1 1
      250 SETTABLEKS                       R17 R16 K21 ["inverseRotation"]
      252 MULK                             R17 R7 K29 [0.5]
      253 SETTABLEKS                       R17 R16 K22 ["unrotatedRegionCenter"]
      255 SETTABLEKS                       R7 R16 K23 ["unrotatedRegionSize"]
      257 RETURN                           R16 1

PROTO_3:
        0 GETTABLEKS                       R7 R1 K0 ["Min"]
        2 GETTABLEKS                       R9 R7 K1 ["X"]
        4 GETTABLEKS                       R10 R7 K2 ["Y"]
        6 GETTABLEKS                       R11 R7 K3 ["Z"]
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R8 K6 [Vector3.new]
       11 CALL                             R8 3 1
       12 MOVE                             R6 R8
       13 SUBK                             R8 R2 K7 [0.5]
       14 SUBK                             R9 R3 K7 [0.5]
       15 SUBK                             R10 R4 K7 [0.5]
       16 FASTCALL                         VECTOR ; [+2]
       17 GETIMPORT                        R7 K6 [Vector3.new]
       19 CALL                             R7 3 1
       20 ADD                              R5 R6 R7
       21 GETTABLEKS                       R8 R0 K8 ["inverseRotation"]
       23 GETTABLEKS                       R11 R0 K9 ["boundingRegionCenter"]
       25 SUB                              R10 R5 R11
       26 NAMECALL                         R8 R8 K10 ["VectorToWorldSpace"]
       28 CALL                             R8 2 1
       29 LOADK                            R9 K11 [{0.5, 0.5, 0.5}]
       30 SUB                              R7 R8 R9
       31 GETTABLEKS                       R8 R0 K12 ["unrotatedRegionCenter"]
       33 ADD                              R6 R7 R8
       34 GETTABLEKS                       R7 R6 K1 ["X"]
       36 LOADN                            R8 0
       37 JUMPIFLT                         R7 R8 ; [+35]
       39 GETTABLEKS                       R7 R6 K2 ["Y"]
       41 LOADN                            R8 0
       42 JUMPIFLT                         R7 R8 ; [+30]
       44 GETTABLEKS                       R7 R6 K3 ["Z"]
       46 LOADN                            R8 0
       47 JUMPIFLT                         R7 R8 ; [+25]
       49 GETTABLEKS                       R7 R6 K1 ["X"]
       51 GETTABLEKS                       R8 R0 K13 ["unrotatedRegionSize"]
       53 GETTABLEKS                       R8 R8 K1 ["X"]
       55 JUMPIFLE                         R8 R7 ; [+17]
       57 GETTABLEKS                       R7 R6 K2 ["Y"]
       59 GETTABLEKS                       R8 R0 K13 ["unrotatedRegionSize"]
       61 GETTABLEKS                       R8 R8 K2 ["Y"]
       63 JUMPIFLE                         R8 R7 ; [+9]
       65 GETTABLEKS                       R7 R6 K3 ["Z"]
       67 GETTABLEKS                       R8 R0 K13 ["unrotatedRegionSize"]
       69 GETTABLEKS                       R8 R8 K3 ["Z"]
       71 JUMPIFNOTLE                      R8 R7 ; [+4]
       73 LOADB                            R7 0
       74 LOADN                            R8 0
       75 RETURN                           R7 2
       76 LOADN                            R7 1
       77 GETTABLEKS                       R8 R6 K1 ["X"]
       79 LOADN                            R9 1
       80 JUMPIFNOTLT                      R8 R9 ; [+7]
       82 GETTABLEKS                       R8 R0 K14 ["adjustmentMin"]
       84 GETTABLEKS                       R8 R8 K1 ["X"]
       86 MUL                              R7 R7 R8
       87 JUMP                             ; [+15]
       88 GETTABLEKS                       R9 R0 K15 ["adjustmentOffset"]
       90 GETTABLEKS                       R9 R9 K1 ["X"]
       92 GETTABLEKS                       R10 R6 K1 ["X"]
       94 SUB                              R8 R9 R10
       95 LOADN                            R9 1
       96 JUMPIFNOTLT                      R8 R9 ; [+6]
       98 GETTABLEKS                       R8 R0 K16 ["adjustmentMax"]
      100 GETTABLEKS                       R8 R8 K1 ["X"]
      102 MUL                              R7 R7 R8
      103 GETTABLEKS                       R8 R6 K2 ["Y"]
      105 LOADN                            R9 1
      106 JUMPIFNOTLT                      R8 R9 ; [+7]
      108 GETTABLEKS                       R8 R0 K14 ["adjustmentMin"]
      110 GETTABLEKS                       R8 R8 K2 ["Y"]
      112 MUL                              R7 R7 R8
      113 JUMP                             ; [+15]
      114 GETTABLEKS                       R9 R0 K15 ["adjustmentOffset"]
      116 GETTABLEKS                       R9 R9 K2 ["Y"]
      118 GETTABLEKS                       R10 R6 K2 ["Y"]
      120 SUB                              R8 R9 R10
      121 LOADN                            R9 1
      122 JUMPIFNOTLT                      R8 R9 ; [+6]
      124 GETTABLEKS                       R8 R0 K16 ["adjustmentMax"]
      126 GETTABLEKS                       R8 R8 K2 ["Y"]
      128 MUL                              R7 R7 R8
      129 GETTABLEKS                       R8 R6 K3 ["Z"]
      131 LOADN                            R9 1
      132 JUMPIFNOTLT                      R8 R9 ; [+7]
      134 GETTABLEKS                       R8 R0 K14 ["adjustmentMin"]
      136 GETTABLEKS                       R8 R8 K3 ["Z"]
      138 MUL                              R7 R7 R8
      139 JUMP                             ; [+15]
      140 GETTABLEKS                       R9 R0 K15 ["adjustmentOffset"]
      142 GETTABLEKS                       R9 R9 K3 ["Z"]
      144 GETTABLEKS                       R10 R6 K3 ["Z"]
      146 SUB                              R8 R9 R10
      147 LOADN                            R9 1
      148 JUMPIFNOTLT                      R8 R9 ; [+6]
      150 GETTABLEKS                       R8 R0 K16 ["adjustmentMax"]
      152 GETTABLEKS                       R8 R8 K3 ["Z"]
      154 MUL                              R7 R7 R8
      155 LOADB                            R8 1
      156 MOVE                             R9 R7
      157 RETURN                           R8 2

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["boundingRegion"]
        2 GETTABLEKS                       R3 R3 K1 ["Min"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R6 R3 K3 ["Y"]
        8 GETTABLEKS                       R7 R3 K4 ["Z"]
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R4 K7 [Vector3.new]
       13 CALL                             R4 3 1
       14 MOVE                             R2 R4
       15 GETTABLEKS                       R6 R1 K1 ["Min"]
       17 GETTABLEKS                       R8 R6 K2 ["X"]
       19 GETTABLEKS                       R9 R6 K3 ["Y"]
       21 GETTABLEKS                       R10 R6 K4 ["Z"]
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R7 K7 [Vector3.new]
       26 CALL                             R7 3 1
       27 MOVE                             R5 R7
       28 ADD                              R4 R2 R5
       29 GETUPVAL                         R5 0
       30 MUL                              R3 R4 R5
       31 GETTABLEKS                       R7 R1 K8 ["Max"]
       33 GETTABLEKS                       R9 R7 K2 ["X"]
       35 GETTABLEKS                       R10 R7 K3 ["Y"]
       37 GETTABLEKS                       R11 R7 K4 ["Z"]
       39 FASTCALL                         VECTOR ; [+2]
       40 GETIMPORT                        R8 K7 [Vector3.new]
       42 CALL                             R8 3 1
       43 MOVE                             R6 R8
       44 ADD                              R5 R2 R6
       45 GETUPVAL                         R6 0
       46 MUL                              R4 R5 R6
       47 GETIMPORT                        R5 K10 [Region3.new]
       49 MOVE                             R6 R3
       50 MOVE                             R7 R4
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R6 0
        1 JUMPIFNOTEQ                      R4 R6 ; [+32]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R10 R0 K0 ["SolidMaterialIndex"]
        6 GETTABLE                         R9 R10 R1
        7 GETTABLE                         R8 R9 R2
        8 GETTABLEKS                       R11 R0 K1 ["SolidOccupancy"]
       10 GETTABLE                         R10 R11 R1
       11 GETTABLE                         R9 R10 R2
       12 GETTABLEKS                       R12 R0 K2 ["LiquidOccupancy"]
       14 GETTABLE                         R11 R12 R1
       15 GETTABLE                         R10 R11 R2
       16 GETTABLE                         R11 R8 R3
       17 JUMPIFNOTEQ                      R11 R7 ; [+9]
       19 GETTABLE                         R11 R9 R3
       20 JUMPIFNOTEQKN                    R11 K3 [0] ; [+6]
       22 GETTABLE                         R11 R10 R3
       23 JUMPIFNOTEQKN                    R11 K3 [0] ; [+3]
       25 LOADB                            R6 0
       26 RETURN                           R6 1
       27 SETTABLE                         R7 R8 R3
       28 LOADN                            R11 0
       29 SETTABLE                         R11 R9 R3
       30 LOADN                            R11 0
       31 SETTABLE                         R11 R10 R3
       32 LOADB                            R6 1
       33 RETURN                           R6 1
       34 GETUPVAL                         R6 1
       35 JUMPIFNOTEQ                      R4 R6 ; [+31]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R10 R0 K0 ["SolidMaterialIndex"]
       40 GETTABLE                         R9 R10 R1
       41 GETTABLE                         R8 R9 R2
       42 GETTABLEKS                       R11 R0 K1 ["SolidOccupancy"]
       44 GETTABLE                         R10 R11 R1
       45 GETTABLE                         R9 R10 R2
       46 GETTABLEKS                       R12 R0 K2 ["LiquidOccupancy"]
       48 GETTABLE                         R11 R12 R1
       49 GETTABLE                         R10 R11 R2
       50 GETTABLE                         R11 R8 R3
       51 JUMPIFNOTEQ                      R11 R7 ; [+9]
       53 GETTABLE                         R11 R9 R3
       54 JUMPIFNOTEQKN                    R11 K3 [0] ; [+6]
       56 GETTABLE                         R11 R10 R3
       57 JUMPIFNOTEQ                      R11 R5 ; [+3]
       59 LOADB                            R6 0
       60 RETURN                           R6 1
       61 SETTABLE                         R7 R8 R3
       62 LOADN                            R11 0
       63 SETTABLE                         R11 R9 R3
       64 SETTABLE                         R5 R10 R3
       65 LOADB                            R6 1
       66 RETURN                           R6 1
       67 GETTABLEKS                       R9 R0 K0 ["SolidMaterialIndex"]
       69 GETTABLE                         R8 R9 R1
       70 GETTABLE                         R7 R8 R2
       71 GETTABLEKS                       R10 R0 K1 ["SolidOccupancy"]
       73 GETTABLE                         R9 R10 R1
       74 GETTABLE                         R8 R9 R2
       75 GETTABLEKS                       R11 R0 K2 ["LiquidOccupancy"]
       77 GETTABLE                         R10 R11 R1
       78 GETTABLE                         R9 R10 R2
       79 GETTABLE                         R10 R7 R3
       80 JUMPIFNOTEQ                      R10 R4 ; [+9]
       82 GETTABLE                         R10 R8 R3
       83 JUMPIFNOTEQ                      R10 R5 ; [+6]
       85 GETTABLE                         R10 R9 R3
       86 JUMPIFNOTEQKN                    R10 K3 [0] ; [+3]
       88 LOADB                            R6 0
       89 RETURN                           R6 1
       90 SETTABLE                         R4 R7 R3
       91 SETTABLE                         R5 R8 R3
       92 LOADN                            R10 0
       93 SETTABLE                         R10 R9 R3
       94 LOADB                            R6 1
       95 RETURN                           R6 1

PROTO_7:
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
       13 GETTABLE                         R11 R8 R3
       14 GETTABLE                         R12 R9 R3
       15 LOADN                            R14 0
       16 JUMPIFNOTLT                      R14 R11 ; [+3]
       18 MOVE                             R13 R10
       19 JUMP                             ; [+6]
       20 LOADN                            R14 0
       21 JUMPIFNOTLT                      R14 R12 ; [+3]
       23 GETUPVAL                         R13 0
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R13 1
       26 JUMPIFNOTEQ                      R13 R4 ; [+194]
       28 GETUPVAL                         R14 1
       29 JUMPIFNOTEQ                      R4 R14 ; [+10]
       31 GETUPVAL                         R14 2
       32 MOVE                             R15 R0
       33 MOVE                             R16 R1
       34 MOVE                             R17 R2
       35 MOVE                             R18 R3
       36 MOVE                             R19 R5
       37 MOVE                             R20 R6
       38 CALL                             R14 6 1
       39 RETURN                           R14 1
       40 GETUPVAL                         R14 0
       41 JUMPIFNOTEQ                      R4 R14 ; [+71]
       43 GETUPVAL                         R14 1
       44 JUMPIFNOTEQ                      R5 R14 ; [+32]
       46 GETUPVAL                         R15 1
       47 GETTABLEKS                       R18 R0 K0 ["SolidMaterialIndex"]
       49 GETTABLE                         R17 R18 R1
       50 GETTABLE                         R16 R17 R2
       51 GETTABLEKS                       R19 R0 K1 ["SolidOccupancy"]
       53 GETTABLE                         R18 R19 R1
       54 GETTABLE                         R17 R18 R2
       55 GETTABLEKS                       R20 R0 K2 ["LiquidOccupancy"]
       57 GETTABLE                         R19 R20 R1
       58 GETTABLE                         R18 R19 R2
       59 GETTABLE                         R19 R16 R3
       60 JUMPIFNOTEQ                      R19 R15 ; [+9]
       62 GETTABLE                         R19 R17 R3
       63 JUMPIFNOTEQKN                    R19 K3 [0] ; [+6]
       65 GETTABLE                         R19 R18 R3
       66 JUMPIFNOTEQKN                    R19 K3 [0] ; [+3]
       68 LOADB                            R14 0
       69 RETURN                           R14 1
       70 SETTABLE                         R15 R16 R3
       71 LOADN                            R19 0
       72 SETTABLE                         R19 R17 R3
       73 LOADN                            R19 0
       74 SETTABLE                         R19 R18 R3
       75 LOADB                            R14 1
       76 RETURN                           R14 1
       77 LOADN                            R14 1
       78 JUMPIFNOTLT                      R6 R14 ; [+5]
       80 JUMPIFNOTLT                      R12 R6 ; [+3]
       82 LOADB                            R14 0
       83 RETURN                           R14 1
       84 GETTABLEKS                       R17 R0 K0 ["SolidMaterialIndex"]
       86 GETTABLE                         R16 R17 R1
       87 GETTABLE                         R15 R16 R2
       88 GETTABLEKS                       R18 R0 K1 ["SolidOccupancy"]
       90 GETTABLE                         R17 R18 R1
       91 GETTABLE                         R16 R17 R2
       92 GETTABLEKS                       R19 R0 K2 ["LiquidOccupancy"]
       94 GETTABLE                         R18 R19 R1
       95 GETTABLE                         R17 R18 R2
       96 GETTABLE                         R18 R15 R3
       97 JUMPIFNOTEQ                      R18 R5 ; [+9]
       99 GETTABLE                         R18 R16 R3
      100 JUMPIFNOTEQ                      R18 R12 ; [+6]
      102 GETTABLE                         R18 R17 R3
      103 JUMPIFNOTEQKN                    R18 K3 [0] ; [+3]
      105 LOADB                            R14 0
      106 RETURN                           R14 1
      107 SETTABLE                         R5 R15 R3
      108 SETTABLE                         R12 R16 R3
      109 LOADN                            R18 0
      110 SETTABLE                         R18 R17 R3
      111 LOADB                            R14 1
      112 RETURN                           R14 1
      113 LOADN                            R14 1
      114 JUMPIFNOTLT                      R6 R14 ; [+5]
      116 JUMPIFNOTLT                      R11 R6 ; [+3]
      118 LOADB                            R14 0
      119 RETURN                           R14 1
      120 GETUPVAL                         R14 1
      121 JUMPIFNOTEQ                      R5 R14 ; [+32]
      123 GETUPVAL                         R15 1
      124 GETTABLEKS                       R18 R0 K0 ["SolidMaterialIndex"]
      126 GETTABLE                         R17 R18 R1
      127 GETTABLE                         R16 R17 R2
      128 GETTABLEKS                       R19 R0 K1 ["SolidOccupancy"]
      130 GETTABLE                         R18 R19 R1
      131 GETTABLE                         R17 R18 R2
      132 GETTABLEKS                       R20 R0 K2 ["LiquidOccupancy"]
      134 GETTABLE                         R19 R20 R1
      135 GETTABLE                         R18 R19 R2
      136 GETTABLE                         R19 R16 R3
      137 JUMPIFNOTEQ                      R19 R15 ; [+9]
      139 GETTABLE                         R19 R17 R3
      140 JUMPIFNOTEQKN                    R19 K3 [0] ; [+6]
      142 GETTABLE                         R19 R18 R3
      143 JUMPIFNOTEQKN                    R19 K3 [0] ; [+3]
      145 LOADB                            R14 0
      146 RETURN                           R14 1
      147 SETTABLE                         R15 R16 R3
      148 LOADN                            R19 0
      149 SETTABLE                         R19 R17 R3
      150 LOADN                            R19 0
      151 SETTABLE                         R19 R18 R3
      152 LOADB                            R14 1
      153 RETURN                           R14 1
      154 GETUPVAL                         R14 0
      155 JUMPIFNOTEQ                      R5 R14 ; [+31]
      157 GETUPVAL                         R15 1
      158 GETTABLEKS                       R18 R0 K0 ["SolidMaterialIndex"]
      160 GETTABLE                         R17 R18 R1
      161 GETTABLE                         R16 R17 R2
      162 GETTABLEKS                       R19 R0 K1 ["SolidOccupancy"]
      164 GETTABLE                         R18 R19 R1
      165 GETTABLE                         R17 R18 R2
      166 GETTABLEKS                       R20 R0 K2 ["LiquidOccupancy"]
      168 GETTABLE                         R19 R20 R1
      169 GETTABLE                         R18 R19 R2
      170 GETTABLE                         R19 R16 R3
      171 JUMPIFNOTEQ                      R19 R15 ; [+9]
      173 GETTABLE                         R19 R17 R3
      174 JUMPIFNOTEQKN                    R19 K3 [0] ; [+6]
      176 GETTABLE                         R19 R18 R3
      177 JUMPIFNOTEQ                      R19 R11 ; [+3]
      179 LOADB                            R14 0
      180 RETURN                           R14 1
      181 SETTABLE                         R15 R16 R3
      182 LOADN                            R19 0
      183 SETTABLE                         R19 R17 R3
      184 SETTABLE                         R11 R18 R3
      185 LOADB                            R14 1
      186 RETURN                           R14 1
      187 LOADN                            R15 1
      188 JUMPIFNOTLE                      R15 R11 ; [+3]
      190 LOADN                            R14 0
      191 JUMP                             ; [+1]
      192 MOVE                             R14 R12
      193 GETTABLEKS                       R18 R0 K0 ["SolidMaterialIndex"]
      195 GETTABLE                         R17 R18 R1
      196 GETTABLE                         R16 R17 R2
      197 GETTABLEKS                       R19 R0 K1 ["SolidOccupancy"]
      199 GETTABLE                         R18 R19 R1
      200 GETTABLE                         R17 R18 R2
      201 GETTABLEKS                       R20 R0 K2 ["LiquidOccupancy"]
      203 GETTABLE                         R19 R20 R1
      204 GETTABLE                         R18 R19 R2
      205 GETTABLE                         R19 R16 R3
      206 JUMPIFNOTEQ                      R19 R5 ; [+9]
      208 GETTABLE                         R19 R17 R3
      209 JUMPIFNOTEQ                      R19 R11 ; [+6]
      211 GETTABLE                         R19 R18 R3
      212 JUMPIFNOTEQ                      R19 R14 ; [+3]
      214 LOADB                            R15 0
      215 RETURN                           R15 1
      216 SETTABLE                         R5 R16 R3
      217 SETTABLE                         R11 R17 R3
      218 SETTABLE                         R14 R18 R3
      219 LOADB                            R15 1
      220 RETURN                           R15 1
      221 GETUPVAL                         R14 1
      222 JUMPIFNOTEQ                      R4 R14 ; [+80]
      224 JUMPIFNOTEQ                      R13 R5 ; [+78]
      226 GETUPVAL                         R15 0
      227 JUMPIFNOTEQ                      R5 R15 ; [+3]
      229 MOVE                             R14 R12
      230 JUMP                             ; [+1]
      231 MOVE                             R14 R11
      232 JUMPIFNOTLE                      R6 R14 ; [+3]
      234 LOADB                            R15 0
      235 RETURN                           R15 1
      236 GETUPVAL                         R15 0
      237 JUMPIFNOTEQ                      R5 R15 ; [+31]
      239 GETUPVAL                         R16 1
      240 GETTABLEKS                       R19 R0 K0 ["SolidMaterialIndex"]
      242 GETTABLE                         R18 R19 R1
      243 GETTABLE                         R17 R18 R2
      244 GETTABLEKS                       R20 R0 K1 ["SolidOccupancy"]
      246 GETTABLE                         R19 R20 R1
      247 GETTABLE                         R18 R19 R2
      248 GETTABLEKS                       R21 R0 K2 ["LiquidOccupancy"]
      250 GETTABLE                         R20 R21 R1
      251 GETTABLE                         R19 R20 R2
      252 GETTABLE                         R20 R17 R3
      253 JUMPIFNOTEQ                      R20 R16 ; [+9]
      255 GETTABLE                         R20 R18 R3
      256 JUMPIFNOTEQKN                    R20 K3 [0] ; [+6]
      258 GETTABLE                         R20 R19 R3
      259 JUMPIFNOTEQ                      R20 R6 ; [+3]
      261 LOADB                            R15 0
      262 RETURN                           R15 1
      263 SETTABLE                         R16 R17 R3
      264 LOADN                            R20 0
      265 SETTABLE                         R20 R18 R3
      266 SETTABLE                         R6 R19 R3
      267 LOADB                            R15 1
      268 RETURN                           R15 1
      269 LOADN                            R16 1
      270 JUMPIFNOTLE                      R16 R6 ; [+3]
      272 LOADN                            R15 0
      273 JUMP                             ; [+1]
      274 MOVE                             R15 R12
      275 GETTABLEKS                       R19 R0 K0 ["SolidMaterialIndex"]
      277 GETTABLE                         R18 R19 R1
      278 GETTABLE                         R17 R18 R2
      279 GETTABLEKS                       R20 R0 K1 ["SolidOccupancy"]
      281 GETTABLE                         R19 R20 R1
      282 GETTABLE                         R18 R19 R2
      283 GETTABLEKS                       R21 R0 K2 ["LiquidOccupancy"]
      285 GETTABLE                         R20 R21 R1
      286 GETTABLE                         R19 R20 R2
      287 GETTABLE                         R20 R17 R3
      288 JUMPIFNOTEQ                      R20 R5 ; [+9]
      290 GETTABLE                         R20 R18 R3
      291 JUMPIFNOTEQ                      R20 R6 ; [+6]
      293 GETTABLE                         R20 R19 R3
      294 JUMPIFNOTEQ                      R20 R15 ; [+3]
      296 LOADB                            R16 0
      297 RETURN                           R16 1
      298 SETTABLE                         R5 R17 R3
      299 SETTABLE                         R6 R18 R3
      300 SETTABLE                         R15 R19 R3
      301 LOADB                            R16 1
      302 RETURN                           R16 1
      303 GETUPVAL                         R14 1
      304 JUMPIFNOTEQ                      R4 R14 ; [+35]
      306 GETUPVAL                         R14 0
      307 JUMPIFNOTEQ                      R5 R14 ; [+32]
      309 LOADN                            R14 0
      310 JUMPIFNOTLT                      R14 R11 ; [+29]
      312 GETTABLEKS                       R17 R0 K0 ["SolidMaterialIndex"]
      314 GETTABLE                         R16 R17 R1
      315 GETTABLE                         R15 R16 R2
      316 GETTABLEKS                       R18 R0 K1 ["SolidOccupancy"]
      318 GETTABLE                         R17 R18 R1
      319 GETTABLE                         R16 R17 R2
      320 GETTABLEKS                       R19 R0 K2 ["LiquidOccupancy"]
      322 GETTABLE                         R18 R19 R1
      323 GETTABLE                         R17 R18 R2
      324 GETTABLE                         R18 R15 R3
      325 JUMPIFNOTEQ                      R18 R10 ; [+9]
      327 GETTABLE                         R18 R16 R3
      328 JUMPIFNOTEQ                      R18 R11 ; [+6]
      330 GETTABLE                         R18 R17 R3
      331 JUMPIFNOTEQ                      R18 R6 ; [+3]
      333 LOADB                            R14 0
      334 RETURN                           R14 1
      335 SETTABLE                         R10 R15 R3
      336 SETTABLE                         R11 R16 R3
      337 SETTABLE                         R6 R17 R3
      338 LOADB                            R14 1
      339 RETURN                           R14 1
      340 GETUPVAL                         R14 0
      341 JUMPIFNOTEQ                      R4 R14 ; [+36]
      343 GETUPVAL                         R14 1
      344 JUMPIFNOTEQ                      R5 R14 ; [+33]
      346 LOADN                            R14 0
      347 JUMPIFNOTLT                      R14 R11 ; [+30]
      349 GETTABLEKS                       R17 R0 K0 ["SolidMaterialIndex"]
      351 GETTABLE                         R16 R17 R1
      352 GETTABLE                         R15 R16 R2
      353 GETTABLEKS                       R18 R0 K1 ["SolidOccupancy"]
      355 GETTABLE                         R17 R18 R1
      356 GETTABLE                         R16 R17 R2
      357 GETTABLEKS                       R19 R0 K2 ["LiquidOccupancy"]
      359 GETTABLE                         R18 R19 R1
      360 GETTABLE                         R17 R18 R2
      361 GETTABLE                         R18 R15 R3
      362 JUMPIFNOTEQ                      R18 R10 ; [+9]
      364 GETTABLE                         R18 R16 R3
      365 JUMPIFNOTEQ                      R18 R11 ; [+6]
      367 GETTABLE                         R18 R17 R3
      368 JUMPIFNOTEQKN                    R18 K3 [0] ; [+3]
      370 LOADB                            R14 0
      371 RETURN                           R14 1
      372 SETTABLE                         R10 R15 R3
      373 SETTABLE                         R11 R16 R3
      374 LOADN                            R18 0
      375 SETTABLE                         R18 R17 R3
      376 LOADB                            R14 1
      377 RETURN                           R14 1
      378 LOADB                            R14 0
      379 RETURN                           R14 1

PROTO_8:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["SolidOccupancy"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 MOVE                             R12 R11
       11 LOADNIL                          R13
       12 LOADNIL                          R14
       13 FORGPREP                         R12
       14 GETUPVAL                         R17 0
       15 GETUPVAL                         R18 1
       16 GETUPVAL                         R19 2
       17 MOVE                             R20 R5
       18 MOVE                             R21 R10
       19 MOVE                             R22 R15
       20 CALL                             R17 5 2
       21 JUMPIFNOT                        R17 ; [+9]
       22 GETUPVAL                         R19 3
       23 MOVE                             R20 R0
       24 MOVE                             R21 R5
       25 MOVE                             R22 R10
       26 MOVE                             R23 R15
       27 GETUPVAL                         R24 4
       28 MOVE                             R25 R18
       29 CALL                             R19 6 1
       30 OR                               R1 R19 R1
       31 FORGLOOP                         R12 1 ; [-18]
       33 FORGLOOP                         R7 2 ; [-24]
       35 FORGLOOP                         R2 2 ; [-30]
       37 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R6 R4 K0 ["boundingRegion"]
        3 GETTABLEKS                       R6 R6 K1 ["Min"]
        5 GETTABLEKS                       R8 R6 K2 ["X"]
        7 GETTABLEKS                       R9 R6 K3 ["Y"]
        9 GETTABLEKS                       R10 R6 K4 ["Z"]
       11 FASTCALL                         VECTOR ; [+2]
       12 GETIMPORT                        R7 K7 [Vector3.new]
       14 CALL                             R7 3 1
       15 MOVE                             R5 R7
       16 GETTABLEKS                       R9 R1 K1 ["Min"]
       18 GETTABLEKS                       R11 R9 K2 ["X"]
       20 GETTABLEKS                       R12 R9 K3 ["Y"]
       22 GETTABLEKS                       R13 R9 K4 ["Z"]
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R10 K7 [Vector3.new]
       27 CALL                             R10 3 1
       28 MOVE                             R8 R10
       29 ADD                              R7 R5 R8
       30 GETUPVAL                         R8 1
       31 MUL                              R6 R7 R8
       32 GETTABLEKS                       R10 R1 K8 ["Max"]
       34 GETTABLEKS                       R12 R10 K2 ["X"]
       36 GETTABLEKS                       R13 R10 K3 ["Y"]
       38 GETTABLEKS                       R14 R10 K4 ["Z"]
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R11 K7 [Vector3.new]
       43 CALL                             R11 3 1
       44 MOVE                             R9 R11
       45 ADD                              R8 R5 R9
       46 GETUPVAL                         R9 1
       47 MUL                              R7 R8 R9
       48 GETIMPORT                        R8 K10 [Region3.new]
       50 MOVE                             R9 R6
       51 MOVE                             R10 R7
       52 CALL                             R8 2 1
       53 MOVE                             R3 R8
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K11 ["edit"]
       57 GETUPVAL                         R5 3
       58 MOVE                             R6 R3
       59 NEWTABLE                         R7 0 1
       61 MOVE                             R8 R2
       62 SETLIST                          R7 R8 1 [1]
       64 NEWCLOSURE                       R8 P0
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R2
       70 CALL                             R4 4 0
       71 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["SolidOccupancy"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 MOVE                             R12 R11
       11 LOADNIL                          R13
       12 LOADNIL                          R14
       13 FORGPREP                         R12
       14 GETUPVAL                         R17 0
       15 GETUPVAL                         R18 1
       16 GETUPVAL                         R19 2
       17 MOVE                             R20 R5
       18 MOVE                             R21 R10
       19 MOVE                             R22 R15
       20 CALL                             R17 5 2
       21 JUMPIFNOT                        R17 ; [+10]
       22 GETUPVAL                         R19 3
       23 MOVE                             R20 R0
       24 MOVE                             R21 R5
       25 MOVE                             R22 R10
       26 MOVE                             R23 R15
       27 GETUPVAL                         R24 4
       28 GETUPVAL                         R25 5
       29 MOVE                             R26 R18
       30 CALL                             R19 7 1
       31 OR                               R1 R19 R1
       32 FORGLOOP                         R12 1 ; [-19]
       34 FORGLOOP                         R7 2 ; [-25]
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOTEQ                      R2 R3 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R7 R5 K0 ["boundingRegion"]
        6 GETTABLEKS                       R7 R7 K1 ["Min"]
        8 GETTABLEKS                       R9 R7 K2 ["X"]
       10 GETTABLEKS                       R10 R7 K3 ["Y"]
       12 GETTABLEKS                       R11 R7 K4 ["Z"]
       14 FASTCALL                         VECTOR ; [+2]
       15 GETIMPORT                        R8 K7 [Vector3.new]
       17 CALL                             R8 3 1
       18 MOVE                             R6 R8
       19 GETTABLEKS                       R10 R1 K1 ["Min"]
       21 GETTABLEKS                       R12 R10 K2 ["X"]
       23 GETTABLEKS                       R13 R10 K3 ["Y"]
       25 GETTABLEKS                       R14 R10 K4 ["Z"]
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R11 K7 [Vector3.new]
       30 CALL                             R11 3 1
       31 MOVE                             R9 R11
       32 ADD                              R8 R6 R9
       33 GETUPVAL                         R9 1
       34 MUL                              R7 R8 R9
       35 GETTABLEKS                       R11 R1 K8 ["Max"]
       37 GETTABLEKS                       R13 R11 K2 ["X"]
       39 GETTABLEKS                       R14 R11 K3 ["Y"]
       41 GETTABLEKS                       R15 R11 K4 ["Z"]
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R12 K7 [Vector3.new]
       46 CALL                             R12 3 1
       47 MOVE                             R10 R12
       48 ADD                              R9 R6 R10
       49 GETUPVAL                         R10 1
       50 MUL                              R8 R9 R10
       51 GETIMPORT                        R9 K10 [Region3.new]
       53 MOVE                             R10 R7
       54 MOVE                             R11 R8
       55 CALL                             R9 2 1
       56 MOVE                             R4 R9
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R5 R5 K11 ["edit"]
       60 GETUPVAL                         R6 3
       61 MOVE                             R7 R4
       62 NEWTABLE                         R8 0 1
       64 MOVE                             R9 R3
       65 SETLIST                          R8 R9 1 [1]
       67 NEWCLOSURE                       R9 P0
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CALL                             R5 4 0
       75 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 1
        5 DUPTABLE                         R5 K3 [{"fill", "isMaterialValid", "replace"}]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 SETTABLEKS                       R6 R5 K0 ["fill"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R6 R5 K1 ["isMaterialValid"]
       20 NEWCLOSURE                       R6 P2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R6 R5 K2 ["replace"]
       29 RETURN                           R5 1

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
       22 GETTABLEKS                       R3 R3 K10 ["getBoundingBox"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["TerrainVoxelChannels"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["AIR_SLOT_INDEX"]
       36 GETTABLEKS                       R5 R3 K13 ["WATER_SLOT_INDEX"]
       38 GETTABLEKS                       R6 R1 K14 ["VoxelResolution"]
       40 DUPCLOSURE                       R7 K15 [PROTO_0]
       41 DUPCLOSURE                       R8 K16 [PROTO_1]
       42 DUPCLOSURE                       R9 K17 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R10 K18 [PROTO_3]
       46 DUPCLOSURE                       R11 K19 [PROTO_4]
       47 CAPTURE                          VAL R6
       48 DUPCLOSURE                       R12 K20 [PROTO_5]
       49 DUPCLOSURE                       R13 K21 [PROTO_6]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 DUPCLOSURE                       R14 K22 [PROTO_7]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R13
       56 DUPCLOSURE                       R15 K23 [PROTO_13]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R14
       63 DUPTABLE                         R16 K25 [{"new"}]
       64 SETTABLEKS                       R15 R16 K24 ["new"]
       66 RETURN                           R16 1
