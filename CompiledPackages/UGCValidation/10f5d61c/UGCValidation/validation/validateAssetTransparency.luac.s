PROTO_0:
        0 NEWTABLE                         R0 0 6
        2 DUPTABLE                         R1 K4 [{"axis1", "axis2", "normal", "viewId"}]
        3 LOADK                            R2 K5 [{1, 0, 0}]
        4 SETTABLEKS                       R2 R1 K0 ["axis1"]
        6 LOADK                            R2 K6 [{0, 1, 0}]
        7 SETTABLEKS                       R2 R1 K1 ["axis2"]
        9 LOADK                            R2 K7 [{0, 0, 1}]
       10 SETTABLEKS                       R2 R1 K2 ["normal"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K8 ["CAMERA_ANGLES"]
       15 GETTABLEKS                       R2 R3 K9 ["Front"]
       17 SETTABLEKS                       R2 R1 K3 ["viewId"]
       19 DUPTABLE                         R2 K4 [{"axis1", "axis2", "normal", "viewId"}]
       20 LOADK                            R3 K5 [{1, 0, 0}]
       21 SETTABLEKS                       R3 R2 K0 ["axis1"]
       23 LOADK                            R3 K6 [{0, 1, 0}]
       24 SETTABLEKS                       R3 R2 K1 ["axis2"]
       26 LOADK                            R3 K10 [{0, 0, -1}]
       27 SETTABLEKS                       R3 R2 K2 ["normal"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K8 ["CAMERA_ANGLES"]
       32 GETTABLEKS                       R3 R4 K11 ["Back"]
       34 SETTABLEKS                       R3 R2 K3 ["viewId"]
       36 DUPTABLE                         R3 K4 [{"axis1", "axis2", "normal", "viewId"}]
       37 LOADK                            R4 K7 [{0, 0, 1}]
       38 SETTABLEKS                       R4 R3 K0 ["axis1"]
       40 LOADK                            R4 K6 [{0, 1, 0}]
       41 SETTABLEKS                       R4 R3 K1 ["axis2"]
       43 LOADK                            R4 K12 [{-1, 0, 0}]
       44 SETTABLEKS                       R4 R3 K2 ["normal"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K8 ["CAMERA_ANGLES"]
       49 GETTABLEKS                       R4 R5 K13 ["Left"]
       51 SETTABLEKS                       R4 R3 K3 ["viewId"]
       53 DUPTABLE                         R4 K4 [{"axis1", "axis2", "normal", "viewId"}]
       54 LOADK                            R5 K7 [{0, 0, 1}]
       55 SETTABLEKS                       R5 R4 K0 ["axis1"]
       57 LOADK                            R5 K6 [{0, 1, 0}]
       58 SETTABLEKS                       R5 R4 K1 ["axis2"]
       60 LOADK                            R5 K5 [{1, 0, 0}]
       61 SETTABLEKS                       R5 R4 K2 ["normal"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K8 ["CAMERA_ANGLES"]
       66 GETTABLEKS                       R5 R6 K14 ["Right"]
       68 SETTABLEKS                       R5 R4 K3 ["viewId"]
       70 DUPTABLE                         R5 K4 [{"axis1", "axis2", "normal", "viewId"}]
       71 LOADK                            R6 K5 [{1, 0, 0}]
       72 SETTABLEKS                       R6 R5 K0 ["axis1"]
       74 LOADK                            R6 K7 [{0, 0, 1}]
       75 SETTABLEKS                       R6 R5 K1 ["axis2"]
       77 LOADK                            R6 K15 [{0, -1, 0}]
       78 SETTABLEKS                       R6 R5 K2 ["normal"]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K8 ["CAMERA_ANGLES"]
       83 GETTABLEKS                       R6 R7 K16 ["Top"]
       85 SETTABLEKS                       R6 R5 K3 ["viewId"]
       87 DUPTABLE                         R6 K4 [{"axis1", "axis2", "normal", "viewId"}]
       88 LOADK                            R7 K5 [{1, 0, 0}]
       89 SETTABLEKS                       R7 R6 K0 ["axis1"]
       91 LOADK                            R7 K7 [{0, 0, 1}]
       92 SETTABLEKS                       R7 R6 K1 ["axis2"]
       94 LOADK                            R7 K6 [{0, 1, 0}]
       95 SETTABLEKS                       R7 R6 K2 ["normal"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K8 ["CAMERA_ANGLES"]
      100 GETTABLEKS                       R7 R8 K17 ["Bottom"]
      102 SETTABLEKS                       R7 R6 K3 ["viewId"]
      104 SETLIST                          R0 R1 6 [1]
      106 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["AvatarPartScaleType"]
        2 LOADB                            R5 1
        3 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        5 CALL                             R2 3 1
        6 JUMPIFNOT                        R2 ; [+14]
        7 LOADK                            R5 K2 ["StringValue"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+9]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["AvatarPartScaleTypes"]
       15 GETTABLEKS                       R5 R2 K5 ["Value"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIFNOT                        R3 ; [+2]
       19 GETTABLEKS                       R1 R2 K5 ["Value"]
       21 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R3
        1 LOADK                            R6 K0 ["AvatarPartScaleType"]
        2 LOADB                            R7 1
        3 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
        5 CALL                             R4 3 1
        6 JUMPIFNOT                        R4 ; [+14]
        7 LOADK                            R7 K2 ["StringValue"]
        8 NAMECALL                         R5 R4 K3 ["IsA"]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+9]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["AvatarPartScaleTypes"]
       15 GETTABLEKS                       R7 R4 K5 ["Value"]
       17 GETTABLE                         R5 R6 R7
       18 JUMPIFNOT                        R5 ; [+2]
       19 GETTABLEKS                       R3 R4 K5 ["Value"]
       21 MOVE                             R2 R3
       22 JUMPIF                           R2 ; [+2]
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K6 ["ASSET_TYPE_INFO"]
       28 GETTABLE                         R6 R7 R1
       29 GETTABLEKS                       R5 R6 K7 ["bounds"]
       31 GETTABLE                         R4 R5 R2
       32 GETTABLEKS                       R3 R4 K8 ["minSize"]
       34 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [CFrame.fromMatrix]
        2 LOADK                            R3 K3 [{0, 0, 0}]
        3 GETTABLEKS                       R4 R1 K4 ["axis1"]
        5 GETTABLEKS                       R5 R1 K5 ["axis2"]
        7 GETTABLEKS                       R6 R1 K6 ["normal"]
        9 NAMECALL                         R6 R6 K7 ["Abs"]
       11 CALL                             R6 1 -1
       12 CALL                             R2 -1 1
       13 MUL                              R3 R2 R0
       14 GETIMPORT                        R4 K10 [Vector2.new]
       16 GETTABLEKS                       R5 R3 K11 ["X"]
       18 GETTABLEKS                       R6 R3 K12 ["Y"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 MUL                              R2 R3 R4
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["AREA_OF_INTEREST_TARGET_PIXELS"]
        8 DIV                              R4 R5 R2
        9 FASTCALL1                        MATH_SQRT R4 ; [+2]
       10 GETIMPORT                        R3 K5 [math.sqrt]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R5 R1 K0 ["X"]
       15 GETTABLEKS                       R6 R1 K1 ["Y"]
       17 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       19 GETIMPORT                        R4 K7 [math.max]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K8 ["ASSET_TRANSPARENCY_MAX_RASTER_SIZE"]
       25 DIV                              R5 R6 R4
       26 FASTCALL2                        MATH_MIN R3 R5 ; [+5]
       28 MOVE                             R7 R3
       29 MOVE                             R8 R5
       30 GETIMPORT                        R6 K10 [math.min]
       32 CALL                             R6 2 1
       33 RETURN                           R6 1

PROTO_5:
        0 MUL                              R2 R1 R0
        1 GETIMPORT                        R3 K2 [Vector2.new]
        3 GETTABLEKS                       R6 R2 K4 ["X"]
        5 ADDK                             R5 R6 K3 [0.001]
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K7 [math.floor]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R7 R2 K8 ["Y"]
       12 ADDK                             R6 R7 K3 [0.001]
       13 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       14 GETIMPORT                        R5 K7 [math.floor]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CAMERA_ANGLES"]
        3 GETTABLEKS                       R2 R3 K1 ["Front"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["CAMERA_ANGLES"]
       10 GETTABLEKS                       R2 R3 K2 ["Back"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+7]
       14 GETTABLEKS                       R3 R0 K3 ["X"]
       16 GETTABLEKS                       R4 R0 K4 ["Y"]
       18 DIV                              R2 R3 R4
       19 RETURN                           R2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K0 ["CAMERA_ANGLES"]
       23 GETTABLEKS                       R2 R3 K5 ["Left"]
       25 JUMPIFEQ                         R1 R2 ; [+8]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["CAMERA_ANGLES"]
       30 GETTABLEKS                       R2 R3 K6 ["Right"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+7]
       34 GETTABLEKS                       R3 R0 K7 ["Z"]
       36 GETTABLEKS                       R4 R0 K4 ["Y"]
       38 DIV                              R2 R3 R4
       39 RETURN                           R2 1
       40 GETTABLEKS                       R3 R0 K3 ["X"]
       42 GETTABLEKS                       R4 R0 K7 ["Z"]
       44 DIV                              R2 R3 R4
       45 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["CAMERA_ANGLES"]
        3 GETTABLEKS                       R3 R4 K1 ["Front"]
        5 JUMPIFEQ                         R1 R3 ; [+8]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["CAMERA_ANGLES"]
       10 GETTABLEKS                       R3 R4 K2 ["Back"]
       12 JUMPIFNOTEQ                      R1 R3 ; [+7]
       14 GETTABLEKS                       R3 R0 K3 ["X"]
       16 GETTABLEKS                       R4 R0 K4 ["Y"]
       18 DIV                              R2 R3 R4
       19 JUMP                             ; [+26]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["CAMERA_ANGLES"]
       23 GETTABLEKS                       R3 R4 K5 ["Left"]
       25 JUMPIFEQ                         R1 R3 ; [+8]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K0 ["CAMERA_ANGLES"]
       30 GETTABLEKS                       R3 R4 K6 ["Right"]
       32 JUMPIFNOTEQ                      R1 R3 ; [+7]
       34 GETTABLEKS                       R3 R0 K7 ["Z"]
       36 GETTABLEKS                       R4 R0 K4 ["Y"]
       38 DIV                              R2 R3 R4
       39 JUMP                             ; [+6]
       40 GETTABLEKS                       R3 R0 K3 ["X"]
       42 GETTABLEKS                       R4 R0 K7 ["Z"]
       44 DIV                              R2 R3 R4
       45 JUMP                             ; [0]
       46 LOADNIL                          R3
       47 LOADNIL                          R4
       48 LOADN                            R5 1
       49 JUMPIFNOTLT                      R5 R2 ; [+9]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R5 R6 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       54 DIV                              R4 R5 R2
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R3 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       58 JUMP                             ; [+17]
       59 LOADN                            R5 1
       60 JUMPIFNOTLT                      R2 R5 ; [+9]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R5 R6 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       65 MUL                              R3 R5 R2
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R4 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       69 JUMP                             ; [+6]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R3 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R4 R5 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       76 GETIMPORT                        R5 K11 [Vector2.new]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R7 R8 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       81 DIV                              R6 R3 R7
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K8 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
       85 DIV                              R7 R4 R8
       86 CALL                             R5 2 1
       87 GETTABLEKS                       R7 R5 K3 ["X"]
       89 GETTABLEKS                       R8 R5 K4 ["Y"]
       91 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       93 GETIMPORT                        R6 K14 [math.max]
       95 CALL                             R6 2 1
       96 LOADN                            R7 1
       97 JUMPIFNOTLT                      R7 R6 ; [+3]
       99 DIV                              R7 R5 R6
      100 RETURN                           R7 1
      101 RETURN                           R5 1

PROTO_8:
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
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K4 ["transformTriangleToWorld"]
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

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["min"]
        2 GETTABLEKS                       R2 R3 K1 ["X"]
        4 GETTABLEKS                       R4 R0 K2 ["max"]
        6 GETTABLEKS                       R3 R4 K1 ["X"]
        8 GETTABLEKS                       R5 R0 K0 ["min"]
       10 GETTABLEKS                       R4 R5 K3 ["Y"]
       12 GETTABLEKS                       R6 R0 K2 ["max"]
       14 GETTABLEKS                       R5 R6 K3 ["Y"]
       16 GETTABLEKS                       R7 R0 K0 ["min"]
       18 GETTABLEKS                       R6 R7 K4 ["Z"]
       20 GETTABLEKS                       R8 R0 K2 ["max"]
       22 GETTABLEKS                       R7 R8 K4 ["Z"]
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R5 R1 K0 ["X"]
        2 GETTABLEKS                       R6 R1 K1 ["Y"]
        4 MUL                              R4 R5 R6
        5 MOVE                             R7 R0
        6 MOVE                             R8 R1
        7 NAMECALL                         R5 R2 K2 ["GetAreaDensity"]
        9 CALL                             R5 3 1
       10 DIV                              R6 R5 R4
       11 MOVE                             R7 R6
       12 JUMPIFNOT                        R3 ; [+51]
       13 GETIMPORT                        R9 K5 [Vector2.one]
       15 SUB                              R8 R9 R3
       16 MOVE                             R11 R3
       17 NAMECALL                         R9 R1 K6 ["Dot"]
       19 CALL                             R9 2 1
       20 MOVE                             R12 R8
       21 NAMECALL                         R10 R1 K6 ["Dot"]
       23 CALL                             R10 2 1
       24 MUL                              R11 R8 R10
       25 GETIMPORT                        R13 K5 [Vector2.one]
       27 NAMECALL                         R11 R11 K7 ["Max"]
       29 CALL                             R11 2 1
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K8 ["DISTRIBUTION_SLICE_MAX"]
       33 MUL                              R12 R10 R13
       34 LOADN                            R13 0
       35 MUL                              R14 R12 R9
       36 LOADN                            R17 0
       37 MOVE                             R15 R9
       38 LOADN                            R16 1
       39 FORNPREP                         R15
       40 MUL                              R19 R3 R17
       41 ADD                              R18 R0 R19
       42 MOVE                             R21 R18
       43 MOVE                             R22 R11
       44 NAMECALL                         R19 R2 K2 ["GetAreaDensity"]
       46 CALL                             R19 3 1
       47 FASTCALL2                        MATH_MIN R19 R12 ; [+5]
       49 MOVE                             R21 R19
       50 MOVE                             R22 R12
       51 GETIMPORT                        R20 K11 [math.min]
       53 CALL                             R20 2 1
       54 ADD                              R13 R13 R20
       55 FORNLOOP                         R15
       56 DIV                              R15 R13 R14
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R16 R17 K12 ["DISTRIBUTION_SCORE_WEIGHT"]
       60 SUBRK                            R17 R13 K16 [NULL]
       61 MUL                              R18 R15 R16
       62 MUL                              R19 R6 R17
       63 ADD                              R7 R18 R19
       64 RETURN                           R7 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["R"]
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+11]
        5 GETTABLEKS                       R1 R0 K1 ["G"]
        7 LOADN                            R2 0
        8 JUMPIFLT                         R2 R1 ; [+6]
       10 GETTABLEKS                       R1 R0 K2 ["B"]
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+3]
       15 LOADN                            R1 1
       16 RETURN                           R1 1
       17 LOADN                            R1 0
       18 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K1 ["Y"]
        4 MUL                              R3 R4 R5
        5 LOADN                            R4 0
        6 JUMPIFNOTLE                      R3 R4 ; [+3]
        8 LOADN                            R4 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["new"]
       13 GETTABLEKS                       R5 R0 K3 ["Size"]
       15 DUPCLOSURE                       R6 K4 [PROTO_13]
       16 CALL                             R4 2 1
       17 MOVE                             R7 R0
       18 NAMECALL                         R5 R4 K5 ["BuildSummedAreaTable"]
       20 CALL                             R5 2 0
       21 LOADNIL                          R5
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K6 ["DISTRIBUTION_ASPECT_CUTOFF"]
       25 JUMPIFNOT                        R6 ; [+25]
       26 GETTABLEKS                       R7 R1 K0 ["X"]
       28 GETTABLEKS                       R8 R1 K1 ["Y"]
       30 DIV                              R6 R7 R8
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K6 ["DISTRIBUTION_ASPECT_CUTOFF"]
       34 JUMPIFNOTLE                      R7 R6 ; [+4]
       36 GETIMPORT                        R5 K9 [Vector2.xAxis]
       38 JUMP                             ; [+12]
       39 GETTABLEKS                       R7 R1 K1 ["Y"]
       41 GETTABLEKS                       R8 R1 K0 ["X"]
       43 DIV                              R6 R7 R8
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R7 R8 K6 ["DISTRIBUTION_ASPECT_CUTOFF"]
       47 JUMPIFNOTLE                      R7 R6 ; [+3]
       49 GETIMPORT                        R5 K11 [Vector2.yAxis]
       51 LOADN                            R6 0
       52 GETTABLEKS                       R9 R0 K3 ["Size"]
       54 GETTABLEKS                       R8 R9 K1 ["Y"]
       56 GETTABLEKS                       R9 R1 K1 ["Y"]
       58 SUB                              R7 R8 R9
       59 GETTABLEKS                       R10 R0 K3 ["Size"]
       61 GETTABLEKS                       R9 R10 K0 ["X"]
       63 GETTABLEKS                       R10 R1 K0 ["X"]
       65 SUB                              R8 R9 R10
       66 LOADN                            R11 0
       67 MOVE                             R9 R7
       68 LOADN                            R10 1
       69 FORNPREP                         R9
       70 LOADN                            R14 0
       71 MOVE                             R12 R8
       72 LOADN                            R13 1
       73 FORNPREP                         R12
       74 GETIMPORT                        R15 K12 [Vector2.new]
       76 MOVE                             R16 R14
       77 MOVE                             R17 R11
       78 CALL                             R15 2 1
       79 GETUPVAL                         R16 2
       80 MOVE                             R17 R15
       81 MOVE                             R18 R1
       82 MOVE                             R19 R4
       83 MOVE                             R20 R5
       84 CALL                             R16 4 1
       85 JUMPIFNOTLE                      R2 R16 ; [+2]
       87 RETURN                           R16 1
       88 FASTCALL2                        MATH_MAX R6 R16 ; [+5]
       90 MOVE                             R18 R6
       91 MOVE                             R19 R16
       92 GETIMPORT                        R17 K15 [math.max]
       94 CALL                             R17 2 1
       95 MOVE                             R6 R17
       96 FORNLOOP                         R12
       97 FORNLOOP                         R9
       98 RETURN                           R6 1

PROTO_15:
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

PROTO_16:
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
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R6 R7 K20 ["calculateIndividualAssetPartsData"]
       85 MOVE                             R7 R0
       86 MOVE                             R8 R1
       87 CALL                             R6 2 3
       88 JUMPIF                           R6 ; [+3]
       89 LOADB                            R9 0
       90 MOVE                             R10 R7
       91 RETURN                           R9 2
       92 NEWTABLE                         R9 0 0
       94 DUPTABLE                         R10 K23 [{"min", "max"}]
       95 LOADK                            R11 K24 [{∞, ∞, ∞}]
       96 SETTABLEKS                       R11 R10 K21 ["min"]
       98 LOADK                            R11 K25 [{-∞, -∞, -∞}]
       99 SETTABLEKS                       R11 R10 K22 ["max"]
      101 MOVE                             R11 R3
      102 LOADNIL                          R12
      103 LOADNIL                          R13
      104 FORGPREP                         R11
      105 GETUPVAL                         R16 2
      106 MOVE                             R17 R15
      107 LOADK                            R18 K26 ["MeshId"]
      108 MOVE                             R19 R1
      109 CALL                             R16 3 2
      110 JUMPIF                           R16 ; [+12]
      111 LOADB                            R18 0
      112 NEWTABLE                         R19 0 1
      114 GETIMPORT                        R20 K13 [string.format]
      116 LOADK                            R21 K27 ["Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again."]
      117 GETTABLEKS                       R22 R15 K28 ["Name"]
      119 CALL                             R20 2 -1
      120 SETLIST                          R19 R20 -1 [1]
      122 RETURN                           R18 2
      123 NAMECALL                         R18 R17 K29 ["Triangulate"]
      125 CALL                             R18 1 0
      126 GETUPVAL                         R19 3
      127 MOVE                             R20 R15
      128 MOVE                             R21 R1
      129 CALL                             R19 2 1
      130 GETUPVAL                         R20 3
      131 MOVE                             R21 R15
      132 MOVE                             R22 R1
      133 LOADB                            R23 1
      134 CALL                             R20 3 1
      135 DIV                              R18 R19 R20
      136 GETUPVAL                         R19 4
      137 MOVE                             R20 R17
      138 MOVE                             R21 R9
      139 GETTABLEKS                       R24 R15 K28 ["Name"]
      141 GETTABLE                         R23 R8 R24
      142 GETTABLEKS                       R22 R23 K30 ["cframe"]
      144 MOVE                             R23 R10
      145 MOVE                             R24 R18
      146 MOVE                             R25 R1
      147 CALL                             R19 6 0
      148 FORGLOOP                         R11 2 ; [-44]
      150 GETTABLEKS                       R13 R10 K22 ["max"]
      152 GETTABLEKS                       R14 R10 K21 ["min"]
      154 SUB                              R12 R13 R14
      155 GETTABLEKS                       R11 R12 K31 ["Magnitude"]
      157 JUMPIFNOTEQKN                    R11 K32 [0] ; [+13]
      159 LOADB                            R11 0
      160 NEWTABLE                         R12 0 1
      162 GETIMPORT                        R13 K13 [string.format]
      164 LOADK                            R14 K33 ["Meshes %s should not have zero size"]
      165 GETTABLEKS                       R15 R2 K28 ["Name"]
      167 CALL                             R13 2 -1
      168 SETLIST                          R12 R13 -1 [1]
      170 RETURN                           R11 2
      171 GETUPVAL                         R11 5
      172 CALL                             R11 0 1
      173 JUMPIFNOT                        R11 ; [+284]
      174 GETTABLEKS                       R12 R10 K22 ["max"]
      176 GETTABLEKS                       R13 R10 K21 ["min"]
      178 SUB                              R11 R12 R13
      179 GETTABLEKS                       R13 R10 K21 ["min"]
      181 DIVK                             R14 R11 K34 [2]
      182 ADD                              R12 R13 R14
      183 LOADNIL                          R15
      184 LOADK                            R18 K35 ["AvatarPartScaleType"]
      185 LOADB                            R19 1
      186 NAMECALL                         R16 R0 K36 ["FindFirstChild"]
      188 CALL                             R16 3 1
      189 JUMPIFNOT                        R16 ; [+14]
      190 LOADK                            R19 K37 ["StringValue"]
      191 NAMECALL                         R17 R16 K2 ["IsA"]
      193 CALL                             R17 2 1
      194 JUMPIFNOT                        R17 ; [+9]
      195 GETUPVAL                         R19 6
      196 GETTABLEKS                       R18 R19 K38 ["AvatarPartScaleTypes"]
      198 GETTABLEKS                       R19 R16 K39 ["Value"]
      200 GETTABLE                         R17 R18 R19
      201 JUMPIFNOT                        R17 ; [+2]
      202 GETTABLEKS                       R15 R16 K39 ["Value"]
      204 MOVE                             R14 R15
      205 JUMPIF                           R14 ; [+2]
      206 LOADNIL                          R13
      207 JUMP                             ; [+9]
      208 GETUPVAL                         R19 6
      209 GETTABLEKS                       R18 R19 K40 ["ASSET_TYPE_INFO"]
      211 GETTABLE                         R17 R18 R2
      212 GETTABLEKS                       R16 R17 K41 ["bounds"]
      214 GETTABLE                         R15 R16 R14
      215 GETTABLEKS                       R13 R15 K42 ["minSize"]
      217 JUMPIF                           R13 ; [+4]
      218 LOADB                            R14 0
      219 NEWTABLE                         R15 0 0
      221 RETURN                           R14 2
      222 MOVE                             R16 R13
      223 NAMECALL                         R14 R11 K43 ["Max"]
      225 CALL                             R14 2 1
      226 GETUPVAL                         R16 7
      227 GETTABLEKS                       R15 R16 K44 ["new"]
      229 CALL                             R15 0 1
      230 GETUPVAL                         R16 8
      231 CALL                             R16 0 1
      232 MOVE                             R17 R16
      233 LOADNIL                          R18
      234 LOADNIL                          R19
      235 FORGPREP                         R17
      236 LENGTH                           R22 R9
      237 JUMPIFNOTEQKN                    R22 K32 [0] ; [+16]
      239 LOADB                            R24 0
      240 NEWTABLE                         R25 0 1
      242 GETIMPORT                        R26 K13 [string.format]
      244 LOADK                            R27 K45 ["Mesh for %s has no triangles."]
      245 GETTABLEKS                       R28 R2 K28 ["Name"]
      247 CALL                             R26 2 -1
      248 SETLIST                          R25 R26 -1 [1]
      250 NAMECALL                         R22 R15 K46 ["updateReasons"]
      252 CALL                             R22 3 0
      253 JUMP                             ; [+183]
      254 GETIMPORT                        R23 K49 [CFrame.fromMatrix]
      256 LOADK                            R24 K50 [{0, 0, 0}]
      257 GETTABLEKS                       R25 R21 K51 ["axis1"]
      259 GETTABLEKS                       R26 R21 K52 ["axis2"]
      261 GETTABLEKS                       R27 R21 K53 ["normal"]
      263 NAMECALL                         R27 R27 K54 ["Abs"]
      265 CALL                             R27 1 -1
      266 CALL                             R23 -1 1
      267 MUL                              R24 R23 R14
      268 GETIMPORT                        R25 K56 [Vector2.new]
      270 GETTABLEKS                       R26 R24 K57 ["X"]
      272 GETTABLEKS                       R27 R24 K58 ["Y"]
      274 CALL                             R25 2 1
      275 MOVE                             R22 R25
      276 GETIMPORT                        R24 K49 [CFrame.fromMatrix]
      278 LOADK                            R25 K50 [{0, 0, 0}]
      279 GETTABLEKS                       R26 R21 K51 ["axis1"]
      281 GETTABLEKS                       R27 R21 K52 ["axis2"]
      283 GETTABLEKS                       R28 R21 K53 ["normal"]
      285 NAMECALL                         R28 R28 K54 ["Abs"]
      287 CALL                             R28 1 -1
      288 CALL                             R24 -1 1
      289 MUL                              R25 R24 R13
      290 GETIMPORT                        R26 K56 [Vector2.new]
      292 GETTABLEKS                       R27 R25 K57 ["X"]
      294 GETTABLEKS                       R28 R25 K58 ["Y"]
      296 CALL                             R26 2 1
      297 MOVE                             R23 R26
      298 GETTABLEKS                       R26 R23 K57 ["X"]
      300 GETTABLEKS                       R27 R23 K58 ["Y"]
      302 MUL                              R25 R26 R27
      303 GETUPVAL                         R29 9
      304 GETTABLEKS                       R28 R29 K59 ["AREA_OF_INTEREST_TARGET_PIXELS"]
      306 DIV                              R27 R28 R25
      307 FASTCALL1                        MATH_SQRT R27 ; [+2]
      308 GETIMPORT                        R26 K62 [math.sqrt]
      310 CALL                             R26 1 1
      311 GETTABLEKS                       R28 R22 K57 ["X"]
      313 GETTABLEKS                       R29 R22 K58 ["Y"]
      315 FASTCALL2                        MATH_MAX R28 R29 ; [+3]
      317 GETIMPORT                        R27 K63 [math.max]
      319 CALL                             R27 2 1
      320 GETUPVAL                         R30 9
      321 GETTABLEKS                       R29 R30 K64 ["ASSET_TRANSPARENCY_MAX_RASTER_SIZE"]
      323 DIV                              R28 R29 R27
      324 FASTCALL2                        MATH_MIN R26 R28 ; [+5]
      326 MOVE                             R30 R26
      327 MOVE                             R31 R28
      328 GETIMPORT                        R29 K65 [math.min]
      330 CALL                             R29 2 1
      331 MOVE                             R24 R29
      332 MUL                              R26 R22 R24
      333 GETIMPORT                        R27 K56 [Vector2.new]
      335 GETTABLEKS                       R30 R26 K57 ["X"]
      337 ADDK                             R29 R30 K66 [0.001]
      338 FASTCALL1                        MATH_FLOOR R29 ; [+2]
      339 GETIMPORT                        R28 K68 [math.floor]
      341 CALL                             R28 1 1
      342 GETTABLEKS                       R31 R26 K58 ["Y"]
      344 ADDK                             R30 R31 K66 [0.001]
      345 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      346 GETIMPORT                        R29 K68 [math.floor]
      348 CALL                             R29 1 1
      349 CALL                             R27 2 1
      350 MOVE                             R25 R27
      351 MUL                              R27 R23 R24
      352 GETIMPORT                        R28 K56 [Vector2.new]
      354 GETTABLEKS                       R31 R27 K57 ["X"]
      356 ADDK                             R30 R31 K66 [0.001]
      357 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      358 GETIMPORT                        R29 K68 [math.floor]
      360 CALL                             R29 1 1
      361 GETTABLEKS                       R32 R27 K58 ["Y"]
      363 ADDK                             R31 R32 K66 [0.001]
      364 FASTCALL1                        MATH_FLOOR R31 ; [+2]
      365 GETIMPORT                        R30 K68 [math.floor]
      367 CALL                             R30 1 1
      368 CALL                             R28 2 1
      369 MOVE                             R26 R28
      370 GETUPVAL                         R28 10
      371 GETTABLEKS                       R27 R28 K69 ["rasterMesh"]
      373 MOVE                             R28 R9
      374 MOVE                             R29 R25
      375 MOVE                             R30 R21
      376 MOVE                             R31 R12
      377 MOVE                             R32 R14
      378 MOVE                             R33 R1
      379 CALL                             R27 6 1
      380 GETUPVAL                         R31 9
      381 GETTABLEKS                       R30 R31 K70 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      383 GETTABLE                         R29 R30 R2
      384 GETTABLEKS                       R30 R21 K71 ["viewId"]
      386 GETTABLE                         R28 R29 R30
      387 GETUPVAL                         R29 11
      388 MOVE                             R30 R27
      389 MOVE                             R31 R26
      390 MOVE                             R32 R28
      391 CALL                             R29 3 1
      392 NAMECALL                         R30 R27 K72 ["Destroy"]
      394 CALL                             R30 1 0
      395 JUMPIFNOTEQKN                    R29 K32 [0] ; [+21]
      397 LOADN                            R30 0
      398 JUMPIFNOTLT                      R30 R28 ; [+18]
      400 LOADB                            R32 0
      401 NEWTABLE                         R33 0 1
      403 GETIMPORT                        R34 K13 [string.format]
      405 LOADK                            R35 K73 ["Mesh for %s is completely invisible from the %s."]
      406 GETTABLEKS                       R36 R2 K28 ["Name"]
      408 GETTABLEKS                       R37 R21 K71 ["viewId"]
      410 CALL                             R34 3 -1
      411 SETLIST                          R33 R34 -1 [1]
      413 NAMECALL                         R30 R15 K46 ["updateReasons"]
      415 CALL                             R30 3 0
      416 JUMP                             ; [+20]
      417 JUMPIFNOTLT                      R29 R28 ; [+19]
      419 LOADB                            R32 0
      420 NEWTABLE                         R33 0 1
      422 GETIMPORT                        R34 K13 [string.format]
      424 LOADK                            R35 K74 ["%s is not visible enough from the %s. The most visible region found, scored %.2f but needs to be above %.2f."]
      425 GETTABLEKS                       R36 R2 K28 ["Name"]
      427 GETTABLEKS                       R37 R21 K71 ["viewId"]
      429 MOVE                             R38 R29
      430 MOVE                             R39 R28
      431 CALL                             R34 5 -1
      432 SETLIST                          R33 R34 -1 [1]
      434 NAMECALL                         R30 R15 K46 ["updateReasons"]
      436 CALL                             R30 3 0
      437 FORGLOOP                         R17 2 ; [-202]
      439 NAMECALL                         R17 R15 K75 ["getFinalResults"]
      441 CALL                             R17 1 1
      442 JUMPIF                           R17 ; [+11]
      443 GETUPVAL                         R18 12
      444 GETTABLEKS                       R17 R18 K76 ["reportFailure"]
      446 GETUPVAL                         R20 12
      447 GETTABLEKS                       R19 R20 K77 ["ErrorType"]
      449 GETTABLEKS                       R18 R19 K78 ["validateAssetTransparency_AssetTransparencyThresholds"]
      451 LOADNIL                          R19
      452 MOVE                             R20 R1
      453 CALL                             R17 3 0
      454 NAMECALL                         R17 R15 K75 ["getFinalResults"]
      456 CALL                             R17 1 -1
      457 RETURN                           R17 -1
      458 GETUPVAL                         R12 7
      459 GETTABLEKS                       R11 R12 K44 ["new"]
      461 CALL                             R11 0 1
      462 GETUPVAL                         R12 8
      463 CALL                             R12 0 1
      464 MOVE                             R13 R12
      465 LOADNIL                          R14
      466 LOADNIL                          R15
      467 FORGPREP                         R13
      468 LENGTH                           R18 R9
      469 JUMPIFNOTEQKN                    R18 K32 [0] ; [+16]
      471 LOADB                            R20 0
      472 NEWTABLE                         R21 0 1
      474 GETIMPORT                        R22 K13 [string.format]
      476 LOADK                            R23 K45 ["Mesh for %s has no triangles."]
      477 GETTABLEKS                       R24 R2 K28 ["Name"]
      479 CALL                             R22 2 -1
      480 SETLIST                          R21 R22 -1 [1]
      482 NAMECALL                         R18 R11 K46 ["updateReasons"]
      484 CALL                             R18 3 0
      485 JUMP                             ; [+86]
      486 GETTABLEKS                       R19 R10 K22 ["max"]
      488 GETTABLEKS                       R20 R10 K21 ["min"]
      490 SUB                              R18 R19 R20
      491 GETTABLEKS                       R20 R10 K21 ["min"]
      493 DIVK                             R21 R18 K34 [2]
      494 ADD                              R19 R20 R21
      495 GETIMPORT                        R21 K56 [Vector2.new]
      497 GETUPVAL                         R23 9
      498 GETTABLEKS                       R22 R23 K79 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      500 GETUPVAL                         R24 9
      501 GETTABLEKS                       R23 R24 K79 ["ASSET_TRANSPARENCY_RASTER_SIZE"]
      503 CALL                             R21 2 1
      504 GETUPVAL                         R22 13
      505 MOVE                             R23 R18
      506 GETTABLEKS                       R24 R17 K71 ["viewId"]
      508 CALL                             R22 2 1
      509 MUL                              R20 R21 R22
      510 GETUPVAL                         R22 10
      511 GETTABLEKS                       R21 R22 K69 ["rasterMesh"]
      513 MOVE                             R22 R9
      514 MOVE                             R23 R20
      515 MOVE                             R24 R17
      516 MOVE                             R25 R19
      517 MOVE                             R26 R18
      518 MOVE                             R27 R1
      519 CALL                             R21 6 1
      520 GETUPVAL                         R25 9
      521 GETTABLEKS                       R24 R25 K70 ["ASSET_TRANSPARENCY_THRESHOLDS"]
      523 GETTABLE                         R23 R24 R2
      524 GETTABLEKS                       R24 R17 K71 ["viewId"]
      526 GETTABLE                         R22 R23 R24
      527 GETUPVAL                         R23 14
      528 MOVE                             R24 R21
      529 CALL                             R23 1 2
      530 JUMPIF                           R23 ; [+18]
      531 LOADB                            R27 0
      532 NEWTABLE                         R28 0 1
      534 GETIMPORT                        R29 K13 [string.format]
      536 LOADK                            R30 K80 ["Mesh for %s is completely invisible."]
      537 GETTABLEKS                       R31 R2 K28 ["Name"]
      539 CALL                             R29 2 -1
      540 SETLIST                          R28 R29 -1 [1]
      542 NAMECALL                         R25 R11 K46 ["updateReasons"]
      544 CALL                             R25 3 0
      545 NAMECALL                         R25 R21 K72 ["Destroy"]
      547 CALL                             R25 1 0
      548 JUMP                             ; [+23]
      549 JUMPIFNOTLT                      R24 R22 ; [+19]
      551 LOADB                            R27 0
      552 NEWTABLE                         R28 0 1
      554 GETIMPORT                        R29 K13 [string.format]
      556 LOADK                            R30 K81 ["%s is not opaque enough from the %s. Opacity is %.2f but needs to be above %.2f."]
      557 GETTABLEKS                       R31 R2 K28 ["Name"]
      559 GETTABLEKS                       R32 R17 K71 ["viewId"]
      561 MOVE                             R33 R24
      562 MOVE                             R34 R22
      563 CALL                             R29 5 -1
      564 SETLIST                          R28 R29 -1 [1]
      566 NAMECALL                         R25 R11 K46 ["updateReasons"]
      568 CALL                             R25 3 0
      569 NAMECALL                         R25 R21 K72 ["Destroy"]
      571 CALL                             R25 1 0
      572 FORGLOOP                         R13 2 ; [-105]
      574 NAMECALL                         R13 R11 K75 ["getFinalResults"]
      576 CALL                             R13 1 1
      577 JUMPIF                           R13 ; [+11]
      578 GETUPVAL                         R14 12
      579 GETTABLEKS                       R13 R14 K76 ["reportFailure"]
      581 GETUPVAL                         R16 12
      582 GETTABLEKS                       R15 R16 K77 ["ErrorType"]
      584 GETTABLEKS                       R14 R15 K78 ["validateAssetTransparency_AssetTransparencyThresholds"]
      586 LOADNIL                          R15
      587 MOVE                             R16 R1
      588 CALL                             R13 3 0
      589 NAMECALL                         R13 R11 K75 ["getFinalResults"]
      591 CALL                             R13 1 -1
      592 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Constants"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K6 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["tryYield"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K6 ["util"]
       35 GETTABLEKS                       R6 R7 K10 ["getEditableMeshFromContext"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K6 ["util"]
       42 GETTABLEKS                       R7 R8 K11 ["FailureReasonsAccumulator"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K6 ["util"]
       49 GETTABLEKS                       R8 R9 K12 ["BoundsCalculator"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K6 ["util"]
       56 GETTABLEKS                       R9 R10 K13 ["RasterUtil"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R0 K6 ["util"]
       63 GETTABLEKS                       R10 R11 K14 ["TransparencyUtil"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R0 K6 ["util"]
       70 GETTABLEKS                       R11 R12 K15 ["getExpectedPartSize"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R13 R0 K6 ["util"]
       77 GETTABLEKS                       R12 R13 K16 ["SummedAreaTable"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R13 R0 K17 ["ConstantsTransparencyValidation"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R15 R0 K18 ["flags"]
       89 GETTABLEKS                       R14 R15 K19 ["getFFlagUGCValidateMinBoundsVisibility"]
       91 CALL                             R13 1 1
       92 DUPCLOSURE                       R14 K20 [PROTO_0]
       93 CAPTURE                          VAL R12
       94 DUPCLOSURE                       R15 K21 [PROTO_1]
       95 CAPTURE                          VAL R3
       96 DUPCLOSURE                       R16 K22 [PROTO_2]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R17 K23 [PROTO_3]
       99 DUPCLOSURE                       R18 K24 [PROTO_4]
      100 CAPTURE                          VAL R12
      101 DUPCLOSURE                       R19 K25 [PROTO_5]
      102 DUPCLOSURE                       R20 K26 [PROTO_6]
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R21 K27 [PROTO_7]
      105 CAPTURE                          VAL R12
      106 DUPCLOSURE                       R22 K28 [PROTO_8]
      107 CAPTURE                          VAL R9
      108 DUPCLOSURE                       R23 K29 [PROTO_9]
      109 DUPCLOSURE                       R24 K30 [PROTO_10]
      110 CAPTURE                          VAL R22
      111 CAPTURE                          VAL R23
      112 CAPTURE                          VAL R4
      113 DUPCLOSURE                       R25 K31 [PROTO_11]
      114 DUPCLOSURE                       R26 K32 [PROTO_12]
      115 CAPTURE                          VAL R12
      116 DUPCLOSURE                       R27 K33 [PROTO_14]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R26
      120 DUPCLOSURE                       R28 K34 [PROTO_15]
      121 DUPCLOSURE                       R29 K35 [PROTO_16]
      122 CAPTURE                          VAL R28
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R24
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R27
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R25
      137 RETURN                           R29 1
