PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 DUPTABLE                         R0 K1 [{"HiddenSurfaceRemovalAsset"}]
        4 DUPTABLE                         R1 K3 [{"HSRData"}]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K2 ["HSRData"]
        9 SETTABLEKS                       R1 R0 K0 ["HiddenSurfaceRemovalAsset"]
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+31]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R6 R0 K0 ["ClassName"]
        8 GETTABLE                         R4 R5 R6
        9 NAMECALL                         R1 R1 K1 ["ValidatePropertiesSensible"]
       11 CALL                             R1 3 2
       12 JUMPIF                           R1 ; [+49]
       13 LOADB                            R3 0
       14 NEWTABLE                         R4 0 1
       16 GETIMPORT                        R5 K4 [string.format]
       18 LOADK                            R6 K5 ["%s %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, or strings/BinaryStrings longer than the max number of characters."]
       19 GETTABLEKS                       R7 R0 K0 ["ClassName"]
       21 NAMECALL                         R8 R0 K6 ["GetFullName"]
       23 CALL                             R8 1 1
       24 GETIMPORT                        R9 K9 [table.concat]
       26 MOVE                             R10 R2
       27 LOADK                            R11 K10 [", "]
       28 CALL                             R9 2 -1
       29 CALL                             R5 -1 -1
       30 SETLIST                          R4 R5 -1 [1]
       32 RETURN                           R3 2
       33 JUMP                             ; [+28]
       34 GETUPVAL                         R1 1
       35 MOVE                             R3 R0
       36 NAMECALL                         R1 R1 K1 ["ValidatePropertiesSensible"]
       38 CALL                             R1 2 2
       39 JUMPIF                           R1 ; [+22]
       40 LOADB                            R3 0
       41 NEWTABLE                         R4 0 1
       43 GETIMPORT                        R5 K4 [string.format]
       45 LOADK                            R6 K11 ["Instance %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, strings longer than %d characters, or BinaryStrings longer than %d characters."]
       46 NAMECALL                         R7 R0 K6 ["GetFullName"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K9 [table.concat]
       51 MOVE                             R9 R2
       52 LOADK                            R10 K10 [", "]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 3
       55 CALL                             R9 0 1
       56 GETUPVAL                         R10 4
       57 CALL                             R10 0 -1
       58 CALL                             R5 -1 -1
       59 SETLIST                          R4 R5 -1 [1]
       61 RETURN                           R3 2
       62 LOADB                            R1 1
       63 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K1 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+1]
       13 JUMP                             ; [+9]
       14 DUPTABLE                         R3 K3 [{"HiddenSurfaceRemovalAsset"}]
       15 DUPTABLE                         R4 K5 [{"HSRData"}]
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K4 ["HSRData"]
       20 SETTABLEKS                       R4 R3 K2 ["HiddenSurfaceRemovalAsset"]
       22 SETUPVAL                         R3 2
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R3 R4 K6 ["new"]
       26 CALL                             R3 0 1
       27 NAMECALL                         R4 R0 K7 ["GetDescendants"]
       29 CALL                             R4 1 1
       30 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       32 MOVE                             R6 R4
       33 MOVE                             R7 R0
       34 GETIMPORT                        R5 K10 [table.insert]
       36 CALL                             R5 2 0
       37 MOVE                             R5 R4
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 GETUPVAL                         R12 5
       42 MOVE                             R13 R9
       43 CALL                             R12 1 -1
       44 NAMECALL                         R10 R3 K11 ["updateReasons"]
       46 CALL                             R10 -1 0
       47 FORGLOOP                         R5 2 ; [-7]
       49 NAMECALL                         R5 R3 K12 ["getFinalResults"]
       51 CALL                             R5 1 1
       52 JUMPIF                           R5 ; [+11]
       53 GETUPVAL                         R6 6
       54 GETTABLEKS                       R5 R6 K13 ["reportFailure"]
       56 GETUPVAL                         R8 6
       57 GETTABLEKS                       R7 R8 K14 ["ErrorType"]
       59 GETTABLEKS                       R6 R7 K15 ["validatePropertiesSensible_IncorrectPropertiesFound"]
       61 LOADNIL                          R7
       62 MOVE                             R8 R1
       63 CALL                             R5 3 0
       64 GETUPVAL                         R6 6
       65 GETTABLEKS                       R5 R6 K16 ["recordScriptTime"]
       67 GETIMPORT                        R7 K18 [script]
       69 GETTABLEKS                       R6 R7 K19 ["Name"]
       71 MOVE                             R7 R2
       72 MOVE                             R8 R1
       73 CALL                             R5 3 0
       74 NAMECALL                         R5 R3 K12 ["getFinalResults"]
       76 CALL                             R5 1 -1
       77 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R1 K10 ["util"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R3 K11 ["FailureReasonsAccumulator"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["Types"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R8 R1 K13 ["flags"]
       34 GETTABLEKS                       R7 R8 K14 ["getFIntUGCValidateMaxSensibleStringLength"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K8 [require]
       39 GETTABLEKS                       R9 R1 K13 ["flags"]
       41 GETTABLEKS                       R8 R9 K15 ["getFIntUGCValidateMaxSensibleBinaryStringLength"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R10 R1 K13 ["flags"]
       48 GETTABLEKS                       R9 R10 K16 ["getFFlagUGCValidateCheckHSRFileDataFix"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K8 [require]
       53 GETTABLEKS                       R11 R1 K13 ["flags"]
       55 GETTABLEKS                       R10 R11 K17 ["getFIntUGCValidateMaxHSRDataLen"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K8 [require]
       60 GETTABLEKS                       R12 R1 K13 ["flags"]
       62 GETTABLEKS                       R11 R12 K18 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       64 CALL                             R10 1 1
       65 NEWTABLE                         R11 2 0
       67 LOADNIL                          R12
       68 NEWCLOSURE                       R13 P0
       69 CAPTURE                          REF R12
       70 CAPTURE                          VAL R9
       71 NEWCLOSURE                       R14 P1
       72 CAPTURE                          REF R12
       73 SETTABLEKS                       R14 R11 K19 ["resetPropertyLengthRestrictions"]
       75 NEWCLOSURE                       R14 P2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R0
       78 CAPTURE                          REF R12
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 NEWCLOSURE                       R15 P3
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R8
       84 CAPTURE                          REF R12
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R15 R11 K20 ["validate"]
       91 CLOSEUPVALS                      R12
       92 RETURN                           R11 1
