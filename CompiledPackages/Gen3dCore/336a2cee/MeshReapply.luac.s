PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[^%w_]"]
        4 LOADK                            R4 K4 ["_"]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K2 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K5 ["_+"]
       10 LOADK                            R5 K4 ["_"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K2 [string.gsub]
       15 MOVE                             R3 R1
       16 LOADK                            R4 K6 ["^_+"]
       17 LOADK                            R5 K7 [""]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K2 [string.gsub]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K8 ["_+$"]
       24 LOADK                            R5 K7 [""]
       25 CALL                             R2 3 1
       26 MOVE                             R1 R2
       27 JUMPIFNOTEQKS                    R1 K7 [""] ; [+3]
       29 LOADK                            R2 K9 ["mesh"]
       30 RETURN                           R2 1
       31 LOADN                            R4 1
       32 LOADN                            R5 24
       33 FASTCALL3                        STRING_SUB R1 R4 R5
       35 MOVE                             R3 R1
       36 GETIMPORT                        R2 K11 [string.sub]
       38 CALL                             R2 3 1
       39 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["G3D%*_%*"]
        1 MOVE                             R5 R0
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["sanitizeName"]
        5 MOVE                             R7 R1
        6 CALL                             R6 1 1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^G3D(%d+)_"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 FASTCALL1                        TONUMBER R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K5 [tonumber]
       10 CALL                             R2 1 1
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["MeshPart"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 NAMECALL                         R2 R0 K5 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["MeshPart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R6
       27 GETIMPORT                        R7 K4 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-13]
       32 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["BasePart"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 NAMECALL                         R2 R0 K5 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["BasePart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R6
       27 GETIMPORT                        R7 K4 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-13]
       32 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K0 ["MeshPart"]
       12 NAMECALL                         R7 R6 K1 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+4]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADNIL                          R7
       18 RETURN                           R7 1
       19 MOVE                             R1 R6
       20 FORGLOOP                         R2 2 ; [-10]
       22 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["Gen3dReapplySnapshot"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K6 ["Archivable"]
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 LOADK                            R9 K7 ["MeshPart"]
       15 NAMECALL                         R7 R6 K8 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+21]
       19 LOADK                            R9 K9 ["SurfaceAppearance"]
       20 NAMECALL                         R7 R6 K10 ["FindFirstChildOfClass"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+4]
       24 NAMECALL                         R8 R7 K11 ["Clone"]
       26 CALL                             R8 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 NAMECALL                         R9 R6 K11 ["Clone"]
       31 CALL                             R9 1 1
       32 NAMECALL                         R10 R9 K12 ["ClearAllChildren"]
       34 CALL                             R10 1 0
       35 JUMPIFNOT                        R8 ; [+2]
       36 SETTABLEKS                       R9 R8 K13 ["Parent"]
       38 SETTABLEKS                       R1 R9 K13 ["Parent"]
       40 FORGLOOP                         R2 2 ; [-27]
       42 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["collectPartsInOrder"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADK                            R10 K1 ["MeshPart"]
       11 NAMECALL                         R8 R7 K2 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+2]
       15 LOADB                            R2 1
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R3 2 ; [-8]
       19 JUMPIF                           R2 ; [+2]
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 LOADK                            R6 K3 ["PVInstance"]
       23 NAMECALL                         R4 R0 K2 ["IsA"]
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+2]
       27 MOVE                             R3 R0
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 JUMPIFNOT                        R3 ; [+39]
       31 NAMECALL                         R4 R3 K4 ["GetPivot"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R4 R4 K5 ["Rotation"]
       36 MOVE                             R5 R1
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 LOADK                            R12 K1 ["MeshPart"]
       41 NAMECALL                         R10 R9 K2 ["IsA"]
       43 CALL                             R10 2 1
       44 JUMPIFNOT                        R10 ; [+12]
       45 GETTABLEKS                       R10 R9 K6 ["CFrame"]
       47 GETTABLEKS                       R10 R10 K5 ["Rotation"]
       49 MOVE                             R12 R4
       50 LOADK                            R13 K7 [0.0001]
       51 NAMECALL                         R10 R10 K8 ["FuzzyEq"]
       53 CALL                             R10 3 1
       54 JUMPIF                           R10 ; [+2]
       55 LOADNIL                          R10
       56 RETURN                           R10 1
       57 FORGLOOP                         R5 2 ; [-18]
       59 NAMECALL                         R5 R3 K4 ["GetPivot"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R8 K10 [CFrame.new]
       64 GETTABLEKS                       R9 R5 K11 ["Position"]
       66 CALL                             R8 1 -1
       67 NAMECALL                         R6 R3 K12 ["PivotTo"]
       69 CALL                             R6 -1 0
       70 JUMPIFNOT                        R3 ; [+6]
       71 NAMECALL                         R4 R3 K4 ["GetPivot"]
       73 CALL                             R4 1 1
       74 GETTABLEKS                       R4 R4 K11 ["Position"]
       76 JUMP                             ; [+1]
       77 LOADK                            R4 K13 [{0, 0, 0}]
       78 NEWTABLE                         R5 0 0
       80 NEWTABLE                         R6 0 0
       82 NEWTABLE                         R7 0 0
       84 NEWTABLE                         R8 0 0
       86 MOVE                             R9 R1
       87 LOADNIL                          R10
       88 LOADNIL                          R11
       89 FORGPREP                         R9
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K14 ["makeToken"]
       93 MOVE                             R15 R12
       94 GETTABLEKS                       R16 R13 K15 ["Name"]
       96 CALL                             R14 2 1
       97 GETTABLEKS                       R15 R13 K15 ["Name"]
       99 SETTABLE                         R15 R6 R12
      100 GETTABLEKS                       R16 R13 K11 ["Position"]
      102 SUB                              R15 R16 R4
      103 SETTABLE                         R15 R7 R12
      104 GETTABLEKS                       R15 R13 K16 ["Size"]
      106 SETTABLE                         R15 R8 R12
      107 SETTABLE                         R14 R5 R12
      108 SETTABLEKS                       R14 R13 K15 ["Name"]
      110 FORGLOOP                         R9 2 ; [-21]
      112 DUPTABLE                         R9 K22 [{"tokens", "originalNames", "relativePositions", "sizes", "snapshot"}]
      113 SETTABLEKS                       R5 R9 K17 ["tokens"]
      115 SETTABLEKS                       R6 R9 K18 ["originalNames"]
      117 SETTABLEKS                       R7 R9 K19 ["relativePositions"]
      119 SETTABLEKS                       R8 R9 K20 ["sizes"]
      121 GETUPVAL                         R10 1
      122 MOVE                             R11 R1
      123 CALL                             R10 1 1
      124 SETTABLEKS                       R10 R9 K21 ["snapshot"]
      126 RETURN                           R9 1

PROTO_8:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["snapshot"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 NAMECALL                         R2 R1 K1 ["Destroy"]
        7 CALL                             R2 1 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K0 ["snapshot"]
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["HasSkinnedMesh"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 NAMECALL                         R1 R0 K1 ["GetChildren"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K2 ["WrapTarget"]
       10 NAMECALL                         R6 R5 K3 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+5]
       14 LOADK                            R8 K4 ["Bone"]
       15 NAMECALL                         R6 R5 K3 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADB                            R6 0
       20 RETURN                           R6 1
       21 FORGLOOP                         R1 2 ; [-13]
       23 LOADB                            R1 1
       24 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 NEWTABLE                         R1 0 1
        7 MOVE                             R2 R0
        8 SETLIST                          R1 R2 1 [1]
       10 JUMP                             ; [+3]
       11 NAMECALL                         R1 R0 K2 ["GetChildren"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R7
       22 CALL                             R8 1 1
       23 JUMPIF                           R8 ; [+2]
       24 LOADNIL                          R9
       25 RETURN                           R9 1
       26 DUPTABLE                         R11 K5 [{"entry", "meshPart"}]
       27 SETTABLEKS                       R7 R11 K3 ["entry"]
       29 SETTABLEKS                       R8 R11 K4 ["meshPart"]
       31 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       33 MOVE                             R10 R2
       34 GETIMPORT                        R9 K8 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R3 2 ; [-18]
       39 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K0 ["parseTokenIndex"]
       11 GETTABLEKS                       R10 R8 K1 ["entry"]
       13 GETTABLEKS                       R10 R10 K2 ["Name"]
       15 CALL                             R9 1 1
       16 JUMPIF                           R9 ; [+8]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K0 ["parseTokenIndex"]
       20 GETTABLEKS                       R10 R8 K3 ["meshPart"]
       22 GETTABLEKS                       R10 R10 K2 ["Name"]
       24 CALL                             R9 1 1
       25 JUMPIFNOT                        R9 ; [+7]
       26 LOADN                            R10 1
       27 JUMPIFLT                         R9 R10 ; [+5]
       29 JUMPIFLT                         R1 R9 ; [+3]
       31 GETTABLE                         R10 R3 R9
       32 JUMPIFNOT                        R10 ; [+2]
       33 LOADNIL                          R10
       34 RETURN                           R10 1
       35 LOADB                            R10 1
       36 SETTABLE                         R10 R3 R9
       37 DUPTABLE                         R12 K5 [{"index", "meshPart"}]
       38 SETTABLEKS                       R9 R12 K4 ["index"]
       40 GETTABLEKS                       R13 R8 K3 ["meshPart"]
       42 SETTABLEKS                       R13 R12 K3 ["meshPart"]
       44 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       46 MOVE                             R11 R2
       47 GETIMPORT                        R10 K8 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R4 2 ; [-43]
       52 LENGTH                           R4 R2
       53 JUMPIFEQ                         R4 R1 ; [+3]
       55 LOADNIL                          R4
       56 RETURN                           R4 1
       57 RETURN                           R2 1

PROTO_12:
        0 LOADK                            R1 K0 [∞]
        1 LOADN                            R4 1
        2 LENGTH                           R2 R0
        3 LOADN                            R3 1
        4 FORNPREP                         R2
        5 ADDK                             R7 R4 K1 [1]
        6 LENGTH                           R5 R0
        7 LOADN                            R6 1
        8 FORNPREP                         R5
        9 GETTABLE                         R11 R0 R4
       10 GETTABLE                         R12 R0 R7
       11 SUB                              R10 R11 R12
       12 GETTABLEKS                       R10 R10 K2 ["Magnitude"]
       14 FASTCALL2                        MATH_MIN R1 R10 ; [+4]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R8 K5 [math.min]
       19 CALL                             R8 2 1
       20 MOVE                             R1 R8
       21 FORNLOOP                         R5
       22 FORNLOOP                         R2
       23 JUMPIFNOTEQKN                    R1 K0 [∞] ; [+3]
       25 LOADN                            R2 0
       26 RETURN                           R2 1
       27 MOVE                             R2 R1
       28 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R1 K0 ["relativePositions"]
        8 GETTABLE                         R8 R9 R7
        9 GETTABLEKS                       R10 R1 K1 ["sizes"]
       11 GETTABLE                         R9 R10 R7
       12 JUMPIFNOT                        R8 ; [+1]
       13 JUMPIF                           R9 ; [+2]
       14 LOADNIL                          R10
       15 RETURN                           R10 1
       16 LOADNIL                          R10
       17 MOVE                             R11 R2
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETTABLEKS                       R17 R15 K2 ["position"]
       23 SUB                              R16 R17 R8
       24 GETTABLEKS                       R16 R16 K3 ["Magnitude"]
       26 LOADK                            R17 K4 [0.001]
       27 JUMPIFNOTLE                      R16 R17 ; [+11]
       29 GETTABLEKS                       R17 R15 K5 ["size"]
       31 SUB                              R16 R17 R9
       32 GETTABLEKS                       R16 R16 K3 ["Magnitude"]
       34 LOADK                            R17 K4 [0.001]
       35 JUMPIFNOTLE                      R16 R17 ; [+3]
       37 MOVE                             R10 R15
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R11 2 ; [-19]
       41 JUMPIFNOT                        R10 ; [+9]
       42 GETTABLEKS                       R12 R10 K6 ["indices"]
       44 FASTCALL2                        TABLE_INSERT R12 R7 ; [+4]
       46 MOVE                             R13 R7
       47 GETIMPORT                        R11 K9 [table.insert]
       49 CALL                             R11 2 0
       50 JUMP                             ; [+18]
       51 DUPTABLE                         R13 K10 [{"position", "size", "indices"}]
       52 SETTABLEKS                       R8 R13 K2 ["position"]
       54 SETTABLEKS                       R9 R13 K5 ["size"]
       56 NEWTABLE                         R14 0 1
       58 MOVE                             R15 R7
       59 SETLIST                          R14 R15 1 [1]
       61 SETTABLEKS                       R14 R13 K6 ["indices"]
       63 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       65 MOVE                             R12 R2
       66 GETIMPORT                        R11 K9 [table.insert]
       68 CALL                             R11 2 0
       69 FORGLOOP                         R3 2 ; [-64]
       71 RETURN                           R2 1

PROTO_14:
        0 LENGTH                           R3 R0
        1 LENGTH                           R4 R1
        2 JUMPIFNOTEQ                      R3 R4 ; [+4]
        4 LENGTH                           R3 R0
        5 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 NEWTABLE                         R4 0 0
       18 MOVE                             R5 R3
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R12 R9 K1 ["position"]
       24 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       26 MOVE                             R11 R4
       27 GETIMPORT                        R10 K4 [table.insert]
       29 CALL                             R10 2 0
       30 FORGLOOP                         R5 2 ; [-9]
       32 LOADNIL                          R5
       33 LENGTH                           R6 R3
       34 JUMPIFNOTEQKN                    R6 K5 [1] ; [+14]
       36 LOADK                            R7 K6 [0.001]
       37 GETTABLEN                        R8 R3 1
       38 GETTABLEKS                       R8 R8 K7 ["size"]
       40 GETTABLEKS                       R8 R8 K8 ["Magnitude"]
       42 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       44 GETIMPORT                        R6 K11 [math.max]
       46 CALL                             R6 2 1
       47 MOVE                             R5 R6
       48 JUMP                             ; [+9]
       49 GETUPVAL                         R6 1
       50 MOVE                             R7 R4
       51 CALL                             R6 1 1
       52 LOADN                            R7 0
       53 JUMPIFNOTLE                      R6 R7 ; [+3]
       55 LOADNIL                          R7
       56 RETURN                           R7 1
       57 DIVK                             R5 R6 K12 [2]
       58 NEWTABLE                         R6 0 0
       60 LOADN                            R9 1
       61 LENGTH                           R7 R3
       62 LOADN                            R8 1
       63 FORNPREP                         R7
       64 NEWTABLE                         R10 0 0
       66 SETTABLE                         R10 R6 R9
       67 FORNLOOP                         R7
       68 MOVE                             R7 R0
       69 LOADNIL                          R8
       70 LOADNIL                          R9
       71 FORGPREP                         R7
       72 LOADNIL                          R12
       73 LOADK                            R13 K13 [∞]
       74 MOVE                             R14 R3
       75 LOADNIL                          R15
       76 LOADNIL                          R16
       77 FORGPREP                         R14
       78 GETTABLEKS                       R20 R11 K14 ["meshPart"]
       80 GETTABLEKS                       R20 R20 K15 ["Position"]
       82 GETTABLEKS                       R21 R18 K1 ["position"]
       84 SUB                              R19 R20 R21
       85 GETTABLEKS                       R19 R19 K8 ["Magnitude"]
       87 JUMPIFNOTLT                      R19 R13 ; [+3]
       89 MOVE                             R13 R19
       90 MOVE                             R12 R17
       91 FORGLOOP                         R14 2 ; [-14]
       93 JUMPIFNOT                        R12 ; [+2]
       94 JUMPIFNOTLT                      R5 R13 ; [+3]
       96 LOADNIL                          R14
       97 RETURN                           R14 1
       98 GETTABLE                         R15 R6 R12
       99 FASTCALL2                        TABLE_INSERT R15 R11 ; [+4]
      101 MOVE                             R16 R11
      102 GETIMPORT                        R14 K4 [table.insert]
      104 CALL                             R14 2 0
      105 FORGLOOP                         R7 2 ; [-34]
      107 NEWTABLE                         R7 0 0
      109 MOVE                             R8 R3
      110 LOADNIL                          R9
      111 LOADNIL                          R10
      112 FORGPREP                         R8
      113 GETTABLE                         R13 R6 R11
      114 LENGTH                           R14 R13
      115 GETTABLEKS                       R16 R12 K16 ["indices"]
      117 LENGTH                           R15 R16
      118 JUMPIFEQ                         R14 R15 ; [+3]
      120 LOADNIL                          R14
      121 RETURN                           R14 1
      122 MOVE                             R14 R13
      123 LOADNIL                          R15
      124 LOADNIL                          R16
      125 FORGPREP                         R14
      126 DUPTABLE                         R21 K18 [{"index", "meshPart"}]
      127 GETTABLEKS                       R23 R12 K16 ["indices"]
      129 GETTABLE                         R22 R23 R17
      130 SETTABLEKS                       R22 R21 K17 ["index"]
      132 GETTABLEKS                       R22 R18 K14 ["meshPart"]
      134 SETTABLEKS                       R22 R21 K14 ["meshPart"]
      136 FASTCALL2                        TABLE_INSERT R7 R21 ; [+4]
      138 MOVE                             R20 R7
      139 GETIMPORT                        R19 K4 [table.insert]
      141 CALL                             R19 2 0
      142 FORGLOOP                         R14 2 ; [-17]
      144 FORGLOOP                         R8 2 ; [-32]
      146 RETURN                           R7 1

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["tokens"]
        2 LENGTH                           R2 R3
        3 LENGTH                           R3 R0
        4 JUMPIFNOTEQ                      R3 R2 ; [+6]
        6 GETTABLEKS                       R4 R1 K1 ["relativePositions"]
        8 LENGTH                           R3 R4
        9 JUMPIFEQ                         R3 R2 ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 NEWTABLE                         R3 0 0
       15 MOVE                             R4 R0
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K2 ["parseTokenIndex"]
       22 GETTABLEKS                       R10 R8 K3 ["entry"]
       24 GETTABLEKS                       R10 R10 K4 ["Name"]
       26 CALL                             R9 1 1
       27 JUMPIF                           R9 ; [+8]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K2 ["parseTokenIndex"]
       31 GETTABLEKS                       R10 R8 K5 ["meshPart"]
       33 GETTABLEKS                       R10 R10 K4 ["Name"]
       35 CALL                             R9 1 1
       36 JUMPIFNOT                        R9 ; [+5]
       37 LOADN                            R10 1
       38 JUMPIFLT                         R9 R10 ; [+3]
       40 JUMPIFNOTLT                      R2 R9 ; [+3]
       42 LOADNIL                          R10
       43 RETURN                           R10 1
       44 GETTABLE                         R10 R3 R9
       45 JUMPIFNOT                        R10 ; [+8]
       46 FASTCALL2                        TABLE_INSERT R10 R8 ; [+5]
       48 MOVE                             R12 R10
       49 MOVE                             R13 R8
       50 GETIMPORT                        R11 K8 [table.insert]
       52 CALL                             R11 2 0
       53 JUMP                             ; [+6]
       54 NEWTABLE                         R11 0 1
       56 MOVE                             R12 R8
       57 SETLIST                          R11 R12 1 [1]
       59 SETTABLE                         R11 R3 R9
       60 FORGLOOP                         R4 2 ; [-42]
       62 NEWTABLE                         R4 0 0
       64 NEWTABLE                         R5 0 0
       66 NEWTABLE                         R6 0 0
       68 LOADN                            R9 1
       69 MOVE                             R7 R2
       70 LOADN                            R8 1
       71 FORNPREP                         R7
       72 GETTABLE                         R10 R3 R9
       73 JUMPIFNOT                        R10 ; [+33]
       74 LENGTH                           R11 R10
       75 JUMPIFNOTEQKN                    R11 K9 [1] ; [+18]
       77 LOADB                            R11 1
       78 SETTABLE                         R11 R5 R9
       79 DUPTABLE                         R13 K11 [{"index", "meshPart"}]
       80 SETTABLEKS                       R9 R13 K10 ["index"]
       82 GETTABLEN                        R14 R10 1
       83 GETTABLEKS                       R14 R14 K5 ["meshPart"]
       85 SETTABLEKS                       R14 R13 K5 ["meshPart"]
       87 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       89 MOVE                             R12 R4
       90 GETIMPORT                        R11 K8 [table.insert]
       92 CALL                             R11 2 0
       93 JUMP                             ; [+13]
       94 MOVE                             R11 R10
       95 LOADNIL                          R12
       96 LOADNIL                          R13
       97 FORGPREP                         R11
       98 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
      100 MOVE                             R17 R6
      101 MOVE                             R18 R15
      102 GETIMPORT                        R16 K8 [table.insert]
      104 CALL                             R16 2 0
      105 FORGLOOP                         R11 2 ; [-8]
      107 FORNLOOP                         R7
      108 LENGTH                           R7 R6
      109 JUMPIFNOTEQKN                    R7 K12 [0] ; [+3]
      111 LOADNIL                          R7
      112 RETURN                           R7 1
      113 NEWTABLE                         R7 0 0
      115 LOADN                            R10 1
      116 MOVE                             R8 R2
      117 LOADN                            R9 1
      118 FORNPREP                         R8
      119 GETTABLE                         R11 R5 R10
      120 JUMPIF                           R11 ; [+7]
      121 FASTCALL2                        TABLE_INSERT R7 R10 ; [+5]
      123 MOVE                             R12 R7
      124 MOVE                             R13 R10
      125 GETIMPORT                        R11 K8 [table.insert]
      127 CALL                             R11 2 0
      128 FORNLOOP                         R8
      129 GETUPVAL                         R8 1
      130 MOVE                             R9 R6
      131 MOVE                             R10 R7
      132 MOVE                             R11 R1
      133 CALL                             R8 3 1
      134 JUMPIF                           R8 ; [+2]
      135 LOADNIL                          R9
      136 RETURN                           R9 1
      137 MOVE                             R9 R8
      138 LOADNIL                          R10
      139 LOADNIL                          R11
      140 FORGPREP                         R9
      141 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
      143 MOVE                             R15 R4
      144 MOVE                             R16 R13
      145 GETIMPORT                        R14 K8 [table.insert]
      147 CALL                             R14 2 0
      148 FORGLOOP                         R9 2 ; [-8]
      150 LENGTH                           R9 R4
      151 JUMPIFEQ                         R9 R2 ; [+3]
      153 LOADNIL                          R9
      154 RETURN                           R9 1
      155 RETURN                           R4 1

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["tokens"]
        2 LENGTH                           R2 R3
        3 LENGTH                           R3 R0
        4 JUMPIFNOTEQ                      R3 R2 ; [+6]
        6 GETTABLEKS                       R4 R1 K1 ["relativePositions"]
        8 LENGTH                           R3 R4
        9 JUMPIFEQ                         R3 R2 ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 NEWTABLE                         R3 0 0
       15 LOADN                            R6 1
       16 MOVE                             R4 R2
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
       21 MOVE                             R8 R3
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K4 [table.insert]
       25 CALL                             R7 2 0
       26 FORNLOOP                         R4
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R0
       29 MOVE                             R6 R3
       30 MOVE                             R7 R1
       31 CALL                             R4 3 1
       32 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["tokens"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [1] ; [+15]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+8]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K4 [{["index"] = 1, ["meshPart"]}]
       12 SETTABLEKS                       R3 R5 K3 ["meshPart"]
       14 SETLIST                          R4 R5 1 [1]
       16 RETURN                           R4 1
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 JUMPIF                           R3 ; [+2]
       23 LOADNIL                          R4
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R3
       27 MOVE                             R6 R2
       28 CALL                             R4 2 1
       29 JUMPIF                           R4 ; [+9]
       30 GETUPVAL                         R4 3
       31 MOVE                             R5 R3
       32 MOVE                             R6 R1
       33 CALL                             R4 2 1
       34 JUMPIF                           R4 ; [+4]
       35 GETUPVAL                         R4 4
       36 MOVE                             R5 R3
       37 MOVE                             R6 R1
       38 CALL                             R4 2 1
       39 RETURN                           R4 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["Size"]
        2 GETTABLEKS                       R4 R0 K1 ["CollisionFidelity"]
        4 GETTABLEKS                       R5 R0 K2 ["RenderFidelity"]
        6 MOVE                             R8 R1
        7 NAMECALL                         R6 R0 K3 ["ApplyMesh"]
        9 CALL                             R6 2 0
       10 SETTABLEKS                       R3 R0 K0 ["Size"]
       12 GETTABLEKS                       R6 R0 K2 ["RenderFidelity"]
       14 JUMPIFEQ                         R6 R5 ; [+3]
       16 SETTABLEKS                       R5 R0 K2 ["RenderFidelity"]
       18 GETTABLEKS                       R6 R0 K1 ["CollisionFidelity"]
       20 JUMPIFEQ                         R6 R4 ; [+3]
       22 SETTABLEKS                       R4 R0 K1 ["CollisionFidelity"]
       24 LOADK                            R8 K4 ["SurfaceAppearance"]
       25 NAMECALL                         R6 R1 K5 ["FindFirstChildOfClass"]
       27 CALL                             R6 2 1
       28 LOADK                            R9 K4 ["SurfaceAppearance"]
       29 NAMECALL                         R7 R0 K5 ["FindFirstChildOfClass"]
       31 CALL                             R7 2 1
       32 GETTABLEKS                       R9 R1 K6 ["TextureContent"]
       34 GETTABLEKS                       R9 R9 K7 ["SourceType"]
       36 GETIMPORT                        R10 K11 [Enum.ContentSourceType.None]
       38 JUMPIFNOTEQ                      R9 R10 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 LOADB                            R9 0
       43 JUMPIFEQKNIL                     R2 ; [+7]
       45 GETTABLEKS                       R10 R2 K12 ["appearanceIsAuthoritative"]
       47 JUMPIFEQKB                       R10 TRUE ; [+2]
       49 LOADB                            R9 0 +1
       50 LOADB                            R9 1
       51 JUMPIFNOT                        R6 ; [+7]
       52 JUMPIFNOT                        R7 ; [+3]
       53 NAMECALL                         R10 R7 K13 ["Destroy"]
       55 CALL                             R10 1 0
       56 SETTABLEKS                       R0 R6 K14 ["Parent"]
       58 RETURN                           R0 0
       59 JUMPIFNOT                        R7 ; [+5]
       60 JUMPIF                           R8 ; [+1]
       61 JUMPIFNOT                        R9 ; [+3]
       62 NAMECALL                         R10 R7 K13 ["Destroy"]
       64 CALL                             R10 1 0
       65 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["collectPartsInOrder"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 LENGTH                           R4 R3
        6 GETTABLEKS                       R6 R1 K1 ["tokens"]
        8 LENGTH                           R5 R6
        9 JUMPIFEQ                         R4 R5 ; [+3]
       11 LOADB                            R4 0
       12 RETURN                           R4 1
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K2 ["Name"]
       19 GETTABLEKS                       R11 R1 K3 ["originalNames"]
       21 GETTABLE                         R10 R11 R7
       22 JUMPIFEQ                         R9 R10 ; [+3]
       24 LOADB                            R9 0
       25 RETURN                           R9 1
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETIMPORT                        R11 K5 [game]
       29 NAMECALL                         R9 R8 K6 ["IsDescendantOf"]
       31 CALL                             R9 2 1
       32 JUMPIF                           R9 ; [+2]
       33 LOADB                            R9 0
       34 RETURN                           R9 1
       35 LOADK                            R11 K7 ["MeshPart"]
       36 NAMECALL                         R9 R8 K8 ["IsA"]
       38 CALL                             R9 2 1
       39 JUMPIFNOT                        R9 ; [+8]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K9 ["isReapplyEligible"]
       43 MOVE                             R10 R8
       44 CALL                             R9 1 1
       45 JUMPIF                           R9 ; [+2]
       46 LOADB                            R9 0
       47 RETURN                           R9 1
       48 FORGLOOP                         R4 2 ; [-32]
       50 LOADB                            R4 1
       51 RETURN                           R4 1

PROTO_20:
        0 LENGTH                           R3 R2
        1 GETTABLEKS                       R5 R1 K0 ["tokens"]
        3 LENGTH                           R4 R5
        4 JUMPIFNOTEQ                      R3 R4 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["canApplyPlan"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+2]
       13 LOADB                            R3 0
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["collectPartsInOrder"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETTABLEKS                       R10 R8 K3 ["index"]
       26 GETTABLE                         R9 R3 R10
       27 JUMPIF                           R9 ; [+2]
       28 LOADB                            R10 0
       29 RETURN                           R10 1
       30 LOADK                            R12 K4 ["MeshPart"]
       31 NAMECALL                         R10 R9 K5 ["IsA"]
       33 CALL                             R10 2 1
       34 JUMPIFNOT                        R10 ; [+7]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K6 ["applyMeshPreservingTarget"]
       38 MOVE                             R11 R9
       39 GETTABLEKS                       R12 R8 K7 ["meshPart"]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R4 2 ; [-19]
       44 LOADB                            R4 1
       45 RETURN                           R4 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["snapshot"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["canApplyPlan"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["collectPartsInOrder"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 LOADK                            R11 K3 ["MeshPart"]
       22 NAMECALL                         R9 R8 K4 ["IsA"]
       24 CALL                             R9 2 1
       25 JUMPIFNOT                        R9 ; [+27]
       26 GETTABLEKS                       R12 R1 K5 ["tokens"]
       28 GETTABLE                         R11 R12 R7
       29 NAMECALL                         R9 R2 K6 ["FindFirstChild"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+5]
       33 LOADK                            R12 K3 ["MeshPart"]
       34 NAMECALL                         R10 R9 K4 ["IsA"]
       36 CALL                             R10 2 1
       37 JUMPIF                           R10 ; [+2]
       38 LOADB                            R10 0
       39 RETURN                           R10 1
       40 NAMECALL                         R10 R9 K7 ["Clone"]
       42 CALL                             R10 1 1
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K8 ["applyMeshPreservingTarget"]
       46 MOVE                             R12 R8
       47 MOVE                             R13 R10
       48 DUPTABLE                         R14 K11 [{["appearanceIsAuthoritative"] = True}]
       49 CALL                             R11 3 0
       50 NAMECALL                         R11 R10 K12 ["Destroy"]
       52 CALL                             R11 1 0
       53 FORGLOOP                         R4 2 ; [-33]
       55 LOADB                            R4 1
       56 RETURN                           R4 1

PROTO_22:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 LOADK                            R3 K4 ["^G3D%d+_"]
        5 LOADK                            R4 K5 [""]
        6 CALL                             R1 3 1
        7 JUMPIFEQKS                       R1 K5 [""] ; [+7]
        9 GETTABLEKS                       R2 R0 K3 ["Name"]
       11 JUMPIFEQ                         R1 R2 ; [+3]
       13 SETTABLEKS                       R1 R0 K3 ["Name"]
       15 NAMECALL                         R2 R0 K6 ["GetChildren"]
       17 CALL                             R2 1 3
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R6
       21 CALL                             R7 1 0
       22 FORGLOOP                         R2 2 ; [-4]
       24 RETURN                           R0 0

PROTO_23:
        0 DUPCLOSURE                       R1 K0 [PROTO_22]
        1 CAPTURE                          VAL R1
        2 MOVE                             R2 R1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["SourceType"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 LOADK                            R3 K3 ["^Enum%.ContentSourceType%."]
        7 LOADK                            R4 K4 [""]
        8 NAMECALL                         R1 R1 K5 ["gsub"]
       10 CALL                             R1 3 1
       11 GETTABLEKS                       R2 R0 K6 ["Uri"]
       13 JUMPIFNOT                        R2 ; [+8]
       14 LOADK                            R4 K7 ["%*:%*"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 NAMECALL                         R4 R4 K8 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 RETURN                           R3 1
       22 MOVE                             R3 R1
       23 RETURN                           R3 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.3f,%.3f,%.3f"]
        3 GETTABLEKS                       R3 R0 K4 ["X"]
        5 GETTABLEKS                       R4 R0 K5 ["Y"]
        7 GETTABLEKS                       R5 R0 K6 ["Z"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_26:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+41]
        5 LOADK                            R3 K2 ["PVInstance"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+26]
       10 LOADK                            R2 K3 ["%* \"%*\" [pivot=%*]"]
       11 GETTABLEKS                       R4 R0 K4 ["ClassName"]
       13 GETTABLEKS                       R5 R0 K5 ["Name"]
       15 NAMECALL                         R7 R0 K6 ["GetPivot"]
       17 CALL                             R7 1 1
       18 GETTABLEKS                       R7 R7 K7 ["Position"]
       20 GETIMPORT                        R8 K10 [string.format]
       22 LOADK                            R9 K11 ["%.3f,%.3f,%.3f"]
       23 GETTABLEKS                       R10 R7 K12 ["X"]
       25 GETTABLEKS                       R11 R7 K13 ["Y"]
       27 GETTABLEKS                       R12 R7 K14 ["Z"]
       29 CALL                             R8 4 1
       30 MOVE                             R6 R8
       31 NAMECALL                         R2 R2 K9 ["format"]
       33 CALL                             R2 4 1
       34 MOVE                             R1 R2
       35 RETURN                           R1 1
       36 LOADK                            R2 K15 ["%* \"%*\""]
       37 GETTABLEKS                       R4 R0 K4 ["ClassName"]
       39 GETTABLEKS                       R5 R0 K5 ["Name"]
       41 NAMECALL                         R2 R2 K9 ["format"]
       43 CALL                             R2 3 1
       44 MOVE                             R1 R2
       45 RETURN                           R1 1
       46 LOADK                            R3 K16 ["SurfaceAppearance"]
       47 NAMECALL                         R1 R0 K17 ["FindFirstChildOfClass"]
       49 CALL                             R1 2 1
       50 GETIMPORT                        R2 K10 [string.format]
       52 LOADK                            R3 K18 ["MeshPart \"%s\" [token=%s pos=%s size=%s mesh=%s texture=%s skinned=%s surfaceAppearance=%s]"]
       53 GETTABLEKS                       R4 R0 K5 ["Name"]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K19 ["parseTokenIndex"]
       58 GETTABLEKS                       R7 R0 K5 ["Name"]
       60 CALL                             R6 1 -1
       61 FASTCALL                         TOSTRING ; [+2]
       62 GETIMPORT                        R5 K21 [tostring]
       64 CALL                             R5 -1 1
       65 GETTABLEKS                       R7 R0 K7 ["Position"]
       67 GETIMPORT                        R8 K10 [string.format]
       69 LOADK                            R9 K11 ["%.3f,%.3f,%.3f"]
       70 GETTABLEKS                       R10 R7 K12 ["X"]
       72 GETTABLEKS                       R11 R7 K13 ["Y"]
       74 GETTABLEKS                       R12 R7 K14 ["Z"]
       76 CALL                             R8 4 1
       77 MOVE                             R6 R8
       78 GETTABLEKS                       R8 R0 K22 ["Size"]
       80 GETIMPORT                        R9 K10 [string.format]
       82 LOADK                            R10 K11 ["%.3f,%.3f,%.3f"]
       83 GETTABLEKS                       R11 R8 K12 ["X"]
       85 GETTABLEKS                       R12 R8 K13 ["Y"]
       87 GETTABLEKS                       R13 R8 K14 ["Z"]
       89 CALL                             R9 4 1
       90 MOVE                             R7 R9
       91 GETTABLEKS                       R9 R0 K23 ["MeshContent"]
       93 GETTABLEKS                       R11 R9 K24 ["SourceType"]
       95 FASTCALL1                        TOSTRING R11 ; [+2]
       96 GETIMPORT                        R10 K21 [tostring]
       98 CALL                             R10 1 1
       99 LOADK                            R12 K25 ["^Enum%.ContentSourceType%."]
      100 LOADK                            R13 K26 [""]
      101 NAMECALL                         R10 R10 K27 ["gsub"]
      103 CALL                             R10 3 1
      104 GETTABLEKS                       R11 R9 K28 ["Uri"]
      106 JUMPIFNOT                        R11 ; [+8]
      107 LOADK                            R12 K29 ["%*:%*"]
      108 MOVE                             R14 R10
      109 MOVE                             R15 R11
      110 NAMECALL                         R12 R12 K9 ["format"]
      112 CALL                             R12 3 1
      113 MOVE                             R8 R12
      114 JUMP                             ; [+1]
      115 MOVE                             R8 R10
      116 GETTABLEKS                       R10 R0 K30 ["TextureContent"]
      118 GETTABLEKS                       R12 R10 K24 ["SourceType"]
      120 FASTCALL1                        TOSTRING R12 ; [+2]
      121 GETIMPORT                        R11 K21 [tostring]
      123 CALL                             R11 1 1
      124 LOADK                            R13 K25 ["^Enum%.ContentSourceType%."]
      125 LOADK                            R14 K26 [""]
      126 NAMECALL                         R11 R11 K27 ["gsub"]
      128 CALL                             R11 3 1
      129 GETTABLEKS                       R12 R10 K28 ["Uri"]
      131 JUMPIFNOT                        R12 ; [+8]
      132 LOADK                            R13 K29 ["%*:%*"]
      133 MOVE                             R15 R11
      134 MOVE                             R16 R12
      135 NAMECALL                         R13 R13 K9 ["format"]
      137 CALL                             R13 3 1
      138 MOVE                             R9 R13
      139 JUMP                             ; [+1]
      140 MOVE                             R9 R11
      141 GETTABLEKS                       R11 R0 K31 ["HasSkinnedMesh"]
      143 FASTCALL1                        TOSTRING R11 ; [+2]
      144 GETIMPORT                        R10 K21 [tostring]
      146 CALL                             R10 1 1
      147 JUMPIFNOT                        R1 ; [+2]
      148 LOADK                            R11 K32 ["yes"]
      149 JUMP                             ; [+1]
      150 LOADK                            R11 K33 ["no"]
      151 CALL                             R2 9 -1
      152 RETURN                           R2 -1

PROTO_27:
        0 ORK                              R2 R1 K0 [""]
        1 NEWTABLE                         R3 0 1
        3 LOADK                            R5 K1 ["%*%*"]
        4 MOVE                             R7 R2
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R0
        7 CALL                             R8 1 1
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 3 1
       11 MOVE                             R4 R5
       12 SETLIST                          R3 R4 1 [1]
       14 NAMECALL                         R4 R0 K3 ["GetChildren"]
       16 CALL                             R4 1 3
       17 FORGPREP                         R4
       18 MOVE                             R10 R3
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R11 R11 K4 ["describeTree"]
       22 MOVE                             R12 R8
       23 MOVE                             R14 R2
       24 LOADK                            R15 K5 ["  "]
       25 CONCAT                           R13 R14 R15
       26 CALL                             R11 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R9 K8 [table.insert]
       30 CALL                             R9 -1 0
       31 FORGLOOP                         R4 2 ; [-14]
       33 GETIMPORT                        R4 K10 [table.concat]
       35 MOVE                             R5 R3
       36 LOADK                            R6 K11 ["\n"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_28:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R3 K0 ["%* exported mesh part(s):"]
        3 GETTABLEKS                       R6 R0 K1 ["tokens"]
        5 LENGTH                           R5 R6
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 SETLIST                          R1 R2 1 [1]
       12 GETTABLEKS                       R2 R0 K1 ["tokens"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 LOADK                            R10 K3 ["  [%*] \"%*\" -> \"%*\""]
       18 MOVE                             R12 R5
       19 GETTABLEKS                       R14 R0 K4 ["originalNames"]
       21 GETTABLE                         R13 R14 R5
       22 MOVE                             R14 R6
       23 NAMECALL                         R10 R10 K2 ["format"]
       25 CALL                             R10 4 1
       26 MOVE                             R9 R10
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K7 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-17]
       35 GETIMPORT                        R2 K9 [table.concat]
       37 MOVE                             R3 R1
       38 LOADK                            R4 K10 ["\n"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

PROTO_29:
        0 JUMPIF                           R1 ; [+9]
        1 LOADK                            R3 K0 ["MATCH FAILED for %* exported part(s) — would fall back to legacy replace"]
        2 GETTABLEKS                       R6 R0 K1 ["tokens"]
        4 LENGTH                           R5 R6
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 RETURN                           R2 1
       10 NEWTABLE                         R2 0 1
       12 LOADK                            R4 K3 ["MATCH OK %*/%*:"]
       13 LENGTH                           R6 R1
       14 GETTABLEKS                       R8 R0 K1 ["tokens"]
       16 LENGTH                           R7 R8
       17 NAMECALL                         R4 R4 K2 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 SETLIST                          R2 R3 1 [1]
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 LOADK                            R11 K4 ["  [%*] \"%*\" <- \"%*\""]
       28 GETTABLEKS                       R13 R7 K5 ["index"]
       30 GETTABLEKS                       R15 R0 K6 ["originalNames"]
       32 GETTABLEKS                       R16 R7 K5 ["index"]
       34 GETTABLE                         R14 R15 R16
       35 GETTABLEKS                       R15 R7 K7 ["meshPart"]
       37 GETTABLEKS                       R15 R15 K8 ["Name"]
       39 NAMECALL                         R11 R11 K2 ["format"]
       41 CALL                             R11 4 1
       42 MOVE                             R10 R11
       43 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       45 MOVE                             R9 R2
       46 GETIMPORT                        R8 K11 [table.insert]
       48 CALL                             R8 2 0
       49 FORGLOOP                         R3 2 ; [-23]
       51 GETIMPORT                        R3 K13 [table.concat]
       53 MOVE                             R4 R2
       54 LOADK                            R5 K14 ["\n"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1

PROTO_30:
        0 NEWTABLE                         R3 0 1
        2 LOADK                            R5 K0 ["EXPORTED %*"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["describePlan"]
        6 MOVE                             R8 R0
        7 CALL                             R7 1 1
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 SETLIST                          R3 R4 1 [1]
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["collectMeshPartsInOrder"]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 3
       21 FORGPREP                         R5
       22 GETTABLEKS                       R10 R9 K4 ["MeshContent"]
       24 GETTABLEKS                       R10 R10 K5 ["Uri"]
       26 JUMPIFNOT                        R10 ; [+17]
       27 GETTABLE                         R11 R4 R10
       28 JUMPIFNOT                        R11 ; [+14]
       29 LOADK                            R15 K6 ["  NOTE source part [%*] shares its mesh asset with part [%*]"]
       30 MOVE                             R17 R8
       31 MOVE                             R18 R11
       32 NAMECALL                         R15 R15 K2 ["format"]
       34 CALL                             R15 3 1
       35 MOVE                             R14 R15
       36 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       38 MOVE                             R13 R3
       39 GETIMPORT                        R12 K9 [table.insert]
       41 CALL                             R12 2 0
       42 JUMP                             ; [+1]
       43 SETTABLE                         R8 R4 R10
       44 FORGLOOP                         R5 2 ; [-23]
       46 FASTCALL2K                       TABLE_INSERT R3 K10 ; [+5]
       48 MOVE                             R6 R3
       49 LOADK                            R7 K10 ["EXPORTED positions (as recorded, relative to the de-rotated export root):"]
       50 GETIMPORT                        R5 K9 [table.insert]
       52 CALL                             R5 2 0
       53 GETTABLEKS                       R5 R0 K11 ["relativePositions"]
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 GETTABLEKS                       R12 R0 K13 ["originalNames"]
       60 GETTABLE                         R11 R12 R8
       61 ORK                              R10 R11 K12 ["?"]
       62 GETTABLEKS                       R12 R0 K14 ["sizes"]
       64 GETTABLE                         R11 R12 R8
       65 LOADK                            R15 K15 ["  [%*] \"%*\" relPos=%* size=%*"]
       66 MOVE                             R17 R8
       67 MOVE                             R18 R10
       68 GETIMPORT                        R19 K17 [string.format]
       70 LOADK                            R20 K18 ["%.3f,%.3f,%.3f"]
       71 GETTABLEKS                       R21 R9 K19 ["X"]
       73 GETTABLEKS                       R22 R9 K20 ["Y"]
       75 GETTABLEKS                       R23 R9 K21 ["Z"]
       77 CALL                             R19 4 1
       78 JUMPIFNOT                        R11 ; [+11]
       79 GETIMPORT                        R20 K17 [string.format]
       81 LOADK                            R21 K18 ["%.3f,%.3f,%.3f"]
       82 GETTABLEKS                       R22 R11 K19 ["X"]
       84 GETTABLEKS                       R23 R11 K20 ["Y"]
       86 GETTABLEKS                       R24 R11 K21 ["Z"]
       88 CALL                             R20 4 1
       89 JUMP                             ; [+1]
       90 LOADK                            R20 K12 ["?"]
       91 NAMECALL                         R15 R15 K2 ["format"]
       93 CALL                             R15 5 1
       94 MOVE                             R14 R15
       95 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       97 MOVE                             R13 R3
       98 GETIMPORT                        R12 K9 [table.insert]
      100 CALL                             R12 2 0
      101 FORGLOOP                         R5 2 ; [-44]
      103 LOADK                            R8 K22 ["SOURCE tree:\n%*"]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K23 ["describeTree"]
      107 MOVE                             R11 R1
      108 CALL                             R10 1 1
      109 NAMECALL                         R8 R8 K2 ["format"]
      111 CALL                             R8 2 1
      112 MOVE                             R7 R8
      113 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      115 MOVE                             R6 R3
      116 GETIMPORT                        R5 K9 [table.insert]
      118 CALL                             R5 2 0
      119 LOADK                            R8 K24 ["RETURNED tree:\n%*"]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K23 ["describeTree"]
      123 MOVE                             R11 R2
      124 CALL                             R10 1 1
      125 NAMECALL                         R8 R8 K2 ["format"]
      127 CALL                             R8 2 1
      128 MOVE                             R7 R8
      129 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      131 MOVE                             R6 R3
      132 GETIMPORT                        R5 K9 [table.insert]
      134 CALL                             R5 2 0
      135 GETIMPORT                        R5 K26 [table.concat]
      137 MOVE                             R6 R3
      138 LOADK                            R7 K27 ["\n"]
      139 CALL                             R5 2 -1
      140 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADK                            R1 K0 ["G3D"]
        4 SETTABLEKS                       R1 R0 K1 ["TOKEN_PREFIX"]
        6 DUPCLOSURE                       R1 K2 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K3 ["sanitizeName"]
        9 DUPCLOSURE                       R1 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["makeToken"]
       13 DUPCLOSURE                       R1 K6 [PROTO_2]
       14 SETTABLEKS                       R1 R0 K7 ["parseTokenIndex"]
       16 DUPCLOSURE                       R1 K8 [PROTO_3]
       17 SETTABLEKS                       R1 R0 K9 ["collectMeshPartsInOrder"]
       19 DUPCLOSURE                       R1 K10 [PROTO_4]
       20 SETTABLEKS                       R1 R0 K11 ["collectPartsInOrder"]
       22 DUPCLOSURE                       R1 K12 [PROTO_5]
       23 SETTABLEKS                       R1 R0 K13 ["findSingleMeshPart"]
       25 DUPCLOSURE                       R2 K14 [PROTO_6]
       26 DUPCLOSURE                       R3 K15 [PROTO_7]
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R3 R0 K16 ["createPlan"]
       31 DUPCLOSURE                       R3 K17 [PROTO_8]
       32 SETTABLEKS                       R3 R0 K18 ["destroyPlan"]
       34 DUPCLOSURE                       R3 K19 [PROTO_9]
       35 SETTABLEKS                       R3 R0 K20 ["isReapplyEligible"]
       37 DUPCLOSURE                       R3 K21 [PROTO_10]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R4 K22 [PROTO_11]
       40 CAPTURE                          VAL R0
       41 DUPCLOSURE                       R5 K23 [PROTO_12]
       42 DUPCLOSURE                       R6 K24 [PROTO_13]
       43 DUPCLOSURE                       R7 K25 [PROTO_14]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R8 K26 [PROTO_15]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R7
       49 DUPCLOSURE                       R9 K27 [PROTO_16]
       50 CAPTURE                          VAL R7
       51 DUPCLOSURE                       R10 K28 [PROTO_17]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R10 R0 K29 ["resolveIncomingParts"]
       59 DUPCLOSURE                       R10 K30 [PROTO_18]
       60 SETTABLEKS                       R10 R0 K31 ["applyMeshPreservingTarget"]
       62 DUPCLOSURE                       R10 K32 [PROTO_19]
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R10 R0 K33 ["canApplyPlan"]
       66 DUPCLOSURE                       R10 K34 [PROTO_20]
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R10 R0 K35 ["applyPlan"]
       70 DUPCLOSURE                       R10 K36 [PROTO_21]
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R10 R0 K37 ["revertPlan"]
       74 DUPCLOSURE                       R10 K38 [PROTO_23]
       75 SETTABLEKS                       R10 R0 K39 ["stripTokenNames"]
       77 DUPCLOSURE                       R10 K40 [PROTO_24]
       78 DUPCLOSURE                       R11 K41 [PROTO_25]
       79 DUPCLOSURE                       R12 K42 [PROTO_26]
       80 CAPTURE                          VAL R0
       81 DUPCLOSURE                       R13 K43 [PROTO_27]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R13 R0 K44 ["describeTree"]
       86 DUPCLOSURE                       R13 K45 [PROTO_28]
       87 SETTABLEKS                       R13 R0 K46 ["describePlan"]
       89 DUPCLOSURE                       R13 K47 [PROTO_29]
       90 SETTABLEKS                       R13 R0 K48 ["describeMatch"]
       92 DUPCLOSURE                       R13 K49 [PROTO_30]
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R13 R0 K50 ["describeMatchFailure"]
       96 RETURN                           R0 1
