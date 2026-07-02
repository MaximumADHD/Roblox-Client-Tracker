PROTO_0:
        0 NEWTABLE                         R2 2 0
        2 GETTABLEKS                       R3 R0 K0 ["min"]
        4 GETTABLEKS                       R5 R1 K0 ["min"]
        6 NAMECALL                         R3 R3 K1 ["Min"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K0 ["min"]
       11 GETTABLEKS                       R3 R0 K2 ["max"]
       13 GETTABLEKS                       R5 R1 K2 ["max"]
       15 NAMECALL                         R3 R3 K3 ["Max"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["max"]
       20 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R4 K0 ["X"]
        3 LOADK                            R5 K1 ["Y"]
        4 LOADK                            R6 K2 ["Z"]
        5 SETLIST                          R1 R4 3 [1]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R7 R0 K3 ["max"]
       12 GETTABLE                         R6 R7 R5
       13 GETTABLEKS                       R8 R0 K4 ["min"]
       15 GETTABLE                         R7 R8 R5
       16 JUMPIFNOTLT                      R6 R7 ; [+3]
       18 LOADB                            R6 0
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 ; [-11]
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R6 R1 K0 ["Inverse"]
        2 CALL                             R6 1 1
        3 MUL                              R5 R6 R0
        4 DIV                              R6 R5 R2
        5 MUL                              R7 R6 R4
        6 MUL                              R8 R3 R7
        7 RETURN                           R8 1

PROTO_3:
        0 NEWTABLE                         R3 2 0
        2 GETTABLEKS                       R4 R0 K0 ["min"]
        4 GETTABLEKS                       R6 R1 K0 ["min"]
        6 NAMECALL                         R4 R4 K1 ["Min"]
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K0 ["min"]
       11 GETTABLEKS                       R4 R0 K2 ["max"]
       13 GETTABLEKS                       R6 R1 K2 ["max"]
       15 NAMECALL                         R4 R4 K3 ["Max"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["max"]
       20 MOVE                             R2 R3
       21 LOADN                            R3 0
       22 NEWTABLE                         R4 0 3
       24 LOADK                            R7 K4 ["X"]
       25 LOADK                            R8 K5 ["Y"]
       26 LOADK                            R9 K6 ["Z"]
       27 SETLIST                          R4 R7 3 [1]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 GETTABLEKS                       R12 R0 K2 ["max"]
       34 GETTABLE                         R11 R12 R8
       35 GETTABLEKS                       R13 R0 K0 ["min"]
       37 GETTABLE                         R12 R13 R8
       38 SUB                              R10 R11 R12
       39 FASTCALL1                        MATH_ABS R10 ; [+2]
       40 GETIMPORT                        R9 K9 [math.abs]
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R13 R2 K2 ["max"]
       45 GETTABLE                         R12 R13 R8
       46 GETTABLEKS                       R14 R2 K0 ["min"]
       48 GETTABLE                         R13 R14 R8
       49 SUB                              R11 R12 R13
       50 FASTCALL1                        MATH_ABS R11 ; [+2]
       51 GETIMPORT                        R10 K9 [math.abs]
       53 CALL                             R10 1 1
       54 SUB                              R12 R10 R9
       55 FASTCALL1                        MATH_ABS R12 ; [+2]
       56 GETIMPORT                        R11 K9 [math.abs]
       58 CALL                             R11 1 1
       59 FASTCALL2                        MATH_MAX R3 R11 ; [+5]
       61 MOVE                             R13 R3
       62 MOVE                             R14 R11
       63 GETIMPORT                        R12 K10 [math.max]
       65 CALL                             R12 2 1
       66 MOVE                             R3 R12
       67 FORGLOOP                         R4 2 ; [-36]
       69 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K3 [Enum.AssetType.DynamicHead]
        4 JUMPIFNOTEQ                      R1 R3 ; [+10]
        6 GETTABLEKS                       R5 R0 K4 ["Name"]
        8 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K7 [table.insert]
       13 CALL                             R3 2 0
       14 RETURN                           R2 1
       15 NAMECALL                         R3 R0 K8 ["GetChildren"]
       17 CALL                             R3 1 3
       18 FORGPREP                         R3
       19 LOADK                            R10 K9 ["MeshPart"]
       20 NAMECALL                         R8 R7 K10 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+8]
       24 GETTABLEKS                       R10 R7 K4 ["Name"]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K7 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-14]
       34 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 MOVE                             R9 R2
        7 MOVE                             R10 R8
        8 CALL                             R9 1 1
        9 GETUPVAL                         R11 0
       10 MOVE                             R12 R9
       11 MOVE                             R13 R1
       12 CALL                             R11 2 1
       13 GETUPVAL                         R12 0
       14 MOVE                             R13 R9
       15 MOVE                             R14 R1
       16 LOADB                            R15 1
       17 CALL                             R12 3 1
       18 DIV                              R10 R11 R12
       19 SETTABLE                         R10 R3 R8
       20 FORGLOOP                         R4 2 ; [-15]
       22 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["inflated"]
        2 GETTABLEKS                       R4 R1 K0 ["inflated"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R6 0 0
        2 MOVE                             R7 R1
        3 LOADNIL                          R8
        4 LOADNIL                          R9
        5 FORGPREP                         R7
        6 GETUPVAL                         R12 0
        7 MOVE                             R13 R0
        8 GETTABLEKS                       R14 R11 K0 ["extents"]
       10 CALL                             R12 2 1
       11 DUPTABLE                         R15 K3 [{"extents", "inflated", "worldSpacePosition"}]
       12 GETTABLEKS                       R16 R11 K0 ["extents"]
       14 SETTABLEKS                       R16 R15 K0 ["extents"]
       16 SETTABLEKS                       R12 R15 K1 ["inflated"]
       18 GETTABLEKS                       R16 R11 K2 ["worldSpacePosition"]
       20 SETTABLEKS                       R16 R15 K2 ["worldSpacePosition"]
       22 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       24 MOVE                             R14 R6
       25 GETIMPORT                        R13 K6 [table.insert]
       27 CALL                             R13 2 0
       28 FORGLOOP                         R7 2 ; [-23]
       30 GETIMPORT                        R7 K8 [table.sort]
       32 MOVE                             R8 R6
       33 DUPCLOSURE                       R9 K9 [PROTO_6]
       34 CALL                             R7 2 0
       35 GETUPVAL                         R8 1
       36 CALL                             R8 0 -1
       37 FASTCALL                         TONUMBER ; [+2]
       38 GETIMPORT                        R7 K11 [tonumber]
       40 CALL                             R7 -1 1
       41 NEWTABLE                         R8 0 0
       43 LOADN                            R9 1
       44 LENGTH                           R10 R6
       45 JUMPIFNOTLE                      R9 R10 ; [+18]
       47 GETTABLE                         R10 R6 R9
       48 GETTABLEKS                       R10 R10 K1 ["inflated"]
       50 JUMPIFNOTLT                      R7 R10 ; [+13]
       52 LENGTH                           R10 R8
       53 JUMPIFNOTLT                      R10 R2 ; [+10]
       55 GETTABLE                         R12 R6 R9
       56 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       58 MOVE                             R11 R8
       59 GETIMPORT                        R10 K6 [table.insert]
       61 CALL                             R10 2 0
       62 ADDK                             R9 R9 K12 [1]
       63 JUMPBACK                         ; [-20]
       64 LENGTH                           R10 R8
       65 LOADN                            R11 0
       66 JUMPIFNOTLT                      R11 R10 ; [+51]
       68 LOADK                            R10 K13 [""]
       69 LOADN                            R13 1
       70 LENGTH                           R11 R8
       71 LOADN                            R12 1
       72 FORNPREP                         R11
       73 LOADN                            R14 1
       74 JUMPIFNOTLT                      R14 R13 ; [+11]
       76 LENGTH                           R14 R8
       77 JUMPIFNOTEQ                      R13 R14 ; [+5]
       79 MOVE                             R14 R10
       80 LOADK                            R15 K14 [", and "]
       81 CONCAT                           R10 R14 R15
       82 JUMP                             ; [+3]
       83 MOVE                             R14 R10
       84 LOADK                            R15 K15 [", "]
       85 CONCAT                           R10 R14 R15
       86 GETTABLE                         R14 R8 R13
       87 GETTABLEKS                       R14 R14 K2 ["worldSpacePosition"]
       89 MOVE                             R15 R10
       90 GETIMPORT                        R16 K18 [string.format]
       92 LOADK                            R17 K19 ["{%.4f, %.4f, %.4f}"]
       93 GETTABLEKS                       R18 R14 K20 ["X"]
       95 GETTABLEKS                       R19 R14 K21 ["Y"]
       97 GETTABLEKS                       R20 R14 K22 ["Z"]
       99 CALL                             R16 4 1
      100 CONCAT                           R10 R15 R16
      101 FORNLOOP                         R11
      102 LOADB                            R13 0
      103 NEWTABLE                         R14 0 1
      105 GETIMPORT                        R15 K18 [string.format]
      107 LOADK                            R16 K23 ["Detected %s centered around: %s that increases %s bounding box. Remove the geometry or increase its size so that it is more visible"]
      108 MOVE                             R17 R3
      109 MOVE                             R18 R10
      110 GETTABLEKS                       R19 R4 K24 ["Name"]
      112 CALL                             R15 4 -1
      113 SETLIST                          R14 R15 -1 [1]
      115 NAMECALL                         R11 R5 K25 ["updateReasons"]
      117 CALL                             R11 3 0
      118 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R6 0 0
        2 MOVE                             R7 R4
        3 LOADNIL                          R8
        4 LOADNIL                          R9
        5 FORGPREP                         R7
        6 MOVE                             R12 R5
        7 MOVE                             R13 R11
        8 CALL                             R12 1 1
        9 GETTABLEKS                       R13 R12 K0 ["CFrame"]
       11 GETTABLEKS                       R15 R12 K1 ["Size"]
       13 GETTABLEKS                       R16 R12 K2 ["MeshSize"]
       15 DIV                              R14 R15 R16
       16 GETTABLE                         R15 R0 R11
       17 GETTABLE                         R16 R15 R3
       18 MOVE                             R17 R16
       19 LOADNIL                          R18
       20 LOADNIL                          R19
       21 FORGPREP                         R17
       22 GETTABLEKS                       R24 R21 K4 ["min"]
       24 GETTABLEKS                       R25 R21 K5 ["max"]
       26 ADD                              R23 R24 R25
       27 DIVK                             R22 R23 K3 [2]
       28 GETTABLE                         R24 R1 R11
       29 GETTABLE                         R25 R2 R11
       30 NAMECALL                         R27 R24 K6 ["Inverse"]
       32 CALL                             R27 1 1
       33 MUL                              R26 R27 R22
       34 DIV                              R27 R26 R25
       35 MUL                              R28 R27 R14
       36 MUL                              R23 R13 R28
       37 DUPTABLE                         R24 K9 [{"extents", "worldSpacePosition"}]
       38 SETTABLEKS                       R21 R24 K7 ["extents"]
       40 SETTABLEKS                       R23 R24 K8 ["worldSpacePosition"]
       42 FASTCALL2                        TABLE_INSERT R6 R24 ; [+5]
       44 MOVE                             R26 R6
       45 MOVE                             R27 R24
       46 GETIMPORT                        R25 K12 [table.insert]
       48 CALL                             R25 2 0
       49 FORGLOOP                         R17 2 ; [-28]
       51 FORGLOOP                         R7 2 ; [-46]
       53 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["GetBoundingBoxManipulationData"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["calculateAllTransformsForAsset"]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R0
       16 CALL                             R4 2 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 GETIMPORT                        R6 K7 [Enum.AssetType.DynamicHead]
       22 JUMPIFEQ                         R2 R6 ; [+19]
       24 GETIMPORT                        R6 K9 [Enum.AssetType.Torso]
       26 JUMPIFEQ                         R2 R6 ; [+15]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K10 ["calculateStraightenedLimb"]
       31 MOVE                             R7 R2
       32 MOVE                             R8 R4
       33 MOVE                             R9 R5
       34 CALL                             R6 3 1
       35 MOVE                             R7 R6
       36 LOADNIL                          R8
       37 LOADNIL                          R9
       38 FORGPREP                         R7
       39 SETTABLE                         R11 R4 R10
       40 FORGLOOP                         R7 2 ; [-2]
       42 GETUPVAL                         R6 2
       43 MOVE                             R7 R3
       44 MOVE                             R8 R1
       45 MOVE                             R9 R5
       46 CALL                             R6 3 1
       47 NEWTABLE                         R7 0 0
       49 MOVE                             R8 R3
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 GETIMPORT                        R14 K7 [Enum.AssetType.DynamicHead]
       55 JUMPIFNOTEQ                      R2 R14 ; [+3]
       57 MOVE                             R13 R0
       58 JUMP                             ; [+4]
       59 MOVE                             R15 R12
       60 NAMECALL                         R13 R0 K11 ["FindFirstChild"]
       62 CALL                             R13 2 1
       63 GETUPVAL                         R14 3
       64 MOVE                             R15 R13
       65 LOADK                            R16 K12 ["MeshId"]
       66 MOVE                             R17 R1
       67 CALL                             R14 3 2
       68 JUMPIF                           R14 ; [+12]
       69 LOADB                            R16 0
       70 NEWTABLE                         R17 0 1
       72 GETIMPORT                        R18 K15 [string.format]
       74 LOADK                            R19 K16 ["Failed to load mesh for '%s'. Make sure mesh exists and try again."]
       75 GETTABLEKS                       R20 R13 K17 ["Name"]
       77 CALL                             R18 2 -1
       78 SETLIST                          R17 R18 -1 [1]
       80 RETURN                           R16 2
       81 SETTABLE                         R15 R7 R12
       82 FORGLOOP                         R8 2 ; [-30]
       84 NEWTABLE                         R8 0 0
       86 NEWTABLE                         R9 0 0
       88 NEWTABLE                         R10 0 0
       90 MOVE                             R11 R3
       91 LOADNIL                          R12
       92 LOADNIL                          R13
       93 FORGPREP                         R11
       94 GETTABLE                         R18 R7 R15
       95 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
       97 MOVE                             R17 R8
       98 GETIMPORT                        R16 K20 [table.insert]
      100 CALL                             R16 2 0
      101 GETTABLE                         R18 R4 R15
      102 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      104 MOVE                             R17 R9
      105 GETIMPORT                        R16 K20 [table.insert]
      107 CALL                             R16 2 0
      108 GETTABLE                         R18 R6 R15
      109 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      111 MOVE                             R17 R10
      112 GETIMPORT                        R16 K20 [table.insert]
      114 CALL                             R16 2 0
      115 FORGLOOP                         R11 2 ; [-22]
      117 GETUPVAL                         R11 4
      118 NEWCLOSURE                       R12 P1
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 MOVE                             R13 R1
      124 CALL                             R11 2 2
      125 JUMPIF                           R11 ; [+21]
      126 GETIMPORT                        R13 K15 [string.format]
      128 LOADK                            R14 K21 ["Could not get bounding box manipulation metrics for %s"]
      129 GETTABLEKS                       R15 R2 K17 ["Name"]
      131 CALL                             R13 2 1
      132 GETTABLEKS                       R14 R1 K22 ["isServer"]
      134 JUMPIFNOT                        R14 ; [+5]
      135 GETIMPORT                        R14 K24 [error]
      137 MOVE                             R15 R13
      138 CALL                             R14 1 0
      139 JUMP                             ; [+7]
      140 LOADB                            R14 0
      141 NEWTABLE                         R15 0 1
      143 MOVE                             R16 R13
      144 SETLIST                          R15 R16 1 [1]
      146 RETURN                           R14 2
      147 DUPTABLE                         R13 K27 [{"min", "max"}]
      148 GETTABLEKS                       R14 R12 K28 ["minValidExtents"]
      150 SETTABLEKS                       R14 R13 K25 ["min"]
      152 GETTABLEKS                       R14 R12 K29 ["maxValidExtents"]
      154 SETTABLEKS                       R14 R13 K26 ["max"]
      156 GETUPVAL                         R14 6
      157 MOVE                             R15 R13
      158 CALL                             R14 1 1
      159 JUMPIF                           R14 ; [+12]
      160 LOADB                            R14 0
      161 NEWTABLE                         R15 0 1
      163 GETIMPORT                        R16 K15 [string.format]
      165 LOADK                            R17 K30 ["%s mesh is too small or made of disconnected pieces that are too small"]
      166 GETTABLEKS                       R18 R2 K17 ["Name"]
      168 CALL                             R16 2 -1
      169 SETLIST                          R15 R16 -1 [1]
      171 RETURN                           R14 2
      172 NEWTABLE                         R14 0 0
      174 GETTABLEKS                       R15 R12 K31 ["partsProblemGeos"]
      176 LOADNIL                          R16
      177 LOADNIL                          R17
      178 FORGPREP                         R15
      179 GETTABLE                         R20 R3 R18
      180 SETTABLE                         R19 R14 R20
      181 FORGLOOP                         R15 2 ; [-3]
      183 GETUPVAL                         R15 7
      184 MOVE                             R16 R14
      185 MOVE                             R17 R4
      186 MOVE                             R18 R6
      187 LOADK                            R19 K32 ["smallIslands"]
      188 MOVE                             R20 R3
      189 MOVE                             R21 R5
      190 CALL                             R15 6 1
      191 GETUPVAL                         R16 7
      192 MOVE                             R17 R14
      193 MOVE                             R18 R4
      194 MOVE                             R19 R6
      195 LOADK                            R20 K33 ["skinnyTris"]
      196 MOVE                             R21 R3
      197 MOVE                             R22 R5
      198 CALL                             R16 6 1
      199 GETUPVAL                         R17 8
      200 GETTABLEKS                       R17 R17 K34 ["new"]
      202 CALL                             R17 0 1
      203 GETUPVAL                         R18 9
      204 MOVE                             R19 R13
      205 MOVE                             R20 R15
      206 LOADN                            R21 3
      207 LOADK                            R22 K35 ["small geometry"]
      208 MOVE                             R23 R2
      209 MOVE                             R24 R17
      210 CALL                             R18 6 0
      211 GETUPVAL                         R18 9
      212 MOVE                             R19 R13
      213 MOVE                             R20 R16
      214 LOADN                            R21 3
      215 LOADK                            R22 K36 ["skinny triangle(s)"]
      216 MOVE                             R23 R2
      217 MOVE                             R24 R17
      218 CALL                             R18 6 0
      219 NAMECALL                         R18 R17 K37 ["getFinalResults"]
      221 CALL                             R18 1 1
      222 JUMPIF                           R18 ; [+11]
      223 GETUPVAL                         R18 10
      224 GETTABLEKS                       R18 R18 K38 ["reportFailure"]
      226 GETUPVAL                         R19 10
      227 GETTABLEKS                       R19 R19 K39 ["ErrorType"]
      229 GETTABLEKS                       R19 R19 K40 ["validateAccurateBoundingBox"]
      231 LOADNIL                          R20
      232 MOVE                             R21 R1
      233 CALL                             R18 3 0
      234 NAMECALL                         R18 R17 K37 ["getFinalResults"]
      236 CALL                             R18 1 -1
      237 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R4 K11 ["AssetCalculator"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R5 K12 ["getExpectedPartSize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K10 ["util"]
       36 GETTABLEKS                       R6 R6 K13 ["getEditableMeshFromContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R7 R1 K10 ["util"]
       43 GETTABLEKS                       R7 R7 K14 ["FailureReasonsAccumulator"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R8 R1 K10 ["util"]
       50 GETTABLEKS                       R8 R8 K15 ["pcallDeferred"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K10 ["util"]
       57 GETTABLEKS                       R9 R9 K16 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R10 R1 K17 ["flags"]
       64 GETTABLEKS                       R10 R10 K18 ["getFStringUGCValidateBoundsInflationThreshold"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K19 [PROTO_0]
       68 DUPCLOSURE                       R11 K20 [PROTO_1]
       69 DUPCLOSURE                       R12 K21 [PROTO_2]
       70 DUPCLOSURE                       R13 K22 [PROTO_3]
       71 DUPCLOSURE                       R14 K23 [PROTO_4]
       72 DUPCLOSURE                       R15 K24 [PROTO_5]
       73 CAPTURE                          VAL R4
       74 DUPCLOSURE                       R16 K25 [PROTO_7]
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R17 K26 [PROTO_8]
       78 DUPCLOSURE                       R18 K27 [PROTO_11]
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R17
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R2
       90 RETURN                           R18 1
