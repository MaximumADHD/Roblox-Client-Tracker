PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["filename"]
        2 GETTABLEKS                       R4 R1 K0 ["filename"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["PromptImportFilesAsync"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 DUPTABLE                         R10 K3 [{"filename", "content"}]
       12 GETTABLEKS                       R11 R7 K4 ["Name"]
       14 SETTABLEKS                       R11 R10 K1 ["filename"]
       16 GETIMPORT                        R11 K7 [Content.fromUri]
       18 NAMECALL                         R12 R7 K8 ["GetTemporaryId"]
       20 CALL                             R12 1 -1
       21 CALL                             R11 -1 1
       22 SETTABLEKS                       R11 R10 K2 ["content"]
       24 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       26 MOVE                             R9 R2
       27 GETIMPORT                        R8 K11 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-20]
       32 GETIMPORT                        R3 K13 [table.sort]
       34 MOVE                             R4 R2
       35 DUPCLOSURE                       R5 K14 [PROTO_0]
       36 CALL                             R3 2 0
       37 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickAnimatedImageFileWithPromptAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadVersionedAssetFromPathAsync"]
        5 CALL                             R2 3 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+10]
        8 DUPTABLE                         R4 K4 [{["type"] = "error", ["problem"]}]
        9 FASTCALL1                        TOSTRING R3 ; [+3]
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["problem"]
       16 RETURN                           R4 1
       17 DUPTABLE                         R4 K10 [{["type"] = "ok", ["assetId"], ["versionNumber"]}]
       18 GETTABLEKS                       R5 R2 K8 ["assetId"]
       20 SETTABLEKS                       R5 R4 K8 ["assetId"]
       22 GETTABLEKS                       R5 R2 K9 ["versionNumber"]
       24 SETTABLEKS                       R5 R4 K9 ["versionNumber"]
       26 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadVersionedAssetFromContentAsync"]
        5 CALL                             R2 3 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+10]
        8 DUPTABLE                         R4 K4 [{["type"] = "error", ["problem"]}]
        9 FASTCALL1                        TOSTRING R3 ; [+3]
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["problem"]
       16 RETURN                           R4 1
       17 DUPTABLE                         R4 K10 [{["type"] = "ok", ["assetId"], ["versionNumber"]}]
       18 GETTABLEKS                       R5 R2 K8 ["assetId"]
       20 SETTABLEKS                       R5 R4 K8 ["assetId"]
       22 GETTABLEKS                       R5 R2 K9 ["versionNumber"]
       24 SETTABLEKS                       R5 R4 K9 ["versionNumber"]
       26 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetImportService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimatedImageImporter"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K15 [PROTO_1]
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R6 K16 [PROTO_2]
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R7 K17 [PROTO_3]
       38 CAPTURE                          VAL R0
       39 DUPCLOSURE                       R8 K18 [PROTO_4]
       40 CAPTURE                          VAL R0
       41 DUPTABLE                         R9 K23 [{"importSourcesAsync", "pickAnimatedImageFileAsync", "uploadVersionedAssetFromPathAsync", "uploadVersionedAssetFromContentAsync"}]
       42 SETTABLEKS                       R5 R9 K19 ["importSourcesAsync"]
       44 SETTABLEKS                       R6 R9 K20 ["pickAnimatedImageFileAsync"]
       46 SETTABLEKS                       R7 R9 K21 ["uploadVersionedAssetFromPathAsync"]
       48 SETTABLEKS                       R8 R9 K22 ["uploadVersionedAssetFromContentAsync"]
       50 GETTABLEKS                       R10 R3 K24 ["createContext"]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 DUPTABLE                         R11 K26 [{"Context"}]
       55 SETTABLEKS                       R10 R11 K25 ["Context"]
       57 RETURN                           R11 1
