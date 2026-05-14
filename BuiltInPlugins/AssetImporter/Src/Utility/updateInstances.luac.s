PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 1
        6 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 MOVE                             R9 R1
       11 NAMECALL                         R7 R6 K0 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+1]
       15 RETURN                           R6 1
       16 FORGLOOP                         R2 2 ; [-7]
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Instance"]
        3 LOADK                            R5 K1 ["MeshPart"]
        4 CALL                             R3 2 1
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R1
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 LOADK                            R12 K1 ["MeshPart"]
       12 NAMECALL                         R10 R9 K2 ["IsA"]
       14 CALL                             R10 2 1
       15 JUMPIFNOT                        R10 ; [+60]
       16 NAMECALL                         R10 R3 K3 ["Clone"]
       18 CALL                             R10 1 1
       19 GETUPVAL                         R11 1
       20 LOADNIL                          R12
       21 LOADNIL                          R13
       22 FORGPREP                         R11
       23 GETTABLE                         R16 R3 R15
       24 SETTABLE                         R16 R10 R15
       25 FORGLOOP                         R11 2 ; [-3]
       27 NAMECALL                         R11 R9 K4 ["GetTags"]
       29 CALL                             R11 1 3
       30 FORGPREP                         R11
       31 MOVE                             R18 R15
       32 NAMECALL                         R16 R10 K5 ["AddTag"]
       34 CALL                             R16 2 0
       35 FORGLOOP                         R11 2 ; [-5]
       37 NAMECALL                         R11 R9 K6 ["GetAttributes"]
       39 CALL                             R11 1 3
       40 FORGPREP                         R11
       41 MOVE                             R18 R14
       42 MOVE                             R19 R15
       43 NAMECALL                         R16 R10 K7 ["SetAttribute"]
       45 CALL                             R16 3 0
       46 FORGLOOP                         R11 2 ; [-6]
       48 NAMECALL                         R11 R9 K8 ["GetChildren"]
       50 CALL                             R11 1 3
       51 FORGPREP                         R11
       52 SETTABLEKS                       R10 R15 K9 ["Parent"]
       54 FORGLOOP                         R11 2 ; [-3]
       56 GETTABLEKS                       R11 R9 K9 ["Parent"]
       58 SETTABLEKS                       R11 R10 K9 ["Parent"]
       60 NAMECALL                         R11 R9 K10 ["Remove"]
       62 CALL                             R11 1 0
       63 JUMPIF                           R2 ; [+4]
       64 GETTABLEKS                       R11 R9 K11 ["CFrame"]
       66 SETTABLEKS                       R11 R10 K11 ["CFrame"]
       68 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       70 MOVE                             R12 R4
       71 MOVE                             R13 R10
       72 GETIMPORT                        R11 K14 [table.insert]
       74 CALL                             R11 2 0
       75 JUMP                             ; [+7]
       76 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       78 MOVE                             R11 R4
       79 MOVE                             R12 R9
       80 GETIMPORT                        R10 K14 [table.insert]
       82 CALL                             R10 2 0
       83 FORGLOOP                         R5 2 ; [-73]
       85 GETUPVAL                         R5 2
       86 LOADK                            R7 K15 ["Updated meshpart assets"]
       87 NAMECALL                         R5 R5 K16 ["SetWaypoint"]
       89 CALL                             R5 2 0
       90 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["ChangeHistoryService"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 NEWTABLE                         R4 0 27
       23 LOADK                            R5 K12 ["Name"]
       24 LOADK                            R6 K13 ["CollisionFidelity"]
       25 LOADK                            R7 K14 ["FluidFidelity"]
       26 LOADK                            R8 K15 ["Anchored"]
       27 LOADK                            R9 K16 ["AudioCanCollide"]
       28 LOADK                            R10 K17 ["BackSurface"]
       29 LOADK                            R11 K18 ["BottomSurface"]
       30 LOADK                            R12 K19 ["CanCollide"]
       31 LOADK                            R13 K20 ["CanQuery"]
       32 LOADK                            R14 K21 ["CanTouch"]
       33 LOADK                            R15 K22 ["CastShadow"]
       34 LOADK                            R16 K23 ["CollisionGroup"]
       35 LOADK                            R17 K24 ["Color"]
       36 LOADK                            R18 K25 ["CustomPhysicalProperties"]
       37 LOADK                            R19 K26 ["EnableFluidForces"]
       38 LOADK                            R20 K27 ["FrontSurface"]
       39 SETLIST                          R4 R5 16 [1]
       41 LOADK                            R5 K28 ["LeftSurface"]
       42 LOADK                            R6 K29 ["Locked"]
       43 LOADK                            R7 K30 ["Massless"]
       44 LOADK                            R8 K31 ["Material"]
       45 LOADK                            R9 K32 ["MaterialVariant"]
       46 LOADK                            R10 K33 ["PivotOffset"]
       47 LOADK                            R11 K34 ["Reflectance"]
       48 LOADK                            R12 K35 ["RightSurface"]
       49 LOADK                            R13 K36 ["RootPriority"]
       50 LOADK                            R14 K37 ["TopSurface"]
       51 LOADK                            R15 K38 ["Transparency"]
       52 SETLIST                          R4 R5 11 [17]
       54 DUPCLOSURE                       R5 K39 [PROTO_1]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 RETURN                           R5 1
