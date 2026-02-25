PROTO_0:
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
       12 NAMECALL                         R2 R2 K4 ["GetMaximalJointDistancesWithinFacs"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R4 R1
        7 CALL                             R2 2 2
        8 JUMPIF                           R2 ; [+18]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K0 ["reportFailure"]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K1 ["ErrorType"]
       15 GETTABLEKS                       R5 R6 K2 ["validateFACSJointTransformsWithinBounds_Error"]
       17 LOADNIL                          R6
       18 MOVE                             R7 R1
       19 CALL                             R4 3 0
       20 LOADB                            R4 0
       21 NEWTABLE                         R5 0 1
       23 LOADK                            R6 K3 ["Failed to validate facial animation joint bounds, please try again later"]
       24 SETLIST                          R5 R6 1 [1]
       26 RETURN                           R4 2
       27 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K5 [unpack]
       31 CALL                             R4 1 4
       32 GETUPVAL                         R9 4
       33 CALL                             R9 0 1
       34 DIVK                             R8 R9 K6 [100]
       35 JUMPIFNOTLT                      R8 R4 ; [+13]
       37 LOADB                            R8 0
       38 NEWTABLE                         R9 0 1
       40 LOADK                            R11 K7 ["Head facial animation %* results in joints being moved substantially outside of the head. Please edit your facial animations and try again."]
       41 MOVE                             R13 R5
       42 NAMECALL                         R11 R11 K8 ["format"]
       44 CALL                             R11 2 1
       45 MOVE                             R10 R11
       46 SETLIST                          R9 R10 1 [1]
       48 RETURN                           R8 2
       49 GETUPVAL                         R9 5
       50 CALL                             R9 0 1
       51 DIVK                             R8 R9 K6 [100]
       52 JUMPIFNOTLT                      R8 R6 ; [+13]
       54 LOADB                            R8 0
       55 NEWTABLE                         R9 0 1
       57 LOADK                            R11 K9 ["Head facial animations can be combined to extend the joint %* far outside the head. Please edit your facial animations and try again."]
       58 MOVE                             R13 R7
       59 NAMECALL                         R11 R11 K8 ["format"]
       61 CALL                             R11 2 1
       62 MOVE                             R10 R11
       63 SETLIST                          R9 R10 1 [1]
       65 RETURN                           R8 2
       66 LOADB                            R8 1
       67 RETURN                           R8 1

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
       22 GETTABLEKS                       R4 R5 K11 ["pcallDeferred"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R6 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R6 K12 ["getEditableMeshFromContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R7 R1 K13 ["flags"]
       36 GETTABLEKS                       R6 R7 K14 ["getFIntFacsJointMaximumDistRatioDirect"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R8 R1 K13 ["flags"]
       43 GETTABLEKS                       R7 R8 K15 ["getFIntFacsJointMaximumDistRatioAccumulated"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R9 R1 K10 ["util"]
       50 GETTABLEKS                       R8 R9 K16 ["Types"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K17 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
