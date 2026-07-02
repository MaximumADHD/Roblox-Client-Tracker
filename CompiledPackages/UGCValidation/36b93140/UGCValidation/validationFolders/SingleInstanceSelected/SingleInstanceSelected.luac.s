PROTO_0:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1] = True, ["R15Fixed"] = True, ["R6"] = True}]
        1 NEWTABLE                         R2 0 0
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADK                            R10 K5 ["Folder"]
        8 NAMECALL                         R8 R7 K6 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+7]
       12 GETTABLEKS                       R9 R7 K7 ["Name"]
       14 GETTABLE                         R8 R1 R9
       15 JUMPIFNOT                        R8 ; [+3]
       16 GETTABLEKS                       R8 R7 K7 ["Name"]
       18 SETTABLE                         R7 R2 R8
       19 FORGLOOP                         R3 2 ; [-13]
       21 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["entrypointInput"]
        2 GETTABLEKS                       R3 R1 K1 ["consumerConfig"]
        4 GETTABLEKS                       R4 R1 K2 ["uploadEnum"]
        6 GETTABLEKS                       R4 R4 K3 ["assetType"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["AssetUploadsWithFolderStructure"]
       11 GETTABLE                         R5 R6 R4
       12 JUMPIFNOT                        R5 ; [+51]
       13 GETTABLEKS                       R5 R3 K5 ["enforceR15FolderStructure"]
       15 JUMPIFNOT                        R5 ; [+48]
       16 LENGTH                           R5 R2
       17 JUMPIFEQKN                       R5 K6 [3] ; [+10]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K7 ["Keys"]
       22 GETTABLEKS                       R7 R7 K8 ["FolderStructureMismatch"]
       24 NAMECALL                         R5 R0 K9 ["fail"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R2
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R5 K10 ["R15ArtistIntent"]
       33 JUMPIFNOT                        R6 ; [+20]
       34 GETTABLEKS                       R6 R5 K11 ["R15Fixed"]
       36 JUMPIFNOT                        R6 ; [+17]
       37 GETTABLEKS                       R6 R5 K12 ["R6"]
       39 JUMPIFNOT                        R6 ; [+14]
       40 GETTABLEKS                       R7 R5 K12 ["R6"]
       42 NAMECALL                         R7 R7 K13 ["GetChildren"]
       44 CALL                             R7 1 1
       45 LENGTH                           R6 R7
       46 JUMPIFNOTEQKN                    R6 K14 [0] ; [+7]
       48 GETTABLEKS                       R7 R5 K10 ["R15ArtistIntent"]
       50 GETTABLEKS                       R8 R5 K11 ["R15Fixed"]
       52 LOADB                            R6 1
       53 JUMPIF                           R6 ; [+21]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K7 ["Keys"]
       57 GETTABLEKS                       R8 R8 K8 ["FolderStructureMismatch"]
       59 NAMECALL                         R6 R0 K9 ["fail"]
       61 CALL                             R6 2 0
       62 RETURN                           R0 0
       63 RETURN                           R0 0
       64 LENGTH                           R5 R2
       65 JUMPIFEQKN                       R5 K15 [1] ; [+9]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K7 ["Keys"]
       70 GETTABLEKS                       R7 R7 K16 ["SelectionCountNotOne"]
       72 NAMECALL                         R5 R0 K9 ["fail"]
       74 CALL                             R5 2 0
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       27 GETTABLEKS                       R5 R5 K9 ["ValidationEnums"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K8 ["validationSystem"]
       34 GETTABLEKS                       R6 R6 K10 ["ErrorSourceStrings"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R1 K11 ["AllAssetUploadCategories"]
       39 SETTABLEKS                       R6 R3 K12 ["categories"]
       41 NEWTABLE                         R6 0 3
       43 GETTABLEKS                       R7 R4 K13 ["SharedDataMember"]
       45 GETTABLEKS                       R7 R7 K14 ["entrypointInput"]
       47 GETTABLEKS                       R8 R4 K13 ["SharedDataMember"]
       49 GETTABLEKS                       R8 R8 K15 ["consumerConfig"]
       51 GETTABLEKS                       R9 R4 K13 ["SharedDataMember"]
       53 GETTABLEKS                       R9 R9 K16 ["uploadEnum"]
       55 SETLIST                          R6 R7 3 [1]
       57 SETTABLEKS                       R6 R3 K17 ["requiredData"]
       59 DUPCLOSURE                       R6 K18 [PROTO_0]
       60 DUPCLOSURE                       R7 K19 [PROTO_1]
       61 DUPCLOSURE                       R8 K20 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R8 R3 K21 ["run"]
       67 RETURN                           R3 1
