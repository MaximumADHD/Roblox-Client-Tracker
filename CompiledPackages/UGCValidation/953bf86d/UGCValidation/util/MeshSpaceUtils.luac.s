PROTO_0:
        0 DIVK                             R2 R1 K0 [2]
        1 MUL                              R3 R0 R2
        2 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Rotation"]
        2 NAMECALL                         R3 R3 K1 ["Inverse"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K0 ["Rotation"]
        7 MUL                              R2 R3 R4
        8 GETTABLEKS                       R4 R0 K0 ["Rotation"]
       10 NAMECALL                         R4 R4 K1 ["Inverse"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R6 R1 K2 ["Position"]
       15 GETTABLEKS                       R7 R0 K2 ["Position"]
       17 SUB                              R5 R6 R7
       18 MUL                              R3 R4 R5
       19 GETIMPORT                        R5 K5 [CFrame.new]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 1
       23 MUL                              R4 R5 R2
       24 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["min"]
        2 DIVK                             R5 R1 K1 [2]
        3 MUL                              R3 R4 R5
        4 GETTABLEKS                       R5 R0 K2 ["max"]
        6 DIVK                             R6 R1 K1 [2]
        7 MUL                              R4 R5 R6
        8 ADD                              R6 R3 R4
        9 MULK                             R5 R6 K3 [0.5]
       10 SUB                              R6 R4 R3
       11 ADD                              R7 R5 R2
       12 MOVE                             R8 R6
       13 RETURN                           R7 2

PROTO_3:
        0 ORK                              R3 R3 K0 [0.001]
        1 GETTABLEKS                       R5 R1 K1 ["cframe"]
        3 GETTABLEKS                       R6 R0 K2 ["CFrame"]
        5 MUL                              R4 R5 R6
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["calculateBoundsCenters"]
        9 GETTABLEKS                       R6 R1 K4 ["boundsData"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K5 ["calculateBoundsDimensions"]
       15 GETTABLEKS                       R7 R1 K4 ["boundsData"]
       17 CALL                             R6 1 1
       18 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       20 MOVE                             R8 R5
       21 LOADK                            R9 K6 ["meshCenterPos is nil"]
       22 GETIMPORT                        R7 K8 [assert]
       24 CALL                             R7 2 0
       25 FASTCALL2K                       ASSERT R6 K9 ; [+5]
       27 MOVE                             R8 R6
       28 LOADK                            R9 K9 ["meshDimensions is nil"]
       29 GETIMPORT                        R7 K8 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R8 R4 K10 ["Position"]
       34 SUB                              R7 R8 R5
       35 GETTABLEKS                       R9 R2 K11 ["min"]
       37 DIVK                             R10 R6 K12 [2]
       38 MUL                              R8 R9 R10
       39 GETTABLEKS                       R10 R2 K13 ["max"]
       41 DIVK                             R11 R6 K12 [2]
       42 MUL                              R9 R10 R11
       43 NEWTABLE                         R10 0 0
       45 NEWTABLE                         R11 0 3
       47 LOADK                            R14 K14 ["X"]
       48 LOADK                            R15 K15 ["Y"]
       49 LOADK                            R16 K16 ["Z"]
       50 SETLIST                          R11 R14 3 [1]
       52 LOADNIL                          R12
       53 LOADNIL                          R13
       54 FORGPREP                         R11
       55 NEWTABLE                         R16 0 0
       57 SETTABLE                         R16 R10 R15
       58 GETTABLE                         R16 R10 R15
       59 GETTABLE                         R17 R10 R15
       60 GETTABLE                         R19 R8 R15
       61 ADD                              R18 R19 R3
       62 GETTABLE                         R20 R9 R15
       63 SUB                              R19 R20 R3
       64 SETTABLEKS                       R18 R16 K11 ["min"]
       66 SETTABLEKS                       R19 R17 K13 ["max"]
       68 GETTABLE                         R17 R10 R15
       69 GETTABLEKS                       R16 R17 K11 ["min"]
       71 GETTABLE                         R18 R10 R15
       72 GETTABLEKS                       R17 R18 K13 ["max"]
       74 JUMPIFNOTLT                      R17 R16 ; [+11]
       76 GETTABLE                         R18 R8 R15
       77 GETTABLE                         R19 R9 R15
       78 ADD                              R17 R18 R19
       79 MULK                             R16 R17 K17 [0.5]
       80 GETTABLE                         R17 R10 R15
       81 GETTABLE                         R18 R10 R15
       82 SETTABLEKS                       R16 R17 K11 ["min"]
       84 SETTABLEKS                       R16 R18 K13 ["max"]
       86 FORGLOOP                         R11 2 ; [-32]
       88 GETTABLEKS                       R13 R7 K14 ["X"]
       90 GETTABLEKS                       R15 R10 K14 ["X"]
       92 GETTABLEKS                       R14 R15 K11 ["min"]
       94 GETTABLEKS                       R16 R10 K14 ["X"]
       96 GETTABLEKS                       R15 R16 K13 ["max"]
       98 FASTCALL                         MATH_CLAMP ; [+2]
       99 GETIMPORT                        R12 K20 [math.clamp]
      101 CALL                             R12 3 1
      102 GETTABLEKS                       R14 R7 K15 ["Y"]
      104 GETTABLEKS                       R16 R10 K15 ["Y"]
      106 GETTABLEKS                       R15 R16 K11 ["min"]
      108 GETTABLEKS                       R17 R10 K15 ["Y"]
      110 GETTABLEKS                       R16 R17 K13 ["max"]
      112 FASTCALL                         MATH_CLAMP ; [+2]
      113 GETIMPORT                        R13 K20 [math.clamp]
      115 CALL                             R13 3 1
      116 GETTABLEKS                       R15 R7 K16 ["Z"]
      118 GETTABLEKS                       R17 R10 K16 ["Z"]
      120 GETTABLEKS                       R16 R17 K11 ["min"]
      122 GETTABLEKS                       R18 R10 K16 ["Z"]
      124 GETTABLEKS                       R17 R18 K13 ["max"]
      126 FASTCALL                         MATH_CLAMP ; [+2]
      127 GETIMPORT                        R14 K20 [math.clamp]
      129 CALL                             R14 3 1
      130 FASTCALL                         VECTOR ; [+2]
      131 GETIMPORT                        R11 K23 [Vector3.new]
      133 CALL                             R11 3 1
      134 ADD                              R12 R5 R11
      135 GETTABLEKS                       R14 R4 K24 ["Rotation"]
      137 ADD                              R13 R14 R12
      138 GETTABLEKS                       R15 R1 K1 ["cframe"]
      140 GETTABLEKS                       R17 R15 K24 ["Rotation"]
      142 NAMECALL                         R17 R17 K25 ["Inverse"]
      144 CALL                             R17 1 1
      145 GETTABLEKS                       R18 R13 K24 ["Rotation"]
      147 MUL                              R16 R17 R18
      148 GETTABLEKS                       R18 R15 K24 ["Rotation"]
      150 NAMECALL                         R18 R18 K25 ["Inverse"]
      152 CALL                             R18 1 1
      153 GETTABLEKS                       R20 R13 K10 ["Position"]
      155 GETTABLEKS                       R21 R15 K10 ["Position"]
      157 SUB                              R19 R20 R21
      158 MUL                              R17 R18 R19
      159 GETIMPORT                        R18 K26 [CFrame.new]
      161 MOVE                             R19 R17
      162 CALL                             R18 1 1
      163 MUL                              R14 R18 R16
      164 RETURN                           R14 1

PROTO_4:
        0 GETTABLEKS                       R7 R0 K0 ["min"]
        2 DIVK                             R8 R2 K1 [2]
        3 MUL                              R6 R7 R8
        4 GETTABLEKS                       R8 R0 K2 ["max"]
        6 DIVK                             R9 R2 K1 [2]
        7 MUL                              R7 R8 R9
        8 ADD                              R9 R6 R7
        9 MULK                             R8 R9 K3 [0.5]
       10 SUB                              R9 R7 R6
       11 ADD                              R4 R8 R3
       12 MOVE                             R5 R9
       13 GETTABLEKS                       R7 R1 K4 ["cframe"]
       15 GETIMPORT                        R8 K7 [CFrame.new]
       17 MOVE                             R9 R4
       18 CALL                             R8 1 1
       19 GETTABLEKS                       R10 R7 K8 ["Rotation"]
       21 NAMECALL                         R10 R10 K9 ["Inverse"]
       23 CALL                             R10 1 1
       24 GETTABLEKS                       R11 R8 K8 ["Rotation"]
       26 MUL                              R9 R10 R11
       27 GETTABLEKS                       R11 R7 K8 ["Rotation"]
       29 NAMECALL                         R11 R11 K9 ["Inverse"]
       31 CALL                             R11 1 1
       32 GETTABLEKS                       R13 R8 K10 ["Position"]
       34 GETTABLEKS                       R14 R7 K10 ["Position"]
       36 SUB                              R12 R13 R14
       37 MUL                              R10 R11 R12
       38 GETIMPORT                        R11 K7 [CFrame.new]
       40 MOVE                             R12 R10
       41 CALL                             R11 1 1
       42 MUL                              R6 R11 R9
       43 MOVE                             R7 R5
       44 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["BoundsDataUtils"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 DUPCLOSURE                       R4 K8 [PROTO_1]
       18 DUPCLOSURE                       R5 K9 [PROTO_2]
       19 DUPCLOSURE                       R6 K10 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R6 R2 K11 ["clampAttachmentToBounds"]
       23 DUPCLOSURE                       R6 K12 [PROTO_4]
       24 SETTABLEKS                       R6 R2 K13 ["calculateAcceptableBoundsLocalSpace"]
       26 RETURN                           R2 1
