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
       26 DUPTABLE                         R2 K4 [{"skipExistenceCheck", "skipOwnershipCheck"}]
       27 GETUPVAL                         R3 3
       28 CALL                             R3 0 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 GETUPVAL                         R3 4
       31 CALL                             R3 0 1
       32 SETTABLEKS                       R3 R2 K2 ["skipExistenceCheck"]
       34 GETUPVAL                         R3 3
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+2]
       37 GETUPVAL                         R3 4
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R2 K3 ["skipOwnershipCheck"]
       41 GETUPVAL                         R3 5
       42 MOVE                             R4 R1
       43 MOVE                             R5 R0
       44 MOVE                             R6 R2
       45 CALL                             R3 3 2
       46 JUMPIF                           R3 ; [+4]
       47 LOADB                            R5 0
       48 MOVE                             R6 R4
       49 CLOSEUPVALS                      R1
       50 RETURN                           R5 2
       51 GETUPVAL                         R2 6
       52 GETTABLEKS                       R2 R2 K5 ["new"]
       54 CALL                             R2 0 1
       55 GETUPVAL                         R5 7
       56 MOVE                             R6 R1
       57 MOVE                             R7 R0
       58 CALL                             R5 2 -1
       59 NAMECALL                         R3 R2 K6 ["updateReasons"]
       61 CALL                             R3 -1 0
       62 GETUPVAL                         R3 3
       63 CALL                             R3 0 1
       64 JUMPIFNOT                        R3 ; [+3]
       65 GETUPVAL                         R3 4
       66 CALL                             R3 0 1
       67 JUMPIF                           R3 ; [+7]
       68 GETUPVAL                         R5 8
       69 MOVE                             R6 R1
       70 MOVE                             R7 R0
       71 CALL                             R5 2 -1
       72 NAMECALL                         R3 R2 K6 ["updateReasons"]
       74 CALL                             R3 -1 0
       75 GETUPVAL                         R3 9
       76 CALL                             R3 0 1
       77 JUMPIFNOT                        R3 ; [+3]
       78 GETUPVAL                         R3 4
       79 CALL                             R3 0 1
       80 JUMPIF                           R3 ; [+52]
       81 LOADNIL                          R3
       82 GETUPVAL                         R4 10
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          REF R1
       85 MOVE                             R6 R0
       86 CALL                             R4 2 2
       87 JUMPIFNOT                        R4 ; [+1]
       88 JUMPIF                           R5 ; [+11]
       89 GETUPVAL                         R6 11
       90 LOADK                            R7 K7 ["Could not download Curve animation."]
       91 GETUPVAL                         R8 12
       92 GETTABLEKS                       R8 R8 K8 ["ErrorType"]
       94 GETTABLEKS                       R8 R8 K9 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
       96 MOVE                             R9 R0
       97 CALL                             R6 3 -1
       98 CLOSEUPVALS                      R1
       99 RETURN                           R6 -1
      100 LENGTH                           R6 R5
      101 JUMPIFNOTEQKN                    R6 K10 [1] ; [+3]
      103 GETTABLEN                        R3 R5 1
      104 JUMP                             ; [+19]
      105 GETUPVAL                         R6 12
      106 GETTABLEKS                       R6 R6 K11 ["reportFailure"]
      108 GETUPVAL                         R7 12
      109 GETTABLEKS                       R7 R7 K8 ["ErrorType"]
      111 GETTABLEKS                       R7 R7 K12 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      113 LOADNIL                          R8
      114 MOVE                             R9 R0
      115 CALL                             R6 3 0
      116 LOADB                            R6 0
      117 NEWTABLE                         R7 0 1
      119 LOADK                            R8 K13 ["Downloaded Curve animation did not have exactly one root. Please fix the animation."]
      120 SETLIST                          R7 R8 1 [1]
      122 CLOSEUPVALS                      R1
      123 RETURN                           R6 2
      124 GETUPVAL                         R6 13
      125 GETTABLEKS                       R6 R6 K1 ["validate"]
      127 MOVE                             R7 R3
      128 MOVE                             R8 R0
      129 CALL                             R6 2 -1
      130 NAMECALL                         R4 R2 K6 ["updateReasons"]
      132 CALL                             R4 -1 0
      133 GETUPVAL                         R3 3
      134 CALL                             R3 0 1
      135 JUMPIFNOT                        R3 ; [+3]
      136 GETUPVAL                         R3 4
      137 CALL                             R3 0 1
      138 JUMPIF                           R3 ; [+9]
      139 GETUPVAL                         R5 14
      140 MOVE                             R6 R1
      141 GETTABLEKS                       R7 R0 K14 ["restrictedUserIds"]
      143 MOVE                             R8 R0
      144 CALL                             R5 3 -1
      145 NAMECALL                         R3 R2 K6 ["updateReasons"]
      147 CALL                             R3 -1 0
      148 NAMECALL                         R3 R2 K15 ["getFinalResults"]
      150 CALL                             R3 1 -1
      151 CLOSEUPVALS                      R1
      152 RETURN                           R3 -1

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
       83 GETIMPORT                        R17 K4 [require]
       85 GETTABLEKS                       R18 R0 K20 ["flags"]
       87 GETTABLEKS                       R18 R18 K22 ["getFFlagUGCValidateMigrateCurveAnim"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R19 R0 K20 ["flags"]
       94 GETTABLEKS                       R19 R19 K23 ["getFFlagUGCValidateMigrateSchemaProperties"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K4 [require]
       99 GETTABLEKS                       R20 R0 K20 ["flags"]
      101 GETTABLEKS                       R20 R20 K24 ["getFFlagUGCValidationCombineEntrypointResults"]
      103 CALL                             R19 1 1
      104 NEWTABLE                         R20 2 0
      106 DUPCLOSURE                       R21 K25 [PROTO_0]
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R22 K26 [PROTO_1]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R22 R20 K27 ["validateStructure"]
      114 DUPCLOSURE                       R22 K28 [PROTO_3]
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R22 R20 K29 ["validate"]
      132 RETURN                           R20 1
