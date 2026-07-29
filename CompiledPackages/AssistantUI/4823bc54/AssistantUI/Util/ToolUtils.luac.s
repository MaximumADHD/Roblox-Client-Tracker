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
       18 GETTABLEKS                       R2 R0 K8 ["WorldPivot"]
       20 GETTABLEKS                       R2 R2 K9 ["Position"]
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
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K11 ["get"]
       28 CALL                             R2 0 1
       29 GETTABLEKS                       R2 R2 K12 ["tools"]
       31 GETTABLEKS                       R2 R2 K13 ["marketplaceInsertion"]
       33 GETTABLEKS                       R2 R2 K14 ["loadAssetAsync"]
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
        2 GETTABLEKS                       R2 R0 K1 ["LookVector"]
        4 GETTABLEKS                       R2 R2 K2 ["Unit"]
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
       24 GETIMPORT                        R7 K12 [workspace]
       26 GETTABLEKS                       R7 R7 K13 ["Terrain"]
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
      151 GETTABLEKS                       R16 R2 K34 ["X"]
      153 LOADN                            R17 0
      154 GETTABLEKS                       R18 R2 K35 ["Z"]
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R15 K37 [Vector3.new]
      159 CALL                             R15 3 1
      160 GETTABLEKS                       R15 R15 K2 ["Unit"]
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
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
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
       18 GETTABLEKS                       R7 R0 K8 ["ViewportSize"]
       20 GETTABLEKS                       R7 R7 K9 ["X"]
       22 GETTABLEKS                       R8 R0 K8 ["ViewportSize"]
       24 GETTABLEKS                       R8 R8 K10 ["Y"]
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
        4 GETIMPORT                        R3 K1 [workspace]
        6 GETTABLEKS                       R3 R3 K2 ["Terrain"]
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
       62 GETTABLEKS                       R7 R6 K22 ["Position"]
       64 GETTABLEKS                       R7 R7 K23 ["Y"]
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
       32 GETTABLEKS                       R9 R4 K4 ["Position"]
       34 GETTABLEKS                       R9 R9 K5 ["Y"]
       36 MINUS                            R8 R9
       37 ADD                              R7 R8 R5
       38 NAMECALL                         R9 R0 K7 ["GetExtentsSize"]
       40 CALL                             R9 1 1
       41 GETTABLEKS                       R9 R9 K5 ["Y"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEnumExcept"]
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
        7 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+13]
        9 LENGTH                           R6 R0
       10 JUMPIFNOTLE                      R6 R3 ; [+2]
       12 RETURN                           R0 1
       13 GETUPVAL                         R9 0
       14 MOVE                             R10 R0
       15 MOVE                             R11 R3
       16 CALL                             R9 2 1
       17 MOVE                             R7 R9
       18 LOADK                            R8 K5 ["... (truncated)"]
       19 CONCAT                           R6 R7 R8
       20 RETURN                           R6 1
       21 JUMPIFEQKS                       R5 K6 ["number"] ; [+3]
       23 JUMPIFNOTEQKS                    R5 K7 ["boolean"] ; [+2]
       25 RETURN                           R0 1
       26 JUMPIFNOTEQKS                    R5 K8 ["nil"] ; [+3]
       28 LOADNIL                          R6
       29 RETURN                           R6 1
       30 JUMPIFNOTEQKS                    R5 K9 ["Instance"] ; [+11]
       32 GETIMPORT                        R6 K11 [pcall]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R0
       36 CALL                             R6 1 2
       37 JUMPIFNOT                        R6 ; [+2]
       38 MOVE                             R8 R7
       39 RETURN                           R8 1
       40 LOADK                            R8 K12 ["[Destroyed Instance]"]
       41 RETURN                           R8 1
       42 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+35]
       44 NEWTABLE                         R6 0 0
       46 MOVE                             R7 R0
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 FASTCALL1                        TOSTRING R10 ; [+3]
       51 MOVE                             R13 R10
       52 GETIMPORT                        R12 K15 [tostring]
       54 CALL                             R12 1 1
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K16 ["getValueRepresentation"]
       58 MOVE                             R14 R11
       59 MOVE                             R15 R3
       60 MOVE                             R16 R4
       61 CALL                             R13 3 1
       62 SETTABLE                         R13 R6 R12
       63 FORGLOOP                         R7 2 ; [-14]
       65 GETIMPORT                        R7 K11 [pcall]
       67 NEWCLOSURE                       R8 P1
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R6
       70 CALL                             R7 1 2
       71 JUMPIFNOT                        R7 ; [+4]
       72 LENGTH                           R9 R8
       73 JUMPIFNOTLE                      R9 R4 ; [+2]
       75 RETURN                           R6 1
       76 LOADK                            R9 K17 ["[Complex Table]"]
       77 RETURN                           R9 1
       78 JUMPIFNOTEQKS                    R5 K18 ["CFrame"] ; [+37]
       80 GETTABLEKS                       R6 R0 K19 ["Position"]
       82 NAMECALL                         R7 R0 K20 ["GetComponents"]
       84 CALL                             R7 1 12
       85 DUPTABLE                         R19 K22 [{"Position", "Rotation"}]
       86 LOADK                            R21 K23 ["%*, %*, %*"]
       87 GETTABLEKS                       R23 R6 K24 ["X"]
       89 GETTABLEKS                       R24 R6 K25 ["Y"]
       91 GETTABLEKS                       R25 R6 K26 ["Z"]
       93 NAMECALL                         R21 R21 K27 ["format"]
       95 CALL                             R21 4 1
       96 MOVE                             R20 R21
       97 SETTABLEKS                       R20 R19 K19 ["Position"]
       99 LOADK                            R21 K28 ["%*, %*, %*, %*, %*, %*, %*, %*, %*"]
      100 MOVE                             R23 R10
      101 MOVE                             R24 R11
      102 MOVE                             R25 R12
      103 MOVE                             R26 R13
      104 MOVE                             R27 R14
      105 MOVE                             R28 R15
      106 MOVE                             R29 R16
      107 MOVE                             R30 R17
      108 MOVE                             R31 R18
      109 NAMECALL                         R21 R21 K27 ["format"]
      111 CALL                             R21 10 1
      112 MOVE                             R20 R21
      113 SETTABLEKS                       R20 R19 K21 ["Rotation"]
      115 RETURN                           R19 1
      116 JUMPIFNOTEQKS                    R5 K29 ["Vector3"] ; [+13]
      118 LOADK                            R7 K23 ["%*, %*, %*"]
      119 GETTABLEKS                       R9 R0 K24 ["X"]
      121 GETTABLEKS                       R10 R0 K25 ["Y"]
      123 GETTABLEKS                       R11 R0 K26 ["Z"]
      125 NAMECALL                         R7 R7 K27 ["format"]
      127 CALL                             R7 4 1
      128 MOVE                             R6 R7
      129 RETURN                           R6 1
      130 JUMPIFNOTEQKS                    R5 K30 ["Vector2"] ; [+11]
      132 LOADK                            R7 K31 ["%*, %*"]
      133 GETTABLEKS                       R9 R0 K24 ["X"]
      135 GETTABLEKS                       R10 R0 K25 ["Y"]
      137 NAMECALL                         R7 R7 K27 ["format"]
      139 CALL                             R7 3 1
      140 MOVE                             R6 R7
      141 RETURN                           R6 1
      142 JUMPIFNOTEQKS                    R5 K32 ["Color3"] ; [+13]
      144 LOADK                            R7 K23 ["%*, %*, %*"]
      145 GETTABLEKS                       R9 R0 K33 ["R"]
      147 GETTABLEKS                       R10 R0 K34 ["G"]
      149 GETTABLEKS                       R11 R0 K35 ["B"]
      151 NAMECALL                         R7 R7 K27 ["format"]
      153 CALL                             R7 4 1
      154 MOVE                             R6 R7
      155 RETURN                           R6 1
      156 FASTCALL1                        TOSTRING R0 ; [+3]
      157 MOVE                             R7 R0
      158 GETIMPORT                        R6 K15 [tostring]
      160 CALL                             R6 1 1
      161 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getValueRepresentation"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["toString"]
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
        1 GETIMPORT                        R2 K2 [task.spawn]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K4 [pcall]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R1
       10 GETVARARGS                       R5 -1
       11 CALL                             R3 -1 2
       12 GETIMPORT                        R5 K6 [task.cancel]
       14 MOVE                             R6 R2
       15 CALL                             R5 1 0
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R5 K8 [error]
       19 MOVE                             R6 R4
       20 LOADN                            R7 0
       21 CALL                             R5 2 0
       22 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K11 [table.unpack]
       26 CALL                             R5 1 -1
       27 RETURN                           R5 -1

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
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R2 K5 [Instance.new]
        8 LOADK                            R3 K6 ["Part"]
        9 CALL                             R2 1 1
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K7 ["Archivable"]
       13 LOADK                            R4 K8 ["Assistant_PreloadMaterialVariant_"]
       14 GETTABLEKS                       R5 R0 K9 ["Name"]
       16 CONCAT                           R3 R4 R5
       17 SETTABLEKS                       R3 R2 K9 ["Name"]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K10 ["Anchored"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K11 ["CanCollide"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K12 ["CanTouch"]
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K13 ["CanQuery"]
       31 LOADB                            R3 0
       32 SETTABLEKS                       R3 R2 K14 ["AudioCanCollide"]
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K15 ["EnableFluidForces"]
       37 LOADB                            R3 0
       38 SETTABLEKS                       R3 R2 K16 ["CastShadow"]
       40 LOADK                            R3 K17 [{0.001, 0.001, 0.001}]
       41 SETTABLEKS                       R3 R2 K18 ["Size"]
       43 LOADK                            R3 K19 [0.95]
       44 SETTABLEKS                       R3 R2 K20 ["Transparency"]
       46 GETTABLEKS                       R4 R1 K21 ["CFrame"]
       48 GETTABLEKS                       R4 R4 K22 ["Position"]
       50 LOADK                            R5 K23 [{0, -1000, 0}]
       51 ADD                              R3 R4 R5
       52 SETTABLEKS                       R3 R2 K22 ["Position"]
       54 LOADK                            R5 K24 ["Assistant_PreloadMaterialFolder"]
       55 NAMECALL                         R3 R1 K25 ["FindFirstChild"]
       57 CALL                             R3 2 1
       58 JUMPIF                           R3 ; [+13]
       59 GETIMPORT                        R4 K5 [Instance.new]
       61 LOADK                            R5 K26 ["Folder"]
       62 CALL                             R4 1 1
       63 LOADK                            R5 K24 ["Assistant_PreloadMaterialFolder"]
       64 SETTABLEKS                       R5 R4 K9 ["Name"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R4 K7 ["Archivable"]
       69 SETTABLEKS                       R1 R4 K27 ["Parent"]
       71 MOVE                             R3 R4
       72 FASTCALL2K                       ASSERT R3 K28 ; [+5]
       74 MOVE                             R5 R3
       75 LOADK                            R6 K28 ["Failed to get or create preload material folder"]
       76 GETIMPORT                        R4 K30 [assert]
       78 CALL                             R4 2 0
       79 GETTABLEKS                       R4 R0 K31 ["BaseMaterial"]
       81 SETTABLEKS                       R4 R2 K32 ["Material"]
       83 GETTABLEKS                       R4 R0 K9 ["Name"]
       85 SETTABLEKS                       R4 R2 K33 ["MaterialVariant"]
       87 SETTABLEKS                       R3 R2 K27 ["Parent"]
       89 GETIMPORT                        R4 K36 [task.delay]
       91 LOADK                            R5 K37 [0.1]
       92 NEWCLOSURE                       R6 P0
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R3
       95 CALL                             R4 2 0
       96 CLOSEUPVALS                      R3
       97 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureSnapshotAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringScreenCaptureSize"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+3]
       11 JUMPIFNOTEQKS                    R0 K4 [""] ; [+2]
       13 RETURN                           R0 0
       14 LOADK                            R3 K5 [","]
       15 NAMECALL                         R1 R0 K6 ["split"]
       17 CALL                             R1 2 1
       18 LENGTH                           R2 R1
       19 JUMPIFEQKN                       R2 K7 [2] ; [+2]
       21 RETURN                           R0 0
       22 GETTABLEN                        R3 R1 1
       23 FASTCALL1                        TONUMBER R3 ; [+2]
       24 GETIMPORT                        R2 K9 [tonumber]
       26 CALL                             R2 1 1
       27 GETTABLEN                        R4 R1 2
       28 FASTCALL1                        TONUMBER R4 ; [+2]
       29 GETIMPORT                        R3 K9 [tonumber]
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 JUMPIF                           R3 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R4 K12 [Vector2.new]
       37 MOVE                             R5 R2
       38 MOVE                             R6 R3
       39 CALL                             R4 2 1
       40 SETUPVAL                         R4 1
       41 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 1920
        3 LOADN                            R2 1080
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          REF R0
       10 CALL                             R1 1 0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [game]
       11 LOADK                            R4 K6 ["HttpService"]
       12 NAMECALL                         R2 R2 K7 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K9 [require]
       17 GETTABLEKS                       R4 R1 K10 ["Parent"]
       19 GETTABLEKS                       R4 R4 K11 ["AssistantHarness"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R1 K12 ["Guest"]
       26 GETTABLEKS                       R5 R5 K13 ["Environment"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R1 K10 ["Parent"]
       33 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R1 K15 ["Flags"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R3 K16 ["Engine"]
       43 GETTABLEKS                       R7 R7 K17 ["truncateUtf8Safe"]
       45 NEWTABLE                         R8 0 0
       47 GETTABLEKS                       R9 R6 K18 ["FStringAssistantToolsExcludedDirectories"]
       49 LOADK                            R12 K19 ["[^,]+"]
       50 NAMECALL                         R10 R9 K20 ["gmatch"]
       52 CALL                             R10 2 3
       53 FORGPREP                         R10
       54 LOADK                            R17 K21 ["^%s*(.-)%s*$"]
       55 NAMECALL                         R15 R13 K22 ["match"]
       57 CALL                             R15 2 1
       58 JUMPIFNOT                        R15 ; [+9]
       59 JUMPIFEQKS                       R15 K23 [""] ; [+8]
       61 FASTCALL2                        TABLE_INSERT R8 R15 ; [+5]
       63 MOVE                             R17 R8
       64 MOVE                             R18 R15
       65 GETIMPORT                        R16 K26 [table.insert]
       67 CALL                             R16 2 0
       68 FORGLOOP                         R10 1 ; [-15]
       70 NEWTABLE                         R9 0 0
       72 DUPCLOSURE                       R10 K27 [PROTO_0]
       73 DUPCLOSURE                       R11 K28 [PROTO_1]
       74 DUPCLOSURE                       R12 K29 [PROTO_3]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 SETTABLEKS                       R12 R0 K30 ["loadCachedAssetAsync"]
       81 DUPCLOSURE                       R12 K31 [PROTO_4]
       82 CAPTURE                          VAL R11
       83 DUPCLOSURE                       R13 K32 [PROTO_5]
       84 DUPCLOSURE                       R14 K33 [PROTO_6]
       85 CAPTURE                          VAL R13
       86 DUPCLOSURE                       R15 K34 [PROTO_7]
       87 DUPCLOSURE                       R16 K35 [PROTO_9]
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R15
       91 SETTABLEKS                       R16 R0 K36 ["setPositionOnGround"]
       93 DUPCLOSURE                       R16 K37 [PROTO_10]
       94 SETTABLEKS                       R16 R0 K38 ["useEnumExcept"]
       96 DUPCLOSURE                       R16 K39 [PROTO_11]
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R16 R0 K40 ["useEnum"]
      100 DUPCLOSURE                       R16 K41 [PROTO_12]
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R16 R0 K42 ["toString"]
      104 DUPCLOSURE                       R16 K43 [PROTO_15]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R16 R0 K44 ["getValueRepresentation"]
      110 DUPCLOSURE                       R16 K45 [PROTO_16]
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R16 R0 K46 ["serializeToString"]
      114 DUPCLOSURE                       R16 K47 [PROTO_19]
      115 SETTABLEKS                       R16 R0 K48 ["runWithProgressLoop"]
      117 DUPCLOSURE                       R16 K49 [PROTO_21]
      118 SETTABLEKS                       R16 R0 K50 ["findOrCreateInstance"]
      120 DUPCLOSURE                       R16 K51 [PROTO_23]
      121 SETTABLEKS                       R16 R0 K52 ["findInstance"]
      123 DUPCLOSURE                       R16 K53 [PROTO_24]
      124 CAPTURE                          VAL R2
      125 SETTABLEKS                       R16 R0 K54 ["generateToolId"]
      127 DUPCLOSURE                       R16 K55 [PROTO_26]
      128 SETTABLEKS                       R16 R0 K56 ["preloadMaterialVariant"]
      130 DUPCLOSURE                       R16 K57 [PROTO_28]
      131 SETTABLEKS                       R16 R0 K58 ["captureSnapshotAsync"]
      133 DUPCLOSURE                       R16 K59 [PROTO_29]
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R16 R0 K60 ["isPathExcluded"]
      137 DUPCLOSURE                       R16 K61 [PROTO_31]
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R16 R0 K62 ["getScreenCaptureSize"]
      141 RETURN                           R0 1
