PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["Inverse"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["XVector"]
        5 MUL                              R3 R1 R4
        6 GETTABLEKS                       R5 R2 K2 ["YVector"]
        8 MUL                              R4 R1 R5
        9 GETTABLEKS                       R6 R2 K3 ["ZVector"]
       11 MUL                              R5 R1 R6
       12 GETTABLEKS                       R10 R3 K4 ["X"]
       14 FASTCALL1                        MATH_ABS R10 ; [+2]
       15 GETIMPORT                        R9 K7 [math.abs]
       17 CALL                             R9 1 1
       18 GETTABLEKS                       R11 R3 K8 ["Y"]
       20 FASTCALL1                        MATH_ABS R11 ; [+2]
       21 GETIMPORT                        R10 K7 [math.abs]
       23 CALL                             R10 1 1
       24 ADD                              R8 R9 R10
       25 GETTABLEKS                       R10 R3 K9 ["Z"]
       27 FASTCALL1                        MATH_ABS R10 ; [+2]
       28 GETIMPORT                        R9 K7 [math.abs]
       30 CALL                             R9 1 1
       31 ADD                              R7 R8 R9
       32 GETTABLEKS                       R11 R4 K4 ["X"]
       34 FASTCALL1                        MATH_ABS R11 ; [+2]
       35 GETIMPORT                        R10 K7 [math.abs]
       37 CALL                             R10 1 1
       38 GETTABLEKS                       R12 R4 K8 ["Y"]
       40 FASTCALL1                        MATH_ABS R12 ; [+2]
       41 GETIMPORT                        R11 K7 [math.abs]
       43 CALL                             R11 1 1
       44 ADD                              R9 R10 R11
       45 GETTABLEKS                       R11 R4 K9 ["Z"]
       47 FASTCALL1                        MATH_ABS R11 ; [+2]
       48 GETIMPORT                        R10 K7 [math.abs]
       50 CALL                             R10 1 1
       51 ADD                              R8 R9 R10
       52 GETTABLEKS                       R12 R5 K4 ["X"]
       54 FASTCALL1                        MATH_ABS R12 ; [+2]
       55 GETIMPORT                        R11 K7 [math.abs]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R13 R5 K8 ["Y"]
       60 FASTCALL1                        MATH_ABS R13 ; [+2]
       61 GETIMPORT                        R12 K7 [math.abs]
       63 CALL                             R12 1 1
       64 ADD                              R10 R11 R12
       65 GETTABLEKS                       R12 R5 K9 ["Z"]
       67 FASTCALL1                        MATH_ABS R12 ; [+2]
       68 GETIMPORT                        R11 K7 [math.abs]
       70 CALL                             R11 1 1
       71 ADD                              R9 R10 R11
       72 FASTCALL                         VECTOR ; [+2]
       73 GETIMPORT                        R6 K12 [Vector3.new]
       75 CALL                             R6 3 1
       76 RETURN                           R6 1

PROTO_1:
        0 LOADK                            R2 K0 [∞]
        1 LOADK                            R3 K0 [∞]
        2 LOADK                            R4 K0 [∞]
        3 LOADK                            R5 K1 [-∞]
        4 LOADK                            R6 K1 [-∞]
        5 LOADK                            R7 K1 [-∞]
        6 MOVE                             R8 R0
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETTABLEKS                       R15 R12 K2 ["CFrame"]
       12 NAMECALL                         R13 R1 K3 ["ToObjectSpace"]
       14 CALL                             R13 2 1
       15 GETTABLEKS                       R14 R12 K4 ["Size"]
       17 GETTABLEKS                       R15 R14 K5 ["X"]
       19 GETTABLEKS                       R16 R14 K6 ["Y"]
       21 GETTABLEKS                       R17 R14 K7 ["Z"]
       23 NAMECALL                         R18 R13 K8 ["GetComponents"]
       25 CALL                             R18 1 12
       26 LOADK                            R31 K9 [0.5]
       27 FASTCALL1                        MATH_ABS R21 ; [+3]
       28 MOVE                             R36 R21
       29 GETIMPORT                        R35 K12 [math.abs]
       31 CALL                             R35 1 1
       32 MUL                              R34 R35 R15
       33 FASTCALL1                        MATH_ABS R22 ; [+3]
       34 MOVE                             R37 R22
       35 GETIMPORT                        R36 K12 [math.abs]
       37 CALL                             R36 1 1
       38 MUL                              R35 R36 R16
       39 ADD                              R33 R34 R35
       40 FASTCALL1                        MATH_ABS R23 ; [+3]
       41 MOVE                             R36 R23
       42 GETIMPORT                        R35 K12 [math.abs]
       44 CALL                             R35 1 1
       45 MUL                              R34 R35 R17
       46 ADD                              R32 R33 R34
       47 MUL                              R30 R31 R32
       48 LOADK                            R32 K9 [0.5]
       49 FASTCALL1                        MATH_ABS R24 ; [+3]
       50 MOVE                             R37 R24
       51 GETIMPORT                        R36 K12 [math.abs]
       53 CALL                             R36 1 1
       54 MUL                              R35 R36 R15
       55 FASTCALL1                        MATH_ABS R25 ; [+3]
       56 MOVE                             R38 R25
       57 GETIMPORT                        R37 K12 [math.abs]
       59 CALL                             R37 1 1
       60 MUL                              R36 R37 R16
       61 ADD                              R34 R35 R36
       62 FASTCALL1                        MATH_ABS R26 ; [+3]
       63 MOVE                             R37 R26
       64 GETIMPORT                        R36 K12 [math.abs]
       66 CALL                             R36 1 1
       67 MUL                              R35 R36 R17
       68 ADD                              R33 R34 R35
       69 MUL                              R31 R32 R33
       70 LOADK                            R33 K9 [0.5]
       71 FASTCALL1                        MATH_ABS R27 ; [+3]
       72 MOVE                             R38 R27
       73 GETIMPORT                        R37 K12 [math.abs]
       75 CALL                             R37 1 1
       76 MUL                              R36 R37 R15
       77 FASTCALL1                        MATH_ABS R28 ; [+3]
       78 MOVE                             R39 R28
       79 GETIMPORT                        R38 K12 [math.abs]
       81 CALL                             R38 1 1
       82 MUL                              R37 R38 R16
       83 ADD                              R35 R36 R37
       84 FASTCALL1                        MATH_ABS R29 ; [+3]
       85 MOVE                             R38 R29
       86 GETIMPORT                        R37 K12 [math.abs]
       88 CALL                             R37 1 1
       89 MUL                              R36 R37 R17
       90 ADD                              R34 R35 R36
       91 MUL                              R32 R33 R34
       92 SUB                              R33 R18 R30
       93 JUMPIFNOTLT                      R33 R2 ; [+2]
       95 SUB                              R2 R18 R30
       96 SUB                              R33 R19 R31
       97 JUMPIFNOTLT                      R33 R3 ; [+2]
       99 SUB                              R3 R19 R31
      100 SUB                              R33 R20 R32
      101 JUMPIFNOTLT                      R33 R4 ; [+2]
      103 SUB                              R4 R20 R32
      104 ADD                              R33 R18 R30
      105 JUMPIFNOTLT                      R5 R33 ; [+2]
      107 ADD                              R5 R18 R30
      108 ADD                              R33 R19 R31
      109 JUMPIFNOTLT                      R6 R33 ; [+2]
      111 ADD                              R6 R19 R31
      112 ADD                              R33 R20 R32
      113 JUMPIFNOTLT                      R7 R33 ; [+2]
      115 ADD                              R7 R20 R32
      116 FORGLOOP                         R8 2 ; [-107]
      118 SUB                              R9 R5 R2
      119 SUB                              R10 R6 R3
      120 SUB                              R11 R7 R4
      121 FASTCALL                         VECTOR ; [+2]
      122 GETIMPORT                        R8 K15 [Vector3.new]
      124 CALL                             R8 3 1
      125 ADD                              R11 R5 R2
      126 DIVK                             R10 R11 K16 [2]
      127 ADD                              R12 R6 R3
      128 DIVK                             R11 R12 K16 [2]
      129 ADD                              R13 R7 R4
      130 DIVK                             R12 R13 K16 [2]
      131 FASTCALL                         VECTOR ; [+2]
      132 GETIMPORT                        R9 K15 [Vector3.new]
      134 CALL                             R9 3 1
      135 MOVE                             R10 R9
      136 MOVE                             R11 R8
      137 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["axisAlignedBoxSize"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getAABoundingBox"]
        9 RETURN                           R0 1
