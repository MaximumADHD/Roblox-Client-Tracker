PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R2 K1 ["assetType"]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.EyelashAccessory]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R1 K7 ["renderMeshesData"]
       11 GETTABLEKS                       R2 R3 K6 ["Handle"]
       13 GETTABLEKS                       R4 R1 K8 ["innerCagesData"]
       15 GETTABLEKS                       R3 R4 K6 ["Handle"]
       17 JUMPIFEQKNIL                     R2 ; [+3]
       19 JUMPIFNOTEQKNIL                  R3 ; [+5]
       21 GETIMPORT                        R4 K10 [error]
       23 LOADK                            R5 K11 ["Schema should have ensured data exists for handle"]
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R6 R2 K12 ["editable"]
       28 GETTABLEKS                       R7 R3 K12 ["editable"]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R9 R3 K13 ["origin"]
       33 GETUPVAL                         R10 2
       34 NAMECALL                         R4 R4 K14 ["ValidateLeaderSkinnedVertsNearCageIslands"]
       36 CALL                             R4 6 1
       37 JUMPIF                           R4 ; [+8]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K15 ["Keys"]
       41 GETTABLEKS                       R7 R7 K16 ["LeaderVertsNearCageIslands"]
       43 NAMECALL                         R5 R0 K17 ["fail"]
       45 CALL                             R5 2 0
       46 RETURN                           R0 0

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
       38 GETTABLEKS                       R6 R1 K14 ["EyelashCageUVReferenceValues"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFIntUGCValidationLeaderVertsNearCageIslandsDistance"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 GETIMPORT                        R8 K8 [require]
       52 GETTABLEKS                       R9 R1 K15 ["flags"]
       54 GETTABLEKS                       R9 R9 K17 ["getEngineFeatureEngineUGCValidateLeaderVertsNearCageIslands"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K18 ["fflag"]
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R3 K19 ["UploadCategory"]
       63 GETTABLEKS                       R9 R9 K20 ["LAYERED_CLOTHING"]
       65 SETLIST                          R8 R9 1 [1]
       67 SETTABLEKS                       R8 R7 K21 ["categories"]
       69 NEWTABLE                         R8 0 2
       71 GETTABLEKS                       R9 R3 K22 ["SharedDataMember"]
       73 GETTABLEKS                       R9 R9 K23 ["renderMeshesData"]
       75 GETTABLEKS                       R10 R3 K22 ["SharedDataMember"]
       77 GETTABLEKS                       R10 R10 K24 ["innerCagesData"]
       79 SETLIST                          R8 R9 2 [1]
       81 SETTABLEKS                       R8 R7 K25 ["requiredData"]
       83 MOVE                             R9 R6
       84 CALL                             R9 0 1
       85 DIVK                             R8 R9 K26 [10000]
       86 DUPCLOSURE                       R9 K27 [PROTO_0]
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R9 R7 K28 ["run"]
       93 RETURN                           R7 1
