PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["instances required in validationContext for validateLegacyAccessoryMeshPartAssetFormat"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R1 K0 ["instances"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R2
       18 MOVE                             R7 R1
       19 CALL                             R5 2 2
       20 MOVE                             R3 R5
       21 MOVE                             R4 R6
       22 JUMPIF                           R3 ; [+3]
       23 LOADB                            R5 0
       24 MOVE                             R6 R4
       25 RETURN                           R5 2
       26 GETTABLEN                        R5 R2 1
       27 LOADK                            R8 K4 ["Handle"]
       28 NAMECALL                         R6 R0 K5 ["FindFirstChild"]
       30 CALL                             R6 2 1
       31 LOADK                            R9 K6 ["Attachment"]
       32 NAMECALL                         R7 R6 K7 ["FindFirstChildOfClass"]
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R9 R7 K8 ["Name"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 2
       40 MOVE                             R10 R8
       41 MOVE                             R11 R5
       42 MOVE                             R12 R1
       43 CALL                             R9 3 2
       44 MOVE                             R3 R9
       45 MOVE                             R4 R10
       46 JUMPIF                           R3 ; [+3]
       47 LOADB                            R9 0
       48 MOVE                             R10 R4
       49 RETURN                           R9 2
       50 GETUPVAL                         R9 3
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+12]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K9 ["validate"]
       56 MOVE                             R10 R5
       57 MOVE                             R11 R1
       58 CALL                             R9 2 2
       59 MOVE                             R3 R9
       60 MOVE                             R4 R10
       61 JUMPIF                           R3 ; [+3]
       62 LOADB                            R9 0
       63 MOVE                             R10 R4
       64 RETURN                           R9 2
       65 GETUPVAL                         R9 5
       66 CALL                             R9 0 1
       67 JUMPIF                           R9 ; [+10]
       68 GETUPVAL                         R9 6
       69 MOVE                             R10 R5
       70 MOVE                             R11 R1
       71 CALL                             R9 2 2
       72 MOVE                             R3 R9
       73 MOVE                             R4 R10
       74 JUMPIF                           R3 ; [+3]
       75 LOADB                            R9 0
       76 MOVE                             R10 R4
       77 RETURN                           R9 2
       78 GETUPVAL                         R9 7
       79 CALL                             R9 0 1
       80 JUMPIF                           R9 ; [+20]
       81 GETUPVAL                         R9 8
       82 MOVE                             R10 R5
       83 MOVE                             R11 R1
       84 CALL                             R9 2 2
       85 MOVE                             R3 R9
       86 MOVE                             R4 R10
       87 JUMPIF                           R3 ; [+3]
       88 LOADB                            R9 0
       89 MOVE                             R10 R4
       90 RETURN                           R9 2
       91 GETUPVAL                         R9 9
       92 MOVE                             R10 R5
       93 MOVE                             R11 R1
       94 CALL                             R9 2 2
       95 MOVE                             R3 R9
       96 MOVE                             R4 R10
       97 JUMPIF                           R3 ; [+3]
       98 LOADB                            R9 0
       99 MOVE                             R10 R4
      100 RETURN                           R9 2
      101 GETUPVAL                         R9 5
      102 CALL                             R9 0 1
      103 JUMPIF                           R9 ; [+16]
      104 GETUPVAL                         R9 10
      105 CALL                             R9 0 1
      106 JUMPIFNOT                        R9 ; [+13]
      107 GETUPVAL                         R9 11
      108 GETTABLEKS                       R9 R9 K9 ["validate"]
      110 MOVE                             R10 R5
      111 LOADB                            R11 0
      112 MOVE                             R12 R1
      113 CALL                             R9 3 2
      114 MOVE                             R3 R9
      115 MOVE                             R4 R10
      116 JUMPIF                           R3 ; [+3]
      117 LOADB                            R9 0
      118 MOVE                             R10 R4
      119 RETURN                           R9 2
      120 GETUPVAL                         R9 12
      121 MOVE                             R10 R5
      122 MOVE                             R11 R0
      123 MOVE                             R12 R1
      124 CALL                             R9 3 2
      125 MOVE                             R3 R9
      126 MOVE                             R4 R10
      127 JUMPIF                           R3 ; [+3]
      128 LOADB                            R9 0
      129 MOVE                             R10 R4
      130 RETURN                           R9 2
      131 LOADB                            R9 1
      132 RETURN                           R9 1

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
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["createLegacyAccessoryMeshPartAssetFormatSchema"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validation"]
       25 GETTABLEKS                       R4 R4 K9 ["validateSingleInstance"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validation"]
       32 GETTABLEKS                       R5 R5 K10 ["validateInstanceTree"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K8 ["validation"]
       39 GETTABLEKS                       R6 R6 K11 ["validateLegacyAccessoryMeshPartAssetFormatMatch"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K8 ["validation"]
       46 GETTABLEKS                       R7 R7 K12 ["validateSurfaceAppearances"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K8 ["validation"]
       53 GETTABLEKS                       R8 R8 K13 ["validateSurfaceAppearanceTextureSize"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K8 ["validation"]
       60 GETTABLEKS                       R9 R9 K14 ["ValidateTexturePack"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K8 ["validation"]
       67 GETTABLEKS                       R10 R10 K15 ["validateSurfaceAppearanceTransparency"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K8 ["validation"]
       74 GETTABLEKS                       R11 R11 K16 ["ValidatePropertiesSensible"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K17 ["flags"]
       81 GETTABLEKS                       R12 R12 K18 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K17 ["flags"]
       88 GETTABLEKS                       R13 R13 K19 ["getFFlagUGCValidateTexturePack"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K17 ["flags"]
       95 GETTABLEKS                       R14 R14 K20 ["getFFlagUGCValidateMigrateTextureTransparency"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R15 R0 K17 ["flags"]
      102 GETTABLEKS                       R15 R15 K21 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K22 [PROTO_0]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R5
      119 RETURN                           R15 1
