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
        5 LOADK                            R1 K1 [1.92380440016309]
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
       83 LOADK                            R14 K37 [{0, 0, -1}]
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
      114 LOADK                            R14 K37 [{0, 0, -1}]
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
       19 LOADK                            R4 K14 [-1.76776695296637]
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
       16 MULK                             R2 R3 K9 [1.4142135623731]
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
        6 JUMPIFEQ                         R0 R1 ; [+11]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+20]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["CubeCornerOn"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+13]
       18 GETUPVAL                         R0 3
       19 GETIMPORT                        R2 K5 [Instance.new]
       21 LOADK                            R3 K6 ["Part"]
       22 CALL                             R2 1 1
       23 LOADK                            R3 K7 [{3.535534, 3.535534, 3.535534}]
       24 SETTABLEKS                       R3 R2 K8 ["Size"]
       26 MOVE                             R1 R2
       27 CALL                             R0 1 0
       28 LOADNIL                          R0
       29 RETURN                           R0 1
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K9 ["Plane"]
       36 JUMPIFNOTEQ                      R0 R1 ; [+29]
       38 GETUPVAL                         R0 3
       39 GETIMPORT                        R2 K5 [Instance.new]
       41 LOADK                            R3 K6 ["Part"]
       42 CALL                             R2 1 1
       43 GETIMPORT                        R3 K13 [Enum.SurfaceType.Smooth]
       45 SETTABLEKS                       R3 R2 K14 ["TopSurface"]
       47 GETIMPORT                        R3 K13 [Enum.SurfaceType.Smooth]
       49 SETTABLEKS                       R3 R2 K15 ["BottomSurface"]
       51 LOADK                            R3 K16 [{100, 100, 0}]
       52 SETTABLEKS                       R3 R2 K8 ["Size"]
       54 GETIMPORT                        R3 K18 [CFrame.new]
       56 LOADN                            R4 0
       57 LOADN                            R5 0
       58 LOADK                            R6 K19 [-1.76776695296637]
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R2 K17 ["CFrame"]
       62 MOVE                             R1 R2
       63 CALL                             R0 1 0
       64 LOADNIL                          R0
       65 RETURN                           R0 1
       66 GETUPVAL                         R0 0
       67 GETTABLEKS                       R0 R0 K0 ["MaterialPreviewGeometryType"]
       69 GETUPVAL                         R1 1
       70 GETTABLEKS                       R1 R1 K20 ["Dominus"]
       72 JUMPIFNOTEQ                      R0 R1 ; [+11]
       74 GETIMPORT                        R0 K23 [task.spawn]
       76 NEWCLOSURE                       R1 P0
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U5
       80 CALL                             R0 1 1
       81 NEWCLOSURE                       R1 P1
       82 CAPTURE                          VAL R0
       83 RETURN                           R1 1
       84 GETUPVAL                         R0 3
       85 GETUPVAL                         R1 6
       86 GETUPVAL                         R2 4
       87 LOADK                            R3 K24 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K25 ["MeshPartBorderThickness"]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K26 ["MeshPartBackgroundColor"]
       94 GETUPVAL                         R6 7
       95 CALL                             R1 5 1
       96 CALL                             R0 1 0
       97 LOADNIL                          R0
       98 RETURN                           R0 1

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
       15 JUMPIFNOTEQKS                    R1 K4 ["EnumItem"] ; [+22]
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["Material"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 5
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["Material"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 6
       31 LOADK                            R2 K5 [""]
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 7
       34 LOADK                            R2 K5 [""]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 RETURN                           R1 1
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K1 ["Material"]
       41 FASTCALL1                        TYPEOF R2 ; [+2]
       42 GETIMPORT                        R1 K3 [typeof]
       44 CALL                             R1 1 1
       45 JUMPIFNOTEQKS                    R1 K6 ["Instance"] ; [+68]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K1 ["Material"]
       50 LOADK                            R3 K7 ["MaterialVariant"]
       51 NAMECALL                         R1 R1 K8 ["IsA"]
       53 CALL                             R1 2 1
       54 JUMPIFNOT                        R1 ; [+59]
       55 GETUPVAL                         R1 3
       56 GETIMPORT                        R2 K11 [Color3.new]
       58 LOADN                            R3 1
       59 LOADN                            R4 1
       60 LOADN                            R5 1
       61 CALL                             R2 3 -1
       62 CALL                             R1 -1 0
       63 GETUPVAL                         R1 5
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K1 ["Material"]
       67 GETTABLEKS                       R2 R2 K12 ["BaseMaterial"]
       69 CALL                             R1 1 0
       70 GETUPVAL                         R1 6
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K1 ["Material"]
       74 GETTABLEKS                       R2 R2 K13 ["Name"]
       76 CALL                             R1 1 0
       77 GETUPVAL                         R1 7
       78 GETUPVAL                         R2 1
       79 GETTABLEKS                       R2 R2 K1 ["Material"]
       81 GETTABLEKS                       R2 R2 K14 ["ColorMap"]
       83 CALL                             R1 1 0
       84 GETUPVAL                         R1 1
       85 GETTABLEKS                       R1 R1 K1 ["Material"]
       87 LOADK                            R3 K13 ["Name"]
       88 NAMECALL                         R1 R1 K15 ["GetPropertyChangedSignal"]
       90 CALL                             R1 2 1
       91 NEWCLOSURE                       R3 P0
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U1
       94 NAMECALL                         R1 R1 K16 ["Connect"]
       96 CALL                             R1 2 1
       97 GETUPVAL                         R2 1
       98 GETTABLEKS                       R2 R2 K1 ["Material"]
      100 LOADK                            R4 K12 ["BaseMaterial"]
      101 NAMECALL                         R2 R2 K15 ["GetPropertyChangedSignal"]
      103 CALL                             R2 2 1
      104 NEWCLOSURE                       R4 P1
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          UPVAL U1
      107 NAMECALL                         R2 R2 K16 ["Connect"]
      109 CALL                             R2 2 1
      110 NEWCLOSURE                       R3 P2
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R1
      113 RETURN                           R3 1
      114 GETUPVAL                         R1 3
      115 GETIMPORT                        R2 K11 [Color3.new]
      117 LOADN                            R3 1
      118 LOADN                            R4 1
      119 LOADN                            R5 1
      120 CALL                             R2 3 -1
      121 CALL                             R1 -1 0
      122 GETUPVAL                         R1 5
      123 GETIMPORT                        R2 K19 [Enum.Material.SmoothPlastic]
      125 CALL                             R1 1 0
      126 GETUPVAL                         R1 6
      127 LOADK                            R2 K5 [""]
      128 CALL                             R1 1 0
      129 GETUPVAL                         R1 7
      130 LOADK                            R2 K5 [""]
      131 CALL                             R1 1 0
      132 LOADNIL                          R1
      133 RETURN                           R1 1

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
       21 GETUPVAL                         R0 4
       22 GETTABLEKS                       R0 R0 K5 ["MaterialPreviewGeometryType"]
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K6 ["Dominus"]
       27 JUMPIFNOTEQ                      R0 R1 ; [+18]
       29 GETUPVAL                         R0 0
       30 GETIMPORT                        R2 K9 [CFrame.Angles]
       32 LOADN                            R3 0
       33 LOADK                            R4 K10 [0.523598775598299]
       34 LOADN                            R5 0
       35 CALL                             R2 3 1
       36 GETIMPORT                        R3 K9 [CFrame.Angles]
       38 LOADK                            R4 K11 [0.261799387799149]
       39 LOADN                            R5 0
       40 LOADN                            R6 0
       41 CALL                             R3 3 1
       42 MUL                              R1 R2 R3
       43 SETTABLEKS                       R1 R0 K7 ["CFrame"]
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 4
       47 GETTABLEKS                       R0 R0 K5 ["MaterialPreviewGeometryType"]
       49 GETUPVAL                         R1 5
       50 GETTABLEKS                       R1 R1 K12 ["CubeCornerOn"]
       52 JUMPIFNOTEQ                      R0 R1 ; [+20]
       54 GETUPVAL                         R0 6
       55 JUMPIFNOT                        R0 ; [+10]
       56 GETUPVAL                         R0 0
       57 GETIMPORT                        R1 K9 [CFrame.Angles]
       59 LOADK                            R2 K13 [-0.615479708670387]
       60 LOADK                            R3 K14 [0.785398163397448]
       61 LOADN                            R4 0
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["CFrame"]
       65 RETURN                           R0 0
       66 GETUPVAL                         R0 0
       67 GETIMPORT                        R1 K16 [CFrame.new]
       69 CALL                             R1 0 1
       70 SETTABLEKS                       R1 R0 K7 ["CFrame"]
       72 RETURN                           R0 0
       73 GETUPVAL                         R0 4
       74 GETTABLEKS                       R0 R0 K5 ["MaterialPreviewGeometryType"]
       76 GETUPVAL                         R1 5
       77 GETTABLEKS                       R1 R1 K17 ["Cube"]
       79 JUMPIFNOTEQ                      R0 R1 ; [+7]
       81 GETUPVAL                         R0 0
       82 GETIMPORT                        R1 K16 [CFrame.new]
       84 CALL                             R1 0 1
       85 SETTABLEKS                       R1 R0 K7 ["CFrame"]
       87 RETURN                           R0 0

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
       71 GETUPVAL                         R19 6
       72 CALL                             R19 0 1
       73 GETUPVAL                         R20 3
       74 GETTABLEKS                       R20 R20 K14 ["useEffect"]
       76 NEWCLOSURE                       R21 P0
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R19
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          VAL R3
       85 NEWTABLE                         R22 0 1
       87 GETTABLEKS                       R23 R0 K15 ["MaterialPreviewGeometryType"]
       89 SETLIST                          R22 R23 1 [1]
       91 CALL                             R20 2 0
       92 GETUPVAL                         R20 3
       93 GETTABLEKS                       R20 R20 K14 ["useEffect"]
       95 NEWCLOSURE                       R21 P1
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R13
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R17
      104 NEWTABLE                         R22 0 3
      106 GETTABLEKS                       R23 R0 K7 ["Material"]
      108 GETTABLEKS                       R24 R0 K16 ["Use2022Materials"]
      110 GETTABLEKS                       R25 R2 K16 ["Use2022Materials"]
      112 SETLIST                          R22 R23 3 [1]
      114 CALL                             R20 2 0
      115 GETTABLEKS                       R20 R0 K17 ["Static"]
      117 JUMPIFNOT                        R20 ; [+84]
      118 GETTABLEKS                       R21 R0 K7 ["Material"]
      120 FASTCALL1                        TYPEOF R21 ; [+2]
      121 GETIMPORT                        R20 K19 [typeof]
      123 CALL                             R20 1 1
      124 JUMPIFNOTEQKS                    R20 K20 ["Instance"] ; [+77]
      126 GETTABLEKS                       R20 R0 K7 ["Material"]
      128 LOADK                            R22 K21 ["MaterialVariant"]
      129 NAMECALL                         R20 R20 K22 ["IsA"]
      131 CALL                             R20 2 1
      132 JUMPIFNOT                        R20 ; [+69]
      133 LOADK                            R22 K23 ["Part"]
      134 NAMECALL                         R20 R6 K22 ["IsA"]
      136 CALL                             R20 2 1
      137 JUMPIFNOT                        R20 ; [+22]
      138 LOADK                            R20 K24 [{10, 10, 0.001}]
      139 SETTABLEKS                       R20 R6 K25 ["Size"]
      141 LOADK                            R22 K26 ["Decal"]
      142 NAMECALL                         R20 R6 K27 ["FindFirstChildWhichIsA"]
      144 CALL                             R20 2 1
      145 JUMPIFNOTEQKNIL                  R20 ; [+6]
      147 GETIMPORT                        R21 K28 [Instance.new]
      149 LOADK                            R22 K26 ["Decal"]
      150 CALL                             R21 1 1
      151 MOVE                             R20 R21
      152 GETTABLEKS                       R21 R0 K7 ["Material"]
      154 GETTABLEKS                       R21 R21 K29 ["ColorMap"]
      156 SETTABLEKS                       R21 R20 K30 ["Texture"]
      158 SETTABLEKS                       R6 R20 K31 ["Parent"]
      160 LOADK                            R22 K32 ["MeshPart"]
      161 NAMECALL                         R20 R6 K22 ["IsA"]
      163 CALL                             R20 2 1
      164 JUMPIFNOT                        R20 ; [+37]
      165 LOADK                            R22 K33 ["SurfaceAppearance"]
      166 NAMECALL                         R20 R6 K27 ["FindFirstChildWhichIsA"]
      168 CALL                             R20 2 1
      169 JUMPIFNOTEQKNIL                  R20 ; [+6]
      171 GETIMPORT                        R21 K28 [Instance.new]
      173 LOADK                            R22 K33 ["SurfaceAppearance"]
      174 CALL                             R21 1 1
      175 MOVE                             R20 R21
      176 GETTABLEKS                       R21 R0 K7 ["Material"]
      178 GETTABLEKS                       R21 R21 K29 ["ColorMap"]
      180 SETTABLEKS                       R21 R20 K29 ["ColorMap"]
      182 GETTABLEKS                       R21 R0 K7 ["Material"]
      184 GETTABLEKS                       R21 R21 K34 ["MetalnessMap"]
      186 SETTABLEKS                       R21 R20 K34 ["MetalnessMap"]
      188 GETTABLEKS                       R21 R0 K7 ["Material"]
      190 GETTABLEKS                       R21 R21 K35 ["NormalMap"]
      192 SETTABLEKS                       R21 R20 K35 ["NormalMap"]
      194 GETTABLEKS                       R21 R0 K7 ["Material"]
      196 GETTABLEKS                       R21 R21 K36 ["RoughnessMap"]
      198 SETTABLEKS                       R21 R20 K36 ["RoughnessMap"]
      200 SETTABLEKS                       R6 R20 K31 ["Parent"]
      202 GETUPVAL                         R20 3
      203 GETTABLEKS                       R20 R20 K14 ["useEffect"]
      205 NEWCLOSURE                       R21 P2
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R0
      211 CAPTURE                          UPVAL U7
      212 CAPTURE                          VAL R19
      213 NEWTABLE                         R22 0 6
      215 MOVE                             R23 R8
      216 MOVE                             R24 R10
      217 MOVE                             R25 R14
      218 MOVE                             R26 R12
      219 GETTABLEKS                       R27 R0 K15 ["MaterialPreviewGeometryType"]
      221 MOVE                             R28 R19
      222 SETLIST                          R22 R23 6 [1]
      224 CALL                             R20 2 0
      225 GETUPVAL                         R20 10
      226 GETTABLEKS                       R20 R20 K37 ["join"]
      228 DUPTABLE                         R21 K41 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
      229 GETTABLEKS                       R22 R0 K38 ["AnchorPoint"]
      231 SETTABLEKS                       R22 R21 K38 ["AnchorPoint"]
      233 GETTABLEKS                       R23 R0 K42 ["Transparent"]
      235 JUMPIF                           R23 ; [+2]
      236 MOVE                             R22 R3
      237 JUMP                             ; [+1]
      238 LOADNIL                          R22
      239 SETTABLEKS                       R22 R21 K2 ["BackgroundColor"]
      241 GETTABLEKS                       R22 R0 K39 ["LayoutOrder"]
      243 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      245 GETTABLEKS                       R22 R0 K40 ["Position"]
      247 SETTABLEKS                       R22 R21 K40 ["Position"]
      249 GETTABLEKS                       R22 R0 K25 ["Size"]
      251 SETTABLEKS                       R22 R21 K25 ["Size"]
      253 GETTABLEKS                       R22 R0 K43 ["WrapperProps"]
      255 CALL                             R20 2 1
      256 GETUPVAL                         R21 2
      257 GETTABLEKS                       R22 R0 K44 ["CornerRadius"]
      259 GETTABLEKS                       R23 R2 K44 ["CornerRadius"]
      261 CALL                             R21 2 1
      262 JUMPIFNOT                        R19 ; [+11]
      263 GETTABLEKS                       R23 R0 K15 ["MaterialPreviewGeometryType"]
      265 GETUPVAL                         R24 7
      266 GETTABLEKS                       R24 R24 K45 ["CubeCornerOn"]
      268 JUMPIFNOTEQ                      R23 R24 ; [+3]
      270 LOADN                            R22 40
      271 JUMP                             ; [+3]
      272 LOADN                            R22 70
      273 JUMP                             ; [+1]
      274 LOADNIL                          R22
      275 JUMPIFNOT                        R19 ; [+12]
      276 GETTABLEKS                       R25 R0 K15 ["MaterialPreviewGeometryType"]
      278 GETUPVAL                         R26 7
      279 GETTABLEKS                       R26 R26 K45 ["CubeCornerOn"]
      281 JUMPIFNOTEQ                      R25 R26 ; [+3]
      283 LOADK                            R24 K46 [1.92380440016309]
      284 JUMP                             ; [+1]
      285 LOADN                            R24 1
      286 MUL                              R23 R4 R24
      287 JUMP                             ; [+1]
      288 MOVE                             R23 R4
      289 GETUPVAL                         R24 3
      290 GETTABLEKS                       R24 R24 K47 ["createElement"]
      292 GETUPVAL                         R25 11
      293 MOVE                             R26 R20
      294 DUPTABLE                         R27 K50 [{"AssetRenderModel", "UICorner"}]
      295 GETUPVAL                         R28 3
      296 GETTABLEKS                       R28 R28 K47 ["createElement"]
      298 GETUPVAL                         R29 12
      299 DUPTABLE                         R30 K65 [{"BackgroundColor3", "CornerRadius", "ImageTransparency", "DisablePan", "EnableSky", "RecenterModelOnUpdate", "DisableZoom", "FieldOfView", "InitialDistance", "FocusDirection", "LightDirection", "Ambient", "LightColor", "OnViewModelLoaded", "Model", "RecenterCameraOnUpdate", "Size", "Static", "ref"}]
      300 SETTABLEKS                       R3 R30 K51 ["BackgroundColor3"]
      302 SETTABLEKS                       R21 R30 K44 ["CornerRadius"]
      304 GETTABLEKS                       R31 R0 K52 ["ImageTransparency"]
      306 SETTABLEKS                       R31 R30 K52 ["ImageTransparency"]
      308 LOADB                            R31 1
      309 SETTABLEKS                       R31 R30 K53 ["DisablePan"]
      311 SETTABLEKS                       R18 R30 K54 ["EnableSky"]
      313 LOADB                            R31 0
      314 SETTABLEKS                       R31 R30 K55 ["RecenterModelOnUpdate"]
      316 GETTABLEKS                       R31 R0 K56 ["DisableZoom"]
      318 SETTABLEKS                       R31 R30 K56 ["DisableZoom"]
      320 SETTABLEKS                       R22 R30 K57 ["FieldOfView"]
      322 SETTABLEKS                       R23 R30 K3 ["InitialDistance"]
      324 LOADK                            R31 K66 [{0, 0, -1}]
      325 SETTABLEKS                       R31 R30 K58 ["FocusDirection"]
      327 GETTABLEKS                       R31 R2 K59 ["LightDirection"]
      329 SETTABLEKS                       R31 R30 K59 ["LightDirection"]
      331 GETTABLEKS                       R31 R2 K67 ["AmbientColor"]
      333 SETTABLEKS                       R31 R30 K60 ["Ambient"]
      335 GETTABLEKS                       R31 R2 K61 ["LightColor"]
      337 SETTABLEKS                       R31 R30 K61 ["LightColor"]
      339 NEWCLOSURE                       R31 P3
      340 CAPTURE                          VAL R9
      341 SETTABLEKS                       R31 R30 K62 ["OnViewModelLoaded"]
      343 SETTABLEKS                       R6 R30 K63 ["Model"]
      345 SETTABLEKS                       R5 R30 K4 ["RecenterCameraOnUpdate"]
      347 GETIMPORT                        R31 K70 [UDim2.fromScale]
      349 LOADN                            R32 1
      350 LOADN                            R33 1
      351 CALL                             R31 2 1
      352 SETTABLEKS                       R31 R30 K25 ["Size"]
      354 GETTABLEKS                       R31 R0 K17 ["Static"]
      356 SETTABLEKS                       R31 R30 K17 ["Static"]
      358 GETTABLEKS                       R31 R0 K71 ["ForwardRef"]
      360 SETTABLEKS                       R31 R30 K64 ["ref"]
      362 CALL                             R28 2 1
      363 SETTABLEKS                       R28 R27 K48 ["AssetRenderModel"]
      365 JUMPIFNOT                        R21 ; [+9]
      366 GETUPVAL                         R28 3
      367 GETTABLEKS                       R28 R28 K47 ["createElement"]
      369 LOADK                            R29 K49 ["UICorner"]
      370 DUPTABLE                         R30 K72 [{"CornerRadius"}]
      371 SETTABLEKS                       R21 R30 K44 ["CornerRadius"]
      373 CALL                             R28 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R28
      376 SETTABLEKS                       R28 R27 K49 ["UICorner"]
      378 CALL                             R24 3 -1
      379 RETURN                           R24 -1

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
       75 GETIMPORT                        R18 K4 [require]
       77 GETTABLEKS                       R19 R0 K25 ["Flags"]
       79 GETTABLEKS                       R19 R19 K26 ["getFFlagMaterialGridTerrainEditorItemUx"]
       81 CALL                             R18 1 1
       82 DUPCLOSURE                       R19 K27 [PROTO_0]
       83 CAPTURE                          VAL R13
       84 DUPCLOSURE                       R20 K28 [PROTO_1]
       85 CAPTURE                          VAL R13
       86 GETIMPORT                        R21 K31 [Instance.new]
       88 LOADK                            R22 K32 ["Model"]
       89 CALL                             R21 1 1
       90 DUPCLOSURE                       R22 K33 [PROTO_2]
       91 CAPTURE                          VAL R21
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R23 K34 [PROTO_3]
       94 DUPCLOSURE                       R24 K35 [PROTO_4]
       95 DUPCLOSURE                       R25 K36 [PROTO_6]
       96 CAPTURE                          VAL R21
       97 DUPCLOSURE                       R26 K37 [PROTO_16]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R21
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R22
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R10
      111 MOVE                             R27 R6
      112 MOVE                             R28 R26
      113 CALL                             R27 1 -1
      114 RETURN                           R27 -1
