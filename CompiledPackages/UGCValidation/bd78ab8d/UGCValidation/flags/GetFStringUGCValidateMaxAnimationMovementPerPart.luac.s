PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["asString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementHead"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementUpperTorso"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftUpperLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftLowerLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftHand"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightUpperArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightLowerArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightHand"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftUpperArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftLowerArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementLeftFoot"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightUpperLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightLowerLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxAnimationMovementRightFoot"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 MOVE                             R2 R1
        7 CALL                             R2 0 1
        8 LENGTH                           R3 R2
        9 JUMPIFNOTEQKN                    R3 K0 [0] ; [+4]
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 -1
       13 RETURN                           R3 -1
       14 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["asString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K2 [tonumber]
        8 CALL                             R1 -1 1
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R3 K6 ["GetFStringUGCValidateMaxAnimationMovement"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 GETIMPORT                        R3 K9 [game]
       18 LOADK                            R5 K10 ["UGCValidateMaxAnimationMovementHead"]
       19 LOADK                            R6 K11 [""]
       20 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       22 CALL                             R3 3 0
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K13 ["UGCValidateMaxAnimationMovementUpperTorso"]
       26 LOADK                            R6 K11 [""]
       27 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       29 CALL                             R3 3 0
       30 GETIMPORT                        R3 K9 [game]
       32 LOADK                            R5 K14 ["UGCValidateMaxAnimationMovementLeftUpperLeg"]
       33 LOADK                            R6 K11 [""]
       34 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       36 CALL                             R3 3 0
       37 GETIMPORT                        R3 K9 [game]
       39 LOADK                            R5 K15 ["UGCValidateMaxAnimationMovementLeftLowerLeg"]
       40 LOADK                            R6 K11 [""]
       41 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       43 CALL                             R3 3 0
       44 GETIMPORT                        R3 K9 [game]
       46 LOADK                            R5 K16 ["UGCValidateMaxAnimationMovementLeftHand"]
       47 LOADK                            R6 K11 [""]
       48 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       50 CALL                             R3 3 0
       51 GETIMPORT                        R3 K9 [game]
       53 LOADK                            R5 K17 ["UGCValidateMaxAnimationMovementRightUpperArm"]
       54 LOADK                            R6 K11 [""]
       55 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       57 CALL                             R3 3 0
       58 GETIMPORT                        R3 K9 [game]
       60 LOADK                            R5 K18 ["UGCValidateMaxAnimationMovementRightLowerArm"]
       61 LOADK                            R6 K11 [""]
       62 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       64 CALL                             R3 3 0
       65 GETIMPORT                        R3 K9 [game]
       67 LOADK                            R5 K19 ["UGCValidateMaxAnimationMovementRightHand"]
       68 LOADK                            R6 K11 [""]
       69 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       71 CALL                             R3 3 0
       72 GETIMPORT                        R3 K9 [game]
       74 LOADK                            R5 K20 ["UGCValidateMaxAnimationMovementLeftUpperArm"]
       75 LOADK                            R6 K11 [""]
       76 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       78 CALL                             R3 3 0
       79 GETIMPORT                        R3 K9 [game]
       81 LOADK                            R5 K21 ["UGCValidateMaxAnimationMovementLeftLowerArm"]
       82 LOADK                            R6 K11 [""]
       83 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       85 CALL                             R3 3 0
       86 GETIMPORT                        R3 K9 [game]
       88 LOADK                            R5 K22 ["UGCValidateMaxAnimationMovementLeftFoot"]
       89 LOADK                            R6 K11 [""]
       90 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       92 CALL                             R3 3 0
       93 GETIMPORT                        R3 K9 [game]
       95 LOADK                            R5 K23 ["UGCValidateMaxAnimationMovementRightUpperLeg"]
       96 LOADK                            R6 K11 [""]
       97 NAMECALL                         R3 R3 K12 ["DefineFastString"]
       99 CALL                             R3 3 0
      100 GETIMPORT                        R3 K9 [game]
      102 LOADK                            R5 K24 ["UGCValidateMaxAnimationMovementRightLowerLeg"]
      103 LOADK                            R6 K11 [""]
      104 NAMECALL                         R3 R3 K12 ["DefineFastString"]
      106 CALL                             R3 3 0
      107 GETIMPORT                        R3 K9 [game]
      109 LOADK                            R5 K25 ["UGCValidateMaxAnimationMovementRightFoot"]
      110 LOADK                            R6 K11 [""]
      111 NAMECALL                         R3 R3 K12 ["DefineFastString"]
      113 CALL                             R3 3 0
      114 NEWTABLE                         R3 2 0
      116 DUPTABLE                         R4 K40 [{"Head", "UpperTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
      117 DUPCLOSURE                       R5 K41 [PROTO_1]
      118 SETTABLEKS                       R5 R4 K26 ["Head"]
      120 DUPCLOSURE                       R5 K42 [PROTO_2]
      121 SETTABLEKS                       R5 R4 K27 ["UpperTorso"]
      123 DUPCLOSURE                       R5 K43 [PROTO_3]
      124 SETTABLEKS                       R5 R4 K28 ["LeftUpperLeg"]
      126 DUPCLOSURE                       R5 K44 [PROTO_4]
      127 SETTABLEKS                       R5 R4 K29 ["LeftLowerLeg"]
      129 DUPCLOSURE                       R5 K45 [PROTO_5]
      130 SETTABLEKS                       R5 R4 K30 ["LeftHand"]
      132 DUPCLOSURE                       R5 K46 [PROTO_6]
      133 SETTABLEKS                       R5 R4 K31 ["RightUpperArm"]
      135 DUPCLOSURE                       R5 K47 [PROTO_7]
      136 SETTABLEKS                       R5 R4 K32 ["RightLowerArm"]
      138 DUPCLOSURE                       R5 K48 [PROTO_8]
      139 SETTABLEKS                       R5 R4 K33 ["RightHand"]
      141 DUPCLOSURE                       R5 K49 [PROTO_9]
      142 SETTABLEKS                       R5 R4 K34 ["LeftUpperArm"]
      144 DUPCLOSURE                       R5 K50 [PROTO_10]
      145 SETTABLEKS                       R5 R4 K35 ["LeftLowerArm"]
      147 DUPCLOSURE                       R5 K51 [PROTO_11]
      148 SETTABLEKS                       R5 R4 K36 ["LeftFoot"]
      150 DUPCLOSURE                       R5 K52 [PROTO_12]
      151 SETTABLEKS                       R5 R4 K37 ["RightUpperLeg"]
      153 DUPCLOSURE                       R5 K53 [PROTO_13]
      154 SETTABLEKS                       R5 R4 K38 ["RightLowerLeg"]
      156 DUPCLOSURE                       R5 K54 [PROTO_14]
      157 SETTABLEKS                       R5 R4 K39 ["RightFoot"]
      159 DUPCLOSURE                       R5 K55 [PROTO_15]
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R2
      162 SETTABLEKS                       R5 R3 K56 ["asString"]
      164 DUPCLOSURE                       R5 K57 [PROTO_16]
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R5 R3 K58 ["asNumber"]
      168 RETURN                           R3 1
