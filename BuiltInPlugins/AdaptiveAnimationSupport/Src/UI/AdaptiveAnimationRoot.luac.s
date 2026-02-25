PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NAMECALL                         R2 R0 K1 ["ToEulerAnglesYXZ"]
        4 CALL                             R2 1 3
        5 GETIMPORT                        R6 K4 [CFrame.new]
        7 GETTABLEKS                       R8 R1 K5 ["X"]
        9 MINUS                            R7 R8
       10 GETTABLEKS                       R8 R1 K6 ["Y"]
       12 GETTABLEKS                       R9 R1 K7 ["Z"]
       14 CALL                             R6 3 1
       15 GETIMPORT                        R7 K9 [CFrame.fromEulerAnglesYXZ]
       17 MINUS                            R8 R2
       18 MOVE                             R9 R3
       19 MINUS                            R10 R4
       20 CALL                             R7 3 1
       21 MUL                              R5 R6 R7
       22 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 ADDK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["RunService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R0 R1 K4 ["Heartbeat"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K5 ["Connect"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["XVector"]
        2 GETTABLEKS                       R2 R0 K1 ["YVector"]
        4 GETTABLEKS                       R3 R0 K2 ["ZVector"]
        6 GETTABLEKS                       R6 R1 K3 ["X"]
        8 GETTABLEKS                       R7 R2 K4 ["Y"]
       10 ADD                              R5 R6 R7
       11 GETTABLEKS                       R6 R3 K5 ["Z"]
       13 ADD                              R4 R5 R6
       14 LOADN                            R6 255
       15 LOADN                            R8 1
       16 SUBK                             R10 R4 K7 [1]
       17 DIVK                             R9 R10 K6 [2]
       18 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       20 GETIMPORT                        R7 K10 [math.min]
       22 CALL                             R7 2 1
       23 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       25 GETIMPORT                        R5 K12 [math.max]
       27 CALL                             R5 2 1
       28 FASTCALL1                        MATH_ACOS R5 ; [+3]
       29 MOVE                             R7 R5
       30 GETIMPORT                        R6 K14 [math.acos]
       32 CALL                             R6 1 1
       33 LOADK                            R7 K15 [1E-08]
       34 JUMPIFNOTLT                      R6 R7 ; [+4]
       36 LOADK                            R7 K16 [{1, 0, 0}]
       37 LOADN                            R8 0
       38 RETURN                           R7 2
       39 FASTCALL1                        MATH_SIN R6 ; [+3]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R8 K18 [math.sin]
       43 CALL                             R8 1 1
       44 MULK                             R7 R8 K6 [2]
       45 GETTABLEKS                       R11 R3 K4 ["Y"]
       47 GETTABLEKS                       R12 R2 K5 ["Z"]
       49 SUB                              R10 R11 R12
       50 DIV                              R9 R10 R7
       51 GETTABLEKS                       R12 R1 K5 ["Z"]
       53 GETTABLEKS                       R13 R3 K3 ["X"]
       55 SUB                              R11 R12 R13
       56 DIV                              R10 R11 R7
       57 GETTABLEKS                       R13 R2 K3 ["X"]
       59 GETTABLEKS                       R14 R1 K4 ["Y"]
       61 SUB                              R12 R13 R14
       62 DIV                              R11 R12 R7
       63 FASTCALL                         VECTOR ; [+2]
       64 GETIMPORT                        R8 K21 [Vector3.new]
       66 CALL                             R8 3 1
       67 GETTABLEKS                       R9 R8 K22 ["Unit"]
       69 MOVE                             R10 R6
       70 RETURN                           R9 2

PROTO_5:
        0 SUB                              R4 R0 R1
        1 FASTCALL1                        MATH_ABS R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.abs]
        4 CALL                             R3 1 1
        5 LOADK                            R4 K3 [1E-06]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 LOADK                            R4 K1 [{0, 0, 0}]
        3 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K3 ["XVector"]
       11 GETTABLEKS                       R3 R0 K4 ["YVector"]
       13 GETTABLEKS                       R4 R0 K5 ["ZVector"]
       15 DUPCLOSURE                       R5 K6 [PROTO_5]
       16 GETTABLEKS                       R7 R2 K7 ["X"]
       18 SUBK                             R9 R7 K8 [1]
       19 FASTCALL1                        MATH_ABS R9 ; [+2]
       20 GETIMPORT                        R8 K11 [math.abs]
       22 CALL                             R8 1 1
       23 LOADK                            R9 K12 [1E-06]
       24 JUMPIFLT                         R8 R9 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 JUMPIFNOT                        R6 ; [+103]
       29 GETTABLEKS                       R7 R2 K13 ["Y"]
       31 SUBK                             R9 R7 K14 [0]
       32 FASTCALL1                        MATH_ABS R9 ; [+2]
       33 GETIMPORT                        R8 K11 [math.abs]
       35 CALL                             R8 1 1
       36 LOADK                            R9 K12 [1E-06]
       37 JUMPIFLT                         R8 R9 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 JUMPIFNOT                        R6 ; [+90]
       42 GETTABLEKS                       R7 R2 K15 ["Z"]
       44 SUBK                             R9 R7 K14 [0]
       45 FASTCALL1                        MATH_ABS R9 ; [+2]
       46 GETIMPORT                        R8 K11 [math.abs]
       48 CALL                             R8 1 1
       49 LOADK                            R9 K12 [1E-06]
       50 JUMPIFLT                         R8 R9 ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 JUMPIFNOT                        R6 ; [+77]
       55 GETTABLEKS                       R7 R3 K7 ["X"]
       57 SUBK                             R9 R7 K14 [0]
       58 FASTCALL1                        MATH_ABS R9 ; [+2]
       59 GETIMPORT                        R8 K11 [math.abs]
       61 CALL                             R8 1 1
       62 LOADK                            R9 K12 [1E-06]
       63 JUMPIFLT                         R8 R9 ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 JUMPIFNOT                        R6 ; [+64]
       68 GETTABLEKS                       R7 R3 K13 ["Y"]
       70 SUBK                             R9 R7 K8 [1]
       71 FASTCALL1                        MATH_ABS R9 ; [+2]
       72 GETIMPORT                        R8 K11 [math.abs]
       74 CALL                             R8 1 1
       75 LOADK                            R9 K12 [1E-06]
       76 JUMPIFLT                         R8 R9 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 JUMPIFNOT                        R6 ; [+51]
       81 GETTABLEKS                       R7 R3 K15 ["Z"]
       83 SUBK                             R9 R7 K14 [0]
       84 FASTCALL1                        MATH_ABS R9 ; [+2]
       85 GETIMPORT                        R8 K11 [math.abs]
       87 CALL                             R8 1 1
       88 LOADK                            R9 K12 [1E-06]
       89 JUMPIFLT                         R8 R9 ; [+2]
       91 LOADB                            R6 0 +1
       92 LOADB                            R6 1
       93 JUMPIFNOT                        R6 ; [+38]
       94 GETTABLEKS                       R7 R4 K7 ["X"]
       96 SUBK                             R9 R7 K14 [0]
       97 FASTCALL1                        MATH_ABS R9 ; [+2]
       98 GETIMPORT                        R8 K11 [math.abs]
      100 CALL                             R8 1 1
      101 LOADK                            R9 K12 [1E-06]
      102 JUMPIFLT                         R8 R9 ; [+2]
      104 LOADB                            R6 0 +1
      105 LOADB                            R6 1
      106 JUMPIFNOT                        R6 ; [+25]
      107 GETTABLEKS                       R7 R4 K13 ["Y"]
      109 SUBK                             R9 R7 K14 [0]
      110 FASTCALL1                        MATH_ABS R9 ; [+2]
      111 GETIMPORT                        R8 K11 [math.abs]
      113 CALL                             R8 1 1
      114 LOADK                            R9 K12 [1E-06]
      115 JUMPIFLT                         R8 R9 ; [+2]
      117 LOADB                            R6 0 +1
      118 LOADB                            R6 1
      119 JUMPIFNOT                        R6 ; [+12]
      120 GETTABLEKS                       R7 R4 K15 ["Z"]
      122 SUBK                             R9 R7 K8 [1]
      123 FASTCALL1                        MATH_ABS R9 ; [+2]
      124 GETIMPORT                        R8 K11 [math.abs]
      126 CALL                             R8 1 1
      127 LOADK                            R9 K12 [1E-06]
      128 JUMPIFLT                         R8 R9 ; [+2]
      130 LOADB                            R6 0 +1
      131 LOADB                            R6 1
      132 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 1
        2 SETTABLEKS                       R5 R4 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R4 R2
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["getJointTransform"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+5]
       13 GETUPVAL                         R5 0
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R5 K0 ["current"]
       17 RETURN                           R0 0
       18 MUL                              R5 R1 R4
       19 NAMECALL                         R7 R4 K2 ["Inverse"]
       21 CALL                             R7 1 1
       22 MUL                              R6 R7 R5
       23 LOADNIL                          R7
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R8 R11 K3 ["allRigLabels"]
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 GETUPVAL                         R13 2
       31 MOVE                             R15 R12
       32 NAMECALL                         R13 R13 K4 ["GetJoint"]
       34 CALL                             R13 2 1
       35 JUMPIFNOTEQ                      R13 R0 ; [+3]
       37 MOVE                             R7 R12
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R8 2 ; [-10]
       41 JUMPIFNOT                        R7 ; [+7]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R10 R7 K5 ["Name"]
       45 MOVE                             R11 R6
       46 NAMECALL                         R8 R8 K6 ["SetTposeAdjustment"]
       48 CALL                             R8 3 0
       49 GETUPVAL                         R8 3
       50 JUMPIFNOT                        R8 ; [+72]
       51 JUMPIFNOT                        R7 ; [+71]
       52 LOADNIL                          R8
       53 GETTABLEKS                       R9 R7 K5 ["Name"]
       55 LOADN                            R11 1
       56 LOADN                            R12 4
       57 NAMECALL                         R9 R9 K7 ["sub"]
       59 CALL                             R9 3 1
       60 JUMPIFNOTEQKS                    R9 K8 ["Left"] ; [+10]
       62 LOADK                            R9 K9 ["Right"]
       63 GETTABLEKS                       R10 R7 K5 ["Name"]
       65 LOADN                            R12 5
       66 NAMECALL                         R10 R10 K7 ["sub"]
       68 CALL                             R10 2 1
       69 CONCAT                           R8 R9 R10
       70 JUMP                             ; [+17]
       71 GETTABLEKS                       R9 R7 K5 ["Name"]
       73 LOADN                            R11 1
       74 LOADN                            R12 5
       75 NAMECALL                         R9 R9 K7 ["sub"]
       77 CALL                             R9 3 1
       78 JUMPIFNOTEQKS                    R9 K9 ["Right"] ; [+9]
       80 LOADK                            R9 K8 ["Left"]
       81 GETTABLEKS                       R10 R7 K5 ["Name"]
       83 LOADN                            R12 6
       84 NAMECALL                         R10 R10 K7 ["sub"]
       86 CALL                             R10 2 1
       87 CONCAT                           R8 R9 R10
       88 JUMPIFNOT                        R8 ; [+34]
       89 MOVE                             R9 R6
       90 LOADK                            R12 K10 ["Motor6D"]
       91 NAMECALL                         R10 R0 K11 ["IsA"]
       93 CALL                             R10 2 1
       94 JUMPIFNOT                        R10 ; [+22]
       95 GETTABLEKS                       R10 R6 K12 ["Position"]
       97 NAMECALL                         R11 R6 K13 ["ToEulerAnglesYXZ"]
       99 CALL                             R11 1 3
      100 GETIMPORT                        R14 K16 [CFrame.new]
      102 GETTABLEKS                       R16 R10 K17 ["X"]
      104 MINUS                            R15 R16
      105 GETTABLEKS                       R16 R10 K18 ["Y"]
      107 GETTABLEKS                       R17 R10 K19 ["Z"]
      109 CALL                             R14 3 1
      110 GETIMPORT                        R15 K21 [CFrame.fromEulerAnglesYXZ]
      112 MINUS                            R16 R11
      113 MOVE                             R17 R12
      114 MINUS                            R18 R13
      115 CALL                             R15 3 1
      116 MUL                              R9 R14 R15
      117 GETUPVAL                         R10 2
      118 MOVE                             R12 R8
      119 MOVE                             R13 R9
      120 NAMECALL                         R10 R10 K6 ["SetTposeAdjustment"]
      122 CALL                             R10 3 0
      123 GETUPVAL                         R8 0
      124 LOADB                            R9 0
      125 SETTABLEKS                       R9 R8 K0 ["current"]
      127 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 LOADB                            R6 1
        2 SETTABLEKS                       R6 R5 K0 ["current"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["current"]
        7 JUMPIFEQ                         R5 R3 ; [+9]
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 SETTABLEKS                       R6 R5 K0 ["current"]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R3 R5 K0 ["current"]
       17 JUMPIF                           R2 ; [+5]
       18 GETUPVAL                         R5 0
       19 LOADB                            R6 0
       20 SETTABLEKS                       R6 R5 K0 ["current"]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R5 R1 K1 ["Position"]
       25 JUMPIFEQKNIL                     R4 ; [+3]
       27 MOVE                             R6 R4
       28 JUMP                             ; [+31]
       29 LOADB                            R6 0
       30 GETTABLEKS                       R8 R5 K2 ["X"]
       32 FASTCALL1                        MATH_ABS R8 ; [+2]
       33 GETIMPORT                        R7 K5 [math.abs]
       35 CALL                             R7 1 1
       36 LOADK                            R8 K6 [1E-06]
       37 JUMPIFNOTLT                      R7 R8 ; [+22]
       39 LOADB                            R6 0
       40 GETTABLEKS                       R8 R5 K7 ["Y"]
       42 FASTCALL1                        MATH_ABS R8 ; [+2]
       43 GETIMPORT                        R7 K5 [math.abs]
       45 CALL                             R7 1 1
       46 LOADK                            R8 K6 [1E-06]
       47 JUMPIFNOTLT                      R7 R8 ; [+12]
       49 GETTABLEKS                       R8 R5 K8 ["Z"]
       51 FASTCALL1                        MATH_ABS R8 ; [+2]
       52 GETIMPORT                        R7 K5 [math.abs]
       54 CALL                             R7 1 1
       55 LOADK                            R8 K6 [1E-06]
       56 JUMPIFLT                         R7 R8 ; [+2]
       58 LOADB                            R6 0 +1
       59 LOADB                            R6 1
       60 LOADNIL                          R7
       61 JUMPIFNOT                        R6 ; [+18]
       62 GETUPVAL                         R8 3
       63 MOVE                             R9 R1
       64 CALL                             R8 1 2
       65 MOVE                             R12 R8
       66 NAMECALL                         R10 R2 K9 ["VectorToObjectSpace"]
       68 CALL                             R10 2 1
       69 GETIMPORT                        R11 K12 [CFrame.fromAxisAngle]
       71 MINUS                            R12 R10
       72 MOVE                             R13 R9
       73 CALL                             R11 2 1
       74 MUL                              R12 R2 R11
       75 NAMECALL                         R13 R2 K13 ["Inverse"]
       77 CALL                             R13 1 1
       78 MUL                              R7 R13 R12
       79 JUMP                             ; [+5]
       80 MUL                              R8 R1 R2
       81 NAMECALL                         R9 R2 K13 ["Inverse"]
       83 CALL                             R9 1 1
       84 MUL                              R7 R9 R8
       85 GETUPVAL                         R9 4
       86 GETTABLEKS                       R8 R9 K14 ["getRigLabelForJoint"]
       88 GETUPVAL                         R9 5
       89 MOVE                             R10 R0
       90 CALL                             R8 2 1
       91 JUMPIFNOT                        R8 ; [+12]
       92 MOVE                             R9 R3
       93 JUMPIF                           R9 ; [+3]
       94 GETIMPORT                        R9 K16 [CFrame.new]
       96 CALL                             R9 0 1
       97 MUL                              R10 R9 R7
       98 GETUPVAL                         R11 5
       99 MOVE                             R13 R8
      100 MOVE                             R14 R10
      101 NAMECALL                         R11 R11 K17 ["SetTposeAdjustment"]
      103 CALL                             R11 3 0
      104 GETUPVAL                         R9 6
      105 JUMPIFNOT                        R9 ; [+134]
      106 JUMPIFNOT                        R8 ; [+133]
      107 GETUPVAL                         R10 4
      108 GETTABLEKS                       R9 R10 K18 ["symmetryCounterparts"]
      110 JUMPIFNOT                        R9 ; [+4]
      111 GETUPVAL                         R11 4
      112 GETTABLEKS                       R10 R11 K18 ["symmetryCounterparts"]
      114 GETTABLE                         R9 R10 R8
      115 JUMPIFNOT                        R9 ; [+124]
      116 GETUPVAL                         R10 7
      117 MOVE                             R11 R7
      118 CALL                             R10 1 1
      119 JUMPIF                           R10 ; [+120]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R10 R11 K0 ["current"]
      123 GETTABLE                         R11 R10 R9
      124 JUMPIF                           R11 ; [+11]
      125 GETUPVAL                         R12 5
      126 MOVE                             R14 R9
      127 NAMECALL                         R12 R12 K19 ["GetTposeAdjustment"]
      129 CALL                             R12 2 1
      130 JUMPIF                           R12 ; [+3]
      131 GETIMPORT                        R12 K16 [CFrame.new]
      133 CALL                             R12 0 1
      134 MOVE                             R11 R12
      135 SETTABLE                         R11 R10 R9
      136 MOVE                             R12 R7
      137 LOADK                            R15 K20 ["Motor6D"]
      138 NAMECALL                         R13 R0 K21 ["IsA"]
      140 CALL                             R13 2 1
      141 JUMPIFNOT                        R13 ; [+24]
      142 MOVE                             R13 R7
      143 GETTABLEKS                       R14 R13 K1 ["Position"]
      145 NAMECALL                         R15 R13 K22 ["ToEulerAnglesYXZ"]
      147 CALL                             R15 1 3
      148 GETIMPORT                        R18 K16 [CFrame.new]
      150 GETTABLEKS                       R20 R14 K2 ["X"]
      152 MINUS                            R19 R20
      153 GETTABLEKS                       R20 R14 K7 ["Y"]
      155 GETTABLEKS                       R21 R14 K8 ["Z"]
      157 CALL                             R18 3 1
      158 GETIMPORT                        R19 K24 [CFrame.fromEulerAnglesYXZ]
      160 MINUS                            R20 R15
      161 MOVE                             R21 R16
      162 MINUS                            R22 R17
      163 CALL                             R19 3 1
      164 MUL                              R12 R18 R19
      165 JUMP                             ; [+67]
      166 GETUPVAL                         R13 5
      167 MOVE                             R15 R9
      168 NAMECALL                         R13 R13 K25 ["GetJoint"]
      170 CALL                             R13 2 1
      171 GETUPVAL                         R15 4
      172 GETTABLEKS                       R14 R15 K26 ["getJointTransform"]
      174 MOVE                             R15 R0
      175 CALL                             R14 1 1
      176 MOVE                             R15 R13
      177 JUMPIFNOT                        R15 ; [+5]
      178 GETUPVAL                         R16 4
      179 GETTABLEKS                       R15 R16 K26 ["getJointTransform"]
      181 MOVE                             R16 R13
      182 CALL                             R15 1 1
      183 JUMPIFNOT                        R14 ; [+49]
      184 JUMPIFNOT                        R15 ; [+48]
      185 GETUPVAL                         R16 5
      186 MOVE                             R18 R8
      187 NAMECALL                         R16 R16 K19 ["GetTposeAdjustment"]
      189 CALL                             R16 2 1
      190 JUMPIF                           R16 ; [+3]
      191 GETIMPORT                        R16 K16 [CFrame.new]
      193 CALL                             R16 0 1
      194 GETUPVAL                         R17 5
      195 MOVE                             R19 R9
      196 NAMECALL                         R17 R17 K19 ["GetTposeAdjustment"]
      198 CALL                             R17 2 1
      199 JUMPIF                           R17 ; [+3]
      200 GETIMPORT                        R17 K16 [CFrame.new]
      202 CALL                             R17 0 1
      203 NAMECALL                         R19 R16 K13 ["Inverse"]
      205 CALL                             R19 1 1
      206 MUL                              R18 R14 R19
      207 NAMECALL                         R20 R17 K13 ["Inverse"]
      209 CALL                             R20 1 1
      210 MUL                              R19 R15 R20
      211 GETTABLEKS                       R20 R18 K27 ["XVector"]
      213 GETTABLEKS                       R22 R19 K27 ["XVector"]
      215 NAMECALL                         R20 R20 K28 ["Dot"]
      217 CALL                             R20 2 1
      218 LOADN                            R22 0
      219 JUMPIFLT                         R20 R22 ; [+2]
      221 LOADB                            R21 0 +1
      222 LOADB                            R21 1
      223 JUMPIFNOT                        R21 ; [+9]
      224 GETIMPORT                        R22 K30 [CFrame.fromMatrix]
      226 LOADK                            R23 K31 [{0, 0, 0}]
      227 LOADK                            R24 K32 [{-1, 0, 0}]
      228 LOADK                            R25 K33 [{0, 1, 0}]
      229 LOADK                            R26 K34 [{0, 0, 1}]
      230 CALL                             R22 4 1
      231 MUL                              R23 R22 R7
      232 MUL                              R12 R23 R22
      233 MUL                              R13 R11 R12
      234 GETUPVAL                         R14 5
      235 MOVE                             R16 R9
      236 MOVE                             R17 R13
      237 NAMECALL                         R14 R14 K17 ["SetTposeAdjustment"]
      239 CALL                             R14 3 0
      240 GETUPVAL                         R9 0
      241 LOADB                            R10 0
      242 SETTABLEKS                       R10 R9 K0 ["current"]
      244 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K0 ["preview"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TPOSE_ADJUSTMENT_SUFFIX"]
        3 LENGTH                           R5 R1
        4 MINUS                            R4 R5
        5 NAMECALL                         R2 R0 K1 ["sub"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+26]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["current"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["applyTposeAdjustment"]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 5
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R2 5
       24 LOADN                            R4 0
       25 NAMECALL                         R2 R2 K4 ["StepAnimations"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R4 7
       30 NAMECALL                         R4 R4 K6 ["getValue"]
       32 CALL                             R4 1 1
       33 ADDK                             R3 R4 K5 [1]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 JUMPIFEQKS                       R0 K0 ["tpose"] ; [+23]
       10 GETUPVAL                         R0 3
       11 JUMPIFEQKS                       R0 K1 ["preview"] ; [+20]
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R0 R1 K2 ["clearTransforms"]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 1
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 2
       20 LOADN                            R2 0
       21 NAMECALL                         R0 R0 K3 ["StepAnimations"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 5
       25 GETUPVAL                         R2 6
       26 NAMECALL                         R2 R2 K5 ["getValue"]
       28 CALL                             R2 1 1
       29 ADDK                             R1 R2 K4 [1]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R0 R1 K6 ["Changed"]
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 NAMECALL                         R0 R0 K7 ["Connect"]
       46 CALL                             R0 2 1
       47 GETUPVAL                         R2 4
       48 GETTABLEKS                       R1 R2 K8 ["applyTposeAdjustment"]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R3 1
       52 CALL                             R1 2 0
       53 GETUPVAL                         R1 2
       54 JUMPIFNOT                        R1 ; [+5]
       55 GETUPVAL                         R1 2
       56 LOADN                            R3 0
       57 NAMECALL                         R1 R1 K3 ["StepAnimations"]
       59 CALL                             R1 2 0
       60 GETUPVAL                         R1 5
       61 GETUPVAL                         R3 6
       62 NAMECALL                         R3 R3 K5 ["getValue"]
       64 CALL                             R3 1 1
       65 ADDK                             R2 R3 K4 [1]
       66 CALL                             R1 1 0
       67 NEWCLOSURE                       R1 P1
       68 CAPTURE                          VAL R0
       69 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["allRigLabels"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFEQ                         R6 R1 ; [+14]
        8 GETUPVAL                         R7 1
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R7 K1 ["GetJoint"]
       12 CALL                             R7 2 1
       13 JUMPIFNOTEQ                      R7 R0 ; [+7]
       15 GETUPVAL                         R7 1
       16 MOVE                             R9 R6
       17 LOADNIL                          R10
       18 NAMECALL                         R7 R7 K2 ["SetJoint"]
       20 CALL                             R7 3 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 GETUPVAL                         R2 1
       24 MOVE                             R4 R1
       25 MOVE                             R5 R0
       26 NAMECALL                         R2 R2 K2 ["SetJoint"]
       28 CALL                             R2 3 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K3 ["addBoneMappingWaypoint"]
       32 GETTABLEKS                       R3 R0 K4 ["Name"]
       34 GETTABLEKS                       R4 R1 K4 ["Name"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 3
       38 LOADNIL                          R3
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 4
       41 LOADNIL                          R3
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R1 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R2 R5 K0 ["allRigLabels"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R9 R6
        9 NAMECALL                         R7 R7 K1 ["GetJoint"]
       11 CALL                             R7 2 1
       12 JUMPIFNOTEQ                      R7 R0 ; [+3]
       14 LOADB                            R1 1
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R2 2 ; [-10]
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 8
        2 NEWTABLE                         R1 0 2
        4 GETIMPORT                        R2 K3 [Enum.RigLabel.LeftClavicle]
        6 GETIMPORT                        R3 K5 [Enum.RigLabel.RightClavicle]
        8 SETLIST                          R1 R2 2 [1]
       10 NEWTABLE                         R2 0 2
       12 GETIMPORT                        R3 K7 [Enum.RigLabel.LeftShoulder]
       14 GETIMPORT                        R4 K9 [Enum.RigLabel.RightShoulder]
       16 SETLIST                          R2 R3 2 [1]
       18 NEWTABLE                         R3 0 2
       20 GETIMPORT                        R4 K11 [Enum.RigLabel.LeftElbow]
       22 GETIMPORT                        R5 K13 [Enum.RigLabel.RightElbow]
       24 SETLIST                          R3 R4 2 [1]
       26 NEWTABLE                         R4 0 2
       28 GETIMPORT                        R5 K15 [Enum.RigLabel.LeftWrist]
       30 GETIMPORT                        R6 K17 [Enum.RigLabel.RightWrist]
       32 SETLIST                          R4 R5 2 [1]
       34 NEWTABLE                         R5 0 2
       36 GETIMPORT                        R6 K19 [Enum.RigLabel.LeftHip]
       38 GETIMPORT                        R7 K21 [Enum.RigLabel.RightHip]
       40 SETLIST                          R5 R6 2 [1]
       42 NEWTABLE                         R6 0 2
       44 GETIMPORT                        R7 K23 [Enum.RigLabel.LeftKnee]
       46 GETIMPORT                        R8 K25 [Enum.RigLabel.RightKnee]
       48 SETLIST                          R6 R7 2 [1]
       50 NEWTABLE                         R7 0 2
       52 GETIMPORT                        R8 K27 [Enum.RigLabel.LeftAnkle]
       54 GETIMPORT                        R9 K29 [Enum.RigLabel.RightAnkle]
       56 SETLIST                          R7 R8 2 [1]
       58 NEWTABLE                         R8 0 2
       60 GETIMPORT                        R9 K31 [Enum.RigLabel.LeftToes]
       62 GETIMPORT                        R10 K33 [Enum.RigLabel.RightToes]
       64 SETLIST                          R8 R9 2 [1]
       66 SETLIST                          R0 R1 8 [1]
       68 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["addTPoseWaypoint"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEN                        R6 R5 1
       15 GETTABLEN                        R7 R5 2
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 JUMPIFNOTEQKS                    R0 K1 ["left"] ; [+4]
       20 MOVE                             R8 R6
       21 MOVE                             R9 R7
       22 JUMP                             ; [+2]
       23 MOVE                             R8 R7
       24 MOVE                             R9 R6
       25 GETUPVAL                         R10 1
       26 MOVE                             R12 R8
       27 NAMECALL                         R10 R10 K2 ["GetJoint"]
       29 CALL                             R10 2 1
       30 GETUPVAL                         R11 1
       31 MOVE                             R13 R9
       32 NAMECALL                         R11 R11 K2 ["GetJoint"]
       34 CALL                             R11 2 1
       35 JUMPIFNOT                        R10 ; [+108]
       36 GETUPVAL                         R13 4
       37 GETTABLEKS                       R12 R13 K3 ["isValidTJoint"]
       39 MOVE                             R13 R10
       40 CALL                             R12 1 1
       41 JUMPIFNOT                        R12 ; [+102]
       42 JUMPIFNOT                        R11 ; [+101]
       43 GETUPVAL                         R13 4
       44 GETTABLEKS                       R12 R13 K3 ["isValidTJoint"]
       46 MOVE                             R13 R11
       47 CALL                             R12 1 1
       48 JUMPIFNOT                        R12 ; [+95]
       49 GETUPVAL                         R13 4
       50 GETTABLEKS                       R12 R13 K4 ["getJointTransform"]
       52 MOVE                             R13 R10
       53 CALL                             R12 1 1
       54 GETUPVAL                         R14 4
       55 GETTABLEKS                       R13 R14 K4 ["getJointTransform"]
       57 MOVE                             R14 R11
       58 CALL                             R13 1 1
       59 JUMPIFNOT                        R12 ; [+84]
       60 JUMPIFNOT                        R13 ; [+83]
       61 GETUPVAL                         R14 1
       62 MOVE                             R16 R9
       63 NAMECALL                         R14 R14 K5 ["GetTposeAdjustment"]
       65 CALL                             R14 2 1
       66 NAMECALL                         R16 R14 K6 ["Inverse"]
       68 CALL                             R16 1 1
       69 MUL                              R15 R13 R16
       70 MOVE                             R16 R12
       71 LOADK                            R19 K7 ["Motor6D"]
       72 NAMECALL                         R17 R10 K8 ["IsA"]
       74 CALL                             R17 2 1
       75 JUMPIFNOT                        R17 ; [+23]
       76 GETTABLEKS                       R17 R12 K9 ["Position"]
       78 NAMECALL                         R18 R12 K10 ["ToEulerAnglesYXZ"]
       80 CALL                             R18 1 3
       81 GETIMPORT                        R21 K13 [CFrame.new]
       83 GETTABLEKS                       R23 R17 K14 ["X"]
       85 MINUS                            R22 R23
       86 GETTABLEKS                       R23 R17 K15 ["Y"]
       88 GETTABLEKS                       R24 R17 K16 ["Z"]
       90 CALL                             R21 3 1
       91 GETIMPORT                        R22 K18 [CFrame.fromEulerAnglesYXZ]
       93 MINUS                            R23 R18
       94 MOVE                             R24 R19
       95 MINUS                            R25 R20
       96 CALL                             R22 3 1
       97 MUL                              R16 R21 R22
       98 JUMP                             ; [+35]
       99 GETUPVAL                         R17 1
      100 MOVE                             R19 R8
      101 NAMECALL                         R17 R17 K5 ["GetTposeAdjustment"]
      103 CALL                             R17 2 1
      104 JUMPIF                           R17 ; [+3]
      105 GETIMPORT                        R17 K13 [CFrame.new]
      107 CALL                             R17 0 1
      108 NAMECALL                         R19 R17 K6 ["Inverse"]
      110 CALL                             R19 1 1
      111 MUL                              R18 R12 R19
      112 GETTABLEKS                       R19 R18 K19 ["XVector"]
      114 GETTABLEKS                       R21 R15 K19 ["XVector"]
      116 NAMECALL                         R19 R19 K20 ["Dot"]
      118 CALL                             R19 2 1
      119 LOADN                            R21 0
      120 JUMPIFLT                         R19 R21 ; [+2]
      122 LOADB                            R20 0 +1
      123 LOADB                            R20 1
      124 JUMPIFNOT                        R20 ; [+9]
      125 GETIMPORT                        R21 K22 [CFrame.fromMatrix]
      127 LOADK                            R22 K23 [{0, 0, 0}]
      128 LOADK                            R23 K24 [{-1, 0, 0}]
      129 LOADK                            R24 K25 [{0, 1, 0}]
      130 LOADK                            R25 K26 [{0, 0, 1}]
      131 CALL                             R21 4 1
      132 MUL                              R22 R21 R12
      133 MUL                              R16 R22 R21
      134 NAMECALL                         R18 R15 K6 ["Inverse"]
      136 CALL                             R18 1 1
      137 MUL                              R17 R18 R16
      138 GETUPVAL                         R18 1
      139 MOVE                             R20 R9
      140 MOVE                             R21 R17
      141 NAMECALL                         R18 R18 K27 ["SetTposeAdjustment"]
      143 CALL                             R18 3 0
      144 FORGLOOP                         R1 2 ; [-131]
      146 GETUPVAL                         R2 4
      147 GETTABLEKS                       R1 R2 K28 ["applyTposeAdjustment"]
      149 GETUPVAL                         R2 1
      150 GETUPVAL                         R3 0
      151 CALL                             R1 2 0
      152 GETUPVAL                         R1 5
      153 JUMPIFNOT                        R1 ; [+5]
      154 GETUPVAL                         R1 5
      155 LOADN                            R3 0
      156 NAMECALL                         R1 R1 K29 ["StepAnimations"]
      158 CALL                             R1 2 0
      159 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoMap"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["Automap"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["clearMapping"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["addWaypoint"]
       11 LOADK                            R1 K2 ["ClearMappings"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["enforceTpose"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["sampleTposeAdjustment"]
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 0
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K2 ["addTPoseWaypoint"]
       19 LOADK                            R1 K3 ["Enforce"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["clearTposeAdjustment"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["addTPoseWaypoint"]
       13 LOADK                            R1 K2 ["Reset"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_25]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["mapping"] ; [+100]
        3 NEWTABLE                         R0 0 3
        5 DUPTABLE                         R1 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
        6 LOADK                            R2 K7 ["Button"]
        7 SETTABLEKS                       R2 R1 K1 ["Type"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K8 ["localization"]
       12 LOADK                            R4 K9 ["Toolbar"]
       13 LOADK                            R5 K10 ["Automap"]
       14 NAMECALL                         R2 R2 K11 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K8 ["localization"]
       22 LOADK                            R4 K9 ["Toolbar"]
       23 LOADK                            R5 K12 ["AutomapTooltip"]
       24 NAMECALL                         R2 R2 K11 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K13 ["MAGIC"]
       32 SETTABLEKS                       R2 R1 K4 ["Icon"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 SETTABLEKS                       R2 R1 K5 ["OnClick"]
       41 DUPTABLE                         R2 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
       42 LOADK                            R3 K7 ["Button"]
       43 SETTABLEKS                       R3 R2 K1 ["Type"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K8 ["localization"]
       48 LOADK                            R5 K9 ["Toolbar"]
       49 LOADK                            R6 K14 ["ClearMappings"]
       50 NAMECALL                         R3 R3 K11 ["getText"]
       52 CALL                             R3 3 1
       53 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K8 ["localization"]
       58 LOADK                            R5 K9 ["Toolbar"]
       59 LOADK                            R6 K15 ["ClearMappingsTooltip"]
       60 NAMECALL                         R3 R3 K11 ["getText"]
       62 CALL                             R3 3 1
       63 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R3 R4 K16 ["RESET"]
       68 SETTABLEKS                       R3 R2 K4 ["Icon"]
       70 NEWCLOSURE                       R3 P1
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U6
       75 SETTABLEKS                       R3 R2 K5 ["OnClick"]
       77 DUPTABLE                         R3 K18 [{"Type", "Text", "Icon", "OnClick"}]
       78 LOADK                            R4 K19 ["TextButton"]
       79 SETTABLEKS                       R4 R3 K1 ["Type"]
       81 GETUPVAL                         R5 1
       82 GETTABLEKS                       R4 R5 K8 ["localization"]
       84 LOADK                            R6 K20 ["Mode"]
       85 LOADK                            R7 K21 ["Done"]
       86 NAMECALL                         R4 R4 K11 ["getText"]
       88 CALL                             R4 3 1
       89 SETTABLEKS                       R4 R3 K17 ["Text"]
       91 LOADK                            R4 K22 [""]
       92 SETTABLEKS                       R4 R3 K4 ["Icon"]
       94 NEWCLOSURE                       R4 P2
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U8
       97 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       99 SETLIST                          R0 R1 3 [1]
      101 RETURN                           R0 1
      102 GETUPVAL                         R0 0
      103 JUMPIFNOTEQKS                    R0 K23 ["tpose"] ; [+203]
      105 NEWTABLE                         R0 0 8
      107 DUPTABLE                         R1 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      108 LOADK                            R2 K7 ["Button"]
      109 SETTABLEKS                       R2 R1 K1 ["Type"]
      111 GETUPVAL                         R3 1
      112 GETTABLEKS                       R2 R3 K8 ["localization"]
      114 LOADK                            R4 K9 ["Toolbar"]
      115 LOADK                            R5 K24 ["EnforceTpose"]
      116 NAMECALL                         R2 R2 K11 ["getText"]
      118 CALL                             R2 3 1
      119 SETTABLEKS                       R2 R1 K2 ["Tooltip"]
      121 GETUPVAL                         R3 1
      122 GETTABLEKS                       R2 R3 K8 ["localization"]
      124 LOADK                            R4 K9 ["Toolbar"]
      125 LOADK                            R5 K25 ["EnforceTposeTooltip"]
      126 NAMECALL                         R2 R2 K11 ["getText"]
      128 CALL                             R2 3 1
      129 SETTABLEKS                       R2 R1 K3 ["TooltipDescription"]
      131 GETUPVAL                         R3 2
      132 GETTABLEKS                       R2 R3 K13 ["MAGIC"]
      134 SETTABLEKS                       R2 R1 K4 ["Icon"]
      136 NEWCLOSURE                       R2 P3
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          UPVAL U6
      141 SETTABLEKS                       R2 R1 K5 ["OnClick"]
      143 DUPTABLE                         R2 K6 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
      144 LOADK                            R3 K7 ["Button"]
      145 SETTABLEKS                       R3 R2 K1 ["Type"]
      147 GETUPVAL                         R4 1
      148 GETTABLEKS                       R3 R4 K8 ["localization"]
      150 LOADK                            R5 K9 ["Toolbar"]
      151 LOADK                            R6 K26 ["ResetTpose"]
      152 NAMECALL                         R3 R3 K11 ["getText"]
      154 CALL                             R3 3 1
      155 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
      157 GETUPVAL                         R4 1
      158 GETTABLEKS                       R3 R4 K8 ["localization"]
      160 LOADK                            R5 K9 ["Toolbar"]
      161 LOADK                            R6 K27 ["ResetTPoseTooltip"]
      162 NAMECALL                         R3 R3 K11 ["getText"]
      164 CALL                             R3 3 1
      165 SETTABLEKS                       R3 R2 K3 ["TooltipDescription"]
      167 GETUPVAL                         R4 2
      168 GETTABLEKS                       R3 R4 K16 ["RESET"]
      170 SETTABLEKS                       R3 R2 K4 ["Icon"]
      172 NEWCLOSURE                       R3 P4
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          UPVAL U6
      177 SETTABLEKS                       R3 R2 K5 ["OnClick"]
      179 DUPTABLE                         R3 K28 [{"Type", "Icon", "OnClick"}]
      180 LOADK                            R4 K29 ["Separator"]
      181 SETTABLEKS                       R4 R3 K1 ["Type"]
      183 LOADK                            R4 K22 [""]
      184 SETTABLEKS                       R4 R3 K4 ["Icon"]
      186 DUPCLOSURE                       R4 K30 [PROTO_24]
      187 SETTABLEKS                       R4 R3 K5 ["OnClick"]
      189 DUPTABLE                         R4 K32 [{"Type", "Tooltip", "Selected", "Icon", "OnClick"}]
      190 LOADK                            R5 K7 ["Button"]
      191 SETTABLEKS                       R5 R4 K1 ["Type"]
      193 GETUPVAL                         R6 9
      194 JUMPIFNOT                        R6 ; [+9]
      195 GETUPVAL                         R6 1
      196 GETTABLEKS                       R5 R6 K8 ["localization"]
      198 LOADK                            R7 K9 ["Toolbar"]
      199 LOADK                            R8 K33 ["SymmetryOn"]
      200 NAMECALL                         R5 R5 K11 ["getText"]
      202 CALL                             R5 3 1
      203 JUMPIF                           R5 ; [+8]
      204 GETUPVAL                         R6 1
      205 GETTABLEKS                       R5 R6 K8 ["localization"]
      207 LOADK                            R7 K9 ["Toolbar"]
      208 LOADK                            R8 K34 ["SymmetryOff"]
      209 NAMECALL                         R5 R5 K11 ["getText"]
      211 CALL                             R5 3 1
      212 SETTABLEKS                       R5 R4 K2 ["Tooltip"]
      214 GETUPVAL                         R5 9
      215 SETTABLEKS                       R5 R4 K31 ["Selected"]
      217 GETUPVAL                         R6 2
      218 GETTABLEKS                       R5 R6 K35 ["SYMMETRY"]
      220 SETTABLEKS                       R5 R4 K4 ["Icon"]
      222 NEWCLOSURE                       R5 P6
      223 CAPTURE                          UPVAL U10
      224 SETTABLEKS                       R5 R4 K5 ["OnClick"]
      226 DUPTABLE                         R5 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      227 LOADK                            R6 K7 ["Button"]
      228 SETTABLEKS                       R6 R5 K1 ["Type"]
      230 GETUPVAL                         R7 1
      231 GETTABLEKS                       R6 R7 K8 ["localization"]
      233 LOADK                            R8 K2 ["Tooltip"]
      234 LOADK                            R9 K37 ["MirrorLtoR"]
      235 NAMECALL                         R6 R6 K11 ["getText"]
      237 CALL                             R6 3 1
      238 SETTABLEKS                       R6 R5 K2 ["Tooltip"]
      240 GETUPVAL                         R7 2
      241 GETTABLEKS                       R6 R7 K38 ["MIRROR_TO_RIGHT"]
      243 SETTABLEKS                       R6 R5 K4 ["Icon"]
      245 NEWCLOSURE                       R6 P7
      246 CAPTURE                          UPVAL U11
      247 SETTABLEKS                       R6 R5 K5 ["OnClick"]
      249 DUPTABLE                         R6 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      250 LOADK                            R7 K7 ["Button"]
      251 SETTABLEKS                       R7 R6 K1 ["Type"]
      253 GETUPVAL                         R8 1
      254 GETTABLEKS                       R7 R8 K8 ["localization"]
      256 LOADK                            R9 K2 ["Tooltip"]
      257 LOADK                            R10 K39 ["MirrorRtoL"]
      258 NAMECALL                         R7 R7 K11 ["getText"]
      260 CALL                             R7 3 1
      261 SETTABLEKS                       R7 R6 K2 ["Tooltip"]
      263 GETUPVAL                         R8 2
      264 GETTABLEKS                       R7 R8 K40 ["MIRROR_TO_LEFT"]
      266 SETTABLEKS                       R7 R6 K4 ["Icon"]
      268 NEWCLOSURE                       R7 P8
      269 CAPTURE                          UPVAL U11
      270 SETTABLEKS                       R7 R6 K5 ["OnClick"]
      272 DUPTABLE                         R7 K41 [{"Type", "OnClick", "Icon"}]
      273 LOADK                            R8 K29 ["Separator"]
      274 SETTABLEKS                       R8 R7 K1 ["Type"]
      276 DUPCLOSURE                       R8 K42 [PROTO_29]
      277 SETTABLEKS                       R8 R7 K5 ["OnClick"]
      279 LOADK                            R8 K22 [""]
      280 SETTABLEKS                       R8 R7 K4 ["Icon"]
      282 DUPTABLE                         R8 K18 [{"Type", "Text", "Icon", "OnClick"}]
      283 LOADK                            R9 K19 ["TextButton"]
      284 SETTABLEKS                       R9 R8 K1 ["Type"]
      286 GETUPVAL                         R10 1
      287 GETTABLEKS                       R9 R10 K8 ["localization"]
      289 LOADK                            R11 K20 ["Mode"]
      290 LOADK                            R12 K21 ["Done"]
      291 NAMECALL                         R9 R9 K11 ["getText"]
      293 CALL                             R9 3 1
      294 SETTABLEKS                       R9 R8 K17 ["Text"]
      296 LOADK                            R9 K22 [""]
      297 SETTABLEKS                       R9 R8 K4 ["Icon"]
      299 NEWCLOSURE                       R9 P10
      300 CAPTURE                          UPVAL U7
      301 CAPTURE                          UPVAL U8
      302 SETTABLEKS                       R9 R8 K5 ["OnClick"]
      304 SETLIST                          R0 R1 8 [1]
      306 RETURN                           R0 1
      307 NEWTABLE                         R0 0 0
      309 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K0 ["GetJoint"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["restorePreviewPose"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 4
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 4
       13 LOADN                            R3 0
       14 NAMECALL                         R1 R1 K1 ["StepAnimations"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R1 K1 ["mapping"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADK                            R3 K1 ["preview"]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R1
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 3
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K0 ["useState"]
       16 LOADB                            R7 0
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 4
       19 MOVE                             R9 R1
       20 MOVE                             R10 R5
       21 CALL                             R8 2 0
       22 GETUPVAL                         R8 5
       23 MOVE                             R9 R2
       24 MOVE                             R10 R1
       25 MOVE                             R11 R4
       26 CALL                             R8 3 0
       27 GETUPVAL                         R8 6
       28 MOVE                             R9 R1
       29 GETTABLEKS                       R10 R0 K2 ["Plugin"]
       31 CALL                             R8 2 0
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K0 ["useState"]
       35 LOADNIL                          R9
       36 CALL                             R8 1 2
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R10 R11 K0 ["useState"]
       40 LOADNIL                          R11
       41 CALL                             R10 1 2
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R12 R13 K0 ["useState"]
       45 LOADB                            R13 1
       46 CALL                             R12 1 2
       47 GETUPVAL                         R15 1
       48 GETTABLEKS                       R14 R15 K3 ["useBinding"]
       50 LOADN                            R15 0
       51 CALL                             R14 1 2
       52 GETUPVAL                         R17 1
       53 GETTABLEKS                       R16 R17 K4 ["useRef"]
       55 LOADB                            R17 0
       56 CALL                             R16 1 1
       57 GETUPVAL                         R18 1
       58 GETTABLEKS                       R17 R18 K4 ["useRef"]
       60 NEWTABLE                         R18 0 0
       62 CALL                             R17 1 1
       63 GETUPVAL                         R19 1
       64 GETTABLEKS                       R18 R19 K4 ["useRef"]
       66 LOADNIL                          R19
       67 CALL                             R18 1 1
       68 GETUPVAL                         R20 1
       69 GETTABLEKS                       R19 R20 K4 ["useRef"]
       71 LOADNIL                          R20
       72 CALL                             R19 1 1
       73 GETUPVAL                         R21 1
       74 GETTABLEKS                       R20 R21 K5 ["useEffect"]
       76 NEWCLOSURE                       R21 P0
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R14
       80 NEWTABLE                         R22 0 1
       82 MOVE                             R23 R6
       83 SETLIST                          R22 R23 1 [1]
       85 CALL                             R20 2 0
       86 DUPCLOSURE                       R20 K6 [PROTO_4]
       87 DUPCLOSURE                       R21 K7 [PROTO_6]
       88 GETUPVAL                         R23 1
       89 GETTABLEKS                       R22 R23 K8 ["useCallback"]
       91 NEWCLOSURE                       R23 P3
       92 CAPTURE                          VAL R16
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R12
       96 NEWTABLE                         R24 0 2
       98 MOVE                             R25 R1
       99 MOVE                             R26 R12
      100 SETLIST                          R24 R25 2 [1]
      102 CALL                             R22 2 1
      103 GETUPVAL                         R24 1
      104 GETTABLEKS                       R23 R24 K8 ["useCallback"]
      106 NEWCLOSURE                       R24 P4
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R20
      111 CAPTURE                          UPVAL U7
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R21
      115 NEWTABLE                         R25 0 2
      117 MOVE                             R26 R1
      118 MOVE                             R27 R12
      119 SETLIST                          R25 R26 2 [1]
      121 CALL                             R23 2 1
      122 GETUPVAL                         R24 8
      123 MOVE                             R25 R8
      124 MOVE                             R26 R1
      125 MOVE                             R27 R12
      126 GETUPVAL                         R29 9
      127 CALL                             R29 0 1
      128 JUMPIFNOT                        R29 ; [+2]
      129 MOVE                             R28 R23
      130 JUMP                             ; [+1]
      131 MOVE                             R28 R22
      132 CALL                             R24 4 1
      133 GETUPVAL                         R26 1
      134 GETTABLEKS                       R25 R26 K5 ["useEffect"]
      136 NEWCLOSURE                       R26 P5
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R17
      141 NEWTABLE                         R27 0 1
      143 MOVE                             R28 R1
      144 SETLIST                          R27 R28 1 [1]
      146 CALL                             R25 2 0
      147 GETUPVAL                         R26 1
      148 GETTABLEKS                       R25 R26 K5 ["useEffect"]
      150 NEWCLOSURE                       R26 P6
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R2
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R14
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          VAL R16
      160 NEWTABLE                         R27 0 3
      162 MOVE                             R28 R2
      163 MOVE                             R29 R1
      164 MOVE                             R30 R5
      165 SETLIST                          R27 R28 3 [1]
      167 CALL                             R25 2 0
      168 GETUPVAL                         R26 1
      169 GETTABLEKS                       R25 R26 K5 ["useEffect"]
      171 NEWCLOSURE                       R26 P7
      172 CAPTURE                          VAL R17
      173 NEWTABLE                         R27 0 3
      175 MOVE                             R28 R8
      176 MOVE                             R29 R12
      177 MOVE                             R30 R2
      178 SETLIST                          R27 R28 3 [1]
      180 CALL                             R25 2 0
      181 NEWCLOSURE                       R25 P8
      182 CAPTURE                          UPVAL U7
      183 CAPTURE                          VAL R1
      184 CAPTURE                          UPVAL U11
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R11
      187 NEWCLOSURE                       R26 P9
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R9
      191 NEWCLOSURE                       R27 P10
      192 CAPTURE                          UPVAL U7
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R9
      195 GETUPVAL                         R29 1
      196 GETTABLEKS                       R28 R29 K9 ["useMemo"]
      198 DUPCLOSURE                       R29 K10 [PROTO_17]
      199 NEWTABLE                         R30 0 0
      201 CALL                             R28 2 1
      202 NEWCLOSURE                       R29 P12
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R1
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          VAL R28
      207 CAPTURE                          UPVAL U7
      208 CAPTURE                          VAL R5
      209 GETUPVAL                         R31 1
      210 GETTABLEKS                       R30 R31 K9 ["useMemo"]
      212 NEWCLOSURE                       R31 P13
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U10
      216 CAPTURE                          VAL R4
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          VAL R1
      219 CAPTURE                          UPVAL U11
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R29
      225 NEWTABLE                         R32 0 3
      227 MOVE                             R33 R2
      228 JUMPIFNOT                        R12 ; [+2]
      229 LOADK                            R34 K11 ["y"]
      230 JUMP                             ; [+1]
      231 LOADK                            R34 K12 ["n"]
      232 MOVE                             R35 R1
      233 SETLIST                          R32 R33 3 [1]
      235 CALL                             R30 2 1
      236 GETUPVAL                         R32 1
      237 GETTABLEKS                       R31 R32 K13 ["createElement"]
      239 GETUPVAL                         R33 1
      240 GETTABLEKS                       R32 R33 K14 ["Fragment"]
      242 LOADNIL                          R33
      243 DUPTABLE                         R34 K21 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      244 MOVE                             R35 R4
      245 JUMPIFNOT                        R35 ; [+38]
      246 MOVE                             R35 R1
      247 JUMPIFNOT                        R35 ; [+36]
      248 GETUPVAL                         R36 1
      249 GETTABLEKS                       R35 R36 K13 ["createElement"]
      251 GETUPVAL                         R36 12
      252 DUPTABLE                         R37 K29 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "isPlayingAnimation"}]
      253 SETTABLEKS                       R4 R37 K22 ["rigModel"]
      255 SETTABLEKS                       R1 R37 K23 ["rigDescriptor"]
      257 SETTABLEKS                       R8 R37 K24 ["selectedJointInstance"]
      259 JUMPIFNOTEQKS                    R2 K30 ["mapping"] ; [+3]
      261 MOVE                             R38 R26
      262 JUMP                             ; [+5]
      263 JUMPIFNOTEQKS                    R2 K31 ["tpose"] ; [+3]
      265 MOVE                             R38 R27
      266 JUMP                             ; [+1]
      267 LOADNIL                          R38
      268 SETTABLEKS                       R38 R37 K25 ["onJointClicked"]
      270 LOADB                            R38 1
      271 JUMPIFEQKS                       R2 K1 ["preview"] ; [+5]
      273 JUMPIFEQKS                       R2 K31 ["tpose"] ; [+2]
      275 LOADB                            R38 0 +1
      276 LOADB                            R38 1
      277 SETTABLEKS                       R38 R37 K26 ["applyTposeAdjustment"]
      279 SETTABLEKS                       R14 R37 K27 ["updatePositions"]
      281 SETTABLEKS                       R6 R37 K28 ["isPlayingAnimation"]
      283 CALL                             R35 2 1
      284 SETTABLEKS                       R35 R34 K15 ["Adornments"]
      286 LOADB                            R35 0
      287 LENGTH                           R36 R30
      288 LOADN                            R37 0
      289 JUMPIFNOTLT                      R37 R36 ; [+14]
      291 GETUPVAL                         R36 1
      292 GETTABLEKS                       R35 R36 K13 ["createElement"]
      294 GETUPVAL                         R37 13
      295 GETTABLEKS                       R36 R37 K16 ["Toolbar"]
      297 DUPTABLE                         R37 K34 [{"InitialPosition", "HorizontalItems"}]
      298 LOADK                            R38 K35 ["Center"]
      299 SETTABLEKS                       R38 R37 K32 ["InitialPosition"]
      301 SETTABLEKS                       R30 R37 K33 ["HorizontalItems"]
      303 CALL                             R35 2 1
      304 SETTABLEKS                       R35 R34 K16 ["Toolbar"]
      306 GETUPVAL                         R36 1
      307 GETTABLEKS                       R35 R36 K13 ["createElement"]
      309 GETUPVAL                         R36 14
      310 DUPTABLE                         R37 K40 [{"visible", "mode", "onSelect", "localization"}]
      311 JUMPIFNOTEQKS                    R2 K1 ["preview"] ; [+2]
      313 LOADB                            R38 0 +1
      314 LOADB                            R38 1
      315 SETTABLEKS                       R38 R37 K36 ["visible"]
      317 SETTABLEKS                       R2 R37 K37 ["mode"]
      319 NEWCLOSURE                       R38 P14
      320 CAPTURE                          VAL R3
      321 SETTABLEKS                       R38 R37 K38 ["onSelect"]
      323 GETTABLEKS                       R38 R0 K39 ["localization"]
      325 SETTABLEKS                       R38 R37 K39 ["localization"]
      327 CALL                             R35 2 1
      328 SETTABLEKS                       R35 R34 K17 ["ModeSwitcher"]
      330 LOADB                            R35 0
      331 JUMPIFNOTEQKS                    R2 K30 ["mapping"] ; [+35]
      333 MOVE                             R35 R4
      334 JUMPIFNOT                        R35 ; [+32]
      335 MOVE                             R35 R1
      336 JUMPIFNOT                        R35 ; [+30]
      337 GETUPVAL                         R36 1
      338 GETTABLEKS                       R35 R36 K13 ["createElement"]
      340 GETUPVAL                         R36 15
      341 DUPTABLE                         R37 K47 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "onClear"}]
      342 SETTABLEKS                       R4 R37 K41 ["model"]
      344 SETTABLEKS                       R1 R37 K23 ["rigDescriptor"]
      346 SETTABLEKS                       R8 R37 K42 ["selectedJoint"]
      348 SETTABLEKS                       R10 R37 K43 ["armedRigLabel"]
      350 NEWCLOSURE                       R38 P15
      351 CAPTURE                          VAL R10
      352 CAPTURE                          VAL R11
      353 CAPTURE                          VAL R1
      354 CAPTURE                          VAL R9
      355 SETTABLEKS                       R38 R37 K44 ["onArmJoint"]
      357 NEWCLOSURE                       R38 P16
      358 CAPTURE                          VAL R25
      359 SETTABLEKS                       R38 R37 K45 ["onMapJoint"]
      361 NEWCLOSURE                       R38 P17
      362 CAPTURE                          VAL R9
      363 CAPTURE                          VAL R11
      364 SETTABLEKS                       R38 R37 K46 ["onClear"]
      366 CALL                             R35 2 1
      367 SETTABLEKS                       R35 R34 K18 ["Mannequin"]
      369 LOADB                            R35 0
      370 JUMPIFNOTEQKS                    R2 K1 ["preview"] ; [+50]
      372 MOVE                             R35 R4
      373 JUMPIFNOT                        R35 ; [+47]
      374 MOVE                             R35 R1
      375 JUMPIFNOT                        R35 ; [+45]
      376 GETUPVAL                         R36 1
      377 GETTABLEKS                       R35 R36 K13 ["createElement"]
      379 GETUPVAL                         R36 16
      380 DUPTABLE                         R37 K53 [{"visible", "model", "localization", "autoAll", "resetAll", "onPlaybackStateChanged", "onEdit", "stopPlayback"}]
      381 LOADB                            R38 1
      382 SETTABLEKS                       R38 R37 K36 ["visible"]
      384 SETTABLEKS                       R4 R37 K41 ["model"]
      386 GETTABLEKS                       R38 R0 K39 ["localization"]
      388 SETTABLEKS                       R38 R37 K39 ["localization"]
      390 NEWCLOSURE                       R38 P18
      391 CAPTURE                          VAL R4
      392 CAPTURE                          UPVAL U17
      393 CAPTURE                          VAL R1
      394 SETTABLEKS                       R38 R37 K48 ["autoAll"]
      396 NEWCLOSURE                       R38 P19
      397 CAPTURE                          VAL R4
      398 CAPTURE                          UPVAL U17
      399 CAPTURE                          VAL R1
      400 SETTABLEKS                       R38 R37 K49 ["resetAll"]
      402 NEWCLOSURE                       R38 P20
      403 CAPTURE                          VAL R7
      404 CAPTURE                          UPVAL U17
      405 CAPTURE                          VAL R4
      406 CAPTURE                          VAL R1
      407 CAPTURE                          VAL R5
      408 SETTABLEKS                       R38 R37 K50 ["onPlaybackStateChanged"]
      410 NEWCLOSURE                       R38 P21
      411 CAPTURE                          VAL R19
      412 CAPTURE                          VAL R7
      413 CAPTURE                          VAL R3
      414 SETTABLEKS                       R38 R37 K51 ["onEdit"]
      416 NEWCLOSURE                       R38 P22
      417 CAPTURE                          VAL R19
      418 SETTABLEKS                       R38 R37 K52 ["stopPlayback"]
      420 CALL                             R35 2 1
      421 SETTABLEKS                       R35 R34 K19 ["PreviewToolbar"]
      423 LOADB                            R35 0
      424 JUMPIFNOTEQKS                    R2 K31 ["tpose"] ; [+9]
      426 MOVE                             R35 R24
      427 JUMPIFNOT                        R35 ; [+6]
      428 GETUPVAL                         R36 1
      429 GETTABLEKS                       R35 R36 K13 ["createElement"]
      431 GETUPVAL                         R36 18
      432 MOVE                             R37 R24
      433 CALL                             R35 2 1
      434 SETTABLEKS                       R35 R34 K20 ["Dragger"]
      436 CALL                             R31 3 -1
      437 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R8 R0 K9 ["Src"]
       25 GETTABLEKS                       R7 R8 K10 ["Components"]
       27 GETTABLEKS                       R6 R7 K11 ["Adornments"]
       29 GETTABLEKS                       R5 R6 K12 ["JointAdornments"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R3 R4 K12 ["JointAdornments"]
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Src"]
       38 GETTABLEKS                       R6 R7 K10 ["Components"]
       40 GETTABLEKS                       R5 R6 K13 ["PreviewToolbar"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R7 K14 ["PreviewActions"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R9 K10 ["Components"]
       56 GETTABLEKS                       R7 R8 K15 ["ModeSwitcher"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K6 ["Packages"]
       63 GETTABLEKS                       R8 R9 K16 ["ViewportToolingFramework"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R11 K10 ["Components"]
       72 GETTABLEKS                       R9 R10 K17 ["MannequinSelector"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Src"]
       79 GETTABLEKS                       R11 R12 K18 ["Utils"]
       81 GETTABLEKS                       R10 R11 K19 ["UndoUtils"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Src"]
       88 GETTABLEKS                       R13 R14 K10 ["Components"]
       90 GETTABLEKS                       R12 R13 K20 ["Hooks"]
       92 GETTABLEKS                       R11 R12 K21 ["useHRDDraggerProps"]
       94 CALL                             R10 1 1
       95 GETTABLEKS                       R12 R0 K6 ["Packages"]
       97 GETTABLEKS                       R11 R12 K22 ["DraggerFramework"]
       99 GETIMPORT                        R12 K5 [require]
      101 GETTABLEKS                       R14 R11 K23 ["DraggerTools"]
      103 GETTABLEKS                       R13 R14 K24 ["DraggerToolComponent"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R15 R0 K9 ["Src"]
      110 GETTABLEKS                       R14 R15 K25 ["Types"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R17 R0 K9 ["Src"]
      117 GETTABLEKS                       R16 R17 K26 ["Resources"]
      119 GETTABLEKS                       R15 R16 K27 ["Constants"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K5 [require]
      124 GETTABLEKS                       R19 R0 K9 ["Src"]
      126 GETTABLEKS                       R18 R19 K10 ["Components"]
      128 GETTABLEKS                       R17 R18 K20 ["Hooks"]
      130 GETTABLEKS                       R16 R17 K28 ["useSelectedRigDescriptor"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K5 [require]
      135 GETTABLEKS                       R20 R0 K9 ["Src"]
      137 GETTABLEKS                       R19 R20 K10 ["Components"]
      139 GETTABLEKS                       R18 R19 K20 ["Hooks"]
      141 GETTABLEKS                       R17 R18 K29 ["useClearPrevDescriptorTransforms"]
      143 CALL                             R16 1 1
      144 GETIMPORT                        R17 K5 [require]
      146 GETTABLEKS                       R21 R0 K9 ["Src"]
      148 GETTABLEKS                       R20 R21 K10 ["Components"]
      150 GETTABLEKS                       R19 R20 K20 ["Hooks"]
      152 GETTABLEKS                       R18 R19 K30 ["usePreviewAutoInitializeRig"]
      154 CALL                             R17 1 1
      155 GETIMPORT                        R18 K5 [require]
      157 GETTABLEKS                       R22 R0 K9 ["Src"]
      159 GETTABLEKS                       R21 R22 K10 ["Components"]
      161 GETTABLEKS                       R20 R21 K20 ["Hooks"]
      163 GETTABLEKS                       R19 R20 K31 ["useEnsureAnimator"]
      165 CALL                             R18 1 1
      166 GETIMPORT                        R19 K5 [require]
      168 GETTABLEKS                       R23 R0 K9 ["Src"]
      170 GETTABLEKS                       R22 R23 K10 ["Components"]
      172 GETTABLEKS                       R21 R22 K20 ["Hooks"]
      174 GETTABLEKS                       R20 R21 K32 ["usePluginLifecycleOnRigDescriptor"]
      176 CALL                             R19 1 1
      177 GETIMPORT                        R20 K5 [require]
      179 GETTABLEKS                       R24 R0 K9 ["Src"]
      181 GETTABLEKS                       R23 R24 K10 ["Components"]
      183 GETTABLEKS                       R22 R23 K20 ["Hooks"]
      185 GETTABLEKS                       R21 R22 K33 ["useRigModel"]
      187 CALL                             R20 1 1
      188 GETIMPORT                        R21 K5 [require]
      190 GETTABLEKS                       R24 R0 K9 ["Src"]
      192 GETTABLEKS                       R23 R24 K34 ["Flags"]
      194 GETTABLEKS                       R22 R23 K35 ["getFFlagAdaptiveAnimatonImprovements"]
      196 CALL                             R21 1 1
      197 DUPCLOSURE                       R22 K36 [PROTO_0]
      198 DUPCLOSURE                       R23 K37 [PROTO_41]
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R12
      218 RETURN                           R23 1
