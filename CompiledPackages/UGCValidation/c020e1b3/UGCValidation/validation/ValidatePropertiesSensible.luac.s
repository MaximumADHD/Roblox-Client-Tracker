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
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R6 R0 K0 ["ClassName"]
        5 GETTABLE                         R4 R5 R6
        6 NAMECALL                         R1 R1 K1 ["ValidatePropertiesSensible"]
        8 CALL                             R1 3 2
        9 JUMPIF                           R1 ; [+20]
       10 LOADB                            R3 0
       11 NEWTABLE                         R4 0 1
       13 GETIMPORT                        R5 K4 [string.format]
       15 LOADK                            R6 K5 ["%s %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, or strings/BinaryStrings longer than the max number of characters."]
       16 GETTABLEKS                       R7 R0 K0 ["ClassName"]
       18 NAMECALL                         R8 R0 K6 ["GetFullName"]
       20 CALL                             R8 1 1
       21 GETIMPORT                        R9 K9 [table.concat]
       23 MOVE                             R10 R2
       24 LOADK                            R11 K10 [", "]
       25 CALL                             R9 2 -1
       26 CALL                             R5 -1 -1
       27 SETLIST                          R4 R5 -1 [1]
       29 RETURN                           R3 2
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K1 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+1]
       10 JUMP                             ; [+9]
       11 DUPTABLE                         R3 K3 [{"HiddenSurfaceRemovalAsset"}]
       12 DUPTABLE                         R4 K5 [{"HSRData"}]
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 SETTABLEKS                       R5 R4 K4 ["HSRData"]
       17 SETTABLEKS                       R4 R3 K2 ["HiddenSurfaceRemovalAsset"]
       19 SETUPVAL                         R3 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["new"]
       23 CALL                             R3 0 1
       24 NAMECALL                         R4 R0 K7 ["GetDescendants"]
       26 CALL                             R4 1 1
       27 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       29 MOVE                             R6 R4
       30 MOVE                             R7 R0
       31 GETIMPORT                        R5 K10 [table.insert]
       33 CALL                             R5 2 0
       34 MOVE                             R5 R4
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 FORGPREP                         R5
       38 GETUPVAL                         R12 4
       39 MOVE                             R13 R9
       40 CALL                             R12 1 -1
       41 NAMECALL                         R10 R3 K11 ["updateReasons"]
       43 CALL                             R10 -1 0
       44 FORGLOOP                         R5 2 ; [-7]
       46 NAMECALL                         R5 R3 K12 ["getFinalResults"]
       48 CALL                             R5 1 1
       49 JUMPIF                           R5 ; [+11]
       50 GETUPVAL                         R5 5
       51 GETTABLEKS                       R5 R5 K13 ["reportFailure"]
       53 GETUPVAL                         R6 5
       54 GETTABLEKS                       R6 R6 K14 ["ErrorType"]
       56 GETTABLEKS                       R6 R6 K15 ["validatePropertiesSensible_IncorrectPropertiesFound"]
       58 LOADNIL                          R7
       59 MOVE                             R8 R1
       60 CALL                             R5 3 0
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K16 ["recordScriptTime"]
       64 GETIMPORT                        R6 K18 [script]
       66 GETTABLEKS                       R6 R6 K19 ["Name"]
       68 MOVE                             R7 R2
       69 MOVE                             R8 R1
       70 CALL                             R5 3 0
       71 NAMECALL                         R5 R3 K12 ["getFinalResults"]
       73 CALL                             R5 1 -1
       74 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
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
       32 GETTABLEKS                       R7 R1 K13 ["flags"]
       34 GETTABLEKS                       R7 R7 K14 ["getFIntUGCValidateMaxHSRDataLen"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K8 [require]
       39 GETTABLEKS                       R8 R1 K13 ["flags"]
       41 GETTABLEKS                       R8 R8 K15 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       43 CALL                             R7 1 1
       44 NEWTABLE                         R8 2 0
       46 LOADNIL                          R9
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          REF R9
       49 CAPTURE                          VAL R6
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          REF R9
       52 SETTABLEKS                       R11 R8 K16 ["resetPropertyLengthRestrictions"]
       54 NEWCLOSURE                       R11 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          REF R9
       57 NEWCLOSURE                       R12 P3
       58 CAPTURE                          VAL R7
       59 CAPTURE                          REF R9
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R12 R8 K17 ["validate"]
       66 CLOSEUPVALS                      R9
       67 RETURN                           R8 1
