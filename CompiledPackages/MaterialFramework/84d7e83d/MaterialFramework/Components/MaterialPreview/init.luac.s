PROTO_0:
        0 JUMPIF                           R1 ; [+2]
        1 GETUPVAL                         R2 0
        2 RETURN                           R2 1
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Bad assetId"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 LOADK                            R4 K6 ["InsertService"]
       19 NAMECALL                         R2 R0 K7 ["getService"]
       21 CALL                             R2 2 1
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R2 K8 ["LoadLocalAsset"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+16]
       27 LOADK                            R6 K9 ["MeshPart"]
       28 NAMECALL                         R4 R3 K10 ["FindFirstChild"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+9]
       32 GETIMPORT                        R5 K13 [CFrame.new]
       34 LOADN                            R6 0
       35 LOADN                            R7 0
       36 LOADN                            R8 0
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K11 ["CFrame"]
       40 RETURN                           R4 1
       41 GETUPVAL                         R5 0
       42 RETURN                           R5 1
       43 GETUPVAL                         R4 0
       44 RETURN                           R4 1

PROTO_1:
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

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Part"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 [{3.535534, 3.535534, 3.535534}]
        5 SETTABLEKS                       R1 R0 K5 ["Size"]
        7 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETIMPORT                        R3 K3 [Enum.CollisionFidelity.Box]
        4 GETIMPORT                        R4 K6 [Enum.RenderFidelity.Automatic]
        6 NAMECALL                         R0 R0 K7 ["CreateMeshPartAsync"]
        8 CALL                             R0 4 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K10 ["Size"]
       14 GETTABLEKS                       R3 R4 K11 ["unit"]
       16 MULK                             R2 R3 K9 [1.4142135623731]
       17 MULK                             R1 R2 K8 [5]
       18 SETTABLEKS                       R1 R0 K10 ["Size"]
       20 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MaterialPreviewGeometryType"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Cube"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+13]
        8 GETUPVAL                         R0 2
        9 GETIMPORT                        R2 K4 [Instance.new]
       11 LOADK                            R3 K5 ["Part"]
       12 CALL                             R2 1 1
       13 LOADK                            R3 K6 [{3.535534, 3.535534, 3.535534}]
       14 SETTABLEKS                       R3 R2 K7 ["Size"]
       16 MOVE                             R1 R2
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K0 ["MaterialPreviewGeometryType"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K8 ["Plane"]
       26 JUMPIFNOTEQ                      R0 R1 ; [+29]
       28 GETUPVAL                         R0 2
       29 GETIMPORT                        R2 K4 [Instance.new]
       31 LOADK                            R3 K5 ["Part"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K12 [Enum.SurfaceType.Smooth]
       35 SETTABLEKS                       R3 R2 K13 ["TopSurface"]
       37 GETIMPORT                        R3 K12 [Enum.SurfaceType.Smooth]
       39 SETTABLEKS                       R3 R2 K14 ["BottomSurface"]
       41 LOADK                            R3 K15 [{100, 100, 0}]
       42 SETTABLEKS                       R3 R2 K7 ["Size"]
       44 GETIMPORT                        R3 K17 [CFrame.new]
       46 LOADN                            R4 0
       47 LOADN                            R5 0
       48 LOADK                            R6 K18 [-1.76776695296637]
       49 CALL                             R3 3 1
       50 SETTABLEKS                       R3 R2 K16 ["CFrame"]
       52 MOVE                             R1 R2
       53 CALL                             R0 1 0
       54 LOADNIL                          R0
       55 RETURN                           R0 1
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R0 R1 K0 ["MaterialPreviewGeometryType"]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R1 R2 K19 ["Dominus"]
       62 JUMPIFNOTEQ                      R0 R1 ; [+11]
       64 GETIMPORT                        R0 K22 [task.spawn]
       66 NEWCLOSURE                       R1 P0
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U4
       70 CALL                             R0 1 1
       71 NEWCLOSURE                       R1 P1
       72 CAPTURE                          VAL R0
       73 RETURN                           R1 1
       74 GETUPVAL                         R0 5
       75 CALL                             R0 0 1
       76 JUMPIFNOT                        R0 ; [+14]
       77 GETUPVAL                         R0 2
       78 GETUPVAL                         R1 6
       79 GETUPVAL                         R2 3
       80 LOADK                            R3 K23 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R4 R5 K24 ["MeshPartBorderThickness"]
       84 GETUPVAL                         R6 0
       85 GETTABLEKS                       R5 R6 K25 ["MeshPartBackgroundColor"]
       87 GETUPVAL                         R6 7
       88 CALL                             R1 5 1
       89 CALL                             R0 1 0
       90 JUMP                             ; [+6]
       91 GETUPVAL                         R0 2
       92 GETUPVAL                         R1 8
       93 GETUPVAL                         R2 3
       94 LOADK                            R3 K23 ["rbxasset://models/MaterialManager/smooth_material_model.rbxm"]
       95 CALL                             R1 2 1
       96 CALL                             R0 1 0
       97 LOADNIL                          R0
       98 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Material"]
        4 GETTABLEKS                       R1 R2 K1 ["Name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Material"]
        4 GETTABLEKS                       R1 R2 K1 ["BaseMaterial"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Use2022Materials"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["Use2022Materials"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["Material"]
       11 FASTCALL1                        TYPEOF R2 ; [+2]
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K4 ["EnumItem"] ; [+22]
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K1 ["Material"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 5
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["Material"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 6
       31 LOADK                            R2 K5 [""]
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 7
       34 LOADK                            R2 K5 [""]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 RETURN                           R1 1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K1 ["Material"]
       41 FASTCALL1                        TYPEOF R2 ; [+2]
       42 GETIMPORT                        R1 K3 [typeof]
       44 CALL                             R1 1 1
       45 JUMPIFNOTEQKS                    R1 K6 ["Instance"] ; [+68]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R1 R2 K1 ["Material"]
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
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R3 R4 K1 ["Material"]
       67 GETTABLEKS                       R2 R3 K12 ["BaseMaterial"]
       69 CALL                             R1 1 0
       70 GETUPVAL                         R1 6
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R3 R4 K1 ["Material"]
       74 GETTABLEKS                       R2 R3 K13 ["Name"]
       76 CALL                             R1 1 0
       77 GETUPVAL                         R1 7
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R3 R4 K1 ["Material"]
       81 GETTABLEKS                       R2 R3 K14 ["ColorMap"]
       83 CALL                             R1 1 0
       84 GETUPVAL                         R2 1
       85 GETTABLEKS                       R1 R2 K1 ["Material"]
       87 LOADK                            R3 K13 ["Name"]
       88 NAMECALL                         R1 R1 K15 ["GetPropertyChangedSignal"]
       90 CALL                             R1 2 1
       91 NEWCLOSURE                       R3 P0
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U1
       94 NAMECALL                         R1 R1 K16 ["Connect"]
       96 CALL                             R1 2 1
       97 GETUPVAL                         R3 1
       98 GETTABLEKS                       R2 R3 K1 ["Material"]
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

PROTO_13:
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
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R0 R1 K5 ["MaterialPreviewGeometryType"]
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R1 R2 K6 ["Dominus"]
       27 JUMPIFNOTEQ                      R0 R1 ; [+17]
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
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
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K5 ["useState"]
       31 GETUPVAL                         R7 4
       32 CALL                             R6 1 2
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R8 R9 K5 ["useState"]
       36 LOADNIL                          R9
       37 CALL                             R8 1 2
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R10 R11 K5 ["useState"]
       41 GETIMPORT                        R11 K9 [Enum.Material.SmoothPlastic]
       43 CALL                             R10 1 2
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R12 R13 K5 ["useState"]
       47 GETIMPORT                        R13 K12 [Color3.new]
       49 LOADN                            R14 1
       50 LOADN                            R15 1
       51 LOADN                            R16 1
       52 CALL                             R13 3 -1
       53 CALL                             R12 -1 2
       54 GETUPVAL                         R15 3
       55 GETTABLEKS                       R14 R15 K5 ["useState"]
       57 LOADK                            R15 K13 [""]
       58 CALL                             R14 1 2
       59 GETUPVAL                         R17 3
       60 GETTABLEKS                       R16 R17 K5 ["useState"]
       62 LOADK                            R17 K13 [""]
       63 CALL                             R16 1 2
       64 GETUPVAL                         R19 5
       65 GETTABLE                         R18 R19 R10
       66 JUMPIFNOT                        R18 ; [+4]
       67 JUMPIFEQKS                       R14 K13 [""] ; [+2]
       69 LOADB                            R18 0 +1
       70 LOADB                            R18 1
       71 GETUPVAL                         R20 3
       72 GETTABLEKS                       R19 R20 K14 ["useEffect"]
       74 NEWCLOSURE                       R20 P0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U9
       84 NEWTABLE                         R21 0 1
       86 GETTABLEKS                       R22 R0 K15 ["MaterialPreviewGeometryType"]
       88 SETLIST                          R21 R22 1 [1]
       90 CALL                             R19 2 0
       91 GETUPVAL                         R20 3
       92 GETTABLEKS                       R19 R20 K14 ["useEffect"]
       94 NEWCLOSURE                       R20 P1
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R13
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R17
      103 NEWTABLE                         R21 0 3
      105 GETTABLEKS                       R22 R0 K7 ["Material"]
      107 GETTABLEKS                       R23 R0 K16 ["Use2022Materials"]
      109 GETTABLEKS                       R24 R2 K16 ["Use2022Materials"]
      111 SETLIST                          R21 R22 3 [1]
      113 CALL                             R19 2 0
      114 GETTABLEKS                       R19 R0 K17 ["Static"]
      116 JUMPIFNOT                        R19 ; [+84]
      117 GETTABLEKS                       R20 R0 K7 ["Material"]
      119 FASTCALL1                        TYPEOF R20 ; [+2]
      120 GETIMPORT                        R19 K19 [typeof]
      122 CALL                             R19 1 1
      123 JUMPIFNOTEQKS                    R19 K20 ["Instance"] ; [+77]
      125 GETTABLEKS                       R19 R0 K7 ["Material"]
      127 LOADK                            R21 K21 ["MaterialVariant"]
      128 NAMECALL                         R19 R19 K22 ["IsA"]
      130 CALL                             R19 2 1
      131 JUMPIFNOT                        R19 ; [+69]
      132 LOADK                            R21 K23 ["Part"]
      133 NAMECALL                         R19 R6 K22 ["IsA"]
      135 CALL                             R19 2 1
      136 JUMPIFNOT                        R19 ; [+22]
      137 LOADK                            R19 K24 [{10, 10, 0.001}]
      138 SETTABLEKS                       R19 R6 K25 ["Size"]
      140 LOADK                            R21 K26 ["Decal"]
      141 NAMECALL                         R19 R6 K27 ["FindFirstChildWhichIsA"]
      143 CALL                             R19 2 1
      144 JUMPIFNOTEQKNIL                  R19 ; [+6]
      146 GETIMPORT                        R20 K28 [Instance.new]
      148 LOADK                            R21 K26 ["Decal"]
      149 CALL                             R20 1 1
      150 MOVE                             R19 R20
      151 GETTABLEKS                       R21 R0 K7 ["Material"]
      153 GETTABLEKS                       R20 R21 K29 ["ColorMap"]
      155 SETTABLEKS                       R20 R19 K30 ["Texture"]
      157 SETTABLEKS                       R6 R19 K31 ["Parent"]
      159 LOADK                            R21 K32 ["MeshPart"]
      160 NAMECALL                         R19 R6 K22 ["IsA"]
      162 CALL                             R19 2 1
      163 JUMPIFNOT                        R19 ; [+37]
      164 LOADK                            R21 K33 ["SurfaceAppearance"]
      165 NAMECALL                         R19 R6 K27 ["FindFirstChildWhichIsA"]
      167 CALL                             R19 2 1
      168 JUMPIFNOTEQKNIL                  R19 ; [+6]
      170 GETIMPORT                        R20 K28 [Instance.new]
      172 LOADK                            R21 K33 ["SurfaceAppearance"]
      173 CALL                             R20 1 1
      174 MOVE                             R19 R20
      175 GETTABLEKS                       R21 R0 K7 ["Material"]
      177 GETTABLEKS                       R20 R21 K29 ["ColorMap"]
      179 SETTABLEKS                       R20 R19 K29 ["ColorMap"]
      181 GETTABLEKS                       R21 R0 K7 ["Material"]
      183 GETTABLEKS                       R20 R21 K34 ["MetalnessMap"]
      185 SETTABLEKS                       R20 R19 K34 ["MetalnessMap"]
      187 GETTABLEKS                       R21 R0 K7 ["Material"]
      189 GETTABLEKS                       R20 R21 K35 ["NormalMap"]
      191 SETTABLEKS                       R20 R19 K35 ["NormalMap"]
      193 GETTABLEKS                       R21 R0 K7 ["Material"]
      195 GETTABLEKS                       R20 R21 K36 ["RoughnessMap"]
      197 SETTABLEKS                       R20 R19 K36 ["RoughnessMap"]
      199 SETTABLEKS                       R6 R19 K31 ["Parent"]
      201 GETUPVAL                         R20 3
      202 GETTABLEKS                       R19 R20 K14 ["useEffect"]
      204 NEWCLOSURE                       R20 P2
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U6
      211 NEWTABLE                         R21 0 5
      213 MOVE                             R22 R8
      214 MOVE                             R23 R10
      215 MOVE                             R24 R14
      216 MOVE                             R25 R12
      217 GETTABLEKS                       R26 R0 K15 ["MaterialPreviewGeometryType"]
      219 SETLIST                          R21 R22 5 [1]
      221 CALL                             R19 2 0
      222 GETUPVAL                         R20 11
      223 GETTABLEKS                       R19 R20 K37 ["join"]
      225 DUPTABLE                         R20 K41 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
      226 GETTABLEKS                       R21 R0 K38 ["AnchorPoint"]
      228 SETTABLEKS                       R21 R20 K38 ["AnchorPoint"]
      230 GETTABLEKS                       R22 R0 K42 ["Transparent"]
      232 JUMPIF                           R22 ; [+2]
      233 MOVE                             R21 R3
      234 JUMP                             ; [+1]
      235 LOADNIL                          R21
      236 SETTABLEKS                       R21 R20 K2 ["BackgroundColor"]
      238 GETTABLEKS                       R21 R0 K39 ["LayoutOrder"]
      240 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
      242 GETTABLEKS                       R21 R0 K40 ["Position"]
      244 SETTABLEKS                       R21 R20 K40 ["Position"]
      246 GETTABLEKS                       R21 R0 K25 ["Size"]
      248 SETTABLEKS                       R21 R20 K25 ["Size"]
      250 GETTABLEKS                       R21 R0 K43 ["WrapperProps"]
      252 CALL                             R19 2 1
      253 GETUPVAL                         R20 2
      254 GETTABLEKS                       R21 R0 K44 ["CornerRadius"]
      256 GETTABLEKS                       R22 R2 K44 ["CornerRadius"]
      258 CALL                             R20 2 1
      259 GETUPVAL                         R22 3
      260 GETTABLEKS                       R21 R22 K45 ["createElement"]
      262 GETUPVAL                         R22 12
      263 MOVE                             R23 R19
      264 DUPTABLE                         R24 K48 [{"AssetRenderModel", "UICorner"}]
      265 GETUPVAL                         R26 3
      266 GETTABLEKS                       R25 R26 K45 ["createElement"]
      268 GETUPVAL                         R26 13
      269 DUPTABLE                         R27 K61 [{"BackgroundColor3", "CornerRadius", "DisablePan", "EnableSky", "RecenterModelOnUpdate", "DisableZoom", "InitialDistance", "FocusDirection", "LightDirection", "Ambient", "LightColor", "OnViewModelLoaded", "Model", "RecenterCameraOnUpdate", "Size", "Static", "ref"}]
      270 SETTABLEKS                       R3 R27 K49 ["BackgroundColor3"]
      272 SETTABLEKS                       R20 R27 K44 ["CornerRadius"]
      274 LOADB                            R28 1
      275 SETTABLEKS                       R28 R27 K50 ["DisablePan"]
      277 GETUPVAL                         R29 14
      278 CALL                             R29 0 1
      279 JUMPIFNOT                        R29 ; [+2]
      280 MOVE                             R28 R18
      281 JUMP                             ; [+1]
      282 LOADNIL                          R28
      283 SETTABLEKS                       R28 R27 K51 ["EnableSky"]
      285 LOADB                            R28 0
      286 SETTABLEKS                       R28 R27 K52 ["RecenterModelOnUpdate"]
      288 GETTABLEKS                       R28 R0 K53 ["DisableZoom"]
      290 SETTABLEKS                       R28 R27 K53 ["DisableZoom"]
      292 SETTABLEKS                       R4 R27 K3 ["InitialDistance"]
      294 LOADK                            R28 K62 [{0, 0, -1}]
      295 SETTABLEKS                       R28 R27 K54 ["FocusDirection"]
      297 GETTABLEKS                       R28 R2 K55 ["LightDirection"]
      299 SETTABLEKS                       R28 R27 K55 ["LightDirection"]
      301 GETTABLEKS                       R28 R2 K63 ["AmbientColor"]
      303 SETTABLEKS                       R28 R27 K56 ["Ambient"]
      305 GETTABLEKS                       R28 R2 K57 ["LightColor"]
      307 SETTABLEKS                       R28 R27 K57 ["LightColor"]
      309 NEWCLOSURE                       R28 P3
      310 CAPTURE                          VAL R9
      311 SETTABLEKS                       R28 R27 K58 ["OnViewModelLoaded"]
      313 SETTABLEKS                       R6 R27 K59 ["Model"]
      315 SETTABLEKS                       R5 R27 K4 ["RecenterCameraOnUpdate"]
      317 GETIMPORT                        R28 K66 [UDim2.fromScale]
      319 LOADN                            R29 1
      320 LOADN                            R30 1
      321 CALL                             R28 2 1
      322 SETTABLEKS                       R28 R27 K25 ["Size"]
      324 GETTABLEKS                       R28 R0 K17 ["Static"]
      326 SETTABLEKS                       R28 R27 K17 ["Static"]
      328 GETTABLEKS                       R28 R0 K67 ["ForwardRef"]
      330 SETTABLEKS                       R28 R27 K60 ["ref"]
      332 CALL                             R25 2 1
      333 SETTABLEKS                       R25 R24 K46 ["AssetRenderModel"]
      335 JUMPIFNOT                        R20 ; [+9]
      336 GETUPVAL                         R26 3
      337 GETTABLEKS                       R25 R26 K45 ["createElement"]
      339 LOADK                            R26 K47 ["UICorner"]
      340 DUPTABLE                         R27 K68 [{"CornerRadius"}]
      341 SETTABLEKS                       R20 R27 K44 ["CornerRadius"]
      343 CALL                             R25 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R25
      346 SETTABLEKS                       R25 R24 K47 ["UICorner"]
      348 CALL                             R21 3 -1
      349 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       29 GETTABLEKS                       R7 R4 K9 ["Wrappers"]
       31 GETTABLEKS                       R6 R7 K10 ["withForwardRef"]
       33 GETTABLEKS                       R8 R4 K11 ["Style"]
       35 GETTABLEKS                       R7 R8 K12 ["Stylizer"]
       37 GETTABLEKS                       R9 R4 K13 ["Util"]
       39 GETTABLEKS                       R8 R9 K14 ["prioritize"]
       41 GETTABLEKS                       R9 R4 K15 ["UI"]
       43 GETTABLEKS                       R10 R9 K16 ["AssetRenderModel"]
       45 GETTABLEKS                       R11 R9 K17 ["Pane"]
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R14 R0 K18 ["Context"]
       51 GETTABLEKS                       R13 R14 K19 ["StudioServices"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R15 R0 K20 ["Enums"]
       58 GETTABLEKS                       R14 R15 K21 ["MaterialPreviewGeometryType"]
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
       77 GETTABLEKS                       R20 R0 K25 ["Flags"]
       79 GETTABLEKS                       R19 R20 K26 ["getFFlagMaterialPickerUIChanges"]
       81 CALL                             R18 1 1
       82 GETIMPORT                        R19 K4 [require]
       84 GETTABLEKS                       R21 R0 K25 ["Flags"]
       86 GETTABLEKS                       R20 R21 K27 ["getFFlagEnableSkyForMetalBalls"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K30 [Instance.new]
       91 LOADK                            R21 K31 ["Model"]
       92 CALL                             R20 1 1
       93 DUPCLOSURE                       R21 K32 [PROTO_0]
       94 CAPTURE                          VAL R20
       95 DUPCLOSURE                       R22 K33 [PROTO_1]
       96 CAPTURE                          VAL R20
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R23 K34 [PROTO_2]
       99 DUPCLOSURE                       R24 K35 [PROTO_3]
      100 DUPCLOSURE                       R25 K36 [PROTO_5]
      101 CAPTURE                          VAL R20
      102 DUPCLOSURE                       R26 K37 [PROTO_15]
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R20
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R22
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R19
      118 MOVE                             R27 R6
      119 MOVE                             R28 R26
      120 CALL                             R27 1 -1
      121 RETURN                           R27 -1
