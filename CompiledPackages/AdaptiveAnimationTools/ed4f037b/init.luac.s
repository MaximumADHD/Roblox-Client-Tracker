PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["setup"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["enforceTpose"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["sampleTposeAdjustment"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K3 ["clearTransforms"]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 0
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K4 ["automaticSize"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 0
       27 JUMPIFNOT                        R2 ; [+101]
       28 GETUPVAL                         R3 2
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+98]
       31 NEWTABLE                         R3 0 2
       33 GETIMPORT                        R6 K8 [Enum.DigitsRigDescriptionSide.Left]
       35 GETIMPORT                        R7 K10 [Enum.DigitsRigDescriptionSide.Right]
       37 SETLIST                          R3 R6 2 [1]
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETIMPORT                        R9 K8 [Enum.DigitsRigDescriptionSide.Left]
       44 JUMPIFNOTEQ                      R7 R9 ; [+4]
       46 GETIMPORT                        R8 K13 [Enum.RigLabel.LeftWrist]
       48 JUMP                             ; [+2]
       49 GETIMPORT                        R8 K15 [Enum.RigLabel.RightWrist]
       51 MOVE                             R11 R8
       52 NAMECALL                         R9 R0 K16 ["GetJoint"]
       54 CALL                             R9 2 1
       55 JUMPIFNOT                        R9 ; [+71]
       56 LOADNIL                          R10
       57 NAMECALL                         R11 R0 K17 ["GetChildren"]
       59 CALL                             R11 1 3
       60 FORGPREP                         R11
       61 LOADK                            R18 K18 ["DigitsRigDescription"]
       62 NAMECALL                         R16 R15 K19 ["IsA"]
       64 CALL                             R16 2 1
       65 JUMPIFNOT                        R16 ; [+6]
       66 GETTABLEKS                       R16 R15 K20 ["Side"]
       68 JUMPIFNOTEQ                      R16 R7 ; [+3]
       70 MOVE                             R10 R15
       71 JUMP                             ; [+2]
       72 FORGLOOP                         R11 2 ; [-12]
       74 JUMPIFEQKNIL                     R10 ; [+2]
       76 LOADB                            R11 0 +1
       77 LOADB                            R11 1
       78 JUMPIF                           R10 ; [+21]
       79 GETIMPORT                        R12 K23 [Instance.new]
       81 LOADK                            R13 K18 ["DigitsRigDescription"]
       82 CALL                             R12 1 1
       83 SETTABLEKS                       R7 R12 K20 ["Side"]
       85 SETTABLEKS                       R0 R12 K24 ["Parent"]
       87 GETUPVAL                         R13 3
       88 CALL                             R13 0 1
       89 JUMPIFNOT                        R13 ; [+9]
       90 GETIMPORT                        R14 K8 [Enum.DigitsRigDescriptionSide.Left]
       92 JUMPIFNOTEQ                      R7 R14 ; [+3]
       94 LOADK                            R13 K25 ["LeftHandDescription"]
       95 JUMP                             ; [+1]
       96 LOADK                            R13 K26 ["RightHandDescription"]
       97 SETTABLEKS                       R13 R12 K27 ["Name"]
       99 MOVE                             R10 R12
      100 GETUPVAL                         R13 4
      101 GETTABLEKS                       R12 R13 K28 ["autoMapHand"]
      103 MOVE                             R13 R10
      104 MOVE                             R14 R0
      105 CALL                             R12 2 0
      106 JUMPIFNOT                        R11 ; [+20]
      107 LOADB                            R12 0
      108 GETUPVAL                         R16 5
      109 GETTABLEKS                       R13 R16 K29 ["handRigLabels"]
      111 LOADNIL                          R14
      112 LOADNIL                          R15
      113 FORGPREP                         R13
      114 MOVE                             R20 R17
      115 NAMECALL                         R18 R10 K16 ["GetJoint"]
      117 CALL                             R18 2 1
      118 JUMPIFNOT                        R18 ; [+2]
      119 LOADB                            R12 1
      120 JUMP                             ; [+2]
      121 FORGLOOP                         R13 2 ; [-8]
      123 JUMPIF                           R12 ; [+3]
      124 NAMECALL                         R13 R10 K30 ["Destroy"]
      126 CALL                             R13 1 0
      127 FORGLOOP                         R3 2 ; [-86]
      129 RETURN                           R0 0

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
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["handRigLabels"]
        5 GETTABLEKS                       R4 R0 K1 ["Side"]
        7 JUMPIF                           R4 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R6 K5 [Enum.DigitsRigDescriptionSide.Left]
       11 JUMPIFNOTEQ                      R4 R6 ; [+4]
       13 GETIMPORT                        R5 K8 [Enum.RigLabel.LeftWrist]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R5 K10 [Enum.RigLabel.RightWrist]
       18 MOVE                             R8 R5
       19 NAMECALL                         R6 R1 K11 ["GetJoint"]
       21 CALL                             R6 2 1
       22 JUMPIF                           R6 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K12 ["setupHand"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R6
       29 MOVE                             R10 R4
       30 MOVE                             R11 R3
       31 CALL                             R7 4 0
       32 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R10 K3 [script]
       54 GETTABLEKS                       R9 R10 K11 ["Flags"]
       56 GETTABLEKS                       R8 R9 K12 ["getFFlagAdaptiveAnimationBetaImprovements"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R11 K3 [script]
       63 GETTABLEKS                       R10 R11 K11 ["Flags"]
       65 GETTABLEKS                       R9 R10 K13 ["getFFlagAdaptiveAnimationHandRig"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 64 0
       70 DUPCLOSURE                       R10 K14 [PROTO_0]
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R10 R9 K15 ["autoAll"]
       79 DUPCLOSURE                       R10 K16 [PROTO_1]
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R10 R9 K17 ["clearAll"]
       83 DUPCLOSURE                       R10 K18 [PROTO_2]
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R10 R9 K19 ["autoMap"]
       87 DUPCLOSURE                       R10 K20 [PROTO_3]
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R10 R9 K21 ["clearMapping"]
       91 DUPCLOSURE                       R10 K22 [PROTO_4]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R10 R9 K23 ["enforceTpose"]
       95 DUPCLOSURE                       R10 K24 [PROTO_5]
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R10 R9 K25 ["sampleTposeAdjustment"]
       99 DUPCLOSURE                       R10 K26 [PROTO_6]
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R10 R9 K27 ["clearTposeAdjustment"]
      103 DUPCLOSURE                       R10 K28 [PROTO_7]
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R10 R9 K29 ["applyTposeAdjustment"]
      107 DUPCLOSURE                       R10 K30 [PROTO_8]
      108 CAPTURE                          VAL R2
      109 SETTABLEKS                       R10 R9 K31 ["clearTransforms"]
      111 DUPCLOSURE                       R10 K32 [PROTO_9]
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R10 R9 K33 ["autoSize"]
      115 DUPCLOSURE                       R10 K34 [PROTO_10]
      116 CAPTURE                          VAL R2
      117 SETTABLEKS                       R10 R9 K35 ["clearSize"]
      119 GETTABLEKS                       R10 R6 K36 ["getJointParent"]
      121 SETTABLEKS                       R10 R9 K36 ["getJointParent"]
      123 GETTABLEKS                       R10 R6 K37 ["getJointPosition"]
      125 SETTABLEKS                       R10 R9 K37 ["getJointPosition"]
      127 GETTABLEKS                       R10 R6 K38 ["getJointRotation"]
      129 SETTABLEKS                       R10 R9 K38 ["getJointRotation"]
      131 GETTABLEKS                       R10 R6 K39 ["setJointRotation"]
      133 SETTABLEKS                       R10 R9 K39 ["setJointRotation"]
      135 GETTABLEKS                       R10 R6 K40 ["getGlobalCoordinateFrame"]
      137 SETTABLEKS                       R10 R9 K40 ["getGlobalCoordinateFrame"]
      139 GETTABLEKS                       R10 R6 K41 ["setGlobalCoordinateFrame"]
      141 SETTABLEKS                       R10 R9 K41 ["setGlobalCoordinateFrame"]
      143 GETTABLEKS                       R10 R6 K42 ["getJointTransform"]
      145 SETTABLEKS                       R10 R9 K42 ["getJointTransform"]
      147 GETTABLEKS                       R10 R6 K43 ["setJointTransform"]
      149 SETTABLEKS                       R10 R9 K43 ["setJointTransform"]
      151 GETTABLEKS                       R10 R6 K44 ["getRigLabelForJoint"]
      153 SETTABLEKS                       R10 R9 K44 ["getRigLabelForJoint"]
      155 GETTABLEKS                       R10 R6 K45 ["isValidTJoint"]
      157 SETTABLEKS                       R10 R9 K45 ["isValidTJoint"]
      159 GETTABLEKS                       R10 R6 K46 ["bodyRigLabels"]
      161 SETTABLEKS                       R10 R9 K46 ["bodyRigLabels"]
      163 GETTABLEKS                       R10 R6 K47 ["handRigLabels"]
      165 SETTABLEKS                       R10 R9 K47 ["handRigLabels"]
      167 GETTABLEKS                       R10 R6 K48 ["hasSpine"]
      169 SETTABLEKS                       R10 R9 K48 ["hasSpine"]
      171 GETTABLEKS                       R10 R6 K49 ["spineLabel"]
      173 SETTABLEKS                       R10 R9 K49 ["spineLabel"]
      175 GETTABLEKS                       R10 R6 K50 ["hasPelvis"]
      177 SETTABLEKS                       R10 R9 K50 ["hasPelvis"]
      179 GETTABLEKS                       R10 R6 K51 ["LeftToeBase"]
      181 SETTABLEKS                       R10 R9 K51 ["LeftToeBase"]
      183 GETTABLEKS                       R10 R6 K52 ["RightToeBase"]
      185 SETTABLEKS                       R10 R9 K52 ["RightToeBase"]
      187 GETTABLEKS                       R10 R0 K53 ["symmetryCounterparts"]
      189 SETTABLEKS                       R10 R9 K53 ["symmetryCounterparts"]
      191 SETTABLEKS                       R1 R9 K5 ["HandAutomapper"]
      193 SETTABLEKS                       R3 R9 K7 ["SymmetryUtils"]
      195 SETTABLEKS                       R4 R9 K8 ["TransformUtils"]
      197 DUPCLOSURE                       R10 K54 [PROTO_11]
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R10 R9 K55 ["autoMapHand"]
      202 DUPCLOSURE                       R10 K56 [PROTO_12]
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R10 R9 K57 ["getChildrenByParent"]
      207 DUPCLOSURE                       R10 K58 [PROTO_13]
      208 CAPTURE                          VAL R9
      209 SETTABLEKS                       R10 R9 K59 ["buildSkeleton"]
      211 RETURN                           R9 1
