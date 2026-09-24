PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 DIV                              R4 R5 R1
        3 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        4 GETIMPORT                        R3 K3 [math.floor]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R6 R0 K4 ["Y"]
        9 DIV                              R5 R6 R1
       10 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       11 GETIMPORT                        R4 K3 [math.floor]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R7 R0 K5 ["Z"]
       16 DIV                              R6 R7 R1
       17 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       18 GETIMPORT                        R5 K3 [math.floor]
       20 CALL                             R5 1 1
       21 FASTCALL                         VECTOR ; [+2]
       22 GETIMPORT                        R2 K8 [Vector3.new]
       24 CALL                             R2 3 1
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["VoxelResolution"]
        3 GETIMPORT                        R5 K4 [Enum.Material.Water]
        5 JUMPIFNOTEQ                      R3 R5 ; [+5]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["WATER_SLOT_INDEX"]
       10 RETURN                           R5 1
       11 JUMPIFNOT                        R2 ; [+9]
       12 GETTABLEKS                       R6 R2 K6 ["Magnitude"]
       14 LOADN                            R7 0
       15 JUMPIFNOTLT                      R7 R6 ; [+5]
       17 GETTABLEKS                       R6 R2 K7 ["Unit"]
       19 MINUS                            R5 R6
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 GETTABLEKS                       R9 R1 K8 ["X"]
       24 DIV                              R8 R9 R4
       25 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       26 GETIMPORT                        R7 K11 [math.floor]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R10 R1 K12 ["Y"]
       31 DIV                              R9 R10 R4
       32 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       33 GETIMPORT                        R8 K11 [math.floor]
       35 CALL                             R8 1 1
       36 GETTABLEKS                       R11 R1 K13 ["Z"]
       38 DIV                              R10 R11 R4
       39 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       40 GETIMPORT                        R9 K11 [math.floor]
       42 CALL                             R9 1 1
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R6 K16 [Vector3.new]
       46 CALL                             R6 3 1
       47 NEWTABLE                         R7 0 1
       49 MOVE                             R8 R6
       50 SETLIST                          R7 R8 1 [1]
       52 MOVE                             R8 R6
       53 MOVE                             R9 R6
       54 JUMPIFNOT                        R5 ; [+53]
       55 LOADN                            R12 1
       56 LOADN                            R10 6
       57 LOADN                            R11 1
       58 FORNPREP                         R10
       59 DIVK                             R15 R12 K18 [6]
       60 MULK                             R14 R15 K17 [1.5]
       61 MUL                              R13 R14 R4
       62 MUL                              R16 R5 R13
       63 ADD                              R15 R1 R16
       64 GETTABLEKS                       R19 R15 K8 ["X"]
       66 DIV                              R18 R19 R4
       67 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       68 GETIMPORT                        R17 K11 [math.floor]
       70 CALL                             R17 1 1
       71 GETTABLEKS                       R20 R15 K12 ["Y"]
       73 DIV                              R19 R20 R4
       74 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       75 GETIMPORT                        R18 K11 [math.floor]
       77 CALL                             R18 1 1
       78 GETTABLEKS                       R21 R15 K13 ["Z"]
       80 DIV                              R20 R21 R4
       81 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       82 GETIMPORT                        R19 K11 [math.floor]
       84 CALL                             R19 1 1
       85 FASTCALL                         VECTOR ; [+2]
       86 GETIMPORT                        R16 K16 [Vector3.new]
       88 CALL                             R16 3 1
       89 MOVE                             R14 R16
       90 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
       92 MOVE                             R16 R7
       93 MOVE                             R17 R14
       94 GETIMPORT                        R15 K21 [table.insert]
       96 CALL                             R15 2 0
       97 MOVE                             R17 R14
       98 NAMECALL                         R15 R8 K22 ["Min"]
      100 CALL                             R15 2 1
      101 MOVE                             R8 R15
      102 MOVE                             R17 R14
      103 NAMECALL                         R15 R9 K23 ["Max"]
      105 CALL                             R15 2 1
      106 MOVE                             R9 R15
      107 FORNLOOP                         R10
      108 GETIMPORT                        R10 K25 [Region3.new]
      110 MUL                              R11 R8 R4
      111 LOADK                            R14 K26 [{1, 1, 1}]
      112 ADD                              R13 R9 R14
      113 MUL                              R12 R13 R4
      114 CALL                             R10 2 1
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K27 ["read"]
      118 MOVE                             R12 R0
      119 MOVE                             R13 R10
      120 CALL                             R11 2 1
      121 MOVE                             R12 R7
      122 LOADNIL                          R13
      123 LOADNIL                          R14
      124 FORGPREP                         R12
      125 SUB                              R17 R16 R8
      126 GETTABLEKS                       R21 R17 K8 ["X"]
      128 ADDK                             R18 R21 K28 [1]
      129 GETTABLEKS                       R21 R17 K12 ["Y"]
      131 ADDK                             R19 R21 K28 [1]
      132 GETTABLEKS                       R21 R17 K13 ["Z"]
      134 ADDK                             R20 R21 K28 [1]
      135 GETTABLEKS                       R24 R11 K29 ["SolidOccupancy"]
      137 GETTABLE                         R23 R24 R18
      138 GETTABLE                         R22 R23 R19
      139 GETTABLE                         R21 R22 R20
      140 LOADN                            R22 0
      141 JUMPIFNOTLT                      R22 R21 ; [+7]
      143 GETTABLEKS                       R24 R11 K30 ["SolidMaterialIndex"]
      145 GETTABLE                         R23 R24 R18
      146 GETTABLE                         R22 R23 R19
      147 GETTABLE                         R21 R22 R20
      148 RETURN                           R21 1
      149 FORGLOOP                         R12 2 ; [-25]
      151 GETTABLEN                        R13 R7 1
      152 SUB                              R12 R13 R8
      153 GETUPVAL                         R13 1
      154 GETTABLEKS                       R13 R13 K31 ["getMaterialIdentity"]
      156 MOVE                             R14 R11
      157 GETTABLEKS                       R16 R12 K8 ["X"]
      159 ADDK                             R15 R16 K28 [1]
      160 GETTABLEKS                       R17 R12 K12 ["Y"]
      162 ADDK                             R16 R17 K28 [1]
      163 GETTABLEKS                       R18 R12 K13 ["Z"]
      165 ADDK                             R17 R18 K28 [1]
      166 CALL                             R13 4 1
      167 JUMPIFNOT                        R5 ; [+7]
      168 GETUPVAL                         R14 1
      169 GETTABLEKS                       R14 R14 K32 ["AIR_SLOT_INDEX"]
      171 JUMPIFNOTEQ                      R13 R14 ; [+3]
      173 LOADNIL                          R14
      174 RETURN                           R14 1
      175 RETURN                           R13 1

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
       26 DUPCLOSURE                       R4 K12 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
