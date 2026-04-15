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
        3 GETTABLEKS                       R3 R1 K2 ["isServer"]
        5 GETIMPORT                        R4 K4 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CALL                             R4 1 2
       13 JUMPIF                           R4 ; [+7]
       14 GETUPVAL                         R6 2
       15 MOVE                             R7 R3
       16 GETTABLEKS                       R8 R0 K5 ["Name"]
       18 MOVE                             R9 R1
       19 CALL                             R6 3 -1
       20 RETURN                           R6 -1
       21 JUMPIF                           R5 ; [+23]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K6 ["reportFailure"]
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R8 R9 K7 ["ErrorType"]
       28 GETTABLEKS                       R7 R8 K8 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
       30 LOADNIL                          R8
       31 MOVE                             R9 R1
       32 CALL                             R6 3 0
       33 LOADB                            R6 0
       34 NEWTABLE                         R7 0 1
       36 GETIMPORT                        R8 K11 [string.format]
       38 LOADK                            R9 K12 ["Failed validation for dynamic head '%s' due to missing FACS information. You need to provide FACS controls for at least 17 poses (see documentation)."]
       39 GETTABLEKS                       R10 R0 K5 ["Name"]
       41 CALL                             R8 2 -1
       42 SETLIST                          R7 R8 -1 [1]
       44 RETURN                           R6 2
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R4 R5 K13 ["new"]
       48 CALL                             R4 0 1
       49 GETIMPORT                        R5 K4 [pcall]
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U5
       57 CALL                             R5 1 3
       58 JUMPIF                           R5 ; [+21]
       59 GETIMPORT                        R8 K15 [string.find]
       61 MOVE                             R9 R6
       62 LOADK                            R10 K16 ["Download Error"]
       63 CALL                             R8 2 1
       64 JUMPIFNOTEQKN                    R8 K17 [1] ; [+8]
       66 GETUPVAL                         R8 2
       67 MOVE                             R9 R3
       68 GETTABLEKS                       R10 R0 K5 ["Name"]
       70 MOVE                             R11 R1
       71 CALL                             R8 3 -1
       72 RETURN                           R8 -1
       73 LOADB                            R9 0
       74 FASTCALL2                        ASSERT R9 R6 ; [+4]
       76 MOVE                             R10 R6
       77 GETIMPORT                        R8 K19 [assert]
       79 CALL                             R8 2 0
       80 LENGTH                           R9 R6
       81 JUMPIFEQKN                       R9 K20 [0] ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 LENGTH                           R10 R7
       86 JUMPIFEQKN                       R10 K20 [0] ; [+2]
       88 LOADB                            R9 0 +1
       89 LOADB                            R9 1
       90 JUMPIFNOT                        R8 ; [+1]
       91 JUMPIF                           R9 ; [+55]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K6 ["reportFailure"]
       95 GETUPVAL                         R13 3
       96 GETTABLEKS                       R12 R13 K7 ["ErrorType"]
       98 GETTABLEKS                       R11 R12 K21 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      100 LOADNIL                          R12
      101 MOVE                             R13 R1
      102 CALL                             R10 3 0
      103 MOVE                             R12 R8
      104 NEWTABLE                         R13 0 1
      106 LOADK                            R15 K22 ["%*.MeshId (%*) is missing FACS controls: %*"]
      107 GETTABLEKS                       R17 R0 K5 ["Name"]
      109 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      111 GETIMPORT                        R19 K26 [table.concat]
      113 MOVE                             R20 R6
      114 LOADK                            R21 K27 [", "]
      115 CALL                             R19 2 1
      116 NAMECALL                         R15 R15 K10 ["format"]
      118 CALL                             R15 4 1
      119 MOVE                             R14 R15
      120 SETLIST                          R13 R14 1 [1]
      122 NAMECALL                         R10 R4 K28 ["updateReasons"]
      124 CALL                             R10 3 0
      125 MOVE                             R12 R9
      126 NEWTABLE                         R13 0 1
      128 LOADK                            R15 K29 ["%*.MeshId (%*) has inactive FACS controls: %*"]
      129 GETTABLEKS                       R17 R0 K5 ["Name"]
      131 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      133 GETIMPORT                        R19 K26 [table.concat]
      135 MOVE                             R20 R7
      136 LOADK                            R21 K27 [", "]
      137 CALL                             R19 2 1
      138 NAMECALL                         R15 R15 K10 ["format"]
      140 CALL                             R15 4 1
      141 MOVE                             R14 R15
      142 SETLIST                          R13 R14 1 [1]
      144 NAMECALL                         R10 R4 K28 ["updateReasons"]
      146 CALL                             R10 3 0
      147 GETUPVAL                         R12 6
      148 MOVE                             R13 R0
      149 MOVE                             R14 R1
      150 CALL                             R12 2 -1
      151 NAMECALL                         R10 R4 K28 ["updateReasons"]
      153 CALL                             R10 -1 0
      154 GETUPVAL                         R10 7
      155 CALL                             R10 0 1
      156 JUMPIF                           R10 ; [+7]
      157 GETUPVAL                         R12 8
      158 MOVE                             R13 R0
      159 MOVE                             R14 R1
      160 CALL                             R12 2 -1
      161 NAMECALL                         R10 R4 K28 ["updateReasons"]
      163 CALL                             R10 -1 0
      164 GETUPVAL                         R10 9
      165 CALL                             R10 0 1
      166 JUMPIFNOT                        R10 ; [+7]
      167 GETUPVAL                         R12 10
      168 MOVE                             R13 R0
      169 MOVE                             R14 R1
      170 CALL                             R12 2 -1
      171 NAMECALL                         R10 R4 K28 ["updateReasons"]
      173 CALL                             R10 -1 0
      174 GETUPVAL                         R11 3
      175 GETTABLEKS                       R10 R11 K30 ["recordScriptTime"]
      177 GETIMPORT                        R12 K32 [script]
      179 GETTABLEKS                       R11 R12 K5 ["Name"]
      181 MOVE                             R12 R2
      182 MOVE                             R13 R1
      183 CALL                             R10 3 0
      184 NAMECALL                         R10 R4 K33 ["getFinalResults"]
      186 CALL                             R10 1 -1
      187 RETURN                           R10 -1

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
       39 GETIMPORT                        R7 K1 [game]
       41 LOADK                            R9 K17 ["UGCValidateFacialBoundsScale"]
       42 LOADN                            R10 120
       43 NAMECALL                         R7 R7 K18 ["DefineFastInt"]
       45 CALL                             R7 3 1
       46 DIVK                             R6 R7 K16 [100]
       47 GETIMPORT                        R8 K1 [game]
       49 LOADK                            R10 K19 ["UGCValidateFacialExpressivenessThreshold"]
       50 LOADN                            R11 10
       51 NAMECALL                         R8 R8 K18 ["DefineFastInt"]
       53 CALL                             R8 3 1
       54 DIVK                             R7 R8 K16 [100]
       55 GETIMPORT                        R9 K1 [game]
       57 LOADK                            R11 K20 ["UGCValidateFacialExpressivenessMinVertDelta"]
       58 LOADN                            R12 2
       59 NAMECALL                         R9 R9 K18 ["DefineFastInt"]
       61 CALL                             R9 3 1
       62 DIVK                             R8 R9 K16 [100]
       63 GETIMPORT                        R9 K8 [require]
       65 GETTABLEKS                       R11 R1 K10 ["util"]
       67 GETTABLEKS                       R10 R11 K21 ["getExpectedPartSize"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K8 [require]
       72 GETTABLEKS                       R12 R1 K10 ["util"]
       74 GETTABLEKS                       R11 R12 K22 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K8 [require]
       79 GETTABLEKS                       R13 R1 K10 ["util"]
       81 GETTABLEKS                       R12 R13 K23 ["pcallDeferred"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K8 [require]
       86 GETTABLEKS                       R14 R1 K10 ["util"]
       88 GETTABLEKS                       R13 R14 K24 ["getEditableMeshFromContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K8 [require]
       93 GETTABLEKS                       R15 R1 K14 ["flags"]
       95 GETTABLEKS                       R14 R15 K25 ["getFFlagUGCValidationUpdateHeadIsDynamic"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K8 [require]
      100 GETTABLEKS                       R16 R1 K14 ["flags"]
      102 GETTABLEKS                       R15 R16 K26 ["getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs"]
      104 CALL                             R14 1 1
      105 LOADNIL                          R15
      106 MOVE                             R16 R13
      107 CALL                             R16 0 1
      108 JUMPIFNOT                        R16 ; [+25]
      109 NEWTABLE                         R16 0 17
      111 LOADK                            R17 K27 ["LeftEyeClosed"]
      112 LOADK                            R18 K28 ["EyesLookDown"]
      113 LOADK                            R19 K29 ["RightEyeClosed"]
      114 LOADK                            R20 K30 ["JawDrop"]
      115 LOADK                            R21 K31 ["Pucker"]
      116 LOADK                            R22 K32 ["LeftLipCornerPuller"]
      117 LOADK                            R23 K33 ["RightLipCornerPuller"]
      118 LOADK                            R24 K34 ["ChinRaiser"]
      119 LOADK                            R25 K35 ["ChinRaiserUpperLip"]
      120 LOADK                            R26 K36 ["LeftCheekRaiser"]
      121 LOADK                            R27 K37 ["RightCheekRaiser"]
      122 LOADK                            R28 K38 ["LeftInnerBrowRaiser"]
      123 LOADK                            R29 K39 ["RightInnerBrowRaiser"]
      124 LOADK                            R30 K40 ["LeftLipCornerDown"]
      125 LOADK                            R31 K41 ["RightLipCornerDown"]
      126 LOADK                            R32 K42 ["LeftLowerLipDepressor"]
      127 SETLIST                          R16 R17 16 [1]
      129 LOADK                            R17 K43 ["RightLowerLipDepressor"]
      130 SETLIST                          R16 R17 1 [17]
      132 MOVE                             R15 R16
      133 JUMP                             ; [+24]
      134 NEWTABLE                         R16 0 17
      136 LOADK                            R17 K44 ["LipsTogether"]
      137 LOADK                            R18 K31 ["Pucker"]
      138 LOADK                            R19 K45 ["LeftLipStretcher"]
      139 LOADK                            R20 K46 ["RightLipStretcher"]
      140 LOADK                            R21 K32 ["LeftLipCornerPuller"]
      141 LOADK                            R22 K33 ["RightLipCornerPuller"]
      142 LOADK                            R23 K47 ["LeftUpperLipRaiser"]
      143 LOADK                            R24 K48 ["RightUpperLipRaiser"]
      144 LOADK                            R25 K42 ["LeftLowerLipDepressor"]
      145 LOADK                            R26 K43 ["RightLowerLipDepressor"]
      146 LOADK                            R27 K30 ["JawDrop"]
      147 LOADK                            R28 K27 ["LeftEyeClosed"]
      148 LOADK                            R29 K29 ["RightEyeClosed"]
      149 LOADK                            R30 K49 ["EyesLookRight"]
      150 LOADK                            R31 K50 ["EyesLookLeft"]
      151 LOADK                            R32 K51 ["EyesLookUp"]
      152 SETLIST                          R16 R17 16 [1]
      154 LOADK                            R17 K28 ["EyesLookDown"]
      155 SETLIST                          R16 R17 1 [17]
      157 MOVE                             R15 R16
      158 DUPCLOSURE                       R16 K52 [PROTO_0]
      159 CAPTURE                          VAL R2
      160 DUPCLOSURE                       R17 K53 [PROTO_2]
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R6
      166 DUPCLOSURE                       R18 K54 [PROTO_4]
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R7
      173 NEWCLOSURE                       R19 P3
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R3
      179 CAPTURE                          REF R15
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R4
      185 CLOSEUPVALS                      R15
      186 RETURN                           R19 1
