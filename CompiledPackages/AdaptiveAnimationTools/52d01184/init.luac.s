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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["allRigLabels"]
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
       12 JUMPIF                           R8 ; [+5]
       13 LOADK                            R10 K3 ["Bone"]
       14 NAMECALL                         R8 R7 K2 ["IsA"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-18]
       27 MOVE                             R3 R2
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 DUPTABLE                         R8 K9 [{"joint", "children"}]
       32 SETTABLEKS                       R7 R8 K7 ["joint"]
       34 NEWTABLE                         R9 0 0
       36 SETTABLEKS                       R9 R8 K8 ["children"]
       38 SETTABLE                         R8 R1 R7
       39 FORGLOOP                         R3 2 ; [-9]
       41 NEWTABLE                         R3 0 0
       43 MOVE                             R4 R2
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R9 R10 K10 ["getJointParent"]
       50 GETTABLE                         R11 R1 R8
       51 GETTABLEKS                       R10 R11 K7 ["joint"]
       53 CALL                             R9 1 1
       54 JUMPIFNOT                        R9 ; [+13]
       55 GETTABLE                         R10 R1 R9
       56 JUMPIFNOT                        R10 ; [+11]
       57 GETTABLE                         R10 R1 R9
       58 GETTABLE                         R11 R1 R8
       59 GETTABLEKS                       R13 R10 K8 ["children"]
       61 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       63 MOVE                             R14 R11
       64 GETIMPORT                        R12 K6 [table.insert]
       66 CALL                             R12 2 0
       67 JUMP                             ; [+7]
       68 GETTABLE                         R12 R1 R8
       69 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       71 MOVE                             R11 R3
       72 GETIMPORT                        R10 K6 [table.insert]
       74 CALL                             R10 2 0
       75 FORGLOOP                         R4 2 ; [-29]
       77 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Automapper"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["HrdTools"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["Utils"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 32 0
       31 DUPCLOSURE                       R5 K8 [PROTO_0]
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R5 R4 K9 ["autoAll"]
       36 DUPCLOSURE                       R5 K10 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K11 ["clearAll"]
       40 DUPCLOSURE                       R5 K12 [PROTO_2]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R5 R4 K13 ["autoMap"]
       44 DUPCLOSURE                       R5 K14 [PROTO_3]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R5 R4 K15 ["clearMapping"]
       48 DUPCLOSURE                       R5 K16 [PROTO_4]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R5 R4 K17 ["enforceTpose"]
       52 DUPCLOSURE                       R5 K18 [PROTO_5]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R4 K19 ["sampleTposeAdjustment"]
       56 DUPCLOSURE                       R5 K20 [PROTO_6]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R5 R4 K21 ["clearTposeAdjustment"]
       60 DUPCLOSURE                       R5 K22 [PROTO_7]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R5 R4 K23 ["applyTposeAdjustment"]
       64 DUPCLOSURE                       R5 K24 [PROTO_8]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R5 R4 K25 ["clearTransforms"]
       68 DUPCLOSURE                       R5 K26 [PROTO_9]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R5 R4 K27 ["autoSize"]
       72 DUPCLOSURE                       R5 K28 [PROTO_10]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R5 R4 K29 ["clearSize"]
       76 GETTABLEKS                       R5 R3 K30 ["getJointParent"]
       78 SETTABLEKS                       R5 R4 K30 ["getJointParent"]
       80 GETTABLEKS                       R5 R3 K31 ["getJointPosition"]
       82 SETTABLEKS                       R5 R4 K31 ["getJointPosition"]
       84 GETTABLEKS                       R5 R3 K32 ["getJointRotation"]
       86 SETTABLEKS                       R5 R4 K32 ["getJointRotation"]
       88 GETTABLEKS                       R5 R3 K33 ["setJointRotation"]
       90 SETTABLEKS                       R5 R4 K33 ["setJointRotation"]
       92 GETTABLEKS                       R5 R3 K34 ["getGlobalCoordinateFrame"]
       94 SETTABLEKS                       R5 R4 K34 ["getGlobalCoordinateFrame"]
       96 GETTABLEKS                       R5 R3 K35 ["setGlobalCoordinateFrame"]
       98 SETTABLEKS                       R5 R4 K35 ["setGlobalCoordinateFrame"]
      100 GETTABLEKS                       R5 R3 K36 ["getJointTransform"]
      102 SETTABLEKS                       R5 R4 K36 ["getJointTransform"]
      104 GETTABLEKS                       R5 R3 K37 ["setJointTransform"]
      106 SETTABLEKS                       R5 R4 K37 ["setJointTransform"]
      108 GETTABLEKS                       R5 R3 K38 ["getRigLabelForJoint"]
      110 SETTABLEKS                       R5 R4 K38 ["getRigLabelForJoint"]
      112 DUPCLOSURE                       R5 K39 [PROTO_11]
      113 SETTABLEKS                       R5 R4 K40 ["isValidTJoint"]
      115 GETTABLEKS                       R5 R3 K41 ["allRigLabels"]
      117 SETTABLEKS                       R5 R4 K41 ["allRigLabels"]
      119 GETTABLEKS                       R5 R0 K42 ["symmetryCounterparts"]
      121 SETTABLEKS                       R5 R4 K42 ["symmetryCounterparts"]
      123 DUPCLOSURE                       R5 K43 [PROTO_12]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R5 R4 K44 ["getChildrenByParent"]
      128 DUPCLOSURE                       R5 K45 [PROTO_13]
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R5 R4 K46 ["buildSkeleton"]
      132 RETURN                           R4 1
