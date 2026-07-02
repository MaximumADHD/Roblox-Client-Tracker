PROTO_0:
        0 GETIMPORT                        R3 K2 [string.format]
        2 LOADK                            R4 K3 ["Failed to load model for dynamic head '%s'. Make sure model exists and try again."]
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETIMPORT                        R4 K5 [error]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K6 ["reportFailure"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K7 ["ErrorType"]
       16 GETTABLEKS                       R5 R5 K8 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
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
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIF                           R4 ; [+40]
        8 GETIMPORT                        R4 K4 [pcall]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CALL                             R4 1 2
       16 JUMPIF                           R4 ; [+7]
       17 GETUPVAL                         R6 3
       18 MOVE                             R7 R3
       19 GETTABLEKS                       R8 R0 K5 ["Name"]
       21 MOVE                             R9 R1
       22 CALL                             R6 3 -1
       23 RETURN                           R6 -1
       24 JUMPIF                           R5 ; [+23]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K6 ["reportFailure"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K7 ["ErrorType"]
       31 GETTABLEKS                       R7 R7 K8 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
       33 LOADNIL                          R8
       34 MOVE                             R9 R1
       35 CALL                             R6 3 0
       36 LOADB                            R6 0
       37 NEWTABLE                         R7 0 1
       39 GETIMPORT                        R8 K11 [string.format]
       41 LOADK                            R9 K12 ["Failed validation for dynamic head '%s' due to missing FACS information. You need to provide FACS controls for at least 17 poses (see documentation)."]
       42 GETTABLEKS                       R10 R0 K5 ["Name"]
       44 CALL                             R8 2 -1
       45 SETLIST                          R7 R8 -1 [1]
       47 RETURN                           R6 2
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R4 R4 K13 ["new"]
       51 CALL                             R4 0 1
       52 GETUPVAL                         R5 0
       53 CALL                             R5 0 1
       54 JUMPIF                           R5 ; [+98]
       55 GETIMPORT                        R5 K4 [pcall]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U6
       63 CALL                             R5 1 3
       64 JUMPIF                           R5 ; [+21]
       65 GETIMPORT                        R8 K15 [string.find]
       67 MOVE                             R9 R6
       68 LOADK                            R10 K16 ["Download Error"]
       69 CALL                             R8 2 1
       70 JUMPIFNOTEQKN                    R8 K17 [1] ; [+8]
       72 GETUPVAL                         R8 3
       73 MOVE                             R9 R3
       74 GETTABLEKS                       R10 R0 K5 ["Name"]
       76 MOVE                             R11 R1
       77 CALL                             R8 3 -1
       78 RETURN                           R8 -1
       79 LOADB                            R9 0
       80 FASTCALL2                        ASSERT R9 R6 ; [+4]
       82 MOVE                             R10 R6
       83 GETIMPORT                        R8 K19 [assert]
       85 CALL                             R8 2 0
       86 LENGTH                           R9 R6
       87 JUMPIFEQKN                       R9 K20 [0] ; [+2]
       89 LOADB                            R8 0 +1
       90 LOADB                            R8 1
       91 LENGTH                           R10 R7
       92 JUMPIFEQKN                       R10 K20 [0] ; [+2]
       94 LOADB                            R9 0 +1
       95 LOADB                            R9 1
       96 JUMPIFNOT                        R8 ; [+1]
       97 JUMPIF                           R9 ; [+55]
       98 GETUPVAL                         R10 4
       99 GETTABLEKS                       R10 R10 K6 ["reportFailure"]
      101 GETUPVAL                         R11 4
      102 GETTABLEKS                       R11 R11 K7 ["ErrorType"]
      104 GETTABLEKS                       R11 R11 K21 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      106 LOADNIL                          R12
      107 MOVE                             R13 R1
      108 CALL                             R10 3 0
      109 MOVE                             R12 R8
      110 NEWTABLE                         R13 0 1
      112 LOADK                            R15 K22 ["%*.MeshId (%*) is missing FACS controls: %*"]
      113 GETTABLEKS                       R17 R0 K5 ["Name"]
      115 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      117 GETIMPORT                        R19 K26 [table.concat]
      119 MOVE                             R20 R6
      120 LOADK                            R21 K27 [", "]
      121 CALL                             R19 2 1
      122 NAMECALL                         R15 R15 K10 ["format"]
      124 CALL                             R15 4 1
      125 MOVE                             R14 R15
      126 SETLIST                          R13 R14 1 [1]
      128 NAMECALL                         R10 R4 K28 ["updateReasons"]
      130 CALL                             R10 3 0
      131 MOVE                             R12 R9
      132 NEWTABLE                         R13 0 1
      134 LOADK                            R15 K29 ["%*.MeshId (%*) has inactive FACS controls: %*"]
      135 GETTABLEKS                       R17 R0 K5 ["Name"]
      137 GETTABLEKS                       R18 R0 K23 ["MeshId"]
      139 GETIMPORT                        R19 K26 [table.concat]
      141 MOVE                             R20 R7
      142 LOADK                            R21 K27 [", "]
      143 CALL                             R19 2 1
      144 NAMECALL                         R15 R15 K10 ["format"]
      146 CALL                             R15 4 1
      147 MOVE                             R14 R15
      148 SETLIST                          R13 R14 1 [1]
      150 NAMECALL                         R10 R4 K28 ["updateReasons"]
      152 CALL                             R10 3 0
      153 GETUPVAL                         R5 0
      154 CALL                             R5 0 1
      155 JUMPIF                           R5 ; [+7]
      156 GETUPVAL                         R7 7
      157 MOVE                             R8 R0
      158 MOVE                             R9 R1
      159 CALL                             R7 2 -1
      160 NAMECALL                         R5 R4 K28 ["updateReasons"]
      162 CALL                             R5 -1 0
      163 GETUPVAL                         R5 8
      164 CALL                             R5 0 1
      165 JUMPIF                           R5 ; [+7]
      166 GETUPVAL                         R7 9
      167 MOVE                             R8 R0
      168 MOVE                             R9 R1
      169 CALL                             R7 2 -1
      170 NAMECALL                         R5 R4 K28 ["updateReasons"]
      172 CALL                             R5 -1 0
      173 GETUPVAL                         R5 0
      174 CALL                             R5 0 1
      175 JUMPIF                           R5 ; [+10]
      176 GETUPVAL                         R5 10
      177 CALL                             R5 0 1
      178 JUMPIFNOT                        R5 ; [+7]
      179 GETUPVAL                         R7 11
      180 MOVE                             R8 R0
      181 MOVE                             R9 R1
      182 CALL                             R7 2 -1
      183 NAMECALL                         R5 R4 K28 ["updateReasons"]
      185 CALL                             R5 -1 0
      186 GETUPVAL                         R5 4
      187 GETTABLEKS                       R5 R5 K30 ["recordScriptTime"]
      189 GETIMPORT                        R6 K32 [script]
      191 GETTABLEKS                       R6 R6 K5 ["Name"]
      193 MOVE                             R7 R2
      194 MOVE                             R8 R1
      195 CALL                             R5 3 0
      196 NAMECALL                         R5 R4 K33 ["getFinalResults"]
      198 CALL                             R5 1 -1
      199 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R4 K11 ["FailureReasonsAccumulator"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K12 ["validation"]
       29 GETTABLEKS                       R5 R5 K13 ["validateFacsJointBounds"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K14 ["flags"]
       36 GETTABLEKS                       R6 R6 K15 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R7 R1 K14 ["flags"]
       43 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateDynamicHeadData"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R8 K1 [game]
       48 LOADK                            R10 K18 ["UGCValidateFacialBoundsScale"]
       49 LOADN                            R11 120
       50 NAMECALL                         R8 R8 K19 ["DefineFastInt"]
       52 CALL                             R8 3 1
       53 DIVK                             R7 R8 K17 [100]
       54 GETIMPORT                        R9 K1 [game]
       56 LOADK                            R11 K20 ["UGCValidateFacialExpressivenessThreshold"]
       57 LOADN                            R12 10
       58 NAMECALL                         R9 R9 K19 ["DefineFastInt"]
       60 CALL                             R9 3 1
       61 DIVK                             R8 R9 K17 [100]
       62 GETIMPORT                        R10 K1 [game]
       64 LOADK                            R12 K21 ["UGCValidateFacialExpressivenessMinVertDelta"]
       65 LOADN                            R13 2
       66 NAMECALL                         R10 R10 K19 ["DefineFastInt"]
       68 CALL                             R10 3 1
       69 DIVK                             R9 R10 K17 [100]
       70 GETIMPORT                        R10 K8 [require]
       72 GETTABLEKS                       R11 R1 K10 ["util"]
       74 GETTABLEKS                       R11 R11 K22 ["getExpectedPartSize"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K8 [require]
       79 GETTABLEKS                       R12 R1 K10 ["util"]
       81 GETTABLEKS                       R12 R12 K23 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K8 [require]
       86 GETTABLEKS                       R13 R1 K10 ["util"]
       88 GETTABLEKS                       R13 R13 K24 ["pcallDeferred"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K8 [require]
       93 GETTABLEKS                       R14 R1 K10 ["util"]
       95 GETTABLEKS                       R14 R14 K25 ["getEditableMeshFromContext"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K8 [require]
      100 GETTABLEKS                       R15 R1 K14 ["flags"]
      102 GETTABLEKS                       R15 R15 K26 ["getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs"]
      104 CALL                             R14 1 1
      105 NEWTABLE                         R15 0 17
      107 LOADK                            R16 K27 ["LeftEyeClosed"]
      108 LOADK                            R17 K28 ["EyesLookDown"]
      109 LOADK                            R18 K29 ["RightEyeClosed"]
      110 LOADK                            R19 K30 ["JawDrop"]
      111 LOADK                            R20 K31 ["Pucker"]
      112 LOADK                            R21 K32 ["LeftLipCornerPuller"]
      113 LOADK                            R22 K33 ["RightLipCornerPuller"]
      114 LOADK                            R23 K34 ["ChinRaiser"]
      115 LOADK                            R24 K35 ["ChinRaiserUpperLip"]
      116 LOADK                            R25 K36 ["LeftCheekRaiser"]
      117 LOADK                            R26 K37 ["RightCheekRaiser"]
      118 LOADK                            R27 K38 ["LeftInnerBrowRaiser"]
      119 LOADK                            R28 K39 ["RightInnerBrowRaiser"]
      120 LOADK                            R29 K40 ["LeftLipCornerDown"]
      121 LOADK                            R30 K41 ["RightLipCornerDown"]
      122 LOADK                            R31 K42 ["LeftLowerLipDepressor"]
      123 SETLIST                          R15 R16 16 [1]
      125 LOADK                            R16 K43 ["RightLowerLipDepressor"]
      126 SETLIST                          R15 R16 1 [17]
      128 DUPCLOSURE                       R16 K44 [PROTO_0]
      129 CAPTURE                          VAL R2
      130 DUPCLOSURE                       R17 K45 [PROTO_2]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R7
      136 DUPCLOSURE                       R18 K46 [PROTO_4]
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R8
      143 DUPCLOSURE                       R19 K47 [PROTO_7]
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R4
      156 RETURN                           R19 1
