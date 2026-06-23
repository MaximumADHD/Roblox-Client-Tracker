PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        5 GETTABLEKS                       R2 R2 K1 ["assetType"]
        7 GETIMPORT                        R3 K5 [Enum.AssetType.EyebrowAccessory]
        9 JUMPIFEQ                         R2 R3 ; [+5]
       11 GETIMPORT                        R3 K7 [Enum.AssetType.EyelashAccessory]
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K9 ["renderMeshesData"]
       18 GETTABLEKS                       R2 R3 K8 ["Handle"]
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R4 R1 K10 ["innerCagesData"]
       25 GETTABLEKS                       R3 R4 K8 ["Handle"]
       27 GETTABLEKS                       R5 R1 K11 ["outerCagesData"]
       29 GETTABLEKS                       R4 R5 K8 ["Handle"]
       31 JUMPIFEQKNIL                     R3 ; [+3]
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R7 R3 K12 ["editable"]
       39 GETTABLEKS                       R8 R4 K12 ["editable"]
       41 GETTABLEKS                       R9 R2 K12 ["editable"]
       43 GETTABLEKS                       R10 R3 K13 ["origin"]
       45 GETTABLEKS                       R11 R4 K13 ["origin"]
       47 NAMECALL                         R5 R5 K14 ["CalculateAverageEditableCageMeshDistance"]
       49 CALL                             R5 6 1
       50 GETUPVAL                         R6 2
       51 CALL                             R6 0 1
       52 MULK                             R7 R5 K15 [100]
       53 JUMPIFLT                         R6 R7 ; [+4]
       55 LOADN                            R7 0
       56 JUMPIFNOTLT                      R5 R7 ; [+31]
       58 LOADN                            R7 0
       59 JUMPIFNOTLT                      R5 R7 ; [+12]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K16 ["Keys"]
       64 GETTABLEKS                       R9 R9 K17 ["CageMeshDistanceBounded_MeshOutsideCage"]
       66 NEWTABLE                         R10 0 0
       68 NAMECALL                         R7 R0 K18 ["fail"]
       70 CALL                             R7 3 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K16 ["Keys"]
       75 GETTABLEKS                       R9 R9 K19 ["CageMeshDistanceBounded_DistanceTooHigh"]
       77 DUPTABLE                         R10 K21 [{"distance"}]
       78 GETIMPORT                        R11 K24 [string.format]
       80 LOADK                            R12 K25 ["%.2f"]
       81 MOVE                             R13 R5
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K20 ["distance"]
       85 NAMECALL                         R7 R0 K18 ["fail"]
       87 CALL                             R7 3 0
       88 RETURN                           R0 0

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
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateCageGeometry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFIntUGCValidateCageMeshDistanceThreshold"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K14 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 SETTABLEKS                       R5 R8 K18 ["fflag"]
       61 NEWTABLE                         R9 0 1
       63 GETTABLEKS                       R10 R3 K19 ["UploadCategory"]
       65 GETTABLEKS                       R10 R10 K20 ["LAYERED_CLOTHING"]
       67 SETLIST                          R9 R10 1 [1]
       69 SETTABLEKS                       R9 R8 K21 ["categories"]
       71 NEWTABLE                         R9 0 3
       73 GETTABLEKS                       R10 R3 K22 ["SharedDataMember"]
       75 GETTABLEKS                       R10 R10 K23 ["renderMeshesData"]
       77 GETTABLEKS                       R11 R3 K22 ["SharedDataMember"]
       79 GETTABLEKS                       R11 R11 K24 ["innerCagesData"]
       81 GETTABLEKS                       R12 R3 K22 ["SharedDataMember"]
       83 GETTABLEKS                       R12 R12 K25 ["outerCagesData"]
       85 SETLIST                          R9 R10 3 [1]
       87 SETTABLEKS                       R9 R8 K26 ["requiredData"]
       89 NEWTABLE                         R9 0 0
       91 SETTABLEKS                       R9 R8 K27 ["expectedFailures"]
       93 DUPCLOSURE                       R9 K28 [PROTO_0]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R9 R8 K29 ["run"]
      100 RETURN                           R8 1
