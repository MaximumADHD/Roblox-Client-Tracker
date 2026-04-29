PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R4 K1 ["Handle"]
        3 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R4 R1 K3 ["renderMeshesData"]
        8 GETTABLEKS                       R3 R4 K1 ["Handle"]
       10 GETTABLEKS                       R5 R1 K4 ["uploadEnum"]
       12 GETTABLEKS                       R4 R5 K5 ["assetType"]
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 GETIMPORT                        R5 K7 [error]
       20 LOADK                            R6 K8 ["Schema should have ensured data exists for handle"]
       21 CALL                             R5 1 0
       22 GETUPVAL                         R5 0
       23 MOVE                             R7 R4
       24 MOVE                             R8 R2
       25 NAMECALL                         R5 R5 K9 ["getLCSizeLimit"]
       27 CALL                             R5 3 2
       28 JUMPIFNOT                        R5 ; [+2]
       29 JUMPIFNOTEQKNIL                  R6 ; [+8]
       31 GETIMPORT                        R7 K7 [error]
       33 LOADK                            R9 K10 ["Could not find matching attachment on Handle for "]
       34 GETTABLEKS                       R10 R4 K11 ["Name"]
       36 CONCAT                           R8 R9 R10
       37 CALL                             R7 1 0
       38 GETUPVAL                         R8 1
       39 GETTABLE                         R7 R8 R4
       40 JUMPIF                           R7 ; [+1]
       41 GETUPVAL                         R7 2
       42 MUL                              R8 R6 R7
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R11 R1 K0 ["rootInstance"]
       46 GETTABLEKS                       R12 R3 K12 ["editable"]
       48 GETTABLEKS                       R13 R3 K13 ["scale"]
       50 NAMECALL                         R9 R9 K14 ["GetLayeredClothingPostDeformationSize"]
       52 CALL                             R9 4 1
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R10 R11 K15 ["isFirstLessOrEqual"]
       56 MOVE                             R11 R9
       57 MOVE                             R12 R8
       58 CALL                             R10 2 1
       59 JUMPIF                           R10 ; [+14]
       60 GETUPVAL                         R14 5
       61 GETTABLEKS                       R13 R14 K16 ["Keys"]
       63 GETTABLEKS                       R12 R13 K17 ["LCDeformTooLarge"]
       65 DUPTABLE                         R13 K19 [{"maxSize"}]
       66 GETUPVAL                         R14 6
       67 MOVE                             R15 R8
       68 CALL                             R14 1 1
       69 SETTABLEKS                       R14 R13 K18 ["maxSize"]
       71 NAMECALL                         R10 R0 K20 ["fail"]
       73 CALL                             R10 3 0
       74 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R4 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["util"]
       26 GETTABLEKS                       R4 R5 K11 ["ValidationRulesUtil"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       33 GETTABLEKS                       R5 R6 K13 ["ValidationEnums"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R7 R1 K12 ["validationSystem"]
       40 GETTABLEKS                       R6 R7 K14 ["ErrorSourceStrings"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R8 R1 K9 ["util"]
       47 GETTABLEKS                       R7 R8 K15 ["Vector3Utils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R9 R1 K9 ["util"]
       54 GETTABLEKS                       R8 R9 K16 ["valueToString"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 4 0
       59 GETIMPORT                        R10 K1 [game]
       61 LOADK                            R12 K18 ["LCPostDeformSizeMultiplierEyebrowEyelashHundredths"]
       62 LOADN                            R13 100
       63 NAMECALL                         R10 R10 K19 ["DefineFastInt"]
       65 CALL                             R10 3 1
       66 DIVK                             R9 R10 K17 [100]
       67 NEWTABLE                         R10 2 0
       69 GETIMPORT                        R11 K23 [Enum.AssetType.EyebrowAccessory]
       71 SETTABLE                         R9 R10 R11
       72 GETIMPORT                        R11 K25 [Enum.AssetType.EyelashAccessory]
       74 SETTABLE                         R9 R10 R11
       75 GETIMPORT                        R12 K1 [game]
       77 LOADK                            R14 K26 ["LCPostDeformSizeMultiplierGeneralHundredths"]
       78 LOADN                            R15 100
       79 NAMECALL                         R12 R12 K19 ["DefineFastInt"]
       81 CALL                             R12 3 1
       82 DIVK                             R11 R12 K17 [100]
       83 GETIMPORT                        R12 K8 [require]
       85 GETTABLEKS                       R14 R1 K27 ["flags"]
       87 GETTABLEKS                       R13 R14 K28 ["getEngineFeatureEngineUGCValidationExactLCDeformationSize"]
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R8 K29 ["fflag"]
       92 NEWTABLE                         R12 0 1
       94 GETTABLEKS                       R14 R4 K30 ["UploadCategory"]
       96 GETTABLEKS                       R13 R14 K31 ["LAYERED_CLOTHING"]
       98 SETLIST                          R12 R13 1 [1]
      100 SETTABLEKS                       R12 R8 K32 ["categories"]
      102 NEWTABLE                         R12 0 1
      104 GETTABLEKS                       R14 R4 K33 ["SharedDataMember"]
      106 GETTABLEKS                       R13 R14 K34 ["renderMeshesData"]
      108 SETLIST                          R12 R13 1 [1]
      110 SETTABLEKS                       R12 R8 K35 ["requiredData"]
      112 DUPCLOSURE                       R12 K36 [PROTO_0]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R7
      120 SETTABLEKS                       R12 R8 K37 ["run"]
      122 RETURN                           R8 1
