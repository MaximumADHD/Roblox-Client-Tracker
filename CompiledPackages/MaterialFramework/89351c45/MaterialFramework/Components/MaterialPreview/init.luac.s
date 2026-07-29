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
       40 LOADK                            R4 K13 [0.523598775598299]
       41 LOADN                            R5 0
       42 CALL                             R2 3 1
       43 GETIMPORT                        R3 K12 [CFrame.Angles]
       45 LOADK                            R4 K14 [0.261799387799149]
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
       59 JUMPIFNOTEQ                      R0 R1 ; [+20]
       61 GETUPVAL                         R0 6
       62 JUMPIFNOT                        R0 ; [+10]
       63 GETUPVAL                         R0 0
       64 GETIMPORT                        R1 K12 [CFrame.Angles]
       66 LOADK                            R2 K16 [-0.615479708670387]
       67 LOADK                            R3 K17 [0.785398163397448]
       68 LOADN                            R4 0
       69 CALL                             R1 3 1
       70 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       72 RETURN                           R0 0
       73 GETUPVAL                         R0 0
       74 GETIMPORT                        R1 K19 [CFrame.new]
       76 CALL                             R1 0 1
       77 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       79 RETURN                           R0 0
       80 GETUPVAL                         R0 4
       81 GETTABLEKS                       R0 R0 K8 ["MaterialPreviewGeometryType"]
       83 GETUPVAL                         R1 5
       84 GETTABLEKS                       R1 R1 K20 ["Cube"]
       86 JUMPIFNOTEQ                      R0 R1 ; [+7]
       88 GETUPVAL                         R0 0
       89 GETIMPORT                        R1 K19 [CFrame.new]
       91 CALL                             R1 0 1
       92 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       94 RETURN                           R0 0

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
      104 NEWTABLE                         R22 0 4
      106 GETTABLEKS                       R23 R0 K7 ["Material"]
      108 GETTABLEKS                       R24 R0 K16 ["Use2022Materials"]
      110 GETTABLEKS                       R25 R2 K16 ["Use2022Materials"]
      112 GETTABLEKS                       R26 R0 K17 ["OverrideColor"]
      114 SETLIST                          R22 R23 4 [1]
      116 CALL                             R20 2 0
      117 GETTABLEKS                       R20 R0 K18 ["Static"]
      119 JUMPIFNOT                        R20 ; [+84]
      120 GETTABLEKS                       R21 R0 K7 ["Material"]
      122 FASTCALL1                        TYPEOF R21 ; [+2]
      123 GETIMPORT                        R20 K20 [typeof]
      125 CALL                             R20 1 1
      126 JUMPIFNOTEQKS                    R20 K21 ["Instance"] ; [+77]
      128 GETTABLEKS                       R20 R0 K7 ["Material"]
      130 LOADK                            R22 K22 ["MaterialVariant"]
      131 NAMECALL                         R20 R20 K23 ["IsA"]
      133 CALL                             R20 2 1
      134 JUMPIFNOT                        R20 ; [+69]
      135 LOADK                            R22 K24 ["Part"]
      136 NAMECALL                         R20 R6 K23 ["IsA"]
      138 CALL                             R20 2 1
      139 JUMPIFNOT                        R20 ; [+22]
      140 LOADK                            R20 K25 [{10, 10, 0.001}]
      141 SETTABLEKS                       R20 R6 K26 ["Size"]
      143 LOADK                            R22 K27 ["Decal"]
      144 NAMECALL                         R20 R6 K28 ["FindFirstChildWhichIsA"]
      146 CALL                             R20 2 1
      147 JUMPIFNOTEQKNIL                  R20 ; [+6]
      149 GETIMPORT                        R21 K29 [Instance.new]
      151 LOADK                            R22 K27 ["Decal"]
      152 CALL                             R21 1 1
      153 MOVE                             R20 R21
      154 GETTABLEKS                       R21 R0 K7 ["Material"]
      156 GETTABLEKS                       R21 R21 K30 ["ColorMap"]
      158 SETTABLEKS                       R21 R20 K31 ["Texture"]
      160 SETTABLEKS                       R6 R20 K32 ["Parent"]
      162 LOADK                            R22 K33 ["MeshPart"]
      163 NAMECALL                         R20 R6 K23 ["IsA"]
      165 CALL                             R20 2 1
      166 JUMPIFNOT                        R20 ; [+37]
      167 LOADK                            R22 K34 ["SurfaceAppearance"]
      168 NAMECALL                         R20 R6 K28 ["FindFirstChildWhichIsA"]
      170 CALL                             R20 2 1
      171 JUMPIFNOTEQKNIL                  R20 ; [+6]
      173 GETIMPORT                        R21 K29 [Instance.new]
      175 LOADK                            R22 K34 ["SurfaceAppearance"]
      176 CALL                             R21 1 1
      177 MOVE                             R20 R21
      178 GETTABLEKS                       R21 R0 K7 ["Material"]
      180 GETTABLEKS                       R21 R21 K30 ["ColorMap"]
      182 SETTABLEKS                       R21 R20 K30 ["ColorMap"]
      184 GETTABLEKS                       R21 R0 K7 ["Material"]
      186 GETTABLEKS                       R21 R21 K35 ["MetalnessMap"]
      188 SETTABLEKS                       R21 R20 K35 ["MetalnessMap"]
      190 GETTABLEKS                       R21 R0 K7 ["Material"]
      192 GETTABLEKS                       R21 R21 K36 ["NormalMap"]
      194 SETTABLEKS                       R21 R20 K36 ["NormalMap"]
      196 GETTABLEKS                       R21 R0 K7 ["Material"]
      198 GETTABLEKS                       R21 R21 K37 ["RoughnessMap"]
      200 SETTABLEKS                       R21 R20 K37 ["RoughnessMap"]
      202 SETTABLEKS                       R6 R20 K32 ["Parent"]
      204 GETUPVAL                         R20 3
      205 GETTABLEKS                       R20 R20 K14 ["useEffect"]
      207 NEWCLOSURE                       R21 P2
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U7
      214 CAPTURE                          VAL R19
      215 NEWTABLE                         R22 0 7
      217 MOVE                             R23 R8
      218 MOVE                             R24 R10
      219 MOVE                             R25 R14
      220 MOVE                             R26 R12
      221 GETTABLEKS                       R27 R0 K15 ["MaterialPreviewGeometryType"]
      223 GETTABLEKS                       R28 R0 K38 ["OverrideTransparency"]
      225 MOVE                             R29 R19
      226 SETLIST                          R22 R23 7 [1]
      228 CALL                             R20 2 0
      229 GETUPVAL                         R20 10
      230 GETTABLEKS                       R20 R20 K39 ["join"]
      232 DUPTABLE                         R21 K43 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
      233 GETTABLEKS                       R22 R0 K40 ["AnchorPoint"]
      235 SETTABLEKS                       R22 R21 K40 ["AnchorPoint"]
      237 GETTABLEKS                       R23 R0 K44 ["Transparent"]
      239 JUMPIF                           R23 ; [+2]
      240 MOVE                             R22 R3
      241 JUMP                             ; [+1]
      242 LOADNIL                          R22
      243 SETTABLEKS                       R22 R21 K2 ["BackgroundColor"]
      245 GETTABLEKS                       R22 R0 K41 ["LayoutOrder"]
      247 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      249 GETTABLEKS                       R22 R0 K42 ["Position"]
      251 SETTABLEKS                       R22 R21 K42 ["Position"]
      253 GETTABLEKS                       R22 R0 K26 ["Size"]
      255 SETTABLEKS                       R22 R21 K26 ["Size"]
      257 GETTABLEKS                       R22 R0 K45 ["WrapperProps"]
      259 CALL                             R20 2 1
      260 GETUPVAL                         R21 2
      261 GETTABLEKS                       R22 R0 K46 ["CornerRadius"]
      263 GETTABLEKS                       R23 R2 K46 ["CornerRadius"]
      265 CALL                             R21 2 1
      266 JUMPIFNOT                        R19 ; [+11]
      267 GETTABLEKS                       R23 R0 K15 ["MaterialPreviewGeometryType"]
      269 GETUPVAL                         R24 7
      270 GETTABLEKS                       R24 R24 K47 ["CubeCornerOn"]
      272 JUMPIFNOTEQ                      R23 R24 ; [+3]
      274 LOADN                            R22 40
      275 JUMP                             ; [+3]
      276 LOADN                            R22 70
      277 JUMP                             ; [+1]
      278 LOADNIL                          R22
      279 JUMPIFNOT                        R19 ; [+12]
      280 GETTABLEKS                       R25 R0 K15 ["MaterialPreviewGeometryType"]
      282 GETUPVAL                         R26 7
      283 GETTABLEKS                       R26 R26 K47 ["CubeCornerOn"]
      285 JUMPIFNOTEQ                      R25 R26 ; [+3]
      287 LOADK                            R24 K48 [1.92380440016309]
      288 JUMP                             ; [+1]
      289 LOADN                            R24 1
      290 MUL                              R23 R4 R24
      291 JUMP                             ; [+1]
      292 MOVE                             R23 R4
      293 GETUPVAL                         R24 3
      294 GETTABLEKS                       R24 R24 K49 ["createElement"]
      296 GETUPVAL                         R25 11
      297 MOVE                             R26 R20
      298 DUPTABLE                         R27 K52 [{"AssetRenderModel", "UICorner"}]
      299 GETUPVAL                         R28 3
      300 GETTABLEKS                       R28 R28 K49 ["createElement"]
      302 GETUPVAL                         R29 12
      303 DUPTABLE                         R30 K70 [{["BackgroundColor3"], ["CornerRadius"], ["ImageTransparency"], ["DisablePan"] = True, ["EnableSky"], ["RecenterModelOnUpdate"] = False, ["DisableZoom"], ["FieldOfView"], ["InitialDistance"], ["FocusDirection"] = {0, 0, -1}, ["LightDirection"], ["Ambient"], ["LightColor"], ["OnViewModelLoaded"], ["Model"], ["RecenterCameraOnUpdate"], ["Size"], ["Static"], ["ref"]}]
      304 SETTABLEKS                       R3 R30 K53 ["BackgroundColor3"]
      306 SETTABLEKS                       R21 R30 K46 ["CornerRadius"]
      308 GETTABLEKS                       R31 R0 K54 ["ImageTransparency"]
      310 SETTABLEKS                       R31 R30 K54 ["ImageTransparency"]
      312 SETTABLEKS                       R18 R30 K57 ["EnableSky"]
      314 GETTABLEKS                       R31 R0 K60 ["DisableZoom"]
      316 SETTABLEKS                       R31 R30 K60 ["DisableZoom"]
      318 SETTABLEKS                       R22 R30 K61 ["FieldOfView"]
      320 SETTABLEKS                       R23 R30 K3 ["InitialDistance"]
      322 GETTABLEKS                       R31 R2 K64 ["LightDirection"]
      324 SETTABLEKS                       R31 R30 K64 ["LightDirection"]
      326 GETTABLEKS                       R31 R2 K71 ["AmbientColor"]
      328 SETTABLEKS                       R31 R30 K65 ["Ambient"]
      330 GETTABLEKS                       R31 R2 K66 ["LightColor"]
      332 SETTABLEKS                       R31 R30 K66 ["LightColor"]
      334 NEWCLOSURE                       R31 P3
      335 CAPTURE                          VAL R9
      336 SETTABLEKS                       R31 R30 K67 ["OnViewModelLoaded"]
      338 SETTABLEKS                       R6 R30 K68 ["Model"]
      340 SETTABLEKS                       R5 R30 K4 ["RecenterCameraOnUpdate"]
      342 GETIMPORT                        R31 K74 [UDim2.fromScale]
      344 LOADN                            R32 1
      345 LOADN                            R33 1
      346 CALL                             R31 2 1
      347 SETTABLEKS                       R31 R30 K26 ["Size"]
      349 GETTABLEKS                       R31 R0 K18 ["Static"]
      351 SETTABLEKS                       R31 R30 K18 ["Static"]
      353 GETTABLEKS                       R31 R0 K75 ["ForwardRef"]
      355 SETTABLEKS                       R31 R30 K69 ["ref"]
      357 CALL                             R28 2 1
      358 SETTABLEKS                       R28 R27 K50 ["AssetRenderModel"]
      360 JUMPIFNOT                        R21 ; [+9]
      361 GETUPVAL                         R28 3
      362 GETTABLEKS                       R28 R28 K49 ["createElement"]
      364 LOADK                            R29 K51 ["UICorner"]
      365 DUPTABLE                         R30 K76 [{"CornerRadius"}]
      366 SETTABLEKS                       R21 R30 K46 ["CornerRadius"]
      368 CALL                             R28 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R28
      371 SETTABLEKS                       R28 R27 K51 ["UICorner"]
      373 CALL                             R24 3 -1
      374 RETURN                           R24 -1

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
