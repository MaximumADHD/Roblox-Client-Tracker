PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshUVDuplicates"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 GETUPVAL                         R5 2
        6 CALL                             R3 2 2
        7 JUMPIF                           R3 ; [+25]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K0 ["reportFailure"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K1 ["ErrorType"]
       14 GETTABLEKS                       R6 R6 K2 ["validateCageUVDuplicate_FailedToExecute"]
       16 LOADNIL                          R7
       17 GETUPVAL                         R8 2
       18 CALL                             R5 3 0
       19 GETIMPORT                        R5 K5 [string.format]
       21 LOADK                            R6 K6 ["Failed to load UVs for Inner cage of '%s'. Make sure the UV map exists and try again."]
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K7 ["fullName"]
       25 CALL                             R5 2 1
       26 LOADB                            R6 0
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R5
       30 SETLIST                          R7 R8 1 [1]
       32 RETURN                           R6 2
       33 GETUPVAL                         R5 5
       34 CALL                             R5 0 1
       35 JUMPIFNOTLT                      R5 R4 ; [+31]
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K0 ["reportFailure"]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K1 ["ErrorType"]
       43 GETTABLEKS                       R6 R6 K8 ["validateCageUVDuplicate_UnexpectedUVValue"]
       45 LOADNIL                          R7
       46 GETUPVAL                         R8 2
       47 CALL                             R5 3 0
       48 GETIMPORT                        R5 K5 [string.format]
       50 LOADK                            R6 K9 ["There are %d UV values in %s cage that do not belong to the template. Please correct the cage UV."]
       51 MOVE                             R7 R4
       52 JUMPIFNOT                        R2 ; [+2]
       53 LOADK                            R8 K10 ["inner"]
       54 JUMP                             ; [+1]
       55 LOADK                            R8 K11 ["outer"]
       56 CALL                             R5 3 1
       57 MOVE                             R6 R5
       58 LOADK                            R7 K12 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageExtraUvs)"]
       59 CONCAT                           R5 R6 R7
       60 LOADB                            R6 0
       61 NEWTABLE                         R7 0 1
       63 MOVE                             R8 R5
       64 SETLIST                          R7 R8 1 [1]
       66 RETURN                           R6 2
       67 LOADB                            R5 1
       68 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K1 [pairs]
        4 GETUPVAL                         R6 0
        5 CALL                             R5 1 3
        6 FORGPREP_NEXT                    R5
        7 GETIMPORT                        R10 K1 [pairs]
        9 MOVE                             R11 R9
       10 CALL                             R10 1 3
       11 FORGPREP_NEXT                    R10
       12 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       14 MOVE                             R16 R4
       15 MOVE                             R17 R14
       16 GETIMPORT                        R15 K4 [table.insert]
       18 CALL                             R15 2 0
       19 FORGLOOP                         R10 2 ; [-8]
       21 FORGLOOP                         R5 2 ; [-15]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U4
       30 GETUPVAL                         R6 5
       31 GETTABLEKS                       R6 R6 K5 ["new"]
       33 CALL                             R6 0 1
       34 MOVE                             R9 R5
       35 MOVE                             R10 R4
       36 MOVE                             R11 R0
       37 LOADB                            R12 1
       38 CALL                             R9 3 -1
       39 NAMECALL                         R7 R6 K6 ["updateReasons"]
       41 CALL                             R7 -1 0
       42 MOVE                             R9 R5
       43 MOVE                             R10 R4
       44 MOVE                             R11 R1
       45 LOADB                            R12 0
       46 CALL                             R9 3 -1
       47 NAMECALL                         R7 R6 K6 ["updateReasons"]
       49 CALL                             R7 -1 0
       50 NAMECALL                         R7 R6 K7 ["getFinalResults"]
       52 CALL                             R7 1 -1
       53 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K8 ["WrapTargetCageUVReferenceValues"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["flags"]
       30 GETTABLEKS                       R5 R5 K10 ["getFIntUGCValidateCageDuplicateUVThreshold"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R6 K11 ["FailureReasonsAccumulator"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Analytics"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K14 [game]
       47 LOADK                            R9 K15 ["UGCValidationService"]
       48 NAMECALL                         R7 R7 K16 ["GetService"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K17 [PROTO_2]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 RETURN                           R8 1
