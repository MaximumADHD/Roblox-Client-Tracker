PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Url"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R0 R0 K2 ["ITEM_CONFIGURATION_URL"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAsyncFullUrl"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["httpGetAsync"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["getItemConfigurationUrl"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 1
        8 CONCAT                           R1 R2 R3
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+14]
        8 GETIMPORT                        R4 K3 [error]
       10 LOADK                            R5 K4 ["Could not load upload permissions (%*): %*"]
       11 MOVE                             R7 R1
       12 FASTCALL1                        TOSTRING R3 ; [+3]
       13 MOVE                             R9 R3
       14 GETIMPORT                        R8 K6 [tostring]
       16 CALL                             R8 1 1
       17 NAMECALL                         R5 R5 K7 ["format"]
       19 CALL                             R5 3 1
       20 LOADN                            R6 0
       21 CALL                             R4 2 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K8 ["JSONDecode"]
       25 GETUPVAL                         R6 1
       26 MOVE                             R7 R3
       27 FASTPCALL                        pcall 3 ; [+2]
       28 GETIMPORT                        R4 K1 [pcall]
       30 CALL                             R4 3 2
       31 JUMPIFNOT                        R4 ; [+7]
       32 FASTCALL1                        TYPEOF R5 ; [+3]
       33 MOVE                             R7 R5
       34 GETIMPORT                        R6 K10 [typeof]
       36 CALL                             R6 1 1
       37 JUMPIFEQKS                       R6 K11 ["table"] ; [+10]
       39 GETIMPORT                        R6 K3 [error]
       41 LOADK                            R7 K12 ["Could not load upload permissions (%*): the response is not a JSON object"]
       42 MOVE                             R9 R1
       43 NAMECALL                         R7 R7 K7 ["format"]
       45 CALL                             R7 2 1
       46 LOADN                            R8 0
       47 CALL                             R6 2 0
       48 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["v1/permissions/groups?action=%*"]
        2 LOADN                            R3 1
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 2 1
        6 LOADK                            R2 K2 ["upload groups"]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 1
       10 DUPTABLE                         R2 K6 [{["creatorType"] = "User", ["id"]}]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K7 ["getUserId"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K5 ["id"]
       17 SETLIST                          R1 R2 1 [1]
       19 GETTABLEKS                       R6 R0 K8 ["allowedGroups"]
       21 FASTCALL1                        TYPEOF R6 ; [+2]
       22 GETIMPORT                        R5 K10 [typeof]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+4]
       27 GETTABLEKS                       R2 R0 K8 ["allowedGroups"]
       29 JUMP                             ; [+2]
       30 NEWTABLE                         R2 0 0
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R6 K5 ["id"]
       37 JUMPIFEQKNIL                     R7 ; [+12]
       39 DUPTABLE                         R9 K13 [{["creatorType"] = "Group", ["id"]}]
       40 GETTABLEKS                       R10 R6 K5 ["id"]
       42 SETTABLEKS                       R10 R9 K5 ["id"]
       44 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       46 MOVE                             R8 R1
       47 GETIMPORT                        R7 K15 [table.insert]
       49 CALL                             R7 2 0
       50 FORGLOOP                         R2 2 ; [-16]
       52 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["v1/permissions/action-allowed-for-item-type?trustedCreatorCheck=true&action=%*&assetType=%*"]
        2 LOADN                            R4 1
        3 GETIMPORT                        R5 K4 [Enum.AssetType.EmoteAnimation]
        5 GETTABLEKS                       R5 R5 K5 ["Value"]
        7 NAMECALL                         R2 R2 K6 ["format"]
        9 CALL                             R2 3 1
       10 LOADK                            R3 K7 ["trusted creator"]
       11 FASTPCALL                        pcall 3 ; [+2]
       12 GETIMPORT                        R0 K9 [pcall]
       14 CALL                             R0 3 2
       15 JUMPIF                           R0 ; [+7]
       16 LOADNIL                          R2
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K11 [tostring]
       21 CALL                             R3 1 1
       22 RETURN                           R2 2
       23 GETTABLEKS                       R3 R1 K12 ["isActionAllowed"]
       25 JUMPIFEQKB                       R3 TRUE ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 LOADNIL                          R3
       30 RETURN                           R2 2

PROTO_8:
        0 DUPTABLE                         R0 K3 [{[1] = , ["isUserInTrustedCreatorProgram"] = }]
        1 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["restrictedUserIds"]
        2 JUMPIF                           R2 ; [+2]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["restrictedUserIds"]
        7 GETTABLEKS                       R3 R1 K1 ["isUserInTrustedCreatorProgram"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+53]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["isTrustedCreatorLookupEnforced"]
       14 CALL                             R4 0 1
       15 JUMPIFNOT                        R4 ; [+47]
       16 GETUPVAL                         R7 2
       17 LOADK                            R8 K3 ["v1/permissions/action-allowed-for-item-type?trustedCreatorCheck=true&action=%*&assetType=%*"]
       18 LOADN                            R10 1
       19 GETIMPORT                        R11 K7 [Enum.AssetType.EmoteAnimation]
       21 GETTABLEKS                       R11 R11 K8 ["Value"]
       23 NAMECALL                         R8 R8 K9 ["format"]
       25 CALL                             R8 3 1
       26 LOADK                            R9 K10 ["trusted creator"]
       27 FASTPCALL                        pcall 3 ; [+2]
       28 GETIMPORT                        R6 K12 [pcall]
       30 CALL                             R6 3 2
       31 JUMPIF                           R6 ; [+8]
       32 LOADNIL                          R4
       33 FASTCALL1                        TOSTRING R7 ; [+3]
       34 MOVE                             R9 R7
       35 GETIMPORT                        R8 K14 [tostring]
       37 CALL                             R8 1 1
       38 MOVE                             R5 R8
       39 JUMP                             ; [+7]
       40 GETTABLEKS                       R8 R7 K15 ["isActionAllowed"]
       42 JUMPIFEQKB                       R8 TRUE ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 LOADNIL                          R5
       47 JUMPIFEQKNIL                     R4 ; [+5]
       49 SETTABLEKS                       R4 R1 K1 ["isUserInTrustedCreatorProgram"]
       51 MOVE                             R3 R4
       52 JUMP                             ; [+10]
       53 GETTABLEKS                       R6 R0 K16 ["requiresTrustedCreatorStatus"]
       55 JUMPIFNOT                        R6 ; [+6]
       56 GETIMPORT                        R6 K18 [error]
       58 MOVE                             R7 R5
       59 LOADN                            R8 0
       60 CALL                             R6 2 0
       61 JUMP                             ; [+1]
       62 LOADB                            R3 0
       63 DUPTABLE                         R4 K26 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"], ["backendConfigs"]}]
       64 GETTABLEKS                       R5 R0 K23 ["intendedBundleType"]
       66 SETTABLEKS                       R5 R4 K23 ["intendedBundleType"]
       68 GETTABLEKS                       R5 R0 K27 ["validatesSingleAssetsInBundle"]
       70 SETTABLEKS                       R5 R4 K24 ["validateSingleAssetsInBundle"]
       72 DUPTABLE                         R5 K30 [{[1], ["isUserInTrustedCreatorProgram"], ["isEmissiveAllowed"] = True}]
       73 SETTABLEKS                       R2 R5 K0 ["restrictedUserIds"]
       75 SETTABLEKS                       R3 R5 K1 ["isUserInTrustedCreatorProgram"]
       77 SETTABLEKS                       R5 R4 K25 ["backendConfigs"]
       79 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpRbxApiService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["StudioService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["Framework"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Src"]
       36 GETTABLEKS                       R6 R6 K15 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["AssetQuality"]
       40 GETTABLEKS                       R6 R6 K17 ["AssetQualityUploadTypes"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R0 K14 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Util"]
       49 GETTABLEKS                       R7 R7 K16 ["AssetQuality"]
       51 GETTABLEKS                       R7 R7 K18 ["Flags"]
       53 GETTABLEKS                       R7 R7 K19 ["getFFlagUGCValidateEmotesBoneUserVerification"]
       55 CALL                             R6 1 1
       56 NEWTABLE                         R7 8 0
       58 DUPCLOSURE                       R8 K20 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R8 R7 K21 ["getItemConfigurationUrl"]
       62 DUPCLOSURE                       R8 K22 [PROTO_1]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R8 R7 K23 ["httpGetAsync"]
       66 DUPCLOSURE                       R8 K24 [PROTO_2]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R8 R7 K25 ["getUserId"]
       70 DUPCLOSURE                       R8 K26 [PROTO_4]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R9 K27 [PROTO_5]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R10 K28 [PROTO_6]
       77 CAPTURE                          VAL R6
       78 SETTABLEKS                       R10 R7 K29 ["isTrustedCreatorLookupEnforced"]
       80 DUPCLOSURE                       R10 K30 [PROTO_7]
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R11 K31 [PROTO_8]
       83 SETTABLEKS                       R11 R7 K32 ["createPermissionContext"]
       85 DUPCLOSURE                       R11 K33 [PROTO_9]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R11 R7 K34 ["build"]
       91 RETURN                           R7 1
