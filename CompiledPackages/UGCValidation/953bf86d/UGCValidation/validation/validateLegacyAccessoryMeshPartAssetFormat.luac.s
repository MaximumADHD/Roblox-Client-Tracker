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
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R9 R10 K9 ["validate"]
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
       66 MOVE                             R10 R5
       67 MOVE                             R11 R1
       68 CALL                             R9 2 2
       69 MOVE                             R3 R9
       70 MOVE                             R4 R10
       71 JUMPIF                           R3 ; [+3]
       72 LOADB                            R9 0
       73 MOVE                             R10 R4
       74 RETURN                           R9 2
       75 GETUPVAL                         R9 6
       76 MOVE                             R10 R5
       77 MOVE                             R11 R1
       78 CALL                             R9 2 2
       79 MOVE                             R3 R9
       80 MOVE                             R4 R10
       81 JUMPIF                           R3 ; [+3]
       82 LOADB                            R9 0
       83 MOVE                             R10 R4
       84 RETURN                           R9 2
       85 GETUPVAL                         R9 7
       86 MOVE                             R10 R5
       87 MOVE                             R11 R1
       88 CALL                             R9 2 2
       89 MOVE                             R3 R9
       90 MOVE                             R4 R10
       91 JUMPIF                           R3 ; [+3]
       92 LOADB                            R9 0
       93 MOVE                             R10 R4
       94 RETURN                           R9 2
       95 GETUPVAL                         R9 8
       96 CALL                             R9 0 1
       97 JUMPIFNOT                        R9 ; [+13]
       98 GETUPVAL                         R10 9
       99 GETTABLEKS                       R9 R10 K9 ["validate"]
      101 MOVE                             R10 R5
      102 LOADB                            R11 0
      103 MOVE                             R12 R1
      104 CALL                             R9 3 2
      105 MOVE                             R3 R9
      106 MOVE                             R4 R10
      107 JUMPIF                           R3 ; [+3]
      108 LOADB                            R9 0
      109 MOVE                             R10 R4
      110 RETURN                           R9 2
      111 GETUPVAL                         R9 10
      112 MOVE                             R10 R5
      113 MOVE                             R11 R0
      114 MOVE                             R12 R1
      115 CALL                             R9 3 2
      116 MOVE                             R3 R9
      117 MOVE                             R4 R10
      118 JUMPIF                           R3 ; [+3]
      119 LOADB                            R9 0
      120 MOVE                             R10 R4
      121 RETURN                           R9 2
      122 LOADB                            R9 1
      123 RETURN                           R9 1

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
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["createLegacyAccessoryMeshPartAssetFormatSchema"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["validation"]
       25 GETTABLEKS                       R4 R5 K9 ["validateSingleInstance"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K8 ["validation"]
       32 GETTABLEKS                       R5 R6 K10 ["validateInstanceTree"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K8 ["validation"]
       39 GETTABLEKS                       R6 R7 K11 ["validateLegacyAccessoryMeshPartAssetFormatMatch"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K8 ["validation"]
       46 GETTABLEKS                       R7 R8 K12 ["validateSurfaceAppearances"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K8 ["validation"]
       53 GETTABLEKS                       R8 R9 K13 ["validateSurfaceAppearanceTextureSize"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K8 ["validation"]
       60 GETTABLEKS                       R9 R10 K14 ["ValidateTexturePack"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K8 ["validation"]
       67 GETTABLEKS                       R10 R11 K15 ["validateSurfaceAppearanceTransparency"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K8 ["validation"]
       74 GETTABLEKS                       R11 R12 K16 ["ValidatePropertiesSensible"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R13 R0 K17 ["flags"]
       81 GETTABLEKS                       R12 R13 K18 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K17 ["flags"]
       88 GETTABLEKS                       R13 R14 K19 ["getFFlagUGCValidateTexturePack"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K20 [PROTO_0]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 RETURN                           R13 1
