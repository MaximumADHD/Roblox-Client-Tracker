PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R0
        7 CALL                             R4 2 2
        8 MOVE                             R2 R4
        9 MOVE                             R3 R5
       10 JUMPIF                           R2 ; [+3]
       11 LOADB                            R4 0
       12 MOVE                             R5 R3
       13 RETURN                           R4 2
       14 GETTABLEN                        R4 R1 1
       15 GETUPVAL                         R5 1
       16 CALL                             R5 0 1
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R5
       19 MOVE                             R8 R4
       20 MOVE                             R9 R0
       21 CALL                             R6 3 2
       22 MOVE                             R2 R6
       23 MOVE                             R3 R7
       24 JUMPIF                           R2 ; [+3]
       25 LOADB                            R6 0
       26 MOVE                             R7 R3
       27 RETURN                           R6 2
       28 GETUPVAL                         R6 3
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+12]
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R6 R7 K1 ["validate"]
       34 MOVE                             R7 R4
       35 MOVE                             R8 R0
       36 CALL                             R6 2 2
       37 MOVE                             R2 R6
       38 MOVE                             R3 R7
       39 JUMPIF                           R2 ; [+3]
       40 LOADB                            R6 0
       41 MOVE                             R7 R3
       42 RETURN                           R6 2
       43 GETUPVAL                         R6 5
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+10]
       46 GETUPVAL                         R6 6
       47 MOVE                             R7 R4
       48 MOVE                             R8 R0
       49 CALL                             R6 2 2
       50 MOVE                             R2 R6
       51 MOVE                             R3 R7
       52 JUMPIF                           R2 ; [+3]
       53 LOADB                            R6 0
       54 MOVE                             R7 R3
       55 RETURN                           R6 2
       56 GETUPVAL                         R7 7
       57 GETTABLEKS                       R6 R7 K2 ["new"]
       59 CALL                             R6 0 1
       60 GETUPVAL                         R9 8
       61 MOVE                             R10 R4
       62 LOADNIL                          R11
       63 MOVE                             R12 R0
       64 CALL                             R9 3 -1
       65 NAMECALL                         R7 R6 K3 ["updateReasons"]
       67 CALL                             R7 -1 0
       68 GETUPVAL                         R9 9
       69 MOVE                             R10 R4
       70 MOVE                             R11 R0
       71 CALL                             R9 2 -1
       72 NAMECALL                         R7 R6 K3 ["updateReasons"]
       74 CALL                             R7 -1 0
       75 GETUPVAL                         R9 10
       76 MOVE                             R10 R4
       77 MOVE                             R11 R0
       78 CALL                             R9 2 -1
       79 NAMECALL                         R7 R6 K3 ["updateReasons"]
       81 CALL                             R7 -1 0
       82 GETUPVAL                         R9 11
       83 MOVE                             R10 R4
       84 NEWTABLE                         R11 0 0
       86 MOVE                             R12 R0
       87 CALL                             R9 3 -1
       88 NAMECALL                         R7 R6 K3 ["updateReasons"]
       90 CALL                             R7 -1 0
       91 GETUPVAL                         R9 12
       92 MOVE                             R10 R4
       93 MOVE                             R11 R0
       94 CALL                             R9 2 -1
       95 NAMECALL                         R7 R6 K3 ["updateReasons"]
       97 CALL                             R7 -1 0
       98 GETUPVAL                         R9 13
       99 MOVE                             R10 R4
      100 MOVE                             R11 R0
      101 CALL                             R9 2 -1
      102 NAMECALL                         R7 R6 K3 ["updateReasons"]
      104 CALL                             R7 -1 0
      105 NAMECALL                         R7 R6 K4 ["getFinalResults"]
      107 CALL                             R7 1 -1
      108 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R0 K7 ["validation"]
       18 GETTABLEKS                       R3 R4 K8 ["validateInstanceTree"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["validation"]
       25 GETTABLEKS                       R4 R5 K9 ["validateModeration"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K7 ["validation"]
       32 GETTABLEKS                       R5 R6 K10 ["validateTags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K7 ["validation"]
       39 GETTABLEKS                       R6 R7 K11 ["validatePropertyRequirements"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K7 ["validation"]
       46 GETTABLEKS                       R7 R8 K12 ["validateAttributes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K7 ["validation"]
       53 GETTABLEKS                       R8 R9 K13 ["validateSingleInstance"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K7 ["validation"]
       60 GETTABLEKS                       R9 R10 K14 ["validateMakeupDecal"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K7 ["validation"]
       67 GETTABLEKS                       R10 R11 K15 ["validateWrapTextureTransfer"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K7 ["validation"]
       74 GETTABLEKS                       R11 R12 K16 ["ValidatePropertiesSensible"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R13 R0 K7 ["validation"]
       81 GETTABLEKS                       R12 R13 K17 ["validateDependencies"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K5 ["util"]
       88 GETTABLEKS                       R13 R14 K18 ["createMakeupSchema"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R15 R0 K5 ["util"]
       95 GETTABLEKS                       R14 R15 K19 ["FailureReasonsAccumulator"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R16 R0 K20 ["flags"]
      102 GETTABLEKS                       R15 R16 K21 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R17 R0 K20 ["flags"]
      109 GETTABLEKS                       R16 R17 K22 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      111 CALL                             R15 1 1
      112 DUPCLOSURE                       R16 K23 [PROTO_0]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R9
      127 RETURN                           R16 1
