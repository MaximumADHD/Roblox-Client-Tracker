PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAvatarPreviewFolder"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["insertToFolder"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findExistingAvatarPreviewFolder"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["cleanupPreview"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["previewActivated"]
        3 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R1 R0 K2 ["OnInvoke"]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["previewDeactivated"]
       15 GETTABLEKS                       R4 R4 K1 ["fromPlugin"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R0 K2 ["OnInvoke"]
       22 CALL                             R2 3 1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K4 ["addOnInvokeConnection"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K4 ["addOnInvokeConnection"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findExistingAvatarPreviewFolder"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["cleanupPreview"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["currentSettingsPage"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R0 K1 ["OnInvoke"]
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["addOnInvokeConnection"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["OnPluginClosed"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R2 R0 K1 ["OnInvoke"]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["addOnInvokeConnection"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K2 ["addOnInvokeConnection"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["showBoundingBoxes"]
       32 DUPCLOSURE                       R7 K5 [PROTO_4]
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 NAMECALL                         R4 R0 K1 ["OnInvoke"]
       38 CALL                             R4 3 1
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 7
       41 MOVE                             R4 R0
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["BridgingFiles"]
       24 GETTABLEKS                       R3 R3 K10 ["AssetDmFiles"]
       26 GETTABLEKS                       R3 R3 K11 ["assetDmConnectionManager"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K7 ["Util"]
       35 GETTABLEKS                       R4 R4 K12 ["AvatarPreview"]
       37 GETTABLEKS                       R4 R4 K13 ["applyRemovalHighlights"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K14 ["Flags"]
       46 GETTABLEKS                       R5 R5 K15 ["getFFlagAvatarSettingsPreviewRemovalHighlight"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K6 ["Src"]
       53 GETTABLEKS                       R6 R6 K7 ["Util"]
       55 GETTABLEKS                       R6 R6 K12 ["AvatarPreview"]
       57 GETTABLEKS                       R6 R6 K16 ["insertDefaultAvatarPreviews"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K6 ["Src"]
       64 GETTABLEKS                       R7 R7 K7 ["Util"]
       66 GETTABLEKS                       R7 R7 K17 ["InvokeKeys"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R8 R0 K6 ["Src"]
       73 GETTABLEKS                       R8 R8 K7 ["Util"]
       75 GETTABLEKS                       R8 R8 K9 ["BridgingFiles"]
       77 GETTABLEKS                       R8 R8 K10 ["AssetDmFiles"]
       79 GETTABLEKS                       R8 R8 K18 ["onCurrentSettingPageChanged"]
       81 CALL                             R7 1 1
       82 GETIMPORT                        R8 K5 [require]
       84 GETTABLEKS                       R9 R0 K6 ["Src"]
       86 GETTABLEKS                       R9 R9 K7 ["Util"]
       88 GETTABLEKS                       R9 R9 K12 ["AvatarPreview"]
       90 GETTABLEKS                       R9 R9 K19 ["previewFolderUtils"]
       92 CALL                             R8 1 1
       93 GETIMPORT                        R9 K5 [require]
       95 GETTABLEKS                       R10 R0 K6 ["Src"]
       97 GETTABLEKS                       R10 R10 K7 ["Util"]
       99 GETTABLEKS                       R10 R10 K12 ["AvatarPreview"]
      101 GETTABLEKS                       R10 R10 K20 ["showBounds"]
      103 CALL                             R9 1 1
      104 DUPCLOSURE                       R10 K21 [PROTO_2]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R11 K22 [PROTO_5]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R10
      118 RETURN                           R11 1
