PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R3 2
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["CalculateEditableMeshUniqueUVCount"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 3
       10 SUB                              R2 R3 R4
       11 FASTCALL1                        MATH_ABS R2 ; [+2]
       12 GETIMPORT                        R1 K4 [math.abs]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 4
       16 CALL                             R2 0 1
       17 JUMPIFLE                         R1 R2 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["isServer"]
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADB                            R5 1
        9 RETURN                           R5 1
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R7 R8 K3 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
       13 GETTABLEKS                       R9 R1 K4 ["Parent"]
       15 GETTABLEKS                       R8 R9 K5 ["Name"]
       17 GETTABLE                         R6 R7 R8
       18 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       20 LOADK                            R7 K6 ["WrapTarget is not parented to a MeshPart"]
       21 GETIMPORT                        R5 K8 [assert]
       23 CALL                             R5 2 1
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 GETUPVAL                         R9 2
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          REF R8
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U4
       34 MOVE                             R11 R2
       35 CALL                             R9 2 2
       36 MOVE                             R6 R9
       37 MOVE                             R7 R10
       38 JUMPIF                           R6 ; [+31]
       39 GETIMPORT                        R9 K11 [string.format]
       41 LOADK                            R10 K12 ["Failed to execute UV check for '%s'. Make sure the UV map exists and try again."]
       42 NAMECALL                         R11 R1 K13 ["GetFullName"]
       44 CALL                             R11 1 -1
       45 CALL                             R9 -1 1
       46 JUMPIFNOT                        R4 ; [+4]
       47 GETIMPORT                        R10 K15 [error]
       49 MOVE                             R11 R9
       50 CALL                             R10 1 0
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R10 R11 K16 ["reportFailure"]
       54 GETUPVAL                         R13 5
       55 GETTABLEKS                       R12 R13 K17 ["ErrorType"]
       57 GETTABLEKS                       R11 R12 K18 ["validateCageUVs_TestExecutedSuccessfully"]
       59 LOADNIL                          R12
       60 MOVE                             R13 R2
       61 CALL                             R10 3 0
       62 LOADB                            R10 0
       63 NEWTABLE                         R11 0 1
       65 MOVE                             R12 R9
       66 SETLIST                          R11 R12 1 [1]
       68 CLOSEUPVALS                      R8
       69 RETURN                           R10 2
       70 JUMPIF                           R7 ; [+36]
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R9 R10 K16 ["reportFailure"]
       74 GETUPVAL                         R12 5
       75 GETTABLEKS                       R11 R12 K17 ["ErrorType"]
       77 GETTABLEKS                       R10 R11 K19 ["validateCageUVs_TestPassed"]
       79 LOADNIL                          R11
       80 MOVE                             R12 R2
       81 CALL                             R9 3 0
       82 LOADB                            R9 0
       83 NEWTABLE                         R10 0 1
       85 GETIMPORT                        R11 K11 [string.format]
       87 LOADK                            R12 K20 ["%s.%s ( %s ) should have %d unique UVs, but has %d. Please make sure the mesh has the required number of unique UVs and try again."]
       88 NAMECALL                         R13 R1 K13 ["GetFullName"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R14 R0 K21 ["fieldName"]
       93 GETTABLEKS                       R16 R0 K22 ["contentId"]
       95 JUMPIFNOT                        R16 ; [+3]
       96 GETTABLEKS                       R15 R0 K22 ["contentId"]
       98 JUMP                             ; [+1]
       99 LOADK                            R15 K23 [""]
      100 MOVE                             R16 R5
      101 MOVE                             R17 R8
      102 CALL                             R11 6 -1
      103 SETLIST                          R10 R11 -1 [1]
      105 CLOSEUPVALS                      R8
      106 RETURN                           R9 2
      107 GETUPVAL                         R10 5
      108 GETTABLEKS                       R9 R10 K24 ["recordScriptTime"]
      110 GETIMPORT                        R11 K26 [script]
      112 GETTABLEKS                       R10 R11 K5 ["Name"]
      114 MOVE                             R11 R3
      115 MOVE                             R12 R2
      116 CALL                             R9 3 0
      117 LOADB                            R9 1
      118 CLOSEUPVALS                      R8
      119 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Constants"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K10 ["flags"]
       35 GETTABLEKS                       R6 R7 K11 ["getEngineFeatureEngineUGCValidateBodyParts"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K10 ["flags"]
       42 GETTABLEKS                       R7 R8 K12 ["getFIntUniqueUVTolerance"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K14 [game]
       47 LOADK                            R9 K15 ["UGCValidationService"]
       48 NAMECALL                         R7 R7 K16 ["GetService"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R3
       58 RETURN                           R8 1
