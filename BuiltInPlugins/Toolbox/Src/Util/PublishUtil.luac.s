PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["ThumbnailOrderToChange"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K0 ["ThumbnailOrderToChange"]
       10 LENGTH                           R1 R2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["additionalImages"]
       14 GETTABLEKS                       R2 R3 K2 ["MaxThumbnails"]
       16 JUMPIFLE                         R1 R2 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R9 0
        1 MOVE                             R11 R3
        2 NAMECALL                         R9 R9 K0 ["isOverride"]
        4 CALL                             R9 2 1
        5 JUMPIFNOT                        R9 ; [+5]
        6 MOVE                             R9 R0
        7 JUMPIFNOT                        R9 ; [+2]
        8 GETTABLEKS                       R9 R0 K1 ["OverrideAssetId"]
       10 RETURN                           R9 1
       11 GETUPVAL                         R9 0
       12 MOVE                             R11 R3
       13 NAMECALL                         R9 R9 K2 ["isPermissions"]
       15 CALL                             R9 2 1
       16 JUMPIFNOT                        R9 ; [+24]
       17 MOVE                             R9 R0
       18 JUMPIFNOT                        R9 ; [+8]
       19 GETIMPORT                        R10 K4 [next]
       21 MOVE                             R11 R0
       22 CALL                             R10 1 1
       23 JUMPIFNOTEQKNIL                  R10 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 GETTABLEKS                       R10 R0 K5 ["permissions"]
       29 JUMPIFNOT                        R10 ; [+9]
       30 GETIMPORT                        R11 K4 [next]
       32 GETTABLEKS                       R12 R0 K5 ["permissions"]
       34 CALL                             R11 1 1
       35 JUMPIFNOTEQKNIL                  R11 ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 AND                              R11 R9 R10
       40 RETURN                           R11 1
       41 MOVE                             R9 R0
       42 JUMPIFNOT                        R9 ; [+8]
       43 GETIMPORT                        R10 K4 [next]
       45 MOVE                             R11 R0
       46 CALL                             R10 1 1
       47 JUMPIFNOTEQKNIL                  R10 ; [+2]
       49 LOADB                            R9 0 +1
       50 LOADB                            R9 1
       51 LOADB                            R10 0
       52 LENGTH                           R11 R1
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R12 R13 K6 ["NAME_CHARACTER_LIMIT"]
       56 JUMPIFNOTLE                      R11 R12 ; [+10]
       58 FASTCALL1                        TOSTRING R1 ; [+3]
       59 MOVE                             R12 R1
       60 GETIMPORT                        R11 K8 [tostring]
       62 CALL                             R11 1 1
       63 JUMPIFNOTEQKS                    R11 K9 [""] ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 LENGTH                           R12 R2
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K10 ["DESCRIPTION_CHARACTER_LIMIT"]
       71 JUMPIFLE                         R12 R13 ; [+2]
       73 LOADB                            R11 0 +1
       74 LOADB                            R11 1
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R12 R13 K11 ["isCatalogAsset"]
       78 MOVE                             R13 R5
       79 CALL                             R12 1 1
       80 JUMPIF                           R12 ; [+6]
       81 GETUPVAL                         R13 2
       82 GETTABLEKS                       R12 R13 K12 ["isUGCBundleType"]
       84 MOVE                             R13 R5
       85 CALL                             R12 1 1
       86 JUMPIFNOT                        R12 ; [+12]
       87 MOVE                             R12 R11
       88 JUMPIFNOT                        R12 ; [+9]
       89 FASTCALL1                        TOSTRING R2 ; [+3]
       90 MOVE                             R14 R2
       91 GETIMPORT                        R13 K8 [tostring]
       93 CALL                             R13 1 1
       94 JUMPIFNOTEQKS                    R13 K9 [""] ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 MOVE                             R11 R12
       99 MOVE                             R12 R10
      100 JUMPIFNOT                        R12 ; [+9]
      101 MOVE                             R12 R11
      102 JUMPIFNOT                        R12 ; [+7]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R12 R13 K13 ["isValidAssetMedia"]
      106 MOVE                             R13 R6
      107 CALL                             R12 1 1
      108 JUMPIFNOT                        R12 ; [+1]
      109 MOVE                             R12 R8
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R14 R15 K14 ["FLOW_TYPE"]
      113 GETTABLEKS                       R13 R14 K15 ["UPLOAD_FLOW"]
      115 JUMPIFNOTEQ                      R4 R13 ; [+24]
      117 JUMPIFNOTEQKNIL                  R5 ; [+3]
      119 LOADB                            R12 0
      120 RETURN                           R12 1
      121 GETUPVAL                         R14 2
      122 GETTABLEKS                       R13 R14 K11 ["isCatalogAsset"]
      124 MOVE                             R14 R5
      125 CALL                             R13 1 1
      126 JUMPIF                           R13 ; [+6]
      127 GETUPVAL                         R14 2
      128 GETTABLEKS                       R13 R14 K12 ["isUGCBundleType"]
      130 MOVE                             R14 R5
      131 CALL                             R13 1 1
      132 JUMPIFNOT                        R13 ; [+6]
      133 MOVE                             R13 R12
      134 JUMPIFNOT                        R13 ; [+3]
      135 MOVE                             R13 R7
      136 JUMPIF                           R13 ; [+1]
      137 GETUPVAL                         R13 4
      138 MOVE                             R12 R13
      139 RETURN                           R12 1
      140 AND                              R13 R12 R9
      141 RETURN                           R13 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["SafetyStatus"] ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["RESTRICTION_TYPE"]
        7 GETTABLEKS                       R2 R3 K1 ["SafetyStatus"]
        9 JUMPIFNOTEQ                      R0 R2 ; [+7]
       11 LOADK                            R4 K2 ["AssetConfigCopy"]
       12 LOADK                            R5 K3 ["AssetMayViolateCommunityStandards"]
       13 NAMECALL                         R2 R1 K4 ["getText"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["RESTRICTION_TYPE"]
       20 GETTABLEKS                       R2 R3 K5 ["AssetType"]
       22 JUMPIFNOTEQ                      R0 R2 ; [+7]
       24 LOADK                            R4 K2 ["AssetConfigCopy"]
       25 LOADK                            R5 K6 ["AssetTypeNotAvailable"]
       26 NAMECALL                         R2 R1 K4 ["getText"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K0 ["RESTRICTION_TYPE"]
       33 GETTABLEKS                       R2 R3 K7 ["Authorization"]
       35 JUMPIFNOTEQ                      R0 R2 ; [+7]
       37 LOADK                            R4 K2 ["AssetConfigCopy"]
       38 LOADK                            R5 K8 ["NoPermissionToDistributeAsset"]
       39 NAMECALL                         R2 R1 K4 ["getText"]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["includes"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["RESTRICTION_TYPE"]
       14 GETTABLEKS                       R3 R4 K3 ["SafetyStatus"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["RESTRICTION_TYPE"]
       21 GETTABLEKS                       R1 R2 K3 ["SafetyStatus"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K1 ["includes"]
       27 MOVE                             R2 R0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K2 ["RESTRICTION_TYPE"]
       31 GETTABLEKS                       R3 R4 K4 ["AssetType"]
       33 CALL                             R1 2 1
       34 JUMPIFNOT                        R1 ; [+6]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K2 ["RESTRICTION_TYPE"]
       38 GETTABLEKS                       R1 R2 K4 ["AssetType"]
       40 RETURN                           R1 1
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R1 R2 K1 ["includes"]
       44 MOVE                             R2 R0
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R4 R5 K2 ["RESTRICTION_TYPE"]
       48 GETTABLEKS                       R3 R4 K5 ["Authorization"]
       50 CALL                             R1 2 1
       51 JUMPIFNOT                        R1 ; [+6]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K2 ["RESTRICTION_TYPE"]
       55 GETTABLEKS                       R1 R2 K5 ["Authorization"]
       57 RETURN                           R1 1
       58 LOADNIL                          R1
       59 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Util"]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["AssetConfigConstants"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R8 R0 K3 ["Src"]
       29 GETTABLEKS                       R7 R8 K4 ["Util"]
       31 GETTABLEKS                       R6 R7 K10 ["AssetConfigUtil"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R9 R0 K3 ["Src"]
       38 GETTABLEKS                       R8 R9 K11 ["Types"]
       40 GETTABLEKS                       R7 R8 K12 ["ConfigTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K7 [require]
       45 GETTABLEKS                       R10 R0 K3 ["Src"]
       47 GETTABLEKS                       R9 R10 K11 ["Types"]
       49 GETTABLEKS                       R8 R9 K13 ["AssetMediaTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K7 [require]
       54 GETTABLEKS                       R11 R0 K3 ["Src"]
       56 GETTABLEKS                       R10 R11 K11 ["Types"]
       58 GETTABLEKS                       R9 R10 K14 ["PublishingRequirementsType"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K16 [game]
       63 LOADK                            R11 K17 ["DisableUGCBodyUploadValidation1"]
       64 NAMECALL                         R9 R9 K18 ["GetFastFlag"]
       66 CALL                             R9 2 1
       67 NEWTABLE                         R10 8 0
       69 DUPCLOSURE                       R11 K19 [PROTO_0]
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R11 R10 K20 ["isValidAssetMedia"]
       73 DUPCLOSURE                       R11 K21 [PROTO_1]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R11 R10 K22 ["checkCanSave"]
       81 DUPCLOSURE                       R11 K23 [PROTO_2]
       82 SETTABLEKS                       R11 R10 K24 ["isRestrictionAppealable"]
       84 DUPCLOSURE                       R11 K25 [PROTO_3]
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R11 R10 K26 ["getDisplayTextForRestriction"]
       88 DUPCLOSURE                       R11 K27 [PROTO_4]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R11 R10 K28 ["getRestrictionThatAppliesToAsset"]
       93 RETURN                           R10 1
