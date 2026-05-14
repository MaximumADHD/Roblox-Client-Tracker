PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 GETTABLEKS                       R3 R2 K0 ["isServer"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETIMPORT                        R3 K2 [error]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["reportFailure"]
       14 MOVE                             R4 R1
       15 LOADNIL                          R5
       16 MOVE                             R6 R2
       17 CALL                             R3 3 0
       18 LOADB                            R3 0
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R0
       22 SETLIST                          R4 R5 1 [1]
       24 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["instances"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 CALL                             R1 2 2
        8 JUMPIF                           R1 ; [+3]
        9 LOADB                            R3 0
       10 MOVE                             R4 R2
       11 RETURN                           R3 2
       12 GETTABLEKS                       R1 R0 K0 ["instances"]
       14 GETTABLEN                        R2 R1 1
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 2
       17 CALL                             R4 0 1
       18 MOVE                             R5 R2
       19 MOVE                             R6 R0
       20 CALL                             R3 3 2
       21 JUMPIF                           R3 ; [+3]
       22 LOADB                            R5 0
       23 MOVE                             R6 R4
       24 RETURN                           R5 2
       25 LOADB                            R3 1
       26 LOADNIL                          R4
       27 MOVE                             R5 R2
       28 RETURN                           R3 3

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["AnimationId"]
        5 NAMECALL                         R0 R0 K3 ["GetObjectsAllOrNone"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["validateStructure"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 JUMPIF                           R2 ; [+4]
        7 LOADB                            R5 0
        8 MOVE                             R6 R3
        9 CLOSEUPVALS                      R1
       10 RETURN                           R5 2
       11 MOVE                             R1 R4
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+11]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K1 ["validate"]
       18 MOVE                             R3 R1
       19 MOVE                             R4 R0
       20 CALL                             R2 2 2
       21 JUMPIF                           R2 ; [+4]
       22 LOADB                            R4 0
       23 MOVE                             R5 R3
       24 CLOSEUPVALS                      R1
       25 RETURN                           R4 2
       26 GETUPVAL                         R2 3
       27 MOVE                             R3 R1
       28 MOVE                             R4 R0
       29 CALL                             R2 2 2
       30 JUMPIF                           R2 ; [+4]
       31 LOADB                            R4 0
       32 MOVE                             R5 R3
       33 CLOSEUPVALS                      R1
       34 RETURN                           R4 2
       35 LOADNIL                          R2
       36 GETUPVAL                         R3 4
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          REF R1
       39 MOVE                             R5 R0
       40 CALL                             R3 2 2
       41 JUMPIFNOT                        R3 ; [+1]
       42 JUMPIF                           R4 ; [+11]
       43 GETUPVAL                         R5 5
       44 LOADK                            R6 K2 ["Could not download Curve animation."]
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R7 R7 K3 ["ErrorType"]
       48 GETTABLEKS                       R7 R7 K4 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
       50 MOVE                             R8 R0
       51 CALL                             R5 3 -1
       52 CLOSEUPVALS                      R1
       53 RETURN                           R5 -1
       54 LENGTH                           R5 R4
       55 JUMPIFNOTEQKN                    R5 K5 [1] ; [+3]
       57 GETTABLEN                        R2 R4 1
       58 JUMP                             ; [+19]
       59 GETUPVAL                         R5 6
       60 GETTABLEKS                       R5 R5 K6 ["reportFailure"]
       62 GETUPVAL                         R6 6
       63 GETTABLEKS                       R6 R6 K3 ["ErrorType"]
       65 GETTABLEKS                       R6 R6 K7 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
       67 LOADNIL                          R7
       68 MOVE                             R8 R0
       69 CALL                             R5 3 0
       70 LOADB                            R5 0
       71 NEWTABLE                         R6 0 1
       73 LOADK                            R7 K8 ["Downloaded Curve animation did not have exactly one root. Please fix the animation."]
       74 SETLIST                          R6 R7 1 [1]
       76 CLOSEUPVALS                      R1
       77 RETURN                           R5 2
       78 GETUPVAL                         R3 7
       79 GETTABLEKS                       R3 R3 K9 ["new"]
       81 CALL                             R3 0 1
       82 GETUPVAL                         R6 8
       83 MOVE                             R7 R1
       84 MOVE                             R8 R0
       85 CALL                             R6 2 -1
       86 NAMECALL                         R4 R3 K10 ["updateReasons"]
       88 CALL                             R4 -1 0
       89 GETUPVAL                         R6 9
       90 MOVE                             R7 R1
       91 MOVE                             R8 R0
       92 CALL                             R6 2 -1
       93 NAMECALL                         R4 R3 K10 ["updateReasons"]
       95 CALL                             R4 -1 0
       96 GETUPVAL                         R6 10
       97 GETTABLEKS                       R6 R6 K1 ["validate"]
       99 MOVE                             R7 R2
      100 MOVE                             R8 R0
      101 CALL                             R6 2 -1
      102 NAMECALL                         R4 R3 K10 ["updateReasons"]
      104 CALL                             R4 -1 0
      105 GETUPVAL                         R6 11
      106 MOVE                             R7 R1
      107 GETTABLEKS                       R8 R0 K11 ["restrictedUserIds"]
      109 MOVE                             R9 R0
      110 CALL                             R6 3 -1
      111 NAMECALL                         R4 R3 K10 ["updateReasons"]
      113 CALL                             R4 -1 0
      114 NAMECALL                         R4 R3 K12 ["getFinalResults"]
      116 CALL                             R4 1 -1
      117 CLOSEUPVALS                      R1
      118 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K6 ["util"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R2 K7 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R2 K8 ["createEmoteSchema"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R2 K9 ["FailureReasonsAccumulator"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R2 K10 ["pcallDeferred"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R0 K11 ["validation"]
       36 GETIMPORT                        R8 K4 [require]
       38 GETTABLEKS                       R9 R7 K12 ["validateSingleInstance"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R7 K13 ["validateInstanceTree"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R7 K14 ["validateTags"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R7 K15 ["validateAttributes"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K4 [require]
       58 GETTABLEKS                       R13 R7 K16 ["validateDependencies"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K4 [require]
       63 GETTABLEKS                       R14 R7 K17 ["validateModeration"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K4 [require]
       68 GETTABLEKS                       R15 R7 K18 ["ValidateCurveAnimation"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R16 R7 K19 ["ValidatePropertiesSensible"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R17 R0 K20 ["flags"]
       80 GETTABLEKS                       R17 R17 K21 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       82 CALL                             R16 1 1
       83 NEWTABLE                         R17 2 0
       85 DUPCLOSURE                       R18 K22 [PROTO_0]
       86 CAPTURE                          VAL R1
       87 DUPCLOSURE                       R19 K23 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R19 R17 K24 ["validateStructure"]
       93 DUPCLOSURE                       R19 K25 [PROTO_3]
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R19 R17 K26 ["validate"]
      108 RETURN                           R17 1
