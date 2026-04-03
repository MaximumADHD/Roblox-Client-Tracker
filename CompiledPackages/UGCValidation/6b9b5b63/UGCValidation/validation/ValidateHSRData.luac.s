PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [1] ; [+19]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["reportFailure"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["ErrorType"]
        9 GETTABLEKS                       R3 R4 K3 ["validateHSR_FileDataInvalid"]
       11 LOADNIL                          R4
       12 MOVE                             R5 R1
       13 CALL                             R2 3 0
       14 LOADB                            R2 0
       15 NEWTABLE                         R3 0 1
       17 LOADK                            R4 K4 ["WrapLayer HSR asset does not have exactly 1 root"]
       18 SETLIST                          R3 R4 1 [1]
       20 RETURN                           R2 2
       21 GETTABLEN                        R2 R0 1
       22 LOADK                            R5 K5 ["HiddenSurfaceRemovalAsset"]
       23 NAMECALL                         R3 R2 K6 ["IsA"]
       25 CALL                             R3 2 1
       26 JUMPIF                           R3 ; [+18]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K1 ["reportFailure"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K2 ["ErrorType"]
       33 GETTABLEKS                       R4 R5 K3 ["validateHSR_FileDataInvalid"]
       35 LOADNIL                          R5
       36 MOVE                             R6 R1
       37 CALL                             R3 3 0
       38 LOADB                            R3 0
       39 NEWTABLE                         R4 0 1
       41 LOADK                            R5 K7 ["WrapLayer HSR asset does not have a HiddenSurfaceRemovalAsset as the root Instance"]
       42 SETLIST                          R4 R5 1 [1]
       44 RETURN                           R3 2
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K8 ["new"]
       48 CALL                             R3 0 1
       49 NAMECALL                         R8 R2 K9 ["GetDescendants"]
       51 CALL                             R8 1 1
       52 LENGTH                           R7 R8
       53 JUMPIFEQKN                       R7 K10 [0] ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 NEWTABLE                         R7 0 1
       59 LOADK                            R8 K11 ["WrapLayer HSR asset has children under the HiddenSurfaceRemovalAsset root Instance"]
       60 SETLIST                          R7 R8 1 [1]
       62 NAMECALL                         R4 R3 K12 ["updateReasons"]
       64 CALL                             R4 3 0
       65 GETUPVAL                         R6 2
       66 MOVE                             R7 R2
       67 MOVE                             R8 R1
       68 CALL                             R6 2 -1
       69 NAMECALL                         R4 R3 K12 ["updateReasons"]
       71 CALL                             R4 -1 0
       72 GETUPVAL                         R6 3
       73 MOVE                             R7 R2
       74 MOVE                             R8 R1
       75 CALL                             R6 2 -1
       76 NAMECALL                         R4 R3 K12 ["updateReasons"]
       78 CALL                             R4 -1 0
       79 GETUPVAL                         R7 4
       80 GETTABLEKS                       R6 R7 K13 ["validate"]
       82 MOVE                             R7 R2
       83 MOVE                             R8 R1
       84 CALL                             R6 2 -1
       85 NAMECALL                         R4 R3 K12 ["updateReasons"]
       87 CALL                             R4 -1 0
       88 NAMECALL                         R4 R3 K14 ["getFinalResults"]
       90 CALL                             R4 1 1
       91 JUMPIF                           R4 ; [+11]
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
       98 GETTABLEKS                       R5 R6 K3 ["validateHSR_FileDataInvalid"]
      100 LOADNIL                          R6
      101 MOVE                             R7 R1
      102 CALL                             R4 3 0
      103 NAMECALL                         R4 R3 K14 ["getFinalResults"]
      105 CALL                             R4 1 -1
      106 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ValidateHSRMeshIds"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 1
        4 RETURN                           R3 1
        5 LENGTH                           R3 R1
        6 JUMPIFEQKN                       R3 K0 [1] ; [+8]
        8 LOADB                            R3 0
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K1 ["WrapLayer HSR asset does not have exactly 1 root"]
       12 SETLIST                          R4 R5 1 [1]
       14 RETURN                           R3 2
       15 GETTABLEN                        R3 R1 1
       16 LOADK                            R6 K2 ["HiddenSurfaceRemovalAsset"]
       17 NAMECALL                         R4 R3 K3 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIF                           R4 ; [+7]
       21 LOADB                            R4 0
       22 NEWTABLE                         R5 0 1
       24 LOADK                            R6 K4 ["WrapLayer HSR asset does not have a HiddenSurfaceRemovalAsset as the root Instance"]
       25 SETLIST                          R5 R6 1 [1]
       27 RETURN                           R4 2
       28 GETUPVAL                         R4 1
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 MOVE                             R6 R2
       34 CALL                             R4 2 2
       35 JUMPIF                           R4 ; [+7]
       36 LOADB                            R6 0
       37 NEWTABLE                         R7 0 1
       39 LOADK                            R8 K5 ["Error occurred while validating HSR Mesh Ids"]
       40 SETLIST                          R7 R8 1 [1]
       42 RETURN                           R6 2
       43 JUMPIF                           R5 ; [+18]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K6 ["reportFailure"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K7 ["ErrorType"]
       50 GETTABLEKS                       R7 R8 K8 ["validataHSR_HSRMeshIdsMismatch"]
       52 LOADNIL                          R8
       53 MOVE                             R9 R2
       54 CALL                             R6 3 0
       55 LOADB                            R6 0
       56 NEWTABLE                         R7 0 1
       58 LOADK                            R8 K9 ["Invalid HSR data detected. Please re-generate the asset using the Accessory Fitting Tool and try again."]
       59 SETLIST                          R7 R8 1 [1]
       61 RETURN                           R6 2
       62 LOADB                            R6 1
       63 RETURN                           R6 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetObjectsAllOrNone"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 LOADK                            R4 K0 ["WrapLayer"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R1 K2 ["isServer"]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADB                            R2 1
       11 JUMP                             ; [+1]
       12 LOADB                            R2 0
       13 GETTABLEKS                       R3 R0 K3 ["HSRAssetId"]
       15 JUMPIFNOT                        R3 ; [+2]
       16 JUMPIFNOTEQKS                    R3 K4 [""] ; [+22]
       18 JUMPIFNOT                        R2 ; [+18]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K5 ["reportFailure"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K6 ["ErrorType"]
       25 GETTABLEKS                       R5 R6 K7 ["validateHSR_FileDataInvalid"]
       27 LOADNIL                          R6
       28 MOVE                             R7 R1
       29 CALL                             R4 3 0
       30 LOADB                            R4 0
       31 NEWTABLE                         R5 0 1
       33 LOADK                            R6 K8 ["WrapLayer HSRAssetId is required"]
       34 SETLIST                          R5 R6 1 [1]
       36 RETURN                           R4 2
       37 LOADB                            R4 1
       38 RETURN                           R4 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K9 ["tryGetAssetIdFromContentId"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 1
       44 JUMPIF                           R4 ; [+18]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K5 ["reportFailure"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K6 ["ErrorType"]
       51 GETTABLEKS                       R5 R6 K7 ["validateHSR_FileDataInvalid"]
       53 LOADNIL                          R6
       54 MOVE                             R7 R1
       55 CALL                             R4 3 0
       56 LOADB                            R4 0
       57 NEWTABLE                         R5 0 1
       59 LOADK                            R6 K10 ["WrapLayer HSRAssetId contains an invalid url"]
       60 SETLIST                          R5 R6 1 [1]
       62 RETURN                           R4 2
       63 GETIMPORT                        R4 K12 [pcall]
       65 NEWCLOSURE                       R5 P0
       66 CAPTURE                          VAL R3
       67 CALL                             R4 1 2
       68 JUMPIF                           R4 ; [+23]
       69 JUMPIFNOT                        R2 ; [+4]
       70 GETIMPORT                        R6 K14 [error]
       72 LOADK                            R7 K15 ["Failed to load WrapLayer HSR asset"]
       73 CALL                             R6 1 0
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R6 R7 K5 ["reportFailure"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R8 R9 K6 ["ErrorType"]
       80 GETTABLEKS                       R7 R8 K7 ["validateHSR_FileDataInvalid"]
       82 LOADNIL                          R8
       83 MOVE                             R9 R1
       84 CALL                             R6 3 0
       85 LOADB                            R6 0
       86 NEWTABLE                         R7 0 1
       88 LOADK                            R8 K15 ["Failed to load WrapLayer HSR asset"]
       89 SETLIST                          R7 R8 1 [1]
       91 RETURN                           R6 2
       92 GETUPVAL                         R6 2
       93 CALL                             R6 0 1
       94 JUMPIF                           R6 ; [+7]
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R6 R7 K16 ["validateHiddenSurfaceRemovalAsset"]
       98 MOVE                             R7 R5
       99 MOVE                             R8 R1
      100 CALL                             R6 2 -1
      101 RETURN                           R6 -1
      102 GETUPVAL                         R7 4
      103 GETTABLEKS                       R6 R7 K17 ["new"]
      105 CALL                             R6 0 1
      106 GETUPVAL                         R10 3
      107 GETTABLEKS                       R9 R10 K16 ["validateHiddenSurfaceRemovalAsset"]
      109 MOVE                             R10 R5
      110 MOVE                             R11 R1
      111 CALL                             R9 2 -1
      112 NAMECALL                         R7 R6 K18 ["updateReasons"]
      114 CALL                             R7 -1 0
      115 NAMECALL                         R7 R6 K19 ["getFinalResults"]
      117 CALL                             R7 1 1
      118 JUMPIFNOT                        R7 ; [+10]
      119 GETUPVAL                         R10 3
      120 GETTABLEKS                       R9 R10 K20 ["validateHSRMeshIdData"]
      122 MOVE                             R10 R0
      123 MOVE                             R11 R5
      124 MOVE                             R12 R1
      125 CALL                             R9 3 -1
      126 NAMECALL                         R7 R6 K18 ["updateReasons"]
      128 CALL                             R7 -1 0
      129 NAMECALL                         R7 R6 K19 ["getFinalResults"]
      131 CALL                             R7 1 1
      132 JUMPIF                           R7 ; [+11]
      133 GETUPVAL                         R8 0
      134 GETTABLEKS                       R7 R8 K5 ["reportFailure"]
      136 GETUPVAL                         R10 0
      137 GETTABLEKS                       R9 R10 K6 ["ErrorType"]
      139 GETTABLEKS                       R8 R9 K7 ["validateHSR_FileDataInvalid"]
      141 LOADNIL                          R9
      142 MOVE                             R10 R1
      143 CALL                             R7 3 0
      144 NAMECALL                         R7 R6 K19 ["getFinalResults"]
      146 CALL                             R7 1 -1
      147 RETURN                           R7 -1

PROTO_5:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["new"]
        6 CALL                             R3 0 1
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K3 ["validateInstance"]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 CALL                             R6 2 -1
       13 NAMECALL                         R4 R3 K4 ["updateReasons"]
       15 CALL                             R4 -1 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K5 ["recordScriptTime"]
       19 GETIMPORT                        R6 K7 [script]
       21 GETTABLEKS                       R5 R6 K8 ["Name"]
       23 MOVE                             R6 R2
       24 MOVE                             R7 R1
       25 CALL                             R4 3 0
       26 NAMECALL                         R4 R3 K9 ["getFinalResults"]
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R1 K10 ["validation"]
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R3 K11 ["validateTags"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R3 K12 ["validateAttributes"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R7 R3 K13 ["ValidatePropertiesSensible"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R1 K14 ["util"]
       37 GETIMPORT                        R8 K8 [require]
       39 GETTABLEKS                       R9 R7 K15 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K8 [require]
       44 GETTABLEKS                       R10 R7 K16 ["FailureReasonsAccumulator"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K8 [require]
       49 GETTABLEKS                       R11 R7 K17 ["ParseContentIds"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K8 [require]
       54 GETTABLEKS                       R13 R1 K14 ["util"]
       56 GETTABLEKS                       R12 R13 K18 ["pcallDeferred"]
       58 CALL                             R11 1 1
       59 NEWTABLE                         R12 4 0
       61 GETIMPORT                        R13 K8 [require]
       63 GETTABLEKS                       R15 R1 K19 ["flags"]
       65 GETTABLEKS                       R14 R15 K20 ["getFFlagUGCValidateHSRMeshIds"]
       67 CALL                             R13 1 1
       68 DUPCLOSURE                       R14 K21 [PROTO_0]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R14 R12 K22 ["validateHiddenSurfaceRemovalAsset"]
       76 DUPCLOSURE                       R14 K23 [PROTO_2]
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R14 R12 K24 ["validateHSRMeshIdData"]
       83 DUPCLOSURE                       R14 K25 [PROTO_4]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R14 R12 K26 ["validateInstance"]
       91 DUPCLOSURE                       R14 K27 [PROTO_5]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R14 R12 K28 ["validate"]
       97 RETURN                           R12 1
