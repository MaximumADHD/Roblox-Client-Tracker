PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["Name"]
        8 GETTABLE                         R7 R1 R8
        9 JUMPIFEQKNIL                     R7 ; [+21]
       11 GETIMPORT                        R7 K2 [warn]
       13 LOADK                            R9 K3 ["Duplicate instance name '%*' found under parent '%*'. This may cause reimport to behave unexpectedly."]
       14 GETTABLEKS                       R11 R6 K0 ["Name"]
       16 GETTABLEKS                       R13 R6 K4 ["Parent"]
       18 JUMPIFNOT                        R13 ; [+6]
       19 GETTABLEKS                       R12 R6 K4 ["Parent"]
       21 NAMECALL                         R12 R12 K5 ["GetFullName"]
       23 CALL                             R12 1 1
       24 JUMPIF                           R12 ; [+1]
       25 LOADK                            R12 K6 ["nil"]
       26 NAMECALL                         R9 R9 K7 ["format"]
       28 CALL                             R9 3 1
       29 MOVE                             R8 R9
       30 CALL                             R7 1 0
       31 GETTABLEKS                       R7 R6 K0 ["Name"]
       33 SETTABLE                         R6 R1 R7
       34 FORGLOOP                         R2 2 ; [-29]
       36 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R0 K0 ["GetChildren"]
        3 CALL                             R4 1 -1
        4 CALL                             R3 -1 1
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R5 R1 K0 ["GetChildren"]
        8 CALL                             R5 1 -1
        9 CALL                             R4 -1 1
       10 LOADB                            R5 0
       11 MOVE                             R6 R4
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLE                         R11 R3 R9
       16 JUMPIFNOT                        R11 ; [+21]
       17 LOADNIL                          R12
       18 SETTABLE                         R12 R3 R9
       19 MOVE                             R12 R2
       20 MOVE                             R13 R11
       21 MOVE                             R14 R10
       22 MOVE                             R15 R0
       23 MOVE                             R16 R1
       24 CALL                             R12 4 1
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R13 R14 K1 ["Stop"]
       28 JUMPIFEQ                         R12 R13 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETUPVAL                         R12 2
       33 MOVE                             R13 R11
       34 MOVE                             R14 R10
       35 MOVE                             R15 R2
       36 CALL                             R12 3 0
       37 JUMP                             ; [+13]
       38 MOVE                             R12 R2
       39 LOADNIL                          R13
       40 MOVE                             R14 R10
       41 MOVE                             R15 R0
       42 MOVE                             R16 R1
       43 CALL                             R12 4 1
       44 GETUPVAL                         R14 1
       45 GETTABLEKS                       R13 R14 K1 ["Stop"]
       47 JUMPIFEQ                         R12 R13 ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 JUMPIFNOT                        R5 ; [+1]
       52 RETURN                           R0 0
       53 FORGLOOP                         R6 2 ; [-39]
       55 MOVE                             R6 R3
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 MOVE                             R11 R2
       60 MOVE                             R12 R10
       61 LOADNIL                          R13
       62 MOVE                             R14 R0
       63 MOVE                             R15 R1
       64 CALL                             R11 4 1
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R12 R13 K1 ["Stop"]
       68 JUMPIFEQ                         R11 R12 ; [+2]
       70 LOADB                            R5 0 +1
       71 LOADB                            R5 1
       72 JUMPIFNOT                        R5 ; [+1]
       73 RETURN                           R0 0
       74 FORGLOOP                         R6 2 ; [-16]
       76 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R3 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R3
        4 MOVE                             R5 R2
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 CALL                             R5 4 1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K1 ["Stop"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 JUMPIFNOT                        R4 ; [+1]
       18 RETURN                           R0 0
       19 MOVE                             R5 R3
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 0
       24 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+10]
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["handleMatch"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 CALL                             R4 4 -1
       10 RETURN                           R4 -1
       11 JUMPIFNOT                        R0 ; [+9]
       12 JUMPIF                           R1 ; [+8]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["handleRemoved"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1
       21 JUMPIF                           R0 ; [+9]
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K2 ["handleAdded"]
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 CALL                             R4 3 -1
       30 RETURN                           R4 -1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K3 ["Continue"]
       34 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["matchTrees"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["GetDescendants"]
       11 CALL                             R0 1 3
       12 FORGPREP                         R0
       13 GETUPVAL                         R5 0
       14 NAMECALL                         R6 R4 K1 ["GetFullName"]
       16 CALL                             R6 1 1
       17 SETTABLE                         R4 R5 R6
       18 FORGLOOP                         R0 2 ; [-6]
       20 GETUPVAL                         R0 0
       21 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R4 R1 K0 ["Size"]
        2 SETTABLEKS                       R4 R0 K0 ["Size"]
        4 GETTABLEKS                       R4 R1 K1 ["CFrame"]
        6 SETTABLEKS                       R4 R0 K1 ["CFrame"]
        8 GETTABLEKS                       R4 R1 K2 ["PivotOffset"]
       10 SETTABLEKS                       R4 R0 K2 ["PivotOffset"]
       12 GETTABLEKS                       R4 R0 K3 ["MeshContent"]
       14 GETTABLEKS                       R5 R1 K3 ["MeshContent"]
       16 JUMPIFEQ                         R4 R5 ; [+13]
       18 GETTABLEKS                       R4 R0 K4 ["CollisionFidelity"]
       20 MOVE                             R7 R1
       21 NAMECALL                         R5 R0 K5 ["ApplyMesh"]
       23 CALL                             R5 2 0
       24 GETTABLEKS                       R5 R0 K4 ["CollisionFidelity"]
       26 JUMPIFEQ                         R5 R4 ; [+3]
       28 SETTABLEKS                       R4 R0 K4 ["CollisionFidelity"]
       30 GETTABLEKS                       R5 R0 K6 ["TextureContent"]
       32 GETTABLEKS                       R4 R5 K7 ["Uri"]
       34 GETTABLEKS                       R6 R1 K6 ["TextureContent"]
       36 GETTABLEKS                       R5 R6 K7 ["Uri"]
       38 JUMPIFEQ                         R4 R5 ; [+5]
       40 GETTABLEKS                       R4 R1 K6 ["TextureContent"]
       42 SETTABLEKS                       R4 R0 K6 ["TextureContent"]
       44 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["ColorMapContent"]
        2 GETTABLEKS                       R5 R1 K0 ["ColorMapContent"]
        4 JUMPIFEQ                         R4 R5 ; [+5]
        6 GETTABLEKS                       R4 R1 K0 ["ColorMapContent"]
        8 SETTABLEKS                       R4 R0 K0 ["ColorMapContent"]
       10 GETTABLEKS                       R4 R0 K1 ["NormalMapContent"]
       12 GETTABLEKS                       R5 R1 K1 ["NormalMapContent"]
       14 JUMPIFEQ                         R4 R5 ; [+5]
       16 GETTABLEKS                       R4 R1 K1 ["NormalMapContent"]
       18 SETTABLEKS                       R4 R0 K1 ["NormalMapContent"]
       20 GETTABLEKS                       R4 R0 K2 ["MetalnessMapContent"]
       22 GETTABLEKS                       R5 R1 K2 ["MetalnessMapContent"]
       24 JUMPIFEQ                         R4 R5 ; [+5]
       26 GETTABLEKS                       R4 R1 K2 ["MetalnessMapContent"]
       28 SETTABLEKS                       R4 R0 K2 ["MetalnessMapContent"]
       30 GETTABLEKS                       R4 R0 K3 ["RoughnessMapContent"]
       32 GETTABLEKS                       R5 R1 K3 ["RoughnessMapContent"]
       34 JUMPIFEQ                         R4 R5 ; [+5]
       36 GETTABLEKS                       R4 R1 K3 ["RoughnessMapContent"]
       38 SETTABLEKS                       R4 R0 K3 ["RoughnessMapContent"]
       40 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R1 K0 ["CFrame"]
        2 SETTABLEKS                       R4 R0 K0 ["CFrame"]
        4 GETTABLEKS                       R4 R1 K1 ["Transform"]
        6 SETTABLEKS                       R4 R0 K1 ["Transform"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R1 K0 ["C0"]
        2 SETTABLEKS                       R4 R0 K0 ["C0"]
        4 GETTABLEKS                       R4 R1 K1 ["C1"]
        6 SETTABLEKS                       R4 R0 K1 ["C1"]
        8 GETTABLEKS                       R4 R1 K2 ["Part0"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+5]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R0 K2 ["Part0"]
       15 JUMP                             ; [+33]
       16 GETTABLEKS                       R4 R0 K2 ["Part0"]
       18 JUMPIFEQKNIL                     R4 ; [+13]
       20 GETTABLEKS                       R4 R0 K2 ["Part0"]
       22 NAMECALL                         R4 R4 K3 ["GetFullName"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R1 K2 ["Part0"]
       27 NAMECALL                         R5 R5 K3 ["GetFullName"]
       29 CALL                             R5 1 1
       30 JUMPIFEQ                         R4 R5 ; [+18]
       32 GETUPVAL                         R5 0
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R6 R1 K2 ["Part0"]
       36 NAMECALL                         R6 R6 K3 ["GetFullName"]
       38 CALL                             R6 1 1
       39 GETTABLE                         R4 R5 R6
       40 JUMPIFEQKNIL                     R4 ; [+8]
       42 LOADK                            R7 K4 ["BasePart"]
       43 NAMECALL                         R5 R4 K5 ["IsA"]
       45 CALL                             R5 2 1
       46 JUMPIFNOT                        R5 ; [+2]
       47 SETTABLEKS                       R4 R0 K2 ["Part0"]
       49 GETTABLEKS                       R4 R1 K6 ["Part1"]
       51 JUMPIFNOTEQKNIL                  R4 ; [+5]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R0 K6 ["Part1"]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R4 R0 K6 ["Part1"]
       59 JUMPIFEQKNIL                     R4 ; [+13]
       61 GETTABLEKS                       R4 R0 K6 ["Part1"]
       63 NAMECALL                         R4 R4 K3 ["GetFullName"]
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R5 R1 K6 ["Part1"]
       68 NAMECALL                         R5 R5 K3 ["GetFullName"]
       70 CALL                             R5 1 1
       71 JUMPIFEQ                         R4 R5 ; [+18]
       73 GETUPVAL                         R5 0
       74 CALL                             R5 0 1
       75 GETTABLEKS                       R6 R1 K6 ["Part1"]
       77 NAMECALL                         R6 R6 K3 ["GetFullName"]
       79 CALL                             R6 1 1
       80 GETTABLE                         R4 R5 R6
       81 JUMPIFEQKNIL                     R4 ; [+8]
       83 LOADK                            R7 K4 ["BasePart"]
       84 NAMECALL                         R5 R4 K5 ["IsA"]
       86 CALL                             R5 2 1
       87 JUMPIFNOT                        R5 ; [+2]
       88 SETTABLEKS                       R4 R0 K6 ["Part1"]
       90 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 NAMECALL                         R3 R1 K1 ["Clone"]
        4 CALL                             R3 1 1
        5 NAMECALL                         R4 R3 K2 ["ClearAllChildren"]
        7 CALL                             R4 1 0
        8 SETTABLEKS                       R2 R3 K0 ["Parent"]
       10 NAMECALL                         R4 R0 K3 ["GetChildren"]
       12 CALL                             R4 1 3
       13 FORGPREP                         R4
       14 SETTABLEKS                       R3 R8 K0 ["Parent"]
       16 FORGLOOP                         R4 2 ; [-3]
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R0 K0 ["Parent"]
       21 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R6 R1 K0 ["ClassName"]
        2 NAMECALL                         R4 R0 K1 ["IsA"]
        4 CALL                             R4 2 1
        5 JUMPIF                           R4 ; [+5]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R0 K2 ["Parent"]
        9 SETTABLEKS                       R2 R1 K2 ["Parent"]
       11 LOADK                            R6 K3 ["MeshPart"]
       12 NAMECALL                         R4 R0 K1 ["IsA"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+12]
       16 LOADK                            R6 K3 ["MeshPart"]
       17 NAMECALL                         R4 R1 K1 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+7]
       21 GETUPVAL                         R4 0
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 CALL                             R4 4 0
       27 JUMP                             ; [+113]
       28 LOADK                            R6 K4 ["SurfaceAppearance"]
       29 NAMECALL                         R4 R0 K1 ["IsA"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+46]
       33 LOADK                            R6 K4 ["SurfaceAppearance"]
       34 NAMECALL                         R4 R1 K1 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+41]
       38 GETTABLEKS                       R4 R0 K5 ["ColorMapContent"]
       40 GETTABLEKS                       R5 R1 K5 ["ColorMapContent"]
       42 JUMPIFEQ                         R4 R5 ; [+5]
       44 GETTABLEKS                       R4 R1 K5 ["ColorMapContent"]
       46 SETTABLEKS                       R4 R0 K5 ["ColorMapContent"]
       48 GETTABLEKS                       R4 R0 K6 ["NormalMapContent"]
       50 GETTABLEKS                       R5 R1 K6 ["NormalMapContent"]
       52 JUMPIFEQ                         R4 R5 ; [+5]
       54 GETTABLEKS                       R4 R1 K6 ["NormalMapContent"]
       56 SETTABLEKS                       R4 R0 K6 ["NormalMapContent"]
       58 GETTABLEKS                       R4 R0 K7 ["MetalnessMapContent"]
       60 GETTABLEKS                       R5 R1 K7 ["MetalnessMapContent"]
       62 JUMPIFEQ                         R4 R5 ; [+5]
       64 GETTABLEKS                       R4 R1 K7 ["MetalnessMapContent"]
       66 SETTABLEKS                       R4 R0 K7 ["MetalnessMapContent"]
       68 GETTABLEKS                       R4 R0 K8 ["RoughnessMapContent"]
       70 GETTABLEKS                       R5 R1 K8 ["RoughnessMapContent"]
       72 JUMPIFEQ                         R4 R5 ; [+68]
       74 GETTABLEKS                       R4 R1 K8 ["RoughnessMapContent"]
       76 SETTABLEKS                       R4 R0 K8 ["RoughnessMapContent"]
       78 JUMP                             ; [+62]
       79 LOADK                            R6 K9 ["Bone"]
       80 NAMECALL                         R4 R0 K1 ["IsA"]
       82 CALL                             R4 2 1
       83 JUMPIFNOT                        R4 ; [+14]
       84 LOADK                            R6 K9 ["Bone"]
       85 NAMECALL                         R4 R1 K1 ["IsA"]
       87 CALL                             R4 2 1
       88 JUMPIFNOT                        R4 ; [+9]
       89 GETTABLEKS                       R4 R1 K10 ["CFrame"]
       91 SETTABLEKS                       R4 R0 K10 ["CFrame"]
       93 GETTABLEKS                       R4 R1 K11 ["Transform"]
       95 SETTABLEKS                       R4 R0 K11 ["Transform"]
       97 JUMP                             ; [+43]
       98 LOADK                            R6 K12 ["Motor6D"]
       99 NAMECALL                         R4 R0 K1 ["IsA"]
      101 CALL                             R4 2 1
      102 JUMPIFNOT                        R4 ; [+12]
      103 LOADK                            R6 K12 ["Motor6D"]
      104 NAMECALL                         R4 R1 K1 ["IsA"]
      106 CALL                             R4 2 1
      107 JUMPIFNOT                        R4 ; [+7]
      108 GETUPVAL                         R4 1
      109 MOVE                             R5 R0
      110 MOVE                             R6 R1
      111 MOVE                             R7 R2
      112 MOVE                             R8 R3
      113 CALL                             R4 4 0
      114 JUMP                             ; [+26]
      115 GETUPVAL                         R5 2
      116 GETTABLEKS                       R6 R1 K0 ["ClassName"]
      118 GETTABLE                         R4 R5 R6
      119 JUMPIFNOT                        R4 ; [+21]
      120 GETTABLEKS                       R4 R0 K2 ["Parent"]
      122 NAMECALL                         R5 R1 K13 ["Clone"]
      124 CALL                             R5 1 1
      125 NAMECALL                         R6 R5 K14 ["ClearAllChildren"]
      127 CALL                             R6 1 0
      128 SETTABLEKS                       R4 R5 K2 ["Parent"]
      130 NAMECALL                         R6 R0 K15 ["GetChildren"]
      132 CALL                             R6 1 3
      133 FORGPREP                         R6
      134 SETTABLEKS                       R5 R10 K2 ["Parent"]
      136 FORGLOOP                         R6 2 ; [-3]
      138 LOADNIL                          R6
      139 SETTABLEKS                       R6 R0 K2 ["Parent"]
      141 GETUPVAL                         R5 3
      142 GETTABLEKS                       R4 R5 K16 ["Continue"]
      144 RETURN                           R4 1

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["Parent"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Continue"]
        5 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["ClassName"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOT                        R3 ; [+3]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R0 K1 ["Parent"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["Continue"]
       11 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Model"] ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["ClassName"]
        6 JUMPIFEQKS                       R2 K1 ["Model"] ; [+12]
        8 LOADNIL                          R2
        9 LOADK                            R4 K2 ["applyTree expects both target and incoming roots to be Models, got %* and %*"]
       10 GETTABLEKS                       R6 R0 K0 ["ClassName"]
       12 GETTABLEKS                       R7 R1 K0 ["ClassName"]
       14 NAMECALL                         R4 R4 K3 ["format"]
       16 CALL                             R4 3 1
       17 MOVE                             R3 R4
       18 RETURN                           R2 2
       19 LOADNIL                          R2
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          REF R2
       22 CAPTURE                          VAL R0
       23 DUPCLOSURE                       R4 K4 [PROTO_6]
       24 DUPCLOSURE                       R5 K5 [PROTO_7]
       25 DUPCLOSURE                       R6 K6 [PROTO_8]
       26 NEWCLOSURE                       R7 P4
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R8 1 0
       30 LOADB                            R9 1
       31 SETTABLEKS                       R9 R8 K7 ["WrapTarget"]
       33 NEWTABLE                         R9 2 0
       35 LOADB                            R10 1
       36 SETTABLEKS                       R10 R9 K8 ["Bone"]
       38 LOADB                            R10 1
       39 SETTABLEKS                       R10 R9 K7 ["WrapTarget"]
       41 DUPCLOSURE                       R10 K9 [PROTO_10]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R11 R12 K10 ["matchTrees_handlers"]
       45 MOVE                             R12 R0
       46 MOVE                             R13 R1
       47 DUPTABLE                         R14 K14 [{"handleMatch", "handleAdded", "handleRemoved"}]
       48 NEWCLOSURE                       R15 P6
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 CAPTURE                          UPVAL U1
       53 SETTABLEKS                       R15 R14 K11 ["handleMatch"]
       55 DUPCLOSURE                       R15 K15 [PROTO_12]
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R15 R14 K12 ["handleAdded"]
       59 NEWCLOSURE                       R15 P8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          UPVAL U1
       62 SETTABLEKS                       R15 R14 K13 ["handleRemoved"]
       64 CALL                             R11 3 0
       65 MOVE                             R11 R0
       66 LOADNIL                          R12
       67 CLOSEUPVALS                      R2
       68 RETURN                           R11 2

PROTO_15:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQ                      R0 R4 ; [+6]
        3 SETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["Stop"]
        7 RETURN                           R4 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["Continue"]
       11 RETURN                           R4 1

PROTO_16:
        0 LOADNIL                          R3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["matchTrees"]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R2
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          REF R3
        9 CAPTURE                          UPVAL U1
       10 CALL                             R4 3 0
       11 CLOSEUPVALS                      R3
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPTABLE                         R2 K3 [{"Continue", "Stop"}]
        5 LOADK                            R3 K1 ["Continue"]
        6 SETTABLEKS                       R3 R2 K1 ["Continue"]
        8 LOADK                            R3 K2 ["Stop"]
        9 SETTABLEKS                       R3 R2 K2 ["Stop"]
       11 SETTABLEKS                       R2 R0 K4 ["HandlerControl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_2]
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R0 K6 ["matchTrees"]
       18 DUPCLOSURE                       R3 K7 [PROTO_4]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R0 K8 ["matchTrees_handlers"]
       23 DUPCLOSURE                       R3 K9 [PROTO_14]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R0 K10 ["applyTree"]
       28 DUPCLOSURE                       R3 K11 [PROTO_16]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R0 K12 ["findMatching"]
       33 RETURN                           R0 1
