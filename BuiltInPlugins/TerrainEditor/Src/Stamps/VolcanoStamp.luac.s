PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["NoiseScale"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R4 R0 K0 ["_payload"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["NoiseStrength"]
       19 GETTABLE                         R2 R3 R4
       20 GETTABLEKS                       R5 R0 K0 ["_payload"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K1 ["BuildSettings"]
       25 GETTABLE                         R4 R5 R6
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K4 ["CraterDepth"]
       29 GETTABLE                         R3 R4 R5
       30 GETTABLEKS                       R6 R0 K0 ["_payload"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K1 ["BuildSettings"]
       35 GETTABLE                         R5 R6 R7
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K5 ["CraterRadius"]
       39 GETTABLE                         R4 R5 R6
       40 JUMPIFNOT                        R3 ; [+1]
       41 JUMPIF                           R4 ; [+5]
       42 GETIMPORT                        R5 K7 [warn]
       44 LOADK                            R6 K8 ["Missing parameters!"]
       45 CALL                             R5 1 0
       46 RETURN                           R0 0
       47 DUPTABLE                         R5 K11 [{"hillWidth", "hillHeight"}]
       48 LOADK                            R6 K12 [0.2]
       49 SETTABLEKS                       R6 R5 K9 ["hillWidth"]
       51 LOADN                            R7 1
       52 MULK                             R8 R4 K13 [0.5]
       53 ADD                              R6 R7 R8
       54 SETTABLEKS                       R6 R5 K10 ["hillHeight"]
       56 MOVE                             R8 R5
       57 NAMECALL                         R6 R0 K14 ["generateHill"]
       59 CALL                             R6 2 0
       60 LOADN                            R6 0
       61 JUMPIFNOTLT                      R6 R1 ; [+7]
       63 LOADN                            R6 0
       64 JUMPIFNOTLT                      R6 R2 ; [+4]
       66 NAMECALL                         R6 R0 K15 ["addErosion"]
       68 CALL                             R6 1 0
       69 GETIMPORT                        R6 K18 [table.create]
       71 GETTABLEKS                       R7 R0 K19 ["_mapSize"]
       73 LOADB                            R8 0
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R0 K20 ["_fillBottomPositions"]
       77 LOADN                            R6 0
       78 JUMPIFNOTLE                      R4 R6 ; [+2]
       80 RETURN                           R0 0
       81 LOADN                            R6 0
       82 LOADN                            R9 1
       83 GETTABLEKS                       R7 R0 K21 ["_sliceX"]
       85 LOADN                            R8 1
       86 FORNPREP                         R7
       87 LOADN                            R12 1
       88 GETTABLEKS                       R10 R0 K22 ["_sliceZ"]
       90 LOADN                            R11 1
       91 FORNPREP                         R10
       92 MOVE                             R15 R9
       93 MOVE                             R16 R12
       94 NAMECALL                         R13 R0 K23 ["getIndex"]
       96 CALL                             R13 3 1
       97 GETTABLEKS                       R15 R0 K24 ["_noiseMap"]
       99 GETTABLE                         R14 R15 R13
      100 LOADN                            R15 1
      101 JUMPIFNOTLT                      R15 R14 ; [+19]
      103 GETTABLEKS                       R17 R0 K21 ["_sliceX"]
      105 DIV                              R16 R9 R17
      106 LOADN                            R17 0
      107 GETTABLEKS                       R19 R0 K22 ["_sliceZ"]
      109 DIV                              R18 R12 R19
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R15 K27 [Vector3.new]
      113 CALL                             R15 3 1
      114 LOADK                            R18 K28 [{0.5, 0, 0.5}]
      115 SUB                              R17 R15 R18
      116 GETTABLEKS                       R16 R17 K29 ["magnitude"]
      118 JUMPIFNOTLT                      R6 R16 ; [+2]
      120 MOVE                             R6 R16
      121 FORNLOOP                         R10
      122 FORNLOOP                         R7
      123 LOADN                            R9 1
      124 GETTABLEKS                       R7 R0 K21 ["_sliceX"]
      126 LOADN                            R8 1
      127 FORNPREP                         R7
      128 LOADN                            R12 1
      129 GETTABLEKS                       R10 R0 K22 ["_sliceZ"]
      131 LOADN                            R11 1
      132 FORNPREP                         R10
      133 GETTABLEKS                       R15 R0 K21 ["_sliceX"]
      135 DIV                              R14 R9 R15
      136 LOADN                            R15 0
      137 GETTABLEKS                       R17 R0 K22 ["_sliceZ"]
      139 DIV                              R16 R12 R17
      140 FASTCALL                         VECTOR ; [+2]
      141 GETIMPORT                        R13 K27 [Vector3.new]
      143 CALL                             R13 3 1
      144 LOADK                            R16 K28 [{0.5, 0, 0.5}]
      145 SUB                              R15 R13 R16
      146 GETTABLEKS                       R14 R15 K29 ["magnitude"]
      148 JUMPIFNOTLT                      R14 R6 ; [+35]
      150 SUB                              R16 R6 R14
      151 DIV                              R15 R16 R6
      152 SUBRK                            R17 R30 K15 ["addErosion"]
      153 POWK                             R16 R17 K31 [4]
      154 SUBRK                            R15 R30 K16 ["table"]
      155 MUL                              R18 R15 R3
      156 DIVK                             R17 R18 K32 [2]
      157 SUBRK                            R16 R30 K17 ["create"]
      158 MOVE                             R19 R9
      159 MOVE                             R20 R12
      160 NAMECALL                         R17 R0 K23 ["getIndex"]
      162 CALL                             R17 3 1
      163 GETTABLEKS                       R19 R0 K24 ["_noiseMap"]
      165 GETTABLE                         R18 R19 R17
      166 LOADN                            R19 1
      167 JUMPIFLT                         R19 R18 ; [+3]
      169 JUMPIFNOTLT                      R16 R18 ; [+9]
      171 GETTABLEKS                       R19 R0 K24 ["_noiseMap"]
      173 SETTABLE                         R16 R19 R17
      174 GETTABLEKS                       R19 R0 K20 ["_fillBottomPositions"]
      176 LOADB                            R20 1
      177 SETTABLE                         R20 R19 R17
      178 JUMP                             ; [+5]
      179 GETTABLEKS                       R19 R0 K24 ["_noiseMap"]
      181 ADD                              R21 R18 R16
      182 DIVK                             R20 R21 K32 [2]
      183 SETTABLE                         R20 R19 R17
      184 FORNLOOP                         R10
      185 FORNLOOP                         R7
      186 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K4 ["_blendingFactorMap"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+22]
       11 DUPTABLE                         R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K5 ["PreserveDistance"]
       15 LOADK                            R3 K9 [0.2]
       16 SETTABLEKS                       R3 R2 K6 ["PreserveRatio"]
       18 SETTABLEKS                       R1 R2 K7 ["BlendingStrength"]
       20 GETUPVAL                         R3 0
       21 GETIMPORT                        R4 K12 [Vector2.new]
       23 GETTABLEKS                       R5 R0 K13 ["_sliceX"]
       25 GETTABLEKS                       R6 R0 K14 ["_sliceZ"]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K4 ["_blendingFactorMap"]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["MountainBaseStamp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BuildSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["TerrainType"]
       29 GETTABLEKS                       R8 R0 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["Generation"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K15 ["GetBlendingFactorMap"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R10 R5 K16 ["Volcano"]
       42 NAMECALL                         R8 R1 K17 ["new"]
       44 CALL                             R8 2 1
       45 DUPCLOSURE                       R9 K18 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R8 K19 ["init"]
       49 DUPCLOSURE                       R9 K20 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R9 R8 K21 ["generateNoiseMap"]
       54 DUPCLOSURE                       R9 K22 [PROTO_2]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R8 K23 ["updateBlendingFactorMap"]
       58 RETURN                           R8 1
