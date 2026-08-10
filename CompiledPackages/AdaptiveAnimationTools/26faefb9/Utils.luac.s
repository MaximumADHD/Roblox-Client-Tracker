PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["Motor6D"]
        5 NAMECALL                         R1 R0 K1 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+9]
        9 LOADK                            R3 K2 ["Bone"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+4]
       14 LOADK                            R3 K3 ["AnimationConstraint"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startsWith"]
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["endsWith"]
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

PROTO_5:
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

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NAMECALL                         R7 R6 K0 ["reverse"]
        8 CALL                             R7 1 1
        9 SETTABLE                         R7 R1 R5
       10 FORGLOOP                         R2 2 ; [-5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["commonPrefix"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 NAMECALL                         R2 R2 K0 ["reverse"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_7:
        0 SUB                              R6 R0 R1
        1 SUB                              R7 R2 R1
        2 DIV                              R5 R6 R7
        3 SUB                              R8 R4 R3
        4 MUL                              R7 R5 R8
        5 ADD                              R6 R3 R7
        6 RETURN                           R6 1

PROTO_8:
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
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K12 ["remap"]
       55 GETTABLEKS                       R12 R9 K2 ["X"]
       57 MOVE                             R13 R1
       58 MOVE                             R14 R3
       59 LOADN                            R15 -1
       60 LOADN                            R16 1
       61 CALL                             R11 5 1
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K12 ["remap"]
       65 GETTABLEKS                       R13 R9 K8 ["Y"]
       67 MOVE                             R14 R2
       68 MOVE                             R15 R4
       69 LOADN                            R16 -1
       70 LOADN                            R17 1
       71 CALL                             R12 5 -1
       72 CALL                             R10 -1 1
       73 SETTABLE                         R10 R0 R8
       74 FORGLOOP                         R5 2 ; [-25]
       76 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       34 JUMPIFNOT                        R1 ; [+77]
       35 GETTABLEKS                       R1 R0 K3 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+10]
       38 GETTABLEKS                       R1 R0 K3 ["Parent"]
       40 LOADK                            R3 K4 ["Bone"]
       41 NAMECALL                         R1 R1 K1 ["IsA"]
       43 CALL                             R1 2 1
       44 JUMPIFNOT                        R1 ; [+3]
       45 GETTABLEKS                       R1 R0 K3 ["Parent"]
       47 RETURN                           R1 1
       48 GETUPVAL                         R1 0
       49 CALL                             R1 0 1
       50 JUMPIFNOT                        R1 ; [+102]
       51 GETTABLEKS                       R1 R0 K3 ["Parent"]
       53 JUMPIFNOT                        R1 ; [+99]
       54 LOADK                            R4 K5 ["BasePart"]
       55 NAMECALL                         R2 R1 K1 ["IsA"]
       57 CALL                             R2 2 1
       58 JUMPIFNOT                        R2 ; [+94]
       59 GETTABLEKS                       R2 R0 K6 ["TransformedWorldCFrame"]
       61 GETTABLEKS                       R2 R2 K7 ["Position"]
       63 LOADNIL                          R3
       64 LOADK                            R4 K8 [∞]
       65 LOADNIL                          R5
       66 NAMECALL                         R6 R1 K9 ["GetChildren"]
       68 CALL                             R6 1 3
       69 FORGPREP                         R6
       70 LOADK                            R13 K10 ["AnimationConstraint"]
       71 NAMECALL                         R11 R10 K1 ["IsA"]
       73 CALL                             R11 2 1
       74 JUMPIFNOT                        R11 ; [+19]
       75 GETTABLEKS                       R11 R10 K11 ["Attachment1"]
       77 JUMPIFNOT                        R11 ; [+27]
       78 GETTABLEKS                       R12 R11 K3 ["Parent"]
       80 JUMPIFNOTEQ                      R12 R1 ; [+24]
       82 GETTABLEKS                       R13 R11 K12 ["WorldCFrame"]
       84 GETTABLEKS                       R13 R13 K7 ["Position"]
       86 SUB                              R12 R13 R2
       87 GETTABLEKS                       R12 R12 K13 ["Magnitude"]
       89 JUMPIFNOTLT                      R12 R4 ; [+15]
       91 MOVE                             R3 R10
       92 MOVE                             R4 R12
       93 JUMP                             ; [+11]
       94 JUMPIF                           R5 ; [+10]
       95 LOADK                            R13 K0 ["Motor6D"]
       96 NAMECALL                         R11 R10 K1 ["IsA"]
       98 CALL                             R11 2 1
       99 JUMPIFNOT                        R11 ; [+5]
      100 GETTABLEKS                       R11 R10 K14 ["Part1"]
      102 JUMPIFNOTEQ                      R11 R1 ; [+2]
      104 MOVE                             R5 R10
      105 FORGLOOP                         R6 2 ; [-36]
      107 JUMPIFNOT                        R3 ; [+1]
      108 RETURN                           R3 1
      109 JUMPIFNOT                        R5 ; [+43]
      110 RETURN                           R5 1
      111 JUMP                             ; [+41]
      112 LOADK                            R3 K15 ["Attachment"]
      113 NAMECALL                         R1 R0 K1 ["IsA"]
      115 CALL                             R1 2 1
      116 JUMPIFNOT                        R1 ; [+14]
      117 GETTABLEKS                       R1 R0 K3 ["Parent"]
      119 JUMPIFNOT                        R1 ; [+33]
      120 GETTABLEKS                       R1 R0 K3 ["Parent"]
      122 LOADK                            R3 K15 ["Attachment"]
      123 NAMECALL                         R1 R1 K1 ["IsA"]
      125 CALL                             R1 2 1
      126 JUMPIFNOT                        R1 ; [+26]
      127 GETTABLEKS                       R1 R0 K3 ["Parent"]
      129 RETURN                           R1 1
      130 JUMP                             ; [+22]
      131 LOADK                            R3 K10 ["AnimationConstraint"]
      132 NAMECALL                         R1 R0 K1 ["IsA"]
      134 CALL                             R1 2 1
      135 JUMPIFNOT                        R1 ; [+17]
      136 GETTABLEKS                       R1 R0 K16 ["Attachment0"]
      138 JUMPIFNOT                        R1 ; [+14]
      139 GETTABLEKS                       R1 R0 K16 ["Attachment0"]
      141 GETTABLEKS                       R1 R1 K3 ["Parent"]
      143 JUMPIFNOT                        R1 ; [+8]
      144 GETTABLEKS                       R1 R0 K16 ["Attachment0"]
      146 GETTABLEKS                       R1 R1 K3 ["Parent"]
      148 LOADK                            R3 K10 ["AnimationConstraint"]
      149 NAMECALL                         R1 R1 K17 ["FindFirstChildWhichIsA"]
      151 CALL                             R1 2 1
      152 RETURN                           R1 1
      153 LOADNIL                          R1
      154 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["getGlobalCoordinateFrame"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K3 ["Position"]
       12 RETURN                           R2 1
       13 LOADK                            R3 K4 ["Bone"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R1 R0 K5 ["TransformedWorldCFrame"]
       20 GETTABLEKS                       R1 R1 K3 ["Position"]
       22 RETURN                           R1 1
       23 LOADK                            R3 K6 ["Attachment"]
       24 NAMECALL                         R1 R0 K1 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETTABLEKS                       R1 R0 K7 ["WorldCFrame"]
       30 GETTABLEKS                       R1 R1 K3 ["Position"]
       32 RETURN                           R1 1
       33 LOADK                            R3 K8 ["AnimationConstraint"]
       34 NAMECALL                         R1 R0 K1 ["IsA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+10]
       38 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       40 JUMPIFNOT                        R1 ; [+7]
       41 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       43 GETTABLEKS                       R1 R1 K7 ["WorldCFrame"]
       45 GETTABLEKS                       R1 R1 K3 ["Position"]
       47 RETURN                           R1 1
       48 GETIMPORT                        R1 K11 [warn]
       50 LOADK                            R2 K12 ["Invalid joint type"]
       51 CALL                             R1 1 0
       52 LOADK                            R1 K13 [{0, 0, 0}]
       53 RETURN                           R1 1

PROTO_13:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["getGlobalCoordinateFrame"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K3 ["Rotation"]
       12 RETURN                           R2 1
       13 LOADK                            R3 K4 ["Bone"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R1 R0 K5 ["TransformedWorldCFrame"]
       20 GETTABLEKS                       R1 R1 K3 ["Rotation"]
       22 RETURN                           R1 1
       23 LOADK                            R3 K6 ["Attachment"]
       24 NAMECALL                         R1 R0 K1 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETTABLEKS                       R1 R0 K7 ["WorldCFrame"]
       30 GETTABLEKS                       R1 R1 K3 ["Rotation"]
       32 RETURN                           R1 1
       33 LOADK                            R3 K8 ["AnimationConstraint"]
       34 NAMECALL                         R1 R0 K1 ["IsA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+10]
       38 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       40 JUMPIFNOT                        R1 ; [+7]
       41 GETTABLEKS                       R1 R0 K9 ["Attachment1"]
       43 GETTABLEKS                       R1 R1 K7 ["WorldCFrame"]
       45 GETTABLEKS                       R1 R1 K3 ["Rotation"]
       47 RETURN                           R1 1
       48 GETIMPORT                        R1 K11 [warn]
       50 LOADK                            R2 K12 ["Invalid joint type"]
       51 CALL                             R1 1 0
       52 GETIMPORT                        R1 K15 [CFrame.identity]
       54 RETURN                           R1 1

PROTO_14:
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
       77 GETTABLEKS                       R2 R0 K17 ["Parent"]
       79 GETTABLEKS                       R2 R2 K6 ["CFrame"]
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
      102 JUMPIFNOT                        R2 ; [+13]
      103 GETTABLEKS                       R2 R0 K8 ["Transform"]
      105 GETIMPORT                        R4 K10 [CFrame.new]
      107 GETTABLEKS                       R5 R2 K11 ["Position"]
      109 CALL                             R4 1 1
      110 GETTABLEKS                       R5 R1 K12 ["Rotation"]
      112 MUL                              R3 R4 R5
      113 SETTABLEKS                       R3 R0 K8 ["Transform"]
      115 RETURN                           R0 0
      116 GETIMPORT                        R2 K21 [warn]
      118 LOADK                            R3 K22 ["Invalid joint type"]
      119 CALL                             R2 1 0
      120 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getJointParent"]
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getJointParent"]
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

PROTO_17:
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
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K5 ["getJointParent"]
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
       59 LOADN                            R8 -1
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
       87 JUMPIFNOT                        R1 ; [+11]
       88 GETTABLEKS                       R1 R0 K19 ["Attachment0"]
       90 JUMPIFNOT                        R1 ; [+8]
       91 GETTABLEKS                       R2 R0 K19 ["Attachment0"]
       93 GETTABLEKS                       R2 R2 K17 ["WorldCFrame"]
       95 GETTABLEKS                       R3 R0 K12 ["Transform"]
       97 MUL                              R1 R2 R3
       98 RETURN                           R1 1
       99 GETIMPORT                        R1 K21 [warn]
      101 LOADK                            R2 K22 ["Invalid joint type"]
      102 CALL                             R1 1 0
      103 GETIMPORT                        R1 K24 [CFrame.identity]
      105 RETURN                           R1 1

PROTO_18:
        0 LOADK                            R4 K0 ["Motor6D"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+49]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getJointParent"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+19]
       11 LOADK                            R5 K0 ["Motor6D"]
       12 NAMECALL                         R3 R2 K1 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+14]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["getGlobalCoordinateFrame"]
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
       76 GETTABLEKS                       R2 R0 K15 ["Parent"]
       78 GETTABLEKS                       R2 R2 K9 ["CFrame"]
       80 NAMECALL                         R4 R2 K4 ["Inverse"]
       82 CALL                             R4 1 1
       83 MUL                              R3 R4 R1
       84 SETTABLEKS                       R3 R0 K9 ["CFrame"]
       86 RETURN                           R0 0
       87 LOADK                            R4 K16 ["AnimationConstraint"]
       88 NAMECALL                         R2 R0 K1 ["IsA"]
       90 CALL                             R2 2 1
       91 JUMPIFNOT                        R2 ; [+14]
       92 GETTABLEKS                       R2 R0 K17 ["Attachment0"]
       94 JUMPIFNOT                        R2 ; [+15]
       95 GETTABLEKS                       R3 R0 K17 ["Attachment0"]
       97 GETTABLEKS                       R3 R3 K18 ["WorldCFrame"]
       99 NAMECALL                         R3 R3 K4 ["Inverse"]
      101 CALL                             R3 1 1
      102 MUL                              R2 R3 R1
      103 SETTABLEKS                       R2 R0 K11 ["Transform"]
      105 RETURN                           R0 0
      106 GETIMPORT                        R2 K20 [warn]
      108 LOADK                            R3 K21 ["Invalid joint type"]
      109 CALL                             R2 1 0
      110 RETURN                           R0 0

PROTO_19:
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
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R1 R0 K2 ["Transform"]
       31 RETURN                           R1 1
       32 LOADNIL                          R1
       33 RETURN                           R1 1

PROTO_20:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["Motor6D"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+29]
        7 NAMECALL                         R2 R1 K2 ["ToAxisAngle"]
        9 CALL                             R2 1 2
       10 GETTABLEKS                       R4 R1 K3 ["Position"]
       12 JUMPIFNOTEQ                      R3 R3 ; [+19]
       14 GETTABLEKS                       R5 R4 K4 ["X"]
       16 GETTABLEKS                       R6 R4 K4 ["X"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+13]
       20 GETTABLEKS                       R5 R4 K5 ["Y"]
       22 GETTABLEKS                       R6 R4 K5 ["Y"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+7]
       26 GETTABLEKS                       R5 R4 K6 ["Z"]
       28 GETTABLEKS                       R6 R4 K6 ["Z"]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R0 K7 ["Transform"]
       35 RETURN                           R0 0
       36 LOADK                            R4 K8 ["Bone"]
       37 NAMECALL                         R2 R0 K1 ["IsA"]
       39 CALL                             R2 2 1
       40 JUMPIFNOT                        R2 ; [+34]
       41 GETTABLEKS                       R2 R1 K3 ["Position"]
       43 NAMECALL                         R3 R1 K2 ["ToAxisAngle"]
       45 CALL                             R3 1 2
       46 JUMPIFNOTEQ                      R4 R4 ; [+8]
       48 MOVE                             R7 R3
       49 NAMECALL                         R5 R3 K9 ["Dot"]
       51 CALL                             R5 2 1
       52 LOADK                            R6 K10 [1E-10]
       53 JUMPIFNOTLT                      R5 R6 ; [+8]
       55 GETIMPORT                        R5 K13 [CFrame.new]
       57 MOVE                             R6 R2
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R0 K7 ["Transform"]
       61 RETURN                           R0 0
       62 GETIMPORT                        R6 K13 [CFrame.new]
       64 MOVE                             R7 R2
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K15 [CFrame.fromAxisAngle]
       68 MOVE                             R8 R3
       69 MOVE                             R9 R4
       70 CALL                             R7 2 1
       71 MUL                              R5 R6 R7
       72 SETTABLEKS                       R5 R0 K7 ["Transform"]
       74 RETURN                           R0 0
       75 LOADK                            R4 K16 ["Attachment"]
       76 NAMECALL                         R2 R0 K1 ["IsA"]
       78 CALL                             R2 2 1
       79 JUMPIFNOT                        R2 ; [+3]
       80 SETTABLEKS                       R1 R0 K11 ["CFrame"]
       82 RETURN                           R0 0
       83 LOADK                            R4 K17 ["AnimationConstraint"]
       84 NAMECALL                         R2 R0 K1 ["IsA"]
       86 CALL                             R2 2 1
       87 JUMPIFNOT                        R2 ; [+2]
       88 SETTABLEKS                       R1 R0 K7 ["Transform"]
       90 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["allRigLabels"]
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
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagAdaptiveAnimationBoneAcBridge"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 22
       16 GETIMPORT                        R3 K10 [Enum.RigLabel.Root]
       18 GETIMPORT                        R4 K12 [Enum.RigLabel.Waist]
       20 GETIMPORT                        R5 K14 [Enum.RigLabel.Spine]
       22 GETIMPORT                        R6 K16 [Enum.RigLabel.Chest]
       24 GETIMPORT                        R7 K18 [Enum.RigLabel.Neck]
       26 GETIMPORT                        R8 K20 [Enum.RigLabel.HeadBase]
       28 GETIMPORT                        R9 K22 [Enum.RigLabel.LeftClavicle]
       30 GETIMPORT                        R10 K24 [Enum.RigLabel.LeftShoulder]
       32 GETIMPORT                        R11 K26 [Enum.RigLabel.LeftElbow]
       34 GETIMPORT                        R12 K28 [Enum.RigLabel.LeftWrist]
       36 GETIMPORT                        R13 K30 [Enum.RigLabel.RightClavicle]
       38 GETIMPORT                        R14 K32 [Enum.RigLabel.RightShoulder]
       40 GETIMPORT                        R15 K34 [Enum.RigLabel.RightElbow]
       42 GETIMPORT                        R16 K36 [Enum.RigLabel.RightWrist]
       44 GETIMPORT                        R17 K38 [Enum.RigLabel.LeftHip]
       46 GETIMPORT                        R18 K40 [Enum.RigLabel.LeftKnee]
       48 SETLIST                          R2 R3 16 [1]
       50 GETIMPORT                        R3 K42 [Enum.RigLabel.LeftAnkle]
       52 GETIMPORT                        R4 K44 [Enum.RigLabel.LeftToeBase]
       54 GETIMPORT                        R5 K46 [Enum.RigLabel.RightHip]
       56 GETIMPORT                        R6 K48 [Enum.RigLabel.RightKnee]
       58 GETIMPORT                        R7 K50 [Enum.RigLabel.RightAnkle]
       60 GETIMPORT                        R8 K52 [Enum.RigLabel.RightToeBase]
       62 SETLIST                          R2 R3 6 [17]
       64 SETTABLEKS                       R2 R0 K53 ["bodyRigLabels"]
       66 NEWTABLE                         R2 0 5
       68 NEWTABLE                         R3 0 3
       70 GETIMPORT                        R4 K55 [Enum.RigLabel.Thumb1]
       72 GETIMPORT                        R5 K57 [Enum.RigLabel.Thumb2]
       74 GETIMPORT                        R6 K59 [Enum.RigLabel.Thumb3]
       76 SETLIST                          R3 R4 3 [1]
       78 NEWTABLE                         R4 0 3
       80 GETIMPORT                        R5 K61 [Enum.RigLabel.Index1]
       82 GETIMPORT                        R6 K63 [Enum.RigLabel.Index2]
       84 GETIMPORT                        R7 K65 [Enum.RigLabel.Index3]
       86 SETLIST                          R4 R5 3 [1]
       88 NEWTABLE                         R5 0 3
       90 GETIMPORT                        R6 K67 [Enum.RigLabel.Middle1]
       92 GETIMPORT                        R7 K69 [Enum.RigLabel.Middle2]
       94 GETIMPORT                        R8 K71 [Enum.RigLabel.Middle3]
       96 SETLIST                          R5 R6 3 [1]
       98 NEWTABLE                         R6 0 3
      100 GETIMPORT                        R7 K73 [Enum.RigLabel.Ring1]
      102 GETIMPORT                        R8 K75 [Enum.RigLabel.Ring2]
      104 GETIMPORT                        R9 K77 [Enum.RigLabel.Ring3]
      106 SETLIST                          R6 R7 3 [1]
      108 NEWTABLE                         R7 0 3
      110 GETIMPORT                        R8 K79 [Enum.RigLabel.Pinky1]
      112 GETIMPORT                        R9 K81 [Enum.RigLabel.Pinky2]
      114 GETIMPORT                        R10 K83 [Enum.RigLabel.Pinky3]
      116 SETLIST                          R7 R8 3 [1]
      118 SETLIST                          R2 R3 5 [1]
      120 SETTABLEKS                       R2 R0 K84 ["fingerLabels"]
      122 NEWTABLE                         R2 0 0
      124 SETTABLEKS                       R2 R0 K85 ["handRigLabels"]
      126 GETTABLEKS                       R2 R0 K84 ["fingerLabels"]
      128 LOADNIL                          R3
      129 LOADNIL                          R4
      130 FORGPREP                         R2
      131 MOVE                             R7 R6
      132 LOADNIL                          R8
      133 LOADNIL                          R9
      134 FORGPREP                         R7
      135 GETTABLEKS                       R13 R0 K85 ["handRigLabels"]
      137 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      139 MOVE                             R14 R11
      140 GETIMPORT                        R12 K88 [table.insert]
      142 CALL                             R12 2 0
      143 FORGLOOP                         R7 2 ; [-9]
      145 FORGLOOP                         R2 2 ; [-15]
      147 GETTABLEKS                       R2 R0 K53 ["bodyRigLabels"]
      149 SETTABLEKS                       R2 R0 K89 ["allRigLabels"]
      151 GETIMPORT                        R2 K91 [table.clone]
      153 GETTABLEKS                       R3 R0 K53 ["bodyRigLabels"]
      155 CALL                             R2 1 1
      156 SETTABLEKS                       R2 R0 K92 ["bodyAndHandRigLabels"]
      158 GETIMPORT                        R2 K94 [table.move]
      160 GETTABLEKS                       R3 R0 K85 ["handRigLabels"]
      162 LOADN                            R4 1
      163 GETTABLEKS                       R6 R0 K85 ["handRigLabels"]
      165 LENGTH                           R5 R6
      166 GETTABLEKS                       R8 R0 K92 ["bodyAndHandRigLabels"]
      168 LENGTH                           R7 R8
      169 ADDK                             R6 R7 K95 [1]
      170 GETTABLEKS                       R7 R0 K92 ["bodyAndHandRigLabels"]
      172 CALL                             R2 5 0
      173 DUPCLOSURE                       R2 K96 [PROTO_0]
      174 SETTABLEKS                       R2 R0 K97 ["isValidTJoint"]
      176 DUPCLOSURE                       R2 K98 [PROTO_1]
      177 SETTABLEKS                       R2 R0 K99 ["startsWith"]
      179 DUPCLOSURE                       R2 K100 [PROTO_2]
      180 SETTABLEKS                       R2 R0 K101 ["endsWith"]
      182 DUPCLOSURE                       R2 K102 [PROTO_3]
      183 CAPTURE                          VAL R0
      184 SETTABLEKS                       R2 R0 K103 ["trimStart"]
      186 DUPCLOSURE                       R2 K104 [PROTO_4]
      187 CAPTURE                          VAL R0
      188 SETTABLEKS                       R2 R0 K105 ["trimEnd"]
      190 DUPCLOSURE                       R2 K106 [PROTO_5]
      191 SETTABLEKS                       R2 R0 K107 ["commonPrefix"]
      193 DUPCLOSURE                       R2 K108 [PROTO_6]
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R2 R0 K109 ["commonSuffix"]
      197 DUPCLOSURE                       R2 K110 [PROTO_7]
      198 SETTABLEKS                       R2 R0 K111 ["remap"]
      200 DUPCLOSURE                       R2 K112 [PROTO_8]
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R2 R0 K113 ["normalizePoints"]
      204 DUPCLOSURE                       R2 K114 [PROTO_9]
      205 SETTABLEKS                       R2 R0 K115 ["getDepth"]
      207 DUPCLOSURE                       R2 K116 [PROTO_11]
      208 CAPTURE                          VAL R1
      209 SETTABLEKS                       R2 R0 K117 ["getJointParent"]
      211 DUPCLOSURE                       R2 K118 [PROTO_12]
      212 CAPTURE                          VAL R0
      213 SETTABLEKS                       R2 R0 K119 ["getJointPosition"]
      215 DUPCLOSURE                       R2 K120 [PROTO_13]
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R2 R0 K121 ["getJointRotation"]
      219 DUPCLOSURE                       R2 K122 [PROTO_14]
      220 SETTABLEKS                       R2 R0 K123 ["setJointRotation"]
      222 DUPCLOSURE                       R2 K124 [PROTO_15]
      223 CAPTURE                          VAL R0
      224 DUPCLOSURE                       R3 K125 [PROTO_16]
      225 CAPTURE                          VAL R0
      226 DUPCLOSURE                       R4 K126 [PROTO_17]
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R2
      229 SETTABLEKS                       R4 R0 K127 ["getGlobalCoordinateFrame"]
      231 DUPCLOSURE                       R4 K128 [PROTO_18]
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R3
      234 SETTABLEKS                       R4 R0 K129 ["setGlobalCoordinateFrame"]
      236 DUPCLOSURE                       R4 K130 [PROTO_19]
      237 SETTABLEKS                       R4 R0 K131 ["getJointTransform"]
      239 DUPCLOSURE                       R4 K132 [PROTO_20]
      240 SETTABLEKS                       R4 R0 K133 ["setJointTransform"]
      242 DUPCLOSURE                       R4 K134 [PROTO_21]
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R4 R0 K135 ["getRigLabelForJoint"]
      246 RETURN                           R0 1
