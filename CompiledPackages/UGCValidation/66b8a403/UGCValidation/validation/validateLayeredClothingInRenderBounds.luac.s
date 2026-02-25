PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["IsDeformedLayeredClothingOutOfRenderBounds"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["allowEditableInstances"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIF                           R2 ; [+7]
        8 LOADB                            R2 0
        9 NEWTABLE                         R3 0 1
       11 LOADK                            R4 K1 ["Engine feature 'EngineUGCValidationLCOOB' is not enabled. Skipping validation for layered clothing out of bounds."]
       12 SETLIST                          R3 R4 1 [1]
       14 RETURN                           R2 2
       15 LOADK                            R4 K2 ["Handle"]
       16 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+7]
       20 LOADB                            R3 0
       21 NEWTABLE                         R4 0 1
       23 LOADK                            R5 K4 ["Accessory does not have a Handle. Cannot validate layered clothing out of bounds."]
       24 SETLIST                          R4 R5 1 [1]
       26 RETURN                           R3 2
       27 LOADK                            R5 K5 ["WrapLayer"]
       28 NAMECALL                         R3 R2 K6 ["FindFirstChildWhichIsA"]
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+7]
       32 LOADB                            R4 0
       33 NEWTABLE                         R5 0 1
       35 LOADK                            R6 K7 ["Accessory does not have a WrapLayer. Cannot validate layered clothing out of bounds."]
       36 SETLIST                          R5 R6 1 [1]
       38 RETURN                           R4 2
       39 GETUPVAL                         R4 1
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+25]
       42 GETTABLEKS                       R4 R3 K8 ["MaxSize"]
       44 LOADK                            R5 K9 [{0, 0, 0}]
       45 JUMPIFEQ                         R4 R5 ; [+8]
       47 LOADB                            R4 0
       48 NEWTABLE                         R5 0 1
       50 LOADK                            R6 K10 ["Accessory has a non-zero MaxSize."]
       51 SETLIST                          R5 R6 1 [1]
       53 RETURN                           R4 2
       54 GETTABLEKS                       R4 R3 K11 ["Offset"]
       56 LOADK                            R5 K9 [{0, 0, 0}]
       57 JUMPIFEQ                         R4 R5 ; [+15]
       59 LOADB                            R4 0
       60 NEWTABLE                         R5 0 1
       62 LOADK                            R6 K12 ["Accessory has a non-zero Offset."]
       63 SETLIST                          R5 R6 1 [1]
       65 RETURN                           R4 2
       66 JUMP                             ; [+6]
       67 LOADK                            R4 K9 [{0, 0, 0}]
       68 SETTABLEKS                       R4 R3 K8 ["MaxSize"]
       70 LOADK                            R4 K9 [{0, 0, 0}]
       71 SETTABLEKS                       R4 R3 K11 ["Offset"]
       73 GETIMPORT                        R4 K14 [tick]
       75 CALL                             R4 0 1
       76 GETUPVAL                         R5 2
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R0
       80 MOVE                             R7 R1
       81 CALL                             R5 2 2
       82 JUMPIF                           R5 ; [+24]
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R7 R8 K15 ["reportFailure"]
       86 GETUPVAL                         R10 4
       87 GETTABLEKS                       R9 R10 K16 ["ErrorType"]
       89 GETTABLEKS                       R8 R9 K17 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
       91 LOADNIL                          R9
       92 MOVE                             R10 R1
       93 CALL                             R7 3 0
       94 GETIMPORT                        R7 K20 [string.format]
       96 LOADK                            R8 K21 ["Unable to validate if deformed layered clothing %s is out of render bounds."]
       97 GETTABLEKS                       R9 R0 K22 ["Name"]
       99 CALL                             R7 2 1
      100 LOADB                            R8 0
      101 NEWTABLE                         R9 0 1
      103 MOVE                             R10 R7
      104 SETLIST                          R9 R10 1 [1]
      106 RETURN                           R8 2
      107 GETUPVAL                         R8 4
      108 GETTABLEKS                       R7 R8 K23 ["recordScriptTime"]
      110 GETIMPORT                        R9 K25 [script]
      112 GETTABLEKS                       R8 R9 K22 ["Name"]
      114 MOVE                             R9 R4
      115 MOVE                             R10 R1
      116 CALL                             R7 3 0
      117 JUMPIFNOT                        R6 ; [+24]
      118 GETUPVAL                         R8 4
      119 GETTABLEKS                       R7 R8 K15 ["reportFailure"]
      121 GETUPVAL                         R10 4
      122 GETTABLEKS                       R9 R10 K16 ["ErrorType"]
      124 GETTABLEKS                       R8 R9 K26 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      126 LOADNIL                          R9
      127 MOVE                             R10 R1
      128 CALL                             R7 3 0
      129 GETIMPORT                        R7 K20 [string.format]
      131 LOADK                            R8 K27 ["Layered clothing validation failed for '%s'. When deformed, layered clothing becomes too large."]
      132 GETTABLEKS                       R9 R0 K22 ["Name"]
      134 CALL                             R7 2 1
      135 LOADB                            R8 0
      136 NEWTABLE                         R9 0 1
      138 MOVE                             R10 R7
      139 SETLIST                          R9 R10 1 [1]
      141 RETURN                           R8 2
      142 LOADB                            R7 1
      143 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K10 ["util"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R3 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["pcallDeferred"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R8 R0 K13 ["flags"]
       34 GETTABLEKS                       R7 R8 K14 ["getEngineFeatureEngineUGCValidationLCOOB"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K8 [require]
       39 GETTABLEKS                       R9 R0 K13 ["flags"]
       41 GETTABLEKS                       R8 R9 K15 ["getFFlagEnforceMaxSizeOffsetForLC"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 RETURN                           R8 1
