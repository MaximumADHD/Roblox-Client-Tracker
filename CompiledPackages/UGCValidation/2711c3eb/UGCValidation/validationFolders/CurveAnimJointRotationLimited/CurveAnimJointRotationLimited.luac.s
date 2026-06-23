PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["animLength"]
        4 GETTABLEKS                       R4 R2 K2 ["tracks"]
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 DIVRK                            R5 R3 K6 [tostring]
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R4
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETTABLEKS                       R12 R11 K4 ["rot"]
       17 JUMPIFNOT                        R12 ; [+128]
       18 FASTCALL1                        TOSTRING R10 ; [+3]
       19 MOVE                             R13 R10
       20 GETIMPORT                        R12 K6 [tostring]
       22 CALL                             R12 1 1
       23 GETTABLE                         R13 R6 R12
       24 JUMPIF                           R13 ; [+6]
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R13 R13 K7 ["asNumber"]
       28 MOVE                             R14 R12
       29 CALL                             R13 1 1
       30 SETTABLE                         R13 R6 R12
       31 GETTABLE                         R13 R6 R12
       32 LOADN                            R14 0
       33 JUMPIFNOTLE                      R14 R3 ; [+56]
       35 GETTABLEKS                       R15 R11 K4 ["rot"]
       37 MOVE                             R17 R14
       38 NAMECALL                         R15 R15 K8 ["GetRotationAtTime"]
       40 CALL                             R15 2 1
       41 NAMECALL                         R16 R15 K9 ["ToAxisAngle"]
       43 CALL                             R16 1 2
       44 FASTCALL1                        MATH_ABS R17 ; [+3]
       45 MOVE                             R20 R17
       46 GETIMPORT                        R19 K12 [math.abs]
       48 CALL                             R19 1 1
       49 FASTCALL1                        MATH_DEG R19 ; [+2]
       50 GETIMPORT                        R18 K14 [math.deg]
       52 CALL                             R18 1 1
       53 JUMPIFNOTLT                      R13 R18 ; [+34]
       55 GETUPVAL                         R21 2
       56 GETTABLEKS                       R21 R21 K15 ["Keys"]
       58 GETTABLEKS                       R21 R21 K16 ["CurveAnim_JointRotationExceeded"]
       60 DUPTABLE                         R22 K21 [{"time", "bodyPart", "rotation", "maxRotation"}]
       61 GETIMPORT                        R23 K24 [string.format]
       63 LOADK                            R24 K25 ["%.2f"]
       64 MOVE                             R25 R14
       65 CALL                             R23 2 1
       66 SETTABLEKS                       R23 R22 K17 ["time"]
       68 SETTABLEKS                       R12 R22 K18 ["bodyPart"]
       70 GETIMPORT                        R23 K24 [string.format]
       72 LOADK                            R24 K25 ["%.2f"]
       73 MOVE                             R25 R18
       74 CALL                             R23 2 1
       75 SETTABLEKS                       R23 R22 K19 ["rotation"]
       77 FASTCALL1                        TOSTRING R13 ; [+3]
       78 MOVE                             R24 R13
       79 GETIMPORT                        R23 K6 [tostring]
       81 CALL                             R23 1 1
       82 SETTABLEKS                       R23 R22 K20 ["maxRotation"]
       84 NAMECALL                         R19 R0 K26 ["fail"]
       86 CALL                             R19 3 0
       87 RETURN                           R0 0
       88 ADD                              R14 R14 R5
       89 JUMPBACK                         ; [-57]
       90 LOADN                            R15 0
       91 JUMPIFNOTLE                      R15 R3 ; [+54]
       93 GETTABLEKS                       R15 R11 K4 ["rot"]
       95 MOVE                             R17 R3
       96 NAMECALL                         R15 R15 K8 ["GetRotationAtTime"]
       98 CALL                             R15 2 1
       99 NAMECALL                         R16 R15 K9 ["ToAxisAngle"]
      101 CALL                             R16 1 2
      102 FASTCALL1                        MATH_ABS R17 ; [+3]
      103 MOVE                             R20 R17
      104 GETIMPORT                        R19 K12 [math.abs]
      106 CALL                             R19 1 1
      107 FASTCALL1                        MATH_DEG R19 ; [+2]
      108 GETIMPORT                        R18 K14 [math.deg]
      110 CALL                             R18 1 1
      111 JUMPIFNOTLT                      R13 R18 ; [+34]
      113 GETUPVAL                         R21 2
      114 GETTABLEKS                       R21 R21 K15 ["Keys"]
      116 GETTABLEKS                       R21 R21 K16 ["CurveAnim_JointRotationExceeded"]
      118 DUPTABLE                         R22 K21 [{"time", "bodyPart", "rotation", "maxRotation"}]
      119 GETIMPORT                        R23 K24 [string.format]
      121 LOADK                            R24 K25 ["%.2f"]
      122 MOVE                             R25 R3
      123 CALL                             R23 2 1
      124 SETTABLEKS                       R23 R22 K17 ["time"]
      126 SETTABLEKS                       R12 R22 K18 ["bodyPart"]
      128 GETIMPORT                        R23 K24 [string.format]
      130 LOADK                            R24 K25 ["%.2f"]
      131 MOVE                             R25 R18
      132 CALL                             R23 2 1
      133 SETTABLEKS                       R23 R22 K19 ["rotation"]
      135 FASTCALL1                        TOSTRING R13 ; [+3]
      136 MOVE                             R24 R13
      137 GETIMPORT                        R23 K6 [tostring]
      139 CALL                             R23 1 1
      140 SETTABLEKS                       R23 R22 K20 ["maxRotation"]
      142 NAMECALL                         R19 R0 K26 ["fail"]
      144 CALL                             R19 3 0
      145 RETURN                           R0 0
      146 FORGLOOP                         R7 2 ; [-132]
      148 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFIntUGCValidateMaxAnimationFPS"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationAnimationPackSupport"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K2 ["Parent"]
       50 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidateMaxJointRotationPerPart"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 8 0
       55 NEWTABLE                         R8 0 1
       57 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       59 GETTABLEKS                       R9 R9 K15 ["ANIMATION"]
       61 SETLIST                          R8 R9 1 [1]
       63 SETTABLEKS                       R8 R7 K16 ["categories"]
       65 NEWTABLE                         R8 0 2
       67 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       69 GETTABLEKS                       R9 R9 K18 ["curveAnimations"]
       71 GETTABLEKS                       R10 R2 K17 ["SharedDataMember"]
       73 GETTABLEKS                       R10 R10 K19 ["curveAnimComputedFrames"]
       75 SETLIST                          R8 R9 2 [1]
       77 SETTABLEKS                       R8 R7 K20 ["requiredData"]
       79 SETTABLEKS                       R5 R7 K21 ["fflag"]
       81 NEWTABLE                         R8 0 0
       83 SETTABLEKS                       R8 R7 K22 ["expectedFailures"]
       85 NEWTABLE                         R8 0 1
       87 GETTABLEKS                       R9 R2 K23 ["ValidationModule"]
       89 GETTABLEKS                       R9 R9 K24 ["CurveAnimDataAvailable"]
       91 SETLIST                          R8 R9 1 [1]
       93 SETTABLEKS                       R8 R7 K25 ["prereqTests"]
       95 DUPCLOSURE                       R8 K26 [PROTO_0]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R8 R7 K27 ["run"]
      101 RETURN                           R7 1
