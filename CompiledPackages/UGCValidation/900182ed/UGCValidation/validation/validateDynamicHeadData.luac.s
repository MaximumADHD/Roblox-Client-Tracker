PROTO_0:
        0 GETIMPORT                        R3 K2 [string.format]
        2 LOADK                            R4 K3 ["Failed to load model for dynamic head '%s'. Make sure model exists and try again."]
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETIMPORT                        R4 K5 [error]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K6 ["reportFailure"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K7 ["ErrorType"]
       16 GETTABLEKS                       R5 R6 K8 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
       18 LOADNIL                          R6
       19 MOVE                             R7 R2
       20 CALL                             R4 3 0
       21 LOADB                            R4 0
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R3
       25 SETLIST                          R5 R6 1 [1]
       27 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K0 ["MeshId"]
        7 GETUPVAL                         R4 2
        8 CALL                             R1 3 2
        9 JUMPIF                           R1 ; [+4]
       10 GETIMPORT                        R3 K2 [error]
       12 LOADK                            R4 K3 ["Failed to retrieve MeshContent"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 4
       15 MOVE                             R5 R2
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R0
       18 NAMECALL                         R3 R3 K4 ["ValidateEditableMeshFacialBounds"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETUPVAL                         R3 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 MOVE                             R5 R1
       11 CALL                             R3 2 2
       12 JUMPIF                           R3 ; [+21]
       13 GETIMPORT                        R5 K3 [string.format]
       15 LOADK                            R6 K4 ["Failed to load mesh data for '%s'. Make sure the mesh exists and try again."]
       16 NAMECALL                         R7 R0 K5 ["GetFullName"]
       18 CALL                             R7 1 -1
       19 CALL                             R5 -1 1
       20 JUMPIFEQKNIL                     R2 ; [+6]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETIMPORT                        R6 K7 [error]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 0
       27 LOADB                            R6 0
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R5
       31 SETLIST                          R7 R8 1 [1]
       33 RETURN                           R6 2
       34 JUMPIF                           R4 ; [+13]
       35 LOADB                            R5 0
       36 NEWTABLE                         R6 0 1
       38 GETIMPORT                        R7 K3 [string.format]
       40 LOADK                            R8 K8 ["DynamicHead (%s) when emoting surpasses the expected bounding box"]
       41 NAMECALL                         R9 R0 K5 ["GetFullName"]
       43 CALL                             R9 1 -1
       44 CALL                             R7 -1 -1
       45 SETLIST                          R6 R7 -1 [1]
       47 RETURN                           R5 2
       48 LOADB                            R5 1
       49 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K0 ["MeshId"]
        7 GETUPVAL                         R4 2
        8 CALL                             R1 3 2
        9 JUMPIF                           R1 ; [+4]
       10 GETIMPORT                        R3 K2 [error]
       12 LOADK                            R4 K3 ["Failed to retrieve MeshContent"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 4
       15 MOVE                             R5 R2
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R0
       18 NAMECALL                         R3 R3 K4 ["ValidateEditableMeshFacialExpressiveness"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETUPVAL                         R3 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 MOVE                             R5 R1
       11 CALL                             R3 2 2
       12 JUMPIF                           R3 ; [+21]
       13 GETIMPORT                        R5 K3 [string.format]
       15 LOADK                            R6 K4 ["Failed to load mesh data for '%s'. Make sure the mesh exists and try again."]
       16 NAMECALL                         R7 R0 K5 ["GetFullName"]
       18 CALL                             R7 1 -1
       19 CALL                             R5 -1 1
       20 JUMPIFEQKNIL                     R2 ; [+6]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETIMPORT                        R6 K7 [error]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 0
       27 LOADB                            R6 0
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R5
       31 SETLIST                          R7 R8 1 [1]
       33 RETURN                           R6 2
       34 GETUPVAL                         R5 5
       35 JUMPIFNOTLT                      R4 R5 ; [+16]
       37 LOADB                            R5 0
       38 NEWTABLE                         R6 0 1
       40 GETIMPORT                        R7 K3 [string.format]
       42 LOADK                            R8 K8 ["DynamicHead (%s) did not pass threshold (%f < %f) for percent change when emoting"]
       43 NAMECALL                         R9 R0 K5 ["GetFullName"]
       45 CALL                             R9 1 1
       46 MOVE                             R10 R4
       47 GETUPVAL                         R11 5
       48 CALL                             R7 4 -1
       49 SETLIST                          R6 R7 -1 [1]
       51 RETURN                           R5 2
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["MeshId"]
        3 GETUPVAL                         R3 2
        4 CALL                             R0 3 2
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to retrieve MeshContent"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["ValidateDynamicHeadEditableMesh"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["MeshId"]
        3 GETUPVAL                         R3 2
        4 CALL                             R0 3 2
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to retrieve MeshContent"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R4 R1
       12 GETUPVAL                         R5 4
       13 NAMECALL                         R2 R2 K4 ["GetDynamicHeadEditableMeshInactiveControls"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

PROTO_7:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K2 ["isServer"]
       10 GETIMPORT                        R4 K4 [pcall]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 CALL                             R4 1 2
       18 JUMPIF                           R4 ; [+7]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R0 K5 ["Name"]
       23 MOVE                             R9 R1
       24 CALL                             R6 3 -1
       25 RETURN                           R6 -1
       26 JUMPIF                           R5 ; [+23]
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R6 R7 K6 ["reportFailure"]
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K7 ["ErrorType"]
       33 GETTABLEKS                       R7 R8 K8 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
       35 LOADNIL                          R8
       36 MOVE                             R9 R1
       37 CALL                             R6 3 0
       38 LOADB                            R6 0
       39 NEWTABLE                         R7 0 1
       41 GETIMPORT                        R8 K11 [string.format]
       43 LOADK                            R9 K12 ["Failed validation for dynamic head '%s' due to missing FACS information. You need to provide FACS controls for at least 17 poses (see documentation)."]
       44 GETTABLEKS                       R10 R0 K5 ["Name"]
       46 CALL                             R8 2 -1
       47 SETLIST                          R7 R8 -1 [1]
       49 RETURN                           R6 2
       50 GETUPVAL                         R5 5
       51 GETTABLEKS                       R4 R5 K13 ["new"]
       53 CALL                             R4 0 1
       54 GETUPVAL                         R5 6
       55 CALL                             R5 0 1
       56 JUMPIFNOT                        R5 ; [+98]
       57 GETIMPORT                        R5 K4 [pcall]
       59 NEWCLOSURE                       R6 P1
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U7
       65 CALL                             R5 1 3
       66 JUMPIF                           R5 ; [+21]
       67 GETIMPORT                        R8 K15 [string.find]
       69 MOVE                             R9 R6
       70 LOADK                            R10 K16 ["Download Error"]
       71 CALL                             R8 2 1
       72 JUMPIFNOTEQKN                    R8 K17 [1] ; [+8]
       74 GETUPVAL                         R8 3
       75 MOVE                             R9 R3
       76 GETTABLEKS                       R10 R0 K5 ["Name"]
       78 MOVE                             R11 R1
       79 CALL                             R8 3 -1
       80 RETURN                           R8 -1
       81 LOADB                            R9 0
       82 FASTCALL2                        ASSERT R9 R6 ; [+4]
       84 MOVE                             R10 R6
       85 GETIMPORT                        R8 K19 [assert]
       87 CALL                             R8 2 0
       88 LENGTH                           R9 R6
       89 JUMPIFEQKN                       R9 K20 [0] ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 LENGTH                           R10 R7
       94 JUMPIFEQKN                       R10 K20 [0] ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 JUMPIFNOT                        R8 ; [+1]
       99 JUMPIF                           R9 ; [+55]
      100 GETUPVAL                         R11 4
      101 GETTABLEKS                       R10 R11 K6 ["reportFailure"]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R12 R13 K7 ["ErrorType"]
      106 GETTABLEKS                       R11 R12 K21 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      108 LOADNIL                          R12
      109 MOVE                             R13 R1
      110 CALL                             R10 3 0
      111 MOVE                             R12 R8
      112 NEWTABLE                         R13 0 1
      114 LOADK                            R15 K22 ["%*.MeshId (%*) is missing FACS controls: %*"]
      115 GETTABLEKS                       R17 R0 K5 ["Name"]
      117 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      119 GETIMPORT                        R19 K26 [table.concat]
      121 MOVE                             R20 R6
      122 LOADK                            R21 K27 [", "]
      123 CALL                             R19 2 1
      124 NAMECALL                         R15 R15 K10 ["format"]
      126 CALL                             R15 4 1
      127 MOVE                             R14 R15
      128 SETLIST                          R13 R14 1 [1]
      130 NAMECALL                         R10 R4 K28 ["updateReasons"]
      132 CALL                             R10 3 0
      133 MOVE                             R12 R9
      134 NEWTABLE                         R13 0 1
      136 LOADK                            R15 K29 ["%*.MeshId (%*) has inactive FACS controls: %*"]
      137 GETTABLEKS                       R17 R0 K5 ["Name"]
      139 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      141 GETIMPORT                        R19 K26 [table.concat]
      143 MOVE                             R20 R7
      144 LOADK                            R21 K27 [", "]
      145 CALL                             R19 2 1
      146 NAMECALL                         R15 R15 K10 ["format"]
      148 CALL                             R15 4 1
      149 MOVE                             R14 R15
      150 SETLIST                          R13 R14 1 [1]
      152 NAMECALL                         R10 R4 K28 ["updateReasons"]
      154 CALL                             R10 3 0
      155 GETUPVAL                         R7 8
      156 MOVE                             R8 R0
      157 MOVE                             R9 R1
      158 CALL                             R7 2 -1
      159 NAMECALL                         R5 R4 K28 ["updateReasons"]
      161 CALL                             R5 -1 0
      162 GETUPVAL                         R5 9
      163 CALL                             R5 0 1
      164 JUMPIF                           R5 ; [+7]
      165 GETUPVAL                         R7 10
      166 MOVE                             R8 R0
      167 MOVE                             R9 R1
      168 CALL                             R7 2 -1
      169 NAMECALL                         R5 R4 K28 ["updateReasons"]
      171 CALL                             R5 -1 0
      172 GETUPVAL                         R5 11
      173 CALL                             R5 0 1
      174 JUMPIFNOT                        R5 ; [+7]
      175 GETUPVAL                         R7 12
      176 MOVE                             R8 R0
      177 MOVE                             R9 R1
      178 CALL                             R7 2 -1
      179 NAMECALL                         R5 R4 K28 ["updateReasons"]
      181 CALL                             R5 -1 0
      182 GETUPVAL                         R6 4
      183 GETTABLEKS                       R5 R6 K30 ["recordScriptTime"]
      185 GETIMPORT                        R7 K32 [script]
      187 GETTABLEKS                       R6 R7 K5 ["Name"]
      189 MOVE                             R7 R2
      190 MOVE                             R8 R1
      191 CALL                             R5 3 0
      192 NAMECALL                         R5 R4 K33 ["getFinalResults"]
      194 CALL                             R5 1 -1
      195 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R5 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R5 K11 ["FailureReasonsAccumulator"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R6 R1 K12 ["validation"]
       29 GETTABLEKS                       R5 R6 K13 ["validateFacsJointBounds"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R7 R1 K14 ["flags"]
       36 GETTABLEKS                       R6 R7 K15 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R8 R1 K14 ["flags"]
       43 GETTABLEKS                       R7 R8 K16 ["getEngineFeatureEngineUGCValidateBodyParts"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R9 R1 K14 ["flags"]
       50 GETTABLEKS                       R8 R9 K17 ["getEngineFeatureUGCValidateGetInactiveControls"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R9 K1 [game]
       55 LOADK                            R11 K19 ["UGCValidateFacialBoundsScale"]
       56 LOADN                            R12 120
       57 NAMECALL                         R9 R9 K20 ["DefineFastInt"]
       59 CALL                             R9 3 1
       60 DIVK                             R8 R9 K18 [100]
       61 GETIMPORT                        R10 K1 [game]
       63 LOADK                            R12 K21 ["UGCValidateFacialExpressivenessThreshold"]
       64 LOADN                            R13 10
       65 NAMECALL                         R10 R10 K20 ["DefineFastInt"]
       67 CALL                             R10 3 1
       68 DIVK                             R9 R10 K18 [100]
       69 GETIMPORT                        R11 K1 [game]
       71 LOADK                            R13 K22 ["UGCValidateFacialExpressivenessMinVertDelta"]
       72 LOADN                            R14 2
       73 NAMECALL                         R11 R11 K20 ["DefineFastInt"]
       75 CALL                             R11 3 1
       76 DIVK                             R10 R11 K18 [100]
       77 GETIMPORT                        R11 K8 [require]
       79 GETTABLEKS                       R13 R1 K10 ["util"]
       81 GETTABLEKS                       R12 R13 K23 ["getExpectedPartSize"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K8 [require]
       86 GETTABLEKS                       R14 R1 K10 ["util"]
       88 GETTABLEKS                       R13 R14 K24 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K8 [require]
       93 GETTABLEKS                       R15 R1 K10 ["util"]
       95 GETTABLEKS                       R14 R15 K25 ["pcallDeferred"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K8 [require]
      100 GETTABLEKS                       R16 R1 K10 ["util"]
      102 GETTABLEKS                       R15 R16 K26 ["getEditableMeshFromContext"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K8 [require]
      107 GETTABLEKS                       R17 R1 K14 ["flags"]
      109 GETTABLEKS                       R16 R17 K27 ["getFFlagUGCValidationUpdateHeadIsDynamic"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K8 [require]
      114 GETTABLEKS                       R18 R1 K14 ["flags"]
      116 GETTABLEKS                       R17 R18 K28 ["getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs"]
      118 CALL                             R16 1 1
      119 LOADNIL                          R17
      120 MOVE                             R18 R15
      121 CALL                             R18 0 1
      122 JUMPIFNOT                        R18 ; [+25]
      123 NEWTABLE                         R18 0 17
      125 LOADK                            R19 K29 ["LeftEyeClosed"]
      126 LOADK                            R20 K30 ["EyesLookDown"]
      127 LOADK                            R21 K31 ["RightEyeClosed"]
      128 LOADK                            R22 K32 ["JawDrop"]
      129 LOADK                            R23 K33 ["Pucker"]
      130 LOADK                            R24 K34 ["LeftLipCornerPuller"]
      131 LOADK                            R25 K35 ["RightLipCornerPuller"]
      132 LOADK                            R26 K36 ["ChinRaiser"]
      133 LOADK                            R27 K37 ["ChinRaiserUpperLip"]
      134 LOADK                            R28 K38 ["LeftCheekRaiser"]
      135 LOADK                            R29 K39 ["RightCheekRaiser"]
      136 LOADK                            R30 K40 ["LeftInnerBrowRaiser"]
      137 LOADK                            R31 K41 ["RightInnerBrowRaiser"]
      138 LOADK                            R32 K42 ["LeftLipCornerDown"]
      139 LOADK                            R33 K43 ["RightLipCornerDown"]
      140 LOADK                            R34 K44 ["LeftLowerLipDepressor"]
      141 SETLIST                          R18 R19 16 [1]
      143 LOADK                            R19 K45 ["RightLowerLipDepressor"]
      144 SETLIST                          R18 R19 1 [17]
      146 MOVE                             R17 R18
      147 JUMP                             ; [+24]
      148 NEWTABLE                         R18 0 17
      150 LOADK                            R19 K46 ["LipsTogether"]
      151 LOADK                            R20 K33 ["Pucker"]
      152 LOADK                            R21 K47 ["LeftLipStretcher"]
      153 LOADK                            R22 K48 ["RightLipStretcher"]
      154 LOADK                            R23 K34 ["LeftLipCornerPuller"]
      155 LOADK                            R24 K35 ["RightLipCornerPuller"]
      156 LOADK                            R25 K49 ["LeftUpperLipRaiser"]
      157 LOADK                            R26 K50 ["RightUpperLipRaiser"]
      158 LOADK                            R27 K44 ["LeftLowerLipDepressor"]
      159 LOADK                            R28 K45 ["RightLowerLipDepressor"]
      160 LOADK                            R29 K32 ["JawDrop"]
      161 LOADK                            R30 K29 ["LeftEyeClosed"]
      162 LOADK                            R31 K31 ["RightEyeClosed"]
      163 LOADK                            R32 K51 ["EyesLookRight"]
      164 LOADK                            R33 K52 ["EyesLookLeft"]
      165 LOADK                            R34 K53 ["EyesLookUp"]
      166 SETLIST                          R18 R19 16 [1]
      168 LOADK                            R19 K30 ["EyesLookDown"]
      169 SETLIST                          R18 R19 1 [17]
      171 MOVE                             R17 R18
      172 DUPCLOSURE                       R18 K54 [PROTO_0]
      173 CAPTURE                          VAL R2
      174 DUPCLOSURE                       R19 K55 [PROTO_2]
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R8
      180 DUPCLOSURE                       R20 K56 [PROTO_4]
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R9
      187 NEWCLOSURE                       R21 P3
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R7
      195 CAPTURE                          REF R17
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R4
      201 CLOSEUPVALS                      R17
      202 RETURN                           R21 1
