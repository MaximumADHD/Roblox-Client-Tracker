PROTO_0:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 NAMECALL                         R3 R0 K2 ["GetDescendants"]
        5 CALL                             R3 1 1
        6 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        8 MOVE                             R5 R3
        9 MOVE                             R6 R0
       10 GETIMPORT                        R4 K5 [table.insert]
       12 CALL                             R4 2 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["new"]
       16 CALL                             R4 0 1
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 LOADK                            R12 K7 ["MeshPart"]
       22 NAMECALL                         R10 R9 K8 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+93]
       26 LOADK                            R12 K9 ["SurfaceAppearance"]
       27 NAMECALL                         R10 R9 K10 ["FindFirstChildWhichIsA"]
       29 CALL                             R10 2 1
       30 JUMPIFNOT                        R10 ; [+88]
       31 GETUPVAL                         R12 1
       32 GETTABLEKS                       R11 R12 K11 ["parse"]
       34 MOVE                             R12 R10
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R13 R14 K12 ["TEXTURE_CONTENT_ID_FIELDS"]
       38 MOVE                             R14 R1
       39 CALL                             R11 3 1
       40 MOVE                             R12 R11
       41 LOADNIL                          R13
       42 LOADNIL                          R14
       43 FORGPREP                         R12
       44 DUPTABLE                         R17 K16 [{"fullName", "fieldName", "contentId"}]
       45 GETTABLEKS                       R22 R16 K17 ["instance"]
       47 NAMECALL                         R22 R22 K18 ["GetFullName"]
       49 CALL                             R22 1 1
       50 MOVE                             R19 R22
       51 LOADK                            R20 K19 ["."]
       52 GETTABLEKS                       R21 R16 K14 ["fieldName"]
       54 CONCAT                           R18 R19 R21
       55 SETTABLEKS                       R18 R17 K13 ["fullName"]
       57 GETTABLEKS                       R18 R16 K14 ["fieldName"]
       59 SETTABLEKS                       R18 R17 K14 ["fieldName"]
       61 GETTABLEKS                       R19 R16 K17 ["instance"]
       63 GETTABLEKS                       R20 R16 K14 ["fieldName"]
       65 GETTABLE                         R18 R19 R20
       66 SETTABLEKS                       R18 R17 K15 ["contentId"]
       68 GETUPVAL                         R18 3
       69 GETTABLEKS                       R19 R16 K17 ["instance"]
       71 GETTABLEKS                       R20 R16 K14 ["fieldName"]
       73 MOVE                             R21 R1
       74 CALL                             R18 3 2
       75 JUMPIF                           R18 ; [+7]
       76 LOADB                            R20 0
       77 NEWTABLE                         R21 0 1
       79 LOADK                            R22 K20 ["Failed to load texture data"]
       80 SETLIST                          R21 R22 1 [1]
       82 RETURN                           R20 2
       83 SETTABLEKS                       R19 R17 K21 ["editableImage"]
       85 LOADNIL                          R20
       86 GETUPVAL                         R21 4
       87 CALL                             R21 0 1
       88 JUMPIFNOT                        R21 ; [+15]
       89 GETTABLEKS                       R21 R1 K22 ["assetTypeEnum"]
       91 JUMPIFNOT                        R21 ; [+12]
       92 GETUPVAL                         R22 5
       93 GETTABLEKS                       R21 R22 K23 ["getTextureLimit"]
       95 GETTABLEKS                       R22 R1 K22 ["assetTypeEnum"]
       97 GETTABLEKS                       R23 R16 K17 ["instance"]
       99 GETTABLEKS                       R24 R16 K14 ["fieldName"]
      101 CALL                             R21 3 1
      102 MOVE                             R20 R21
      103 JUMP                             ; [+4]
      104 GETUPVAL                         R21 6
      105 GETTABLEKS                       R22 R16 K14 ["fieldName"]
      107 GETTABLE                         R20 R21 R22
      108 GETUPVAL                         R23 7
      109 MOVE                             R24 R17
      110 LOADNIL                          R25
      111 MOVE                             R26 R1
      112 MOVE                             R27 R20
      113 CALL                             R23 4 -1
      114 NAMECALL                         R21 R4 K24 ["updateReasons"]
      116 CALL                             R21 -1 0
      117 FORGLOOP                         R12 2 ; [-74]
      119 FORGLOOP                         R5 2 ; [-99]
      121 GETUPVAL                         R6 8
      122 GETTABLEKS                       R5 R6 K25 ["recordScriptTime"]
      124 GETIMPORT                        R7 K27 [script]
      126 GETTABLEKS                       R6 R7 K28 ["Name"]
      128 MOVE                             R7 R2
      129 MOVE                             R8 R1
      130 CALL                             R5 3 0
      131 NAMECALL                         R5 R4 K29 ["getFinalResults"]
      133 CALL                             R5 1 -1
      134 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["ConstantsInterface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R6 R0 K8 ["util"]
       26 GETTABLEKS                       R5 R6 K9 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K10 ["validation"]
       33 GETTABLEKS                       R6 R7 K11 ["validateTextureSize"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R8 R0 K8 ["util"]
       40 GETTABLEKS                       R7 R8 K12 ["FailureReasonsAccumulator"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K8 ["util"]
       47 GETTABLEKS                       R8 R9 K13 ["getEditableImageFromContext"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R10 R0 K8 ["util"]
       54 GETTABLEKS                       R9 R10 K14 ["ParseContentIds"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R0 K15 ["flags"]
       59 GETIMPORT                        R10 K4 [require]
       61 GETTABLEKS                       R11 R9 K16 ["getFFlagUGCValidateAccessoryAssetSurfaceAppearanceTextureLimits"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K18 [game]
       66 LOADK                            R13 K19 ["AccessoryColorMapMaxSize"]
       67 LOADN                            R14 0
       68 NAMECALL                         R11 R11 K20 ["DefineFastInt"]
       70 CALL                             R11 3 1
       71 GETIMPORT                        R12 K18 [game]
       73 LOADK                            R14 K21 ["AccessoryMetalnessMapMaxSize"]
       74 LOADN                            R15 0
       75 NAMECALL                         R12 R12 K20 ["DefineFastInt"]
       77 CALL                             R12 3 1
       78 GETIMPORT                        R13 K18 [game]
       80 LOADK                            R15 K22 ["AccessoryNormalMapMaxSize"]
       81 LOADN                            R16 0
       82 NAMECALL                         R13 R13 K20 ["DefineFastInt"]
       84 CALL                             R13 3 1
       85 GETIMPORT                        R14 K18 [game]
       87 LOADK                            R16 K23 ["AccessoryRoughnessMapMaxSize"]
       88 LOADN                            R17 0
       89 NAMECALL                         R14 R14 K20 ["DefineFastInt"]
       91 CALL                             R14 3 1
       92 DUPTABLE                         R15 K28 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
       93 SETTABLEKS                       R11 R15 K24 ["ColorMap"]
       95 SETTABLEKS                       R12 R15 K25 ["MetalnessMap"]
       97 SETTABLEKS                       R13 R15 K26 ["NormalMap"]
       99 SETTABLEKS                       R14 R15 K27 ["RoughnessMap"]
      101 DUPCLOSURE                       R16 K29 [PROTO_0]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R1
      111 RETURN                           R16 1
