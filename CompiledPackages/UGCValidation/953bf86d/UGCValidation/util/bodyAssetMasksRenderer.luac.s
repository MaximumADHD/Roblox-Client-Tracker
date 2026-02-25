PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["views"]
        3 JUMPIF                           R0 ; [+48]
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K0 ["views"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R0 R3 K1 ["viewIds"]
       12 LOADNIL                          R1
       13 LOADNIL                          R2
       14 FORGPREP                         R0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K2 ["viewDirections"]
       18 GETTABLE                         R5 R6 R4
       19 LOADK                            R6 K3 [{0, 1, 0}]
       20 MOVE                             R10 R6
       21 NAMECALL                         R8 R5 K4 ["Dot"]
       23 CALL                             R8 2 1
       24 FASTCALL1                        MATH_ABS R8 ; [+2]
       25 GETIMPORT                        R7 K7 [math.abs]
       27 CALL                             R7 1 1
       28 LOADK                            R8 K8 [0.99]
       29 JUMPIFNOTLT                      R8 R7 ; [+10]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K2 ["viewDirections"]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K1 ["viewIds"]
       37 GETTABLEKS                       R8 R9 K9 ["Front"]
       39 GETTABLE                         R6 R7 R8
       40 GETIMPORT                        R7 K12 [CFrame.lookAlong]
       42 LOADK                            R8 K13 [{0, 0, 0}]
       43 MOVE                             R9 R5
       44 MOVE                             R10 R6
       45 CALL                             R7 3 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K0 ["views"]
       49 SETTABLE                         R7 R8 R4
       50 FORGLOOP                         R0 2 ; [-36]
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R0 R1 K0 ["views"]
       55 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R4 K2 [Vector2.new]
        2 LOADK                            R5 K3 [0.5]
        3 LOADK                            R6 K3 [0.5]
        4 CALL                             R4 2 1
        5 SUB                              R3 R0 R4
        6 GETIMPORT                        R4 K2 [Vector2.new]
        8 LOADN                            R5 2
        9 LOADN                            R6 254
       10 CALL                             R4 2 1
       11 MUL                              R2 R3 R4
       12 GETTABLEKS                       R4 R1 K4 ["max"]
       14 GETTABLEKS                       R5 R1 K5 ["min"]
       16 SUB                              R3 R4 R5
       17 DIVK                             R4 R3 K6 [2]
       18 GETTABLEKS                       R6 R1 K5 ["min"]
       20 ADD                              R5 R6 R4
       21 GETTABLEKS                       R9 R2 K7 ["X"]
       23 GETTABLEKS                       R10 R2 K8 ["Y"]
       25 LOADN                            R11 0
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R8 K10 [Vector3.new]
       29 CALL                             R8 3 1
       30 MUL                              R7 R4 R8
       31 ADD                              R6 R5 R7
       32 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getViewToWorldTransforms"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 JUMPIFNOT                        R0 ; [+12]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 JUMPIFNOT                        R7 ; [+4]
       12 GETTABLE                         R8 R1 R6
       13 JUMPIFNOT                        R8 ; [+2]
       14 GETTABLE                         R8 R1 R6
       15 SETTABLE                         R8 R2 R6
       16 FORGLOOP                         R3 2 ; [-6]
       18 RETURN                           R2 1
       19 MOVE                             R2 R1
       20 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["GetFaceVertices"]
        3 CALL                             R4 2 1
        4 NEWTABLE                         R5 0 0
        6 LOADN                            R8 1
        7 LOADN                            R6 3
        8 LOADN                            R7 1
        9 FORNPREP                         R6
       10 GETTABLE                         R11 R4 R8
       11 NAMECALL                         R9 R0 K1 ["GetPosition"]
       13 CALL                             R9 2 1
       14 GETTABLEKS                       R10 R2 K2 ["scale"]
       16 MUL                              R9 R9 R10
       17 GETTABLEKS                       R10 R2 K3 ["CFrame"]
       19 MUL                              R9 R10 R9
       20 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       22 MOVE                             R11 R5
       23 MOVE                             R12 R9
       24 GETIMPORT                        R10 K6 [table.insert]
       26 CALL                             R10 2 0
       27 FORNLOOP                         R6
       28 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       30 MOVE                             R7 R3
       31 MOVE                             R8 R5
       32 GETIMPORT                        R6 K6 [table.insert]
       34 CALL                             R6 2 0
       35 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R4 R0 K0 ["GetFaces"]
        2 CALL                             R4 1 1
        3 MOVE                             R5 R4
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETUPVAL                         R10 0
        8 MOVE                             R11 R0
        9 MOVE                             R12 R9
       10 MOVE                             R13 R1
       11 MOVE                             R14 R3
       12 CALL                             R10 4 0
       13 GETUPVAL                         R10 1
       14 MOVE                             R11 R2
       15 CALL                             R10 1 0
       16 FORGLOOP                         R5 2 ; [-10]
       18 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R1 K0 ["Inverse"]
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K3 [{"min", "max"}]
        4 LOADK                            R4 K4 [{∞, ∞, ∞}]
        5 SETTABLEKS                       R4 R3 K1 ["min"]
        7 LOADK                            R4 K5 [{-∞, -∞, -∞}]
        8 SETTABLEKS                       R4 R3 K2 ["max"]
       10 NEWTABLE                         R4 0 0
       12 MOVE                             R5 R0
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 NEWTABLE                         R10 0 0
       18 MOVE                             R11 R9
       19 LOADNIL                          R12
       20 LOADNIL                          R13
       21 FORGPREP                         R11
       22 MUL                              R16 R2 R15
       23 MUL                              R19 R2 R15
       24 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
       26 MOVE                             R18 R10
       27 GETIMPORT                        R17 K8 [table.insert]
       29 CALL                             R17 2 0
       30 GETTABLEKS                       R17 R3 K1 ["min"]
       32 MOVE                             R19 R16
       33 NAMECALL                         R17 R17 K9 ["Min"]
       35 CALL                             R17 2 1
       36 SETTABLEKS                       R17 R3 K1 ["min"]
       38 GETTABLEKS                       R17 R3 K2 ["max"]
       40 MOVE                             R19 R16
       41 NAMECALL                         R17 R17 K10 ["Max"]
       43 CALL                             R17 2 1
       44 SETTABLEKS                       R17 R3 K2 ["max"]
       46 FORGLOOP                         R11 2 ; [-25]
       48 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       50 MOVE                             R12 R4
       51 MOVE                             R13 R10
       52 GETIMPORT                        R11 K8 [table.insert]
       54 CALL                             R11 2 0
       55 FORGLOOP                         R5 2 ; [-40]
       57 MOVE                             R5 R4
       58 MOVE                             R6 R3
       59 RETURN                           R5 2

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 SUB                              R10 R8 R1
        7 DIV                              R9 R10 R2
        8 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       10 MOVE                             R11 R3
       11 MOVE                             R12 R9
       12 GETIMPORT                        R10 K2 [table.insert]
       14 CALL                             R10 2 0
       15 FORGLOOP                         R4 2 ; [-10]
       17 RETURN                           R3 1

PROTO_7:
        0 GETTABLEN                        R2 R0 2
        1 GETTABLEN                        R3 R0 1
        2 SUB                              R1 R2 R3
        3 GETTABLEN                        R3 R0 3
        4 GETTABLEN                        R4 R0 1
        5 SUB                              R2 R3 R4
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R1 K0 ["Cross"]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R5 R3 K1 ["Z"]
       12 LOADK                            R6 K2 [0.001]
       13 JUMPIFLT                         R6 R5 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 RETURN                           R4 1

PROTO_8:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETTABLEKS                       R4 R0 K4 ["Y"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R4 K2 [Vector2.new]
        9 LOADK                            R5 K5 [0.5]
       10 LOADK                            R6 K6 [-0.5]
       11 CALL                             R4 2 1
       12 MUL                              R3 R2 R4
       13 GETIMPORT                        R4 K2 [Vector2.new]
       15 LOADK                            R5 K5 [0.5]
       16 LOADK                            R6 K5 [0.5]
       17 CALL                             R4 2 1
       18 ADD                              R2 R3 R4
       19 GETIMPORT                        R4 K2 [Vector2.new]
       21 LOADN                            R5 1
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 SUB                              R3 R1 R4
       25 MUL                              R2 R2 R3
       26 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R5 R1 K0 ["max"]
        2 GETTABLEKS                       R6 R1 K1 ["min"]
        4 SUB                              R4 R5 R6
        5 DIVK                             R5 R4 K2 [2]
        6 GETTABLEKS                       R7 R1 K1 ["min"]
        8 ADD                              R6 R7 R5
        9 GETTABLEKS                       R8 R4 K3 ["X"]
       11 GETTABLEKS                       R9 R4 K4 ["Y"]
       13 DIV                              R7 R8 R9
       14 MUL                              R8 R7 R2
       15 GETIMPORT                        R9 K7 [Vector2.new]
       17 MOVE                             R10 R8
       18 MOVE                             R11 R2
       19 CALL                             R9 2 1
       20 GETTABLEKS                       R11 R9 K3 ["X"]
       22 GETTABLEKS                       R12 R9 K4 ["Y"]
       24 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       26 GETIMPORT                        R10 K9 [math.max]
       28 CALL                             R10 2 1
       29 DIVRK                            R12 R10 K10 [1024]
       30 FASTCALL2K                       MATH_MIN R12 K11 ; [+4]
       32 LOADK                            R13 K11 [1]
       33 GETIMPORT                        R11 K12 [math.min]
       35 CALL                             R11 2 1
       36 MUL                              R13 R9 R11
       37 GETIMPORT                        R14 K7 [Vector2.new]
       39 LOADK                            R15 K13 [0.5]
       40 CALL                             R14 1 1
       41 ADD                              R12 R13 R14
       42 NAMECALL                         R12 R12 K14 ["Floor"]
       44 CALL                             R12 1 1
       45 MOVE                             R9 R12
       46 GETUPVAL                         R12 0
       47 DUPTABLE                         R14 K16 [{"Size"}]
       48 SETTABLEKS                       R9 R14 K15 ["Size"]
       50 NAMECALL                         R12 R12 K17 ["CreateEditableImage"]
       52 CALL                             R12 2 1
       53 MOVE                             R13 R0
       54 LOADNIL                          R14
       55 LOADNIL                          R15
       56 FORGPREP                         R13
       57 NEWTABLE                         R19 0 0
       59 MOVE                             R20 R17
       60 LOADNIL                          R21
       61 LOADNIL                          R22
       62 FORGPREP                         R20
       63 SUB                              R26 R24 R6
       64 DIV                              R25 R26 R5
       65 FASTCALL2                        TABLE_INSERT R19 R25 ; [+5]
       67 MOVE                             R27 R19
       68 MOVE                             R28 R25
       69 GETIMPORT                        R26 K20 [table.insert]
       71 CALL                             R26 2 0
       72 FORGLOOP                         R20 2 ; [-10]
       74 MOVE                             R18 R19
       75 GETTABLEN                        R21 R18 2
       76 GETTABLEN                        R22 R18 1
       77 SUB                              R20 R21 R22
       78 GETTABLEN                        R22 R18 3
       79 GETTABLEN                        R23 R18 1
       80 SUB                              R21 R22 R23
       81 MOVE                             R24 R21
       82 NAMECALL                         R22 R20 K21 ["Cross"]
       84 CALL                             R22 2 1
       85 GETTABLEKS                       R23 R22 K22 ["Z"]
       87 LOADK                            R24 K23 [0.001]
       88 JUMPIFLT                         R24 R23 ; [+2]
       90 LOADB                            R19 0 +1
       91 LOADB                            R19 1
       92 JUMPIFNOT                        R19 ; [+35]
       93 NEWTABLE                         R19 0 0
       95 MOVE                             R20 R18
       96 LOADNIL                          R21
       97 LOADNIL                          R22
       98 FORGPREP                         R20
       99 GETUPVAL                         R25 1
      100 MOVE                             R26 R24
      101 MOVE                             R27 R9
      102 CALL                             R25 2 1
      103 FASTCALL2                        TABLE_INSERT R19 R25 ; [+5]
      105 MOVE                             R27 R19
      106 MOVE                             R28 R25
      107 GETIMPORT                        R26 K20 [table.insert]
      109 CALL                             R26 2 0
      110 FORGLOOP                         R20 2 ; [-12]
      112 GETTABLEN                        R22 R19 1
      113 GETTABLEN                        R23 R19 2
      114 GETTABLEN                        R24 R19 3
      115 GETIMPORT                        R25 K25 [Color3.new]
      117 LOADN                            R26 1
      118 LOADN                            R27 1
      119 LOADN                            R28 1
      120 CALL                             R25 3 1
      121 LOADN                            R26 0
      122 NAMECALL                         R20 R12 K26 ["DrawTriangle"]
      124 CALL                             R20 6 0
      125 GETUPVAL                         R20 2
      126 MOVE                             R21 R3
      127 CALL                             R20 1 0
      128 FORGLOOP                         R13 2 ; [-72]
      130 RETURN                           R12 1

PROTO_10:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 NEWTABLE                         R4 0 0
        4 LOADK                            R7 K1 ["MeshPart"]
        5 NAMECALL                         R5 R0 K2 ["IsA"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+14]
        9 GETTABLEKS                       R5 R2 K0 ["assetTypeEnum"]
       11 GETIMPORT                        R6 K6 [Enum.AssetType.DynamicHead]
       13 JUMPIFNOTEQ                      R5 R6 ; [+9]
       15 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       17 MOVE                             R6 R4
       18 MOVE                             R7 R0
       19 GETIMPORT                        R5 K9 [table.insert]
       21 CALL                             R5 2 0
       22 JUMP                             ; [+18]
       23 NAMECALL                         R5 R0 K10 ["GetChildren"]
       25 CALL                             R5 1 3
       26 FORGPREP                         R5
       27 LOADK                            R12 K1 ["MeshPart"]
       28 NAMECALL                         R10 R9 K2 ["IsA"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       34 MOVE                             R11 R4
       35 MOVE                             R12 R9
       36 GETIMPORT                        R10 K9 [table.insert]
       38 CALL                             R10 2 0
       39 FORGLOOP                         R5 2 ; [-13]
       41 GETUPVAL                         R5 0
       42 MOVE                             R6 R0
       43 MOVE                             R7 R2
       44 CALL                             R5 2 1
       45 NEWTABLE                         R6 0 0
       47 MOVE                             R7 R4
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 GETUPVAL                         R12 1
       52 MOVE                             R13 R11
       53 LOADK                            R14 K11 ["MeshId"]
       54 MOVE                             R15 R2
       55 CALL                             R12 3 2
       56 JUMPIF                           R12 ; [+21]
       57 GETIMPORT                        R14 K14 [string.format]
       59 LOADK                            R15 K15 ["Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again."]
       60 GETTABLEKS                       R16 R11 K16 ["Name"]
       62 CALL                             R14 2 1
       63 GETTABLEKS                       R15 R2 K17 ["isServer"]
       65 JUMPIFNOT                        R15 ; [+5]
       66 GETIMPORT                        R15 K19 [error]
       68 MOVE                             R16 R14
       69 CALL                             R15 1 0
       70 JUMP                             ; [+7]
       71 LOADB                            R15 0
       72 NEWTABLE                         R16 0 1
       74 MOVE                             R17 R14
       75 SETLIST                          R16 R17 1 [1]
       77 RETURN                           R15 2
       78 NAMECALL                         R14 R13 K20 ["Triangulate"]
       80 CALL                             R14 1 0
       81 GETTABLEKS                       R15 R11 K16 ["Name"]
       83 GETTABLE                         R14 R5 R15
       84 GETUPVAL                         R15 2
       85 MOVE                             R16 R13
       86 MOVE                             R17 R14
       87 MOVE                             R18 R2
       88 MOVE                             R19 R6
       89 CALL                             R15 4 0
       90 FORGLOOP                         R7 2 ; [-40]
       92 LENGTH                           R7 R6
       93 JUMPIFNOTEQKN                    R7 K21 [0] ; [+13]
       95 LOADB                            R7 0
       96 NEWTABLE                         R8 0 1
       98 GETIMPORT                        R9 K14 [string.format]
      100 LOADK                            R10 K22 ["Mesh for %s has no triangles."]
      101 GETTABLEKS                       R11 R3 K16 ["Name"]
      103 CALL                             R9 2 -1
      104 SETLIST                          R8 R9 -1 [1]
      106 RETURN                           R7 2
      107 NEWTABLE                         R7 0 0
      109 MOVE                             R8 R1
      110 LOADNIL                          R9
      111 LOADNIL                          R10
      112 FORGPREP                         R8
      113 GETUPVAL                         R13 3
      114 MOVE                             R14 R6
      115 MOVE                             R15 R12
      116 CALL                             R13 2 2
      117 GETUPVAL                         R15 4
      118 CALL                             R15 0 1
      119 GETUPVAL                         R16 5
      120 MOVE                             R17 R13
      121 MOVE                             R18 R14
      122 MOVE                             R19 R15
      123 MOVE                             R20 R2
      124 CALL                             R16 4 1
      125 DUPTABLE                         R17 K27 [{"viewId", "mask", "view", "viewSpaceBounds"}]
      126 SETTABLEKS                       R11 R17 K23 ["viewId"]
      128 SETTABLEKS                       R16 R17 K24 ["mask"]
      130 SETTABLEKS                       R12 R17 K25 ["view"]
      132 SETTABLEKS                       R14 R17 K26 ["viewSpaceBounds"]
      134 SETTABLE                         R17 R7 R11
      135 FORGLOOP                         R8 2 ; [-23]
      137 LOADB                            R8 1
      138 MOVE                             R9 R7
      139 RETURN                           R8 2

PROTO_11:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 MOVE                             R7 R4
       14 MOVE                             R8 R2
       15 CALL                             R5 3 2
       16 JUMPIF                           R5 ; [+3]
       17 LOADB                            R7 0
       18 MOVE                             R8 R6
       19 RETURN                           R7 2
       20 SETTABLEKS                       R6 R3 K2 ["bodyAssetMasks"]
       22 LOADB                            R7 1
       23 MOVE                             R8 R3
       24 RETURN                           R7 2

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["bodyAssetMasks"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["mask"]
        7 JUMPIFNOT                        R6 ; [+8]
        8 GETTABLEKS                       R6 R5 K1 ["mask"]
       10 NAMECALL                         R6 R6 K2 ["Destroy"]
       12 CALL                             R6 1 0
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R5 K1 ["mask"]
       16 FORGLOOP                         R1 2 ; [-12]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["tryYield"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["util"]
       25 GETTABLEKS                       R4 R5 K8 ["getEditableMeshFromContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R7 R0 K5 ["util"]
       32 GETTABLEKS                       R6 R7 K9 ["AssetCalculator"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R4 R5 K10 ["getAssetMeshesValidationSpaceTransforms"]
       37 GETIMPORT                        R5 K12 [game]
       39 LOADK                            R7 K13 ["AssetService"]
       40 NAMECALL                         R5 R5 K14 ["GetService"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R8 R0 K15 ["flags"]
       47 GETTABLEKS                       R7 R8 K16 ["getFIntUGCValidationBodyAssetMaskHeightPixels"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R9 R0 K15 ["flags"]
       54 GETTABLEKS                       R8 R9 K17 ["getFFlagUGCValidateTinyTrianglesIntersectFix"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 16 0
       59 SETTABLEKS                       R8 R8 K18 ["__index"]
       61 DUPTABLE                         R9 K25 [{"Front", "Back", "Left", "Right", "Top", "Bottom"}]
       62 LOADK                            R10 K19 ["Front"]
       63 SETTABLEKS                       R10 R9 K19 ["Front"]
       65 LOADK                            R10 K20 ["Back"]
       66 SETTABLEKS                       R10 R9 K20 ["Back"]
       68 LOADK                            R10 K21 ["Left"]
       69 SETTABLEKS                       R10 R9 K21 ["Left"]
       71 LOADK                            R10 K22 ["Right"]
       72 SETTABLEKS                       R10 R9 K22 ["Right"]
       74 LOADK                            R10 K23 ["Top"]
       75 SETTABLEKS                       R10 R9 K23 ["Top"]
       77 LOADK                            R10 K24 ["Bottom"]
       78 SETTABLEKS                       R10 R9 K24 ["Bottom"]
       80 SETTABLEKS                       R9 R8 K26 ["viewIds"]
       82 MOVE                             R9 R7
       83 CALL                             R9 0 1
       84 JUMPIFNOT                        R9 ; [+39]
       85 DUPTABLE                         R9 K25 [{"Front", "Back", "Left", "Right", "Top", "Bottom"}]
       86 GETTABLEKS                       R11 R8 K26 ["viewIds"]
       88 GETTABLEKS                       R10 R11 K20 ["Back"]
       90 SETTABLEKS                       R10 R9 K19 ["Front"]
       92 GETTABLEKS                       R11 R8 K26 ["viewIds"]
       94 GETTABLEKS                       R10 R11 K19 ["Front"]
       96 SETTABLEKS                       R10 R9 K20 ["Back"]
       98 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      100 GETTABLEKS                       R10 R11 K22 ["Right"]
      102 SETTABLEKS                       R10 R9 K21 ["Left"]
      104 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      106 GETTABLEKS                       R10 R11 K21 ["Left"]
      108 SETTABLEKS                       R10 R9 K22 ["Right"]
      110 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      112 GETTABLEKS                       R10 R11 K24 ["Bottom"]
      114 SETTABLEKS                       R10 R9 K23 ["Top"]
      116 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      118 GETTABLEKS                       R10 R11 K23 ["Top"]
      120 SETTABLEKS                       R10 R9 K24 ["Bottom"]
      122 SETTABLEKS                       R9 R8 K27 ["opposingViewIds"]
      124 NEWTABLE                         R9 8 0
      126 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      128 GETTABLEKS                       R10 R11 K19 ["Front"]
      130 LOADK                            R11 K28 [{0, 0, 1}]
      131 SETTABLE                         R11 R9 R10
      132 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      134 GETTABLEKS                       R10 R11 K20 ["Back"]
      136 LOADK                            R11 K29 [{0, 0, -1}]
      137 SETTABLE                         R11 R9 R10
      138 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      140 GETTABLEKS                       R10 R11 K21 ["Left"]
      142 LOADK                            R11 K30 [{-1, 0, 0}]
      143 SETTABLE                         R11 R9 R10
      144 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      146 GETTABLEKS                       R10 R11 K22 ["Right"]
      148 LOADK                            R11 K31 [{1, 0, 0}]
      149 SETTABLE                         R11 R9 R10
      150 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      152 GETTABLEKS                       R10 R11 K23 ["Top"]
      154 LOADK                            R11 K32 [{0, -1, 0}]
      155 SETTABLE                         R11 R9 R10
      156 GETTABLEKS                       R11 R8 K26 ["viewIds"]
      158 GETTABLEKS                       R10 R11 K24 ["Bottom"]
      160 LOADK                            R11 K33 [{0, 1, 0}]
      161 SETTABLE                         R11 R9 R10
      162 SETTABLEKS                       R9 R8 K34 ["viewDirections"]
      164 LOADNIL                          R9
      165 SETTABLEKS                       R9 R8 K35 ["views"]
      167 DUPCLOSURE                       R9 K36 [PROTO_0]
      168 CAPTURE                          VAL R8
      169 SETTABLEKS                       R9 R8 K37 ["getViewToWorldTransforms"]
      171 DUPCLOSURE                       R9 K38 [PROTO_1]
      172 SETTABLEKS                       R9 R8 K39 ["getViewSpacePositionFromNormalized"]
      174 DUPCLOSURE                       R9 K40 [PROTO_2]
      175 CAPTURE                          VAL R8
      176 DUPCLOSURE                       R10 K41 [PROTO_3]
      177 DUPCLOSURE                       R11 K42 [PROTO_4]
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R2
      180 DUPCLOSURE                       R12 K43 [PROTO_5]
      181 DUPCLOSURE                       R13 K44 [PROTO_6]
      182 DUPCLOSURE                       R14 K45 [PROTO_7]
      183 DUPCLOSURE                       R15 K46 [PROTO_8]
      184 DUPCLOSURE                       R16 K47 [PROTO_9]
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R2
      188 DUPCLOSURE                       R17 K48 [PROTO_10]
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R16
      195 DUPCLOSURE                       R18 K49 [PROTO_11]
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R17
      199 SETTABLEKS                       R18 R8 K50 ["new"]
      201 DUPCLOSURE                       R18 K51 [PROTO_12]
      202 SETTABLEKS                       R18 R8 K52 ["destroyBodyAssetMasks"]
      204 RETURN                           R8 1
