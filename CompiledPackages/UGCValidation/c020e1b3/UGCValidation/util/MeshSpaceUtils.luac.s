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
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R0
        5 CALL                             R6 1 1
        6 MUL                              R4 R5 R6
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["calculateBoundsCenters"]
       10 GETTABLEKS                       R6 R1 K3 ["boundsData"]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K4 ["calculateBoundsDimensions"]
       16 GETTABLEKS                       R7 R1 K3 ["boundsData"]
       18 CALL                             R6 1 1
       19 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       21 MOVE                             R8 R5
       22 LOADK                            R9 K5 ["meshCenterPos is nil"]
       23 GETIMPORT                        R7 K7 [assert]
       25 CALL                             R7 2 0
       26 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       28 MOVE                             R8 R6
       29 LOADK                            R9 K8 ["meshDimensions is nil"]
       30 GETIMPORT                        R7 K7 [assert]
       32 CALL                             R7 2 0
       33 GETTABLEKS                       R8 R4 K9 ["Position"]
       35 SUB                              R7 R8 R5
       36 GETTABLEKS                       R9 R2 K10 ["min"]
       38 DIVK                             R10 R6 K11 [2]
       39 MUL                              R8 R9 R10
       40 GETTABLEKS                       R10 R2 K12 ["max"]
       42 DIVK                             R11 R6 K11 [2]
       43 MUL                              R9 R10 R11
       44 NEWTABLE                         R10 0 0
       46 NEWTABLE                         R11 0 3
       48 LOADK                            R14 K13 ["X"]
       49 LOADK                            R15 K14 ["Y"]
       50 LOADK                            R16 K15 ["Z"]
       51 SETLIST                          R11 R14 3 [1]
       53 LOADNIL                          R12
       54 LOADNIL                          R13
       55 FORGPREP                         R11
       56 NEWTABLE                         R16 0 0
       58 SETTABLE                         R16 R10 R15
       59 GETTABLE                         R16 R10 R15
       60 GETTABLE                         R17 R10 R15
       61 GETTABLE                         R19 R8 R15
       62 ADD                              R18 R19 R3
       63 GETTABLE                         R20 R9 R15
       64 SUB                              R19 R20 R3
       65 SETTABLEKS                       R18 R16 K10 ["min"]
       67 SETTABLEKS                       R19 R17 K12 ["max"]
       69 GETTABLE                         R16 R10 R15
       70 GETTABLEKS                       R16 R16 K10 ["min"]
       72 GETTABLE                         R17 R10 R15
       73 GETTABLEKS                       R17 R17 K12 ["max"]
       75 JUMPIFNOTLT                      R17 R16 ; [+11]
       77 GETTABLE                         R18 R8 R15
       78 GETTABLE                         R19 R9 R15
       79 ADD                              R17 R18 R19
       80 MULK                             R16 R17 K16 [0.5]
       81 GETTABLE                         R17 R10 R15
       82 GETTABLE                         R18 R10 R15
       83 SETTABLEKS                       R16 R17 K10 ["min"]
       85 SETTABLEKS                       R16 R18 K12 ["max"]
       87 FORGLOOP                         R11 2 ; [-32]
       89 GETTABLEKS                       R13 R7 K13 ["X"]
       91 GETTABLEKS                       R14 R10 K13 ["X"]
       93 GETTABLEKS                       R14 R14 K10 ["min"]
       95 GETTABLEKS                       R15 R10 K13 ["X"]
       97 GETTABLEKS                       R15 R15 K12 ["max"]
       99 FASTCALL                         MATH_CLAMP ; [+2]
      100 GETIMPORT                        R12 K19 [math.clamp]
      102 CALL                             R12 3 1
      103 GETTABLEKS                       R14 R7 K14 ["Y"]
      105 GETTABLEKS                       R15 R10 K14 ["Y"]
      107 GETTABLEKS                       R15 R15 K10 ["min"]
      109 GETTABLEKS                       R16 R10 K14 ["Y"]
      111 GETTABLEKS                       R16 R16 K12 ["max"]
      113 FASTCALL                         MATH_CLAMP ; [+2]
      114 GETIMPORT                        R13 K19 [math.clamp]
      116 CALL                             R13 3 1
      117 GETTABLEKS                       R15 R7 K15 ["Z"]
      119 GETTABLEKS                       R16 R10 K15 ["Z"]
      121 GETTABLEKS                       R16 R16 K10 ["min"]
      123 GETTABLEKS                       R17 R10 K15 ["Z"]
      125 GETTABLEKS                       R17 R17 K12 ["max"]
      127 FASTCALL                         MATH_CLAMP ; [+2]
      128 GETIMPORT                        R14 K19 [math.clamp]
      130 CALL                             R14 3 1
      131 FASTCALL                         VECTOR ; [+2]
      132 GETIMPORT                        R11 K22 [Vector3.new]
      134 CALL                             R11 3 1
      135 ADD                              R12 R5 R11
      136 GETTABLEKS                       R14 R4 K23 ["Rotation"]
      138 ADD                              R13 R14 R12
      139 GETTABLEKS                       R15 R1 K1 ["cframe"]
      141 GETTABLEKS                       R17 R15 K23 ["Rotation"]
      143 NAMECALL                         R17 R17 K24 ["Inverse"]
      145 CALL                             R17 1 1
      146 GETTABLEKS                       R18 R13 K23 ["Rotation"]
      148 MUL                              R16 R17 R18
      149 GETTABLEKS                       R18 R15 K23 ["Rotation"]
      151 NAMECALL                         R18 R18 K24 ["Inverse"]
      153 CALL                             R18 1 1
      154 GETTABLEKS                       R20 R13 K9 ["Position"]
      156 GETTABLEKS                       R21 R15 K9 ["Position"]
      158 SUB                              R19 R20 R21
      159 MUL                              R17 R18 R19
      160 GETIMPORT                        R18 K26 [CFrame.new]
      162 MOVE                             R19 R17
      163 CALL                             R18 1 1
      164 MUL                              R14 R18 R16
      165 RETURN                           R14 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["BoundsDataUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["getAttachmentCFrameInPartSpace"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 2 0
       23 DUPCLOSURE                       R4 K8 [PROTO_0]
       24 DUPCLOSURE                       R5 K9 [PROTO_1]
       25 DUPCLOSURE                       R6 K10 [PROTO_2]
       26 DUPCLOSURE                       R7 K11 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R7 R3 K12 ["clampAttachmentToBounds"]
       31 DUPCLOSURE                       R7 K13 [PROTO_4]
       32 SETTABLEKS                       R7 R3 K14 ["calculateAcceptableBoundsLocalSpace"]
       34 RETURN                           R3 1
