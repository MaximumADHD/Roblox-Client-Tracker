PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
        4 SETTABLEKS                       R1 R0 K4 ["TopSurface"]
        6 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
        8 SETTABLEKS                       R1 R0 K5 ["BottomSurface"]
       10 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
       12 SETTABLEKS                       R1 R0 K6 ["LeftSurface"]
       14 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
       16 SETTABLEKS                       R1 R0 K7 ["RightSurface"]
       18 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
       20 SETTABLEKS                       R1 R0 K8 ["FrontSurface"]
       22 GETIMPORT                        R1 K3 [Enum.SurfaceType.Smooth]
       24 SETTABLEKS                       R1 R0 K9 ["BackSurface"]
       26 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Accessory"]
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 NAMECALL                         R3 R0 K4 ["GetChildren"]
        7 CALL                             R3 1 1
        8 GETTABLEN                        R2 R3 1
        9 SETTABLEKS                       R1 R2 K5 ["Parent"]
       11 GETTABLEKS                       R2 R0 K6 ["Name"]
       13 SETTABLEKS                       R2 R1 K6 ["Name"]
       15 NAMECALL                         R2 R0 K7 ["Destroy"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Accessory"]
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K4 ["Parent"]
        7 GETTABLEKS                       R2 R0 K5 ["Name"]
        9 SETTABLEKS                       R2 R1 K5 ["Name"]
       11 LOADK                            R2 K6 ["Handle"]
       12 SETTABLEKS                       R2 R0 K5 ["Name"]
       14 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["Handle"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+118]
        5 LOADK                            R5 K2 ["MeshPart"]
        6 NAMECALL                         R3 R2 K3 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+113]
       10 GETTABLEKS                       R3 R2 K4 ["MeshId"]
       12 GETTABLEKS                       R4 R2 K5 ["TextureID"]
       14 GETIMPORT                        R5 K8 [Instance.new]
       16 LOADK                            R6 K9 ["Part"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R2 K10 ["Size"]
       20 SETTABLEKS                       R6 R5 K10 ["Size"]
       22 GETTABLEKS                       R6 R2 K11 ["CFrame"]
       24 SETTABLEKS                       R6 R5 K11 ["CFrame"]
       26 LOADK                            R6 K0 ["Handle"]
       27 SETTABLEKS                       R6 R5 K12 ["Name"]
       29 NAMECALL                         R6 R2 K13 ["GetChildren"]
       31 CALL                             R6 1 3
       32 FORGPREP                         R6
       33 LOADK                            R13 K14 ["SurfaceAppearance"]
       34 NAMECALL                         R11 R10 K3 ["IsA"]
       36 CALL                             R11 2 1
       37 JUMPIFNOT                        R11 ; [+3]
       38 GETTABLEKS                       R4 R10 K15 ["ColorMap"]
       40 JUMP                             ; [+19]
       41 LOADK                            R13 K16 ["Vector3Value"]
       42 NAMECALL                         R11 R10 K3 ["IsA"]
       44 CALL                             R11 2 1
       45 JUMPIFNOT                        R11 ; [+4]
       46 GETTABLEKS                       R11 R10 K12 ["Name"]
       48 JUMPIFEQKS                       R11 K17 ["OriginalSize"] ; [+11]
       50 LOADK                            R13 K18 ["TouchTransmitter"]
       51 NAMECALL                         R11 R10 K3 ["IsA"]
       53 CALL                             R11 2 1
       54 JUMPIF                           R11 ; [+5]
       55 NAMECALL                         R11 R10 K19 ["Clone"]
       57 CALL                             R11 1 1
       58 SETTABLEKS                       R5 R11 K20 ["Parent"]
       60 FORGLOOP                         R6 2 ; [-28]
       62 GETIMPORT                        R6 K8 [Instance.new]
       64 LOADK                            R7 K21 ["SpecialMesh"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R3 R6 K4 ["MeshId"]
       68 SETTABLEKS                       R4 R6 K22 ["TextureId"]
       70 SETTABLEKS                       R5 R6 K20 ["Parent"]
       72 GETIMPORT                        R7 K24 [game]
       74 LOADK                            R9 K25 ["InsertService"]
       75 NAMECALL                         R7 R7 K26 ["GetService"]
       77 CALL                             R7 2 1
       78 MOVE                             R9 R3
       79 GETIMPORT                        R10 K30 [Enum.CollisionFidelity.Default]
       81 GETIMPORT                        R11 K33 [Enum.RenderFidelity.Automatic]
       83 NAMECALL                         R7 R7 K34 ["CreateMeshPartAsync"]
       85 CALL                             R7 4 1
       86 JUMPIFNOT                        R7 ; [+8]
       87 GETTABLEKS                       R9 R7 K10 ["Size"]
       89 DIV                              R8 R1 R9
       90 SETTABLEKS                       R8 R6 K35 ["Scale"]
       92 NAMECALL                         R8 R7 K36 ["Destroy"]
       94 CALL                             R8 1 0
       95 NAMECALL                         R8 R2 K36 ["Destroy"]
       97 CALL                             R8 1 0
       98 SETTABLEKS                       R0 R5 K20 ["Parent"]
      100 LOADK                            R10 K37 ["ThumbnailConfiguration"]
      101 LOADB                            R11 1
      102 NAMECALL                         R8 R0 K1 ["FindFirstChild"]
      104 CALL                             R8 3 1
      105 JUMPIFNOT                        R8 ; [+17]
      106 LOADK                            R11 K38 ["Configuration"]
      107 NAMECALL                         R9 R8 K3 ["IsA"]
      109 CALL                             R9 2 1
      110 JUMPIFNOT                        R9 ; [+12]
      111 LOADK                            R11 K39 ["ThumbnailCameraTarget"]
      112 NAMECALL                         R9 R8 K1 ["FindFirstChild"]
      114 CALL                             R9 2 1
      115 JUMPIFNOT                        R9 ; [+7]
      116 LOADK                            R12 K40 ["ObjectValue"]
      117 NAMECALL                         R10 R9 K3 ["IsA"]
      119 CALL                             R10 2 1
      120 JUMPIFNOT                        R10 ; [+2]
      121 SETTABLEKS                       R5 R9 K41 ["Value"]
      123 LOADK                            R5 K0 ["Handle"]
      124 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
      126 CALL                             R3 2 1
      127 MOVE                             R2 R3
      128 JUMPIF                           R2 ; [+1]
      129 RETURN                           R0 0
      130 LOADK                            R5 K21 ["SpecialMesh"]
      131 NAMECALL                         R3 R2 K42 ["FindFirstChildWhichIsA"]
      133 CALL                             R3 2 1
      134 JUMPIFNOT                        R3 ; [+8]
      135 GETTABLEKS                       R4 R3 K35 ["Scale"]
      137 GETTABLEKS                       R6 R2 K10 ["Size"]
      139 DIV                              R5 R6 R1
      140 MUL                              R4 R4 R5
      141 SETTABLEKS                       R4 R3 K35 ["Scale"]
      143 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K4 ["Name"]
        7 SETTABLEKS                       R2 R1 K4 ["Name"]
        9 SETTABLEKS                       R1 R0 K5 ["Parent"]
       11 LOADK                            R2 K6 ["Handle"]
       12 SETTABLEKS                       R2 R0 K4 ["Name"]
       14 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["isAvatar"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R3 1
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K1 ["getRootPart"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 SETTABLEKS                       R1 R2 K2 ["CFrame"]
       15 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["clone"]
        2 CALL                             R2 1 1
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["Anchored"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["isAvatar"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+21]
       12 GETUPVAL                         R3 1
       13 MOVE                             R5 R1
       14 NAMECALL                         R3 R3 K3 ["getRootCFrame"]
       16 CALL                             R3 2 1
       17 MOVE                             R4 R2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K2 ["isAvatar"]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 1
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETUPVAL                         R5 1
       25 MOVE                             R7 R2
       26 NAMECALL                         R5 R5 K4 ["getRootPart"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 SETTABLEKS                       R3 R4 K5 ["CFrame"]
       32 JUMP                             ; [+17]
       33 GETTABLEKS                       R3 R1 K5 ["CFrame"]
       35 MOVE                             R4 R2
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K2 ["isAvatar"]
       39 MOVE                             R6 R2
       40 CALL                             R5 1 1
       41 JUMPIFNOT                        R5 ; [+6]
       42 GETUPVAL                         R5 1
       43 MOVE                             R7 R2
       44 NAMECALL                         R5 R5 K4 ["getRootPart"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 SETTABLEKS                       R3 R4 K5 ["CFrame"]
       50 LOADK                            R5 K6 ["AvatarPartScaleType"]
       51 NAMECALL                         R3 R2 K7 ["FindFirstChild"]
       53 CALL                             R3 2 1
       54 JUMPIFNOT                        R3 ; [+4]
       55 NAMECALL                         R4 R3 K8 ["Destroy"]
       57 CALL                             R4 1 0
       58 LOADNIL                          R3
       59 LOADK                            R6 K6 ["AvatarPartScaleType"]
       60 NAMECALL                         R4 R1 K7 ["FindFirstChild"]
       62 CALL                             R4 2 1
       63 MOVE                             R3 R4
       64 JUMPIFNOT                        R3 ; [+5]
       65 NAMECALL                         R4 R3 K9 ["Clone"]
       67 CALL                             R4 1 1
       68 SETTABLEKS                       R2 R4 K10 ["Parent"]
       70 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 NOT                              R6 R1
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETIMPORT                        R5 K1 [pairs]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 3
       13 FORGPREP_NEXT                    R5
       14 GETUPVAL                         R10 1
       15 MOVE                             R12 R9
       16 GETIMPORT                        R13 K5 [Enum.CageType.Inner]
       18 NAMECALL                         R10 R10 K6 ["PublishCageMeshAsync"]
       20 CALL                             R10 3 1
       21 SETTABLE                         R10 R2 R9
       22 FORGLOOP                         R5 2 ; [-9]
       24 GETIMPORT                        R5 K1 [pairs]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 3
       28 FORGPREP_NEXT                    R5
       29 GETUPVAL                         R10 1
       30 MOVE                             R12 R9
       31 GETIMPORT                        R13 K8 [Enum.CageType.Outer]
       33 NAMECALL                         R10 R10 K6 ["PublishCageMeshAsync"]
       35 CALL                             R10 3 1
       36 SETTABLE                         R10 R3 R9
       37 FORGLOOP                         R5 2 ; [-9]
       39 GETIMPORT                        R5 K10 [ipairs]
       41 NAMECALL                         R6 R0 K11 ["GetDescendants"]
       43 CALL                             R6 1 -1
       44 CALL                             R5 -1 3
       45 FORGPREP_INEXT                   R5
       46 GETTABLE                         R10 R2 R9
       47 JUMPIFNOT                        R10 ; [+3]
       48 GETTABLE                         R10 R2 R9
       49 SETTABLEKS                       R10 R9 K12 ["ReferenceMeshId"]
       51 GETTABLE                         R10 R3 R9
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLE                         R10 R3 R9
       54 SETTABLEKS                       R10 R9 K13 ["CageMeshId"]
       56 FORGLOOP                         R5 2 [inext] ; [-11]
       58 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R6 R4 K1 ["selectItem"]
        5 GETTABLEKS                       R5 R6 K2 ["accessoryTypeInfo"]
        7 GETTABLEKS                       R7 R4 K1 ["selectItem"]
        9 GETTABLEKS                       R6 R7 K3 ["attachmentPoint"]
       11 GETTABLEKS                       R8 R4 K1 ["selectItem"]
       13 GETTABLEKS                       R7 R8 K4 ["size"]
       15 GETTABLEKS                       R8 R5 K5 ["Name"]
       17 GETTABLEKS                       R9 R6 K6 ["AttachmentCFrame"]
       19 GETTABLEKS                       R10 R6 K7 ["ItemCFrame"]
       21 GETUPVAL                         R11 0
       22 MOVE                             R12 R2
       23 MOVE                             R13 R1
       24 CALL                             R11 2 1
       25 GETUPVAL                         R12 1
       26 MOVE                             R14 R11
       27 GETTABLEKS                       R15 R1 K8 ["Parent"]
       29 MOVE                             R16 R8
       30 MOVE                             R17 R9
       31 MOVE                             R18 R10
       32 NAMECALL                         R12 R12 K9 ["createOrReuseAttachmentInstance"]
       34 CALL                             R12 6 0
       35 SETTABLEKS                       R7 R11 K10 ["Size"]
       37 GETIMPORT                        R13 K13 [Instance.new]
       39 LOADK                            R14 K14 ["Accessory"]
       40 GETUPVAL                         R15 2
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R11 K8 ["Parent"]
       44 GETTABLEKS                       R14 R11 K5 ["Name"]
       46 SETTABLEKS                       R14 R13 K5 ["Name"]
       48 LOADK                            R14 K15 ["Handle"]
       49 SETTABLEKS                       R14 R11 K5 ["Name"]
       51 MOVE                             R12 R13
       52 JUMPIFNOT                        R3 ; [+5]
       53 GETUPVAL                         R13 3
       54 MOVE                             R14 R12
       55 GETTABLEKS                       R15 R2 K10 ["Size"]
       57 CALL                             R13 2 0
       58 LOADK                            R15 K15 ["Handle"]
       59 NAMECALL                         R13 R12 K16 ["FindFirstChild"]
       61 CALL                             R13 2 1
       62 JUMPIF                           R13 ; [+1]
       63 RETURN                           R0 0
       64 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       66 SETTABLEKS                       R14 R13 K21 ["TopSurface"]
       68 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       70 SETTABLEKS                       R14 R13 K22 ["BottomSurface"]
       72 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       74 SETTABLEKS                       R14 R13 K23 ["LeftSurface"]
       76 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       78 SETTABLEKS                       R14 R13 K24 ["RightSurface"]
       80 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       82 SETTABLEKS                       R14 R13 K25 ["FrontSurface"]
       84 GETIMPORT                        R14 K20 [Enum.SurfaceType.Smooth]
       86 SETTABLEKS                       R14 R13 K26 ["BackSurface"]
       88 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 NAMECALL                         R5 R1 K1 ["getOuterCageContext"]
        5 CALL                             R5 1 1
        6 NAMECALL                         R5 R5 K2 ["getVertexData"]
        8 CALL                             R5 1 1
        9 NAMECALL                         R6 R1 K3 ["getInnerCageContext"]
       11 CALL                             R6 1 1
       12 NAMECALL                         R6 R6 K2 ["getVertexData"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R8 R4 K4 ["selectItem"]
       17 GETTABLEKS                       R7 R8 K5 ["accessoryTypeInfo"]
       19 GETTABLEKS                       R9 R4 K4 ["selectItem"]
       21 GETTABLEKS                       R8 R9 K6 ["attachmentPoint"]
       23 GETTABLEKS                       R9 R7 K7 ["Name"]
       25 GETTABLEKS                       R10 R8 K8 ["AttachmentCFrame"]
       27 GETTABLEKS                       R11 R8 K9 ["ItemCFrame"]
       29 GETUPVAL                         R12 0
       30 MOVE                             R13 R3
       31 MOVE                             R14 R2
       32 CALL                             R12 2 1
       33 GETUPVAL                         R13 1
       34 MOVE                             R15 R12
       35 NAMECALL                         R13 R13 K10 ["clearWelds"]
       37 CALL                             R13 2 0
       38 GETUPVAL                         R13 1
       39 MOVE                             R15 R12
       40 GETTABLEKS                       R16 R2 K11 ["Parent"]
       42 MOVE                             R17 R9
       43 MOVE                             R18 R10
       44 MOVE                             R19 R11
       45 NAMECALL                         R13 R13 K12 ["createOrReuseAttachmentInstance"]
       47 CALL                             R13 6 0
       48 GETIMPORT                        R14 K15 [Instance.new]
       50 LOADK                            R15 K16 ["Model"]
       51 GETUPVAL                         R16 2
       52 CALL                             R14 2 1
       53 GETTABLEKS                       R15 R12 K7 ["Name"]
       55 SETTABLEKS                       R15 R14 K7 ["Name"]
       57 SETTABLEKS                       R14 R12 K11 ["Parent"]
       59 LOADK                            R15 K17 ["Handle"]
       60 SETTABLEKS                       R15 R12 K7 ["Name"]
       62 MOVE                             R13 R14
       63 GETUPVAL                         R14 3
       64 MOVE                             R16 R12
       65 MOVE                             R17 R6
       66 GETIMPORT                        R18 K21 [Enum.CageType.Inner]
       68 NAMECALL                         R14 R14 K22 ["deformClothing"]
       70 CALL                             R14 4 0
       71 GETUPVAL                         R14 3
       72 MOVE                             R16 R12
       73 MOVE                             R17 R5
       74 GETIMPORT                        R18 K24 [Enum.CageType.Outer]
       76 NAMECALL                         R14 R14 K22 ["deformClothing"]
       78 CALL                             R14 4 0
       79 GETUPVAL                         R14 4
       80 MOVE                             R15 R12
       81 LOADB                            R16 1
       82 CALL                             R14 2 0
       83 GETUPVAL                         R14 3
       84 MOVE                             R16 R13
       85 MOVE                             R17 R3
       86 NAMECALL                         R14 R14 K25 ["renameDeformers"]
       88 CALL                             R14 3 0
       89 GETIMPORT                        R14 K15 [Instance.new]
       91 LOADK                            R15 K26 ["Accessory"]
       92 GETUPVAL                         R16 2
       93 CALL                             R14 2 1
       94 NAMECALL                         R16 R13 K27 ["GetChildren"]
       96 CALL                             R16 1 1
       97 GETTABLEN                        R15 R16 1
       98 SETTABLEKS                       R14 R15 K11 ["Parent"]
      100 GETTABLEKS                       R15 R13 K7 ["Name"]
      102 SETTABLEKS                       R15 R14 K7 ["Name"]
      104 NAMECALL                         R15 R13 K28 ["Destroy"]
      106 CALL                             R15 1 0
      107 JUMPIF                           R12 ; [+1]
      108 RETURN                           R0 0
      109 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      111 SETTABLEKS                       R14 R12 K32 ["TopSurface"]
      113 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      115 SETTABLEKS                       R14 R12 K33 ["BottomSurface"]
      117 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      119 SETTABLEKS                       R14 R12 K34 ["LeftSurface"]
      121 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      123 SETTABLEKS                       R14 R12 K35 ["RightSurface"]
      125 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      127 SETTABLEKS                       R14 R12 K36 ["FrontSurface"]
      129 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      131 SETTABLEKS                       R14 R12 K37 ["BackSurface"]
      133 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["MeshId"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["BasePart"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+8]
       13 LOADK                            R3 K4 ["SpecialMesh"]
       14 NAMECALL                         R1 R0 K5 ["FindFirstChildOfClass"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+3]
       18 GETTABLEKS                       R2 R1 K2 ["MeshId"]
       20 RETURN                           R2 1
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["isClothes"]
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+45]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["hasAnyCage"]
       14 GETUPVAL                         R2 0
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+20]
       17 GETUPVAL                         R1 3
       18 MOVE                             R2 R0
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 1
       22 CALL                             R1 4 0
       23 GETUPVAL                         R1 5
       24 LOADK                            R3 K2 ["LayeredAccessoryPublished"]
       25 NAMECALL                         R1 R1 K3 ["getHandler"]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R3 0
       30 CALL                             R2 1 -1
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R1 7
       33 LOADB                            R2 1
       34 SETTABLEKS                       R2 R1 K4 ["HasPublished"]
       36 JUMP                             ; [+19]
       37 GETUPVAL                         R1 8
       38 MOVE                             R2 R0
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R4 1
       41 GETUPVAL                         R5 9
       42 CALL                             R1 4 0
       43 GETUPVAL                         R1 5
       44 LOADK                            R3 K5 ["RigidAccessoryPublished"]
       45 NAMECALL                         R1 R1 K3 ["getHandler"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 6
       49 GETUPVAL                         R3 0
       50 CALL                             R2 1 -1
       51 CALL                             R1 -1 0
       52 GETUPVAL                         R1 7
       53 LOADB                            R2 1
       54 SETTABLEKS                       R2 R1 K4 ["HasPublished"]
       56 GETUPVAL                         R2 7
       57 GETTABLEKS                       R1 R2 K4 ["HasPublished"]
       59 JUMPIFNOT                        R1 ; [+21]
       60 GETUPVAL                         R2 7
       61 GETTABLEKS                       R1 R2 K6 ["FirstAction"]
       63 JUMPIF                           R1 ; [+17]
       64 GETUPVAL                         R1 7
       65 GETUPVAL                         R4 10
       66 GETTABLEKS                       R3 R4 K7 ["ACTIONS"]
       68 GETTABLEKS                       R2 R3 K8 ["Generate"]
       70 SETTABLEKS                       R2 R1 K6 ["FirstAction"]
       72 GETUPVAL                         R1 5
       73 LOADK                            R3 K6 ["FirstAction"]
       74 NAMECALL                         R1 R1 K3 ["getHandler"]
       76 CALL                             R1 2 1
       77 GETUPVAL                         R3 7
       78 GETTABLEKS                       R2 R3 K6 ["FirstAction"]
       80 CALL                             R1 1 0
       81 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U5
       12 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [game]
        3 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        5 GETIMPORT                        R1 K1 [game]
        7 LOADK                            R3 K3 ["PublishService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R5 K6 [script]
       13 GETTABLEKS                       R4 R5 K7 ["Parent"]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K10 ["Packages"]
       23 GETTABLEKS                       R4 R5 K11 ["AvatarToolsShared"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R3 K12 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["AccessoryAndBodyToolShared"]
       30 GETTABLEKS                       R5 R4 K14 ["AccessoryUtil"]
       32 GETTABLEKS                       R6 R4 K15 ["AvatarUtil"]
       34 GETTABLEKS                       R7 R4 K16 ["WrapUtil"]
       36 GETTABLEKS                       R8 R4 K17 ["getDeformerToPartMap"]
       38 GETTABLEKS                       R9 R4 K18 ["ItemCharacteristics"]
       40 GETIMPORT                        R10 K9 [require]
       42 GETTABLEKS                       R13 R2 K19 ["Src"]
       44 GETTABLEKS                       R12 R13 K12 ["Util"]
       46 GETTABLEKS                       R11 R12 K20 ["Constants"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K9 [require]
       51 GETTABLEKS                       R14 R2 K19 ["Src"]
       53 GETTABLEKS                       R13 R14 K12 ["Util"]
       55 GETTABLEKS                       R12 R13 K21 ["AnalyticsGlobals"]
       57 CALL                             R11 1 1
       58 DUPCLOSURE                       R12 K22 [PROTO_0]
       59 DUPCLOSURE                       R13 K23 [PROTO_1]
       60 CAPTURE                          VAL R0
       61 DUPCLOSURE                       R14 K24 [PROTO_2]
       62 CAPTURE                          VAL R0
       63 DUPCLOSURE                       R15 K25 [PROTO_3]
       64 DUPCLOSURE                       R16 K26 [PROTO_4]
       65 CAPTURE                          VAL R0
       66 DUPCLOSURE                       R17 K27 [PROTO_5]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 DUPCLOSURE                       R18 K28 [PROTO_6]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R6
       72 DUPCLOSURE                       R19 K29 [PROTO_7]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R20 K30 [PROTO_8]
       76 CAPTURE                          VAL R18
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R15
       80 DUPCLOSURE                       R21 K31 [PROTO_9]
       81 CAPTURE                          VAL R18
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R19
       86 DUPCLOSURE                       R22 K32 [PROTO_10]
       87 DUPCLOSURE                       R23 K33 [PROTO_12]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R21
       90 CAPTURE                          VAL R22
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R20
       93 CAPTURE                          VAL R10
       94 RETURN                           R23 1
