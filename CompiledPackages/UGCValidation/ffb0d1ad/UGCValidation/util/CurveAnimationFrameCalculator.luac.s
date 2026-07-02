PROTO_0:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [game]
        3 LOADK                            R4 K2 ["AsyncRenamesUsedInLuaApps"]
        4 NAMECALL                         R2 R2 K3 ["GetEngineFeature"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R4 K6 [Instance.new]
       11 LOADK                            R5 K7 ["HumanoidDescription"]
       12 CALL                             R4 1 1
       13 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       15 NAMECALL                         R2 R2 K12 ["CreateHumanoidModelFromDescriptionAsync"]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 JUMP                             ; [+14]
       20 GETIMPORT                        R2 K1 [game]
       22 GETTABLEKS                       R2 R2 K13 ["Players"]
       24 GETIMPORT                        R4 K6 [Instance.new]
       26 LOADK                            R5 K7 ["HumanoidDescription"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       30 NAMECALL                         R2 R2 K14 ["CreateHumanoidModelFromDescription"]
       32 CALL                             R2 3 1
       33 MOVE                             R1 R2
       34 NAMECALL                         R2 R1 K15 ["GetDescendants"]
       36 CALL                             R2 1 3
       37 FORGPREP                         R2
       38 LOADK                            R9 K16 ["Decal"]
       39 NAMECALL                         R7 R6 K17 ["IsA"]
       41 CALL                             R7 2 1
       42 JUMPIFNOT                        R7 ; [+4]
       43 LOADN                            R7 1
       44 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       46 JUMP                             ; [+21]
       47 LOADK                            R9 K19 ["MeshPart"]
       48 NAMECALL                         R7 R6 K17 ["IsA"]
       50 CALL                             R7 2 1
       51 JUMPIFNOT                        R7 ; [+7]
       52 LOADN                            R7 1
       53 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K20 ["CanCollide"]
       58 JUMP                             ; [+9]
       59 LOADK                            R9 K21 ["Motor6D"]
       60 NAMECALL                         R7 R6 K17 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIFNOT                        R7 ; [+4]
       64 JUMPIFNOT                        R0 ; [+3]
       65 NAMECALL                         R7 R6 K22 ["Destroy"]
       67 CALL                             R7 1 0
       68 FORGLOOP                         R2 2 ; [-31]
       70 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["X"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Y"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 LOADK                            R5 K3 ["Z"]
        9 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R1 ; [+15]
       13 LOADK                            R6 K4 ["FloatCurve"]
       14 NAMECALL                         R4 R1 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+11]
       18 NAMECALL                         R6 R1 K6 ["GetKeys"]
       20 CALL                             R6 1 1
       21 LENGTH                           R5 R6
       22 LOADN                            R6 0
       23 JUMPIFLT                         R6 R5 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 JUMP                             ; [+1]
       28 LOADB                            R4 0
       29 JUMPIF                           R4 ; [+35]
       30 JUMPIFNOT                        R2 ; [+15]
       31 LOADK                            R6 K4 ["FloatCurve"]
       32 NAMECALL                         R4 R2 K5 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+11]
       36 NAMECALL                         R6 R2 K6 ["GetKeys"]
       38 CALL                             R6 1 1
       39 LENGTH                           R5 R6
       40 LOADN                            R6 0
       41 JUMPIFLT                         R6 R5 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMP                             ; [+1]
       46 LOADB                            R4 0
       47 JUMPIF                           R4 ; [+17]
       48 JUMPIFNOT                        R3 ; [+15]
       49 LOADK                            R6 K4 ["FloatCurve"]
       50 NAMECALL                         R4 R3 K5 ["IsA"]
       52 CALL                             R4 2 1
       53 JUMPIFNOT                        R4 ; [+11]
       54 NAMECALL                         R6 R3 K6 ["GetKeys"]
       56 CALL                             R6 1 1
       57 LENGTH                           R5 R6
       58 LOADN                            R6 0
       59 JUMPIFLT                         R6 R5 ; [+2]
       61 LOADB                            R4 0 +1
       62 LOADB                            R4 1
       63 RETURN                           R4 1
       64 LOADB                            R4 0
       65 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Vector3Curve"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["EulerRotationCurve"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 LOADNIL                          R1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+24]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["getBodyPartFolderRoot"]
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 1
       11 FASTCALL2K                       ASSERT R2 K1 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K1 ["CurveAnimation must have one and only one body part Folder child or HumanoidRootPart child."]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 NAMECALL                         R3 R2 K4 ["GetDescendants"]
       20 CALL                             R3 1 1
       21 MOVE                             R1 R3
       22 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       24 MOVE                             R4 R1
       25 MOVE                             R5 R2
       26 GETIMPORT                        R3 K7 [table.insert]
       28 CALL                             R3 2 0
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R2 2
       31 NAMECALL                         R2 R2 K4 ["GetDescendants"]
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 MOVE                             R2 R1
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 LOADK                            R9 K8 ["Folder"]
       40 NAMECALL                         R7 R6 K9 ["IsA"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+75]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K10 ["getBodyPartToParentMap"]
       47 CALL                             R8 0 1
       48 GETTABLEKS                       R9 R6 K11 ["Name"]
       50 GETTABLE                         R7 R8 R9
       51 JUMPIFNOT                        R7 ; [+67]
       52 LOADK                            R9 K12 ["Position"]
       53 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
       55 CALL                             R7 2 1
       56 LOADK                            R10 K14 ["Rotation"]
       57 NAMECALL                         R8 R6 K13 ["FindFirstChild"]
       59 CALL                             R8 2 1
       60 GETTABLEKS                       R9 R6 K11 ["Name"]
       62 DUPTABLE                         R10 K18 [{"pos", "rot", "faceControls"}]
       63 JUMPIF                           R7 ; [+2]
       64 LOADB                            R12 0
       65 JUMP                             ; [+10]
       66 LOADK                            R15 K19 ["Vector3Curve"]
       67 NAMECALL                         R13 R7 K9 ["IsA"]
       69 CALL                             R13 2 1
       70 JUMPIF                           R13 ; [+2]
       71 LOADB                            R12 0
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R12 3
       74 MOVE                             R13 R7
       75 CALL                             R12 1 1
       76 JUMPIFNOT                        R12 ; [+2]
       77 MOVE                             R11 R7
       78 JUMP                             ; [+1]
       79 LOADNIL                          R11
       80 SETTABLEKS                       R11 R10 K15 ["pos"]
       82 JUMPIF                           R8 ; [+2]
       83 LOADB                            R12 0
       84 JUMP                             ; [+10]
       85 LOADK                            R15 K20 ["EulerRotationCurve"]
       86 NAMECALL                         R13 R8 K9 ["IsA"]
       88 CALL                             R13 2 1
       89 JUMPIF                           R13 ; [+2]
       90 LOADB                            R12 0
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R12 3
       93 MOVE                             R13 R8
       94 CALL                             R12 1 1
       95 JUMPIFNOT                        R12 ; [+2]
       96 MOVE                             R11 R8
       97 JUMP                             ; [+1]
       98 LOADNIL                          R11
       99 SETTABLEKS                       R11 R10 K16 ["rot"]
      101 GETTABLEKS                       R12 R6 K11 ["Name"]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R13 R13 K21 ["NAMED_R15_BODY_PARTS"]
      106 GETTABLEKS                       R13 R13 K22 ["Head"]
      108 JUMPIFNOTEQ                      R12 R13 ; [+6]
      110 GETUPVAL                         R13 5
      111 NAMECALL                         R11 R6 K13 ["FindFirstChild"]
      113 CALL                             R11 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R11
      116 SETTABLEKS                       R11 R10 K17 ["faceControls"]
      118 SETTABLE                         R10 R0 R9
      119 FORGLOOP                         R2 2 ; [-81]
      121 RETURN                           R0 1

PROTO_5:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R1 R0 K0 ["GetChildren"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["FloatCurve"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+15]
       11 NAMECALL                         R6 R5 K3 ["GetKeys"]
       13 CALL                             R6 1 3
       14 FORGPREP                         R6
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R13 R10 K4 ["Time"]
       18 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       20 GETIMPORT                        R11 K7 [math.max]
       22 CALL                             R11 2 1
       23 SETUPVAL                         R11 0
       24 FORGLOOP                         R6 2 ; [-10]
       26 FORGLOOP                         R1 2 ; [-21]
       28 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R1 -1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 MOVE                             R8 R2
        8 GETTABLEKS                       R9 R7 K0 ["pos"]
       10 CALL                             R8 1 0
       11 MOVE                             R8 R2
       12 GETTABLEKS                       R9 R7 K1 ["rot"]
       14 CALL                             R8 1 0
       15 MOVE                             R8 R2
       16 GETTABLEKS                       R9 R7 K2 ["faceControls"]
       18 CALL                             R8 1 0
       19 FORGLOOP                         R3 2 ; [-13]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["pos"]
        8 JUMPIFNOT                        R9 ; [+15]
        9 GETTABLEKS                       R10 R7 K0 ["pos"]
       11 MOVE                             R12 R0
       12 NAMECALL                         R10 R10 K1 ["GetValueAtTime"]
       14 CALL                             R10 2 -1
       15 FASTCALL                         TABLE_UNPACK ; [+2]
       16 GETIMPORT                        R9 K3 [unpack]
       18 CALL                             R9 -1 -1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K6 [Vector3.new]
       22 CALL                             R8 -1 1
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K7 [{0, 0, 0}]
       25 GETTABLEKS                       R10 R7 K8 ["rot"]
       27 JUMPIFNOT                        R10 ; [+7]
       28 GETTABLEKS                       R9 R7 K8 ["rot"]
       30 MOVE                             R11 R0
       31 NAMECALL                         R9 R9 K9 ["GetRotationAtTime"]
       33 CALL                             R9 2 1
       34 JUMP                             ; [+3]
       35 GETIMPORT                        R9 K11 [CFrame.new]
       37 CALL                             R9 0 1
       38 ADD                              R10 R9 R8
       39 SETTABLE                         R10 R2 R6
       40 FORGLOOP                         R3 2 ; [-35]
       42 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["pos"]
        8 JUMPIFNOT                        R8 ; [+17]
        9 GETTABLEKS                       R10 R7 K0 ["pos"]
       11 MOVE                             R12 R0
       12 NAMECALL                         R10 R10 K1 ["GetValueAtTime"]
       14 CALL                             R10 2 -1
       15 FASTCALL                         TABLE_UNPACK ; [+2]
       16 GETIMPORT                        R9 K3 [unpack]
       18 CALL                             R9 -1 -1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K6 [Vector3.new]
       22 CALL                             R8 -1 1
       23 GETTABLEKS                       R8 R8 K7 ["Magnitude"]
       25 SETTABLE                         R8 R2 R6
       26 FORGLOOP                         R3 2 ; [-21]
       28 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["calculateAllTransformsForFullBody"]
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 4
       11 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R3 K3 [table.insert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 5
       18 GETUPVAL                         R5 6
       19 MOVE                             R6 R0
       20 GETUPVAL                         R7 1
       21 CALL                             R5 2 1
       22 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       24 GETIMPORT                        R3 K3 [table.insert]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 DIVRK                            R1 K0 [1] R2
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 DUPCLOSURE                       R3 K1 [PROTO_6]
       11 DUPCLOSURE                       R4 K2 [PROTO_7]
       12 DUPCLOSURE                       R5 K3 [PROTO_8]
       13 GETUPVAL                         R6 6
       14 LOADB                            R7 0
       15 CALL                             R6 1 1
       16 NEWTABLE                         R7 0 0
       18 NAMECALL                         R8 R6 K4 ["GetChildren"]
       20 CALL                             R8 1 3
       21 FORGPREP                         R8
       22 GETUPVAL                         R13 2
       23 GETTABLEKS                       R13 R13 K5 ["isBodyPartFolderNameValid"]
       25 GETTABLEKS                       R14 R12 K6 ["Name"]
       27 CALL                             R13 1 1
       28 JUMPIFNOT                        R13 ; [+3]
       29 GETTABLEKS                       R13 R12 K6 ["Name"]
       31 SETTABLE                         R12 R7 R13
       32 FORGLOOP                         R8 2 ; [-11]
       34 MOVE                             R8 R2
       35 CALL                             R8 0 1
       36 MOVE                             R9 R3
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 NEWTABLE                         R10 0 0
       41 NEWTABLE                         R11 0 0
       43 NEWCLOSURE                       R12 P4
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R8
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R5
       51 LOADN                            R13 0
       52 JUMPIFNOTLE                      R13 R9 ; [+62]
       54 GETUPVAL                         R14 8
       55 CALL                             R14 0 1
       56 JUMPIFNOT                        R14 ; [+29]
       57 MOVE                             R14 R13
       58 MOVE                             R15 R4
       59 MOVE                             R16 R14
       60 MOVE                             R17 R8
       61 CALL                             R15 2 1
       62 GETUPVAL                         R16 7
       63 GETTABLEKS                       R16 R16 K7 ["calculateAllTransformsForFullBody"]
       65 MOVE                             R17 R7
       66 MOVE                             R18 R15
       67 CALL                             R16 2 1
       68 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
       70 MOVE                             R18 R10
       71 MOVE                             R19 R16
       72 GETIMPORT                        R17 K10 [table.insert]
       74 CALL                             R17 2 0
       75 MOVE                             R19 R5
       76 MOVE                             R20 R14
       77 MOVE                             R21 R8
       78 CALL                             R19 2 1
       79 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       81 MOVE                             R18 R11
       82 GETIMPORT                        R17 K10 [table.insert]
       84 CALL                             R17 2 0
       85 JUMP                             ; [+27]
       86 MOVE                             R14 R4
       87 MOVE                             R15 R13
       88 MOVE                             R16 R8
       89 CALL                             R14 2 1
       90 GETUPVAL                         R15 7
       91 GETTABLEKS                       R15 R15 K7 ["calculateAllTransformsForFullBody"]
       93 MOVE                             R16 R7
       94 MOVE                             R17 R14
       95 CALL                             R15 2 1
       96 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       98 MOVE                             R17 R10
       99 MOVE                             R18 R15
      100 GETIMPORT                        R16 K10 [table.insert]
      102 CALL                             R16 2 0
      103 MOVE                             R18 R5
      104 MOVE                             R19 R13
      105 MOVE                             R20 R8
      106 CALL                             R18 2 1
      107 FASTCALL2                        TABLE_INSERT R11 R18 ; [+4]
      109 MOVE                             R17 R11
      110 GETIMPORT                        R16 K10 [table.insert]
      112 CALL                             R16 2 0
      113 ADD                              R13 R13 R1
      114 JUMPBACK                         ; [-63]
      115 GETUPVAL                         R14 8
      116 CALL                             R14 0 1
      117 JUMPIFNOT                        R14 ; [+30]
      118 LOADN                            R14 0
      119 JUMPIFNOTLE                      R14 R9 ; [+28]
      121 MOVE                             R14 R4
      122 MOVE                             R15 R9
      123 MOVE                             R16 R8
      124 CALL                             R14 2 1
      125 GETUPVAL                         R15 7
      126 GETTABLEKS                       R15 R15 K7 ["calculateAllTransformsForFullBody"]
      128 MOVE                             R16 R7
      129 MOVE                             R17 R14
      130 CALL                             R15 2 1
      131 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      133 MOVE                             R17 R10
      134 MOVE                             R18 R15
      135 GETIMPORT                        R16 K10 [table.insert]
      137 CALL                             R16 2 0
      138 MOVE                             R18 R5
      139 MOVE                             R19 R9
      140 MOVE                             R20 R8
      141 CALL                             R18 2 1
      142 FASTCALL2                        TABLE_INSERT R11 R18 ; [+4]
      144 MOVE                             R17 R11
      145 GETIMPORT                        R16 K10 [table.insert]
      147 CALL                             R16 2 0
      148 NAMECALL                         R14 R6 K11 ["Destroy"]
      150 CALL                             R14 1 0
      151 MOVE                             R14 R10
      152 MOVE                             R15 R9
      153 MOVE                             R16 R11
      154 MOVE                             R17 R8
      155 RETURN                           R14 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Constants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R4 K11 ["AssetCalculator"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R5 K12 ["CurveAnimationHierarchyUtils"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K13 ["flags"]
       34 GETIMPORT                        R6 K8 [require]
       36 GETTABLEKS                       R7 R5 K14 ["getFFlagUGCValidateDuplicatesInAnimation"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K8 [require]
       41 GETTABLEKS                       R8 R5 K15 ["getFIntUGCValidateMaxAnimationFPS"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R9 R5 K16 ["getFFlagUGCValidateCurveAnimFinalFrameBug"]
       48 CALL                             R8 1 1
       49 NEWTABLE                         R9 1 0
       51 GETTABLEKS                       R10 R4 K17 ["FaceControlsName"]
       53 DUPCLOSURE                       R11 K18 [PROTO_0]
       54 CAPTURE                          VAL R0
       55 DUPCLOSURE                       R12 K19 [PROTO_1]
       56 DUPCLOSURE                       R13 K20 [PROTO_2]
       57 CAPTURE                          VAL R12
       58 DUPCLOSURE                       R14 K21 [PROTO_3]
       59 CAPTURE                          VAL R12
       60 DUPCLOSURE                       R15 K22 [PROTO_10]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R15 R9 K23 ["calculateAnimFramesAtOrigin"]
       72 RETURN                           R9 1
