PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["rootInstance"]
        4 NAMECALL                         R3 R3 K1 ["GetChildren"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K2 ["Name"]
       10 SETTABLE                         R7 R2 R8
       11 FORGLOOP                         R3 2 ; [-4]
       13 GETIMPORT                        R3 K4 [next]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K5 ["calculateAllTransformsForFullBody"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 MOVE                             R5 R2
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R11 R1 K6 ["renderMeshesData"]
       33 GETTABLE                         R10 R11 R8
       34 GETTABLEKS                       R12 R1 K7 ["outerCagesData"]
       36 GETTABLE                         R11 R12 R8
       37 JUMPIFEQKNIL                     R10 ; [+34]
       39 JUMPIFEQKNIL                     R11 ; [+32]
       41 GETTABLEKS                       R13 R9 K8 ["Size"]
       43 GETTABLEKS                       R14 R10 K9 ["originalSize"]
       45 DIV                              R12 R13 R14
       46 DUPTABLE                         R15 K16 [{"renderMesh", "outerCage", "renderMeshTransform", "outerCageLocalTransform", "scale", "name"}]
       47 GETTABLEKS                       R16 R10 K17 ["editable"]
       49 SETTABLEKS                       R16 R15 K10 ["renderMesh"]
       51 GETTABLEKS                       R16 R11 K17 ["editable"]
       53 SETTABLEKS                       R16 R15 K11 ["outerCage"]
       55 GETTABLE                         R16 R3 R8
       56 SETTABLEKS                       R16 R15 K12 ["renderMeshTransform"]
       58 GETTABLEKS                       R16 R11 K18 ["origin"]
       60 SETTABLEKS                       R16 R15 K13 ["outerCageLocalTransform"]
       62 SETTABLEKS                       R12 R15 K14 ["scale"]
       64 SETTABLEKS                       R8 R15 K15 ["name"]
       66 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       68 MOVE                             R14 R4
       69 GETIMPORT                        R13 K21 [table.insert]
       71 CALL                             R13 2 0
       72 FORGLOOP                         R5 2 ; [-42]
       74 LENGTH                           R5 R4
       75 JUMPIFNOTEQKN                    R5 K22 [0] ; [+2]
       77 RETURN                           R0 0
       78 GETUPVAL                         R5 1
       79 MOVE                             R7 R4
       80 NAMECALL                         R5 R5 K23 ["CalculateBodyMaxCageDistance"]
       82 CALL                             R5 2 2
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K24 ["asNumber"]
       86 CALL                             R7 0 1
       87 JUMPIFNOTLT                      R7 R5 ; [+25]
       89 GETUPVAL                         R10 3
       90 GETTABLEKS                       R10 R10 K25 ["Keys"]
       92 GETTABLEKS                       R10 R10 K26 ["BodyPartCageDistanceValid_TooFar"]
       94 DUPTABLE                         R11 K30 [{"partName", "distance", "maxDistance"}]
       95 SETTABLEKS                       R6 R11 K27 ["partName"]
       97 GETIMPORT                        R12 K33 [string.format]
       99 LOADK                            R13 K34 ["%.2f"]
      100 MOVE                             R14 R5
      101 CALL                             R12 2 1
      102 SETTABLEKS                       R12 R11 K28 ["distance"]
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K35 ["asString"]
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K29 ["maxDistance"]
      110 NAMECALL                         R8 R0 K36 ["fail"]
      112 CALL                             R8 3 0
      113 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["util"]
       40 GETTABLEKS                       R6 R6 K14 ["AssetCalculator"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K15 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateCageGeometry"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K15 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["GetFStringUGCValidationMaxCageDistance"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 SETTABLEKS                       R6 R8 K18 ["fflag"]
       61 NEWTABLE                         R9 0 1
       63 GETTABLEKS                       R10 R3 K19 ["UploadCategory"]
       65 GETTABLEKS                       R10 R10 K20 ["FULL_BODY"]
       67 SETLIST                          R9 R10 1 [1]
       69 SETTABLEKS                       R9 R8 K21 ["categories"]
       71 NEWTABLE                         R9 0 2
       73 GETTABLEKS                       R10 R3 K22 ["SharedDataMember"]
       75 GETTABLEKS                       R10 R10 K23 ["renderMeshesData"]
       77 GETTABLEKS                       R11 R3 K22 ["SharedDataMember"]
       79 GETTABLEKS                       R11 R11 K24 ["outerCagesData"]
       81 SETLIST                          R9 R10 2 [1]
       83 SETTABLEKS                       R9 R8 K25 ["requiredData"]
       85 NEWTABLE                         R9 0 0
       87 SETTABLEKS                       R9 R8 K26 ["expectedFailures"]
       89 DUPCLOSURE                       R9 K27 [PROTO_0]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R9 R8 K28 ["run"]
       96 RETURN                           R8 1
