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
        0 NAMECALL                         R6 R0 K0 ["GetFaces"]
        2 CALL                             R6 1 1
        3 MOVE                             R7 R6
        4 LOADNIL                          R8
        5 LOADNIL                          R9
        6 FORGPREP                         R7
        7 GETUPVAL                         R12 0
        8 MOVE                             R13 R0
        9 MOVE                             R14 R1
       10 MOVE                             R15 R11
       11 MOVE                             R16 R2
       12 MOVE                             R17 R4
       13 CALL                             R12 5 1
       14 GETUPVAL                         R13 1
       15 MOVE                             R14 R3
       16 MOVE                             R15 R12
       17 CALL                             R13 2 0
       18 GETUPVAL                         R13 2
       19 MOVE                             R14 R5
       20 CALL                             R13 1 0
       21 FORGLOOP                         R7 2 ; [-15]
       23 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Transparency"]
        8 JUMPIFEQKN                       R7 K1 [0] ; [+9]
       10 GETTABLEKS                       R9 R6 K2 ["Name"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K5 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 LENGTH                           R2 R1
       21 LOADN                            R3 0
       22 JUMPIFNOTLT                      R3 R2 ; [+16]
       24 LOADB                            R2 0
       25 NEWTABLE                         R3 0 1
       27 GETIMPORT                        R4 K8 [string.format]
       29 LOADK                            R5 K9 ["The following parts have a non-zero transparency: %s. Part transparency should always be exactly zero."]
       30 GETIMPORT                        R6 K11 [table.concat]
       32 MOVE                             R7 R1
       33 LOADK                            R8 K12 [", "]
       34 CALL                             R6 2 -1
       35 CALL                             R4 -1 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 RETURN                           R2 2
       39 LOADB                            R2 1
       40 NEWTABLE                         R3 0 0
       42 RETURN                           R2 2

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 NEWTABLE                         R3 0 0
        4 LOADK                            R6 K1 ["MeshPart"]
        5 NAMECALL                         R4 R0 K2 ["IsA"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+14]
        9 GETTABLEKS                       R4 R1 K0 ["assetTypeEnum"]
       11 GETIMPORT                        R5 K6 [Enum.AssetType.DynamicHead]
       13 JUMPIFNOTEQ                      R4 R5 ; [+9]
       15 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       17 MOVE                             R5 R3
       18 MOVE                             R6 R0
       19 GETIMPORT                        R4 K9 [table.insert]
       21 CALL                             R4 2 0
       22 JUMP                             ; [+52]
       23 LOADK                            R7 K10 ["Folder"]
       24 NAMECALL                         R5 R0 K2 ["IsA"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+8]
       28 GETTABLEKS                       R6 R1 K0 ["assetTypeEnum"]
       30 GETIMPORT                        R7 K6 [Enum.AssetType.DynamicHead]
       32 JUMPIFNOTEQ                      R6 R7 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 GETIMPORT                        R6 K13 [string.format]
       38 LOADK                            R7 K14 ["BodyPart %s is not in the correct format."]
       39 NAMECALL                         R8 R0 K15 ["GetFullName"]
       41 CALL                             R8 1 -1
       42 CALL                             R6 -1 -1
       43 FASTCALL                         ASSERT ; [+2]
       44 GETIMPORT                        R4 K17 [assert]
       46 CALL                             R4 -1 0
       47 NAMECALL                         R4 R0 K18 ["GetChildren"]
       49 CALL                             R4 1 3
       50 FORGPREP                         R4
       51 LOADK                            R12 K1 ["MeshPart"]
       52 NAMECALL                         R10 R8 K2 ["IsA"]
       54 CALL                             R10 2 1
       55 GETIMPORT                        R11 K13 [string.format]
       57 LOADK                            R12 K19 ["BodyPart %s contained child that is not a MeshPart."]
       58 NAMECALL                         R13 R0 K15 ["GetFullName"]
       60 CALL                             R13 1 -1
       61 CALL                             R11 -1 -1
       62 FASTCALL                         ASSERT ; [+2]
       63 GETIMPORT                        R9 K17 [assert]
       65 CALL                             R9 -1 0
       66 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       68 MOVE                             R10 R3
       69 MOVE                             R11 R8
       70 GETIMPORT                        R9 K9 [table.insert]
       72 CALL                             R9 2 0
       73 FORGLOOP                         R4 2 ; [-23]
       75 GETUPVAL                         R4 0
       76 MOVE                             R5 R3
       77 CALL                             R4 1 2
       78 JUMPIF                           R4 ; [+3]
       79 LOADB                            R6 0
       80 MOVE                             R7 R5
       81 RETURN                           R6 2
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K20 ["calculateIndividualAssetPartsData"]
       85 MOVE                             R7 R0
       86 MOVE                             R8 R1
       87 CALL                             R6 2 3
       88 JUMPIF                           R6 ; [+3]
       89 LOADB                            R9 0
       90 MOVE                             R10 R7
       91 RETURN                           R9 2
       92 NEWTABLE                         R9 0 0
       94 DUPTABLE                         R10 K25 [{["min"] = {∞, ∞, ∞}, ["max"] = {-∞, -∞, -∞}}]
       95 MOVE                             R11 R3
       96 LOADNIL                          R12
       97 LOADNIL                          R13
       98 FORGPREP                         R11
       99 GETUPVAL                         R16 2
      100 MOVE                             R17 R15
      101 LOADK                            R18 K26 ["MeshId"]
      102 MOVE                             R19 R1
      103 CALL                             R16 3 2
      104 JUMPIF                           R16 ; [+12]
      105 LOADB                            R18 0
      106 NEWTABLE                         R19 0 1
      108 GETIMPORT                        R20 K13 [string.format]
      110 LOADK                            R21 K27 ["Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again."]
      111 GETTABLEKS                       R22 R15 K28 ["Name"]
      113 CALL                             R20 2 -1
      114 SETLIST                          R19 R20 -1 [1]
      116 RETURN                           R18 2
      117 NAMECALL                         R18 R17 K29 ["Triangulate"]
      119 CALL                             R18 1 0
      120 GETUPVAL                         R19 3
      121 MOVE                             R20 R15
      122 MOVE                             R21 R1
      123 CALL                             R19 2 1
      124 GETUPVAL                         R20 3
      125 MOVE                             R21 R15
      126 MOVE                             R22 R1
      127 LOADB                            R23 1
      128 CALL                             R20 3 1
      129 DIV                              R18 R19 R20
      130 GETUPVAL                         R19 4
      131 MOVE                             R20 R17
      132 MOVE                             R21 R9
      133 GETTABLEKS                       R23 R15 K28 ["Name"]
      135 GETTABLE                         R22 R8 R23
      136 GETTABLEKS                       R22 R22 K30 ["cframe"]
      138 MOVE                             R23 R10
      139 MOVE                             R24 R18
      140 MOVE                             R25 R1
      141 CALL                             R19 6 0
      142 FORGLOOP                         R11 2 ; [-44]
      144 GETTABLEKS                       R12 R10 K23 ["max"]
      146 GETTABLEKS                       R13 R10 K21 ["min"]
      148 SUB                              R11 R12 R13
      149 GETTABLEKS                       R11 R11 K31 ["Magnitude"]
      151 JUMPIFNOTEQKN                    R11 K32 [0] ; [+13]
      153 LOADB                            R11 0
      154 NEWTABLE                         R12 0 1
      156 GETIMPORT                        R13 K13 [string.format]
      158 LOADK                            R14 K33 ["Meshes %s should not have zero size"]
      159 GETTABLEKS                       R15 R2 K28 ["Name"]
      161 CALL                             R13 2 -1
      162 SETLIST                          R12 R13 -1 [1]
      164 RETURN                           R11 2
      165 GETUPVAL                         R11 5
      166 GETTABLEKS                       R11 R11 K34 ["new"]
      168 CALL                             R11 0 1
      169 GETUPVAL                         R12 6
      170 CALL                             R12 0 1
      171 MOVE                             R13 R12
      172 LOADNIL                          R14
      173 LOADNIL                          R15
      174 FORGPREP                         R13
      175 LENGTH                           R18 R9
      176 JUMPIFNOTEQKN                    R18 K32 [0] ; [+16]
      178 LOADB                            R20 0
      179 NEWTABLE                         R21 0 1
      181 GETIMPORT                        R22 K13 [string.format]
      183 LOADK                            R23 K35 ["Mesh for %s has no triangles."]
      184 GETTABLEKS                       R24 R2 K28 ["Name"]
      186 CALL                             R22 2 -1
      187 SETLIST                          R21 R22 -1 [1]
      189 NAMECALL                         R18 R11 K36 ["updateReasons"]
      191 CALL                             R18 3 0
      192 JUMP                             ; [+86]
      193 GETTABLEKS                       R19 R10 K23 ["max"]
      195 GETTABLEKS                       R20 R10 K21 ["min"]
      197 SUB                              R18 R19 R20
      198 GETTABLEKS                       R20 R10 K21 ["min"]
      200 DIVK                             R21 R18 K37 [2]
      201 ADD                              R19 R20 R21
      202 GETIMPORT                        R21 K39 [Vector2.new]
      204 GETUPVAL                         R22 7
      205 GETTABLEKS                       R22 R22 K40 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      207 GETUPVAL                         R23 7
      208 GETTABLEKS                       R23 R23 K40 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      210 CALL                             R21 2 1
      211 GETUPVAL                         R22 8
      212 MOVE                             R23 R18
      213 GETTABLEKS                       R24 R17 K41 ["viewId"]
      215 CALL                             R22 2 1
      216 MUL                              R20 R21 R22
      217 GETUPVAL                         R21 9
      218 GETTABLEKS                       R21 R21 K42 ["rasterMesh"]
      220 MOVE                             R22 R9
      221 MOVE                             R23 R20
      222 MOVE                             R24 R17
      223 MOVE                             R25 R19
      224 MOVE                             R26 R18
      225 MOVE                             R27 R1
      226 CALL                             R21 6 1
      227 GETUPVAL                         R24 7
      228 GETTABLEKS                       R24 R24 K43 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      230 GETTABLE                         R23 R24 R2
      231 GETTABLEKS                       R24 R17 K41 ["viewId"]
      233 GETTABLE                         R22 R23 R24
      234 GETUPVAL                         R23 10
      235 MOVE                             R24 R21
      236 CALL                             R23 1 2
      237 JUMPIF                           R23 ; [+18]
      238 LOADB                            R27 0
      239 NEWTABLE                         R28 0 1
      241 GETIMPORT                        R29 K13 [string.format]
      243 LOADK                            R30 K44 ["Mesh for %s is completely invisible."]
      244 GETTABLEKS                       R31 R2 K28 ["Name"]
      246 CALL                             R29 2 -1
      247 SETLIST                          R28 R29 -1 [1]
      249 NAMECALL                         R25 R11 K36 ["updateReasons"]
      251 CALL                             R25 3 0
      252 NAMECALL                         R25 R21 K45 ["Destroy"]
      254 CALL                             R25 1 0
      255 JUMP                             ; [+23]
      256 JUMPIFNOTLT                      R24 R22 ; [+19]
      258 LOADB                            R27 0
      259 NEWTABLE                         R28 0 1
      261 GETIMPORT                        R29 K13 [string.format]
      263 LOADK                            R30 K46 ["%s is not opaque enough from the %s. Opacity is %.2f but needs to be above %.2f."]
      264 GETTABLEKS                       R31 R2 K28 ["Name"]
      266 GETTABLEKS                       R32 R17 K41 ["viewId"]
      268 MOVE                             R33 R24
      269 MOVE                             R34 R22
      270 CALL                             R29 5 -1
      271 SETLIST                          R28 R29 -1 [1]
      273 NAMECALL                         R25 R11 K36 ["updateReasons"]
      275 CALL                             R25 3 0
      276 NAMECALL                         R25 R21 K45 ["Destroy"]
      278 CALL                             R25 1 0
      279 FORGLOOP                         R13 2 ; [-105]
      281 NAMECALL                         R13 R11 K47 ["getFinalResults"]
      283 CALL                             R13 1 1
      284 JUMPIF                           R13 ; [+11]
      285 GETUPVAL                         R13 11
      286 GETTABLEKS                       R13 R13 K48 ["reportFailure"]
      288 GETUPVAL                         R14 11
      289 GETTABLEKS                       R14 R14 K49 ["ErrorType"]
      291 GETTABLEKS                       R14 R14 K50 ["validateAssetTransparency_AssetTransparencyThresholds"]
      293 LOADNIL                          R15
      294 MOVE                             R16 R1
      295 CALL                             R13 3 0
      296 NAMECALL                         R13 R11 K47 ["getFinalResults"]
      298 CALL                             R13 1 -1
      299 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["tryYield"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["getEditableMeshFromContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["FailureReasonsAccumulator"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K6 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["BoundsCalculator"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K6 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["RasterUtil"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K6 ["util"]
       58 GETTABLEKS                       R9 R9 K13 ["TransparencyUtil"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K6 ["util"]
       65 GETTABLEKS                       R10 R10 K14 ["getExpectedPartSize"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K15 ["ConstantsTransparencyValidation"]
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K16 [PROTO_0]
       74 CAPTURE                          VAL R10
       75 DUPCLOSURE                       R12 K17 [PROTO_1]
       76 CAPTURE                          VAL R10
       77 DUPCLOSURE                       R13 K18 [PROTO_2]
       78 CAPTURE                          VAL R10
       79 DUPCLOSURE                       R14 K19 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 DUPCLOSURE                       R15 K20 [PROTO_4]
       82 DUPCLOSURE                       R16 K21 [PROTO_5]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R3
       86 DUPCLOSURE                       R17 K22 [PROTO_6]
       87 DUPCLOSURE                       R18 K23 [PROTO_7]
       88 DUPCLOSURE                       R19 K24 [PROTO_8]
       89 CAPTURE                          VAL R18
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R17
      100 CAPTURE                          VAL R1
      101 RETURN                           R19 1
