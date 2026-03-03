PROTO_0:
        0 LOADK                            R3 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 LOADK                            R4 K2 ["BasePart"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETTABLEKS                       R3 R1 K4 ["CFrame"]
       12 GETTABLEKS                       R2 R3 K5 ["LookVector"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K6 ["PrimaryPart"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETTABLEKS                       R4 R2 K4 ["CFrame"]
       20 GETTABLEKS                       R3 R4 K5 ["LookVector"]
       22 RETURN                           R3 1
       23 LOADK                            R3 K7 [{0, 0, -1}]
       24 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R3 0
        4 DIVK                             R2 R3 K0 [1]
        5 FASTCALL2K                       MATH_MIN R2 K0 ; [+4]
        7 LOADK                            R3 K0 [1]
        8 GETIMPORT                        R1 K3 [math.min]
       10 CALL                             R1 2 1
       11 SUBRK                            R4 R0 K1 ["math"]
       12 SUBRK                            R5 R0 K1 ["math"]
       13 MUL                              R3 R4 R5
       14 SUBRK                            R2 R0 K3 [math.min]
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 2
       17 GETUPVAL                         R6 3
       18 MOVE                             R7 R2
       19 NAMECALL                         R4 R4 K4 ["Lerp"]
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       24 GETUPVAL                         R3 1
       25 GETIMPORT                        R4 K7 [CFrame.new]
       27 GETUPVAL                         R5 4
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K8 ["Focus"]
       31 LOADN                            R3 1
       32 JUMPIFNOTLE                      R3 R1 ; [+9]
       34 GETUPVAL                         R3 5
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETUPVAL                         R3 5
       37 NAMECALL                         R3 R3 K9 ["Disconnect"]
       39 CALL                             R3 1 0
       40 LOADNIL                          R3
       41 SETUPVAL                         R3 5
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [workspace]
        5 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 1
       12 JUMPIFEQKS                       R3 K3 ["leftHand"] ; [+4]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOTEQKS                    R3 K4 ["rightHand"] ; [+71]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K5 ["Parent"]
       20 JUMPIFNOT                        R3 ; [+5]
       21 LOADK                            R6 K6 ["HumanoidRigDescription"]
       22 NAMECALL                         R4 R3 K7 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+2]
       26 CLOSEUPVALS                      R1
       27 RETURN                           R0 0
       28 LOADNIL                          R4
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K8 ["Side"]
       32 GETIMPORT                        R6 K12 [Enum.DigitsRigDescriptionSide.Left]
       34 JUMPIFNOTEQ                      R5 R6 ; [+4]
       36 GETIMPORT                        R4 K15 [Enum.RigLabel.LeftWrist]
       38 JUMP                             ; [+6]
       39 GETIMPORT                        R6 K17 [Enum.DigitsRigDescriptionSide.Right]
       41 JUMPIFNOTEQ                      R5 R6 ; [+3]
       43 GETIMPORT                        R4 K19 [Enum.RigLabel.RightWrist]
       45 JUMPIF                           R4 ; [+8]
       46 GETUPVAL                         R6 1
       47 JUMPIFNOTEQKS                    R6 K3 ["leftHand"] ; [+4]
       49 GETIMPORT                        R4 K15 [Enum.RigLabel.LeftWrist]
       51 JUMP                             ; [+2]
       52 GETIMPORT                        R4 K19 [Enum.RigLabel.RightWrist]
       54 MOVE                             R8 R4
       55 NAMECALL                         R6 R3 K20 ["GetJoint"]
       57 CALL                             R6 2 1
       58 JUMPIF                           R6 ; [+2]
       59 CLOSEUPVALS                      R1
       60 RETURN                           R0 0
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R7 R8 K21 ["getGlobalCoordinateFrame"]
       64 MOVE                             R8 R6
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R7 K22 ["Position"]
       68 GETTABLEKS                       R11 R7 K24 ["LookVector"]
       70 MULK                             R10 R11 K23 [0.5]
       71 ADD                              R9 R8 R10
       72 GETTABLEKS                       R12 R7 K26 ["UpVector"]
       74 MULK                             R11 R12 K25 [2]
       75 ADD                              R10 R9 R11
       76 GETIMPORT                        R11 K29 [CFrame.lookAt]
       78 MOVE                             R12 R10
       79 MOVE                             R13 R9
       80 GETTABLEKS                       R15 R7 K24 ["LookVector"]
       82 MINUS                            R14 R15
       83 CALL                             R11 3 1
       84 MOVE                             R1 R11
       85 MOVE                             R2 R9
       86 JUMP                             ; [+94]
       87 GETUPVAL                         R3 1
       88 JUMPIFNOTEQKS                    R3 K30 ["body"] ; [+90]
       90 LOADNIL                          R3
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R4 R5 K5 ["Parent"]
       94 JUMPIFNOT                        R4 ; [+7]
       95 LOADK                            R7 K31 ["Model"]
       96 NAMECALL                         R5 R4 K7 ["IsA"]
       98 CALL                             R5 2 1
       99 JUMPIFNOT                        R5 ; [+2]
      100 MOVE                             R3 R4
      101 JUMP                             ; [+6]
      102 GETUPVAL                         R5 0
      103 LOADK                            R7 K31 ["Model"]
      104 NAMECALL                         R5 R5 K32 ["FindFirstAncestorWhichIsA"]
      106 CALL                             R5 2 1
      107 MOVE                             R3 R5
      108 JUMPIF                           R3 ; [+2]
      109 CLOSEUPVALS                      R1
      110 RETURN                           R0 0
      111 NAMECALL                         R5 R3 K33 ["GetBoundingBox"]
      113 CALL                             R5 1 2
      114 MOVE                             R8 R3
      115 LOADK                            R11 K34 ["HumanoidRootPart"]
      116 NAMECALL                         R9 R8 K35 ["FindFirstChild"]
      118 CALL                             R9 2 1
      119 JUMPIFNOT                        R9 ; [+10]
      120 LOADK                            R12 K36 ["BasePart"]
      121 NAMECALL                         R10 R9 K7 ["IsA"]
      123 CALL                             R10 2 1
      124 JUMPIFNOT                        R10 ; [+5]
      125 GETTABLEKS                       R10 R9 K27 ["CFrame"]
      127 GETTABLEKS                       R7 R10 K24 ["LookVector"]
      129 JUMP                             ; [+9]
      130 GETTABLEKS                       R10 R8 K37 ["PrimaryPart"]
      132 JUMPIFNOT                        R10 ; [+5]
      133 GETTABLEKS                       R11 R10 K27 ["CFrame"]
      135 GETTABLEKS                       R7 R11 K24 ["LookVector"]
      137 JUMP                             ; [+1]
      138 LOADK                            R7 K38 [{0, 0, -1}]
      139 LOADK                            R10 K34 ["HumanoidRootPart"]
      140 NAMECALL                         R8 R3 K35 ["FindFirstChild"]
      142 CALL                             R8 2 1
      143 JUMPIFNOT                        R8 ; [+8]
      144 LOADK                            R12 K36 ["BasePart"]
      145 NAMECALL                         R10 R8 K7 ["IsA"]
      147 CALL                             R10 2 1
      148 JUMPIFNOT                        R10 ; [+3]
      149 GETTABLEKS                       R9 R8 K22 ["Position"]
      151 JUMP                             ; [+5]
      152 NAMECALL                         R10 R3 K33 ["GetBoundingBox"]
      154 CALL                             R10 1 1
      155 GETTABLEKS                       R9 R10 K22 ["Position"]
      157 GETTABLEKS                       R11 R6 K39 ["X"]
      159 GETTABLEKS                       R12 R6 K40 ["Y"]
      161 GETTABLEKS                       R13 R6 K41 ["Z"]
      163 FASTCALL                         MATH_MAX ; [+2]
      164 GETIMPORT                        R10 K44 [math.max]
      166 CALL                             R10 3 1
      167 MULK                             R14 R10 K23 [0.5]
      168 ADDK                             R13 R14 K45 [7]
      169 MUL                              R12 R7 R13
      170 ADD                              R11 R9 R12
      171 GETIMPORT                        R12 K29 [CFrame.lookAt]
      173 MOVE                             R13 R11
      174 MOVE                             R14 R9
      175 CALL                             R12 2 1
      176 MOVE                             R1 R12
      177 MOVE                             R2 R9
      178 JUMP                             ; [+2]
      179 CLOSEUPVALS                      R1
      180 RETURN                           R0 0
      181 GETTABLEKS                       R3 R0 K27 ["CFrame"]
      183 LOADN                            R4 0
      184 LOADNIL                          R5
      185 GETUPVAL                         R7 3
      186 GETTABLEKS                       R6 R7 K46 ["Heartbeat"]
      188 NEWCLOSURE                       R8 P0
      189 CAPTURE                          REF R4
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R3
      192 CAPTURE                          REF R1
      193 CAPTURE                          REF R2
      194 CAPTURE                          REF R5
      195 NAMECALL                         R6 R6 K47 ["Connect"]
      197 CALL                             R6 2 1
      198 MOVE                             R5 R6
      199 NEWCLOSURE                       R6 P1
      200 CAPTURE                          REF R5
      201 CLOSEUPVALS                      R1
      202 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["RunService"]
       31 NAMECALL                         R4 R4 K14 ["GetService"]
       33 CALL                             R4 2 1
       34 DUPCLOSURE                       R5 K15 [PROTO_0]
       35 DUPCLOSURE                       R6 K16 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 RETURN                           R6 1
