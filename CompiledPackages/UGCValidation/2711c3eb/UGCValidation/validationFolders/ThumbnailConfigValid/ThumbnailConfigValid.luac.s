PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+16]
        5 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
       10 GETTABLEKS                       R3 R3 K2 ["assetType"]
       12 GETIMPORT                        R4 K6 [Enum.AssetType.EyebrowAccessory]
       14 JUMPIFEQ                         R3 R4 ; [+5]
       16 GETIMPORT                        R4 K8 [Enum.AssetType.EyelashAccessory]
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 LOADK                            R5 K9 ["ThumbnailConfiguration"]
       22 NAMECALL                         R3 R2 K10 ["FindFirstChild"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+1]
       26 RETURN                           R0 0
       27 LOADK                            R6 K11 ["Handle"]
       28 NAMECALL                         R4 R2 K10 ["FindFirstChild"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+5]
       32 LOADK                            R7 K12 ["BasePart"]
       33 NAMECALL                         R5 R4 K13 ["IsA"]
       35 CALL                             R5 2 1
       36 JUMPIF                           R5 ; [+1]
       37 RETURN                           R0 0
       38 LOADK                            R7 K14 ["ThumbnailCameraTarget"]
       39 NAMECALL                         R5 R3 K10 ["FindFirstChild"]
       41 CALL                             R5 2 1
       42 JUMPIF                           R5 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R6 R5 K15 ["Value"]
       46 JUMPIFEQ                         R6 R4 ; [+16]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K16 ["Keys"]
       51 GETTABLEKS                       R8 R8 K17 ["ThumbnailInvalidTarget"]
       53 DUPTABLE                         R9 K19 [{"ExpectedTarget"}]
       54 NAMECALL                         R10 R4 K20 ["GetFullName"]
       56 CALL                             R10 1 1
       57 SETTABLEKS                       R10 R9 K18 ["ExpectedTarget"]
       59 NAMECALL                         R6 R0 K21 ["fail"]
       61 CALL                             R6 3 0
       62 RETURN                           R0 0
       63 GETIMPORT                        R6 K23 [game]
       65 LOADK                            R8 K24 ["EngineUGCValidateThumbnailerMeshInFrustum"]
       66 NAMECALL                         R6 R6 K25 ["GetEngineFeature"]
       68 CALL                             R6 2 1
       69 JUMPIFNOT                        R6 ; [+51]
       70 GETUPVAL                         R6 2
       71 JUMPIFNOT                        R6 ; [+49]
       72 GETTABLEKS                       R6 R1 K26 ["renderMeshesData"]
       74 JUMPIF                           R6 ; [+1]
       75 RETURN                           R0 0
       76 GETTABLEKS                       R8 R4 K27 ["Name"]
       78 GETTABLE                         R7 R6 R8
       79 JUMPIF                           R7 ; [+1]
       80 RETURN                           R0 0
       81 GETTABLEKS                       R8 R5 K15 ["Value"]
       83 GETTABLEKS                       R9 R8 K28 ["CFrame"]
       85 LOADK                            R12 K29 ["ThumbnailCameraValue"]
       86 NAMECALL                         R10 R3 K10 ["FindFirstChild"]
       88 CALL                             R10 2 1
       89 JUMPIF                           R10 ; [+1]
       90 RETURN                           R0 0
       91 GETTABLEKS                       R12 R10 K15 ["Value"]
       93 MUL                              R11 R9 R12
       94 GETTABLEKS                       R12 R7 K30 ["scale"]
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R15 R7 K31 ["editable"]
       99 MOVE                             R16 R12
      100 MOVE                             R17 R9
      101 MOVE                             R18 R11
      102 NAMECALL                         R13 R13 K32 ["CheckEditableMeshInCameraFrustum"]
      104 CALL                             R13 5 1
      105 JUMPIFNOTEQKB                    R13 FALSE ; [+15]
      107 GETUPVAL                         R15 1
      108 GETTABLEKS                       R15 R15 K16 ["Keys"]
      110 GETTABLEKS                       R15 R15 K33 ["ThumbnailOutsideView"]
      112 DUPTABLE                         R16 K35 [{"InstancePath"}]
      113 NAMECALL                         R17 R4 K20 ["GetFullName"]
      115 CALL                             R17 1 1
      116 SETTABLEKS                       R17 R16 K34 ["InstancePath"]
      118 NAMECALL                         R13 R0 K21 ["fail"]
      120 CALL                             R13 3 0
      121 RETURN                           R0 0

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
       38 GETTABLEKS                       R6 R1 K14 ["flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateSchemaProperties"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [game]
       52 LOADK                            R9 K17 ["UGCValidationAddThumbnailFrustumCheckingv2"]
       53 LOADB                            R10 0
       54 NAMECALL                         R7 R7 K18 ["DefineFastFlag"]
       56 CALL                             R7 3 1
       57 NEWTABLE                         R8 8 0
       59 NEWTABLE                         R9 0 2
       61 GETTABLEKS                       R10 R3 K19 ["UploadCategory"]
       63 GETTABLEKS                       R10 R10 K20 ["LAYERED_CLOTHING"]
       65 GETTABLEKS                       R11 R3 K19 ["UploadCategory"]
       67 GETTABLEKS                       R11 R11 K21 ["RIGID_ACCESSORY"]
       69 SETLIST                          R9 R10 2 [1]
       71 SETTABLEKS                       R9 R8 K22 ["categories"]
       73 NEWTABLE                         R9 0 3
       75 GETTABLEKS                       R10 R3 K23 ["SharedDataMember"]
       77 GETTABLEKS                       R10 R10 K24 ["rootInstance"]
       79 GETTABLEKS                       R11 R3 K23 ["SharedDataMember"]
       81 GETTABLEKS                       R11 R11 K25 ["renderMeshesData"]
       83 GETTABLEKS                       R12 R3 K23 ["SharedDataMember"]
       85 GETTABLEKS                       R12 R12 K26 ["uploadEnum"]
       87 SETLIST                          R9 R10 3 [1]
       89 SETTABLEKS                       R9 R8 K27 ["requiredData"]
       91 SETTABLEKS                       R5 R8 K28 ["fflag"]
       93 NEWTABLE                         R9 0 0
       95 SETTABLEKS                       R9 R8 K29 ["expectedFailures"]
       97 DUPCLOSURE                       R9 K30 [PROTO_0]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R9 R8 K31 ["run"]
      104 RETURN                           R8 1
