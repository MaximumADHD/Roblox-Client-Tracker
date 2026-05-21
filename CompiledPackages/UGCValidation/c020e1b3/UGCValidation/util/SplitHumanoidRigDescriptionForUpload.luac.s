PROTO_0:
        0 LOADK                            R3 K0 ["HumanoidRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["R15_BODY_PARTS"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 MOVE                             R9 R6
       13 NAMECALL                         R7 R0 K3 ["FindFirstChild"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+114]
       17 LOADNIL                          R8
       18 LOADK                            R11 K0 ["HumanoidRigDescription"]
       19 NAMECALL                         R9 R7 K1 ["FindFirstChildWhichIsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOTEQKNIL                  R9 ; [+9]
       24 GETIMPORT                        R10 K6 [Instance.new]
       26 LOADK                            R11 K0 ["HumanoidRigDescription"]
       27 CALL                             R10 1 1
       28 MOVE                             R8 R10
       29 SETTABLEKS                       R7 R8 K7 ["Parent"]
       31 JUMP                             ; [+1]
       32 MOVE                             R8 R9
       33 GETTABLEKS                       R10 R7 K8 ["Name"]
       35 JUMPIFNOTEQKS                    R10 K9 ["LowerTorso"] ; [+5]
       37 GETTABLEKS                       R10 R1 K10 ["OriginOffset"]
       39 SETTABLEKS                       R10 R8 K10 ["OriginOffset"]
       41 MOVE                             R12 R6
       42 NAMECALL                         R10 R8 K11 ["GetContainedJointLabels"]
       44 CALL                             R10 2 3
       45 FORGPREP                         R10
       46 MOVE                             R17 R14
       47 NAMECALL                         R15 R1 K12 ["GetJoint"]
       49 CALL                             R15 2 1
       50 JUMPIFNOT                        R15 ; [+78]
       51 LOADK                            R18 K13 ["AnimationConstraint"]
       52 NAMECALL                         R16 R15 K14 ["IsA"]
       54 CALL                             R16 2 1
       55 JUMPIFNOT                        R16 ; [+36]
       56 GETTABLEKS                       R16 R15 K15 ["Attachment0"]
       58 JUMPIFNOT                        R16 ; [+14]
       59 GETTABLEKS                       R16 R15 K15 ["Attachment0"]
       61 MOVE                             R18 R7
       62 NAMECALL                         R16 R16 K16 ["IsDescendantOf"]
       64 CALL                             R16 2 1
       65 JUMPIFNOT                        R16 ; [+7]
       66 MOVE                             R18 R14
       67 GETTABLEKS                       R19 R15 K15 ["Attachment0"]
       69 NAMECALL                         R16 R8 K17 ["SetJoint"]
       71 CALL                             R16 3 0
       72 JUMP                             ; [+24]
       73 GETTABLEKS                       R16 R15 K18 ["Attachment1"]
       75 JUMPIFNOT                        R16 ; [+53]
       76 GETTABLEKS                       R16 R15 K18 ["Attachment1"]
       78 MOVE                             R18 R7
       79 NAMECALL                         R16 R16 K16 ["IsDescendantOf"]
       81 CALL                             R16 2 1
       82 JUMPIFNOT                        R16 ; [+46]
       83 MOVE                             R18 R14
       84 GETTABLEKS                       R19 R15 K18 ["Attachment1"]
       86 NAMECALL                         R16 R8 K17 ["SetJoint"]
       88 CALL                             R16 3 0
       89 JUMP                             ; [+7]
       90 JUMP                             ; [+38]
       91 JUMP                             ; [+5]
       92 MOVE                             R18 R14
       93 MOVE                             R19 R15
       94 NAMECALL                         R16 R8 K17 ["SetJoint"]
       96 CALL                             R16 3 0
       97 MOVE                             R18 R14
       98 MOVE                             R21 R14
       99 NAMECALL                         R19 R1 K19 ["GetTposeAdjustment"]
      101 CALL                             R19 2 -1
      102 NAMECALL                         R16 R8 K20 ["SetTposeAdjustment"]
      104 CALL                             R16 -1 0
      105 MOVE                             R18 R14
      106 MOVE                             R21 R14
      107 NAMECALL                         R19 R1 K21 ["GetJointSize"]
      109 CALL                             R19 2 -1
      110 NAMECALL                         R16 R8 K22 ["SetJointSize"]
      112 CALL                             R16 -1 0
      113 MOVE                             R18 R14
      114 MOVE                             R21 R14
      115 NAMECALL                         R19 R1 K23 ["GetJointRangeMin"]
      117 CALL                             R19 2 -1
      118 NAMECALL                         R16 R8 K24 ["SetJointRangeMin"]
      120 CALL                             R16 -1 0
      121 MOVE                             R18 R14
      122 MOVE                             R21 R14
      123 NAMECALL                         R19 R1 K25 ["GetJointRangeMax"]
      125 CALL                             R19 2 -1
      126 NAMECALL                         R16 R8 K26 ["SetJointRangeMax"]
      128 CALL                             R16 -1 0
      129 FORGLOOP                         R10 2 ; [-84]
      131 FORGLOOP                         R2 2 ; [-120]
      133 LOADK                            R4 K27 ["LeftHand"]
      134 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
      136 CALL                             R2 2 1
      137 LOADK                            R5 K28 ["RightHand"]
      138 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
      140 CALL                             R3 2 1
      141 NAMECALL                         R4 R1 K29 ["GetChildren"]
      143 CALL                             R4 1 3
      144 FORGPREP                         R4
      145 LOADK                            R11 K30 ["DigitsRigDescription"]
      146 NAMECALL                         R9 R8 K14 ["IsA"]
      148 CALL                             R9 2 1
      149 JUMPIFNOT                        R9 ; [+25]
      150 GETTABLEKS                       R9 R8 K31 ["Side"]
      152 GETIMPORT                        R10 K35 [Enum.DigitsRigDescriptionSide.Left]
      154 JUMPIFNOTEQ                      R9 R10 ; [+8]
      156 JUMPIFNOT                        R2 ; [+6]
      157 NAMECALL                         R9 R8 K36 ["Clone"]
      159 CALL                             R9 1 1
      160 SETTABLEKS                       R2 R9 K7 ["Parent"]
      162 JUMP                             ; [+12]
      163 GETTABLEKS                       R9 R8 K31 ["Side"]
      165 GETIMPORT                        R10 K38 [Enum.DigitsRigDescriptionSide.Right]
      167 JUMPIFNOTEQ                      R9 R10 ; [+7]
      169 JUMPIFNOT                        R3 ; [+5]
      170 NAMECALL                         R9 R8 K36 ["Clone"]
      172 CALL                             R9 1 1
      173 SETTABLEKS                       R3 R9 K7 ["Parent"]
      175 FORGLOOP                         R4 2 ; [-31]
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K7 ["fixUploadInstance"]
       18 RETURN                           R2 1
