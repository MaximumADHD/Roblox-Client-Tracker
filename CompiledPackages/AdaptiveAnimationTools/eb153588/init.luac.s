PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setup"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["enforceTpose"]
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["sampleTposeAdjustment"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K3 ["clearTransforms"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K4 ["automaticSize"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearMapping"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["clearTposeAdjustment"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["clearTransforms"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["clearSize"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["clearRange"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setup"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearMapping"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["enforceTpose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["sampleTposeAdjustment"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearTposeAdjustment"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["poseAsHrdTposeAdjustment"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["automaticSize"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearSize"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+9]
        5 LOADK                            R3 K2 ["Bone"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+4]
       10 LOADK                            R3 K3 ["Attachment"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Side"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R5 K4 [Enum.DigitsRigDescriptionSide.Left]
        6 JUMPIFNOTEQ                      R3 R5 ; [+4]
        8 GETIMPORT                        R4 K7 [Enum.RigLabel.LeftWrist]
       10 JUMP                             ; [+2]
       11 GETIMPORT                        R4 K9 [Enum.RigLabel.RightWrist]
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R1 K10 ["GetJoint"]
       16 CALL                             R5 2 1
       17 JUMPIF                           R5 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K11 ["setupHand"]
       22 MOVE                             R7 R0
       23 MOVE                             R8 R5
       24 MOVE                             R9 R3
       25 MOVE                             R10 R2
       26 CALL                             R6 4 0
       27 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["bodyRigLabels"]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["parentRigLabel"]
       12 GETTABLE                         R7 R8 R6
       13 JUMPIFEQKNIL                     R7 ; [+14]
       15 GETTABLE                         R8 R0 R7
       16 JUMPIFNOTEQKNIL                  R8 ; [+4]
       18 NEWTABLE                         R8 0 0
       20 SETTABLE                         R8 R0 R7
       21 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
       23 MOVE                             R10 R8
       24 MOVE                             R11 R6
       25 GETIMPORT                        R9 K4 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R2 2 ; [-20]
       30 RETURN                           R0 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 LOADK                            R10 K1 ["Motor6D"]
        9 NAMECALL                         R8 R7 K2 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIF                           R8 ; [+10]
       13 LOADK                            R10 K3 ["Bone"]
       14 NAMECALL                         R8 R7 K2 ["IsA"]
       16 CALL                             R8 2 1
       17 JUMPIF                           R8 ; [+5]
       18 LOADK                            R10 K4 ["AnimationConstraint"]
       19 NAMECALL                         R8 R7 K2 ["IsA"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K7 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-23]
       32 MOVE                             R3 R2
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 DUPTABLE                         R8 K10 [{"joint", "children"}]
       37 SETTABLEKS                       R7 R8 K8 ["joint"]
       39 NEWTABLE                         R9 0 0
       41 SETTABLEKS                       R9 R8 K9 ["children"]
       43 SETTABLE                         R8 R1 R7
       44 FORGLOOP                         R3 2 ; [-9]
       46 NEWTABLE                         R3 0 0
       48 MOVE                             R4 R2
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K11 ["getJointParent"]
       55 GETTABLE                         R11 R1 R8
       56 GETTABLEKS                       R10 R11 K8 ["joint"]
       58 CALL                             R9 1 1
       59 JUMPIFNOT                        R9 ; [+13]
       60 GETTABLE                         R10 R1 R9
       61 JUMPIFNOT                        R10 ; [+11]
       62 GETTABLE                         R10 R1 R9
       63 GETTABLE                         R11 R1 R8
       64 GETTABLEKS                       R13 R10 K9 ["children"]
       66 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       68 MOVE                             R14 R11
       69 GETIMPORT                        R12 K7 [table.insert]
       71 CALL                             R12 2 0
       72 JUMP                             ; [+7]
       73 GETTABLE                         R12 R1 R8
       74 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       76 MOVE                             R11 R3
       77 GETIMPORT                        R10 K7 [table.insert]
       79 CALL                             R10 2 0
       80 FORGLOOP                         R4 2 ; [-29]
       82 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Automapper"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["HandAutomapper"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["HrdTools"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["SymmetryUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["TransformUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["Utils"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 64 0
       52 DUPCLOSURE                       R8 K11 [PROTO_0]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R8 R7 K12 ["autoAll"]
       57 DUPCLOSURE                       R8 K13 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R8 R7 K14 ["clearAll"]
       61 DUPCLOSURE                       R8 K15 [PROTO_2]
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R8 R7 K16 ["autoMap"]
       65 DUPCLOSURE                       R8 K17 [PROTO_3]
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R8 R7 K18 ["clearMapping"]
       69 DUPCLOSURE                       R8 K19 [PROTO_4]
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R8 R7 K20 ["enforceTpose"]
       73 DUPCLOSURE                       R8 K21 [PROTO_5]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R8 R7 K22 ["sampleTposeAdjustment"]
       77 DUPCLOSURE                       R8 K23 [PROTO_6]
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R8 R7 K24 ["clearTposeAdjustment"]
       81 DUPCLOSURE                       R8 K25 [PROTO_7]
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R8 R7 K26 ["applyTposeAdjustment"]
       85 DUPCLOSURE                       R8 K27 [PROTO_8]
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R8 R7 K28 ["clearTransforms"]
       89 DUPCLOSURE                       R8 K29 [PROTO_9]
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R8 R7 K30 ["autoSize"]
       93 DUPCLOSURE                       R8 K31 [PROTO_10]
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R8 R7 K32 ["clearSize"]
       97 GETTABLEKS                       R8 R6 K33 ["getJointParent"]
       99 SETTABLEKS                       R8 R7 K33 ["getJointParent"]
      101 GETTABLEKS                       R8 R6 K34 ["getJointPosition"]
      103 SETTABLEKS                       R8 R7 K34 ["getJointPosition"]
      105 GETTABLEKS                       R8 R6 K35 ["getJointRotation"]
      107 SETTABLEKS                       R8 R7 K35 ["getJointRotation"]
      109 GETTABLEKS                       R8 R6 K36 ["setJointRotation"]
      111 SETTABLEKS                       R8 R7 K36 ["setJointRotation"]
      113 GETTABLEKS                       R8 R6 K37 ["getGlobalCoordinateFrame"]
      115 SETTABLEKS                       R8 R7 K37 ["getGlobalCoordinateFrame"]
      117 GETTABLEKS                       R8 R6 K38 ["setGlobalCoordinateFrame"]
      119 SETTABLEKS                       R8 R7 K38 ["setGlobalCoordinateFrame"]
      121 GETTABLEKS                       R8 R6 K39 ["getJointTransform"]
      123 SETTABLEKS                       R8 R7 K39 ["getJointTransform"]
      125 GETTABLEKS                       R8 R6 K40 ["setJointTransform"]
      127 SETTABLEKS                       R8 R7 K40 ["setJointTransform"]
      129 GETTABLEKS                       R8 R6 K41 ["getRigLabelForJoint"]
      131 SETTABLEKS                       R8 R7 K41 ["getRigLabelForJoint"]
      133 DUPCLOSURE                       R8 K42 [PROTO_11]
      134 SETTABLEKS                       R8 R7 K43 ["isValidTJoint"]
      136 GETTABLEKS                       R8 R6 K44 ["bodyRigLabels"]
      138 SETTABLEKS                       R8 R7 K44 ["bodyRigLabels"]
      140 GETTABLEKS                       R8 R6 K45 ["handRigLabels"]
      142 SETTABLEKS                       R8 R7 K45 ["handRigLabels"]
      144 GETTABLEKS                       R8 R6 K46 ["hasSpine"]
      146 SETTABLEKS                       R8 R7 K46 ["hasSpine"]
      148 GETTABLEKS                       R8 R6 K47 ["spineLabel"]
      150 SETTABLEKS                       R8 R7 K47 ["spineLabel"]
      152 GETTABLEKS                       R8 R6 K48 ["hasPelvis"]
      154 SETTABLEKS                       R8 R7 K48 ["hasPelvis"]
      156 GETTABLEKS                       R8 R6 K49 ["LeftToeBase"]
      158 SETTABLEKS                       R8 R7 K49 ["LeftToeBase"]
      160 GETTABLEKS                       R8 R6 K50 ["RightToeBase"]
      162 SETTABLEKS                       R8 R7 K50 ["RightToeBase"]
      164 GETTABLEKS                       R8 R0 K51 ["symmetryCounterparts"]
      166 SETTABLEKS                       R8 R7 K51 ["symmetryCounterparts"]
      168 SETTABLEKS                       R1 R7 K5 ["HandAutomapper"]
      170 SETTABLEKS                       R3 R7 K7 ["SymmetryUtils"]
      172 SETTABLEKS                       R4 R7 K8 ["TransformUtils"]
      174 DUPCLOSURE                       R8 K52 [PROTO_12]
      175 CAPTURE                          VAL R1
      176 SETTABLEKS                       R8 R7 K53 ["autoMapHand"]
      178 DUPCLOSURE                       R8 K54 [PROTO_13]
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R0
      181 SETTABLEKS                       R8 R7 K55 ["getChildrenByParent"]
      183 DUPCLOSURE                       R8 K56 [PROTO_14]
      184 CAPTURE                          VAL R7
      185 SETTABLEKS                       R8 R7 K57 ["buildSkeleton"]
      187 RETURN                           R7 1
