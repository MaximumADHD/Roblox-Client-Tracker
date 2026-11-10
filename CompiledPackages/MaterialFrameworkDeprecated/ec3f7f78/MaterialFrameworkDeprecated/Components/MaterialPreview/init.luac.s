PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CubeCornerOn"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADN                            R1 40
        6 RETURN                           R1 1
        7 LOADN                            R1 70
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CubeCornerOn"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 [1.9238044001630872]
        6 RETURN                           R1 1
        7 LOADN                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R1 ; [+2]
        1 GETUPVAL                         R5 0
        2 RETURN                           R5 1
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R8 R1
        5 GETIMPORT                        R7 K1 [type]
        7 CALL                             R7 1 1
        8 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       14 LOADK                            R7 K3 ["Bad assetId"]
       15 GETIMPORT                        R5 K5 [assert]
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R3
       20 MOVE                             R7 R4
       21 CALL                             R5 2 1
       22 LOADK                            R8 K6 ["InsertService"]
       23 NAMECALL                         R6 R0 K7 ["getService"]
       25 CALL                             R6 2 1
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R6 K8 ["LoadLocalAsset"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+92]
       31 LOADK                            R10 K9 ["MeshPart"]
       32 NAMECALL                         R8 R7 K10 ["FindFirstChild"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+85]
       36 GETIMPORT                        R9 K13 [CFrame.new]
       38 LOADN                            R10 0
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 CALL                             R9 3 1
       42 SETTABLEKS                       R9 R8 K11 ["CFrame"]
       44 JUMPIFNOT                        R2 ; [+44]
       45 GETIMPORT                        R9 K15 [Instance.new]
       47 LOADK                            R10 K16 ["Part"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K20 [Enum.PartType.Ball]
       51 SETTABLEKS                       R10 R9 K21 ["Shape"]
       53 GETTABLEKS                       R11 R8 K22 ["Size"]
       55 FASTCALL3                        VECTOR R2 R2 R2
       57 MOVE                             R13 R2
       58 MOVE                             R14 R2
       59 MOVE                             R15 R2
       60 GETIMPORT                        R12 K24 [Vector3.new]
       62 CALL                             R12 3 1
       63 ADD                              R10 R11 R12
       64 SETTABLEKS                       R10 R9 K22 ["Size"]
       66 GETIMPORT                        R10 K27 [Color3.fromRGB]
       68 LOADN                            R11 38
       69 LOADN                            R12 38
       70 LOADN                            R13 38
       71 CALL                             R10 3 1
       72 SETTABLEKS                       R10 R9 K28 ["Color"]
       74 GETIMPORT                        R10 K31 [Enum.Material.Neon]
       76 SETTABLEKS                       R10 R9 K29 ["Material"]
       78 GETIMPORT                        R10 K33 [CFrame.fromMatrix]
       80 LOADK                            R11 K34 [{0, 0, 0}]
       81 LOADK                            R12 K35 [{1, 0, 0}]
       82 LOADK                            R13 K36 [{0, 1, 0}]
       83 LOADK                            R14 K37 [{-0, -0, -1}]
       84 CALL                             R10 4 1
       85 SETTABLEKS                       R10 R9 K11 ["CFrame"]
       87 SETTABLEKS                       R8 R9 K38 ["Parent"]
       89 JUMPIF                           R3 ; [+1]
       90 JUMPIFNOT                        R2 ; [+29]
       91 GETIMPORT                        R9 K15 [Instance.new]
       93 LOADK                            R10 K16 ["Part"]
       94 CALL                             R9 1 1
       95 GETIMPORT                        R10 K20 [Enum.PartType.Ball]
       97 SETTABLEKS                       R10 R9 K21 ["Shape"]
       99 GETTABLEKS                       R10 R8 K39 ["size"]
      101 SETTABLEKS                       R10 R9 K22 ["Size"]
      103 SETTABLEKS                       R5 R9 K28 ["Color"]
      105 GETIMPORT                        R10 K31 [Enum.Material.Neon]
      107 SETTABLEKS                       R10 R9 K29 ["Material"]
      109 GETIMPORT                        R10 K33 [CFrame.fromMatrix]
      111 LOADK                            R11 K34 [{0, 0, 0}]
      112 LOADK                            R12 K35 [{1, 0, 0}]
      113 LOADK                            R13 K36 [{0, 1, 0}]
      114 LOADK                            R14 K37 [{-0, -0, -1}]
      115 CALL                             R10 4 1
      116 SETTABLEKS                       R10 R9 K11 ["CFrame"]
      118 SETTABLEKS                       R8 R9 K38 ["Parent"]
      120 RETURN                           R8 1
      121 GETUPVAL                         R9 0
      122 RETURN                           R9 1
      123 GETUPVAL                         R8 0
      124 RETURN                           R8 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Part"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 [{3.535534, 3.535534, 3.535534}]
        5 SETTABLEKS                       R1 R0 K5 ["Size"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Part"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K7 [Enum.SurfaceType.Smooth]
        6 SETTABLEKS                       R1 R0 K8 ["TopSurface"]
        8 GETIMPORT                        R1 K7 [Enum.SurfaceType.Smooth]
       10 SETTABLEKS                       R1 R0 K9 ["BottomSurface"]
       12 LOADK                            R1 K10 [{100, 100, 0}]
       13 SETTABLEKS                       R1 R0 K11 ["Size"]
       15 GETIMPORT                        R1 K13 [CFrame.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 0
       19 LOADK                            R4 K14 [-1.7677669529663689]
       20 CALL                             R1 3 1
       21 SETTABLEKS                       R1 R0 K12 ["CFrame"]
       23 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETIMPORT                        R3 K3 [Enum.CollisionFidelity.Box]
        4 GETIMPORT                        R4 K6 [Enum.RenderFidelity.Automatic]
        6 NAMECALL                         R0 R0 K7 ["CreateMeshPartAsync"]
        8 CALL                             R0 4 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K10 ["Size"]
       14 GETTABLEKS                       R3 R3 K11 ["unit"]
       16 MULK                             R2 R3 K9 [1.4142135623730951]
       17 MULK                             R1 R2 K8 [5]
       18 SETTABLEKS                       R1 R0 K10 ["Size"]
       20 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["InsertService"]
        1 NAMECALL                         R2 R0 K1 ["getService"]
        3 CALL                             R2 2 1
        4 LOADNIL                          R3
        5 GETIMPORT                        R4 K3 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CALL                             R4 1 2
       12 JUMPIF                           R4 ; [+7]
       13 GETIMPORT                        R6 K5 [warn]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 GETUPVAL                         R6 0
       18 CLOSEUPVALS                      R3
       19 RETURN                           R6 1
       20 CLOSEUPVALS                      R3
       21 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R5 K0 ["InsertService"]
        3 NAMECALL                         R3 R2 K1 ["getService"]
        5 CALL                             R3 2 1
        6 LOADNIL                          R4
        7 GETIMPORT                        R5 K3 [pcall]
        9 LOADK                            R7 K4 ["rbxassetid://1484148960"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R7
       14 CALL                             R5 1 2
       15 JUMPIF                           R5 ; [+7]
       16 GETIMPORT                        R7 K6 [warn]
       18 MOVE                             R8 R6
       19 CALL                             R7 1 0
       20 GETUPVAL                         R1 2
       21 CLOSEUPVALS                      R4
       22 JUMP                             ; [+2]
       23 MOVE                             R1 R4
       24 CLOSEUPVALS                      R4
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Cube"]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["CubeCornerOn"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+13]
       16 GETUPVAL                         R0 2
       17 GETIMPORT                        R2 K5 [Instance.new]
       19 LOADK                            R3 K6 ["Part"]
       20 CALL                             R2 1 1
       21 LOADK                            R3 K7 [{3.535534, 3.535534, 3.535534}]
       22 SETTABLEKS                       R3 R2 K8 ["Size"]
       24 MOVE                             R1 R2
       25 CALL                             R0 1 0
       26 LOADNIL                          R0
       27 RETURN                           R0 1
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K9 ["Plane"]
       34 JUMPIFNOTEQ                      R0 R1 ; [+29]
       36 GETUPVAL                         R0 2
       37 GETIMPORT                        R2 K5 [Instance.new]
       39 LOADK                            R3 K6 ["Part"]
       40 CALL                             R2 1 1
       41 GETIMPORT                        R3 K13 [Enum.SurfaceType.Smooth]
       43 SETTABLEKS                       R3 R2 K14 ["TopSurface"]
       45 GETIMPORT                        R3 K13 [Enum.SurfaceType.Smooth]
       47 SETTABLEKS                       R3 R2 K15 ["BottomSurface"]
       49 LOADK                            R3 K16 [{100, 100, 0}]
       50 SETTABLEKS                       R3 R2 K8 ["Size"]
       52 GETIMPORT                        R3 K18 [CFrame.new]
       54 LOADN                            R4 0
       55 LOADN                            R5 0
       56 LOADK                            R6 K19 [-1.7677669529663689]
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R2 K17 ["CFrame"]
       60 MOVE                             R1 R2
       61 CALL                             R0 1 0
       62 LOADNIL                          R0
       63 RETURN                           R0 1
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R1 R1 K20 ["Dominus"]
       70 JUMPIFNOTEQ                      R0 R1 ; [+11]
       72 GETIMPORT                        R0 K23 [task.spawn]
       74 NEWCLOSURE                       R1 P0
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U4
       78 CALL                             R0 1 1
       79 NEWCLOSURE                       R1 P1
       80 CAPTURE                          VAL R0
       81 RETURN                           R1 1
       82 GETUPVAL                         R0 2
       83 GETUPVAL                         R1 5
       84 GETUPVAL                         R2 3
       85 LOADK                            R3 K24 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R4 R4 K25 ["MeshPartBorderThickness"]
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K26 ["MeshPartBackgroundColor"]
       92 GETUPVAL                         R6 6
       93 CALL                             R1 5 1
       94 CALL                             R0 1 0
       95 LOADNIL                          R0
       96 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Material"]
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Material"]
        4 GETTABLEKS                       R1 R1 K1 ["BaseMaterial"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Use2022Materials"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Use2022Materials"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["Material"]
       11 FASTCALL1                        TYPEOF R2 ; [+2]
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K4 ["EnumItem"] ; [+26]
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["OverrideColor"]
       21 JUMPIF                           R2 ; [+6]
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K1 ["Material"]
       26 MOVE                             R4 R0
       27 CALL                             R2 2 1
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K1 ["Material"]
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 6
       35 LOADK                            R2 K6 [""]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 7
       38 LOADK                            R2 K6 [""]
       39 CALL                             R1 1 0
       40 LOADNIL                          R1
       41 RETURN                           R1 1
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K1 ["Material"]
       45 FASTCALL1                        TYPEOF R2 ; [+2]
       46 GETIMPORT                        R1 K3 [typeof]
       48 CALL                             R1 1 1
       49 JUMPIFNOTEQKS                    R1 K7 ["Instance"] ; [+72]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K1 ["Material"]
       54 LOADK                            R3 K8 ["MaterialVariant"]
       55 NAMECALL                         R1 R1 K9 ["IsA"]
       57 CALL                             R1 2 1
       58 JUMPIFNOT                        R1 ; [+63]
       59 GETUPVAL                         R1 3
       60 GETUPVAL                         R2 1
       61 GETTABLEKS                       R2 R2 K5 ["OverrideColor"]
       63 JUMPIF                           R2 ; [+6]
       64 GETIMPORT                        R2 K12 [Color3.new]
       66 LOADN                            R3 1
       67 LOADN                            R4 1
       68 LOADN                            R5 1
       69 CALL                             R2 3 1
       70 CALL                             R1 1 0
       71 GETUPVAL                         R1 5
       72 GETUPVAL                         R2 1
       73 GETTABLEKS                       R2 R2 K1 ["Material"]
       75 GETTABLEKS                       R2 R2 K13 ["BaseMaterial"]
       77 CALL                             R1 1 0
       78 GETUPVAL                         R1 6
       79 GETUPVAL                         R2 1
       80 GETTABLEKS                       R2 R2 K1 ["Material"]
       82 GETTABLEKS                       R2 R2 K14 ["Name"]
       84 CALL                             R1 1 0
       85 GETUPVAL                         R1 7
       86 GETUPVAL                         R2 1
       87 GETTABLEKS                       R2 R2 K1 ["Material"]
       89 GETTABLEKS                       R2 R2 K15 ["ColorMap"]
       91 CALL                             R1 1 0
       92 GETUPVAL                         R1 1
       93 GETTABLEKS                       R1 R1 K1 ["Material"]
       95 LOADK                            R3 K14 ["Name"]
       96 NAMECALL                         R1 R1 K16 ["GetPropertyChangedSignal"]
       98 CALL                             R1 2 1
       99 NEWCLOSURE                       R3 P0
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U1
      102 NAMECALL                         R1 R1 K17 ["Connect"]
      104 CALL                             R1 2 1
      105 GETUPVAL                         R2 1
      106 GETTABLEKS                       R2 R2 K1 ["Material"]
      108 LOADK                            R4 K13 ["BaseMaterial"]
      109 NAMECALL                         R2 R2 K16 ["GetPropertyChangedSignal"]
      111 CALL                             R2 2 1
      112 NEWCLOSURE                       R4 P1
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          UPVAL U1
      115 NAMECALL                         R2 R2 K17 ["Connect"]
      117 CALL                             R2 2 1
      118 NEWCLOSURE                       R3 P2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R1
      121 RETURN                           R3 1
      122 GETUPVAL                         R1 3
      123 GETUPVAL                         R2 1
      124 GETTABLEKS                       R2 R2 K5 ["OverrideColor"]
      126 JUMPIF                           R2 ; [+6]
      127 GETIMPORT                        R2 K12 [Color3.new]
      129 LOADN                            R3 1
      130 LOADN                            R4 1
      131 LOADN                            R5 1
      132 CALL                             R2 3 1
      133 CALL                             R1 1 0
      134 GETUPVAL                         R1 5
      135 GETIMPORT                        R2 K20 [Enum.Material.SmoothPlastic]
      137 CALL                             R1 1 0
      138 GETUPVAL                         R1 6
      139 LOADK                            R2 K6 [""]
      140 CALL                             R1 1 0
      141 GETUPVAL                         R1 7
      142 LOADK                            R2 K6 [""]
      143 CALL                             R1 1 0
      144 LOADNIL                          R1
      145 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["BasePart"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K2 ["Color"]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K3 ["Material"]
       17 GETUPVAL                         R0 0
       18 GETUPVAL                         R1 3
       19 SETTABLEKS                       R1 R0 K4 ["MaterialVariant"]
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K6 ["OverrideTransparency"]
       25 ORK                              R1 R2 K5 [0]
       26 SETTABLEKS                       R1 R0 K7 ["Transparency"]
       28 GETUPVAL                         R0 4
       29 GETTABLEKS                       R0 R0 K8 ["MaterialPreviewGeometryType"]
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K9 ["Dominus"]
       34 JUMPIFNOTEQ                      R0 R1 ; [+18]
       36 GETUPVAL                         R0 0
       37 GETIMPORT                        R2 K12 [CFrame.Angles]
       39 LOADN                            R3 0
       40 LOADK                            R4 K13 [0.5235987755982988]
       41 LOADN                            R5 0
       42 CALL                             R2 3 1
       43 GETIMPORT                        R3 K12 [CFrame.Angles]
       45 LOADK                            R4 K14 [0.2617993877991494]
       46 LOADN                            R5 0
       47 LOADN                            R6 0
       48 CALL                             R3 3 1
       49 MUL                              R1 R2 R3
       50 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       52 RETURN                           R0 0
       53 GETUPVAL                         R0 4
       54 GETTABLEKS                       R0 R0 K8 ["MaterialPreviewGeometryType"]
       56 GETUPVAL                         R1 5
       57 GETTABLEKS                       R1 R1 K15 ["CubeCornerOn"]
       59 JUMPIFNOTEQ                      R0 R1 ; [+11]
       61 GETUPVAL                         R0 0
       62 GETIMPORT                        R1 K12 [CFrame.Angles]
       64 LOADK                            R2 K16 [-0.6154797086703873]
       65 LOADK                            R3 K17 [0.7853981633974483]
       66 LOADN                            R4 0
       67 CALL                             R1 3 1
       68 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       70 RETURN                           R0 0
       71 GETUPVAL                         R0 4
       72 GETTABLEKS                       R0 R0 K8 ["MaterialPreviewGeometryType"]
       74 GETUPVAL                         R1 5
       75 GETTABLEKS                       R1 R1 K18 ["Cube"]
       77 JUMPIFNOTEQ                      R0 R1 ; [+7]
       79 GETUPVAL                         R0 0
       80 GETIMPORT                        R1 K20 [CFrame.new]
       82 CALL                             R1 0 1
       83 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       85 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["MaterialPreview"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R2 R2 K0 ["use"]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R0 K2 ["BackgroundColor"]
       13 GETTABLEKS                       R5 R2 K2 ["BackgroundColor"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R5 R0 K3 ["InitialDistance"]
       19 GETTABLEKS                       R6 R2 K3 ["InitialDistance"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R6 R0 K4 ["RecenterCameraOnUpdate"]
       25 GETTABLEKS                       R7 R2 K4 ["RecenterCameraOnUpdate"]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["useState"]
       31 GETUPVAL                         R7 4
       32 CALL                             R6 1 2
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K5 ["useState"]
       36 LOADNIL                          R9
       37 CALL                             R8 1 2
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K5 ["useState"]
       41 GETIMPORT                        R11 K9 [Enum.Material.SmoothPlastic]
       43 CALL                             R10 1 2
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R12 R12 K5 ["useState"]
       47 GETIMPORT                        R13 K12 [Color3.new]
       49 LOADN                            R14 1
       50 LOADN                            R15 1
       51 LOADN                            R16 1
       52 CALL                             R13 3 -1
       53 CALL                             R12 -1 2
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K5 ["useState"]
       57 LOADK                            R15 K13 [""]
       58 CALL                             R14 1 2
       59 GETUPVAL                         R16 3
       60 GETTABLEKS                       R16 R16 K5 ["useState"]
       62 LOADK                            R17 K13 [""]
       63 CALL                             R16 1 2
       64 GETUPVAL                         R19 5
       65 GETTABLE                         R18 R19 R10
       66 JUMPIFNOT                        R18 ; [+4]
       67 JUMPIFEQKS                       R14 K13 [""] ; [+2]
       69 LOADB                            R18 0 +1
       70 LOADB                            R18 1
       71 GETUPVAL                         R19 3
       72 GETTABLEKS                       R19 R19 K14 ["useEffect"]
       74 NEWCLOSURE                       R20 P0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R21 0 1
       84 GETTABLEKS                       R22 R0 K15 ["MaterialPreviewGeometryType"]
       86 SETLIST                          R21 R22 1 [1]
       88 CALL                             R19 2 0
       89 GETUPVAL                         R19 3
       90 GETTABLEKS                       R19 R19 K14 ["useEffect"]
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R13
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R17
      101 NEWTABLE                         R21 0 4
      103 GETTABLEKS                       R22 R0 K7 ["Material"]
      105 GETTABLEKS                       R23 R0 K16 ["Use2022Materials"]
      107 GETTABLEKS                       R24 R2 K16 ["Use2022Materials"]
      109 GETTABLEKS                       R25 R0 K17 ["OverrideColor"]
      111 SETLIST                          R21 R22 4 [1]
      113 CALL                             R19 2 0
      114 GETTABLEKS                       R19 R0 K18 ["Static"]
      116 JUMPIFNOT                        R19 ; [+84]
      117 GETTABLEKS                       R20 R0 K7 ["Material"]
      119 FASTCALL1                        TYPEOF R20 ; [+2]
      120 GETIMPORT                        R19 K20 [typeof]
      122 CALL                             R19 1 1
      123 JUMPIFNOTEQKS                    R19 K21 ["Instance"] ; [+77]
      125 GETTABLEKS                       R19 R0 K7 ["Material"]
      127 LOADK                            R21 K22 ["MaterialVariant"]
      128 NAMECALL                         R19 R19 K23 ["IsA"]
      130 CALL                             R19 2 1
      131 JUMPIFNOT                        R19 ; [+69]
      132 LOADK                            R21 K24 ["Part"]
      133 NAMECALL                         R19 R6 K23 ["IsA"]
      135 CALL                             R19 2 1
      136 JUMPIFNOT                        R19 ; [+22]
      137 LOADK                            R19 K25 [{10, 10, 0.001}]
      138 SETTABLEKS                       R19 R6 K26 ["Size"]
      140 LOADK                            R21 K27 ["Decal"]
      141 NAMECALL                         R19 R6 K28 ["FindFirstChildWhichIsA"]
      143 CALL                             R19 2 1
      144 JUMPIFNOTEQKNIL                  R19 ; [+6]
      146 GETIMPORT                        R20 K29 [Instance.new]
      148 LOADK                            R21 K27 ["Decal"]
      149 CALL                             R20 1 1
      150 MOVE                             R19 R20
      151 GETTABLEKS                       R20 R0 K7 ["Material"]
      153 GETTABLEKS                       R20 R20 K30 ["ColorMap"]
      155 SETTABLEKS                       R20 R19 K31 ["Texture"]
      157 SETTABLEKS                       R6 R19 K32 ["Parent"]
      159 LOADK                            R21 K33 ["MeshPart"]
      160 NAMECALL                         R19 R6 K23 ["IsA"]
      162 CALL                             R19 2 1
      163 JUMPIFNOT                        R19 ; [+37]
      164 LOADK                            R21 K34 ["SurfaceAppearance"]
      165 NAMECALL                         R19 R6 K28 ["FindFirstChildWhichIsA"]
      167 CALL                             R19 2 1
      168 JUMPIFNOTEQKNIL                  R19 ; [+6]
      170 GETIMPORT                        R20 K29 [Instance.new]
      172 LOADK                            R21 K34 ["SurfaceAppearance"]
      173 CALL                             R20 1 1
      174 MOVE                             R19 R20
      175 GETTABLEKS                       R20 R0 K7 ["Material"]
      177 GETTABLEKS                       R20 R20 K30 ["ColorMap"]
      179 SETTABLEKS                       R20 R19 K30 ["ColorMap"]
      181 GETTABLEKS                       R20 R0 K7 ["Material"]
      183 GETTABLEKS                       R20 R20 K35 ["MetalnessMap"]
      185 SETTABLEKS                       R20 R19 K35 ["MetalnessMap"]
      187 GETTABLEKS                       R20 R0 K7 ["Material"]
      189 GETTABLEKS                       R20 R20 K36 ["NormalMap"]
      191 SETTABLEKS                       R20 R19 K36 ["NormalMap"]
      193 GETTABLEKS                       R20 R0 K7 ["Material"]
      195 GETTABLEKS                       R20 R20 K37 ["RoughnessMap"]
      197 SETTABLEKS                       R20 R19 K37 ["RoughnessMap"]
      199 SETTABLEKS                       R6 R19 K32 ["Parent"]
      201 GETUPVAL                         R19 3
      202 GETTABLEKS                       R19 R19 K14 ["useEffect"]
      204 NEWCLOSURE                       R20 P2
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U6
      211 NEWTABLE                         R21 0 6
      213 MOVE                             R22 R8
      214 MOVE                             R23 R10
      215 MOVE                             R24 R14
      216 MOVE                             R25 R12
      217 GETTABLEKS                       R26 R0 K15 ["MaterialPreviewGeometryType"]
      219 GETTABLEKS                       R27 R0 K38 ["OverrideTransparency"]
      221 SETLIST                          R21 R22 6 [1]
      223 CALL                             R19 2 0
      224 GETUPVAL                         R19 9
      225 GETTABLEKS                       R19 R19 K39 ["join"]
      227 DUPTABLE                         R20 K43 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
      228 GETTABLEKS                       R21 R0 K40 ["AnchorPoint"]
      230 SETTABLEKS                       R21 R20 K40 ["AnchorPoint"]
      232 GETTABLEKS                       R22 R0 K44 ["Transparent"]
      234 JUMPIF                           R22 ; [+2]
      235 MOVE                             R21 R3
      236 JUMP                             ; [+1]
      237 LOADNIL                          R21
      238 SETTABLEKS                       R21 R20 K2 ["BackgroundColor"]
      240 GETTABLEKS                       R21 R0 K41 ["LayoutOrder"]
      242 SETTABLEKS                       R21 R20 K41 ["LayoutOrder"]
      244 GETTABLEKS                       R21 R0 K42 ["Position"]
      246 SETTABLEKS                       R21 R20 K42 ["Position"]
      248 GETTABLEKS                       R21 R0 K26 ["Size"]
      250 SETTABLEKS                       R21 R20 K26 ["Size"]
      252 GETTABLEKS                       R21 R0 K45 ["WrapperProps"]
      254 CALL                             R19 2 1
      255 GETUPVAL                         R20 2
      256 GETTABLEKS                       R21 R0 K46 ["CornerRadius"]
      258 GETTABLEKS                       R22 R2 K46 ["CornerRadius"]
      260 CALL                             R20 2 1
      261 GETTABLEKS                       R22 R0 K15 ["MaterialPreviewGeometryType"]
      263 GETUPVAL                         R23 6
      264 GETTABLEKS                       R23 R23 K47 ["CubeCornerOn"]
      266 JUMPIFNOTEQ                      R22 R23 ; [+3]
      268 LOADN                            R21 40
      269 JUMP                             ; [+1]
      270 LOADN                            R21 70
      271 GETTABLEKS                       R24 R0 K15 ["MaterialPreviewGeometryType"]
      273 GETUPVAL                         R25 6
      274 GETTABLEKS                       R25 R25 K47 ["CubeCornerOn"]
      276 JUMPIFNOTEQ                      R24 R25 ; [+3]
      278 LOADK                            R23 K48 [1.9238044001630872]
      279 JUMP                             ; [+1]
      280 LOADN                            R23 1
      281 MUL                              R22 R4 R23
      282 GETUPVAL                         R23 3
      283 GETTABLEKS                       R23 R23 K49 ["createElement"]
      285 GETUPVAL                         R24 10
      286 MOVE                             R25 R19
      287 DUPTABLE                         R26 K52 [{"AssetRenderModel", "UICorner"}]
      288 GETUPVAL                         R27 3
      289 GETTABLEKS                       R27 R27 K49 ["createElement"]
      291 GETUPVAL                         R28 11
      292 DUPTABLE                         R29 K70 [{["BackgroundColor3"], ["CornerRadius"], ["ImageTransparency"], ["DisablePan"] = True, ["EnableSky"], ["RecenterModelOnUpdate"] = False, ["DisableZoom"], ["FieldOfView"], ["InitialDistance"], ["FocusDirection"] = {0, 0, -1}, ["LightDirection"], ["Ambient"], ["LightColor"], ["OnViewModelLoaded"], ["Model"], ["RecenterCameraOnUpdate"], ["Size"], ["Static"], ["ref"]}]
      293 SETTABLEKS                       R3 R29 K53 ["BackgroundColor3"]
      295 SETTABLEKS                       R20 R29 K46 ["CornerRadius"]
      297 GETTABLEKS                       R30 R0 K54 ["ImageTransparency"]
      299 SETTABLEKS                       R30 R29 K54 ["ImageTransparency"]
      301 SETTABLEKS                       R18 R29 K57 ["EnableSky"]
      303 GETTABLEKS                       R30 R0 K60 ["DisableZoom"]
      305 SETTABLEKS                       R30 R29 K60 ["DisableZoom"]
      307 SETTABLEKS                       R21 R29 K61 ["FieldOfView"]
      309 SETTABLEKS                       R22 R29 K3 ["InitialDistance"]
      311 GETTABLEKS                       R30 R2 K64 ["LightDirection"]
      313 SETTABLEKS                       R30 R29 K64 ["LightDirection"]
      315 GETTABLEKS                       R30 R2 K71 ["AmbientColor"]
      317 SETTABLEKS                       R30 R29 K65 ["Ambient"]
      319 GETTABLEKS                       R30 R2 K66 ["LightColor"]
      321 SETTABLEKS                       R30 R29 K66 ["LightColor"]
      323 NEWCLOSURE                       R30 P3
      324 CAPTURE                          VAL R9
      325 SETTABLEKS                       R30 R29 K67 ["OnViewModelLoaded"]
      327 SETTABLEKS                       R6 R29 K68 ["Model"]
      329 SETTABLEKS                       R5 R29 K4 ["RecenterCameraOnUpdate"]
      331 GETIMPORT                        R30 K74 [UDim2.fromScale]
      333 LOADN                            R31 1
      334 LOADN                            R32 1
      335 CALL                             R30 2 1
      336 SETTABLEKS                       R30 R29 K26 ["Size"]
      338 GETTABLEKS                       R30 R0 K18 ["Static"]
      340 SETTABLEKS                       R30 R29 K18 ["Static"]
      342 GETTABLEKS                       R30 R0 K75 ["ForwardRef"]
      344 SETTABLEKS                       R30 R29 K69 ["ref"]
      346 CALL                             R27 2 1
      347 SETTABLEKS                       R27 R26 K50 ["AssetRenderModel"]
      349 JUMPIFNOT                        R20 ; [+9]
      350 GETUPVAL                         R27 3
      351 GETTABLEKS                       R27 R27 K49 ["createElement"]
      353 LOADK                            R28 K51 ["UICorner"]
      354 DUPTABLE                         R29 K76 [{"CornerRadius"}]
      355 SETTABLEKS                       R20 R29 K46 ["CornerRadius"]
      357 CALL                             R27 2 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R27
      360 SETTABLEKS                       R27 R26 K51 ["UICorner"]
      362 CALL                             R23 3 -1
      363 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K2 ["Parent"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R2 K6 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R2 K7 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R2 K8 ["React"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K9 ["Wrappers"]
       31 GETTABLEKS                       R6 R6 K10 ["withForwardRef"]
       33 GETTABLEKS                       R7 R4 K11 ["Style"]
       35 GETTABLEKS                       R7 R7 K12 ["Stylizer"]
       37 GETTABLEKS                       R8 R4 K13 ["Util"]
       39 GETTABLEKS                       R8 R8 K14 ["prioritize"]
       41 GETTABLEKS                       R9 R4 K15 ["UI"]
       43 GETTABLEKS                       R10 R9 K16 ["AssetRenderModel"]
       45 GETTABLEKS                       R11 R9 K17 ["Pane"]
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R13 R0 K18 ["Context"]
       51 GETTABLEKS                       R13 R13 K19 ["StudioServices"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R0 K20 ["Enums"]
       58 GETTABLEKS                       R14 R14 K21 ["MaterialPreviewGeometryType"]
       60 CALL                             R13 1 1
       61 GETTABLEKS                       R14 R0 K13 ["Util"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R14 K22 ["getMaterialColor"]
       67 CALL                             R15 1 1
       68 GETTABLEKS                       R16 R0 K23 ["Constants"]
       70 GETIMPORT                        R17 K4 [require]
       72 GETTABLEKS                       R18 R16 K24 ["BASE_MATERIALS_WITH_METALNESS"]
       74 CALL                             R17 1 1
       75 DUPCLOSURE                       R18 K25 [PROTO_0]
       76 CAPTURE                          VAL R13
       77 DUPCLOSURE                       R19 K26 [PROTO_1]
       78 CAPTURE                          VAL R13
       79 GETIMPORT                        R20 K29 [Instance.new]
       81 LOADK                            R21 K30 ["Model"]
       82 CALL                             R20 1 1
       83 DUPCLOSURE                       R21 K31 [PROTO_2]
       84 CAPTURE                          VAL R20
       85 CAPTURE                          VAL R8
       86 DUPCLOSURE                       R22 K32 [PROTO_3]
       87 DUPCLOSURE                       R23 K33 [PROTO_4]
       88 DUPCLOSURE                       R24 K34 [PROTO_6]
       89 CAPTURE                          VAL R20
       90 DUPCLOSURE                       R25 K35 [PROTO_16]
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R20
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R21
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R10
      103 MOVE                             R26 R6
      104 MOVE                             R27 R25
      105 CALL                             R26 1 -1
      106 RETURN                           R26 -1
