PROTO_0:
        0 NEWTABLE                         R0 0 6
        2 DUPTABLE                         R1 K7 [{[1] = {1, 0, 0}, ["axis2"] = {0, 1, 0}, ["normal"] = {0, 0, 1}, ["viewId"]}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K8 ["CAMERA_ANGLES"]
        6 GETTABLEKS                       R2 R2 K9 ["Front"]
        8 SETTABLEKS                       R2 R1 K6 ["viewId"]
       10 DUPTABLE                         R2 K11 [{[1] = {1, 0, 0}, ["axis2"] = {0, 1, 0}, ["normal"] = {0, 0, -1}, ["viewId"]}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K8 ["CAMERA_ANGLES"]
       14 GETTABLEKS                       R3 R3 K12 ["Back"]
       16 SETTABLEKS                       R3 R2 K6 ["viewId"]
       18 DUPTABLE                         R3 K14 [{[1] = {0, 0, 1}, ["axis2"] = {0, 1, 0}, ["normal"] = {-1, 0, 0}, ["viewId"]}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K8 ["CAMERA_ANGLES"]
       22 GETTABLEKS                       R4 R4 K15 ["Left"]
       24 SETTABLEKS                       R4 R3 K6 ["viewId"]
       26 DUPTABLE                         R4 K16 [{[1] = {0, 0, 1}, ["axis2"] = {0, 1, 0}, ["normal"] = {1, 0, 0}, ["viewId"]}]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K8 ["CAMERA_ANGLES"]
       30 GETTABLEKS                       R5 R5 K17 ["Right"]
       32 SETTABLEKS                       R5 R4 K6 ["viewId"]
       34 DUPTABLE                         R5 K19 [{[1] = {1, 0, 0}, ["axis2"] = {0, 0, 1}, ["normal"] = {0, -1, 0}, ["viewId"]}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K8 ["CAMERA_ANGLES"]
       38 GETTABLEKS                       R6 R6 K20 ["Top"]
       40 SETTABLEKS                       R6 R5 K6 ["viewId"]
       42 DUPTABLE                         R6 K21 [{[1] = {1, 0, 0}, ["axis2"] = {0, 0, 1}, ["normal"] = {0, 1, 0}, ["viewId"]}]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K8 ["CAMERA_ANGLES"]
       46 GETTABLEKS                       R7 R7 K22 ["Bottom"]
       48 SETTABLEKS                       R7 R6 K6 ["viewId"]
       50 SETLIST                          R0 R1 6 [1]
       52 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CAMERA_ANGLES"]
        3 GETTABLEKS                       R2 R2 K1 ["Front"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["CAMERA_ANGLES"]
       10 GETTABLEKS                       R2 R2 K2 ["Back"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+7]
       14 GETTABLEKS                       R3 R0 K3 ["X"]
       16 GETTABLEKS                       R4 R0 K4 ["Y"]
       18 DIV                              R2 R3 R4
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["CAMERA_ANGLES"]
       23 GETTABLEKS                       R2 R2 K5 ["Left"]
       25 JUMPIFEQ                         R1 R2 ; [+8]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["CAMERA_ANGLES"]
       30 GETTABLEKS                       R2 R2 K6 ["Right"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+7]
       34 GETTABLEKS                       R3 R0 K7 ["Z"]
       36 GETTABLEKS                       R4 R0 K4 ["Y"]
       38 DIV                              R2 R3 R4
       39 RETURN                           R2 1
       40 GETTABLEKS                       R3 R0 K3 ["X"]
       42 GETTABLEKS                       R4 R0 K7 ["Z"]
       44 DIV                              R2 R3 R4
       45 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CAMERA_ANGLES"]
        3 GETTABLEKS                       R3 R3 K1 ["Front"]
        5 JUMPIFEQ                         R1 R3 ; [+8]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["CAMERA_ANGLES"]
       10 GETTABLEKS                       R3 R3 K2 ["Back"]
       12 JUMPIFNOTEQ                      R1 R3 ; [+7]
       14 GETTABLEKS                       R3 R0 K3 ["X"]
       16 GETTABLEKS                       R4 R0 K4 ["Y"]
       18 DIV                              R2 R3 R4
       19 JUMP                             ; [+25]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["CAMERA_ANGLES"]
       23 GETTABLEKS                       R3 R3 K5 ["Left"]
       25 JUMPIFEQ                         R1 R3 ; [+8]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["CAMERA_ANGLES"]
       30 GETTABLEKS                       R3 R3 K6 ["Right"]
       32 JUMPIFNOTEQ                      R1 R3 ; [+7]
       34 GETTABLEKS                       R3 R0 K7 ["Z"]
       36 GETTABLEKS                       R4 R0 K4 ["Y"]
       38 DIV                              R2 R3 R4
       39 JUMP                             ; [+5]
       40 GETTABLEKS                       R3 R0 K3 ["X"]
       42 GETTABLEKS                       R4 R0 K7 ["Z"]
       44 DIV                              R2 R3 R4
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 LOADN                            R5 1
       48 JUMPIFNOTLT                      R5 R2 ; [+9]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       53 DIV                              R4 R5 R2
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R3 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       57 JUMP                             ; [+17]
       58 LOADN                            R5 1
       59 JUMPIFNOTLT                      R2 R5 ; [+9]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       64 MUL                              R3 R5 R2
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R4 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       68 JUMP                             ; [+6]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R3 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R4 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       75 GETIMPORT                        R5 K11 [Vector2.new]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       80 DIV                              R6 R3 R7
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       84 DIV                              R7 R4 R8
       85 CALL                             R5 2 1
       86 GETTABLEKS                       R7 R5 K3 ["X"]
       88 GETTABLEKS                       R8 R5 K4 ["Y"]
       90 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       92 GETIMPORT                        R6 K14 [math.max]
       94 CALL                             R6 2 1
       95 LOADN                            R7 1
       96 JUMPIFNOTLT                      R7 R6 ; [+3]
       98 DIV                              R7 R5 R6
       99 RETURN                           R7 1
      100 RETURN                           R5 1

PROTO_3:
        0 DUPTABLE                         R5 K1 [{"orderedVerts"}]
        1 NEWTABLE                         R6 0 0
        3 SETTABLEKS                       R6 R5 K0 ["orderedVerts"]
        5 MOVE                             R8 R2
        6 NAMECALL                         R6 R0 K2 ["GetFaceVertices"]
        8 CALL                             R6 2 1
        9 GETTABLEN                        R9 R6 1
       10 NAMECALL                         R7 R0 K3 ["GetPosition"]
       12 CALL                             R7 2 1
       13 GETTABLEN                        R10 R6 2
       14 NAMECALL                         R8 R0 K3 ["GetPosition"]
       16 CALL                             R8 2 1
       17 GETTABLEN                        R11 R6 3
       18 NAMECALL                         R9 R0 K3 ["GetPosition"]
       20 CALL                             R9 2 1
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K4 ["transformTriangleToWorld"]
       24 MOVE                             R11 R7
       25 MOVE                             R12 R8
       26 MOVE                             R13 R9
       27 MOVE                             R14 R3
       28 MOVE                             R15 R4
       29 CALL                             R10 5 4
       30 GETTABLEKS                       R15 R5 K0 ["orderedVerts"]
       32 FASTCALL2                        TABLE_INSERT R15 R10 ; [+4]
       34 MOVE                             R16 R10
       35 GETIMPORT                        R14 K7 [table.insert]
       37 CALL                             R14 2 0
       38 GETTABLEKS                       R15 R5 K0 ["orderedVerts"]
       40 FASTCALL2                        TABLE_INSERT R15 R11 ; [+4]
       42 MOVE                             R16 R11
       43 GETIMPORT                        R14 K7 [table.insert]
       45 CALL                             R14 2 0
       46 GETTABLEKS                       R15 R5 K0 ["orderedVerts"]
       48 FASTCALL2                        TABLE_INSERT R15 R12 ; [+4]
       50 MOVE                             R16 R12
       51 GETIMPORT                        R14 K7 [table.insert]
       53 CALL                             R14 2 0
       54 SETTABLEKS                       R13 R5 K8 ["normal"]
       56 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       58 MOVE                             R15 R1
       59 MOVE                             R16 R5
       60 GETIMPORT                        R14 K7 [table.insert]
       62 CALL                             R14 2 0
       63 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["min"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 GETTABLEKS                       R3 R0 K2 ["max"]
        6 GETTABLEKS                       R3 R3 K1 ["X"]
        8 GETTABLEKS                       R4 R0 K0 ["min"]
       10 GETTABLEKS                       R4 R4 K3 ["Y"]
       12 GETTABLEKS                       R5 R0 K2 ["max"]
       14 GETTABLEKS                       R5 R5 K3 ["Y"]
       16 GETTABLEKS                       R6 R0 K0 ["min"]
       18 GETTABLEKS                       R6 R6 K4 ["Z"]
       20 GETTABLEKS                       R7 R0 K2 ["max"]
       22 GETTABLEKS                       R7 R7 K4 ["Z"]
       24 GETTABLEKS                       R9 R1 K5 ["orderedVerts"]
       26 GETTABLEN                        R8 R9 1
       27 GETTABLEKS                       R10 R1 K5 ["orderedVerts"]
       29 GETTABLEN                        R9 R10 2
       30 GETTABLEKS                       R11 R1 K5 ["orderedVerts"]
       32 GETTABLEN                        R10 R11 3
       33 GETTABLEKS                       R12 R8 K1 ["X"]
       35 GETTABLEKS                       R13 R9 K1 ["X"]
       37 GETTABLEKS                       R14 R10 K1 ["X"]
       39 MOVE                             R15 R2
       40 FASTCALL                         MATH_MIN ; [+2]
       41 GETIMPORT                        R11 K7 [math.min]
       43 CALL                             R11 4 1
       44 MOVE                             R2 R11
       45 GETTABLEKS                       R12 R8 K1 ["X"]
       47 GETTABLEKS                       R13 R9 K1 ["X"]
       49 GETTABLEKS                       R14 R10 K1 ["X"]
       51 MOVE                             R15 R3
       52 FASTCALL                         MATH_MAX ; [+2]
       53 GETIMPORT                        R11 K8 [math.max]
       55 CALL                             R11 4 1
       56 MOVE                             R3 R11
       57 GETTABLEKS                       R12 R8 K3 ["Y"]
       59 GETTABLEKS                       R13 R9 K3 ["Y"]
       61 GETTABLEKS                       R14 R10 K3 ["Y"]
       63 MOVE                             R15 R4
       64 FASTCALL                         MATH_MIN ; [+2]
       65 GETIMPORT                        R11 K7 [math.min]
       67 CALL                             R11 4 1
       68 MOVE                             R4 R11
       69 GETTABLEKS                       R12 R8 K3 ["Y"]
       71 GETTABLEKS                       R13 R9 K3 ["Y"]
       73 GETTABLEKS                       R14 R10 K3 ["Y"]
       75 MOVE                             R15 R5
       76 FASTCALL                         MATH_MAX ; [+2]
       77 GETIMPORT                        R11 K8 [math.max]
       79 CALL                             R11 4 1
       80 MOVE                             R5 R11
       81 GETTABLEKS                       R12 R8 K4 ["Z"]
       83 GETTABLEKS                       R13 R9 K4 ["Z"]
       85 GETTABLEKS                       R14 R10 K4 ["Z"]
       87 MOVE                             R15 R6
       88 FASTCALL                         MATH_MIN ; [+2]
       89 GETIMPORT                        R11 K7 [math.min]
       91 CALL                             R11 4 1
       92 MOVE                             R6 R11
       93 GETTABLEKS                       R12 R8 K4 ["Z"]
       95 GETTABLEKS                       R13 R9 K4 ["Z"]
       97 GETTABLEKS                       R14 R10 K4 ["Z"]
       99 MOVE                             R15 R7
      100 FASTCALL                         MATH_MAX ; [+2]
      101 GETIMPORT                        R11 K8 [math.max]
      103 CALL                             R11 4 1
      104 MOVE                             R7 R11
      105 FASTCALL3                        VECTOR R2 R4 R6
      107 MOVE                             R12 R2
      108 MOVE                             R13 R4
      109 MOVE                             R14 R6
      110 GETIMPORT                        R11 K11 [Vector3.new]
      112 CALL                             R11 3 1
      113 SETTABLEKS                       R11 R0 K0 ["min"]
      115 FASTCALL3                        VECTOR R3 R5 R7
      117 MOVE                             R12 R3
      118 MOVE                             R13 R5
      119 MOVE                             R14 R7
      120 GETIMPORT                        R11 K11 [Vector3.new]
      122 CALL                             R11 3 1
      123 SETTABLEKS                       R11 R0 K2 ["max"]
      125 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R0 K3 ["Size"]
        7 NAMECALL                         R1 R0 K4 ["ReadPixelsBuffer"]
        9 CALL                             R1 3 1
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 LOADN                            R6 0
       13 GETIMPORT                        R7 K8 [buffer.len]
       15 MOVE                             R8 R1
       16 CALL                             R7 1 1
       17 SUBK                             R4 R7 K5 [1]
       18 LOADN                            R5 4
       19 FORNPREP                         R4
       20 FASTCALL2                        BUFFER_READU8 R1 R6 ; [+5]
       22 MOVE                             R8 R1
       23 MOVE                             R9 R6
       24 GETIMPORT                        R7 K10 [buffer.readu8]
       26 CALL                             R7 2 1
       27 ADDK                             R10 R6 K5 [1]
       28 FASTCALL2                        BUFFER_READU8 R1 R10 ; [+4]
       30 MOVE                             R9 R1
       31 GETIMPORT                        R8 K10 [buffer.readu8]
       33 CALL                             R8 2 1
       34 ADDK                             R11 R6 K11 [2]
       35 FASTCALL2                        BUFFER_READU8 R1 R11 ; [+4]
       37 MOVE                             R10 R1
       38 GETIMPORT                        R9 K10 [buffer.readu8]
       40 CALL                             R9 2 1
       41 JUMPIFNOTEQKN                    R7 K12 [0] ; [+6]
       43 JUMPIFNOTEQKN                    R8 K12 [0] ; [+4]
       45 JUMPIFNOTEQKN                    R9 K12 [0] ; [+2]
       47 ADDK                             R3 R3 K5 [1]
       48 ADDK                             R2 R2 K5 [1]
       49 FORNLOOP                         R4
       50 JUMPIFNOTEQKN                    R2 K12 [0] ; [+4]
       52 LOADB                            R4 0
       53 LOADN                            R5 0
       54 RETURN                           R4 2
       55 LOADB                            R4 1
       56 DIV                              R6 R3 R2
       57 SUBRK                            R5 K5 [1] R6
       58 RETURN                           R4 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R4 R1 K3 ["renderMeshesData"]
        8 GETTABLEKS                       R5 R1 K4 ["consumerConfig"]
       10 GETTABLEKS                       R5 R5 K5 ["consumerEnv"]
       12 DUPTABLE                         R6 K8 [{"shouldYield", "lastTickSeconds"}]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K9 ["ConsumerEnv"]
       16 GETTABLEKS                       R8 R8 K10 ["Backend"]
       18 JUMPIFNOTEQ                      R5 R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K6 ["shouldYield"]
       24 GETIMPORT                        R7 K12 [tick]
       26 CALL                             R7 0 1
       27 SETTABLEKS                       R7 R6 K7 ["lastTickSeconds"]
       29 NEWTABLE                         R7 0 0
       31 LOADK                            R10 K13 ["MeshPart"]
       32 NAMECALL                         R8 R2 K14 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+12]
       36 GETIMPORT                        R8 K18 [Enum.AssetType.DynamicHead]
       38 JUMPIFNOTEQ                      R3 R8 ; [+9]
       40 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       42 MOVE                             R9 R7
       43 MOVE                             R10 R2
       44 GETIMPORT                        R8 K21 [table.insert]
       46 CALL                             R8 2 0
       47 JUMP                             ; [+18]
       48 NAMECALL                         R8 R2 K22 ["GetChildren"]
       50 CALL                             R8 1 3
       51 FORGPREP                         R8
       52 LOADK                            R15 K13 ["MeshPart"]
       53 NAMECALL                         R13 R12 K14 ["IsA"]
       55 CALL                             R13 2 1
       56 JUMPIFNOT                        R13 ; [+7]
       57 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       59 MOVE                             R14 R7
       60 MOVE                             R15 R12
       61 GETIMPORT                        R13 K21 [table.insert]
       63 CALL                             R13 2 0
       64 FORGLOOP                         R8 2 ; [-13]
       66 NEWTABLE                         R8 0 0
       68 MOVE                             R9 R7
       69 LOADNIL                          R10
       70 LOADNIL                          R11
       71 FORGPREP                         R9
       72 GETTABLEKS                       R14 R13 K23 ["Transparency"]
       74 JUMPIFEQKN                       R14 K24 [0] ; [+9]
       76 GETTABLEKS                       R16 R13 K25 ["Name"]
       78 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       80 MOVE                             R15 R8
       81 GETIMPORT                        R14 K21 [table.insert]
       83 CALL                             R14 2 0
       84 FORGLOOP                         R9 2 ; [-13]
       86 LENGTH                           R9 R8
       87 LOADN                            R10 0
       88 JUMPIFNOTLT                      R10 R9 ; [+19]
       90 MOVE                             R9 R8
       91 LOADNIL                          R10
       92 LOADNIL                          R11
       93 FORGPREP                         R9
       94 GETUPVAL                         R16 1
       95 GETTABLEKS                       R16 R16 K26 ["Keys"]
       97 GETTABLEKS                       R16 R16 K27 ["AssetOpacity_NonZeroTransparency"]
       99 DUPTABLE                         R17 K29 [{"PartName"}]
      100 SETTABLEKS                       R13 R17 K28 ["PartName"]
      102 NAMECALL                         R14 R0 K30 ["fail"]
      104 CALL                             R14 3 0
      105 FORGLOOP                         R9 2 ; [-12]
      107 RETURN                           R0 0
      108 GETUPVAL                         R9 2
      109 GETTABLEKS                       R9 R9 K31 ["calculateAllTransformsForAsset"]
      111 MOVE                             R10 R3
      112 MOVE                             R11 R2
      113 CALL                             R9 2 1
      114 GETUPVAL                         R11 3
      115 GETTABLE                         R10 R11 R3
      116 JUMPIFNOT                        R10 ; [+16]
      117 NEWCLOSURE                       R10 P0
      118 CAPTURE                          VAL R2
      119 GETUPVAL                         R11 2
      120 GETTABLEKS                       R11 R11 K32 ["calculateStraightenedLimb"]
      122 MOVE                             R12 R3
      123 MOVE                             R13 R9
      124 MOVE                             R14 R10
      125 CALL                             R11 3 1
      126 MOVE                             R12 R11
      127 LOADNIL                          R13
      128 LOADNIL                          R14
      129 FORGPREP                         R12
      130 SETTABLE                         R16 R9 R15
      131 FORGLOOP                         R12 2 ; [-2]
      133 NEWTABLE                         R10 0 0
      135 DUPTABLE                         R11 K37 [{["min"] = {∞, ∞, ∞}, ["max"] = {-∞, -∞, -∞}}]
      136 MOVE                             R12 R7
      137 LOADNIL                          R13
      138 LOADNIL                          R14
      139 FORGPREP                         R12
      140 GETTABLEKS                       R18 R16 K25 ["Name"]
      142 GETTABLE                         R17 R4 R18
      143 JUMPIF                           R17 ; [+14]
      144 GETUPVAL                         R20 1
      145 GETTABLEKS                       R20 R20 K26 ["Keys"]
      147 GETTABLEKS                       R20 R20 K38 ["AssetOpacity_MeshLoadFailed"]
      149 DUPTABLE                         R21 K29 [{"PartName"}]
      150 GETTABLEKS                       R22 R16 K25 ["Name"]
      152 SETTABLEKS                       R22 R21 K28 ["PartName"]
      154 NAMECALL                         R18 R0 K30 ["fail"]
      156 CALL                             R18 3 0
      157 RETURN                           R0 0
      158 GETTABLEKS                       R18 R17 K39 ["editable"]
      160 NAMECALL                         R19 R18 K40 ["Triangulate"]
      162 CALL                             R19 1 0
      163 GETTABLEKS                       R20 R16 K41 ["Size"]
      165 GETTABLEKS                       R21 R16 K42 ["MeshSize"]
      167 DIV                              R19 R20 R21
      168 GETTABLEKS                       R21 R16 K25 ["Name"]
      170 GETTABLE                         R20 R9 R21
      171 JUMPIF                           R20 ; [+3]
      172 GETIMPORT                        R20 K45 [CFrame.new]
      174 CALL                             R20 0 1
      175 NAMECALL                         R21 R18 K46 ["GetFaces"]
      177 CALL                             R21 1 1
      178 MOVE                             R22 R21
      179 LOADNIL                          R23
      180 LOADNIL                          R24
      181 FORGPREP                         R22
      182 GETUPVAL                         R27 4
      183 MOVE                             R28 R18
      184 MOVE                             R29 R10
      185 MOVE                             R30 R26
      186 MOVE                             R31 R20
      187 MOVE                             R32 R19
      188 CALL                             R27 5 1
      189 GETUPVAL                         R28 5
      190 MOVE                             R29 R11
      191 MOVE                             R30 R27
      192 CALL                             R28 2 0
      193 GETUPVAL                         R28 6
      194 MOVE                             R29 R6
      195 CALL                             R28 1 0
      196 FORGLOOP                         R22 2 ; [-15]
      198 FORGLOOP                         R12 2 ; [-59]
      200 GETTABLEKS                       R13 R11 K35 ["max"]
      202 GETTABLEKS                       R14 R11 K33 ["min"]
      204 SUB                              R12 R13 R14
      205 GETTABLEKS                       R12 R12 K47 ["Magnitude"]
      207 JUMPIFNOTEQKN                    R12 K24 [0] ; [+15]
      209 GETUPVAL                         R14 1
      210 GETTABLEKS                       R14 R14 K26 ["Keys"]
      212 GETTABLEKS                       R14 R14 K48 ["AssetOpacity_ZeroSize"]
      214 DUPTABLE                         R15 K50 [{"AssetName"}]
      215 GETTABLEKS                       R16 R3 K25 ["Name"]
      217 SETTABLEKS                       R16 R15 K49 ["AssetName"]
      219 NAMECALL                         R12 R0 K30 ["fail"]
      221 CALL                             R12 3 0
      222 RETURN                           R0 0
      223 GETUPVAL                         R12 7
      224 CALL                             R12 0 1
      225 MOVE                             R13 R12
      226 LOADNIL                          R14
      227 LOADNIL                          R15
      228 FORGPREP                         R13
      229 LENGTH                           R18 R10
      230 JUMPIFNOTEQKN                    R18 K24 [0] ; [+15]
      232 GETUPVAL                         R20 1
      233 GETTABLEKS                       R20 R20 K26 ["Keys"]
      235 GETTABLEKS                       R20 R20 K51 ["AssetOpacity_NoTriangles"]
      237 DUPTABLE                         R21 K50 [{"AssetName"}]
      238 GETTABLEKS                       R22 R3 K25 ["Name"]
      240 SETTABLEKS                       R22 R21 K49 ["AssetName"]
      242 NAMECALL                         R18 R0 K30 ["fail"]
      244 CALL                             R18 3 0
      245 JUMP                             ; [+98]
      246 GETTABLEKS                       R19 R11 K35 ["max"]
      248 GETTABLEKS                       R20 R11 K33 ["min"]
      250 SUB                              R18 R19 R20
      251 GETTABLEKS                       R20 R11 K33 ["min"]
      253 DIVK                             R21 R18 K52 [2]
      254 ADD                              R19 R20 R21
      255 GETIMPORT                        R21 K54 [Vector2.new]
      257 GETUPVAL                         R22 8
      258 GETTABLEKS                       R22 R22 K55 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      260 GETUPVAL                         R23 8
      261 GETTABLEKS                       R23 R23 K55 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      263 CALL                             R21 2 1
      264 GETUPVAL                         R22 9
      265 MOVE                             R23 R18
      266 GETTABLEKS                       R24 R17 K56 ["viewId"]
      268 CALL                             R22 2 1
      269 MUL                              R20 R21 R22
      270 GETUPVAL                         R21 10
      271 GETTABLEKS                       R21 R21 K57 ["rasterMesh"]
      273 MOVE                             R22 R10
      274 MOVE                             R23 R20
      275 MOVE                             R24 R17
      276 MOVE                             R25 R19
      277 MOVE                             R26 R18
      278 MOVE                             R27 R6
      279 CALL                             R21 6 1
      280 GETUPVAL                         R24 8
      281 GETTABLEKS                       R24 R24 K58 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      283 GETTABLE                         R23 R24 R3
      284 GETTABLEKS                       R24 R17 K56 ["viewId"]
      286 GETTABLE                         R22 R23 R24
      287 GETUPVAL                         R23 11
      288 MOVE                             R24 R21
      289 CALL                             R23 1 2
      290 JUMPIF                           R23 ; [+17]
      291 GETUPVAL                         R27 1
      292 GETTABLEKS                       R27 R27 K26 ["Keys"]
      294 GETTABLEKS                       R27 R27 K59 ["AssetOpacity_Invisible"]
      296 DUPTABLE                         R28 K50 [{"AssetName"}]
      297 GETTABLEKS                       R29 R3 K25 ["Name"]
      299 SETTABLEKS                       R29 R28 K49 ["AssetName"]
      301 NAMECALL                         R25 R0 K30 ["fail"]
      303 CALL                             R25 3 0
      304 NAMECALL                         R25 R21 K60 ["Destroy"]
      306 CALL                             R25 1 0
      307 JUMP                             ; [+36]
      308 JUMPIFNOTLT                      R24 R22 ; [+32]
      310 GETUPVAL                         R27 1
      311 GETTABLEKS                       R27 R27 K26 ["Keys"]
      313 GETTABLEKS                       R27 R27 K61 ["AssetOpacity_BelowThreshold"]
      315 DUPTABLE                         R28 K65 [{"AssetName", "ViewName", "Opacity", "Threshold"}]
      316 GETTABLEKS                       R29 R3 K25 ["Name"]
      318 SETTABLEKS                       R29 R28 K49 ["AssetName"]
      320 GETTABLEKS                       R29 R17 K56 ["viewId"]
      322 SETTABLEKS                       R29 R28 K62 ["ViewName"]
      324 GETIMPORT                        R29 K68 [string.format]
      326 LOADK                            R30 K69 ["%.2f"]
      327 MOVE                             R31 R24
      328 CALL                             R29 2 1
      329 SETTABLEKS                       R29 R28 K63 ["Opacity"]
      331 GETIMPORT                        R29 K68 [string.format]
      333 LOADK                            R30 K69 ["%.2f"]
      334 MOVE                             R31 R22
      335 CALL                             R29 2 1
      336 SETTABLEKS                       R29 R28 K64 ["Threshold"]
      338 NAMECALL                         R25 R0 K30 ["fail"]
      340 CALL                             R25 3 0
      341 NAMECALL                         R25 R21 K60 ["Destroy"]
      343 CALL                             R25 1 0
      344 FORGLOOP                         R13 2 ; [-116]
      346 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["AssetCalculator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["RasterUtil"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["TransparencyUtil"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K13 ["tryYield"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K14 ["ConstantsTransparencyValidation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K15 ["flags"]
       67 GETTABLEKS                       R10 R10 K16 ["getFFlagUGCValidateMigrateTextureTransparency"]
       69 CALL                             R9 1 1
       70 NEWTABLE                         R10 8 0
       72 NEWTABLE                         R11 0 2
       74 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       76 GETTABLEKS                       R12 R12 K18 ["TORSO_AND_LIMBS"]
       78 GETTABLEKS                       R13 R2 K17 ["UploadCategory"]
       80 GETTABLEKS                       R13 R13 K19 ["DYNAMIC_HEAD"]
       82 SETLIST                          R11 R12 2 [1]
       84 SETTABLEKS                       R11 R10 K20 ["categories"]
       86 NEWTABLE                         R11 0 1
       88 GETTABLEKS                       R12 R2 K21 ["SharedDataMember"]
       90 GETTABLEKS                       R12 R12 K22 ["renderMeshesData"]
       92 SETLIST                          R11 R12 1 [1]
       94 SETTABLEKS                       R11 R10 K23 ["requiredData"]
       96 SETTABLEKS                       R9 R10 K24 ["fflag"]
       98 NEWTABLE                         R11 0 0
      100 SETTABLEKS                       R11 R10 K25 ["expectedFailures"]
      102 DUPCLOSURE                       R11 K26 [PROTO_0]
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R12 K27 [PROTO_1]
      105 CAPTURE                          VAL R8
      106 DUPCLOSURE                       R13 K28 [PROTO_2]
      107 CAPTURE                          VAL R8
      108 DUPCLOSURE                       R14 K29 [PROTO_3]
      109 CAPTURE                          VAL R6
      110 DUPCLOSURE                       R15 K30 [PROTO_4]
      111 DUPCLOSURE                       R16 K31 [PROTO_5]
      112 NEWTABLE                         R17 4 0
      114 GETIMPORT                        R18 K35 [Enum.AssetType.LeftArm]
      116 LOADB                            R19 1
      117 SETTABLE                         R19 R17 R18
      118 GETIMPORT                        R18 K37 [Enum.AssetType.RightArm]
      120 LOADB                            R19 1
      121 SETTABLE                         R19 R17 R18
      122 GETIMPORT                        R18 K39 [Enum.AssetType.LeftLeg]
      124 LOADB                            R19 1
      125 SETTABLE                         R19 R17 R18
      126 GETIMPORT                        R18 K41 [Enum.AssetType.RightLeg]
      128 LOADB                            R19 1
      129 SETTABLE                         R19 R17 R18
      130 DUPCLOSURE                       R18 K42 [PROTO_7]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R16
      143 SETTABLEKS                       R18 R10 K43 ["run"]
      145 RETURN                           R10 1
