PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["highlightOverLimitLayeredClothing"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["highlightRemovableRigidAccessories"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 LOADNIL                          R2
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["getExistingAvatarPreviewFolder"]
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["removeExistingHighlights"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 JUMPIF                           R0 ; [+1]
       18 RETURN                           R0 0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 JUMPIFNOTEQKS                    R1 K2 ["Clothing"] ; [+10]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K3 ["avatarClothingRules"]
       26 CALL                             R5 0 1
       27 MOVE                             R4 R5
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R2
       31 JUMP                             ; [+12]
       32 JUMPIFNOTEQKS                    R1 K4 ["Accessories"] ; [+10]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K5 ["avatarAccessoryRules"]
       37 CALL                             R5 0 1
       38 MOVE                             R4 R5
       39 NEWCLOSURE                       R3 P1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R2
       42 JUMP                             ; [+1]
       43 RETURN                           R0 0
       44 NEWTABLE                         R5 0 0
       46 JUMPIFNOT                        R4 ; [+8]
       47 GETTABLEKS                       R8 R4 K6 ["Changed"]
       49 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       51 MOVE                             R7 R5
       52 GETIMPORT                        R6 K9 [table.insert]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R6 4
       56 MOVE                             R7 R2
       57 MOVE                             R8 R3
       58 MOVE                             R9 R5
       59 CALL                             R6 3 1
       60 SETUPVAL                         R6 0
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["removalHighlightUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["BridgingFiles"]
       26 GETTABLEKS                       R3 R3 K11 ["AssetDmFiles"]
       28 GETTABLEKS                       R3 R3 K12 ["assetDmUtils"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K6 ["Src"]
       35 GETTABLEKS                       R4 R4 K7 ["Util"]
       37 GETTABLEKS                       R4 R4 K8 ["AvatarPreview"]
       39 GETTABLEKS                       R4 R4 K13 ["previewFolderUtils"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K5 [require]
       44 GETTABLEKS                       R5 R0 K6 ["Src"]
       46 GETTABLEKS                       R5 R5 K7 ["Util"]
       48 GETTABLEKS                       R5 R5 K14 ["AvatarSettingsProviderTypes"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R6 R0 K6 ["Src"]
       55 GETTABLEKS                       R6 R6 K7 ["Util"]
       57 GETTABLEKS                       R6 R6 K8 ["AvatarPreview"]
       59 GETTABLEKS                       R6 R6 K15 ["watchRemovalHighlights"]
       61 CALL                             R5 1 1
       62 LOADNIL                          R6
       63 NEWCLOSURE                       R7 P0
       64 CAPTURE                          REF R6
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CLOSEUPVALS                      R6
       70 RETURN                           R7 1
