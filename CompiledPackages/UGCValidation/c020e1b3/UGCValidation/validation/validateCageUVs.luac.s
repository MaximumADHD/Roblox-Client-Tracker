PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
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
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K3 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
        8 GETTABLEKS                       R8 R1 K4 ["Parent"]
       10 GETTABLEKS                       R8 R8 K5 ["Name"]
       12 GETTABLE                         R6 R7 R8
       13 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       15 LOADK                            R7 K6 ["WrapTarget is not parented to a MeshPart"]
       16 GETIMPORT                        R5 K8 [assert]
       18 CALL                             R5 2 1
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 GETUPVAL                         R9 1
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          REF R8
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          UPVAL U3
       29 MOVE                             R11 R2
       30 CALL                             R9 2 2
       31 MOVE                             R6 R9
       32 MOVE                             R7 R10
       33 JUMPIF                           R6 ; [+31]
       34 GETIMPORT                        R9 K11 [string.format]
       36 LOADK                            R10 K12 ["Failed to execute UV check for '%s'. Make sure the UV map exists and try again."]
       37 NAMECALL                         R11 R1 K13 ["GetFullName"]
       39 CALL                             R11 1 -1
       40 CALL                             R9 -1 1
       41 JUMPIFNOT                        R4 ; [+4]
       42 GETIMPORT                        R10 K15 [error]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 0
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K16 ["reportFailure"]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R11 R11 K17 ["ErrorType"]
       52 GETTABLEKS                       R11 R11 K18 ["validateCageUVs_TestExecutedSuccessfully"]
       54 LOADNIL                          R12
       55 MOVE                             R13 R2
       56 CALL                             R10 3 0
       57 LOADB                            R10 0
       58 NEWTABLE                         R11 0 1
       60 MOVE                             R12 R9
       61 SETLIST                          R11 R12 1 [1]
       63 CLOSEUPVALS                      R8
       64 RETURN                           R10 2
       65 JUMPIF                           R7 ; [+36]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K16 ["reportFailure"]
       69 GETUPVAL                         R10 4
       70 GETTABLEKS                       R10 R10 K17 ["ErrorType"]
       72 GETTABLEKS                       R10 R10 K19 ["validateCageUVs_TestPassed"]
       74 LOADNIL                          R11
       75 MOVE                             R12 R2
       76 CALL                             R9 3 0
       77 LOADB                            R9 0
       78 NEWTABLE                         R10 0 1
       80 GETIMPORT                        R11 K11 [string.format]
       82 LOADK                            R12 K20 ["%s.%s ( %s ) should have %d unique UVs, but has %d. Please make sure the mesh has the required number of unique UVs and try again."]
       83 NAMECALL                         R13 R1 K13 ["GetFullName"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R0 K21 ["fieldName"]
       88 GETTABLEKS                       R16 R0 K22 ["contentId"]
       90 JUMPIFNOT                        R16 ; [+3]
       91 GETTABLEKS                       R15 R0 K22 ["contentId"]
       93 JUMP                             ; [+1]
       94 LOADK                            R15 K23 [""]
       95 MOVE                             R16 R5
       96 MOVE                             R17 R8
       97 CALL                             R11 6 -1
       98 SETLIST                          R10 R11 -1 [1]
      100 CLOSEUPVALS                      R8
      101 RETURN                           R9 2
      102 GETUPVAL                         R9 4
      103 GETTABLEKS                       R9 R9 K24 ["recordScriptTime"]
      105 GETIMPORT                        R10 K26 [script]
      107 GETTABLEKS                       R10 R10 K5 ["Name"]
      109 MOVE                             R11 R3
      110 MOVE                             R12 R2
      111 CALL                             R9 3 0
      112 LOADB                            R9 1
      113 CLOSEUPVALS                      R8
      114 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Constants"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K10 ["flags"]
       35 GETTABLEKS                       R6 R6 K11 ["getFIntUniqueUVTolerance"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K13 [game]
       40 LOADK                            R8 K14 ["UGCValidationService"]
       41 NAMECALL                         R6 R6 K15 ["GetService"]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R7 K16 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
