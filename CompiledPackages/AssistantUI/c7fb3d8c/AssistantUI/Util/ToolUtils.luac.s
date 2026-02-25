PROTO_0:
        0 LOADB                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LOADK                            R9 K0 ["PVInstance"]
        6 NAMECALL                         R7 R6 K1 ["IsA"]
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+2]
       10 LOADB                            R1 1
       11 JUMP                             ; [+2]
       12 FORGLOOP                         R2 2 ; [-8]
       14 JUMPIFNOT                        R1 ; [+13]
       15 GETIMPORT                        R2 K4 [Instance.new]
       17 LOADK                            R3 K5 ["Model"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R0
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 SETTABLEKS                       R2 R7 K6 ["Parent"]
       25 FORGLOOP                         R3 2 ; [-3]
       27 RETURN                           R2 1
       28 LENGTH                           R2 R0
       29 LOADN                            R3 1
       30 JUMPIFNOTLT                      R3 R2 ; [+14]
       32 GETIMPORT                        R2 K4 [Instance.new]
       34 LOADK                            R3 K7 ["Folder"]
       35 CALL                             R2 1 1
       36 MOVE                             R3 R0
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 SETTABLEKS                       R2 R7 K6 ["Parent"]
       42 FORGLOOP                         R3 2 ; [-3]
       44 RETURN                           R2 1
       45 GETTABLEN                        R2 R0 1
       46 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R4 K0 ["Model"]
        7 NAMECALL                         R2 R0 K1 ["IsA"]
        9 CALL                             R2 2 1
       10 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       12 LOADK                            R3 K2 ["Bad model check"]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K7 [CFrame.new]
       18 GETTABLEKS                       R3 R0 K8 ["WorldPivot"]
       20 GETTABLEKS                       R2 R3 K9 ["Position"]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K8 ["WorldPivot"]
       25 NAMECALL                         R1 R0 K10 ["GetBoundingBox"]
       27 CALL                             R1 1 1
       28 GETIMPORT                        R2 K7 [CFrame.new]
       30 GETTABLEKS                       R3 R1 K9 ["Position"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R0 K8 ["WorldPivot"]
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOT                        R0 ; [+4]
        4 NAMECALL                         R1 R0 K0 ["Clone"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 2
       10 GETIMPORT                        R3 K4 [Enum.AssetType.Audio]
       12 JUMPIFNOTEQ                      R2 R3 ; [+12]
       14 GETIMPORT                        R2 K7 [Instance.new]
       16 LOADK                            R3 K8 ["Sound"]
       17 CALL                             R2 1 1
       18 LOADK                            R4 K9 ["rbxassetid://"]
       19 GETUPVAL                         R5 1
       20 CONCAT                           R3 R4 R5
       21 SETTABLEKS                       R3 R2 K10 ["SoundId"]
       23 MOVE                             R1 R2
       24 JUMP                             ; [+25]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R5 R6 K11 ["get"]
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R4 R5 K12 ["tools"]
       31 GETTABLEKS                       R3 R4 K13 ["marketplaceInsertion"]
       33 GETTABLEKS                       R2 R3 K14 ["loadAssetAsync"]
       35 GETUPVAL                         R3 1
       36 CALL                             R2 1 1
       37 LOADK                            R6 K15 ["Failed to load asset: "]
       38 GETUPVAL                         R7 1
       39 CONCAT                           R5 R6 R7
       40 FASTCALL2                        ASSERT R2 R5 ; [+4]
       42 MOVE                             R4 R2
       43 GETIMPORT                        R3 K17 [assert]
       45 CALL                             R3 2 0
       46 GETUPVAL                         R3 4
       47 MOVE                             R4 R2
       48 CALL                             R3 1 1
       49 MOVE                             R1 R3
       50 LOADK                            R5 K15 ["Failed to load asset: "]
       51 GETUPVAL                         R6 1
       52 CONCAT                           R4 R5 R6
       53 FASTCALL2                        ASSERT R1 R4 ; [+4]
       55 MOVE                             R3 R1
       56 GETIMPORT                        R2 K17 [assert]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 5
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 0
       63 GETUPVAL                         R3 1
       64 SETTABLE                         R1 R2 R3
       65 NAMECALL                         R2 R1 K0 ["Clone"]
       67 CALL                             R2 1 -1
       68 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+5]
       11 GETIMPORT                        R4 K3 [warn]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 RETURN                           R3 1

PROTO_4:
        0 JUMPIF                           R0 ; [+8]
        1 GETIMPORT                        R2 K2 [CFrame.new]
        3 CALL                             R2 0 1
        4 FASTCALL                         VECTOR ; [+2]
        5 GETIMPORT                        R3 K4 [Vector3.new]
        7 CALL                             R3 0 1
        8 RETURN                           R2 2
        9 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K5 ["Luau"]
       13 GETIMPORT                        R2 K7 [assert]
       15 CALL                             R2 2 0
       16 GETIMPORT                        R2 K9 [Instance.new]
       18 LOADK                            R3 K10 ["Model"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K11 ["Parent"]
       22 SETTABLEKS                       R2 R0 K11 ["Parent"]
       24 GETUPVAL                         R4 0
       25 MOVE                             R5 R2
       26 CALL                             R4 1 0
       27 NAMECALL                         R4 R2 K12 ["GetPivot"]
       29 CALL                             R4 1 1
       30 NAMECALL                         R5 R2 K13 ["GetExtentsSize"]
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R1 ; [+3]
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 CALL                             R6 1 0
       37 SETTABLEKS                       R3 R0 K11 ["Parent"]
       39 NAMECALL                         R6 R2 K14 ["Destroy"]
       41 CALL                             R6 1 0
       42 RETURN                           R4 2

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R3 R0 K1 ["LookVector"]
        4 GETTABLEKS                       R2 R3 K2 ["Unit"]
        6 GETTABLEKS                       R3 R1 K3 ["Y"]
        8 MULK                             R5 R3 K4 [3]
        9 FASTCALL2K                       MATH_MAX R5 K5 ; [+4]
       11 LOADK                            R6 K5 [50]
       12 GETIMPORT                        R4 K8 [math.max]
       14 CALL                             R4 2 1
       15 MUL                              R7 R3 R3
       16 MUL                              R8 R4 R4
       17 ADD                              R6 R7 R8
       18 FASTCALL1                        MATH_SQRT R6 ; [+2]
       19 GETIMPORT                        R5 K10 [math.sqrt]
       21 CALL                             R5 1 1
       22 NEWTABLE                         R6 0 0
       24 GETIMPORT                        R8 K12 [workspace]
       26 GETTABLEKS                       R7 R8 K13 ["Terrain"]
       28 JUMPIFNOT                        R7 ; [+13]
       29 NAMECALL                         R8 R7 K14 ["CountCells"]
       31 CALL                             R8 1 1
       32 LOADN                            R9 0
       33 JUMPIFNOTLT                      R9 R8 ; [+8]
       35 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       37 MOVE                             R9 R6
       38 MOVE                             R10 R7
       39 GETIMPORT                        R8 K17 [table.insert]
       41 CALL                             R8 2 0
       42 GETIMPORT                        R8 K12 [workspace]
       44 LOADK                            R10 K18 ["Baseplate"]
       45 NAMECALL                         R8 R8 K19 ["FindFirstChild"]
       47 CALL                             R8 2 1
       48 JUMPIFNOT                        R8 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R6 R8 ; [+5]
       51 MOVE                             R10 R6
       52 MOVE                             R11 R8
       53 GETIMPORT                        R9 K17 [table.insert]
       55 CALL                             R9 2 0
       56 LENGTH                           R9 R6
       57 LOADN                            R10 0
       58 JUMPIFNOTLT                      R10 R9 ; [+59]
       60 GETIMPORT                        R9 K22 [RaycastParams.new]
       62 CALL                             R9 0 1
       63 SETTABLEKS                       R6 R9 K23 ["FilterDescendantsInstances"]
       65 GETIMPORT                        R10 K27 [Enum.RaycastFilterType.Include]
       67 SETTABLEKS                       R10 R9 K28 ["FilterType"]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K29 ["IgnoreWater"]
       72 GETIMPORT                        R10 K12 [workspace]
       74 MOVE                             R12 R1
       75 MUL                              R13 R2 R5
       76 MOVE                             R14 R9
       77 NAMECALL                         R10 R10 K30 ["Raycast"]
       79 CALL                             R10 4 1
       80 JUMPIFNOT                        R10 ; [+4]
       81 GETTABLEKS                       R11 R10 K0 ["Position"]
       83 LOADNIL                          R12
       84 RETURN                           R11 2
       85 GETIMPORT                        R11 K12 [workspace]
       87 MUL                              R14 R2 R4
       88 ADD                              R13 R1 R14
       89 LOADK                            R15 K31 [{0, -1, 0}]
       90 MUL                              R14 R15 R4
       91 MOVE                             R15 R9
       92 NAMECALL                         R11 R11 K30 ["Raycast"]
       94 CALL                             R11 4 1
       95 MOVE                             R10 R11
       96 JUMPIFNOT                        R10 ; [+4]
       97 GETTABLEKS                       R11 R10 K0 ["Position"]
       99 LOADNIL                          R12
      100 RETURN                           R11 2
      101 GETIMPORT                        R11 K12 [workspace]
      103 MUL                              R14 R2 R4
      104 ADD                              R13 R1 R14
      105 LOADK                            R15 K32 [{0, 1, 0}]
      106 MUL                              R14 R15 R4
      107 MOVE                             R15 R9
      108 NAMECALL                         R11 R11 K30 ["Raycast"]
      110 CALL                             R11 4 1
      111 MOVE                             R10 R11
      112 JUMPIFNOT                        R10 ; [+53]
      113 GETTABLEKS                       R11 R10 K0 ["Position"]
      115 LOADNIL                          R12
      116 RETURN                           R11 2
      117 JUMP                             ; [+48]
      118 LOADK                            R11 K31 [{0, -1, 0}]
      119 NAMECALL                         R9 R2 K33 ["Dot"]
      121 CALL                             R9 2 1
      122 LOADN                            R10 0
      123 JUMPIFNOTLT                      R10 R9 ; [+42]
      125 LOADN                            R10 1
      126 JUMPIFNOTLT                      R9 R10 ; [+39]
      128 GETTABLEKS                       R10 R1 K3 ["Y"]
      130 LOADN                            R11 0
      131 JUMPIFNOTLT                      R11 R10 ; [+34]
      133 DIV                              R10 R3 R9
      134 GETTABLEKS                       R12 R1 K34 ["X"]
      136 LOADN                            R13 0
      137 GETTABLEKS                       R14 R1 K35 ["Z"]
      139 FASTCALL                         VECTOR ; [+2]
      140 GETIMPORT                        R11 K37 [Vector3.new]
      142 CALL                             R11 3 1
      143 MUL                              R13 R10 R2
      144 ADD                              R12 R13 R1
      145 JUMPIFNOTLT                      R10 R5 ; [+5]
      147 MOVE                             R13 R12
      148 GETTABLEKS                       R14 R12 K3 ["Y"]
      150 RETURN                           R13 2
      151 GETTABLEKS                       R17 R2 K34 ["X"]
      153 LOADN                            R18 0
      154 GETTABLEKS                       R19 R2 K35 ["Z"]
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R16 K37 [Vector3.new]
      159 CALL                             R16 3 1
      160 GETTABLEKS                       R15 R16 K2 ["Unit"]
      162 MUL                              R14 R15 R4
      163 ADD                              R13 R14 R11
      164 LOADN                            R14 0
      165 RETURN                           R13 2
      166 MUL                              R10 R2 R4
      167 ADD                              R9 R1 R10
      168 MOVE                             R10 R9
      169 GETTABLEKS                       R11 R9 K3 ["Y"]
      171 RETURN                           R10 2

PROTO_6:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        4 FASTCALL2K                       ASSERT R0 K3 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K3 ["Camera not found"]
        8 GETIMPORT                        R1 K5 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K6 ["CFrame"]
       13 GETTABLEKS                       R2 R1 K7 ["Position"]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 CALL                             R3 1 2
       18 GETTABLEKS                       R8 R0 K8 ["ViewportSize"]
       20 GETTABLEKS                       R7 R8 K9 ["X"]
       22 GETTABLEKS                       R9 R0 K8 ["ViewportSize"]
       24 GETTABLEKS                       R8 R9 K10 ["Y"]
       26 NAMECALL                         R5 R0 K11 ["ViewportPointToRay"]
       28 CALL                             R5 3 1
       29 GETTABLEKS                       R9 R5 K12 ["Origin"]
       31 SUB                              R8 R9 R3
       32 LOADK                            R10 K13 [{0, 1, 0}]
       33 NAMECALL                         R8 R8 K14 ["Dot"]
       35 CALL                             R8 2 1
       36 MINUS                            R7 R8
       37 GETTABLEKS                       R8 R5 K15 ["Direction"]
       39 LOADK                            R10 K13 [{0, 1, 0}]
       40 NAMECALL                         R8 R8 K14 ["Dot"]
       42 CALL                             R8 2 1
       43 DIV                              R6 R7 R8
       44 GETTABLEKS                       R8 R5 K12 ["Origin"]
       46 GETTABLEKS                       R10 R5 K15 ["Direction"]
       48 MUL                              R9 R10 R6
       49 ADD                              R7 R8 R9
       50 GETTABLEKS                       R9 R7 K9 ["X"]
       52 GETTABLEKS                       R10 R3 K10 ["Y"]
       54 GETTABLEKS                       R11 R7 K16 ["Z"]
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R8 K19 [Vector3.new]
       59 CALL                             R8 3 1
       60 MOVE                             R7 R8
       61 GETTABLEKS                       R9 R2 K9 ["X"]
       63 GETTABLEKS                       R10 R3 K10 ["Y"]
       65 GETTABLEKS                       R11 R2 K16 ["Z"]
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R8 K19 [Vector3.new]
       70 CALL                             R8 3 1
       71 SUB                              R9 R3 R8
       72 GETIMPORT                        R10 K20 [CFrame.new]
       74 MOVE                             R11 R3
       75 ADD                              R12 R3 R9
       76 CALL                             R10 2 1
       77 MOVE                             R11 R10
       78 MOVE                             R12 R4
       79 RETURN                           R11 2

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R1 1
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R4 K1 [workspace]
        6 GETTABLEKS                       R3 R4 K2 ["Terrain"]
        8 JUMPIFNOT                        R3 ; [+13]
        9 NAMECALL                         R4 R3 K3 ["CountCells"]
       11 CALL                             R4 1 1
       12 LOADN                            R5 0
       13 JUMPIFNOTLT                      R5 R4 ; [+8]
       15 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K6 [table.insert]
       21 CALL                             R4 2 0
       22 GETIMPORT                        R4 K1 [workspace]
       24 LOADK                            R6 K7 ["Baseplate"]
       25 NAMECALL                         R4 R4 K8 ["FindFirstChild"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       31 MOVE                             R6 R2
       32 MOVE                             R7 R4
       33 GETIMPORT                        R5 K6 [table.insert]
       35 CALL                             R5 2 0
       36 LENGTH                           R5 R2
       37 LOADN                            R6 0
       38 JUMPIFNOTLT                      R6 R5 ; [+28]
       40 GETIMPORT                        R5 K11 [RaycastParams.new]
       42 CALL                             R5 0 1
       43 SETTABLEKS                       R2 R5 K12 ["FilterDescendantsInstances"]
       45 GETIMPORT                        R6 K16 [Enum.RaycastFilterType.Include]
       47 SETTABLEKS                       R6 R5 K17 ["FilterType"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K18 ["IgnoreWater"]
       52 GETIMPORT                        R6 K1 [workspace]
       54 LOADK                            R9 K19 [{0, 10000, 0}]
       55 ADD                              R8 R0 R9
       56 LOADK                            R9 K20 [{0, -20000, 0}]
       57 MOVE                             R10 R5
       58 NAMECALL                         R6 R6 K21 ["Raycast"]
       60 CALL                             R6 4 1
       61 JUMPIFNOT                        R6 ; [+5]
       62 GETTABLEKS                       R8 R6 K22 ["Position"]
       64 GETTABLEKS                       R7 R8 K23 ["Y"]
       66 RETURN                           R7 1
       67 GETTABLEKS                       R5 R0 K23 ["Y"]
       69 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETIMPORT                        R1 K2 [CFrame.new]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 JUMP                             ; [+6]
        7 GETIMPORT                        R1 K2 [CFrame.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R1 3 1
       13 GETIMPORT                        R2 K2 [CFrame.new]
       15 CALL                             R2 0 1
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 1
       18 JUMPIFNOT                        R4 ; [+4]
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 2
       21 MOVE                             R2 R4
       22 MOVE                             R3 R5
       23 MOVE                             R6 R1
       24 NAMECALL                         R4 R2 K3 ["ToWorldSpace"]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R6 R4 K4 ["Position"]
       30 MOVE                             R7 R3
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R10 R4 K4 ["Position"]
       34 GETTABLEKS                       R9 R10 K5 ["Y"]
       36 MINUS                            R8 R9
       37 ADD                              R7 R8 R5
       38 NAMECALL                         R10 R0 K7 ["GetExtentsSize"]
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R9 R10 K5 ["Y"]
       43 DIVK                             R8 R9 K6 [2]
       44 ADD                              R6 R7 R8
       45 LOADN                            R8 0
       46 LOADN                            R10 0
       47 FASTCALL3                        VECTOR R8 R6 R10
       49 MOVE                             R9 R6
       50 GETIMPORT                        R7 K9 [Vector3.new]
       52 CALL                             R7 3 1
       53 ADD                              R4 R4 R7
       54 GETUPVAL                         R7 4
       55 JUMPIFNOT                        R7 ; [+10]
       56 GETIMPORT                        R7 K2 [CFrame.new]
       58 GETTABLEKS                       R8 R4 K4 ["Position"]
       60 GETTABLEKS                       R10 R4 K4 ["Position"]
       62 GETUPVAL                         R11 4
       63 ADD                              R9 R10 R11
       64 CALL                             R7 2 1
       65 MOVE                             R4 R7
       66 MOVE                             R9 R4
       67 NAMECALL                         R7 R0 K10 ["PivotTo"]
       69 CALL                             R7 2 0
       70 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R3
        8 CALL                             R4 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetEnumItems"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R1 R7
        7 JUMPIF                           R8 ; [+8]
        8 GETTABLEKS                       R10 R7 K1 ["Name"]
       10 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       12 MOVE                             R9 R2
       13 GETIMPORT                        R8 K4 [table.insert]
       15 CALL                             R8 2 0
       16 FORGLOOP                         R3 2 ; [-11]
       18 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEnumExcept"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K5 [tostring]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFullName"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 ORK                              R3 R1 K0 [1000]
        1 ORK                              R4 R2 K1 [5000]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K3 [typeof]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+15]
        9 LENGTH                           R7 R0
       10 JUMPIFNOTLE                      R7 R3 ; [+3]
       12 MOVE                             R6 R0
       13 RETURN                           R6 1
       14 LOADN                            R11 1
       15 MOVE                             R12 R3
       16 NAMECALL                         R9 R0 K5 ["sub"]
       18 CALL                             R9 3 1
       19 MOVE                             R7 R9
       20 LOADK                            R8 K6 ["... (truncated)"]
       21 CONCAT                           R6 R7 R8
       22 RETURN                           R6 1
       23 JUMPIFEQKS                       R5 K7 ["number"] ; [+3]
       25 JUMPIFNOTEQKS                    R5 K8 ["boolean"] ; [+2]
       27 RETURN                           R0 1
       28 JUMPIFNOTEQKS                    R5 K9 ["nil"] ; [+3]
       30 LOADNIL                          R6
       31 RETURN                           R6 1
       32 JUMPIFNOTEQKS                    R5 K10 ["Instance"] ; [+11]
       34 GETIMPORT                        R6 K12 [pcall]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 CALL                             R6 1 2
       39 JUMPIFNOT                        R6 ; [+2]
       40 MOVE                             R8 R7
       41 RETURN                           R8 1
       42 LOADK                            R8 K13 ["[Destroyed Instance]"]
       43 RETURN                           R8 1
       44 JUMPIFNOTEQKS                    R5 K14 ["table"] ; [+35]
       46 NEWTABLE                         R6 0 0
       48 MOVE                             R7 R0
       49 LOADNIL                          R8
       50 LOADNIL                          R9
       51 FORGPREP                         R7
       52 FASTCALL1                        TOSTRING R10 ; [+3]
       53 MOVE                             R13 R10
       54 GETIMPORT                        R12 K16 [tostring]
       56 CALL                             R12 1 1
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R13 R14 K17 ["getValueRepresentation"]
       60 MOVE                             R14 R11
       61 MOVE                             R15 R3
       62 MOVE                             R16 R4
       63 CALL                             R13 3 1
       64 SETTABLE                         R13 R6 R12
       65 FORGLOOP                         R7 2 ; [-14]
       67 GETIMPORT                        R7 K12 [pcall]
       69 NEWCLOSURE                       R8 P1
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R6
       72 CALL                             R7 1 2
       73 JUMPIFNOT                        R7 ; [+4]
       74 LENGTH                           R9 R8
       75 JUMPIFNOTLE                      R9 R4 ; [+2]
       77 RETURN                           R6 1
       78 LOADK                            R9 K18 ["[Complex Table]"]
       79 RETURN                           R9 1
       80 JUMPIFNOTEQKS                    R5 K19 ["CFrame"] ; [+37]
       82 GETTABLEKS                       R6 R0 K20 ["Position"]
       84 NAMECALL                         R7 R0 K21 ["GetComponents"]
       86 CALL                             R7 1 12
       87 DUPTABLE                         R19 K23 [{"Position", "Rotation"}]
       88 LOADK                            R21 K24 ["%*, %*, %*"]
       89 GETTABLEKS                       R23 R6 K25 ["X"]
       91 GETTABLEKS                       R24 R6 K26 ["Y"]
       93 GETTABLEKS                       R25 R6 K27 ["Z"]
       95 NAMECALL                         R21 R21 K28 ["format"]
       97 CALL                             R21 4 1
       98 MOVE                             R20 R21
       99 SETTABLEKS                       R20 R19 K20 ["Position"]
      101 LOADK                            R21 K29 ["%*, %*, %*, %*, %*, %*, %*, %*, %*"]
      102 MOVE                             R23 R10
      103 MOVE                             R24 R11
      104 MOVE                             R25 R12
      105 MOVE                             R26 R13
      106 MOVE                             R27 R14
      107 MOVE                             R28 R15
      108 MOVE                             R29 R16
      109 MOVE                             R30 R17
      110 MOVE                             R31 R18
      111 NAMECALL                         R21 R21 K28 ["format"]
      113 CALL                             R21 10 1
      114 MOVE                             R20 R21
      115 SETTABLEKS                       R20 R19 K22 ["Rotation"]
      117 RETURN                           R19 1
      118 JUMPIFNOTEQKS                    R5 K30 ["Vector3"] ; [+13]
      120 LOADK                            R7 K24 ["%*, %*, %*"]
      121 GETTABLEKS                       R9 R0 K25 ["X"]
      123 GETTABLEKS                       R10 R0 K26 ["Y"]
      125 GETTABLEKS                       R11 R0 K27 ["Z"]
      127 NAMECALL                         R7 R7 K28 ["format"]
      129 CALL                             R7 4 1
      130 MOVE                             R6 R7
      131 RETURN                           R6 1
      132 JUMPIFNOTEQKS                    R5 K31 ["Vector2"] ; [+11]
      134 LOADK                            R7 K32 ["%*, %*"]
      135 GETTABLEKS                       R9 R0 K25 ["X"]
      137 GETTABLEKS                       R10 R0 K26 ["Y"]
      139 NAMECALL                         R7 R7 K28 ["format"]
      141 CALL                             R7 3 1
      142 MOVE                             R6 R7
      143 RETURN                           R6 1
      144 JUMPIFNOTEQKS                    R5 K33 ["Color3"] ; [+13]
      146 LOADK                            R7 K24 ["%*, %*, %*"]
      147 GETTABLEKS                       R9 R0 K34 ["R"]
      149 GETTABLEKS                       R10 R0 K35 ["G"]
      151 GETTABLEKS                       R11 R0 K36 ["B"]
      153 NAMECALL                         R7 R7 K28 ["format"]
      155 CALL                             R7 4 1
      156 MOVE                             R6 R7
      157 RETURN                           R6 1
      158 FASTCALL1                        TOSTRING R0 ; [+3]
      159 MOVE                             R7 R0
      160 GETIMPORT                        R6 K16 [tostring]
      162 CALL                             R6 1 1
      163 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getValueRepresentation"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["toString"]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_17:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K2 [task.wait]
        3 LOADN                            R2 1
        4 CALL                             R1 1 0
        5 ADDK                             R0 R0 K3 [1]
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R2 K5 [{"progress"}]
        8 SETTABLEKS                       R0 R2 K4 ["progress"]
       10 CALL                             R1 1 0
       11 JUMPBACK                         ; [-11]
       12 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 GETUPVAL                         R1 0
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 RETURN                           R0 1

PROTO_19:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["Progress loop is only supported with long-running tool calls"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K5 [task.spawn]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K7 [pcall]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 GETVARARGS                       R5 -1
       19 CALL                             R3 -1 2
       20 GETIMPORT                        R5 K9 [task.cancel]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 0
       24 JUMPIF                           R3 ; [+4]
       25 GETIMPORT                        R5 K11 [error]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 0
       29 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       30 MOVE                             R6 R4
       31 GETIMPORT                        R5 K14 [table.unpack]
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_21:
        0 LOADK                            R4 K0 ["."]
        1 NAMECALL                         R2 R0 K1 ["split"]
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K3 [game]
        6 LOADB                            R4 0
        7 MOVE                             R5 R2
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 JUMPIFNOTEQKN                    R8 K4 [1] ; [+3]
       13 JUMPIFEQKS                       R9 K2 ["game"] ; [+27]
       15 GETIMPORT                        R10 K6 [pcall]
       17 NEWCLOSURE                       R11 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R9
       20 CALL                             R10 1 2
       21 JUMPIF                           R10 ; [+1]
       22 LOADNIL                          R11
       23 JUMPIF                           R11 ; [+16]
       24 LENGTH                           R13 R2
       25 JUMPIFNOTEQ                      R8 R13 ; [+3]
       27 MOVE                             R12 R1
       28 JUMPIF                           R12 ; [+1]
       29 LOADK                            R12 K7 ["Folder"]
       30 GETIMPORT                        R13 K10 [Instance.new]
       32 MOVE                             R14 R12
       33 CALL                             R13 1 1
       34 MOVE                             R11 R13
       35 SETTABLEKS                       R9 R11 K11 ["Name"]
       37 SETTABLEKS                       R3 R11 K12 ["Parent"]
       39 LOADB                            R4 1
       40 MOVE                             R3 R11
       41 FORGLOOP                         R5 2 ; [-31]
       43 CLOSEUPVALS                      R3
       44 RETURN                           R3 2

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_23:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K3 [game]
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOTEQKN                    R6 K4 [1] ; [+3]
       12 JUMPIFEQKS                       R7 K2 ["game"] ; [+13]
       14 GETIMPORT                        R8 K6 [pcall]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R7
       19 CALL                             R8 1 2
       20 JUMPIFNOT                        R8 ; [+1]
       21 JUMPIF                           R9 ; [+3]
       22 LOADNIL                          R10
       23 CLOSEUPVALS                      R2
       24 RETURN                           R10 1
       25 MOVE                             R2 R9
       26 FORGLOOP                         R3 2 ; [-17]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 LOADK                            R3 K1 ["-"]
        6 LOADK                            R4 K2 [""]
        7 NAMECALL                         R1 R0 K3 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADN                            R3 1
       11 LOADN                            R4 24
       12 NAMECALL                         R1 R1 K4 ["sub"]
       14 CALL                             R1 3 1
       15 MOVE                             R0 R1
       16 LOADK                            R2 K5 ["toolu_%*"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R2 R2 K6 ["format"]
       20 CALL                             R2 2 1
       21 MOVE                             R1 R2
       22 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["GetChildren"]
        7 CALL                             R1 1 1
        8 LENGTH                           R0 R1
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+5]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K0 ["Destroy"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Material variant preloading is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R2 K4 [workspace]
       10 GETTABLEKS                       R1 R2 K5 ["CurrentCamera"]
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K8 [Instance.new]
       16 LOADK                            R3 K9 ["Part"]
       17 CALL                             R2 1 1
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K10 ["Archivable"]
       21 LOADK                            R4 K11 ["Assistant_PreloadMaterialVariant_"]
       22 GETTABLEKS                       R5 R0 K12 ["Name"]
       24 CONCAT                           R3 R4 R5
       25 SETTABLEKS                       R3 R2 K12 ["Name"]
       27 LOADB                            R3 1
       28 SETTABLEKS                       R3 R2 K13 ["Anchored"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K14 ["CanCollide"]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K15 ["CanTouch"]
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K16 ["CanQuery"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K17 ["AudioCanCollide"]
       42 LOADB                            R3 0
       43 SETTABLEKS                       R3 R2 K18 ["EnableFluidForces"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K19 ["CastShadow"]
       48 LOADK                            R3 K20 [{0.001, 0.001, 0.001}]
       49 SETTABLEKS                       R3 R2 K21 ["Size"]
       51 LOADK                            R3 K22 [0.95]
       52 SETTABLEKS                       R3 R2 K23 ["Transparency"]
       54 GETTABLEKS                       R5 R1 K24 ["CFrame"]
       56 GETTABLEKS                       R4 R5 K25 ["Position"]
       58 LOADK                            R5 K26 [{0, -1000, 0}]
       59 ADD                              R3 R4 R5
       60 SETTABLEKS                       R3 R2 K25 ["Position"]
       62 LOADK                            R5 K27 ["Assistant_PreloadMaterialFolder"]
       63 NAMECALL                         R3 R1 K28 ["FindFirstChild"]
       65 CALL                             R3 2 1
       66 JUMPIF                           R3 ; [+13]
       67 GETIMPORT                        R4 K8 [Instance.new]
       69 LOADK                            R5 K29 ["Folder"]
       70 CALL                             R4 1 1
       71 LOADK                            R5 K27 ["Assistant_PreloadMaterialFolder"]
       72 SETTABLEKS                       R5 R4 K12 ["Name"]
       74 LOADB                            R5 0
       75 SETTABLEKS                       R5 R4 K10 ["Archivable"]
       77 SETTABLEKS                       R1 R4 K30 ["Parent"]
       79 MOVE                             R3 R4
       80 FASTCALL2K                       ASSERT R3 K31 ; [+5]
       82 MOVE                             R5 R3
       83 LOADK                            R6 K31 ["Failed to get or create preload material folder"]
       84 GETIMPORT                        R4 K2 [assert]
       86 CALL                             R4 2 0
       87 GETTABLEKS                       R4 R0 K32 ["BaseMaterial"]
       89 SETTABLEKS                       R4 R2 K33 ["Material"]
       91 GETTABLEKS                       R4 R0 K12 ["Name"]
       93 SETTABLEKS                       R4 R2 K34 ["MaterialVariant"]
       95 SETTABLEKS                       R3 R2 K30 ["Parent"]
       97 GETIMPORT                        R4 K37 [task.delay]
       99 LOADK                            R5 K38 [0.1]
      100 NEWCLOSURE                       R6 P0
      101 CAPTURE                          VAL R2
      102 CAPTURE                          REF R3
      103 CALL                             R4 2 0
      104 CLOSEUPVALS                      R3
      105 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["HasTag"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       12 LOADK                            R4 K1 ["Links are only supported with improved chips"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 LOADK                            R4 K4 ["AssistantLink"]
       17 NAMECALL                         R2 R0 K5 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 LOADB                            R3 0
       21 JUMPIFEQKNIL                     R2 ; [+5]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R2 K0 ["HasTag"]
       26 CALL                             R3 2 1
       27 RETURN                           R3 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["AddTag"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+31]
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R0 K1 ["HasTag"]
       17 CALL                             R2 2 1
       18 JUMP                             ; [+21]
       19 GETUPVAL                         R4 1
       20 CALL                             R4 0 1
       21 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       23 LOADK                            R5 K2 ["Links are only supported with improved chips"]
       24 GETIMPORT                        R3 K4 [assert]
       26 CALL                             R3 2 0
       27 LOADK                            R5 K5 ["AssistantLink"]
       28 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 LOADB                            R2 0
       32 JUMPIFEQKNIL                     R3 ; [+7]
       34 MOVE                             R6 R1
       35 NAMECALL                         R4 R3 K1 ["HasTag"]
       37 CALL                             R4 2 1
       38 MOVE                             R2 R4
       39 JUMP                             ; [0]
       40 JUMPIFNOT                        R2 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R2 K9 [Instance.new]
       44 LOADK                            R3 K10 ["Folder"]
       45 CALL                             R2 1 1
       46 LOADK                            R3 K5 ["AssistantLink"]
       47 SETTABLEKS                       R3 R2 K11 ["Name"]
       49 MOVE                             R5 R1
       50 NAMECALL                         R3 R2 K0 ["AddTag"]
       52 CALL                             R3 2 0
       53 LOADB                            R3 0
       54 SETTABLEKS                       R3 R2 K12 ["Archivable"]
       56 SETTABLEKS                       R0 R2 K13 ["Parent"]
       58 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["GetTagged"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K0 ["GetTagged"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K3 [table.create]
       16 LENGTH                           R3 R1
       17 CALL                             R2 1 1
       18 MOVE                             R3 R1
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETTABLEKS                       R8 R7 K4 ["Parent"]
       24 JUMPIFNOT                        R8 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       27 MOVE                             R10 R2
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K6 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R3 2 ; [-11]
       34 LENGTH                           R3 R2
       35 JUMPIFNOTEQKN                    R3 K7 [0] ; [+4]
       37 NEWTABLE                         R3 0 0
       39 RETURN                           R3 1
       40 RETURN                           R2 1

PROTO_30:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 1
        6 JUMPIFEQKS                       R0 K3 ["dead"] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K4 ["batchTagUpdates"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 3
       18 LOADNIL                          R2
       19 SETTABLE                         R2 R0 R1
       20 RETURN                           R0 0

PROTO_34:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 GETUPVAL                         R5 1
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K0 ["GetInstanceAddedSignal"]
        9 CALL                             R5 2 1
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K1 ["Connect"]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 1
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K2 ["GetInstanceRemovedSignal"]
       18 CALL                             R6 2 1
       19 MOVE                             R8 R4
       20 NAMECALL                         R6 R6 K1 ["Connect"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETIMPORT                        R7 K5 [coroutine.status]
       26 MOVE                             R8 R3
       27 CALL                             R7 1 1
       28 JUMPIFEQKS                       R7 K6 ["dead"] ; [+2]
       30 JUMP                             ; [+8]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K7 ["batchTagUpdates"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          REF R3
       37 CALL                             R7 1 1
       38 MOVE                             R3 R7
       39 LOADNIL                          R7
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          REF R5
       42 CAPTURE                          REF R6
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          REF R7
       45 GETTABLEKS                       R8 R0 K8 ["Destroying"]
       47 MOVE                             R10 R7
       48 NAMECALL                         R8 R8 K9 ["Once"]
       50 CALL                             R8 2 0
       51 GETUPVAL                         R8 2
       52 LOADB                            R9 1
       53 SETTABLE                         R9 R8 R7
       54 CLOSEUPVALS                      R3
       55 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureSnapshotAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R9 K0 ["^"]
        5 MOVE                             R10 R5
        6 CONCAT                           R8 R9 R10
        7 NAMECALL                         R6 R0 K1 ["find"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-10]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [game]
       11 LOADK                            R4 K6 ["CollectionService"]
       12 NAMECALL                         R2 R2 K7 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K5 [game]
       17 LOADK                            R5 K8 ["HttpService"]
       18 NAMECALL                         R3 R3 K7 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K10 [require]
       23 GETTABLEKS                       R6 R1 K11 ["Parent"]
       25 GETTABLEKS                       R5 R6 K12 ["DMNetworking"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K10 [require]
       30 GETTABLEKS                       R7 R1 K13 ["Guest"]
       32 GETTABLEKS                       R6 R7 K14 ["Environment"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K10 [require]
       37 GETTABLEKS                       R8 R1 K11 ["Parent"]
       39 GETTABLEKS                       R7 R8 K15 ["ModelContextProtocol"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K10 [require]
       44 GETTABLEKS                       R9 R1 K16 ["Flags"]
       46 GETTABLEKS                       R8 R9 K17 ["FStringAssistantToolsExcludedDirectories"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K10 [require]
       51 GETTABLEKS                       R10 R1 K16 ["Flags"]
       53 GETTABLEKS                       R9 R10 K18 ["FFlagAssistantPersistConversations"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K10 [require]
       58 GETTABLEKS                       R11 R1 K16 ["Flags"]
       60 GETTABLEKS                       R10 R11 K19 ["FFlagDebugConvAIMeshGenDynamicPreview"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K10 [require]
       65 GETTABLEKS                       R12 R1 K16 ["Flags"]
       67 GETTABLEKS                       R11 R12 K20 ["FFlagMCPAssistantLongRunningToolCalls"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K10 [require]
       72 GETTABLEKS                       R13 R1 K16 ["Flags"]
       74 GETTABLEKS                       R12 R13 K21 ["FFlagMCPAssistantPreloadMaterialVariants"]
       76 CALL                             R11 1 1
       77 NEWTABLE                         R12 0 0
       79 GETTABLEKS                       R13 R7 K22 ["Get"]
       81 CALL                             R13 0 1
       82 LOADK                            R16 K23 ["[^,]+"]
       83 NAMECALL                         R14 R13 K24 ["gmatch"]
       85 CALL                             R14 2 3
       86 FORGPREP                         R14
       87 LOADK                            R21 K25 ["^%s*(.-)%s*$"]
       88 NAMECALL                         R19 R17 K26 ["match"]
       90 CALL                             R19 2 1
       91 JUMPIFNOT                        R19 ; [+9]
       92 JUMPIFEQKS                       R19 K27 [""] ; [+8]
       94 FASTCALL2                        TABLE_INSERT R12 R19 ; [+5]
       96 MOVE                             R21 R12
       97 MOVE                             R22 R19
       98 GETIMPORT                        R20 K30 [table.insert]
      100 CALL                             R20 2 0
      101 FORGLOOP                         R14 1 ; [-15]
      103 NEWTABLE                         R13 0 0
      105 DUPCLOSURE                       R14 K31 [PROTO_0]
      106 DUPCLOSURE                       R15 K32 [PROTO_1]
      107 DUPCLOSURE                       R16 K33 [PROTO_3]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 SETTABLEKS                       R16 R0 K34 ["loadCachedAssetAsync"]
      114 DUPCLOSURE                       R16 K35 [PROTO_4]
      115 CAPTURE                          VAL R15
      116 DUPCLOSURE                       R17 K36 [PROTO_5]
      117 DUPCLOSURE                       R18 K37 [PROTO_6]
      118 CAPTURE                          VAL R17
      119 DUPCLOSURE                       R19 K38 [PROTO_7]
      120 DUPCLOSURE                       R20 K39 [PROTO_9]
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R19
      124 SETTABLEKS                       R20 R0 K40 ["setPositionOnGround"]
      126 DUPCLOSURE                       R20 K41 [PROTO_10]
      127 SETTABLEKS                       R20 R0 K42 ["useEnumExcept"]
      129 DUPCLOSURE                       R20 K43 [PROTO_11]
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R20 R0 K44 ["useEnum"]
      133 DUPCLOSURE                       R20 K45 [PROTO_12]
      134 CAPTURE                          VAL R3
      135 SETTABLEKS                       R20 R0 K46 ["toString"]
      137 DUPCLOSURE                       R20 K47 [PROTO_15]
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R20 R0 K48 ["getValueRepresentation"]
      142 DUPCLOSURE                       R20 K49 [PROTO_16]
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R20 R0 K50 ["serializeToString"]
      146 DUPCLOSURE                       R20 K51 [PROTO_19]
      147 CAPTURE                          VAL R10
      148 SETTABLEKS                       R20 R0 K52 ["runWithProgressLoop"]
      150 DUPCLOSURE                       R20 K53 [PROTO_21]
      151 SETTABLEKS                       R20 R0 K54 ["findOrCreateInstance"]
      153 DUPCLOSURE                       R20 K55 [PROTO_23]
      154 SETTABLEKS                       R20 R0 K56 ["findInstance"]
      156 DUPCLOSURE                       R20 K57 [PROTO_24]
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R20 R0 K58 ["generateToolId"]
      160 DUPCLOSURE                       R20 K59 [PROTO_26]
      161 CAPTURE                          VAL R11
      162 SETTABLEKS                       R20 R0 K60 ["preloadMaterialVariant"]
      164 DUPCLOSURE                       R20 K61 [PROTO_27]
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R10
      167 DUPCLOSURE                       R21 K62 [PROTO_28]
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R10
      170 SETTABLEKS                       R21 R0 K63 ["addAssistantLink"]
      172 DUPCLOSURE                       R21 K64 [PROTO_29]
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R2
      175 SETTABLEKS                       R21 R0 K65 ["getLinkedInstances"]
      177 DUPCLOSURE                       R21 K66 [PROTO_30]
      178 SETTABLEKS                       R21 R0 K67 ["batchTagUpdates"]
      180 NEWTABLE                         R21 0 0
      182 DUPCLOSURE                       R22 K68 [PROTO_34]
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R21
      186 SETTABLEKS                       R22 R0 K69 ["observeLinkChanges"]
      188 DUPCLOSURE                       R22 K70 [PROTO_35]
      189 CAPTURE                          VAL R21
      190 SETTABLEKS                       R22 R0 K71 ["DEBUG_clearLinkObservers"]
      192 DUPCLOSURE                       R22 K72 [PROTO_37]
      193 CAPTURE                          VAL R9
      194 SETTABLEKS                       R22 R0 K73 ["captureSnapshotAsync"]
      196 DUPCLOSURE                       R22 K74 [PROTO_38]
      197 CAPTURE                          VAL R12
      198 SETTABLEKS                       R22 R0 K75 ["isPathExcluded"]
      200 RETURN                           R0 1
