PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mirrorTransformMotor6D"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

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
       50 JUMPIFNOT                        R8 ; [+55]
       51 JUMPIFNOT                        R7 ; [+54]
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
       88 JUMPIFNOT                        R8 ; [+17]
       89 MOVE                             R9 R6
       90 LOADK                            R12 K10 ["Motor6D"]
       91 NAMECALL                         R10 R0 K11 ["IsA"]
       93 CALL                             R10 2 1
       94 JUMPIFNOT                        R10 ; [+5]
       95 GETUPVAL                         R10 4
       96 GETTABLEKS                       R9 R10 K12 ["mirrorTransformMotor6D"]
       98 MOVE                             R10 R6
       99 CALL                             R9 1 1
      100 GETUPVAL                         R10 2
      101 MOVE                             R12 R8
      102 MOVE                             R13 R9
      103 NAMECALL                         R10 R10 K6 ["SetTposeAdjustment"]
      105 CALL                             R10 3 0
      106 GETUPVAL                         R8 0
      107 LOADB                            R9 0
      108 SETTABLEKS                       R9 R8 K0 ["current"]
      110 RETURN                           R0 0

PROTO_5:
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
       61 JUMPIFNOT                        R6 ; [+20]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R8 R9 K9 ["axisAngleFromRotation"]
       65 MOVE                             R9 R1
       66 CALL                             R8 1 2
       67 MOVE                             R12 R8
       68 NAMECALL                         R10 R2 K10 ["VectorToObjectSpace"]
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K13 [CFrame.fromAxisAngle]
       73 MINUS                            R12 R10
       74 MOVE                             R13 R9
       75 CALL                             R11 2 1
       76 MUL                              R12 R2 R11
       77 NAMECALL                         R13 R2 K14 ["Inverse"]
       79 CALL                             R13 1 1
       80 MUL                              R7 R13 R12
       81 JUMP                             ; [+5]
       82 MUL                              R8 R1 R2
       83 NAMECALL                         R9 R2 K14 ["Inverse"]
       85 CALL                             R9 1 1
       86 MUL                              R7 R9 R8
       87 GETUPVAL                         R9 4
       88 GETTABLEKS                       R8 R9 K15 ["getRigLabelForJoint"]
       90 GETUPVAL                         R9 5
       91 MOVE                             R10 R0
       92 CALL                             R8 2 1
       93 JUMPIFNOT                        R8 ; [+12]
       94 MOVE                             R9 R3
       95 JUMPIF                           R9 ; [+3]
       96 GETIMPORT                        R9 K17 [CFrame.new]
       98 CALL                             R9 0 1
       99 MUL                              R10 R9 R7
      100 GETUPVAL                         R11 5
      101 MOVE                             R13 R8
      102 MOVE                             R14 R10
      103 NAMECALL                         R11 R11 K18 ["SetTposeAdjustment"]
      105 CALL                             R11 3 0
      106 GETUPVAL                         R9 6
      107 JUMPIFNOT                        R9 ; [+70]
      108 JUMPIFNOT                        R8 ; [+69]
      109 GETUPVAL                         R10 4
      110 GETTABLEKS                       R9 R10 K19 ["symmetryCounterparts"]
      112 JUMPIFNOT                        R9 ; [+4]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R10 R11 K19 ["symmetryCounterparts"]
      116 GETTABLE                         R9 R10 R8
      117 JUMPIFNOT                        R9 ; [+60]
      118 GETUPVAL                         R10 7
      119 MOVE                             R11 R7
      120 CALL                             R10 1 1
      121 JUMPIF                           R10 ; [+56]
      122 GETUPVAL                         R11 2
      123 GETTABLEKS                       R10 R11 K0 ["current"]
      125 GETTABLE                         R11 R10 R9
      126 JUMPIF                           R11 ; [+11]
      127 GETUPVAL                         R12 5
      128 MOVE                             R14 R9
      129 NAMECALL                         R12 R12 K20 ["GetTposeAdjustment"]
      131 CALL                             R12 2 1
      132 JUMPIF                           R12 ; [+3]
      133 GETIMPORT                        R12 K17 [CFrame.new]
      135 CALL                             R12 0 1
      136 MOVE                             R11 R12
      137 SETTABLE                         R11 R10 R9
      138 LOADNIL                          R12
      139 LOADK                            R15 K21 ["Motor6D"]
      140 NAMECALL                         R13 R0 K22 ["IsA"]
      142 CALL                             R13 2 1
      143 JUMPIFNOT                        R13 ; [+8]
      144 MOVE                             R13 R7
      145 GETUPVAL                         R15 8
      146 GETTABLEKS                       R14 R15 K23 ["mirrorTransformMotor6D"]
      148 MOVE                             R15 R13
      149 CALL                             R14 1 1
      150 MOVE                             R12 R14
      151 JUMP                             ; [+19]
      152 GETUPVAL                         R13 9
      153 CALL                             R13 0 1
      154 JUMPIFNOT                        R13 ; [+7]
      155 GETUPVAL                         R14 8
      156 GETTABLEKS                       R13 R14 K24 ["mirrorTransformAnimationConstraint"]
      158 MOVE                             R14 R7
      159 CALL                             R13 1 1
      160 MOVE                             R12 R13
      161 JUMP                             ; [+9]
      162 GETIMPORT                        R13 K26 [CFrame.fromMatrix]
      164 LOADK                            R14 K27 [{0, 0, 0}]
      165 LOADK                            R15 K28 [{-1, 0, 0}]
      166 LOADK                            R16 K29 [{0, 1, 0}]
      167 LOADK                            R17 K30 [{0, 0, 1}]
      168 CALL                             R13 4 1
      169 MUL                              R14 R13 R7
      170 MUL                              R12 R14 R13
      171 MUL                              R13 R11 R12
      172 GETUPVAL                         R14 5
      173 MOVE                             R16 R9
      174 MOVE                             R17 R13
      175 NAMECALL                         R14 R14 K18 ["SetTposeAdjustment"]
      177 CALL                             R14 3 0
      178 GETUPVAL                         R9 0
      179 LOADB                            R10 0
      180 SETTABLEKS                       R10 R9 K0 ["current"]
      182 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["copyAdjustments"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_21]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["copyAdjustments"]
        3 LOADK                            R1 K1 ["left"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["copyAdjustments"]
        3 LOADK                            R1 K1 ["right"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_25:
        0 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["preview"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_27:
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
      103 JUMPIFNOTEQKS                    R0 K23 ["tpose"] ; [+209]
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
      186 DUPCLOSURE                       R4 K30 [PROTO_20]
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
      247 CAPTURE                          UPVAL U5
      248 CAPTURE                          UPVAL U3
      249 CAPTURE                          UPVAL U12
      250 SETTABLEKS                       R6 R5 K5 ["OnClick"]
      252 DUPTABLE                         R6 K36 [{"Type", "Tooltip", "Icon", "OnClick"}]
      253 LOADK                            R7 K7 ["Button"]
      254 SETTABLEKS                       R7 R6 K1 ["Type"]
      256 GETUPVAL                         R8 1
      257 GETTABLEKS                       R7 R8 K8 ["localization"]
      259 LOADK                            R9 K2 ["Tooltip"]
      260 LOADK                            R10 K39 ["MirrorRtoL"]
      261 NAMECALL                         R7 R7 K11 ["getText"]
      263 CALL                             R7 3 1
      264 SETTABLEKS                       R7 R6 K2 ["Tooltip"]
      266 GETUPVAL                         R8 2
      267 GETTABLEKS                       R7 R8 K40 ["MIRROR_TO_LEFT"]
      269 SETTABLEKS                       R7 R6 K4 ["Icon"]
      271 NEWCLOSURE                       R7 P8
      272 CAPTURE                          UPVAL U11
      273 CAPTURE                          UPVAL U5
      274 CAPTURE                          UPVAL U3
      275 CAPTURE                          UPVAL U12
      276 SETTABLEKS                       R7 R6 K5 ["OnClick"]
      278 DUPTABLE                         R7 K41 [{"Type", "OnClick", "Icon"}]
      279 LOADK                            R8 K29 ["Separator"]
      280 SETTABLEKS                       R8 R7 K1 ["Type"]
      282 DUPCLOSURE                       R8 K42 [PROTO_25]
      283 SETTABLEKS                       R8 R7 K5 ["OnClick"]
      285 LOADK                            R8 K22 [""]
      286 SETTABLEKS                       R8 R7 K4 ["Icon"]
      288 DUPTABLE                         R8 K18 [{"Type", "Text", "Icon", "OnClick"}]
      289 LOADK                            R9 K19 ["TextButton"]
      290 SETTABLEKS                       R9 R8 K1 ["Type"]
      292 GETUPVAL                         R10 1
      293 GETTABLEKS                       R9 R10 K8 ["localization"]
      295 LOADK                            R11 K20 ["Mode"]
      296 LOADK                            R12 K21 ["Done"]
      297 NAMECALL                         R9 R9 K11 ["getText"]
      299 CALL                             R9 3 1
      300 SETTABLEKS                       R9 R8 K17 ["Text"]
      302 LOADK                            R9 K22 [""]
      303 SETTABLEKS                       R9 R8 K4 ["Icon"]
      305 NEWCLOSURE                       R9 P10
      306 CAPTURE                          UPVAL U7
      307 CAPTURE                          UPVAL U8
      308 SETTABLEKS                       R9 R8 K5 ["OnClick"]
      310 SETLIST                          R0 R1 8 [1]
      312 RETURN                           R0 1
      313 NEWTABLE                         R0 0 0
      315 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["autoAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["resetAll"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_37:
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
       86 GETUPVAL                         R21 7
       87 GETTABLEKS                       R20 R21 K6 ["isIdentityTransform"]
       89 GETUPVAL                         R22 1
       90 GETTABLEKS                       R21 R22 K7 ["useCallback"]
       92 NEWCLOSURE                       R22 P1
       93 CAPTURE                          VAL R16
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R12
       97 CAPTURE                          UPVAL U9
       98 NEWTABLE                         R23 0 2
      100 MOVE                             R24 R1
      101 MOVE                             R25 R12
      102 SETLIST                          R23 R24 2 [1]
      104 CALL                             R21 2 1
      105 GETUPVAL                         R23 1
      106 GETTABLEKS                       R22 R23 K7 ["useCallback"]
      108 NEWCLOSURE                       R23 P2
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R17
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R20
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          UPVAL U10
      119 NEWTABLE                         R24 0 2
      121 MOVE                             R25 R1
      122 MOVE                             R26 R12
      123 SETLIST                          R24 R25 2 [1]
      125 CALL                             R22 2 1
      126 GETUPVAL                         R23 11
      127 MOVE                             R24 R8
      128 MOVE                             R25 R1
      129 MOVE                             R26 R12
      130 GETUPVAL                         R28 12
      131 CALL                             R28 0 1
      132 JUMPIFNOT                        R28 ; [+2]
      133 MOVE                             R27 R22
      134 JUMP                             ; [+1]
      135 MOVE                             R27 R21
      136 CALL                             R23 4 1
      137 GETUPVAL                         R25 1
      138 GETTABLEKS                       R24 R25 K5 ["useEffect"]
      140 NEWCLOSURE                       R25 P3
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R17
      145 NEWTABLE                         R26 0 1
      147 MOVE                             R27 R1
      148 SETLIST                          R26 R27 1 [1]
      150 CALL                             R24 2 0
      151 GETUPVAL                         R25 1
      152 GETTABLEKS                       R24 R25 K5 ["useEffect"]
      154 NEWCLOSURE                       R25 P4
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R2
      159 CAPTURE                          UPVAL U8
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R14
      162 CAPTURE                          UPVAL U13
      163 CAPTURE                          VAL R16
      164 NEWTABLE                         R26 0 3
      166 MOVE                             R27 R2
      167 MOVE                             R28 R1
      168 MOVE                             R29 R5
      169 SETLIST                          R26 R27 3 [1]
      171 CALL                             R24 2 0
      172 GETUPVAL                         R25 1
      173 GETTABLEKS                       R24 R25 K5 ["useEffect"]
      175 NEWCLOSURE                       R25 P5
      176 CAPTURE                          VAL R17
      177 NEWTABLE                         R26 0 3
      179 MOVE                             R27 R8
      180 MOVE                             R28 R12
      181 MOVE                             R29 R2
      182 SETLIST                          R26 R27 3 [1]
      184 CALL                             R24 2 0
      185 NEWCLOSURE                       R24 P6
      186 CAPTURE                          UPVAL U8
      187 CAPTURE                          VAL R1
      188 CAPTURE                          UPVAL U14
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R11
      191 NEWCLOSURE                       R25 P7
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R9
      195 NEWCLOSURE                       R26 P8
      196 CAPTURE                          UPVAL U8
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R9
      199 NEWCLOSURE                       R27 P9
      200 CAPTURE                          UPVAL U15
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R5
      204 GETUPVAL                         R29 1
      205 GETTABLEKS                       R28 R29 K8 ["useMemo"]
      207 NEWCLOSURE                       R29 P10
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U13
      211 CAPTURE                          VAL R4
      212 CAPTURE                          UPVAL U8
      213 CAPTURE                          VAL R1
      214 CAPTURE                          UPVAL U14
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R13
      219 CAPTURE                          UPVAL U15
      220 CAPTURE                          VAL R5
      221 NEWTABLE                         R30 0 3
      223 MOVE                             R31 R2
      224 JUMPIFNOT                        R12 ; [+2]
      225 LOADK                            R32 K9 ["y"]
      226 JUMP                             ; [+1]
      227 LOADK                            R32 K10 ["n"]
      228 MOVE                             R33 R1
      229 SETLIST                          R30 R31 3 [1]
      231 CALL                             R28 2 1
      232 GETUPVAL                         R30 1
      233 GETTABLEKS                       R29 R30 K11 ["createElement"]
      235 GETUPVAL                         R31 1
      236 GETTABLEKS                       R30 R31 K12 ["Fragment"]
      238 LOADNIL                          R31
      239 DUPTABLE                         R32 K19 [{"Adornments", "Toolbar", "ModeSwitcher", "Mannequin", "PreviewToolbar", "Dragger"}]
      240 MOVE                             R33 R4
      241 JUMPIFNOT                        R33 ; [+38]
      242 MOVE                             R33 R1
      243 JUMPIFNOT                        R33 ; [+36]
      244 GETUPVAL                         R34 1
      245 GETTABLEKS                       R33 R34 K11 ["createElement"]
      247 GETUPVAL                         R34 16
      248 DUPTABLE                         R35 K27 [{"rigModel", "rigDescriptor", "selectedJointInstance", "onJointClicked", "applyTposeAdjustment", "updatePositions", "isPlayingAnimation"}]
      249 SETTABLEKS                       R4 R35 K20 ["rigModel"]
      251 SETTABLEKS                       R1 R35 K21 ["rigDescriptor"]
      253 SETTABLEKS                       R8 R35 K22 ["selectedJointInstance"]
      255 JUMPIFNOTEQKS                    R2 K28 ["mapping"] ; [+3]
      257 MOVE                             R36 R25
      258 JUMP                             ; [+5]
      259 JUMPIFNOTEQKS                    R2 K29 ["tpose"] ; [+3]
      261 MOVE                             R36 R26
      262 JUMP                             ; [+1]
      263 LOADNIL                          R36
      264 SETTABLEKS                       R36 R35 K23 ["onJointClicked"]
      266 LOADB                            R36 1
      267 JUMPIFEQKS                       R2 K1 ["preview"] ; [+5]
      269 JUMPIFEQKS                       R2 K29 ["tpose"] ; [+2]
      271 LOADB                            R36 0 +1
      272 LOADB                            R36 1
      273 SETTABLEKS                       R36 R35 K24 ["applyTposeAdjustment"]
      275 SETTABLEKS                       R14 R35 K25 ["updatePositions"]
      277 SETTABLEKS                       R6 R35 K26 ["isPlayingAnimation"]
      279 CALL                             R33 2 1
      280 SETTABLEKS                       R33 R32 K13 ["Adornments"]
      282 LOADB                            R33 0
      283 LENGTH                           R34 R28
      284 LOADN                            R35 0
      285 JUMPIFNOTLT                      R35 R34 ; [+14]
      287 GETUPVAL                         R34 1
      288 GETTABLEKS                       R33 R34 K11 ["createElement"]
      290 GETUPVAL                         R35 17
      291 GETTABLEKS                       R34 R35 K14 ["Toolbar"]
      293 DUPTABLE                         R35 K32 [{"InitialPosition", "HorizontalItems"}]
      294 LOADK                            R36 K33 ["Center"]
      295 SETTABLEKS                       R36 R35 K30 ["InitialPosition"]
      297 SETTABLEKS                       R28 R35 K31 ["HorizontalItems"]
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K14 ["Toolbar"]
      302 GETUPVAL                         R34 1
      303 GETTABLEKS                       R33 R34 K11 ["createElement"]
      305 GETUPVAL                         R34 18
      306 DUPTABLE                         R35 K38 [{"visible", "mode", "onSelect", "localization"}]
      307 JUMPIFNOTEQKS                    R2 K1 ["preview"] ; [+2]
      309 LOADB                            R36 0 +1
      310 LOADB                            R36 1
      311 SETTABLEKS                       R36 R35 K34 ["visible"]
      313 SETTABLEKS                       R2 R35 K35 ["mode"]
      315 NEWCLOSURE                       R36 P11
      316 CAPTURE                          VAL R3
      317 SETTABLEKS                       R36 R35 K36 ["onSelect"]
      319 GETTABLEKS                       R36 R0 K37 ["localization"]
      321 SETTABLEKS                       R36 R35 K37 ["localization"]
      323 CALL                             R33 2 1
      324 SETTABLEKS                       R33 R32 K15 ["ModeSwitcher"]
      326 LOADB                            R33 0
      327 JUMPIFNOTEQKS                    R2 K28 ["mapping"] ; [+35]
      329 MOVE                             R33 R4
      330 JUMPIFNOT                        R33 ; [+32]
      331 MOVE                             R33 R1
      332 JUMPIFNOT                        R33 ; [+30]
      333 GETUPVAL                         R34 1
      334 GETTABLEKS                       R33 R34 K11 ["createElement"]
      336 GETUPVAL                         R34 19
      337 DUPTABLE                         R35 K45 [{"model", "rigDescriptor", "selectedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "onClear"}]
      338 SETTABLEKS                       R4 R35 K39 ["model"]
      340 SETTABLEKS                       R1 R35 K21 ["rigDescriptor"]
      342 SETTABLEKS                       R8 R35 K40 ["selectedJoint"]
      344 SETTABLEKS                       R10 R35 K41 ["armedRigLabel"]
      346 NEWCLOSURE                       R36 P12
      347 CAPTURE                          VAL R10
      348 CAPTURE                          VAL R11
      349 CAPTURE                          VAL R1
      350 CAPTURE                          VAL R9
      351 SETTABLEKS                       R36 R35 K42 ["onArmJoint"]
      353 NEWCLOSURE                       R36 P13
      354 CAPTURE                          VAL R24
      355 SETTABLEKS                       R36 R35 K43 ["onMapJoint"]
      357 NEWCLOSURE                       R36 P14
      358 CAPTURE                          VAL R9
      359 CAPTURE                          VAL R11
      360 SETTABLEKS                       R36 R35 K44 ["onClear"]
      362 CALL                             R33 2 1
      363 SETTABLEKS                       R33 R32 K16 ["Mannequin"]
      365 LOADB                            R33 0
      366 JUMPIFNOTEQKS                    R2 K1 ["preview"] ; [+50]
      368 MOVE                             R33 R4
      369 JUMPIFNOT                        R33 ; [+47]
      370 MOVE                             R33 R1
      371 JUMPIFNOT                        R33 ; [+45]
      372 GETUPVAL                         R34 1
      373 GETTABLEKS                       R33 R34 K11 ["createElement"]
      375 GETUPVAL                         R34 20
      376 DUPTABLE                         R35 K51 [{"visible", "model", "localization", "autoAll", "resetAll", "onPlaybackStateChanged", "onEdit", "stopPlayback"}]
      377 LOADB                            R36 1
      378 SETTABLEKS                       R36 R35 K34 ["visible"]
      380 SETTABLEKS                       R4 R35 K39 ["model"]
      382 GETTABLEKS                       R36 R0 K37 ["localization"]
      384 SETTABLEKS                       R36 R35 K37 ["localization"]
      386 NEWCLOSURE                       R36 P15
      387 CAPTURE                          VAL R4
      388 CAPTURE                          UPVAL U21
      389 CAPTURE                          VAL R1
      390 SETTABLEKS                       R36 R35 K46 ["autoAll"]
      392 NEWCLOSURE                       R36 P16
      393 CAPTURE                          VAL R4
      394 CAPTURE                          UPVAL U21
      395 CAPTURE                          VAL R1
      396 SETTABLEKS                       R36 R35 K47 ["resetAll"]
      398 NEWCLOSURE                       R36 P17
      399 CAPTURE                          VAL R7
      400 CAPTURE                          UPVAL U21
      401 CAPTURE                          VAL R4
      402 CAPTURE                          VAL R1
      403 CAPTURE                          VAL R5
      404 SETTABLEKS                       R36 R35 K48 ["onPlaybackStateChanged"]
      406 NEWCLOSURE                       R36 P18
      407 CAPTURE                          VAL R19
      408 CAPTURE                          VAL R7
      409 CAPTURE                          VAL R3
      410 SETTABLEKS                       R36 R35 K49 ["onEdit"]
      412 NEWCLOSURE                       R36 P19
      413 CAPTURE                          VAL R19
      414 SETTABLEKS                       R36 R35 K50 ["stopPlayback"]
      416 CALL                             R33 2 1
      417 SETTABLEKS                       R33 R32 K17 ["PreviewToolbar"]
      419 LOADB                            R33 0
      420 JUMPIFNOTEQKS                    R2 K29 ["tpose"] ; [+9]
      422 MOVE                             R33 R23
      423 JUMPIFNOT                        R33 ; [+6]
      424 GETUPVAL                         R34 1
      425 GETTABLEKS                       R33 R34 K11 ["createElement"]
      427 GETUPVAL                         R34 22
      428 MOVE                             R35 R23
      429 CALL                             R33 2 1
      430 SETTABLEKS                       R33 R32 K18 ["Dragger"]
      432 CALL                             R29 3 -1
      433 RETURN                           R29 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["SymmetryUtils"]
       23 GETTABLEKS                       R4 R2 K10 ["TransformUtils"]
       25 GETIMPORT                        R6 K5 [require]
       27 GETTABLEKS                       R10 R0 K11 ["Src"]
       29 GETTABLEKS                       R9 R10 K12 ["Components"]
       31 GETTABLEKS                       R8 R9 K13 ["Adornments"]
       33 GETTABLEKS                       R7 R8 K14 ["JointAdornments"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R5 R6 K14 ["JointAdornments"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R9 R0 K11 ["Src"]
       42 GETTABLEKS                       R8 R9 K12 ["Components"]
       44 GETTABLEKS                       R7 R8 K15 ["PreviewToolbar"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R9 K16 ["PreviewActions"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K11 ["Src"]
       58 GETTABLEKS                       R10 R11 K12 ["Components"]
       60 GETTABLEKS                       R9 R10 K17 ["ModeSwitcher"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Packages"]
       67 GETTABLEKS                       R10 R11 K18 ["ViewportToolingFramework"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K11 ["Src"]
       74 GETTABLEKS                       R12 R13 K12 ["Components"]
       76 GETTABLEKS                       R11 R12 K19 ["MannequinSelector"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Src"]
       83 GETTABLEKS                       R13 R14 K20 ["Utils"]
       85 GETTABLEKS                       R12 R13 K21 ["UndoUtils"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K11 ["Src"]
       92 GETTABLEKS                       R13 R14 K22 ["TposeActions"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R17 R0 K11 ["Src"]
       99 GETTABLEKS                       R16 R17 K12 ["Components"]
      101 GETTABLEKS                       R15 R16 K23 ["Hooks"]
      103 GETTABLEKS                       R14 R15 K24 ["useHRDDraggerProps"]
      105 CALL                             R13 1 1
      106 GETTABLEKS                       R15 R0 K6 ["Packages"]
      108 GETTABLEKS                       R14 R15 K25 ["DraggerFramework"]
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R17 R14 K26 ["DraggerTools"]
      114 GETTABLEKS                       R16 R17 K27 ["DraggerToolComponent"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R18 R0 K11 ["Src"]
      121 GETTABLEKS                       R17 R18 K28 ["Types"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R20 R0 K11 ["Src"]
      128 GETTABLEKS                       R19 R20 K29 ["Resources"]
      130 GETTABLEKS                       R18 R19 K30 ["Constants"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K5 [require]
      135 GETTABLEKS                       R22 R0 K11 ["Src"]
      137 GETTABLEKS                       R21 R22 K12 ["Components"]
      139 GETTABLEKS                       R20 R21 K23 ["Hooks"]
      141 GETTABLEKS                       R19 R20 K31 ["useSelectedRigDescriptor"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R23 R0 K11 ["Src"]
      148 GETTABLEKS                       R22 R23 K12 ["Components"]
      150 GETTABLEKS                       R21 R22 K23 ["Hooks"]
      152 GETTABLEKS                       R20 R21 K32 ["useClearPrevDescriptorTransforms"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R24 R0 K11 ["Src"]
      159 GETTABLEKS                       R23 R24 K12 ["Components"]
      161 GETTABLEKS                       R22 R23 K23 ["Hooks"]
      163 GETTABLEKS                       R21 R22 K33 ["usePreviewAutoInitializeRig"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R25 R0 K11 ["Src"]
      170 GETTABLEKS                       R24 R25 K12 ["Components"]
      172 GETTABLEKS                       R23 R24 K23 ["Hooks"]
      174 GETTABLEKS                       R22 R23 K34 ["useEnsureAnimator"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K5 [require]
      179 GETTABLEKS                       R26 R0 K11 ["Src"]
      181 GETTABLEKS                       R25 R26 K12 ["Components"]
      183 GETTABLEKS                       R24 R25 K23 ["Hooks"]
      185 GETTABLEKS                       R23 R24 K35 ["usePluginLifecycleOnRigDescriptor"]
      187 CALL                             R22 1 1
      188 GETIMPORT                        R23 K5 [require]
      190 GETTABLEKS                       R27 R0 K11 ["Src"]
      192 GETTABLEKS                       R26 R27 K12 ["Components"]
      194 GETTABLEKS                       R25 R26 K23 ["Hooks"]
      196 GETTABLEKS                       R24 R25 K36 ["useRigModel"]
      198 CALL                             R23 1 1
      199 GETIMPORT                        R24 K5 [require]
      201 GETTABLEKS                       R27 R0 K11 ["Src"]
      203 GETTABLEKS                       R26 R27 K37 ["Flags"]
      205 GETTABLEKS                       R25 R26 K38 ["getFFlagAdaptiveAnimatonImprovements"]
      207 CALL                             R24 1 1
      208 GETIMPORT                        R25 K5 [require]
      210 GETTABLEKS                       R28 R0 K11 ["Src"]
      212 GETTABLEKS                       R27 R28 K37 ["Flags"]
      214 GETTABLEKS                       R26 R27 K39 ["getFFlagAdaptiveAnimationConstraints"]
      216 CALL                             R25 1 1
      217 DUPCLOSURE                       R26 K40 [PROTO_0]
      218 CAPTURE                          VAL R3
      219 DUPCLOSURE                       R27 K41 [PROTO_37]
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R5
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R10
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R15
      243 RETURN                           R27 1
