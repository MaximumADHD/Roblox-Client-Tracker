PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setup"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["enforceTpose"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 NEWTABLE                         R3 0 0
       14 JUMPIFNOT                        R2 ; [+118]
       15 GETUPVAL                         R4 2
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+115]
       18 NEWTABLE                         R4 0 2
       20 GETIMPORT                        R7 K5 [Enum.DigitsRigDescriptionSide.Left]
       22 GETIMPORT                        R8 K7 [Enum.DigitsRigDescriptionSide.Right]
       24 SETLIST                          R4 R7 2 [1]
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETIMPORT                        R10 K5 [Enum.DigitsRigDescriptionSide.Left]
       31 JUMPIFNOTEQ                      R8 R10 ; [+4]
       33 GETIMPORT                        R9 K10 [Enum.RigLabel.LeftWrist]
       35 JUMP                             ; [+2]
       36 GETIMPORT                        R9 K12 [Enum.RigLabel.RightWrist]
       38 MOVE                             R12 R9
       39 NAMECALL                         R10 R0 K13 ["GetJoint"]
       41 CALL                             R10 2 1
       42 JUMPIFNOT                        R10 ; [+72]
       43 LOADK                            R14 K14 ["> DigitsRigDescription [Side = %*]"]
       44 GETTABLEKS                       R16 R8 K15 ["Name"]
       46 NAMECALL                         R14 R14 K16 ["format"]
       48 CALL                             R14 2 1
       49 NAMECALL                         R12 R0 K17 ["QueryDescendants"]
       51 CALL                             R12 2 1
       52 GETTABLEN                        R11 R12 1
       53 JUMPIFEQKNIL                     R11 ; [+2]
       55 LOADB                            R12 0 +1
       56 LOADB                            R12 1
       57 JUMPIF                           R11 ; [+18]
       58 GETIMPORT                        R13 K20 [Instance.new]
       60 LOADK                            R14 K21 ["DigitsRigDescription"]
       61 CALL                             R13 1 1
       62 SETTABLEKS                       R8 R13 K22 ["Side"]
       64 SETTABLEKS                       R0 R13 K23 ["Parent"]
       66 GETIMPORT                        R15 K5 [Enum.DigitsRigDescriptionSide.Left]
       68 JUMPIFNOTEQ                      R8 R15 ; [+3]
       70 LOADK                            R14 K24 ["LeftHandDescription"]
       71 JUMP                             ; [+1]
       72 LOADK                            R14 K25 ["RightHandDescription"]
       73 SETTABLEKS                       R14 R13 K15 ["Name"]
       75 MOVE                             R11 R13
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K26 ["autoMapHand"]
       79 MOVE                             R14 R11
       80 MOVE                             R15 R0
       81 CALL                             R13 2 0
       82 LOADB                            R13 0
       83 JUMPIFNOT                        R11 ; [+15]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K27 ["handRigLabels"]
       87 LOADNIL                          R15
       88 LOADNIL                          R16
       89 FORGPREP                         R14
       90 MOVE                             R21 R18
       91 NAMECALL                         R19 R11 K13 ["GetJoint"]
       93 CALL                             R19 2 1
       94 JUMPIFNOT                        R19 ; [+2]
       95 LOADB                            R13 1
       96 JUMP                             ; [+2]
       97 FORGLOOP                         R14 2 ; [-8]
       99 JUMPIFNOT                        R12 ; [+6]
      100 JUMPIFNOT                        R11 ; [+5]
      101 JUMPIF                           R13 ; [+4]
      102 NAMECALL                         R14 R11 K28 ["Destroy"]
      104 CALL                             R14 1 0
      105 JUMP                             ; [+9]
      106 JUMPIFNOT                        R11 ; [+8]
      107 JUMPIFNOT                        R13 ; [+7]
      108 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      110 MOVE                             R15 R3
      111 MOVE                             R16 R11
      112 GETIMPORT                        R14 K31 [table.insert]
      114 CALL                             R14 2 0
      115 FORGLOOP                         R4 2 ; [-87]
      117 GETUPVAL                         R4 5
      118 CALL                             R4 0 1
      119 JUMPIFNOT                        R4 ; [+13]
      120 MOVE                             R4 R3
      121 LOADNIL                          R5
      122 LOADNIL                          R6
      123 FORGPREP                         R4
      124 GETUPVAL                         R9 1
      125 GETTABLEKS                       R9 R9 K32 ["enforceTposeForHand"]
      127 MOVE                             R10 R8
      128 MOVE                             R11 R0
      129 MOVE                             R12 R1
      130 CALL                             R9 3 0
      131 FORGLOOP                         R4 2 ; [-8]
      133 GETUPVAL                         R4 1
      134 GETTABLEKS                       R4 R4 K33 ["sampleTposeAdjustment"]
      136 MOVE                             R5 R0
      137 CALL                             R4 1 0
      138 GETUPVAL                         R4 5
      139 CALL                             R4 0 1
      140 JUMPIFNOT                        R4 ; [+11]
      141 MOVE                             R4 R3
      142 LOADNIL                          R5
      143 LOADNIL                          R6
      144 FORGPREP                         R4
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K34 ["sampleTposeAdjustmentForHand"]
      148 MOVE                             R10 R8
      149 CALL                             R9 1 0
      150 FORGLOOP                         R4 2 ; [-6]
      152 GETUPVAL                         R4 1
      153 GETTABLEKS                       R4 R4 K35 ["clearTransforms"]
      155 MOVE                             R5 R1
      156 CALL                             R4 1 0
      157 GETUPVAL                         R4 1
      158 GETTABLEKS                       R4 R4 K36 ["automaticSize"]
      160 MOVE                             R5 R0
      161 CALL                             R4 1 0
      162 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearMapping"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["clearTposeAdjustment"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+19]
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+16]
       16 NAMECALL                         R2 R0 K2 ["GetChildren"]
       18 CALL                             R2 1 3
       19 FORGPREP                         R2
       20 LOADK                            R9 K3 ["DigitsRigDescription"]
       21 NAMECALL                         R7 R6 K4 ["IsA"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+5]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K5 ["clearTposeAdjustmentForHand"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 0
       30 FORGLOOP                         R2 2 ; [-11]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K6 ["clearTransforms"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K7 ["clearSize"]
       40 MOVE                             R3 R0
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K8 ["clearRange"]
       45 MOVE                             R3 R0
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setup"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearMapping"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enforceTpose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["enforceTposeForHand"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enforceTposeAllHands"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sampleTposeAdjustment"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sampleTposeAdjustmentForHand"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearTposeAdjustment"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+19]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+16]
       11 NAMECALL                         R2 R0 K1 ["GetChildren"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 LOADK                            R9 K2 ["DigitsRigDescription"]
       16 NAMECALL                         R7 R6 K3 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+5]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K4 ["clearTposeAdjustmentForHand"]
       23 MOVE                             R8 R6
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-11]
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearTposeAdjustmentForHand"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["poseAsHrdTposeAdjustment"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearTransforms"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["automaticSize"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearSize"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["handRigLabels"]
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
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K12 ["setupHand"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R6
       29 MOVE                             R10 R4
       30 MOVE                             R11 R3
       31 CALL                             R7 4 0
       32 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["bodyRigLabels"]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K1 ["parentRigLabel"]
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

PROTO_17:
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
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K11 ["getJointParent"]
       55 GETTABLE                         R10 R1 R8
       56 GETTABLEKS                       R10 R10 K8 ["joint"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Automapper"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["HandAutomapper"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["HrdTools"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["SymmetryUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["TransformUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["Utils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["Flags"]
       56 GETTABLEKS                       R8 R8 K12 ["getFFlagAdaptiveAnimationAutoHandTpose"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R9 R9 K11 ["Flags"]
       65 GETTABLEKS                       R9 R9 K13 ["getFFlagAdaptiveAnimationHandRig"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 64 0
       70 DUPCLOSURE                       R10 K14 [PROTO_0]
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R10 R9 K15 ["autoAll"]
       79 DUPCLOSURE                       R10 K16 [PROTO_1]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R10 R9 K17 ["clearAll"]
       85 DUPCLOSURE                       R10 K18 [PROTO_2]
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R10 R9 K19 ["autoMap"]
       89 DUPCLOSURE                       R10 K20 [PROTO_3]
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R10 R9 K21 ["clearMapping"]
       93 DUPCLOSURE                       R10 K22 [PROTO_4]
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R10 R9 K23 ["enforceTpose"]
       97 DUPCLOSURE                       R10 K24 [PROTO_5]
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R10 R9 K25 ["enforceTposeForHand"]
      101 DUPCLOSURE                       R10 K26 [PROTO_6]
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R10 R9 K27 ["enforceTposeAllHands"]
      105 DUPCLOSURE                       R10 K28 [PROTO_7]
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R10 R9 K29 ["sampleTposeAdjustment"]
      109 DUPCLOSURE                       R10 K30 [PROTO_8]
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R10 R9 K31 ["sampleTposeAdjustmentForHand"]
      113 DUPCLOSURE                       R10 K32 [PROTO_9]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R10 R9 K33 ["clearTposeAdjustment"]
      119 DUPCLOSURE                       R10 K34 [PROTO_10]
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R10 R9 K35 ["clearTposeAdjustmentForHand"]
      123 DUPCLOSURE                       R10 K36 [PROTO_11]
      124 CAPTURE                          VAL R2
      125 SETTABLEKS                       R10 R9 K37 ["applyTposeAdjustment"]
      127 DUPCLOSURE                       R10 K38 [PROTO_12]
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R10 R9 K39 ["clearTransforms"]
      131 DUPCLOSURE                       R10 K40 [PROTO_13]
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R10 R9 K41 ["autoSize"]
      135 DUPCLOSURE                       R10 K42 [PROTO_14]
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R10 R9 K43 ["clearSize"]
      139 GETTABLEKS                       R10 R6 K44 ["getJointParent"]
      141 SETTABLEKS                       R10 R9 K44 ["getJointParent"]
      143 GETTABLEKS                       R10 R6 K45 ["getJointPosition"]
      145 SETTABLEKS                       R10 R9 K45 ["getJointPosition"]
      147 GETTABLEKS                       R10 R6 K46 ["getJointRotation"]
      149 SETTABLEKS                       R10 R9 K46 ["getJointRotation"]
      151 GETTABLEKS                       R10 R6 K47 ["setJointRotation"]
      153 SETTABLEKS                       R10 R9 K47 ["setJointRotation"]
      155 GETTABLEKS                       R10 R6 K48 ["getGlobalCoordinateFrame"]
      157 SETTABLEKS                       R10 R9 K48 ["getGlobalCoordinateFrame"]
      159 GETTABLEKS                       R10 R6 K49 ["setGlobalCoordinateFrame"]
      161 SETTABLEKS                       R10 R9 K49 ["setGlobalCoordinateFrame"]
      163 GETTABLEKS                       R10 R6 K50 ["getJointTransform"]
      165 SETTABLEKS                       R10 R9 K50 ["getJointTransform"]
      167 GETTABLEKS                       R10 R6 K51 ["setJointTransform"]
      169 SETTABLEKS                       R10 R9 K51 ["setJointTransform"]
      171 GETTABLEKS                       R10 R6 K52 ["getRigLabelForJoint"]
      173 SETTABLEKS                       R10 R9 K52 ["getRigLabelForJoint"]
      175 GETTABLEKS                       R10 R6 K53 ["isValidTJoint"]
      177 SETTABLEKS                       R10 R9 K53 ["isValidTJoint"]
      179 GETTABLEKS                       R10 R6 K54 ["bodyRigLabels"]
      181 SETTABLEKS                       R10 R9 K54 ["bodyRigLabels"]
      183 GETTABLEKS                       R10 R6 K55 ["handRigLabels"]
      185 SETTABLEKS                       R10 R9 K55 ["handRigLabels"]
      187 GETTABLEKS                       R10 R0 K56 ["symmetryCounterparts"]
      189 SETTABLEKS                       R10 R9 K56 ["symmetryCounterparts"]
      191 SETTABLEKS                       R1 R9 K5 ["HandAutomapper"]
      193 SETTABLEKS                       R3 R9 K7 ["SymmetryUtils"]
      195 SETTABLEKS                       R4 R9 K8 ["TransformUtils"]
      197 DUPCLOSURE                       R10 K57 [PROTO_15]
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R10 R9 K58 ["autoMapHand"]
      202 DUPCLOSURE                       R10 K59 [PROTO_16]
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R10 R9 K60 ["getChildrenByParent"]
      207 DUPCLOSURE                       R10 K61 [PROTO_17]
      208 CAPTURE                          VAL R9
      209 SETTABLEKS                       R10 R9 K62 ["buildSkeleton"]
      211 RETURN                           R9 1
