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
       51 LOADB                            R10 1
       52 LOADB                            R11 1
       53 GETUPVAL                         R12 1
       54 CALL                             R12 0 1
       55 JUMPIFNOT                        R12 ; [+56]
       56 FASTCALL1                        TOSTRING R1 ; [+3]
       57 MOVE                             R13 R1
       58 GETIMPORT                        R12 K7 [tostring]
       60 CALL                             R12 1 1
       61 FASTCALL1                        TOSTRING R2 ; [+3]
       62 MOVE                             R14 R2
       63 GETIMPORT                        R13 K7 [tostring]
       65 CALL                             R13 1 1
       66 LOADB                            R14 0
       67 GETIMPORT                        R15 K10 [utf8.len]
       69 MOVE                             R16 R12
       70 CALL                             R15 1 1
       71 GETUPVAL                         R17 2
       72 GETTABLEKS                       R16 R17 K11 ["NAME_CHARACTER_LIMIT"]
       74 JUMPIFNOTLE                      R15 R16 ; [+5]
       76 JUMPIFNOTEQKS                    R12 K12 [""] ; [+2]
       78 LOADB                            R14 0 +1
       79 LOADB                            R14 1
       80 MOVE                             R10 R14
       81 GETIMPORT                        R14 K10 [utf8.len]
       83 MOVE                             R15 R13
       84 CALL                             R14 1 1
       85 GETUPVAL                         R16 2
       86 GETTABLEKS                       R15 R16 K13 ["DESCRIPTION_CHARACTER_LIMIT"]
       88 JUMPIFLE                         R14 R15 ; [+2]
       90 LOADB                            R11 0 +1
       91 LOADB                            R11 1
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R14 R15 K14 ["isCatalogAsset"]
       95 MOVE                             R15 R5
       96 CALL                             R14 1 1
       97 JUMPIF                           R14 ; [+6]
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R14 R15 K15 ["isUGCBundleType"]
      101 MOVE                             R15 R5
      102 CALL                             R14 1 1
      103 JUMPIFNOT                        R14 ; [+57]
      104 MOVE                             R14 R11
      105 JUMPIFNOT                        R14 ; [+4]
      106 JUMPIFNOTEQKS                    R13 K12 [""] ; [+2]
      108 LOADB                            R14 0 +1
      109 LOADB                            R14 1
      110 MOVE                             R11 R14
      111 JUMP                             ; [+49]
      112 LOADB                            R12 0
      113 LENGTH                           R13 R1
      114 GETUPVAL                         R15 2
      115 GETTABLEKS                       R14 R15 K11 ["NAME_CHARACTER_LIMIT"]
      117 JUMPIFNOTLE                      R13 R14 ; [+10]
      119 FASTCALL1                        TOSTRING R1 ; [+3]
      120 MOVE                             R14 R1
      121 GETIMPORT                        R13 K7 [tostring]
      123 CALL                             R13 1 1
      124 JUMPIFNOTEQKS                    R13 K12 [""] ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 MOVE                             R10 R12
      129 LENGTH                           R12 R2
      130 GETUPVAL                         R14 2
      131 GETTABLEKS                       R13 R14 K13 ["DESCRIPTION_CHARACTER_LIMIT"]
      133 JUMPIFLE                         R12 R13 ; [+2]
      135 LOADB                            R11 0 +1
      136 LOADB                            R11 1
      137 GETUPVAL                         R13 3
      138 GETTABLEKS                       R12 R13 K14 ["isCatalogAsset"]
      140 MOVE                             R13 R5
      141 CALL                             R12 1 1
      142 JUMPIF                           R12 ; [+6]
      143 GETUPVAL                         R13 3
      144 GETTABLEKS                       R12 R13 K15 ["isUGCBundleType"]
      146 MOVE                             R13 R5
      147 CALL                             R12 1 1
      148 JUMPIFNOT                        R12 ; [+12]
      149 MOVE                             R12 R11
      150 JUMPIFNOT                        R12 ; [+9]
      151 FASTCALL1                        TOSTRING R2 ; [+3]
      152 MOVE                             R14 R2
      153 GETIMPORT                        R13 K7 [tostring]
      155 CALL                             R13 1 1
      156 JUMPIFNOTEQKS                    R13 K12 [""] ; [+2]
      158 LOADB                            R12 0 +1
      159 LOADB                            R12 1
      160 MOVE                             R11 R12
      161 MOVE                             R12 R10
      162 JUMPIFNOT                        R12 ; [+9]
      163 MOVE                             R12 R11
      164 JUMPIFNOT                        R12 ; [+7]
      165 GETUPVAL                         R13 4
      166 GETTABLEKS                       R12 R13 K16 ["isValidAssetMedia"]
      168 MOVE                             R13 R6
      169 CALL                             R12 1 1
      170 JUMPIFNOT                        R12 ; [+1]
      171 MOVE                             R12 R8
      172 GETUPVAL                         R15 2
      173 GETTABLEKS                       R14 R15 K17 ["FLOW_TYPE"]
      175 GETTABLEKS                       R13 R14 K18 ["UPLOAD_FLOW"]
      177 JUMPIFNOTEQ                      R4 R13 ; [+24]
      179 JUMPIFNOTEQKNIL                  R5 ; [+3]
      181 LOADB                            R12 0
      182 RETURN                           R12 1
      183 GETUPVAL                         R14 3
      184 GETTABLEKS                       R13 R14 K14 ["isCatalogAsset"]
      186 MOVE                             R14 R5
      187 CALL                             R13 1 1
      188 JUMPIF                           R13 ; [+6]
      189 GETUPVAL                         R14 3
      190 GETTABLEKS                       R13 R14 K15 ["isUGCBundleType"]
      192 MOVE                             R14 R5
      193 CALL                             R13 1 1
      194 JUMPIFNOT                        R13 ; [+6]
      195 MOVE                             R13 R12
      196 JUMPIFNOT                        R13 ; [+3]
      197 MOVE                             R13 R7
      198 JUMPIF                           R13 ; [+1]
      199 GETUPVAL                         R13 5
      200 MOVE                             R12 R13
      201 RETURN                           R12 1
      202 AND                              R13 R12 R9
      203 RETURN                           R13 1

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
       67 GETIMPORT                        R10 K7 [require]
       69 GETTABLEKS                       R13 R0 K3 ["Src"]
       71 GETTABLEKS                       R12 R13 K19 ["Flags"]
       73 GETTABLEKS                       R11 R12 K20 ["getFFlagToolboxFixDescriptionCharCnt"]
       75 CALL                             R10 1 1
       76 NEWTABLE                         R11 8 0
       78 DUPCLOSURE                       R12 K21 [PROTO_0]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R12 R11 K22 ["isValidAssetMedia"]
       82 DUPCLOSURE                       R12 K23 [PROTO_1]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R12 R11 K24 ["checkCanSave"]
       91 DUPCLOSURE                       R12 K25 [PROTO_2]
       92 SETTABLEKS                       R12 R11 K26 ["isRestrictionAppealable"]
       94 DUPCLOSURE                       R12 K27 [PROTO_3]
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R12 R11 K28 ["getDisplayTextForRestriction"]
       98 DUPCLOSURE                       R12 K29 [PROTO_4]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R12 R11 K30 ["getRestrictionThatAppliesToAsset"]
      103 RETURN                           R11 1
