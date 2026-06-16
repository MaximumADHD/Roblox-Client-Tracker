PROTO_0:
        0 NEWTABLE                         R0 0 6
        2 DUPTABLE                         R1 K4 [{"axis1", "axis2", "normal", "viewId"}]
        3 LOADK                            R2 K5 [{1, 0, 0}]
        4 SETTABLEKS                       R2 R1 K0 ["axis1"]
        6 LOADK                            R2 K6 [{0, 1, 0}]
        7 SETTABLEKS                       R2 R1 K1 ["axis2"]
        9 LOADK                            R2 K7 [{0, 0, 1}]
       10 SETTABLEKS                       R2 R1 K2 ["normal"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K8 ["CAMERA_ANGLES"]
       15 GETTABLEKS                       R2 R2 K9 ["Front"]
       17 SETTABLEKS                       R2 R1 K3 ["viewId"]
       19 DUPTABLE                         R2 K4 [{"axis1", "axis2", "normal", "viewId"}]
       20 LOADK                            R3 K5 [{1, 0, 0}]
       21 SETTABLEKS                       R3 R2 K0 ["axis1"]
       23 LOADK                            R3 K6 [{0, 1, 0}]
       24 SETTABLEKS                       R3 R2 K1 ["axis2"]
       26 LOADK                            R3 K10 [{0, 0, -1}]
       27 SETTABLEKS                       R3 R2 K2 ["normal"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["CAMERA_ANGLES"]
       32 GETTABLEKS                       R3 R3 K11 ["Back"]
       34 SETTABLEKS                       R3 R2 K3 ["viewId"]
       36 DUPTABLE                         R3 K4 [{"axis1", "axis2", "normal", "viewId"}]
       37 LOADK                            R4 K7 [{0, 0, 1}]
       38 SETTABLEKS                       R4 R3 K0 ["axis1"]
       40 LOADK                            R4 K6 [{0, 1, 0}]
       41 SETTABLEKS                       R4 R3 K1 ["axis2"]
       43 LOADK                            R4 K12 [{-1, 0, 0}]
       44 SETTABLEKS                       R4 R3 K2 ["normal"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K8 ["CAMERA_ANGLES"]
       49 GETTABLEKS                       R4 R4 K13 ["Left"]
       51 SETTABLEKS                       R4 R3 K3 ["viewId"]
       53 DUPTABLE                         R4 K4 [{"axis1", "axis2", "normal", "viewId"}]
       54 LOADK                            R5 K7 [{0, 0, 1}]
       55 SETTABLEKS                       R5 R4 K0 ["axis1"]
       57 LOADK                            R5 K6 [{0, 1, 0}]
       58 SETTABLEKS                       R5 R4 K1 ["axis2"]
       60 LOADK                            R5 K5 [{1, 0, 0}]
       61 SETTABLEKS                       R5 R4 K2 ["normal"]
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R5 R5 K8 ["CAMERA_ANGLES"]
       66 GETTABLEKS                       R5 R5 K14 ["Right"]
       68 SETTABLEKS                       R5 R4 K3 ["viewId"]
       70 DUPTABLE                         R5 K4 [{"axis1", "axis2", "normal", "viewId"}]
       71 LOADK                            R6 K5 [{1, 0, 0}]
       72 SETTABLEKS                       R6 R5 K0 ["axis1"]
       74 LOADK                            R6 K7 [{0, 0, 1}]
       75 SETTABLEKS                       R6 R5 K1 ["axis2"]
       77 LOADK                            R6 K15 [{0, -1, 0}]
       78 SETTABLEKS                       R6 R5 K2 ["normal"]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K8 ["CAMERA_ANGLES"]
       83 GETTABLEKS                       R6 R6 K16 ["Top"]
       85 SETTABLEKS                       R6 R5 K3 ["viewId"]
       87 DUPTABLE                         R6 K4 [{"axis1", "axis2", "normal", "viewId"}]
       88 LOADK                            R7 K5 [{1, 0, 0}]
       89 SETTABLEKS                       R7 R6 K0 ["axis1"]
       91 LOADK                            R7 K7 [{0, 0, 1}]
       92 SETTABLEKS                       R7 R6 K1 ["axis2"]
       94 LOADK                            R7 K6 [{0, 1, 0}]
       95 SETTABLEKS                       R7 R6 K2 ["normal"]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R7 R7 K8 ["CAMERA_ANGLES"]
      100 GETTABLEKS                       R7 R7 K17 ["Bottom"]
      102 SETTABLEKS                       R7 R6 K3 ["viewId"]
      104 SETLIST                          R0 R1 6 [1]
      106 RETURN                           R0 1

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
       57 SUBRK                            R5 R5 K6 ["buffer"]
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
      135 DUPTABLE                         R11 K35 [{"min", "max"}]
      136 LOADK                            R12 K36 [{∞, ∞, ∞}]
      137 SETTABLEKS                       R12 R11 K33 ["min"]
      139 LOADK                            R12 K37 [{-∞, -∞, -∞}]
      140 SETTABLEKS                       R12 R11 K34 ["max"]
      142 MOVE                             R12 R7
      143 LOADNIL                          R13
      144 LOADNIL                          R14
      145 FORGPREP                         R12
      146 GETTABLEKS                       R18 R16 K25 ["Name"]
      148 GETTABLE                         R17 R4 R18
      149 JUMPIF                           R17 ; [+14]
      150 GETUPVAL                         R20 1
      151 GETTABLEKS                       R20 R20 K26 ["Keys"]
      153 GETTABLEKS                       R20 R20 K38 ["AssetOpacity_MeshLoadFailed"]
      155 DUPTABLE                         R21 K29 [{"PartName"}]
      156 GETTABLEKS                       R22 R16 K25 ["Name"]
      158 SETTABLEKS                       R22 R21 K28 ["PartName"]
      160 NAMECALL                         R18 R0 K30 ["fail"]
      162 CALL                             R18 3 0
      163 RETURN                           R0 0
      164 GETTABLEKS                       R18 R17 K39 ["editable"]
      166 NAMECALL                         R19 R18 K40 ["Triangulate"]
      168 CALL                             R19 1 0
      169 GETTABLEKS                       R20 R16 K41 ["Size"]
      171 GETTABLEKS                       R21 R16 K42 ["MeshSize"]
      173 DIV                              R19 R20 R21
      174 GETTABLEKS                       R21 R16 K25 ["Name"]
      176 GETTABLE                         R20 R9 R21
      177 JUMPIF                           R20 ; [+3]
      178 GETIMPORT                        R20 K45 [CFrame.new]
      180 CALL                             R20 0 1
      181 NAMECALL                         R21 R18 K46 ["GetFaces"]
      183 CALL                             R21 1 1
      184 MOVE                             R22 R21
      185 LOADNIL                          R23
      186 LOADNIL                          R24
      187 FORGPREP                         R22
      188 GETUPVAL                         R27 4
      189 MOVE                             R28 R18
      190 MOVE                             R29 R10
      191 MOVE                             R30 R26
      192 MOVE                             R31 R20
      193 MOVE                             R32 R19
      194 CALL                             R27 5 1
      195 GETUPVAL                         R28 5
      196 MOVE                             R29 R11
      197 MOVE                             R30 R27
      198 CALL                             R28 2 0
      199 GETUPVAL                         R28 6
      200 MOVE                             R29 R6
      201 CALL                             R28 1 0
      202 FORGLOOP                         R22 2 ; [-15]
      204 FORGLOOP                         R12 2 ; [-59]
      206 GETTABLEKS                       R13 R11 K34 ["max"]
      208 GETTABLEKS                       R14 R11 K33 ["min"]
      210 SUB                              R12 R13 R14
      211 GETTABLEKS                       R12 R12 K47 ["Magnitude"]
      213 JUMPIFNOTEQKN                    R12 K24 [0] ; [+15]
      215 GETUPVAL                         R14 1
      216 GETTABLEKS                       R14 R14 K26 ["Keys"]
      218 GETTABLEKS                       R14 R14 K48 ["AssetOpacity_ZeroSize"]
      220 DUPTABLE                         R15 K50 [{"AssetName"}]
      221 GETTABLEKS                       R16 R3 K25 ["Name"]
      223 SETTABLEKS                       R16 R15 K49 ["AssetName"]
      225 NAMECALL                         R12 R0 K30 ["fail"]
      227 CALL                             R12 3 0
      228 RETURN                           R0 0
      229 GETUPVAL                         R12 7
      230 CALL                             R12 0 1
      231 MOVE                             R13 R12
      232 LOADNIL                          R14
      233 LOADNIL                          R15
      234 FORGPREP                         R13
      235 LENGTH                           R18 R10
      236 JUMPIFNOTEQKN                    R18 K24 [0] ; [+15]
      238 GETUPVAL                         R20 1
      239 GETTABLEKS                       R20 R20 K26 ["Keys"]
      241 GETTABLEKS                       R20 R20 K51 ["AssetOpacity_NoTriangles"]
      243 DUPTABLE                         R21 K50 [{"AssetName"}]
      244 GETTABLEKS                       R22 R3 K25 ["Name"]
      246 SETTABLEKS                       R22 R21 K49 ["AssetName"]
      248 NAMECALL                         R18 R0 K30 ["fail"]
      250 CALL                             R18 3 0
      251 JUMP                             ; [+98]
      252 GETTABLEKS                       R19 R11 K34 ["max"]
      254 GETTABLEKS                       R20 R11 K33 ["min"]
      256 SUB                              R18 R19 R20
      257 GETTABLEKS                       R20 R11 K33 ["min"]
      259 DIVK                             R21 R18 K52 [2]
      260 ADD                              R19 R20 R21
      261 GETIMPORT                        R21 K54 [Vector2.new]
      263 GETUPVAL                         R22 8
      264 GETTABLEKS                       R22 R22 K55 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      266 GETUPVAL                         R23 8
      267 GETTABLEKS                       R23 R23 K55 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      269 CALL                             R21 2 1
      270 GETUPVAL                         R22 9
      271 MOVE                             R23 R18
      272 GETTABLEKS                       R24 R17 K56 ["viewId"]
      274 CALL                             R22 2 1
      275 MUL                              R20 R21 R22
      276 GETUPVAL                         R21 10
      277 GETTABLEKS                       R21 R21 K57 ["rasterMesh"]
      279 MOVE                             R22 R10
      280 MOVE                             R23 R20
      281 MOVE                             R24 R17
      282 MOVE                             R25 R19
      283 MOVE                             R26 R18
      284 MOVE                             R27 R6
      285 CALL                             R21 6 1
      286 GETUPVAL                         R24 8
      287 GETTABLEKS                       R24 R24 K58 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      289 GETTABLE                         R23 R24 R3
      290 GETTABLEKS                       R24 R17 K56 ["viewId"]
      292 GETTABLE                         R22 R23 R24
      293 GETUPVAL                         R23 11
      294 MOVE                             R24 R21
      295 CALL                             R23 1 2
      296 JUMPIF                           R23 ; [+17]
      297 GETUPVAL                         R27 1
      298 GETTABLEKS                       R27 R27 K26 ["Keys"]
      300 GETTABLEKS                       R27 R27 K59 ["AssetOpacity_Invisible"]
      302 DUPTABLE                         R28 K50 [{"AssetName"}]
      303 GETTABLEKS                       R29 R3 K25 ["Name"]
      305 SETTABLEKS                       R29 R28 K49 ["AssetName"]
      307 NAMECALL                         R25 R0 K30 ["fail"]
      309 CALL                             R25 3 0
      310 NAMECALL                         R25 R21 K60 ["Destroy"]
      312 CALL                             R25 1 0
      313 JUMP                             ; [+36]
      314 JUMPIFNOTLT                      R24 R22 ; [+32]
      316 GETUPVAL                         R27 1
      317 GETTABLEKS                       R27 R27 K26 ["Keys"]
      319 GETTABLEKS                       R27 R27 K61 ["AssetOpacity_BelowThreshold"]
      321 DUPTABLE                         R28 K65 [{"AssetName", "ViewName", "Opacity", "Threshold"}]
      322 GETTABLEKS                       R29 R3 K25 ["Name"]
      324 SETTABLEKS                       R29 R28 K49 ["AssetName"]
      326 GETTABLEKS                       R29 R17 K56 ["viewId"]
      328 SETTABLEKS                       R29 R28 K62 ["ViewName"]
      330 GETIMPORT                        R29 K68 [string.format]
      332 LOADK                            R30 K69 ["%.2f"]
      333 MOVE                             R31 R24
      334 CALL                             R29 2 1
      335 SETTABLEKS                       R29 R28 K63 ["Opacity"]
      337 GETIMPORT                        R29 K68 [string.format]
      339 LOADK                            R30 K69 ["%.2f"]
      340 MOVE                             R31 R22
      341 CALL                             R29 2 1
      342 SETTABLEKS                       R29 R28 K64 ["Threshold"]
      344 NAMECALL                         R25 R0 K30 ["fail"]
      346 CALL                             R25 3 0
      347 NAMECALL                         R25 R21 K60 ["Destroy"]
      349 CALL                             R25 1 0
      350 FORGLOOP                         R13 2 ; [-116]
      352 RETURN                           R0 0

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
