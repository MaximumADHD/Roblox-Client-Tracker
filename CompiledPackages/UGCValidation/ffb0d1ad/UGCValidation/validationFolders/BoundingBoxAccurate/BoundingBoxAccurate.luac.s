PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
        5 GETTABLEKS                       R1 R1 K1 ["assetType"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
       10 GETTABLEKS                       R1 R1 K1 ["assetType"]
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["renderMeshesData"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R0 K1 ["rootInstance"]
        9 MOVE                             R9 R5
       10 LOADB                            R10 1
       11 NAMECALL                         R7 R7 K2 ["FindFirstChild"]
       13 CALL                             R7 3 1
       14 JUMPIF                           R7 ; [+8]
       15 GETTABLEKS                       R8 R0 K1 ["rootInstance"]
       17 GETTABLEKS                       R8 R8 K3 ["Name"]
       19 JUMPIFNOTEQ                      R8 R5 ; [+3]
       21 GETTABLEKS                       R7 R0 K1 ["rootInstance"]
       23 JUMPIFNOT                        R7 ; [+12]
       24 GETTABLEKS                       R8 R6 K4 ["editable"]
       26 JUMPIFNOT                        R8 ; [+9]
       27 DUPTABLE                         R8 K6 [{"MeshId"}]
       28 DUPTABLE                         R9 K10 [{["instance"], ["created"] = False}]
       29 GETTABLEKS                       R10 R6 K4 ["editable"]
       31 SETTABLEKS                       R10 R9 K7 ["instance"]
       33 SETTABLEKS                       R9 R8 K5 ["MeshId"]
       35 SETTABLE                         R8 R1 R7
       36 FORGLOOP                         R2 2 ; [-30]
       38 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["uploadEnum"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R3 R1 K0 ["uploadEnum"]
        5 GETTABLEKS                       R3 R3 K1 ["assetType"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
       10 GETTABLEKS                       R2 R2 K1 ["assetType"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R1 K2 ["rootInstance"]
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 DUPTABLE                         R5 K8 [{["assetTypeEnum"], ["isServer"], ["editableMeshes"], ["shouldYield"] = False}]
       22 SETTABLEKS                       R2 R5 K3 ["assetTypeEnum"]
       24 GETTABLEKS                       R7 R1 K9 ["consumerConfig"]
       26 GETTABLEKS                       R7 R7 K10 ["consumerEnv"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K11 ["ConsumerEnv"]
       31 GETTABLEKS                       R8 R8 K12 ["Backend"]
       33 JUMPIFEQ                         R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 SETTABLEKS                       R6 R5 K4 ["isServer"]
       39 SETTABLEKS                       R4 R5 K5 ["editableMeshes"]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K13 ["getBoundsViewsForAssetType"]
       44 MOVE                             R7 R2
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K14 ["new"]
       49 MOVE                             R8 R3
       50 MOVE                             R9 R6
       51 MOVE                             R10 R5
       52 CALL                             R7 3 2
       53 JUMPIF                           R7 ; [+19]
       54 JUMPIFNOT                        R8 ; [+17]
       55 MOVE                             R9 R8
       56 LOADNIL                          R10
       57 LOADNIL                          R11
       58 FORGPREP                         R9
       59 GETUPVAL                         R16 4
       60 GETTABLEKS                       R16 R16 K15 ["Keys"]
       62 GETTABLEKS                       R16 R16 K16 ["BoundingBox_ValidationFailed"]
       64 DUPTABLE                         R17 K18 [{"reason"}]
       65 SETTABLEKS                       R13 R17 K17 ["reason"]
       67 NAMECALL                         R14 R0 K19 ["fail"]
       69 CALL                             R14 3 0
       70 FORGLOOP                         R9 2 ; [-12]
       72 RETURN                           R0 0
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K20 ["validate"]
       76 MOVE                             R10 R3
       77 MOVE                             R11 R8
       78 MOVE                             R12 R5
       79 CALL                             R9 3 2
       80 JUMPIF                           R9 ; [+18]
       81 JUMPIFNOT                        R10 ; [+17]
       82 MOVE                             R11 R10
       83 LOADNIL                          R12
       84 LOADNIL                          R13
       85 FORGPREP                         R11
       86 GETUPVAL                         R18 4
       87 GETTABLEKS                       R18 R18 K15 ["Keys"]
       89 GETTABLEKS                       R18 R18 K16 ["BoundingBox_ValidationFailed"]
       91 DUPTABLE                         R19 K18 [{"reason"}]
       92 SETTABLEKS                       R15 R19 K17 ["reason"]
       94 NAMECALL                         R16 R0 K19 ["fail"]
       96 CALL                             R16 3 0
       97 FORGLOOP                         R11 2 ; [-12]
       99 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["bodyAssetMasksRenderer"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["AccurateBoundingBoxRasterUtil"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateMigratePoseBlocking"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 2
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["TORSO_AND_LIMBS"]
       59 GETTABLEKS                       R10 R2 K14 ["UploadCategory"]
       61 GETTABLEKS                       R10 R10 K16 ["DYNAMIC_HEAD"]
       63 SETLIST                          R8 R9 2 [1]
       65 SETTABLEKS                       R8 R7 K17 ["categories"]
       67 NEWTABLE                         R8 0 2
       69 GETTABLEKS                       R9 R2 K18 ["SharedDataMember"]
       71 GETTABLEKS                       R9 R9 K19 ["rootInstance"]
       73 GETTABLEKS                       R10 R2 K18 ["SharedDataMember"]
       75 GETTABLEKS                       R10 R10 K20 ["renderMeshesData"]
       77 SETLIST                          R8 R9 2 [1]
       79 SETTABLEKS                       R8 R7 K21 ["requiredData"]
       81 SETTABLEKS                       R6 R7 K22 ["fflag"]
       83 NEWTABLE                         R8 0 0
       85 SETTABLEKS                       R8 R7 K23 ["expectedFailures"]
       87 DUPCLOSURE                       R8 K24 [PROTO_0]
       88 DUPCLOSURE                       R9 K25 [PROTO_1]
       89 DUPCLOSURE                       R10 K26 [PROTO_2]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R10 R7 K27 ["run"]
       97 RETURN                           R7 1
