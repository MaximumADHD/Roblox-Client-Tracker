PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["TransformedWorldCFrame"]
        2 GETTABLEKS                       R1 R2 K1 ["Position"]
        4 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Parent"]
        3 JUMPIFNOT                        R2 ; [+16]
        4 LOADK                            R5 K1 ["Bone"]
        5 NAMECALL                         R3 R2 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETTABLEKS                       R5 R2 K3 ["TransformedWorldCFrame"]
       11 GETTABLEKS                       R4 R5 K4 ["Position"]
       13 GETTABLEKS                       R6 R0 K3 ["TransformedWorldCFrame"]
       15 GETTABLEKS                       R5 R6 K4 ["Position"]
       17 SUB                              R3 R4 R5
       18 GETTABLEKS                       R1 R3 K5 ["Magnitude"]
       20 RETURN                           R1 1

PROTO_2:
        0 SUB                              R2 R1 R0
        1 GETTABLEKS                       R3 R2 K0 ["Magnitude"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["fuzzyEq"]
        6 MOVE                             R5 R3
        7 LOADN                            R6 0
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADK                            R2 K2 [{0, 0, 1}]
       11 JUMP                             ; [+1]
       12 DIV                              R2 R2 R3
       13 LOADK                            R4 K3 [{0, 1, 0}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K1 ["fuzzyEq"]
       17 MOVE                             R9 R4
       18 NAMECALL                         R7 R2 K4 ["Dot"]
       20 CALL                             R7 2 1
       21 FASTCALL1                        MATH_ABS R7 ; [+2]
       22 GETIMPORT                        R6 K7 [math.abs]
       24 CALL                             R6 1 1
       25 LOADN                            R7 1
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+1]
       28 LOADK                            R4 K8 [{1, 0, 0}]
       29 MOVE                             R7 R4
       30 NAMECALL                         R5 R2 K9 ["Cross"]
       32 CALL                             R5 2 1
       33 MOVE                             R8 R2
       34 NAMECALL                         R6 R5 K9 ["Cross"]
       36 CALL                             R6 2 1
       37 GETIMPORT                        R7 K12 [CFrame.fromMatrix]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R5
       41 MOVE                             R10 R6
       42 CALL                             R7 3 -1
       43 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 LOADK                            R5 K1 ["Part"]
        7 NAMECALL                         R3 R2 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+19]
       11 GETIMPORT                        R3 K5 [Instance.new]
       13 LOADK                            R4 K1 ["Part"]
       14 CALL                             R3 1 1
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K6 ["Transparency"]
       18 SETTABLEKS                       R0 R3 K7 ["Name"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K8 ["Archivable"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K9 ["Parent"]
       26 LOADK                            R4 K10 [{0, 0, 0}]
       27 SETTABLEKS                       R4 R3 K11 ["Size"]
       29 MOVE                             R2 R3
       30 LOADK                            R5 K12 ["BoneRef"]
       31 NAMECALL                         R3 R2 K0 ["FindFirstChild"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+5]
       35 LOADK                            R6 K13 ["ObjectValue"]
       36 NAMECALL                         R4 R3 K2 ["IsA"]
       38 CALL                             R4 2 1
       39 JUMPIF                           R4 ; [+10]
       40 GETIMPORT                        R4 K5 [Instance.new]
       42 LOADK                            R5 K13 ["ObjectValue"]
       43 CALL                             R4 1 1
       44 LOADK                            R5 K12 ["BoneRef"]
       45 SETTABLEKS                       R5 R4 K7 ["Name"]
       47 SETTABLEKS                       R2 R4 K9 ["Parent"]
       49 MOVE                             R3 R4
       50 LOADK                            R7 K1 ["Part"]
       51 NAMECALL                         R5 R2 K2 ["IsA"]
       53 CALL                             R5 2 -1
       54 FASTCALL                         ASSERT ; [+2]
       55 GETIMPORT                        R4 K15 [assert]
       57 CALL                             R4 -1 0
       58 LOADK                            R7 K13 ["ObjectValue"]
       59 NAMECALL                         R5 R3 K2 ["IsA"]
       61 CALL                             R5 2 -1
       62 FASTCALL                         ASSERT ; [+2]
       63 GETIMPORT                        R4 K15 [assert]
       65 CALL                             R4 -1 0
       66 GETUPVAL                         R4 1
       67 SETTABLEKS                       R4 R3 K16 ["Value"]
       69 LOADK                            R6 K17 ["Cone"]
       70 NAMECALL                         R4 R2 K0 ["FindFirstChild"]
       72 CALL                             R4 2 1
       73 JUMPIFNOT                        R4 ; [+5]
       74 LOADK                            R7 K18 ["ConeHandleAdornment"]
       75 NAMECALL                         R5 R4 K2 ["IsA"]
       77 CALL                             R5 2 1
       78 JUMPIF                           R5 ; [+14]
       79 GETUPVAL                         R5 2
       80 LOADK                            R7 K17 ["Cone"]
       81 MOVE                             R8 R2
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R9 R10 K19 ["BONE_LINK_TRANSPARENCY"]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R10 R11 K20 ["BONE_CONE_COLOR"]
       88 LOADN                            R11 0
       89 NAMECALL                         R5 R5 K17 ["Cone"]
       91 CALL                             R5 6 1
       92 MOVE                             R4 R5
       93 LOADK                            R7 K21 ["Line"]
       94 NAMECALL                         R5 R2 K0 ["FindFirstChild"]
       96 CALL                             R5 2 1
       97 JUMPIFNOT                        R5 ; [+5]
       98 LOADK                            R8 K22 ["LineHandleAdornment"]
       99 NAMECALL                         R6 R5 K2 ["IsA"]
      101 CALL                             R6 2 1
      102 JUMPIF                           R6 ; [+13]
      103 GETUPVAL                         R6 2
      104 LOADK                            R8 K21 ["Line"]
      105 MOVE                             R9 R2
      106 LOADN                            R10 1
      107 GETUPVAL                         R12 3
      108 GETTABLEKS                       R11 R12 K23 ["BONE_LINK_COLOR"]
      110 LOADN                            R12 0
      111 LOADN                            R13 0
      112 NAMECALL                         R6 R6 K21 ["Line"]
      114 CALL                             R6 7 1
      115 MOVE                             R5 R6
      116 LOADK                            R9 K18 ["ConeHandleAdornment"]
      117 NAMECALL                         R7 R4 K2 ["IsA"]
      119 CALL                             R7 2 -1
      120 FASTCALL                         ASSERT ; [+2]
      121 GETIMPORT                        R6 K15 [assert]
      123 CALL                             R6 -1 0
      124 LOADK                            R9 K22 ["LineHandleAdornment"]
      125 NAMECALL                         R7 R5 K2 ["IsA"]
      127 CALL                             R7 2 -1
      128 FASTCALL                         ASSERT ; [+2]
      129 GETIMPORT                        R6 K15 [assert]
      131 CALL                             R6 -1 0
      132 GETUPVAL                         R7 4
      133 JUMPIFNOT                        R7 ; [+4]
      134 GETUPVAL                         R7 3
      135 GETTABLEKS                       R6 R7 K24 ["BONE_TRANSPARENCY_DEFAULT"]
      137 JUMP                             ; [+1]
      138 LOADN                            R6 1
      139 SETTABLEKS                       R6 R4 K6 ["Transparency"]
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R8 R9 K25 ["LENGTH_TO_RADIUS_RATIO"]
      144 DIV                              R7 R1 R8
      145 SETTABLEKS                       R7 R4 K26 ["Radius"]
      147 SETTABLEKS                       R1 R4 K27 ["Height"]
      149 SETTABLEKS                       R6 R5 K6 ["Transparency"]
      151 SETTABLEKS                       R1 R5 K28 ["Length"]
      153 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R5 R0 K0 ["TransformedWorldCFrame"]
        3 GETTABLEKS                       R4 R5 K1 ["Position"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 GETIMPORT                        R6 K3 [ipairs]
       13 NAMECALL                         R7 R0 K4 ["GetChildren"]
       15 CALL                             R7 1 -1
       16 CALL                             R6 -1 3
       17 FORGPREP_INEXT                   R6
       18 LOADK                            R13 K5 ["Bone"]
       19 NAMECALL                         R11 R10 K6 ["IsA"]
       21 CALL                             R11 2 1
       22 JUMPIFNOT                        R11 ; [+24]
       23 GETTABLEKS                       R12 R10 K0 ["TransformedWorldCFrame"]
       25 GETTABLEKS                       R11 R12 K1 ["Position"]
       27 SUB                              R13 R11 R4
       28 GETTABLEKS                       R12 R13 K7 ["Magnitude"]
       30 GETTABLEKS                       R14 R0 K8 ["Name"]
       32 LOADK                            R15 K9 ["To"]
       33 GETTABLEKS                       R16 R10 K8 ["Name"]
       35 CONCAT                           R13 R14 R16
       36 MOVE                             R14 R5
       37 MOVE                             R15 R13
       38 MOVE                             R16 R12
       39 CALL                             R14 2 1
       40 GETUPVAL                         R15 2
       41 MOVE                             R16 R4
       42 MOVE                             R17 R11
       43 CALL                             R15 2 1
       44 SETTABLEKS                       R15 R14 K10 ["CFrame"]
       46 LOADB                            R3 1
       47 FORGLOOP                         R6 2 [inext] ; [-30]
       49 JUMPIF                           R3 ; [+41]
       50 GETTABLEKS                       R6 R0 K11 ["Parent"]
       52 LOADNIL                          R7
       53 GETTABLEKS                       R9 R0 K8 ["Name"]
       55 LOADK                            R10 K12 ["End"]
       56 CONCAT                           R8 R9 R10
       57 JUMPIFNOT                        R6 ; [+17]
       58 LOADK                            R11 K5 ["Bone"]
       59 NAMECALL                         R9 R6 K6 ["IsA"]
       61 CALL                             R9 2 1
       62 JUMPIFNOT                        R9 ; [+12]
       63 GETTABLEKS                       R10 R6 K0 ["TransformedWorldCFrame"]
       65 GETTABLEKS                       R9 R10 K1 ["Position"]
       67 SUB                              R11 R9 R4
       68 GETTABLEKS                       R10 R11 K7 ["Magnitude"]
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R11 R12 K13 ["LEAF_BONE_LENGTH_RATIO"]
       73 MUL                              R7 R10 R11
       74 JUMP                             ; [+1]
       75 LOADN                            R7 1
       76 MOVE                             R9 R5
       77 MOVE                             R10 R8
       78 MOVE                             R11 R7
       79 CALL                             R9 2 1
       80 GETTABLEKS                       R11 R0 K0 ["TransformedWorldCFrame"]
       82 GETIMPORT                        R12 K15 [CFrame.fromEulerAngles]
       84 LOADK                            R13 K16 [1.5707963267949]
       85 LOADN                            R14 0
       86 LOADN                            R15 0
       87 CALL                             R12 3 1
       88 MUL                              R10 R11 R12
       89 SETTABLEKS                       R10 R9 K10 ["CFrame"]
       91 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["TransformedWorldCFrame"]
        2 GETTABLEKS                       R3 R4 K1 ["Position"]
        4 GETTABLEKS                       R5 R0 K2 ["Name"]
        6 LOADK                            R6 K3 ["Node"]
        7 CONCAT                           R4 R5 R6
        8 MOVE                             R7 R4
        9 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+5]
       13 LOADK                            R8 K5 ["Part"]
       14 NAMECALL                         R6 R5 K6 ["IsA"]
       16 CALL                             R6 2 1
       17 JUMPIF                           R6 ; [+28]
       18 GETIMPORT                        R6 K9 [Instance.new]
       20 LOADK                            R7 K5 ["Part"]
       21 CALL                             R6 1 1
       22 LOADN                            R7 1
       23 SETTABLEKS                       R7 R6 K10 ["Transparency"]
       25 SETTABLEKS                       R4 R6 K2 ["Name"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K11 ["Archivable"]
       30 SETTABLEKS                       R1 R6 K12 ["Parent"]
       32 GETUPVAL                         R7 0
       33 LOADK                            R9 K13 ["Sphere"]
       34 MOVE                             R10 R6
       35 GETUPVAL                         R12 1
       36 GETTABLEKS                       R11 R12 K14 ["BONE_NODE_TRANSPARENCY"]
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R12 R13 K15 ["BONE_NODE_COLOR"]
       41 LOADN                            R13 0
       42 NAMECALL                         R7 R7 K13 ["Sphere"]
       44 CALL                             R7 6 0
       45 MOVE                             R5 R6
       46 LOADK                            R8 K16 ["BoneRef"]
       47 NAMECALL                         R6 R5 K4 ["FindFirstChild"]
       49 CALL                             R6 2 1
       50 JUMPIFNOT                        R6 ; [+5]
       51 LOADK                            R9 K17 ["ObjectValue"]
       52 NAMECALL                         R7 R6 K6 ["IsA"]
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+10]
       56 GETIMPORT                        R7 K9 [Instance.new]
       58 LOADK                            R8 K17 ["ObjectValue"]
       59 CALL                             R7 1 1
       60 LOADK                            R8 K16 ["BoneRef"]
       61 SETTABLEKS                       R8 R7 K2 ["Name"]
       63 SETTABLEKS                       R5 R7 K12 ["Parent"]
       65 MOVE                             R6 R7
       66 LOADK                            R10 K5 ["Part"]
       67 NAMECALL                         R8 R5 K6 ["IsA"]
       69 CALL                             R8 2 -1
       70 FASTCALL                         ASSERT ; [+2]
       71 GETIMPORT                        R7 K19 [assert]
       73 CALL                             R7 -1 0
       74 LOADK                            R10 K17 ["ObjectValue"]
       75 NAMECALL                         R8 R6 K6 ["IsA"]
       77 CALL                             R8 2 -1
       78 FASTCALL                         ASSERT ; [+2]
       79 GETIMPORT                        R7 K19 [assert]
       81 CALL                             R7 -1 0
       82 SETTABLEKS                       R0 R6 K20 ["Value"]
       84 LOADK                            R9 K13 ["Sphere"]
       85 NAMECALL                         R7 R5 K4 ["FindFirstChild"]
       87 CALL                             R7 2 1
       88 JUMPIFNOT                        R7 ; [+40]
       89 LOADK                            R10 K21 ["SphereHandleAdornment"]
       90 NAMECALL                         R8 R7 K6 ["IsA"]
       92 CALL                             R8 2 1
       93 JUMPIFNOT                        R8 ; [+35]
       94 LOADN                            R10 0
       95 GETTABLEKS                       R11 R0 K12 ["Parent"]
       97 JUMPIFNOT                        R11 ; [+16]
       98 LOADK                            R14 K22 ["Bone"]
       99 NAMECALL                         R12 R11 K6 ["IsA"]
      101 CALL                             R12 2 1
      102 JUMPIFNOT                        R12 ; [+11]
      103 GETTABLEKS                       R14 R11 K0 ["TransformedWorldCFrame"]
      105 GETTABLEKS                       R13 R14 K1 ["Position"]
      107 GETTABLEKS                       R15 R0 K0 ["TransformedWorldCFrame"]
      109 GETTABLEKS                       R14 R15 K1 ["Position"]
      111 SUB                              R12 R13 R14
      112 GETTABLEKS                       R10 R12 K23 ["Magnitude"]
      114 MOVE                             R9 R10
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R10 R11 K24 ["LENGTH_TO_RADIUS_RATIO"]
      118 DIV                              R8 R9 R10
      119 SETTABLEKS                       R8 R7 K25 ["Radius"]
      121 JUMPIFNOT                        R2 ; [+4]
      122 GETUPVAL                         R9 1
      123 GETTABLEKS                       R8 R9 K26 ["BONE_TRANSPARENCY_DEFAULT"]
      125 JUMP                             ; [+1]
      126 LOADN                            R8 1
      127 SETTABLEKS                       R8 R7 K10 ["Transparency"]
      129 GETIMPORT                        R8 K28 [CFrame.new]
      131 MOVE                             R9 R3
      132 CALL                             R8 1 1
      133 SETTABLEKS                       R8 R5 K27 ["CFrame"]
      135 GETUPVAL                         R8 2
      136 MOVE                             R9 R0
      137 MOVE                             R10 R1
      138 MOVE                             R11 R2
      139 CALL                             R8 3 0
      140 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["FOLDERS"]
        7 GETTABLEKS                       R2 R3 K4 ["Microbones"]
        9 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["FOLDERS"]
        7 GETTABLEKS                       R2 R3 K4 ["Microbones"]
        9 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+21]
       13 GETIMPORT                        R1 K8 [Instance.new]
       15 LOADK                            R2 K9 ["Folder"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["FOLDERS"]
       20 GETTABLEKS                       R2 R3 K4 ["Microbones"]
       22 SETTABLEKS                       R2 R1 K10 ["Name"]
       24 LOADB                            R2 0
       25 SETTABLEKS                       R2 R1 K11 ["Archivable"]
       27 GETIMPORT                        R3 K1 [game]
       29 GETTABLEKS                       R2 R3 K2 ["Workspace"]
       31 SETTABLEKS                       R2 R1 K12 ["Parent"]
       33 MOVE                             R0 R1
       34 FASTCALL1                        ASSERT R0 ; [+3]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K14 [assert]
       38 CALL                             R1 1 0
       39 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R4 K0 ["Cone"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["Sphere"]
        5 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R2 ; [+79]
        9 LOADK                            R6 K3 ["ConeHandleAdornment"]
       10 NAMECALL                         R4 R2 K4 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+74]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K5 ["intersectRayRay"]
       17 GETTABLEKS                       R6 R0 K6 ["CFrame"]
       19 GETTABLEKS                       R5 R6 K7 ["Position"]
       21 GETTABLEKS                       R7 R0 K6 ["CFrame"]
       23 GETTABLEKS                       R6 R7 K8 ["LookVector"]
       25 GETTABLEKS                       R7 R1 K9 ["Origin"]
       27 GETTABLEKS                       R9 R1 K10 ["Direction"]
       29 GETTABLEKS                       R8 R9 K11 ["Unit"]
       31 CALL                             R4 4 2
       32 JUMPIF                           R4 ; [+2]
       33 LOADNIL                          R6
       34 RETURN                           R6 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K5 ["intersectRayRay"]
       38 GETTABLEKS                       R7 R1 K9 ["Origin"]
       40 GETTABLEKS                       R9 R1 K10 ["Direction"]
       42 GETTABLEKS                       R8 R9 K11 ["Unit"]
       44 GETTABLEKS                       R10 R0 K6 ["CFrame"]
       46 GETTABLEKS                       R9 R10 K7 ["Position"]
       48 GETTABLEKS                       R11 R0 K6 ["CFrame"]
       50 GETTABLEKS                       R10 R11 K8 ["LookVector"]
       52 CALL                             R6 4 2
       53 GETTABLEKS                       R12 R0 K6 ["CFrame"]
       55 GETTABLEKS                       R11 R12 K7 ["Position"]
       57 GETTABLEKS                       R14 R0 K6 ["CFrame"]
       59 GETTABLEKS                       R13 R14 K8 ["LookVector"]
       61 MUL                              R12 R13 R5
       62 ADD                              R10 R11 R12
       63 GETTABLEKS                       R12 R1 K9 ["Origin"]
       65 GETTABLEKS                       R15 R1 K10 ["Direction"]
       67 GETTABLEKS                       R14 R15 K11 ["Unit"]
       69 MUL                              R13 R14 R7
       70 ADD                              R11 R12 R13
       71 SUB                              R9 R10 R11
       72 GETTABLEKS                       R8 R9 K12 ["Magnitude"]
       74 GETTABLEKS                       R9 R2 K13 ["Radius"]
       76 JUMPIFNOTLT                      R8 R9 ; [+9]
       78 LOADN                            R9 0
       79 JUMPIFNOTLT                      R9 R5 ; [+6]
       81 GETTABLEKS                       R9 R2 K14 ["Height"]
       83 JUMPIFNOTLT                      R5 R9 ; [+2]
       85 RETURN                           R7 1
       86 LOADNIL                          R9
       87 RETURN                           R9 1
       88 JUMPIFNOT                        R3 ; [+25]
       89 LOADK                            R6 K15 ["SphereHandleAdornment"]
       90 NAMECALL                         R4 R3 K4 ["IsA"]
       92 CALL                             R4 2 1
       93 JUMPIFNOT                        R4 ; [+20]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R4 R5 K16 ["intersectRaySphere"]
       97 GETTABLEKS                       R5 R1 K9 ["Origin"]
       99 GETTABLEKS                       R7 R1 K10 ["Direction"]
      101 GETTABLEKS                       R6 R7 K11 ["Unit"]
      103 GETTABLEKS                       R8 R0 K6 ["CFrame"]
      105 GETTABLEKS                       R7 R8 K7 ["Position"]
      107 GETTABLEKS                       R8 R3 K13 ["Radius"]
      109 CALL                             R4 4 2
      110 JUMPIFNOT                        R4 ; [+1]
      111 RETURN                           R5 1
      112 LOADNIL                          R6
      113 RETURN                           R6 1
      114 LOADNIL                          R4
      115 RETURN                           R4 1

PROTO_9:
        0 LOADNIL                          R1
        1 LOADK                            R2 K0 [∞]
        2 GETIMPORT                        R4 K2 [game]
        4 GETTABLEKS                       R3 R4 K3 ["Workspace"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K4 ["FOLDERS"]
        9 GETTABLEKS                       R5 R6 K5 ["Microbones"]
       11 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+78]
       15 NAMECALL                         R4 R3 K7 ["GetChildren"]
       17 CALL                             R4 1 1
       18 GETIMPORT                        R5 K9 [pairs]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 3
       22 FORGPREP_NEXT                    R5
       23 LOADK                            R12 K10 ["Cone"]
       24 NAMECALL                         R10 R9 K6 ["FindFirstChild"]
       26 CALL                             R10 2 1
       27 LOADK                            R13 K11 ["Sphere"]
       28 NAMECALL                         R11 R9 K6 ["FindFirstChild"]
       30 CALL                             R11 2 1
       31 JUMPIFNOT                        R10 ; [+22]
       32 LOADK                            R14 K12 ["ConeHandleAdornment"]
       33 NAMECALL                         R12 R10 K13 ["IsA"]
       35 CALL                             R12 2 1
       36 JUMPIFNOT                        R12 ; [+17]
       37 GETTABLEKS                       R12 R10 K14 ["Color3"]
       39 GETUPVAL                         R14 0
       40 GETTABLEKS                       R13 R14 K15 ["BONE_COLOR_SELECTED"]
       42 JUMPIFEQ                         R12 R13 ; [+11]
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R12 R13 K16 ["BONE_COLOR_DEFAULT"]
       47 SETTABLEKS                       R12 R10 K14 ["Color3"]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R12 R13 K17 ["BONE_TRANSPARENCY_DEFAULT"]
       52 SETTABLEKS                       R12 R10 K18 ["Transparency"]
       54 JUMPIFNOT                        R11 ; [+22]
       55 LOADK                            R14 K19 ["SphereHandleAdornment"]
       56 NAMECALL                         R12 R11 K13 ["IsA"]
       58 CALL                             R12 2 1
       59 JUMPIFNOT                        R12 ; [+17]
       60 GETTABLEKS                       R12 R11 K14 ["Color3"]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R13 R14 K15 ["BONE_COLOR_SELECTED"]
       65 JUMPIFEQ                         R12 R13 ; [+11]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R12 R13 K16 ["BONE_COLOR_DEFAULT"]
       70 SETTABLEKS                       R12 R11 K14 ["Color3"]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R12 R13 K17 ["BONE_TRANSPARENCY_DEFAULT"]
       75 SETTABLEKS                       R12 R11 K18 ["Transparency"]
       77 LOADK                            R14 K20 ["Part"]
       78 NAMECALL                         R12 R9 K13 ["IsA"]
       80 CALL                             R12 2 1
       81 JUMPIFNOT                        R12 ; [+9]
       82 GETUPVAL                         R12 1
       83 MOVE                             R13 R9
       84 MOVE                             R14 R0
       85 CALL                             R12 2 1
       86 JUMPIFNOT                        R12 ; [+4]
       87 JUMPIFNOTLT                      R12 R2 ; [+3]
       89 MOVE                             R2 R12
       90 MOVE                             R1 R9
       91 FORGLOOP                         R5 2 ; [-69]
       93 RETURN                           R1 2

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["FOLDERS"]
        7 GETTABLEKS                       R2 R3 K4 ["Microbones"]
        9 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 NAMECALL                         R1 R0 K6 ["Destroy"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+7]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R4 K4 [game]
       11 GETTABLEKS                       R3 R4 K5 ["Workspace"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K6 ["FOLDERS"]
       16 GETTABLEKS                       R5 R6 K7 ["Microbones"]
       18 NAMECALL                         R3 R3 K8 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+21]
       22 GETIMPORT                        R4 K11 [Instance.new]
       24 LOADK                            R5 K12 ["Folder"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K6 ["FOLDERS"]
       29 GETTABLEKS                       R5 R6 K7 ["Microbones"]
       31 SETTABLEKS                       R5 R4 K13 ["Name"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K14 ["Archivable"]
       36 GETIMPORT                        R6 K4 [game]
       38 GETTABLEKS                       R5 R6 K5 ["Workspace"]
       40 SETTABLEKS                       R5 R4 K15 ["Parent"]
       42 MOVE                             R3 R4
       43 FASTCALL1                        ASSERT R3 ; [+3]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K17 [assert]
       47 CALL                             R4 1 0
       48 MOVE                             R2 R3
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R3 R4 K18 ["getRigInfo"]
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 GETTABLEKS                       R4 R3 K19 ["BoneNameToBone"]
       56 MOVE                             R5 R4
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 FORGPREP                         R5
       60 GETUPVAL                         R10 2
       61 MOVE                             R11 R9
       62 MOVE                             R12 R2
       63 MOVE                             R13 R1
       64 CALL                             R10 3 0
       65 FORGLOOP                         R5 2 ; [-6]
       67 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_13:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        ASSERT R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 1 0
        7 LOADK                            R3 K2 ["Cone"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 LOADK                            R4 K4 ["Sphere"]
       12 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R1 ; [+10]
       16 LOADK                            R5 K5 ["ConeHandleAdornment"]
       17 NAMECALL                         R3 R1 K6 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K7 ["BONE_COLOR_SELECTED"]
       24 SETTABLEKS                       R3 R1 K8 ["Color3"]
       26 JUMPIFNOT                        R2 ; [+10]
       27 LOADK                            R5 K9 ["SphereHandleAdornment"]
       28 NAMECALL                         R3 R2 K6 ["IsA"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K7 ["BONE_COLOR_SELECTED"]
       35 SETTABLEKS                       R3 R2 K8 ["Color3"]
       37 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["Workspace"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["FOLDERS"]
        7 GETTABLEKS                       R2 R3 K4 ["Microbones"]
        9 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 FASTCALL1                        ASSERT R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K7 [assert]
       18 CALL                             R1 1 0
       19 NAMECALL                         R1 R0 K8 ["GetChildren"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K10 [pairs]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 3
       26 FORGPREP_NEXT                    R2
       27 LOADK                            R9 K11 ["Cone"]
       28 NAMECALL                         R7 R6 K5 ["FindFirstChild"]
       30 CALL                             R7 2 1
       31 LOADK                            R10 K12 ["Sphere"]
       32 NAMECALL                         R8 R6 K5 ["FindFirstChild"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R7 ; [+22]
       36 LOADK                            R11 K13 ["ConeHandleAdornment"]
       37 NAMECALL                         R9 R7 K14 ["IsA"]
       39 CALL                             R9 2 1
       40 JUMPIFNOT                        R9 ; [+17]
       41 GETTABLEKS                       R9 R7 K15 ["Color3"]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K16 ["BONE_COLOR_SELECTED"]
       46 JUMPIFNOTEQ                      R9 R10 ; [+11]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K17 ["BONE_COLOR_DEFAULT"]
       51 SETTABLEKS                       R9 R7 K15 ["Color3"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K18 ["BONE_TRANSPARENCY_DEFAULT"]
       56 SETTABLEKS                       R9 R7 K19 ["Transparency"]
       58 JUMPIFNOT                        R8 ; [+22]
       59 LOADK                            R11 K20 ["SphereHandleAdornment"]
       60 NAMECALL                         R9 R8 K14 ["IsA"]
       62 CALL                             R9 2 1
       63 JUMPIFNOT                        R9 ; [+17]
       64 GETTABLEKS                       R9 R8 K15 ["Color3"]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R10 R11 K16 ["BONE_COLOR_SELECTED"]
       69 JUMPIFNOTEQ                      R9 R10 ; [+11]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K17 ["BONE_COLOR_DEFAULT"]
       74 SETTABLEKS                       R9 R8 K15 ["Color3"]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R9 R10 K18 ["BONE_TRANSPARENCY_DEFAULT"]
       79 SETTABLEKS                       R9 R8 K19 ["Transparency"]
       81 FORGLOOP                         R2 2 ; [-55]
       83 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Parent"]
        3 JUMPIFEQKNIL                     R2 ; [+14]
        5 GETTABLEKS                       R3 R0 K0 ["Parent"]
        7 GETTABLEKS                       R2 R3 K1 ["Name"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["FOLDERS"]
       12 GETTABLEKS                       R3 R4 K3 ["Microbones"]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Math"]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["DraggerFramework"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R6 R3 K11 ["Utility"]
       26 GETTABLEKS                       R5 R6 K9 ["Math"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R5 R6 K8 ["Util"]
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R5 K13 ["Adorn"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R5 K14 ["Constants"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R5 K15 ["RigInfo"]
       47 CALL                             R8 1 1
       48 NEWTABLE                         R9 8 0
       50 DUPCLOSURE                       R10 K16 [PROTO_0]
       51 DUPCLOSURE                       R11 K17 [PROTO_1]
       52 DUPCLOSURE                       R12 K18 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R13 K19 [PROTO_4]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R12
       58 DUPCLOSURE                       R14 K20 [PROTO_5]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R13
       62 DUPCLOSURE                       R15 K21 [PROTO_6]
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R16 K22 [PROTO_7]
       65 CAPTURE                          VAL R7
       66 DUPCLOSURE                       R17 K23 [PROTO_8]
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R18 K24 [PROTO_9]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R17
       71 DUPCLOSURE                       R19 K25 [PROTO_10]
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R19 R9 K26 ["clearMicrobones"]
       75 DUPCLOSURE                       R19 K27 [PROTO_11]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R14
       79 SETTABLEKS                       R19 R9 K28 ["updateMicrobones"]
       81 DUPCLOSURE                       R19 K29 [PROTO_12]
       82 CAPTURE                          VAL R18
       83 SETTABLEKS                       R19 R9 K30 ["getBoneHit"]
       85 DUPCLOSURE                       R19 K31 [PROTO_13]
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R19 R9 K32 ["selectBone"]
       89 DUPCLOSURE                       R19 K33 [PROTO_14]
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R19 R9 K34 ["deselectBones"]
       93 DUPCLOSURE                       R19 K35 [PROTO_15]
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R19 R9 K36 ["isBone"]
       97 RETURN                           R9 1
