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
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETUPVAL                         R6 3
       21 CALL                             R6 0 1
       22 JUMPIF                           R6 ; [+11]
       23 GETUPVAL                         R6 4
       24 MOVE                             R7 R5
       25 MOVE                             R8 R4
       26 MOVE                             R9 R0
       27 CALL                             R6 3 2
       28 MOVE                             R2 R6
       29 MOVE                             R3 R7
       30 JUMPIF                           R2 ; [+3]
       31 LOADB                            R6 0
       32 MOVE                             R7 R3
       33 RETURN                           R6 2
       34 GETUPVAL                         R6 2
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+3]
       37 GETUPVAL                         R6 3
       38 CALL                             R6 0 1
       39 JUMPIF                           R6 ; [+15]
       40 GETUPVAL                         R6 5
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+12]
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K1 ["validate"]
       46 MOVE                             R7 R4
       47 MOVE                             R8 R0
       48 CALL                             R6 2 2
       49 MOVE                             R2 R6
       50 MOVE                             R3 R7
       51 JUMPIF                           R2 ; [+3]
       52 LOADB                            R6 0
       53 MOVE                             R7 R3
       54 RETURN                           R6 2
       55 DUPTABLE                         R6 K4 [{"skipExistenceCheck", "skipOwnershipCheck"}]
       56 GETUPVAL                         R7 2
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 GETUPVAL                         R7 3
       60 CALL                             R7 0 1
       61 SETTABLEKS                       R7 R6 K2 ["skipExistenceCheck"]
       63 GETUPVAL                         R7 2
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+2]
       66 GETUPVAL                         R7 3
       67 CALL                             R7 0 1
       68 SETTABLEKS                       R7 R6 K3 ["skipOwnershipCheck"]
       70 GETUPVAL                         R7 7
       71 MOVE                             R8 R4
       72 MOVE                             R9 R0
       73 MOVE                             R10 R6
       74 CALL                             R7 3 2
       75 MOVE                             R2 R7
       76 MOVE                             R3 R8
       77 JUMPIF                           R2 ; [+3]
       78 LOADB                            R7 0
       79 MOVE                             R8 R3
       80 RETURN                           R7 2
       81 GETUPVAL                         R6 8
       82 GETTABLEKS                       R6 R6 K5 ["new"]
       84 CALL                             R6 0 1
       85 GETUPVAL                         R7 2
       86 CALL                             R7 0 1
       87 JUMPIFNOT                        R7 ; [+3]
       88 GETUPVAL                         R7 3
       89 CALL                             R7 0 1
       90 JUMPIF                           R7 ; [+8]
       91 GETUPVAL                         R9 9
       92 MOVE                             R10 R4
       93 LOADNIL                          R11
       94 MOVE                             R12 R0
       95 CALL                             R9 3 -1
       96 NAMECALL                         R7 R6 K6 ["updateReasons"]
       98 CALL                             R7 -1 0
       99 GETUPVAL                         R9 10
      100 MOVE                             R10 R4
      101 MOVE                             R11 R0
      102 CALL                             R9 2 -1
      103 NAMECALL                         R7 R6 K6 ["updateReasons"]
      105 CALL                             R7 -1 0
      106 GETUPVAL                         R7 2
      107 CALL                             R7 0 1
      108 JUMPIFNOT                        R7 ; [+3]
      109 GETUPVAL                         R7 3
      110 CALL                             R7 0 1
      111 JUMPIF                           R7 ; [+7]
      112 GETUPVAL                         R9 11
      113 MOVE                             R10 R4
      114 MOVE                             R11 R0
      115 CALL                             R9 2 -1
      116 NAMECALL                         R7 R6 K6 ["updateReasons"]
      118 CALL                             R7 -1 0
      119 GETUPVAL                         R7 2
      120 CALL                             R7 0 1
      121 JUMPIFNOT                        R7 ; [+3]
      122 GETUPVAL                         R7 3
      123 CALL                             R7 0 1
      124 JUMPIF                           R7 ; [+9]
      125 GETUPVAL                         R9 12
      126 MOVE                             R10 R4
      127 NEWTABLE                         R11 0 0
      129 MOVE                             R12 R0
      130 CALL                             R9 3 -1
      131 NAMECALL                         R7 R6 K6 ["updateReasons"]
      133 CALL                             R7 -1 0
      134 GETUPVAL                         R7 13
      135 CALL                             R7 0 1
      136 JUMPIF                           R7 ; [+7]
      137 GETUPVAL                         R9 14
      138 MOVE                             R10 R4
      139 MOVE                             R11 R0
      140 CALL                             R9 2 -1
      141 NAMECALL                         R7 R6 K6 ["updateReasons"]
      143 CALL                             R7 -1 0
      144 GETUPVAL                         R7 13
      145 CALL                             R7 0 1
      146 JUMPIF                           R7 ; [+7]
      147 GETUPVAL                         R9 15
      148 MOVE                             R10 R4
      149 MOVE                             R11 R0
      150 CALL                             R9 2 -1
      151 NAMECALL                         R7 R6 K6 ["updateReasons"]
      153 CALL                             R7 -1 0
      154 NAMECALL                         R7 R6 K7 ["getFinalResults"]
      156 CALL                             R7 1 -1
      157 RETURN                           R7 -1

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
       16 GETTABLEKS                       R3 R0 K7 ["validation"]
       18 GETTABLEKS                       R3 R3 K8 ["validateInstanceTree"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["validation"]
       25 GETTABLEKS                       R4 R4 K9 ["validateModeration"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["validation"]
       32 GETTABLEKS                       R5 R5 K10 ["validateTags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K7 ["validation"]
       39 GETTABLEKS                       R6 R6 K11 ["validatePropertyRequirements"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K7 ["validation"]
       46 GETTABLEKS                       R7 R7 K12 ["validateAttributes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K7 ["validation"]
       53 GETTABLEKS                       R8 R8 K13 ["validateSingleInstance"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K7 ["validation"]
       60 GETTABLEKS                       R9 R9 K14 ["validateMakeupDecal"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K7 ["validation"]
       67 GETTABLEKS                       R10 R10 K15 ["validateWrapTextureTransfer"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K7 ["validation"]
       74 GETTABLEKS                       R11 R11 K16 ["ValidatePropertiesSensible"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K7 ["validation"]
       81 GETTABLEKS                       R12 R12 K17 ["validateDependencies"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K5 ["util"]
       88 GETTABLEKS                       R13 R13 K18 ["createMakeupSchema"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K5 ["util"]
       95 GETTABLEKS                       R14 R14 K19 ["FailureReasonsAccumulator"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R15 R0 K20 ["flags"]
      102 GETTABLEKS                       R15 R15 K21 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R16 R0 K20 ["flags"]
      109 GETTABLEKS                       R16 R16 K22 ["getFFlagUGCValidateMigrateSchemaProperties"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K4 [require]
      114 GETTABLEKS                       R17 R0 K20 ["flags"]
      116 GETTABLEKS                       R17 R17 K23 ["getFFlagUGCValidationCombineEntrypointResults"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R18 R0 K20 ["flags"]
      123 GETTABLEKS                       R18 R18 K24 ["getFFlagUGCValidateMigrateWrapAndMakeup"]
      125 CALL                             R17 1 1
      126 DUPCLOSURE                       R18 K25 [PROTO_0]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R9
      143 RETURN                           R18 1
