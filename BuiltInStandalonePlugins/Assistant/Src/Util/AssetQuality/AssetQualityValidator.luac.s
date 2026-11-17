PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1] = False, ["results"], ["error"]}]
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K2 ["results"]
        7 SETTABLEKS                       R0 R2 K3 ["error"]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K8 [{[1] = , ["pass"] = False, ["validationJobId"] = , ["failureMap"], ["warningMap"], ["relevantSourceStrings"]}]
        1 SETTABLEKS                       R0 R1 K5 ["failureMap"]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K6 ["warningMap"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K9 ["getRelevantSourceStrings"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K7 ["relevantSourceStrings"]
       14 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["validatorName"]
        2 GETTABLEKS                       R4 R1 K0 ["validatorName"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 JUMPIFEQKS                       R6 K3 ["PASS"] ; [+22]
       17 DUPTABLE                         R9 K6 [{"validatorName", "state"}]
       18 FASTCALL1                        TOSTRING R5 ; [+3]
       19 MOVE                             R11 R5
       20 GETIMPORT                        R10 K8 [tostring]
       22 CALL                             R10 1 1
       23 SETTABLEKS                       R10 R9 K4 ["validatorName"]
       25 FASTCALL1                        TOSTRING R6 ; [+3]
       26 MOVE                             R11 R6
       27 GETIMPORT                        R10 K8 [tostring]
       29 CALL                             R10 1 1
       30 SETTABLEKS                       R10 R9 K5 ["state"]
       32 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       34 MOVE                             R8 R1
       35 GETIMPORT                        R7 K10 [table.insert]
       37 CALL                             R7 2 0
       38 FORGLOOP                         R2 2 ; [-24]
       40 LENGTH                           R2 R1
       41 JUMPIFNOTEQKN                    R2 K11 [0] ; [+3]
       43 LOADNIL                          R2
       44 RETURN                           R2 1
       45 GETIMPORT                        R2 K13 [table.sort]
       47 MOVE                             R3 R1
       48 DUPCLOSURE                       R4 K14 [PROTO_2]
       49 CALL                             R2 2 0
       50 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETIMPORT                        R2 K4 [next]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFEQKNIL                     R2 ; [+3]
       13 MOVE                             R1 R0
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["validationData"]
        2 DUPTABLE                         R2 K9 [{"assetType", "pass", "validationJobId", "failureMap", "warningMap", "ranIntoInternalError", "nonPassingValidators", "relevantSourceStrings"}]
        3 GETTABLEKS                       R4 R0 K1 ["assetType"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEKS                       R3 R0 K1 ["assetType"]
        8 GETTABLEKS                       R3 R3 K10 ["Name"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K1 ["assetType"]
       14 GETTABLEKS                       R4 R1 K2 ["pass"]
       16 JUMPIFEQKB                       R4 TRUE ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K2 ["pass"]
       22 GETTABLEKS                       R3 R1 K3 ["validationJobId"]
       24 SETTABLEKS                       R3 R2 K3 ["validationJobId"]
       26 GETTABLEKS                       R3 R1 K4 ["failureMap"]
       28 SETTABLEKS                       R3 R2 K4 ["failureMap"]
       30 GETTABLEKS                       R3 R1 K5 ["warningMap"]
       32 SETTABLEKS                       R3 R2 K5 ["warningMap"]
       34 GETTABLEKS                       R5 R1 K6 ["ranIntoInternalError"]
       36 FASTCALL1                        TYPEOF R5 ; [+2]
       37 GETIMPORT                        R4 K12 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K13 ["boolean"] ; [+4]
       42 GETTABLEKS                       R3 R1 K6 ["ranIntoInternalError"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K6 ["ranIntoInternalError"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R4 R1 K14 ["states"]
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K7 ["nonPassingValidators"]
       54 GETTABLEKS                       R4 R1 K8 ["relevantSourceStrings"]
       56 FASTCALL1                        TYPEOF R4 ; [+3]
       57 MOVE                             R6 R4
       58 GETIMPORT                        R5 K12 [typeof]
       60 CALL                             R5 1 1
       61 JUMPIFNOTEQKS                    R5 K15 ["table"] ; [+9]
       63 GETIMPORT                        R5 K17 [next]
       65 MOVE                             R6 R4
       66 CALL                             R5 1 1
       67 JUMPIFEQKNIL                     R5 ; [+3]
       69 MOVE                             R3 R4
       70 JUMP                             ; [+1]
       71 LOADNIL                          R3
       72 SETTABLEKS                       R3 R2 K8 ["relevantSourceStrings"]
       74 RETURN                           R2 1

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R0 K3 ["error"]
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETTABLEKS                       R2 R0 K3 ["error"]
       13 FASTCALL1                        TOSTRING R2 ; [+2]
       14 GETIMPORT                        R1 K5 [tostring]
       16 CALL                             R1 1 1
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K5 [tostring]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetch"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["await"]
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+31]
        8 GETIMPORT                        R2 K3 [error]
       10 LOADK                            R3 K4 ["Failed to fetch bundle metadata: %*"]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R7 R1
       13 GETIMPORT                        R6 K6 [typeof]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+12]
       18 GETTABLEKS                       R6 R1 K2 ["error"]
       20 JUMPIFEQKNIL                     R6 ; [+8]
       22 GETTABLEKS                       R6 R1 K2 ["error"]
       24 FASTCALL1                        TOSTRING R6 ; [+2]
       25 GETIMPORT                        R5 K9 [tostring]
       27 CALL                             R5 1 1
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R6 R1
       31 GETIMPORT                        R5 K9 [tostring]
       33 CALL                             R5 1 1
       34 NAMECALL                         R3 R3 K10 ["format"]
       36 CALL                             R3 2 1
       37 LOADN                            R4 0
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R1 K11 ["isBundlesControllerEnabled"]
       41 JUMPIF                           R2 ; [+5]
       42 GETIMPORT                        R2 K3 [error]
       44 LOADK                            R3 K12 ["Bundle uploads are not enabled for this user (isBundlesControllerEnabled is false)"]
       45 LOADN                            R4 0
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R2 R1 K13 ["allowedBundleTypeSettings"]
       49 JUMPIF                           R2 ; [+2]
       50 NEWTABLE                         R2 0 0
       52 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R2 K0 ["bundleChecks"]
        2 JUMPIFNOTEQKS                    R4 K1 ["Body"] ; [+11]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["checkBodyBundle"]
        7 MOVE                             R5 R0
        8 GETTABLEKS                       R6 R1 K3 ["getAssetTypes"]
       10 CALL                             R6 0 1
       11 MOVE                             R7 R3
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1
       14 GETTABLEKS                       R4 R2 K0 ["bundleChecks"]
       16 JUMPIFNOTEQKS                    R4 K4 ["RequiredPieces"] ; [+10]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["checkDynamicHeadBundle"]
       21 GETTABLEKS                       R5 R1 K3 ["getAssetTypes"]
       23 CALL                             R5 0 1
       24 MOVE                             R6 R3
       25 CALL                             R4 2 -1
       26 RETURN                           R4 -1
       27 NEWTABLE                         R4 0 0
       29 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 CALL                             R5 4 1
        6 GETIMPORT                        R7 K1 [next]
        8 MOVE                             R8 R5
        9 CALL                             R7 1 1
       10 JUMPIFEQKNIL                     R7 ; [+9]
       12 NEWTABLE                         R6 0 1
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R5
       16 CALL                             R7 1 1
       17 SETLIST                          R6 R7 1 [1]
       19 JUMP                             ; [+2]
       20 NEWTABLE                         R6 0 0
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K2 ["fetch"]
       25 GETTABLEKS                       R9 R1 K3 ["inputs"]
       27 MOVE                             R10 R4
       28 FASTPCALL                        pcall 3 ; [+2]
       29 GETIMPORT                        R7 K5 [pcall]
       31 CALL                             R7 3 2
       32 JUMPIF                           R7 ; [+25]
       33 MOVE                             R9 R6
       34 FASTCALL1                        TYPEOF R8 ; [+3]
       35 MOVE                             R12 R8
       36 GETIMPORT                        R11 K7 [typeof]
       38 CALL                             R11 1 1
       39 JUMPIFNOTEQKS                    R11 K8 ["table"] ; [+12]
       41 GETTABLEKS                       R11 R8 K9 ["error"]
       43 JUMPIFEQKNIL                     R11 ; [+8]
       45 GETTABLEKS                       R11 R8 K9 ["error"]
       47 FASTCALL1                        TOSTRING R11 ; [+2]
       48 GETIMPORT                        R10 K11 [tostring]
       50 CALL                             R10 1 1
       51 RETURN                           R9 2
       52 FASTCALL1                        TOSTRING R8 ; [+3]
       53 MOVE                             R11 R8
       54 GETIMPORT                        R10 K11 [tostring]
       56 CALL                             R10 1 1
       57 RETURN                           R9 2
       58 GETTABLEKS                       R10 R4 K12 ["validateSingleAssetsInBundle"]
       60 JUMPIF                           R10 ; [+2]
       61 LOADN                            R9 1
       62 JUMP                             ; [+14]
       63 GETTABLEKS                       R11 R1 K3 ["inputs"]
       65 LENGTH                           R10 R11
       66 LOADN                            R11 1
       67 JUMPIFNOTLT                      R11 R10 ; [+6]
       69 GETTABLEKS                       R11 R1 K3 ["inputs"]
       71 LENGTH                           R10 R11
       72 ADDK                             R9 R10 K13 [1]
       73 JUMP                             ; [+3]
       74 GETTABLEKS                       R10 R1 K3 ["inputs"]
       76 LENGTH                           R9 R10
       77 LENGTH                           R10 R8
       78 JUMPIFNOTLT                      R10 R9 ; [+11]
       80 MOVE                             R10 R6
       81 LOADK                            R11 K14 ["AssetQualityService returned %* results for %* inputs"]
       82 LENGTH                           R13 R8
       83 GETTABLEKS                       R15 R1 K3 ["inputs"]
       85 LENGTH                           R14 R15
       86 NAMECALL                         R11 R11 K15 ["format"]
       88 CALL                             R11 3 1
       89 RETURN                           R10 2
       90 NEWTABLE                         R10 0 0
       92 MOVE                             R11 R8
       93 LOADNIL                          R12
       94 LOADNIL                          R13
       95 FORGPREP                         R11
       96 GETUPVAL                         R18 3
       97 MOVE                             R19 R15
       98 CALL                             R18 1 1
       99 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
      101 MOVE                             R17 R10
      102 GETIMPORT                        R16 K17 [table.insert]
      104 CALL                             R16 2 0
      105 FORGLOOP                         R11 2 ; [-10]
      107 GETIMPORT                        R11 K19 [table.move]
      109 MOVE                             R12 R6
      110 LOADN                            R13 1
      111 LENGTH                           R14 R6
      112 LENGTH                           R16 R10
      113 ADDK                             R15 R16 K13 [1]
      114 MOVE                             R16 R10
      115 CALL                             R11 5 0
      116 MOVE                             R11 R10
      117 LOADNIL                          R12
      118 RETURN                           R11 2

PROTO_10:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 FASTPCALL                        pcall 6 ; [+2]
        7 GETIMPORT                        R5 K1 [pcall]
        9 CALL                             R5 6 3
       10 GETTABLEKS                       R8 R1 K2 ["destroy"]
       12 CALL                             R8 0 0
       13 JUMPIF                           R5 ; [+5]
       14 GETIMPORT                        R8 K4 [error]
       16 MOVE                             R9 R6
       17 LOADN                            R10 0
       18 CALL                             R8 2 0
       19 RETURN                           R6 2

PROTO_11:
        0 LOADNIL                          R3
        1 NEWTABLE                         R4 0 0
        3 GETTABLEKS                       R5 R1 K0 ["bundleMetadataName"]
        5 JUMPIFEQKNIL                     R5 ; [+16]
        7 GETUPVAL                         R5 0
        8 CALL                             R5 0 1
        9 MOVE                             R3 R5
       10 GETTABLEKS                       R5 R1 K1 ["bundleChecks"]
       12 JUMPIFEQKS                       R5 K2 ["None"] ; [+9]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["getAllowedAssetTypeSettings"]
       17 MOVE                             R6 R3
       18 GETTABLEKS                       R7 R1 K0 ["bundleMetadataName"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["build"]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["createUploadInputs"]
       31 MOVE                             R7 R0
       32 MOVE                             R8 R1
       33 MOVE                             R9 R3
       34 CALL                             R6 3 1
       35 GETUPVAL                         R7 4
       36 MOVE                             R8 R0
       37 MOVE                             R9 R6
       38 MOVE                             R10 R1
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 CALL                             R7 5 -1
       42 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createAnimationPackProfile"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["build"]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["createPartInputs"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 3
       16 MOVE                             R7 R0
       17 MOVE                             R8 R5
       18 MOVE                             R9 R3
       19 NEWTABLE                         R10 0 0
       21 MOVE                             R11 R4
       22 CALL                             R6 5 -1
       23 RETURN                           R6 -1

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+2]
        1 MOVE                             R4 R3
        2 JUMP                             ; [+23]
        3 FASTCALL1                        TYPEOF R2 ; [+3]
        4 MOVE                             R6 R2
        5 GETIMPORT                        R5 K1 [typeof]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+12]
       10 GETTABLEKS                       R5 R2 K3 ["error"]
       12 JUMPIFEQKNIL                     R5 ; [+8]
       14 GETTABLEKS                       R5 R2 K3 ["error"]
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K5 [tostring]
       19 CALL                             R4 1 1
       20 JUMP                             ; [+5]
       21 FASTCALL1                        TOSTRING R2 ; [+3]
       22 MOVE                             R5 R2
       23 GETIMPORT                        R4 K5 [tostring]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R1 ; [+10]
       27 GETIMPORT                        R5 K7 [table.move]
       29 MOVE                             R6 R2
       30 LOADN                            R7 1
       31 LENGTH                           R8 R2
       32 GETUPVAL                         R11 0
       33 LENGTH                           R10 R11
       34 ADDK                             R9 R10 K8 [1]
       35 GETUPVAL                         R10 0
       36 CALL                             R5 5 0
       37 JUMPIFEQKNIL                     R4 ; [+13]
       39 GETUPVAL                         R6 1
       40 LOADK                            R7 K9 ["%*: %*"]
       41 MOVE                             R9 R0
       42 MOVE                             R10 R4
       43 NAMECALL                         R7 R7 K10 ["format"]
       45 CALL                             R7 3 1
       46 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       48 GETIMPORT                        R5 K12 [table.insert]
       50 CALL                             R5 2 0
       51 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+7]
        5 GETIMPORT                        R0 K2 [table.concat]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K3 ["; "]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1
       11 LOADNIL                          R0
       12 RETURN                           R0 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"results", "add", "getError"}]
        5 SETTABLEKS                       R0 R2 K0 ["results"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K1 ["add"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R3 R2 K2 ["getError"]
       16 RETURN                           R2 1

PROTO_16:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K0 ["createSingleAssetProfile"]
        7 GETTABLEKS                       R9 R7 K1 ["assetType"]
        9 CALL                             R8 1 1
       10 GETTABLEKS                       R9 R1 K2 ["add"]
       12 GETTABLEKS                       R10 R7 K1 ["assetType"]
       14 GETTABLEKS                       R10 R10 K3 ["Name"]
       16 GETUPVAL                         R12 1
       17 GETTABLEKS                       R13 R7 K4 ["instance"]
       19 MOVE                             R14 R8
       20 MOVE                             R15 R2
       21 FASTPCALL                        pcall 4 ; [+2]
       22 GETIMPORT                        R11 K6 [pcall]
       24 CALL                             R11 4 -1
       25 CALL                             R9 -1 0
       26 FORGLOOP                         R3 2 ; [-23]
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["findShoeParts"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R4 R1
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K1 ["createPermissionContext"]
       12 CALL                             R5 0 -1
       13 CALL                             R2 -1 0
       14 GETTABLEKS                       R2 R1 K2 ["results"]
       16 GETTABLEKS                       R3 R1 K3 ["getError"]
       18 CALL                             R3 0 -1
       19 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findAnimationParts"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K1 ["createPermissionContext"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 4
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 CALL                             R4 3 0
       18 LENGTH                           R4 R1
       19 LOADN                            R5 1
       20 JUMPIFNOTLT                      R5 R4 ; [+13]
       22 GETTABLEKS                       R4 R2 K2 ["add"]
       24 LOADK                            R5 K3 ["AvatarAnimations pack"]
       25 GETUPVAL                         R7 5
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 MOVE                             R10 R3
       29 FASTPCALL                        pcall 4 ; [+2]
       30 GETIMPORT                        R6 K5 [pcall]
       32 CALL                             R6 4 -1
       33 CALL                             R4 -1 0
       34 GETTABLEKS                       R4 R2 K6 ["results"]
       36 GETTABLEKS                       R5 R2 K7 ["getError"]
       38 CALL                             R5 0 -1
       39 RETURN                           R4 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["instance"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["Instance"] ; [+7]
        8 DUPTABLE                         R1 K9 [{["pass"] = False, ["results"], ["error"] = "asset_quality requires an Instance to validate"}]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K6 ["results"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K10 ["parse"]
       17 GETTABLEKS                       R2 R0 K11 ["assetType"]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKNIL                  R1 ; [+26]
       22 LOADK                            R3 K12 ["Unknown asset type '%*'; expected one of %* or an Enum.AssetType name"]
       23 GETTABLEKS                       R6 R0 K11 ["assetType"]
       25 FASTCALL1                        TOSTRING R6 ; [+2]
       26 GETIMPORT                        R5 K14 [tostring]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K17 [table.concat]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K18 ["BUNDLE_TYPE_NAMES"]
       34 LOADK                            R8 K19 [", "]
       35 CALL                             R6 2 1
       36 NAMECALL                         R3 R3 K20 ["format"]
       38 CALL                             R3 3 1
       39 DUPTABLE                         R2 K21 [{["pass"] = False, ["results"], ["error"]}]
       40 NEWTABLE                         R4 0 0
       42 SETTABLEKS                       R4 R2 K6 ["results"]
       44 SETTABLEKS                       R3 R2 K7 ["error"]
       46 RETURN                           R2 1
       47 GETTABLEKS                       R2 R1 K22 ["singleAssetType"]
       49 JUMPIFEQKNIL                     R2 ; [+24]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K23 ["isUnvalidatedMarketplaceAssetType"]
       54 GETTABLEKS                       R3 R1 K22 ["singleAssetType"]
       56 CALL                             R2 1 1
       57 JUMPIFNOT                        R2 ; [+16]
       58 LOADK                            R3 K24 ["%* is not an avatar item; Toolbox publishes it without upload validation, so there is nothing to validate"]
       59 GETTABLEKS                       R5 R1 K22 ["singleAssetType"]
       61 GETTABLEKS                       R5 R5 K25 ["Name"]
       63 NAMECALL                         R3 R3 K20 ["format"]
       65 CALL                             R3 2 1
       66 DUPTABLE                         R2 K21 [{["pass"] = False, ["results"], ["error"]}]
       67 NEWTABLE                         R4 0 0
       69 SETTABLEKS                       R4 R2 K6 ["results"]
       71 SETTABLEKS                       R3 R2 K7 ["error"]
       73 RETURN                           R2 1
       74 LOADNIL                          R2
       75 LOADNIL                          R3
       76 LOADNIL                          R4
       77 GETTABLEKS                       R5 R1 K26 ["inputLayout"]
       79 JUMPIFNOTEQKS                    R5 K27 ["Shoes"] ; [+12]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R7 R0 K0 ["instance"]
       84 FASTPCALL                        pcall 2 ; [+2]
       85 GETIMPORT                        R5 K29 [pcall]
       87 CALL                             R5 2 3
       88 MOVE                             R2 R5
       89 MOVE                             R3 R6
       90 MOVE                             R4 R7
       91 JUMP                             ; [+30]
       92 GETTABLEKS                       R5 R1 K26 ["inputLayout"]
       94 JUMPIFNOTEQKS                    R5 K30 ["AvatarAnimations"] ; [+12]
       96 GETUPVAL                         R6 2
       97 GETTABLEKS                       R7 R0 K0 ["instance"]
       99 FASTPCALL                        pcall 2 ; [+2]
      100 GETIMPORT                        R5 K29 [pcall]
      102 CALL                             R5 2 3
      103 MOVE                             R2 R5
      104 MOVE                             R3 R6
      105 MOVE                             R4 R7
      106 JUMP                             ; [+15]
      107 GETUPVAL                         R6 3
      108 GETTABLEKS                       R7 R0 K0 ["instance"]
      110 MOVE                             R8 R1
      111 GETUPVAL                         R9 4
      112 GETTABLEKS                       R9 R9 K31 ["createPermissionContext"]
      114 CALL                             R9 0 -1
      115 FASTPCALL                        pcall 3 ; [+2]
      116 GETIMPORT                        R5 K29 [pcall]
      118 CALL                             R5 -1 3
      119 MOVE                             R2 R5
      120 MOVE                             R3 R6
      121 MOVE                             R4 R7
      122 JUMPIF                           R2 ; [+33]
      123 FASTCALL1                        TYPEOF R3 ; [+3]
      124 MOVE                             R9 R3
      125 GETIMPORT                        R8 K2 [typeof]
      127 CALL                             R8 1 1
      128 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+13]
      130 GETTABLEKS                       R8 R3 K7 ["error"]
      132 JUMPIFEQKNIL                     R8 ; [+9]
      134 GETTABLEKS                       R9 R3 K7 ["error"]
      136 FASTCALL1                        TOSTRING R9 ; [+2]
      137 GETIMPORT                        R8 K14 [tostring]
      139 CALL                             R8 1 1
      140 MOVE                             R6 R8
      141 JUMP                             ; [+6]
      142 FASTCALL1                        TOSTRING R3 ; [+3]
      143 MOVE                             R9 R3
      144 GETIMPORT                        R8 K14 [tostring]
      146 CALL                             R8 1 1
      147 MOVE                             R6 R8
      148 DUPTABLE                         R5 K21 [{["pass"] = False, ["results"], ["error"]}]
      149 NEWTABLE                         R7 0 0
      151 SETTABLEKS                       R7 R5 K6 ["results"]
      153 SETTABLEKS                       R6 R5 K7 ["error"]
      155 RETURN                           R5 1
      156 JUMPIFEQKNIL                     R4 ; [+11]
      158 DUPTABLE                         R5 K21 [{["pass"] = False, ["results"], ["error"]}]
      159 MOVE                             R8 R3
      160 JUMPIF                           R8 ; [+2]
      161 NEWTABLE                         R8 0 0
      163 SETTABLEKS                       R8 R5 K6 ["results"]
      165 SETTABLEKS                       R4 R5 K7 ["error"]
      167 RETURN                           R5 1
      168 LOADB                            R5 1
      169 MOVE                             R6 R3
      170 LOADNIL                          R7
      171 LOADNIL                          R8
      172 FORGPREP                         R6
      173 MOVE                             R11 R5
      174 JUMPIFNOT                        R11 ; [+2]
      175 GETTABLEKS                       R11 R10 K4 ["pass"]
      177 MOVE                             R5 R11
      178 FORGLOOP                         R6 2 ; [-6]
      180 DUPTABLE                         R6 K33 [{["pass"], ["results"], ["error"] = }]
      181 SETTABLEKS                       R5 R6 K4 ["pass"]
      183 SETTABLEKS                       R3 R6 K6 ["results"]
      185 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["UGCValidation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["AssetQuality"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetQualityBodyBundleChecks"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["AssetQuality"]
       40 GETTABLEKS                       R5 R5 K13 ["AssetQualityRequestConfig"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K11 ["AssetQuality"]
       51 GETTABLEKS                       R6 R6 K14 ["AssetQualityUploadInputs"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K11 ["AssetQuality"]
       62 GETTABLEKS                       R7 R7 K15 ["AssetQualityUploadTypes"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R7 R2 K16 ["AssetQualityValidationClient"]
       67 GETTABLEKS                       R8 R2 K17 ["util"]
       69 GETTABLEKS                       R8 R8 K18 ["BundlesMetadata"]
       71 NEWTABLE                         R9 1 0
       73 DUPCLOSURE                       R10 K19 [PROTO_0]
       74 DUPCLOSURE                       R11 K20 [PROTO_1]
       75 CAPTURE                          VAL R3
       76 DUPCLOSURE                       R12 K21 [PROTO_3]
       77 DUPCLOSURE                       R13 K22 [PROTO_4]
       78 DUPCLOSURE                       R14 K23 [PROTO_5]
       79 CAPTURE                          VAL R12
       80 DUPCLOSURE                       R15 K24 [PROTO_6]
       81 DUPCLOSURE                       R16 K25 [PROTO_7]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R17 K26 [PROTO_8]
       84 CAPTURE                          VAL R3
       85 DUPCLOSURE                       R18 K27 [PROTO_9]
       86 CAPTURE                          VAL R17
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R14
       90 DUPCLOSURE                       R19 K28 [PROTO_10]
       91 CAPTURE                          VAL R18
       92 DUPCLOSURE                       R20 K29 [PROTO_11]
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R19
       98 DUPCLOSURE                       R21 K30 [PROTO_12]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R19
      103 DUPCLOSURE                       R22 K31 [PROTO_15]
      104 DUPCLOSURE                       R23 K32 [PROTO_16]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R20
      107 DUPCLOSURE                       R24 K33 [PROTO_17]
      108 CAPTURE                          VAL R22
      109 CAPTURE                          VAL R23
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 DUPCLOSURE                       R25 K34 [PROTO_18]
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R22
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R23
      118 CAPTURE                          VAL R21
      119 DUPCLOSURE                       R26 K35 [PROTO_19]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R24
      122 CAPTURE                          VAL R25
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R26 R9 K36 ["validateAsync"]
      127 RETURN                           R9 1
