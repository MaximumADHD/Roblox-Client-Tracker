PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["asString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationHead"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationUpperTorso"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftUpperLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftLowerLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftHand"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightUpperArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightLowerArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightHand"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftUpperArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftLowerArm"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationLeftFoot"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightUpperLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightLowerLeg"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateMaxJointRotationRightFoot"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["asString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K2 [tonumber]
        8 CALL                             R1 -1 1
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["GetFStringUGCValidateMaxJointRotation"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["UGCValidateMaxJointRotationHead"]
       15 LOADK                            R5 K10 [""]
       16 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       18 CALL                             R2 3 0
       19 GETIMPORT                        R2 K8 [game]
       21 LOADK                            R4 K12 ["UGCValidateMaxJointRotationUpperTorso"]
       22 LOADK                            R5 K10 [""]
       23 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       25 CALL                             R2 3 0
       26 GETIMPORT                        R2 K8 [game]
       28 LOADK                            R4 K13 ["UGCValidateMaxJointRotationLeftUpperLeg"]
       29 LOADK                            R5 K10 [""]
       30 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       32 CALL                             R2 3 0
       33 GETIMPORT                        R2 K8 [game]
       35 LOADK                            R4 K14 ["UGCValidateMaxJointRotationLeftLowerLeg"]
       36 LOADK                            R5 K10 [""]
       37 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       39 CALL                             R2 3 0
       40 GETIMPORT                        R2 K8 [game]
       42 LOADK                            R4 K15 ["UGCValidateMaxJointRotationLeftHand"]
       43 LOADK                            R5 K10 [""]
       44 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       46 CALL                             R2 3 0
       47 GETIMPORT                        R2 K8 [game]
       49 LOADK                            R4 K16 ["UGCValidateMaxJointRotationRightUpperArm"]
       50 LOADK                            R5 K10 [""]
       51 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       53 CALL                             R2 3 0
       54 GETIMPORT                        R2 K8 [game]
       56 LOADK                            R4 K17 ["UGCValidateMaxJointRotationRightLowerArm"]
       57 LOADK                            R5 K10 [""]
       58 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       60 CALL                             R2 3 0
       61 GETIMPORT                        R2 K8 [game]
       63 LOADK                            R4 K18 ["UGCValidateMaxJointRotationRightHand"]
       64 LOADK                            R5 K10 [""]
       65 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       67 CALL                             R2 3 0
       68 GETIMPORT                        R2 K8 [game]
       70 LOADK                            R4 K19 ["UGCValidateMaxJointRotationLeftUpperArm"]
       71 LOADK                            R5 K10 [""]
       72 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       74 CALL                             R2 3 0
       75 GETIMPORT                        R2 K8 [game]
       77 LOADK                            R4 K20 ["UGCValidateMaxJointRotationLeftLowerArm"]
       78 LOADK                            R5 K10 [""]
       79 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       81 CALL                             R2 3 0
       82 GETIMPORT                        R2 K8 [game]
       84 LOADK                            R4 K21 ["UGCValidateMaxJointRotationLeftFoot"]
       85 LOADK                            R5 K10 [""]
       86 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       88 CALL                             R2 3 0
       89 GETIMPORT                        R2 K8 [game]
       91 LOADK                            R4 K22 ["UGCValidateMaxJointRotationRightUpperLeg"]
       92 LOADK                            R5 K10 [""]
       93 NAMECALL                         R2 R2 K11 ["DefineFastString"]
       95 CALL                             R2 3 0
       96 GETIMPORT                        R2 K8 [game]
       98 LOADK                            R4 K23 ["UGCValidateMaxJointRotationRightLowerLeg"]
       99 LOADK                            R5 K10 [""]
      100 NAMECALL                         R2 R2 K11 ["DefineFastString"]
      102 CALL                             R2 3 0
      103 GETIMPORT                        R2 K8 [game]
      105 LOADK                            R4 K24 ["UGCValidateMaxJointRotationRightFoot"]
      106 LOADK                            R5 K10 [""]
      107 NAMECALL                         R2 R2 K11 ["DefineFastString"]
      109 CALL                             R2 3 0
      110 NEWTABLE                         R2 2 0
      112 DUPTABLE                         R3 K39 [{"Head", "UpperTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
      113 DUPCLOSURE                       R4 K40 [PROTO_1]
      114 SETTABLEKS                       R4 R3 K25 ["Head"]
      116 DUPCLOSURE                       R4 K41 [PROTO_2]
      117 SETTABLEKS                       R4 R3 K26 ["UpperTorso"]
      119 DUPCLOSURE                       R4 K42 [PROTO_3]
      120 SETTABLEKS                       R4 R3 K27 ["LeftUpperLeg"]
      122 DUPCLOSURE                       R4 K43 [PROTO_4]
      123 SETTABLEKS                       R4 R3 K28 ["LeftLowerLeg"]
      125 DUPCLOSURE                       R4 K44 [PROTO_5]
      126 SETTABLEKS                       R4 R3 K29 ["LeftHand"]
      128 DUPCLOSURE                       R4 K45 [PROTO_6]
      129 SETTABLEKS                       R4 R3 K30 ["RightUpperArm"]
      131 DUPCLOSURE                       R4 K46 [PROTO_7]
      132 SETTABLEKS                       R4 R3 K31 ["RightLowerArm"]
      134 DUPCLOSURE                       R4 K47 [PROTO_8]
      135 SETTABLEKS                       R4 R3 K32 ["RightHand"]
      137 DUPCLOSURE                       R4 K48 [PROTO_9]
      138 SETTABLEKS                       R4 R3 K33 ["LeftUpperArm"]
      140 DUPCLOSURE                       R4 K49 [PROTO_10]
      141 SETTABLEKS                       R4 R3 K34 ["LeftLowerArm"]
      143 DUPCLOSURE                       R4 K50 [PROTO_11]
      144 SETTABLEKS                       R4 R3 K35 ["LeftFoot"]
      146 DUPCLOSURE                       R4 K51 [PROTO_12]
      147 SETTABLEKS                       R4 R3 K36 ["RightUpperLeg"]
      149 DUPCLOSURE                       R4 K52 [PROTO_13]
      150 SETTABLEKS                       R4 R3 K37 ["RightLowerLeg"]
      152 DUPCLOSURE                       R4 K53 [PROTO_14]
      153 SETTABLEKS                       R4 R3 K38 ["RightFoot"]
      155 DUPCLOSURE                       R4 K54 [PROTO_15]
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R4 R2 K55 ["asString"]
      160 DUPCLOSURE                       R4 K56 [PROTO_16]
      161 CAPTURE                          VAL R2
      162 SETTABLEKS                       R4 R2 K57 ["asNumber"]
      164 RETURN                           R2 1
