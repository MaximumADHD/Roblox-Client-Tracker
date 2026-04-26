PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.RigLabel.Spine]
        2 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K3 [Enum.RigLabel.Pelvis]
        2 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K3 [Enum.RigLabel.Thumb1]
        2 RETURN                           R0 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["Motor6D"]
        5 NAMECALL                         R1 R0 K1 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+12]
        9 LOADK                            R3 K2 ["Bone"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+7]
       14 LOADK                            R3 K3 ["AnimationConstraint"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+2]
       19 GETUPVAL                         R1 0
       20 CALL                             R1 0 1
       21 RETURN                           R1 1

PROTO_4:
        0 LENGTH                           R2 R1
        1 LENGTH                           R3 R0
        2 JUMPIFNOTLT                      R3 R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADN                            R5 1
        7 LENGTH                           R6 R1
        8 NAMECALL                         R3 R0 K0 ["sub"]
       10 CALL                             R3 3 1
       11 JUMPIFEQ                         R3 R1 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_5:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFNOTLT                      R2 R3 ; [+3]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 SUB                              R8 R2 R3
        7 ADDK                             R7 R8 K0 [1]
        8 MOVE                             R8 R2
        9 NAMECALL                         R5 R0 K1 ["sub"]
       11 CALL                             R5 3 1
       12 JUMPIFEQ                         R5 R1 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["startsWith"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 LENGTH                           R5 R1
        8 ADDK                             R4 R5 K1 [1]
        9 LENGTH                           R5 R0
       10 NAMECALL                         R2 R0 K2 ["sub"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1
       14 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["endsWith"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+8]
        7 LOADN                            R4 1
        8 LENGTH                           R6 R0
        9 LENGTH                           R7 R1
       10 SUB                              R5 R6 R7
       11 NAMECALL                         R2 R0 K1 ["sub"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1
       15 RETURN                           R0 1

PROTO_8:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1
        5 GETTABLEN                        R1 R0 1
        6 LOADN                            R4 2
        7 LENGTH                           R2 R0
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 LOADN                            R5 1
       11 LENGTH                           R6 R1
       12 JUMPIFNOTLE                      R5 R6 ; [+20]
       14 GETTABLE                         R7 R0 R4
       15 LENGTH                           R6 R7
       16 JUMPIFNOTLE                      R5 R6 ; [+16]
       18 MOVE                             R8 R5
       19 MOVE                             R9 R5
       20 NAMECALL                         R6 R1 K2 ["sub"]
       22 CALL                             R6 3 1
       23 GETTABLE                         R7 R0 R4
       24 MOVE                             R9 R5
       25 MOVE                             R10 R5
       26 NAMECALL                         R7 R7 K2 ["sub"]
       28 CALL                             R7 3 1
       29 JUMPIFNOTEQ                      R6 R7 ; [+3]
       31 ADDK                             R5 R5 K3 [1]
       32 JUMPBACK                         ; [-22]
       33 LOADN                            R8 1
       34 SUBK                             R9 R5 K3 [1]
       35 NAMECALL                         R6 R1 K2 ["sub"]
       37 CALL                             R6 3 1
       38 MOVE                             R1 R6
       39 JUMPIFEQKS                       R1 K1 [""] ; [+2]
       41 FORNLOOP                         R2
       42 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NAMECALL                         R7 R6 K0 ["reverse"]
        8 CALL                             R7 1 1
        9 SETTABLE                         R7 R1 R5
       10 FORGLOOP                         R2 2 ; [-5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["commonPrefix"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 NAMECALL                         R2 R2 K0 ["reverse"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_10:
        0 SUB                              R6 R0 R1
        1 SUB                              R7 R2 R1
        2 DIV                              R5 R6 R7
        3 SUB                              R8 R4 R3
        4 MUL                              R7 R5 R8
        5 ADD                              R6 R3 R7
        6 RETURN                           R6 1

PROTO_11:
        0 LOADK                            R1 K0 [∞]
        1 LOADK                            R2 K0 [∞]
        2 LOADK                            R3 K1 [-∞]
        3 LOADK                            R4 K1 [-∞]
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R12 R9 K2 ["X"]
       10 FASTCALL2                        MATH_MIN R1 R12 ; [+4]
       12 MOVE                             R11 R1
       13 GETIMPORT                        R10 K5 [math.min]
       15 CALL                             R10 2 1
       16 MOVE                             R1 R10
       17 GETTABLEKS                       R12 R9 K2 ["X"]
       19 FASTCALL2                        MATH_MAX R3 R12 ; [+4]
       21 MOVE                             R11 R3
       22 GETIMPORT                        R10 K7 [math.max]
       24 CALL                             R10 2 1
       25 MOVE                             R3 R10
       26 GETTABLEKS                       R12 R9 K8 ["Y"]
       28 FASTCALL2                        MATH_MIN R2 R12 ; [+4]
       30 MOVE                             R11 R2
       31 GETIMPORT                        R10 K5 [math.min]
       33 CALL                             R10 2 1
       34 MOVE                             R2 R10
       35 GETTABLEKS                       R12 R9 K8 ["Y"]
       37 FASTCALL2                        MATH_MAX R4 R12 ; [+4]
       39 MOVE                             R11 R4
       40 GETIMPORT                        R10 K7 [math.max]
       42 CALL                             R10 2 1
       43 MOVE                             R4 R10
       44 FORGLOOP                         R5 2 ; [-37]
       46 MOVE                             R5 R0
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETIMPORT                        R10 K11 [Vector2.new]
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R11 R12 K12 ["remap"]
       55 GETTABLEKS                       R12 R9 K2 ["X"]
       57 MOVE                             R13 R1
       58 MOVE                             R14 R3
       59 LOADN                            R15 255
       60 LOADN                            R16 1
       61 CALL                             R11 5 1
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R12 R13 K12 ["remap"]
       65 GETTABLEKS                       R13 R9 K8 ["Y"]
       67 MOVE                             R14 R2
       68 MOVE                             R15 R4
       69 LOADN                            R16 255
       70 LOADN                            R17 1
       71 CALL                             R12 5 -1
       72 CALL                             R10 -1 1
       73 SETTABLE                         R10 R0 R8
       74 FORGLOOP                         R5 2 ; [-25]
       76 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETIMPORT                        R2 K1 [workspace]
        4 LOADN                            R3 0
        5 JUMPIFNOT                        R0 ; [+10]
        6 JUMPIFEQ                         R0 R2 ; [+9]
        8 ADDK                             R3 R3 K2 [1]
        9 GETTABLEKS                       R4 R0 K3 ["Parent"]
       11 JUMPIFEQKNIL                     R4 ; [+3]
       13 GETTABLEKS                       R0 R0 K3 ["Parent"]
       15 JUMPBACK                         ; [-11]
       16 RETURN                           R3 1

PROTO_13:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 NAMECALL                         R2 R0 K2 ["GetChildren"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_INEXT                   R1
        7 LOADK                            R8 K3 ["Motor6D"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+9]
       12 GETUPVAL                         R6 0
       13 JUMPIFEQ                         R5 R6 ; [+7]
       15 GETTABLEKS                       R6 R5 K5 ["Part1"]
       17 GETUPVAL                         R7 1
       18 JUMPIFNOTEQ                      R6 R7 ; [+2]
       20 RETURN                           R5 1
       21 FORGLOOP                         R1 2 [inext] ; [-15]
       23 LOADNIL                          R1
       24 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETTABLEKS                       R1 R0 K2 ["Part0"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 MOVE                             R3 R2
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R4 R1 K3 ["Parent"]
       20 JUMPIFNOT                        R4 ; [+7]
       21 MOVE                             R4 R2
       22 GETTABLEKS                       R5 R1 K3 ["Parent"]
       24 CALL                             R4 1 1
       25 MOVE                             R3 R4
       26 JUMPIFNOT                        R3 ; [+1]
       27 RETURN                           R3 1
       28 LOADNIL                          R4
       29 RETURN                           R4 1
       30 LOADK                            R3 K4 ["Bone"]
       31 NAMECALL                         R1 R0 K1 ["IsA"]
       33 CALL                             R1 2 1
       34 JUMPIFNOT                        R1 ; [+14]
       35 GETTABLEKS                       R1 R0 K3 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+57]
       38 GETTABLEKS                       R1 R0 K3 ["Parent"]
       40 LOADK                            R3 K4 ["Bone"]
       41 NAMECALL                         R1 R1 K1 ["IsA"]
       43 CALL                             R1 2 1
       44 JUMPIFNOT                        R1 ; [+50]
       45 GETTABLEKS                       R1 R0 K3 ["Parent"]
       47 RETURN                           R1 1
       48 JUMP                             ; [+46]
       49 LOADK                            R3 K5 ["Attachment"]
       50 NAMECALL                         R1 R0 K1 ["IsA"]
       52 CALL                             R1 2 1
       53 JUMPIFNOT                        R1 ; [+15]
       54 JUMPIFNOT                        R0 ; [+40]
       55 GETTABLEKS                       R1 R0 K3 ["Parent"]
       57 JUMPIFNOT                        R1 ; [+37]
       58 GETTABLEKS                       R1 R0 K3 ["Parent"]
       60 LOADK                            R3 K5 ["Attachment"]
       61 NAMECALL                         R1 R1 K1 ["IsA"]
       63 CALL                             R1 2 1
       64 JUMPIFNOT                        R1 ; [+30]
       65 GETTABLEKS                       R1 R0 K3 ["Parent"]
       67 RETURN                           R1 1
       68 JUMP                             ; [+26]
       69 LOADK                            R3 K6 ["AnimationConstraint"]
       70 NAMECALL                         R1 R0 K1 ["IsA"]
       72 CALL                             R1 2 1
       73 JUMPIFNOT                        R1 ; [+21]
       74 GETUPVAL                         R1 0
       75 CALL                             R1 0 1
       76 JUMPIFNOT                        R1 ; [+18]
       77 JUMPIFNOT                        R0 ; [+17]
       78 GETTABLEKS                       R1 R0 K7 ["Attachment0"]
       80 JUMPIFNOT                        R1 ; [+14]
       81 GETTABLEKS                       R2 R0 K7 ["Attachment0"]
       83 GETTABLEKS                       R1 R2 K3 ["Parent"]
       85 JUMPIFNOT                        R1 ; [+8]
       86 GETTABLEKS                       R2 R0 K7 ["Attachment0"]
       88 GETTABLEKS                       R1 R2 K3 ["Parent"]
       90 LOADK                            R3 K6 ["AnimationConstraint"]
       91 NAMECALL                         R1 R1 K8 ["FindFirstChildWhichIsA"]
       93 CALL                             R1 2 1
       94 RETURN                           R1 1
       95 LOADNIL                          R1
       96 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["getGlobalCoordinateFrame"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K3 ["Position"]
       12 RETURN                           R2 1
       13 LOADK                            R3 K4 ["Bone"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R2 R0 K5 ["TransformedWorldCFrame"]
       20 GETTABLEKS                       R1 R2 K3 ["Position"]
       22 RETURN                           R1 1
       23 LOADK                            R3 K6 ["Attachment"]
       24 NAMECALL                         R1 R0 K1 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETTABLEKS                       R2 R0 K7 ["WorldCFrame"]
       30 GETTABLEKS                       R1 R2 K3 ["Position"]
       32 RETURN                           R1 1
       33 LOADK                            R3 K8 ["AnimationConstraint"]
       34 NAMECALL                         R1 R0 K1 ["IsA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+13]
       38 GETUPVAL                         R1 1
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+10]
       41 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       43 JUMPIFNOT                        R1 ; [+7]
       44 GETTABLEKS                       R3 R0 K9 ["Attachment1"]
       46 GETTABLEKS                       R2 R3 K7 ["WorldCFrame"]
       48 GETTABLEKS                       R1 R2 K3 ["Position"]
       50 RETURN                           R1 1
       51 GETIMPORT                        R1 K11 [warn]
       53 LOADK                            R2 K12 ["Invalid joint type"]
       54 CALL                             R1 1 0
       55 LOADK                            R1 K13 [{0, 0, 0}]
       56 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["getGlobalCoordinateFrame"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K3 ["Rotation"]
       12 RETURN                           R2 1
       13 LOADK                            R3 K4 ["Bone"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R2 R0 K5 ["TransformedWorldCFrame"]
       20 GETTABLEKS                       R1 R2 K3 ["Rotation"]
       22 RETURN                           R1 1
       23 LOADK                            R3 K6 ["Attachment"]
       24 NAMECALL                         R1 R0 K1 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETTABLEKS                       R2 R0 K7 ["WorldCFrame"]
       30 GETTABLEKS                       R1 R2 K3 ["Rotation"]
       32 RETURN                           R1 1
       33 LOADK                            R3 K8 ["AnimationConstraint"]
       34 NAMECALL                         R1 R0 K1 ["IsA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+13]
       38 GETUPVAL                         R1 1
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+10]
       41 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       43 JUMPIFNOT                        R1 ; [+7]
       44 GETTABLEKS                       R3 R0 K9 ["Attachment1"]
       46 GETTABLEKS                       R2 R3 K7 ["WorldCFrame"]
       48 GETTABLEKS                       R1 R2 K3 ["Rotation"]
       50 RETURN                           R1 1
       51 GETIMPORT                        R1 K11 [warn]
       53 LOADK                            R2 K12 ["Invalid joint type"]
       54 CALL                             R1 1 0
       55 GETIMPORT                        R1 K15 [CFrame.identity]
       57 RETURN                           R1 1

PROTO_17:
        0 LOADK                            R4 K0 ["Motor6D"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETTABLEKS                       R2 R0 K2 ["Part0"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Motor6D.Part0 is nil"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R5 R2 K6 ["CFrame"]
       19 GETTABLEKS                       R6 R0 K7 ["C0"]
       21 MUL                              R4 R5 R6
       22 GETTABLEKS                       R5 R0 K8 ["Transform"]
       24 MUL                              R3 R4 R5
       25 GETIMPORT                        R5 K10 [CFrame.new]
       27 GETTABLEKS                       R6 R3 K11 ["Position"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R1 K12 ["Rotation"]
       32 MUL                              R4 R5 R6
       33 GETTABLEKS                       R7 R2 K6 ["CFrame"]
       35 GETTABLEKS                       R8 R0 K7 ["C0"]
       37 MUL                              R6 R7 R8
       38 NAMECALL                         R6 R6 K13 ["Inverse"]
       40 CALL                             R6 1 1
       41 MUL                              R5 R6 R4
       42 SETTABLEKS                       R5 R0 K8 ["Transform"]
       44 RETURN                           R0 0
       45 LOADK                            R4 K14 ["Bone"]
       46 NAMECALL                         R2 R0 K1 ["IsA"]
       48 CALL                             R2 2 1
       49 JUMPIFNOT                        R2 ; [+22]
       50 GETTABLEKS                       R2 R0 K15 ["TransformedWorldCFrame"]
       52 GETIMPORT                        R4 K10 [CFrame.new]
       54 GETTABLEKS                       R5 R2 K11 ["Position"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R1 K12 ["Rotation"]
       59 MUL                              R3 R4 R5
       60 GETTABLEKS                       R5 R0 K8 ["Transform"]
       62 GETTABLEKS                       R6 R0 K15 ["TransformedWorldCFrame"]
       64 NAMECALL                         R6 R6 K13 ["Inverse"]
       66 CALL                             R6 1 1
       67 MUL                              R4 R5 R6
       68 MUL                              R5 R4 R3
       69 SETTABLEKS                       R5 R0 K8 ["Transform"]
       71 RETURN                           R0 0
       72 LOADK                            R4 K16 ["Attachment"]
       73 NAMECALL                         R2 R0 K1 ["IsA"]
       75 CALL                             R2 2 1
       76 JUMPIFNOT                        R2 ; [+21]
       77 GETTABLEKS                       R3 R0 K17 ["Parent"]
       79 GETTABLEKS                       R2 R3 K6 ["CFrame"]
       81 GETTABLEKS                       R3 R0 K18 ["WorldCFrame"]
       83 GETIMPORT                        R5 K10 [CFrame.new]
       85 GETTABLEKS                       R6 R3 K11 ["Position"]
       87 CALL                             R5 1 1
       88 GETTABLEKS                       R6 R1 K12 ["Rotation"]
       90 MUL                              R4 R5 R6
       91 NAMECALL                         R6 R2 K13 ["Inverse"]
       93 CALL                             R6 1 1
       94 MUL                              R5 R6 R4
       95 SETTABLEKS                       R5 R0 K6 ["CFrame"]
       97 RETURN                           R0 0
       98 LOADK                            R4 K19 ["AnimationConstraint"]
       99 NAMECALL                         R2 R0 K1 ["IsA"]
      101 CALL                             R2 2 1
      102 JUMPIFNOT                        R2 ; [+16]
      103 GETUPVAL                         R2 0
      104 CALL                             R2 0 1
      105 JUMPIFNOT                        R2 ; [+13]
      106 GETTABLEKS                       R2 R0 K8 ["Transform"]
      108 GETIMPORT                        R4 K10 [CFrame.new]
      110 GETTABLEKS                       R5 R2 K11 ["Position"]
      112 CALL                             R4 1 1
      113 GETTABLEKS                       R5 R1 K12 ["Rotation"]
      115 MUL                              R3 R4 R5
      116 SETTABLEKS                       R3 R0 K8 ["Transform"]
      118 RETURN                           R0 0
      119 GETIMPORT                        R2 K21 [warn]
      121 LOADK                            R3 K22 ["Invalid joint type"]
      122 CALL                             R2 1 0
      123 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getJointParent"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 LOADK                            R4 K1 ["Motor6D"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R3 R1 K3 ["C1"]
       13 NAMECALL                         R3 R3 K4 ["Inverse"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R5 R0 K5 ["C0"]
       18 GETTABLEKS                       R6 R0 K6 ["Transform"]
       20 MUL                              R4 R5 R6
       21 MUL                              R2 R3 R4
       22 RETURN                           R2 1
       23 GETTABLEKS                       R2 R0 K7 ["Part0"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       31 LOADK                            R5 K8 ["Motor6D.Part0 is nil"]
       32 GETIMPORT                        R3 K10 [assert]
       34 CALL                             R3 2 0
       35 GETTABLEKS                       R5 R2 K11 ["CFrame"]
       37 GETTABLEKS                       R6 R0 K5 ["C0"]
       39 MUL                              R4 R5 R6
       40 GETTABLEKS                       R5 R0 K6 ["Transform"]
       42 MUL                              R3 R4 R5
       43 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getJointParent"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+17]
        6 LOADK                            R5 K1 ["Motor6D"]
        7 NAMECALL                         R3 R2 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETTABLEKS                       R5 R0 K3 ["C0"]
       13 NAMECALL                         R5 R5 K4 ["Inverse"]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R2 K5 ["C1"]
       18 MUL                              R4 R5 R6
       19 MUL                              R3 R4 R1
       20 SETTABLEKS                       R3 R0 K6 ["Transform"]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R0 K7 ["Part0"]
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       31 LOADK                            R6 K8 ["Motor6D.Part0 is nil"]
       32 GETIMPORT                        R4 K10 [assert]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R6 R3 K11 ["CFrame"]
       37 GETTABLEKS                       R7 R0 K3 ["C0"]
       39 MUL                              R5 R6 R7
       40 NAMECALL                         R5 R5 K4 ["Inverse"]
       42 CALL                             R5 1 1
       43 MUL                              R4 R5 R1
       44 SETTABLEKS                       R4 R0 K6 ["Transform"]
       46 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+62]
        5 NEWTABLE                         R1 0 0
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R0
       10 JUMPIFNOT                        R3 ; [+23]
       11 LOADK                            R6 K0 ["Motor6D"]
       12 NAMECALL                         R4 R3 K1 ["IsA"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+18]
       16 GETTABLE                         R4 R2 R3
       17 JUMPIF                           R4 ; [+16]
       18 LOADB                            R4 1
       19 SETTABLE                         R4 R2 R3
       20 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       22 MOVE                             R5 R1
       23 MOVE                             R6 R3
       24 GETIMPORT                        R4 K4 [table.insert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K5 ["getJointParent"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 MOVE                             R3 R4
       33 JUMPBACK                         ; [-24]
       34 LENGTH                           R5 R1
       35 GETTABLE                         R4 R1 R5
       36 GETTABLEKS                       R5 R4 K6 ["Part0"]
       38 JUMPIFNOTEQKNIL                  R5 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       44 LOADK                            R8 K7 ["Motor6D.Part0 is nil"]
       45 GETIMPORT                        R6 K9 [assert]
       47 CALL                             R6 2 0
       48 GETTABLEKS                       R8 R5 K10 ["CFrame"]
       50 GETTABLEKS                       R9 R4 K11 ["C0"]
       52 MUL                              R7 R8 R9
       53 GETTABLEKS                       R8 R4 K12 ["Transform"]
       55 MUL                              R6 R7 R8
       56 LENGTH                           R10 R1
       57 SUBK                             R9 R10 K13 [1]
       58 LOADN                            R7 1
       59 LOADN                            R8 255
       60 FORNPREP                         R7
       61 GETUPVAL                         R10 1
       62 GETTABLE                         R11 R1 R9
       63 CALL                             R10 1 1
       64 MUL                              R6 R6 R10
       65 FORNLOOP                         R7
       66 RETURN                           R6 1
       67 LOADK                            R3 K14 ["Bone"]
       68 NAMECALL                         R1 R0 K1 ["IsA"]
       70 CALL                             R1 2 1
       71 JUMPIFNOT                        R1 ; [+3]
       72 GETTABLEKS                       R1 R0 K15 ["TransformedWorldCFrame"]
       74 RETURN                           R1 1
       75 LOADK                            R3 K16 ["Attachment"]
       76 NAMECALL                         R1 R0 K1 ["IsA"]
       78 CALL                             R1 2 1
       79 JUMPIFNOT                        R1 ; [+3]
       80 GETTABLEKS                       R1 R0 K17 ["WorldCFrame"]
       82 RETURN                           R1 1
       83 LOADK                            R3 K18 ["AnimationConstraint"]
       84 NAMECALL                         R1 R0 K1 ["IsA"]
       86 CALL                             R1 2 1
       87 JUMPIFNOT                        R1 ; [+29]
       88 GETUPVAL                         R1 2
       89 CALL                             R1 0 1
       90 JUMPIFNOT                        R1 ; [+26]
       91 GETUPVAL                         R1 3
       92 CALL                             R1 0 1
       93 JUMPIFNOT                        R1 ; [+12]
       94 GETTABLEKS                       R1 R0 K19 ["Attachment0"]
       96 JUMPIFNOT                        R1 ; [+20]
       97 GETTABLEKS                       R3 R0 K19 ["Attachment0"]
       99 GETTABLEKS                       R2 R3 K17 ["WorldCFrame"]
      101 GETTABLEKS                       R3 R0 K12 ["Transform"]
      103 MUL                              R1 R2 R3
      104 RETURN                           R1 1
      105 JUMP                             ; [+11]
      106 GETTABLEKS                       R1 R0 K20 ["Attachment1"]
      108 JUMPIFNOT                        R1 ; [+8]
      109 GETTABLEKS                       R3 R0 K20 ["Attachment1"]
      111 GETTABLEKS                       R2 R3 K17 ["WorldCFrame"]
      113 GETTABLEKS                       R3 R0 K12 ["Transform"]
      115 MUL                              R1 R2 R3
      116 RETURN                           R1 1
      117 GETIMPORT                        R1 K22 [warn]
      119 LOADK                            R2 K23 ["Invalid joint type"]
      120 CALL                             R1 1 0
      121 GETIMPORT                        R1 K25 [CFrame.identity]
      123 RETURN                           R1 1

PROTO_21:
        0 LOADK                            R4 K0 ["Motor6D"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+49]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["getJointParent"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+19]
       11 LOADK                            R5 K0 ["Motor6D"]
       12 NAMECALL                         R3 R2 K1 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+14]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K3 ["getGlobalCoordinateFrame"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 NAMECALL                         R4 R4 K4 ["Inverse"]
       23 CALL                             R4 1 1
       24 MUL                              R3 R4 R1
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R3 R0 K5 ["Part0"]
       32 JUMPIFNOTEQKNIL                  R3 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       38 LOADK                            R6 K6 ["Motor6D.Part0 is nil"]
       39 GETIMPORT                        R4 K8 [assert]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R6 R3 K9 ["CFrame"]
       44 GETTABLEKS                       R7 R0 K10 ["C0"]
       46 MUL                              R5 R6 R7
       47 NAMECALL                         R5 R5 K4 ["Inverse"]
       49 CALL                             R5 1 1
       50 MUL                              R4 R5 R1
       51 SETTABLEKS                       R4 R0 K11 ["Transform"]
       53 RETURN                           R0 0
       54 LOADK                            R4 K12 ["Bone"]
       55 NAMECALL                         R2 R0 K1 ["IsA"]
       57 CALL                             R2 2 1
       58 JUMPIFNOT                        R2 ; [+12]
       59 GETTABLEKS                       R3 R0 K11 ["Transform"]
       61 GETTABLEKS                       R4 R0 K13 ["TransformedWorldCFrame"]
       63 NAMECALL                         R4 R4 K4 ["Inverse"]
       65 CALL                             R4 1 1
       66 MUL                              R2 R3 R4
       67 MUL                              R3 R2 R1
       68 SETTABLEKS                       R3 R0 K11 ["Transform"]
       70 RETURN                           R0 0
       71 LOADK                            R4 K14 ["Attachment"]
       72 NAMECALL                         R2 R0 K1 ["IsA"]
       74 CALL                             R2 2 1
       75 JUMPIFNOT                        R2 ; [+11]
       76 GETTABLEKS                       R3 R0 K15 ["Parent"]
       78 GETTABLEKS                       R2 R3 K9 ["CFrame"]
       80 NAMECALL                         R4 R2 K4 ["Inverse"]
       82 CALL                             R4 1 1
       83 MUL                              R3 R4 R1
       84 SETTABLEKS                       R3 R0 K9 ["CFrame"]
       86 RETURN                           R0 0
       87 LOADK                            R4 K16 ["AnimationConstraint"]
       88 NAMECALL                         R2 R0 K1 ["IsA"]
       90 CALL                             R2 2 1
       91 JUMPIFNOT                        R2 ; [+34]
       92 GETUPVAL                         R2 2
       93 CALL                             R2 0 1
       94 JUMPIFNOT                        R2 ; [+31]
       95 GETUPVAL                         R2 3
       96 CALL                             R2 0 1
       97 JUMPIFNOT                        R2 ; [+14]
       98 GETTABLEKS                       R2 R0 K17 ["Attachment0"]
      100 JUMPIFNOT                        R2 ; [+29]
      101 GETTABLEKS                       R4 R0 K17 ["Attachment0"]
      103 GETTABLEKS                       R3 R4 K18 ["WorldCFrame"]
      105 NAMECALL                         R3 R3 K4 ["Inverse"]
      107 CALL                             R3 1 1
      108 MUL                              R2 R3 R1
      109 SETTABLEKS                       R2 R0 K11 ["Transform"]
      111 RETURN                           R0 0
      112 GETTABLEKS                       R2 R0 K19 ["Attachment1"]
      114 JUMPIFNOT                        R2 ; [+15]
      115 GETTABLEKS                       R3 R0 K19 ["Attachment1"]
      117 GETTABLEKS                       R2 R3 K18 ["WorldCFrame"]
      119 NAMECALL                         R4 R2 K4 ["Inverse"]
      121 CALL                             R4 1 1
      122 MUL                              R3 R4 R1
      123 SETTABLEKS                       R3 R0 K11 ["Transform"]
      125 RETURN                           R0 0
      126 GETIMPORT                        R2 K21 [warn]
      128 LOADK                            R3 K22 ["Invalid joint type"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_22:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Transform"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Bone"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R1 R0 K2 ["Transform"]
       15 RETURN                           R1 1
       16 LOADK                            R3 K4 ["Attachment"]
       17 NAMECALL                         R1 R0 K1 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R1 R0 K5 ["CFrame"]
       23 RETURN                           R1 1
       24 LOADK                            R3 K6 ["AnimationConstraint"]
       25 NAMECALL                         R1 R0 K1 ["IsA"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+6]
       29 GETUPVAL                         R1 0
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETTABLEKS                       R1 R0 K2 ["Transform"]
       34 RETURN                           R1 1
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_23:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["Motor6D"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+32]
        7 GETUPVAL                         R2 0
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+26]
       10 NAMECALL                         R2 R1 K2 ["ToAxisAngle"]
       12 CALL                             R2 1 2
       13 GETTABLEKS                       R4 R1 K3 ["Position"]
       15 JUMPIFNOTEQ                      R3 R3 ; [+19]
       17 GETTABLEKS                       R5 R4 K4 ["X"]
       19 GETTABLEKS                       R6 R4 K4 ["X"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+13]
       23 GETTABLEKS                       R5 R4 K5 ["Y"]
       25 GETTABLEKS                       R6 R4 K5 ["Y"]
       27 JUMPIFNOTEQ                      R5 R6 ; [+7]
       29 GETTABLEKS                       R5 R4 K6 ["Z"]
       31 GETTABLEKS                       R6 R4 K6 ["Z"]
       33 JUMPIFEQ                         R5 R6 ; [+2]
       35 RETURN                           R0 0
       36 SETTABLEKS                       R1 R0 K7 ["Transform"]
       38 RETURN                           R0 0
       39 LOADK                            R4 K8 ["Bone"]
       40 NAMECALL                         R2 R0 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+40]
       44 GETUPVAL                         R2 0
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+34]
       47 GETTABLEKS                       R2 R1 K3 ["Position"]
       49 NAMECALL                         R3 R1 K2 ["ToAxisAngle"]
       51 CALL                             R3 1 2
       52 JUMPIFNOTEQ                      R4 R4 ; [+8]
       54 MOVE                             R7 R3
       55 NAMECALL                         R5 R3 K9 ["Dot"]
       57 CALL                             R5 2 1
       58 LOADK                            R6 K10 [1E-10]
       59 JUMPIFNOTLT                      R5 R6 ; [+8]
       61 GETIMPORT                        R5 K13 [CFrame.new]
       63 MOVE                             R6 R2
       64 CALL                             R5 1 1
       65 SETTABLEKS                       R5 R0 K7 ["Transform"]
       67 RETURN                           R0 0
       68 GETIMPORT                        R6 K13 [CFrame.new]
       70 MOVE                             R7 R2
       71 CALL                             R6 1 1
       72 GETIMPORT                        R7 K15 [CFrame.fromAxisAngle]
       74 MOVE                             R8 R3
       75 MOVE                             R9 R4
       76 CALL                             R7 2 1
       77 MUL                              R5 R6 R7
       78 SETTABLEKS                       R5 R0 K7 ["Transform"]
       80 RETURN                           R0 0
       81 SETTABLEKS                       R1 R0 K7 ["Transform"]
       83 RETURN                           R0 0
       84 LOADK                            R4 K16 ["Attachment"]
       85 NAMECALL                         R2 R0 K1 ["IsA"]
       87 CALL                             R2 2 1
       88 JUMPIFNOT                        R2 ; [+3]
       89 SETTABLEKS                       R1 R0 K11 ["CFrame"]
       91 RETURN                           R0 0
       92 LOADK                            R4 K17 ["AnimationConstraint"]
       93 NAMECALL                         R2 R0 K1 ["IsA"]
       95 CALL                             R2 2 1
       96 JUMPIFNOT                        R2 ; [+5]
       97 GETUPVAL                         R2 1
       98 CALL                             R2 0 1
       99 JUMPIFNOT                        R2 ; [+2]
      100 SETTABLEKS                       R1 R0 K7 ["Transform"]
      102 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["allRigLabels"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["GetJoint"]
        9 CALL                             R7 2 1
       10 JUMPIFNOTEQ                      R7 R1 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-8]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R5 K3 [script]
        7 GETTABLEKS                       R4 R5 K4 ["Parent"]
        9 GETTABLEKS                       R3 R4 K5 ["Flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagAdaptiveAnimationConstraints"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K5 ["Flags"]
       22 GETTABLEKS                       R3 R4 K7 ["getFFlagAdaptiveAnimationConstraintsFix"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K1 [require]
       27 GETIMPORT                        R7 K3 [script]
       29 GETTABLEKS                       R6 R7 K4 ["Parent"]
       31 GETTABLEKS                       R5 R6 K5 ["Flags"]
       33 GETTABLEKS                       R4 R5 K8 ["getFFlagAdaptiveAnimationNaNFix"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K1 [require]
       38 GETIMPORT                        R8 K3 [script]
       40 GETTABLEKS                       R7 R8 K4 ["Parent"]
       42 GETTABLEKS                       R6 R7 K5 ["Flags"]
       44 GETTABLEKS                       R5 R6 K9 ["getFFlagAdaptiveAnimationSpineRename"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K11 [pcall]
       49 DUPCLOSURE                       R6 K12 [PROTO_0]
       50 CALL                             R5 1 2
       51 GETIMPORT                        R7 K11 [pcall]
       53 DUPCLOSURE                       R8 K13 [PROTO_1]
       54 CALL                             R7 1 2
       55 MOVE                             R9 R4
       56 CALL                             R9 0 1
       57 JUMPIFNOT                        R9 ; [+6]
       58 MOVE                             R9 R5
       59 JUMPIFNOT                        R9 ; [+4]
       60 JUMPIFNOTEQKNIL                  R6 ; [+2]
       62 LOADB                            R9 0 +1
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R0 K14 ["hasSpine"]
       66 GETTABLEKS                       R10 R0 K14 ["hasSpine"]
       68 JUMPIFNOT                        R10 ; [+2]
       69 MOVE                             R9 R6
       70 JUMP                             ; [+1]
       71 LOADNIL                          R9
       72 SETTABLEKS                       R9 R0 K15 ["spineLabel"]
       74 SETTABLEKS                       R7 R0 K16 ["hasPelvis"]
       76 JUMPIFNOT                        R5 ; [+3]
       77 GETIMPORT                        R9 K20 [Enum.RigLabel.LeftToeBase]
       79 JUMP                             ; [+2]
       80 GETIMPORT                        R9 K22 [Enum.RigLabel.LeftToes]
       82 JUMPIFNOT                        R5 ; [+3]
       83 GETIMPORT                        R10 K24 [Enum.RigLabel.RightToeBase]
       85 JUMP                             ; [+2]
       86 GETIMPORT                        R10 K26 [Enum.RigLabel.RightToes]
       88 SETTABLEKS                       R9 R0 K19 ["LeftToeBase"]
       90 SETTABLEKS                       R10 R0 K23 ["RightToeBase"]
       92 GETTABLEKS                       R12 R0 K14 ["hasSpine"]
       94 JUMPIFNOT                        R12 ; [+49]
       95 NEWTABLE                         R11 0 22
       97 GETIMPORT                        R12 K28 [Enum.RigLabel.Root]
       99 GETIMPORT                        R13 K30 [Enum.RigLabel.Waist]
      101 GETTABLEKS                       R14 R0 K15 ["spineLabel"]
      103 GETIMPORT                        R15 K32 [Enum.RigLabel.Chest]
      105 GETIMPORT                        R16 K34 [Enum.RigLabel.Neck]
      107 GETIMPORT                        R17 K36 [Enum.RigLabel.HeadBase]
      109 GETIMPORT                        R18 K38 [Enum.RigLabel.LeftClavicle]
      111 GETIMPORT                        R19 K40 [Enum.RigLabel.LeftShoulder]
      113 GETIMPORT                        R20 K42 [Enum.RigLabel.LeftElbow]
      115 GETIMPORT                        R21 K44 [Enum.RigLabel.LeftWrist]
      117 GETIMPORT                        R22 K46 [Enum.RigLabel.RightClavicle]
      119 GETIMPORT                        R23 K48 [Enum.RigLabel.RightShoulder]
      121 GETIMPORT                        R24 K50 [Enum.RigLabel.RightElbow]
      123 GETIMPORT                        R25 K52 [Enum.RigLabel.RightWrist]
      125 GETIMPORT                        R26 K54 [Enum.RigLabel.LeftHip]
      127 GETIMPORT                        R27 K56 [Enum.RigLabel.LeftKnee]
      129 SETLIST                          R11 R12 16 [1]
      131 GETIMPORT                        R12 K58 [Enum.RigLabel.LeftAnkle]
      133 MOVE                             R13 R9
      134 GETIMPORT                        R14 K60 [Enum.RigLabel.RightHip]
      136 GETIMPORT                        R15 K62 [Enum.RigLabel.RightKnee]
      138 GETIMPORT                        R16 K64 [Enum.RigLabel.RightAnkle]
      140 MOVE                             R17 R10
      141 SETLIST                          R11 R12 6 [17]
      143 JUMP                             ; [+96]
      144 JUMPIF                           R5 ; [+49]
      145 NEWTABLE                         R11 0 22
      147 GETIMPORT                        R12 K28 [Enum.RigLabel.Root]
      149 GETIMPORT                        R13 K66 [Enum.RigLabel.Pelvis]
      151 GETIMPORT                        R14 K30 [Enum.RigLabel.Waist]
      153 GETIMPORT                        R15 K32 [Enum.RigLabel.Chest]
      155 GETIMPORT                        R16 K34 [Enum.RigLabel.Neck]
      157 GETIMPORT                        R17 K36 [Enum.RigLabel.HeadBase]
      159 GETIMPORT                        R18 K38 [Enum.RigLabel.LeftClavicle]
      161 GETIMPORT                        R19 K40 [Enum.RigLabel.LeftShoulder]
      163 GETIMPORT                        R20 K42 [Enum.RigLabel.LeftElbow]
      165 GETIMPORT                        R21 K44 [Enum.RigLabel.LeftWrist]
      167 GETIMPORT                        R22 K46 [Enum.RigLabel.RightClavicle]
      169 GETIMPORT                        R23 K48 [Enum.RigLabel.RightShoulder]
      171 GETIMPORT                        R24 K50 [Enum.RigLabel.RightElbow]
      173 GETIMPORT                        R25 K52 [Enum.RigLabel.RightWrist]
      175 GETIMPORT                        R26 K54 [Enum.RigLabel.LeftHip]
      177 GETIMPORT                        R27 K56 [Enum.RigLabel.LeftKnee]
      179 SETLIST                          R11 R12 16 [1]
      181 GETIMPORT                        R12 K58 [Enum.RigLabel.LeftAnkle]
      183 MOVE                             R13 R9
      184 GETIMPORT                        R14 K60 [Enum.RigLabel.RightHip]
      186 GETIMPORT                        R15 K62 [Enum.RigLabel.RightKnee]
      188 GETIMPORT                        R16 K64 [Enum.RigLabel.RightAnkle]
      190 MOVE                             R17 R10
      191 SETLIST                          R11 R12 6 [17]
      193 JUMP                             ; [+46]
      194 NEWTABLE                         R11 0 21
      196 GETIMPORT                        R12 K28 [Enum.RigLabel.Root]
      198 GETIMPORT                        R13 K30 [Enum.RigLabel.Waist]
      200 GETIMPORT                        R14 K32 [Enum.RigLabel.Chest]
      202 GETIMPORT                        R15 K34 [Enum.RigLabel.Neck]
      204 GETIMPORT                        R16 K36 [Enum.RigLabel.HeadBase]
      206 GETIMPORT                        R17 K38 [Enum.RigLabel.LeftClavicle]
      208 GETIMPORT                        R18 K40 [Enum.RigLabel.LeftShoulder]
      210 GETIMPORT                        R19 K42 [Enum.RigLabel.LeftElbow]
      212 GETIMPORT                        R20 K44 [Enum.RigLabel.LeftWrist]
      214 GETIMPORT                        R21 K46 [Enum.RigLabel.RightClavicle]
      216 GETIMPORT                        R22 K48 [Enum.RigLabel.RightShoulder]
      218 GETIMPORT                        R23 K50 [Enum.RigLabel.RightElbow]
      220 GETIMPORT                        R24 K52 [Enum.RigLabel.RightWrist]
      222 GETIMPORT                        R25 K54 [Enum.RigLabel.LeftHip]
      224 GETIMPORT                        R26 K56 [Enum.RigLabel.LeftKnee]
      226 GETIMPORT                        R27 K58 [Enum.RigLabel.LeftAnkle]
      228 SETLIST                          R11 R12 16 [1]
      230 MOVE                             R12 R9
      231 GETIMPORT                        R13 K60 [Enum.RigLabel.RightHip]
      233 GETIMPORT                        R14 K62 [Enum.RigLabel.RightKnee]
      235 GETIMPORT                        R15 K64 [Enum.RigLabel.RightAnkle]
      237 MOVE                             R16 R10
      238 SETLIST                          R11 R12 5 [17]
      240 SETTABLEKS                       R11 R0 K67 ["bodyRigLabels"]
      242 GETIMPORT                        R11 K11 [pcall]
      244 DUPCLOSURE                       R12 K68 [PROTO_2]
      245 CALL                             R11 1 2
      246 JUMPIFNOT                        R11 ; [+36]
      247 JUMPIFNOT                        R12 ; [+35]
      248 NEWTABLE                         R13 0 15
      250 GETIMPORT                        R14 K70 [Enum.RigLabel.Thumb1]
      252 GETIMPORT                        R15 K72 [Enum.RigLabel.Thumb2]
      254 GETIMPORT                        R16 K74 [Enum.RigLabel.Thumb3]
      256 GETIMPORT                        R17 K76 [Enum.RigLabel.Index1]
      258 GETIMPORT                        R18 K78 [Enum.RigLabel.Index2]
      260 GETIMPORT                        R19 K80 [Enum.RigLabel.Index3]
      262 GETIMPORT                        R20 K82 [Enum.RigLabel.Middle1]
      264 GETIMPORT                        R21 K84 [Enum.RigLabel.Middle2]
      266 GETIMPORT                        R22 K86 [Enum.RigLabel.Middle3]
      268 GETIMPORT                        R23 K88 [Enum.RigLabel.Ring1]
      270 GETIMPORT                        R24 K90 [Enum.RigLabel.Ring2]
      272 GETIMPORT                        R25 K92 [Enum.RigLabel.Ring3]
      274 GETIMPORT                        R26 K94 [Enum.RigLabel.Pinky1]
      276 GETIMPORT                        R27 K96 [Enum.RigLabel.Pinky2]
      278 GETIMPORT                        R28 K98 [Enum.RigLabel.Pinky3]
      280 SETLIST                          R13 R14 15 [1]
      282 JUMP                             ; [+2]
      283 NEWTABLE                         R13 0 0
      285 SETTABLEKS                       R13 R0 K99 ["handRigLabels"]
      287 GETTABLEKS                       R13 R0 K67 ["bodyRigLabels"]
      289 SETTABLEKS                       R13 R0 K100 ["allRigLabels"]
      291 GETIMPORT                        R13 K103 [table.clone]
      293 GETTABLEKS                       R14 R0 K67 ["bodyRigLabels"]
      295 CALL                             R13 1 1
      296 SETTABLEKS                       R13 R0 K104 ["bodyAndHandRigLabels"]
      298 GETIMPORT                        R13 K106 [table.move]
      300 GETTABLEKS                       R14 R0 K99 ["handRigLabels"]
      302 LOADN                            R15 1
      303 GETTABLEKS                       R17 R0 K99 ["handRigLabels"]
      305 LENGTH                           R16 R17
      306 GETTABLEKS                       R19 R0 K104 ["bodyAndHandRigLabels"]
      308 LENGTH                           R18 R19
      309 ADDK                             R17 R18 K107 [1]
      310 GETTABLEKS                       R18 R0 K104 ["bodyAndHandRigLabels"]
      312 CALL                             R13 5 0
      313 DUPCLOSURE                       R13 K108 [PROTO_3]
      314 CAPTURE                          VAL R1
      315 SETTABLEKS                       R13 R0 K109 ["isValidTJoint"]
      317 DUPCLOSURE                       R13 K110 [PROTO_4]
      318 SETTABLEKS                       R13 R0 K111 ["startsWith"]
      320 DUPCLOSURE                       R13 K112 [PROTO_5]
      321 SETTABLEKS                       R13 R0 K113 ["endsWith"]
      323 DUPCLOSURE                       R13 K114 [PROTO_6]
      324 CAPTURE                          VAL R0
      325 SETTABLEKS                       R13 R0 K115 ["trimStart"]
      327 DUPCLOSURE                       R13 K116 [PROTO_7]
      328 CAPTURE                          VAL R0
      329 SETTABLEKS                       R13 R0 K117 ["trimEnd"]
      331 DUPCLOSURE                       R13 K118 [PROTO_8]
      332 SETTABLEKS                       R13 R0 K119 ["commonPrefix"]
      334 DUPCLOSURE                       R13 K120 [PROTO_9]
      335 CAPTURE                          VAL R0
      336 SETTABLEKS                       R13 R0 K121 ["commonSuffix"]
      338 DUPCLOSURE                       R13 K122 [PROTO_10]
      339 SETTABLEKS                       R13 R0 K123 ["remap"]
      341 DUPCLOSURE                       R13 K124 [PROTO_11]
      342 CAPTURE                          VAL R0
      343 SETTABLEKS                       R13 R0 K125 ["normalizePoints"]
      345 DUPCLOSURE                       R13 K126 [PROTO_12]
      346 SETTABLEKS                       R13 R0 K127 ["getDepth"]
      348 DUPCLOSURE                       R13 K128 [PROTO_14]
      349 CAPTURE                          VAL R1
      350 SETTABLEKS                       R13 R0 K129 ["getJointParent"]
      352 DUPCLOSURE                       R13 K130 [PROTO_15]
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R1
      355 SETTABLEKS                       R13 R0 K131 ["getJointPosition"]
      357 DUPCLOSURE                       R13 K132 [PROTO_16]
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R1
      360 SETTABLEKS                       R13 R0 K133 ["getJointRotation"]
      362 DUPCLOSURE                       R13 K134 [PROTO_17]
      363 CAPTURE                          VAL R1
      364 SETTABLEKS                       R13 R0 K135 ["setJointRotation"]
      366 DUPCLOSURE                       R13 K136 [PROTO_18]
      367 CAPTURE                          VAL R0
      368 DUPCLOSURE                       R14 K137 [PROTO_19]
      369 CAPTURE                          VAL R0
      370 DUPCLOSURE                       R15 K138 [PROTO_20]
      371 CAPTURE                          VAL R0
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R1
      374 CAPTURE                          VAL R2
      375 SETTABLEKS                       R15 R0 K139 ["getGlobalCoordinateFrame"]
      377 DUPCLOSURE                       R15 K140 [PROTO_21]
      378 CAPTURE                          VAL R0
      379 CAPTURE                          VAL R14
      380 CAPTURE                          VAL R1
      381 CAPTURE                          VAL R2
      382 SETTABLEKS                       R15 R0 K141 ["setGlobalCoordinateFrame"]
      384 DUPCLOSURE                       R15 K142 [PROTO_22]
      385 CAPTURE                          VAL R1
      386 SETTABLEKS                       R15 R0 K143 ["getJointTransform"]
      388 DUPCLOSURE                       R15 K144 [PROTO_23]
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R1
      391 SETTABLEKS                       R15 R0 K145 ["setJointTransform"]
      393 DUPCLOSURE                       R15 K146 [PROTO_24]
      394 CAPTURE                          VAL R0
      395 SETTABLEKS                       R15 R0 K147 ["getRigLabelForJoint"]
      397 RETURN                           R0 1
