PROTO_0:
        0 LOADK                            R6 K0 ["Model"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 -1 0
        8 GETTABLE                         R3 R1 R2
        9 JUMPIFNOTEQKNIL                  R3 ; [+4]
       11 NEWTABLE                         R4 0 0
       13 RETURN                           R4 1
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R5 R8 K4 ["UGC_BODY_PARTS"]
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 MOVE                             R12 R9
       23 NAMECALL                         R10 R0 K5 ["FindFirstChild"]
       25 CALL                             R10 2 1
       26 JUMPIFEQKNIL                     R10 ; [+39]
       28 GETUPVAL                         R13 0
       29 GETTABLEKS                       R12 R13 K6 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       31 GETTABLE                         R11 R12 R9
       32 JUMPIFNOTEQKNIL                  R11 ; [+2]
       34 LOADB                            R13 0 +1
       35 LOADB                            R13 1
       36 FASTCALL2K                       ASSERT R13 K7 ; [+4]
       38 LOADK                            R14 K7 ["Body part doesn't map to an asset type"]
       39 GETIMPORT                        R12 K3 [assert]
       41 CALL                             R12 2 0
       42 GETTABLEKS                       R13 R3 K8 ["allowedAssetTypeSettings"]
       44 GETTABLEKS                       R14 R11 K9 ["Name"]
       46 GETTABLE                         R12 R13 R14
       47 JUMPIFEQKNIL                     R12 ; [+18]
       49 GETTABLE                         R12 R4 R11
       50 JUMPIFNOTEQKNIL                  R12 ; [+8]
       52 NEWTABLE                         R12 0 1
       54 MOVE                             R13 R10
       55 SETLIST                          R12 R13 1 [1]
       57 SETTABLE                         R12 R4 R11
       58 JUMP                             ; [+7]
       59 GETTABLE                         R13 R4 R11
       60 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       62 MOVE                             R14 R10
       63 GETIMPORT                        R12 K12 [table.insert]
       65 CALL                             R12 2 0
       66 FORGLOOP                         R5 2 ; [-45]
       68 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R7 K0 ["Model"]
        1 NAMECALL                         R5 R0 K1 ["IsA"]
        3 CALL                             R5 2 1
        4 FASTCALL2K                       ASSERT R5 K2 ; [+4]
        6 LOADK                            R6 K2 ["Invalid root instance, must be a model"]
        7 GETIMPORT                        R4 K4 [assert]
        9 CALL                             R4 2 0
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 CALL                             R4 3 1
       15 NEWTABLE                         R5 0 0
       17 MOVE                             R6 R4
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 GETIMPORT                        R12 K7 [table.find]
       23 GETUPVAL                         R14 1
       24 GETTABLEKS                       R13 R14 K8 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
       26 MOVE                             R14 R9
       27 CALL                             R12 2 1
       28 JUMPIFEQKNIL                     R12 ; [+2]
       30 LOADB                            R11 0 +1
       31 LOADB                            R11 1
       32 JUMPIF                           R11 ; [+2]
       33 SETTABLE                         R10 R5 R9
       34 JUMP                             ; [+61]
       35 GETIMPORT                        R12 K11 [Instance.new]
       37 LOADK                            R13 K12 ["Folder"]
       38 CALL                             R12 1 1
       39 GETUPVAL                         R15 1
       40 GETTABLEKS                       R14 R15 K13 ["FOLDER_NAMES"]
       42 GETTABLEKS                       R13 R14 K14 ["R15ArtistIntent"]
       44 SETTABLEKS                       R13 R12 K15 ["Name"]
       46 MOVE                             R13 R10
       47 LOADNIL                          R14
       48 LOADNIL                          R15
       49 FORGPREP                         R13
       50 SETTABLEKS                       R12 R17 K16 ["Parent"]
       52 FORGLOOP                         R13 2 ; [-3]
       54 NEWTABLE                         R13 0 1
       56 MOVE                             R14 R12
       57 SETLIST                          R13 R14 1 [1]
       59 SETTABLE                         R13 R5 R9
       60 JUMPIFNOT                        R3 ; [+35]
       61 NAMECALL                         R13 R12 K17 ["Clone"]
       63 CALL                             R13 1 1
       64 GETUPVAL                         R16 1
       65 GETTABLEKS                       R15 R16 K13 ["FOLDER_NAMES"]
       67 GETTABLEKS                       R14 R15 K18 ["R15Fixed"]
       69 SETTABLEKS                       R14 R13 K15 ["Name"]
       71 GETTABLE                         R15 R5 R9
       72 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
       74 MOVE                             R16 R13
       75 GETIMPORT                        R14 K20 [table.insert]
       77 CALL                             R14 2 0
       78 GETIMPORT                        R14 K11 [Instance.new]
       80 LOADK                            R15 K12 ["Folder"]
       81 CALL                             R14 1 1
       82 GETUPVAL                         R17 1
       83 GETTABLEKS                       R16 R17 K13 ["FOLDER_NAMES"]
       85 GETTABLEKS                       R15 R16 K21 ["R6"]
       87 SETTABLEKS                       R15 R14 K15 ["Name"]
       89 GETTABLE                         R16 R5 R9
       90 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       92 MOVE                             R17 R14
       93 GETIMPORT                        R15 K20 [table.insert]
       95 CALL                             R15 2 0
       96 FORGLOOP                         R6 2 ; [-76]
       98 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["BundlesMetadata"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 DUPCLOSURE                       R4 K9 [PROTO_1]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 RETURN                           R4 1
