PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R4 K1 ["Handle"]
        3 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R4 R1 K3 ["renderMeshesData"]
        8 GETTABLEKS                       R3 R4 K1 ["Handle"]
       10 GETTABLEKS                       R4 R1 K4 ["uploadEnum"]
       12 GETTABLEKS                       R4 R4 K5 ["assetType"]
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
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R10 R10 K15 ["isFirstLessOrEqual"]
       56 MOVE                             R11 R9
       57 MOVE                             R12 R8
       58 CALL                             R10 2 1
       59 JUMPIF                           R10 ; [+20]
       60 GETUPVAL                         R12 5
       61 GETTABLEKS                       R12 R12 K16 ["Keys"]
       63 GETTABLEKS                       R12 R12 K17 ["LCDeformTooLarge"]
       65 DUPTABLE                         R13 K19 [{"maxSize"}]
       66 GETUPVAL                         R14 6
       67 MOVE                             R15 R8
       68 CALL                             R14 1 1
       69 SETTABLEKS                       R14 R13 K18 ["maxSize"]
       71 GETUPVAL                         R15 7
       72 CALL                             R15 0 1
       73 JUMPIFNOT                        R15 ; [+2]
       74 MOVE                             R14 R2
       75 JUMP                             ; [+1]
       76 LOADNIL                          R14
       77 NAMECALL                         R10 R0 K20 ["fail"]
       79 CALL                             R10 4 0
       80 RETURN                           R0 0

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
       24 GETTABLEKS                       R4 R1 K9 ["util"]
       26 GETTABLEKS                       R4 R4 K11 ["ValidationRulesUtil"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       40 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K15 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K9 ["util"]
       54 GETTABLEKS                       R8 R8 K17 ["Vector3Utils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K9 ["util"]
       61 GETTABLEKS                       R9 R9 K18 ["valueToString"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 4 0
       66 GETIMPORT                        R11 K1 [game]
       68 LOADK                            R13 K20 ["LCPostDeformSizeMultiplierEyebrowEyelashHundredths"]
       69 LOADN                            R14 100
       70 NAMECALL                         R11 R11 K21 ["DefineFastInt"]
       72 CALL                             R11 3 1
       73 DIVK                             R10 R11 K19 [100]
       74 NEWTABLE                         R11 2 0
       76 GETIMPORT                        R12 K25 [Enum.AssetType.EyebrowAccessory]
       78 SETTABLE                         R10 R11 R12
       79 GETIMPORT                        R12 K27 [Enum.AssetType.EyelashAccessory]
       81 SETTABLE                         R10 R11 R12
       82 GETIMPORT                        R13 K1 [game]
       84 LOADK                            R15 K28 ["LCPostDeformSizeMultiplierGeneralHundredths"]
       85 LOADN                            R16 100
       86 NAMECALL                         R13 R13 K21 ["DefineFastInt"]
       88 CALL                             R13 3 1
       89 DIVK                             R12 R13 K19 [100]
       90 GETIMPORT                        R13 K8 [require]
       92 GETTABLEKS                       R14 R1 K15 ["flags"]
       94 GETTABLEKS                       R14 R14 K29 ["getEngineFeatureEngineUGCValidationExactLCDeformationSize"]
       96 CALL                             R13 1 1
       97 SETTABLEKS                       R13 R9 K30 ["fflag"]
       99 NEWTABLE                         R13 0 1
      101 GETTABLEKS                       R14 R4 K31 ["UploadCategory"]
      103 GETTABLEKS                       R14 R14 K32 ["LAYERED_CLOTHING"]
      105 SETLIST                          R13 R14 1 [1]
      107 SETTABLEKS                       R13 R9 K33 ["categories"]
      109 NEWTABLE                         R13 0 1
      111 GETTABLEKS                       R14 R4 K34 ["SharedDataMember"]
      113 GETTABLEKS                       R14 R14 K35 ["renderMeshesData"]
      115 SETLIST                          R13 R14 1 [1]
      117 SETTABLEKS                       R13 R9 K36 ["requiredData"]
      119 DUPCLOSURE                       R13 K37 [PROTO_0]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R13 R9 K38 ["run"]
      130 RETURN                           R9 1
