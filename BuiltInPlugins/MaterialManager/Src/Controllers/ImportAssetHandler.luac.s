PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_imageUploader", "_userId"}]
        1 SETTABLEKS                       R0 R3 K0 ["_imageUploader"]
        3 MOVE                             R4 R1
        4 JUMPIF                           R4 ; [+9]
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["StudioService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 NAMECALL                         R4 R4 K7 ["GetUserId"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K1 ["_userId"]
       16 GETUPVAL                         R4 0
       17 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       19 GETIMPORT                        R2 K9 [setmetatable]
       21 CALL                             R2 2 1
       22 GETTABLEKS                       R4 R2 K0 ["_imageUploader"]
       24 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       26 LOADK                            R5 K10 ["ImportAssetHandler expects an ImageUploader"]
       27 GETIMPORT                        R3 K12 [assert]
       29 CALL                             R3 2 0
       30 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetBinaryContents"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+17]
        6 LOADK                            R2 K2 ["Asset id \"%s\" for temp id \"%s\" could not be cast to an integer"]
        7 MOVE                             R4 R0
        8 GETUPVAL                         R5 0
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 3 1
       12 GETIMPORT                        R3 K5 [warn]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 FASTCALL2                        ASSERT R1 R2 ; [+5]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 GETIMPORT                        R3 K7 [assert]
       22 CALL                             R3 2 0
       23 LOADK                            R2 K8 ["rbxassetid://"]
       24 MOVE                             R3 R1
       25 CONCAT                           R0 R2 R3
       26 RETURN                           R0 1

PROTO_4:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["ImportAssetHandler:handleAsset() requires an assetFile"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 JUMPIFNOT                        R2 ; [+3]
        8 MOVE                             R3 R2
        9 LOADB                            R4 1
       10 CALL                             R3 1 0
       11 NAMECALL                         R3 R1 K3 ["GetTemporaryId"]
       13 CALL                             R3 1 1
       14 LOADNIL                          R4
       15 GETIMPORT                        R5 K5 [pcall]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R1
       20 CALL                             R5 1 2
       21 JUMPIF                           R5 ; [+7]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K6 ["reject"]
       25 MOVE                             R8 R6
       26 CALL                             R7 1 -1
       27 CLOSEUPVALS                      R4
       28 RETURN                           R7 -1
       29 GETTABLEKS                       R7 R0 K7 ["_imageUploader"]
       31 MOVE                             R9 R3
       32 GETTABLEKS                       R10 R1 K8 ["Name"]
       34 LOADK                            R11 K9 [""]
       35 MOVE                             R12 R4
       36 NAMECALL                         R7 R7 K10 ["upload"]
       38 CALL                             R7 5 1
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R3
       41 NAMECALL                         R7 R7 K11 ["andThen"]
       43 CALL                             R7 2 -1
       44 CLOSEUPVALS                      R4
       45 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R3 K8 ["ContextItem"]
       20 GETTABLEKS                       R4 R1 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["Promise"]
       24 LOADK                            R6 K11 ["ImportAssetHandler"]
       25 NAMECALL                         R4 R2 K12 ["extend"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R4 K13 ["__index"]
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R5 R4 K15 ["new"]
       34 DUPCLOSURE                       R5 K16 [PROTO_1]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K17 ["mock"]
       38 DUPCLOSURE                       R5 K18 [PROTO_4]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K19 ["handleAsset"]
       42 RETURN                           R4 1
