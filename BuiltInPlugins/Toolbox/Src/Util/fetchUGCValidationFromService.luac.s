PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{[1] = "User", ["id"]}]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K4 ["GetUserId"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K2 ["id"]
        9 SETLIST                          R0 R1 1 [1]
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K2 ["id"]
       16 JUMPIFEQKNIL                     R6 ; [+12]
       18 DUPTABLE                         R8 K6 [{[1] = "Group", ["id"]}]
       19 GETTABLEKS                       R9 R5 K2 ["id"]
       21 SETTABLEKS                       R9 R8 K2 ["id"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K9 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-16]
       31 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "emissiveByAssetType"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["restrictedUserIds"]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K1 ["isUserInTrustedCreatorProgram"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K2 ["emissiveByAssetType"]
       17 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R2 1
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+16]
        3 GETTABLEKS                       R3 R0 K0 ["emissiveByAssetType"]
        5 GETTABLEKS                       R4 R1 K1 ["Value"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOTEQKNIL                  R2 ; [+10]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 GETTABLEKS                       R3 R0 K0 ["emissiveByAssetType"]
       16 GETTABLEKS                       R4 R1 K1 ["Value"]
       18 SETTABLE                         R2 R3 R4
       19 DUPTABLE                         R3 K5 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       20 GETTABLEKS                       R4 R0 K2 ["restrictedUserIds"]
       22 SETTABLEKS                       R4 R3 K2 ["restrictedUserIds"]
       24 GETTABLEKS                       R4 R0 K3 ["isUserInTrustedCreatorProgram"]
       26 SETTABLEKS                       R4 R3 K3 ["isUserInTrustedCreatorProgram"]
       28 SETTABLEKS                       R2 R3 K4 ["isEmissiveAllowed"]
       30 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R3 K7 [{[1] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"], ["backendConfigs"]}]
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R0
        4 JUMP                             ; [+1]
        5 LOADNIL                          R4
        6 SETTABLEKS                       R4 R3 K4 ["intendedBundleType"]
        8 JUMPIFEQKS                       R0 K8 ["Body"] ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K5 ["validateSingleAssetsInBundle"]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K6 ["backendConfigs"]
       20 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K0 ["combineResultsIntoLegacy"]
        7 LOADB                            R9 1
        8 LOADNIL                          R10
        9 GETTABLEKS                       R11 R7 K1 ["validationData"]
       11 MOVE                             R12 R2
       12 CALL                             R8 4 2
       13 JUMPIF                           R8 ; [+23]
       14 JUMPIFNOT                        R9 ; [+22]
       15 MOVE                             R10 R9
       16 LOADNIL                          R11
       17 LOADNIL                          R12
       18 FORGPREP                         R10
       19 DUPTABLE                         R17 K4 [{"assetType", "error"}]
       20 GETTABLEKS                       R18 R7 K2 ["assetType"]
       22 SETTABLEKS                       R18 R17 K2 ["assetType"]
       24 DUPTABLE                         R18 K7 [{["type"] = "message", ["message"]}]
       25 SETTABLEKS                       R14 R18 K6 ["message"]
       27 SETTABLEKS                       R18 R17 K3 ["error"]
       29 FASTCALL2                        TABLE_INSERT R0 R17 ; [+4]
       31 MOVE                             R16 R0
       32 GETIMPORT                        R15 K10 [table.insert]
       34 CALL                             R15 2 0
       35 FORGLOOP                         R10 2 ; [-17]
       37 FORGLOOP                         R3 2 ; [-34]
       39 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["Name"]
        3 GETTABLE                         R2 R1 R3
        4 JUMP                             ; [+1]
        5 LOADNIL                          R2
        6 DUPTABLE                         R3 K7 [{["assetType"], ["instance"] = , ["settings"], ["status"] = "finished"}]
        7 SETTABLEKS                       R0 R3 K1 ["assetType"]
        9 MOVE                             R4 R2
       10 JUMPIF                           R4 ; [+1]
       11 GETUPVAL                         R4 0
       12 SETTABLEKS                       R4 R3 K4 ["settings"]
       14 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K0 ["Name"]
        9 GETTABLE                         R1 R2 R3
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R2 R1 K1 ["isEligibleForUpload"]
       15 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 2
       19 GETTABLE                         R3 R4 R0
       20 JUMPIFEQKB                       R3 TRUE ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 LOADB                            R3 0
       25 JUMPIFEQKNIL                     R1 ; [+7]
       27 GETTABLEKS                       R4 R1 K2 ["minimumQuantity"]
       29 JUMPIFEQKN                       R4 K3 [1] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 JUMPIF                           R2 ; [+2]
       34 JUMPIF                           R3 ; [+1]
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 0
       37 LOADB                            R5 1
       38 SETTABLE                         R5 R4 R0
       39 GETUPVAL                         R5 3
       40 GETUPVAL                         R7 1
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETTABLEKS                       R9 R0 K0 ["Name"]
       44 GETTABLE                         R8 R7 R9
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 DUPTABLE                         R6 K10 [{["assetType"], ["instance"] = , ["settings"], ["status"] = "finished"}]
       48 SETTABLEKS                       R0 R6 K4 ["assetType"]
       50 MOVE                             R9 R8
       51 JUMPIF                           R9 ; [+1]
       52 GETUPVAL                         R9 4
       53 SETTABLEKS                       R9 R6 K7 ["settings"]
       55 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       57 GETIMPORT                        R4 K13 [table.insert]
       59 CALL                             R4 2 0
       60 JUMPIF                           R2 ; [+13]
       61 JUMPIFNOT                        R3 ; [+12]
       62 GETUPVAL                         R5 5
       63 DUPTABLE                         R6 K15 [{"assetType", "error"}]
       64 SETTABLEKS                       R0 R6 K4 ["assetType"]
       66 DUPTABLE                         R7 K18 [{["type"] = "notFound"}]
       67 SETTABLEKS                       R7 R6 K14 ["error"]
       69 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       71 GETIMPORT                        R4 K13 [table.insert]
       73 CALL                             R4 2 0
       74 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R4
        4 MOVE                             R7 R0
        5 MOVE                             R8 R3
        6 CALL                             R5 3 0
        7 NEWTABLE                         R5 0 0
        9 MOVE                             R6 R1
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R11 R10 K0 ["assetType"]
       15 LOADB                            R12 1
       16 SETTABLE                         R12 R5 R11
       17 FORGLOOP                         R6 2 ; [-5]
       19 NEWTABLE                         R6 0 0
       21 NEWTABLE                         R7 0 0
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R4
       30 GETUPVAL                         R9 2
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 MOVE                             R14 R8
       35 MOVE                             R15 R13
       36 CALL                             R14 1 0
       37 FORGLOOP                         R9 2 ; [-4]
       39 JUMPIFNOT                        R2 ; [+13]
       40 MOVE                             R9 R2
       41 LOADNIL                          R10
       42 LOADNIL                          R11
       43 FORGPREP                         R9
       44 GETIMPORT                        R15 K3 [Enum.AssetType]
       46 GETTABLE                         R14 R15 R12
       47 JUMPIFNOT                        R14 ; [+3]
       48 MOVE                             R15 R8
       49 MOVE                             R16 R14
       50 CALL                             R15 1 0
       51 FORGLOOP                         R9 1 ; [-8]
       53 DUPTABLE                         R9 K6 [{"errors", "pieces"}]
       54 SETTABLEKS                       R4 R9 K4 ["errors"]
       56 SETTABLEKS                       R6 R9 K5 ["pieces"]
       58 RETURN                           R9 1

PROTO_8:
        0 LOADK                            R3 K0 ["LeftShoeAccessory"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["RightShoeAccessory"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+5]
       10 GETIMPORT                        R3 K4 [error]
       12 LOADK                            R4 K5 ["Expected LeftShoeAccessory and RightShoeAccessory for shoe validation"]
       13 LOADN                            R5 0
       14 CALL                             R3 2 0
       15 NEWTABLE                         R3 0 2
       17 DUPTABLE                         R4 K8 [{"instance", "assetType"}]
       18 SETTABLEKS                       R1 R4 K6 ["instance"]
       20 GETIMPORT                        R5 K11 [Enum.AssetType.LeftShoeAccessory]
       22 SETTABLEKS                       R5 R4 K7 ["assetType"]
       24 DUPTABLE                         R5 K8 [{"instance", "assetType"}]
       25 SETTABLEKS                       R2 R5 K6 ["instance"]
       27 GETIMPORT                        R6 K12 [Enum.AssetType.RightShoeAccessory]
       29 SETTABLEKS                       R6 R5 K7 ["assetType"]
       31 SETLIST                          R3 R4 2 [1]
       33 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R7 R7 K0 ["AssetQualityValidationClient"]
        8 GETTABLEKS                       R7 R7 K1 ["createSingleAssetInput"]
       10 GETTABLEKS                       R8 R4 K2 ["instance"]
       12 GETTABLEKS                       R9 R4 K3 ["assetType"]
       14 CALL                             R7 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R5 K6 [table.insert]
       18 CALL                             R5 -1 0
       19 FORGLOOP                         R0 2 ; [-16]
       21 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+16]
       11 MOVE                             R4 R1
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K2 ["model"]
       17 NAMECALL                         R9 R9 K3 ["Destroy"]
       19 CALL                             R9 1 0
       20 FORGLOOP                         R4 2 ; [-6]
       22 GETIMPORT                        R4 K5 [error]
       24 MOVE                             R5 R3
       25 LOADN                            R6 0
       26 CALL                             R4 2 0
       27 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssetQualityValidationClient"]
        3 GETTABLEKS                       R1 R1 K1 ["fetch"]
        5 NEWTABLE                         R2 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["input"]
       10 SETLIST                          R2 R3 1 [1]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["config"]
       15 FASTPCALL                        pcall 3 ; [+2]
       16 GETIMPORT                        R0 K5 [pcall]
       18 CALL                             R0 3 2
       19 JUMPIFNOT                        R0 ; [+11]
       20 NEWTABLE                         R2 0 0
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R2
       24 MOVE                             R5 R1
       25 GETUPVAL                         R6 3
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R4 5
       29 SETTABLE                         R2 R3 R4
       30 JUMP                             ; [+4]
       31 GETUPVAL                         R2 6
       32 JUMPIFNOTEQKNIL                  R2 ; [+2]
       34 SETUPVAL                         R1 6
       35 GETUPVAL                         R2 7
       36 SUBK                             R2 R2 K6 [1]
       37 SETUPVAL                         R2 7
       38 GETUPVAL                         R2 8
       39 NAMECALL                         R2 R2 K7 ["Fire"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 MOVE                             R7 R0
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 DUPTABLE                         R12 K2 [{"input", "config"}]
       12 GETTABLE                         R13 R6 R10
       13 SETTABLEKS                       R13 R12 K0 ["input"]
       15 GETTABLEKS                       R14 R11 K3 ["assetType"]
       17 DUPTABLE                         R13 K13 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"] = , ["validateSingleAssetsInBundle"] = False, ["backendConfigs"]}]
       18 GETUPVAL                         R15 1
       19 MOVE                             R16 R3
       20 MOVE                             R17 R14
       21 CALL                             R15 2 1
       22 SETTABLEKS                       R15 R13 K12 ["backendConfigs"]
       24 SETTABLEKS                       R13 R12 K1 ["config"]
       26 SETTABLE                         R12 R4 R10
       27 GETTABLEKS                       R13 R11 K3 ["assetType"]
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETTABLEKS                       R15 R13 K14 ["Name"]
       32 GETTABLE                         R14 R1 R15
       33 JUMP                             ; [+1]
       34 LOADNIL                          R14
       35 DUPTABLE                         R12 K19 [{["assetType"], ["instance"] = , ["settings"], ["status"] = "finished"}]
       36 SETTABLEKS                       R13 R12 K3 ["assetType"]
       38 MOVE                             R15 R14
       39 JUMPIF                           R15 ; [+1]
       40 GETUPVAL                         R15 2
       41 SETTABLEKS                       R15 R12 K16 ["settings"]
       43 SETTABLE                         R12 R5 R10
       44 FORGLOOP                         R7 2 ; [-34]
       46 NEWTABLE                         R7 0 0
       48 LOADNIL                          R8
       49 LENGTH                           R9 R4
       50 GETIMPORT                        R10 K22 [Instance.new]
       52 LOADK                            R11 K23 ["BindableEvent"]
       53 CALL                             R10 1 1
       54 MOVE                             R11 R4
       55 LOADNIL                          R12
       56 LOADNIL                          R13
       57 FORGPREP                         R11
       58 GETIMPORT                        R16 K26 [task.spawn]
       60 NEWCLOSURE                       R17 P0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R15
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R14
       67 CAPTURE                          REF R8
       68 CAPTURE                          REF R9
       69 CAPTURE                          VAL R10
       70 CALL                             R16 1 0
       71 FORGLOOP                         R11 2 ; [-14]
       73 LOADN                            R11 0
       74 JUMPIFNOTLT                      R11 R9 ; [+7]
       76 GETTABLEKS                       R11 R10 K27 ["Event"]
       78 NAMECALL                         R11 R11 K28 ["Wait"]
       80 CALL                             R11 1 0
       81 JUMPBACK                         ; [-9]
       82 NAMECALL                         R11 R10 K29 ["Destroy"]
       84 CALL                             R11 1 0
       85 JUMPIFEQKNIL                     R8 ; [+6]
       87 GETIMPORT                        R11 K31 [error]
       89 MOVE                             R12 R8
       90 LOADN                            R13 0
       91 CALL                             R11 2 0
       92 NEWTABLE                         R11 0 0
       94 LOADN                            R14 1
       95 LENGTH                           R12 R4
       96 LOADN                            R13 1
       97 FORNPREP                         R12
       98 GETTABLE                         R15 R7 R14
       99 JUMPIFNOT                        R15 ; [+13]
      100 MOVE                             R16 R15
      101 LOADNIL                          R17
      102 LOADNIL                          R18
      103 FORGPREP                         R16
      104 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      106 MOVE                             R22 R11
      107 MOVE                             R23 R20
      108 GETIMPORT                        R21 K34 [table.insert]
      110 CALL                             R21 2 0
      111 FORGLOOP                         R16 2 ; [-8]
      113 FORNLOOP                         R12
      114 MOVE                             R12 R11
      115 MOVE                             R13 R5
      116 CLOSEUPVALS                      R8
      117 RETURN                           R12 2

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+10]
        2 GETTABLEKS                       R3 R1 K0 ["Value"]
        4 LOADN                            R4 0
        5 JUMPIFLE                         R3 R4 ; [+5]
        7 GETIMPORT                        R3 K4 [Enum.AssetType.Model]
        9 JUMPIFNOTEQ                      R1 R3 ; [+14]
       11 GETIMPORT                        R3 K6 [error]
       13 LOADK                            R4 K7 ["Unsupported asset type for validation: %*"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R7 R1
       16 GETIMPORT                        R6 K9 [tostring]
       18 CALL                             R6 1 1
       19 NAMECALL                         R4 R4 K10 ["format"]
       21 CALL                             R4 2 1
       22 LOADN                            R5 0
       23 CALL                             R3 2 0
       24 NEWTABLE                         R3 0 0
       26 JUMPIFNOT                        R0 ; [+23]
       27 NEWTABLE                         R4 0 0
       29 MOVE                             R5 R0
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 DUPTABLE                         R12 K13 [{"instance", "assetType"}]
       34 SETTABLEKS                       R9 R12 K11 ["instance"]
       36 SETTABLEKS                       R1 R12 K12 ["assetType"]
       38 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       40 MOVE                             R11 R4
       41 GETIMPORT                        R10 K16 [table.insert]
       43 CALL                             R10 2 0
       44 FORGLOOP                         R5 2 ; [-12]
       46 GETUPVAL                         R5 0
       47 MOVE                             R6 R4
       48 CALL                             R5 1 1
       49 MOVE                             R3 R5
       50 GETUPVAL                         R4 1
       51 CALL                             R4 0 1
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K17 ["AssetQualityValidationClient"]
       55 GETTABLEKS                       R5 R5 K18 ["fetch"]
       57 MOVE                             R6 R3
       58 DUPTABLE                         R7 K28 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"] = , ["validateSingleAssetsInBundle"] = False, ["backendConfigs"]}]
       59 GETUPVAL                         R8 3
       60 MOVE                             R9 R4
       61 MOVE                             R10 R1
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K27 ["backendConfigs"]
       65 CALL                             R5 2 1
       66 LOADB                            R6 1
       67 NEWTABLE                         R7 0 0
       69 MOVE                             R8 R5
       70 LOADNIL                          R9
       71 LOADNIL                          R10
       72 FORGPREP                         R8
       73 GETUPVAL                         R13 2
       74 GETTABLEKS                       R13 R13 K29 ["combineResultsIntoLegacy"]
       76 MOVE                             R14 R6
       77 MOVE                             R15 R7
       78 GETTABLEKS                       R16 R12 K30 ["validationData"]
       80 MOVE                             R17 R2
       81 CALL                             R13 4 2
       82 MOVE                             R6 R13
       83 MOVE                             R7 R14
       84 FORGLOOP                         R8 2 ; [-12]
       86 MOVE                             R8 R6
       87 MOVE                             R9 R7
       88 JUMPIF                           R9 ; [+2]
       89 NEWTABLE                         R9 0 0
       91 RETURN                           R8 2

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKS                    R1 K0 ["Shoes"] ; [+16]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 4
        9 MOVE                             R3 R1
       10 GETUPVAL                         R4 5
       11 GETUPVAL                         R5 6
       12 MOVE                             R6 R0
       13 CALL                             R2 4 2
       14 DUPTABLE                         R4 K3 [{"errors", "pieces"}]
       15 SETTABLEKS                       R2 R4 K1 ["errors"]
       17 SETTABLEKS                       R3 R4 K2 ["pieces"]
       19 RETURN                           R4 1
       20 GETUPVAL                         R1 1
       21 JUMPIFEQKS                       R1 K4 ["Body"] ; [+4]
       23 GETUPVAL                         R1 1
       24 JUMPIFNOTEQKS                    R1 K5 ["DynamicHead"] ; [+59]
       26 GETUPVAL                         R1 7
       27 GETTABLEKS                       R1 R1 K6 ["AssetQualityValidationClient"]
       29 GETTABLEKS                       R1 R1 K7 ["createBodyInputs"]
       31 GETUPVAL                         R2 3
       32 GETUPVAL                         R3 8
       33 GETUPVAL                         R4 1
       34 CALL                             R1 3 1
       35 LENGTH                           R2 R1
       36 JUMPIFNOTEQKN                    R2 K8 [0] ; [+10]
       38 GETIMPORT                        R2 K10 [error]
       40 LOADK                            R3 K11 ["No %* bundle parts resolved for validation"]
       41 GETUPVAL                         R5 1
       42 NAMECALL                         R3 R3 K12 ["format"]
       44 CALL                             R3 2 1
       45 LOADN                            R4 0
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K6 ["AssetQualityValidationClient"]
       50 GETTABLEKS                       R2 R2 K13 ["fetch"]
       52 MOVE                             R3 R1
       53 GETUPVAL                         R5 1
       54 GETIMPORT                        R6 K16 [Enum.AssetType.DynamicHead]
       56 DUPTABLE                         R4 K24 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"], ["backendConfigs"]}]
       57 JUMPIFNOT                        R5 ; [+3]
       58 GETUPVAL                         R8 9
       59 GETTABLE                         R7 R8 R5
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R4 K21 ["intendedBundleType"]
       64 JUMPIFEQKS                       R5 K4 ["Body"] ; [+2]
       66 LOADB                            R7 0 +1
       67 LOADB                            R7 1
       68 SETTABLEKS                       R7 R4 K22 ["validateSingleAssetsInBundle"]
       70 GETUPVAL                         R7 10
       71 MOVE                             R8 R0
       72 MOVE                             R9 R6
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R4 K23 ["backendConfigs"]
       76 CALL                             R2 2 1
       77 GETUPVAL                         R3 11
       78 MOVE                             R4 R2
       79 MOVE                             R5 R1
       80 GETUPVAL                         R6 5
       81 GETUPVAL                         R7 6
       82 CALL                             R3 4 1
       83 RETURN                           R3 1
       84 GETIMPORT                        R1 K10 [error]
       86 LOADK                            R2 K25 ["Unsupported bundle type for validation: %*"]
       87 GETUPVAL                         R5 1
       88 FASTCALL1                        TOSTRING R5 ; [+2]
       89 GETIMPORT                        R4 K27 [tostring]
       91 CALL                             R4 1 1
       92 NAMECALL                         R2 R2 K12 ["format"]
       94 CALL                             R2 2 1
       95 LOADN                            R3 0
       96 CALL                             R1 2 0
       97 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          UPVAL U10
       12 CAPTURE                          UPVAL U11
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R0 K1 [pcall]
       16 CALL                             R0 1 2
       17 GETUPVAL                         R2 12
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R2 13
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 14
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R4 R2
        1 JUMPIFNOT                        R4 ; [+1]
        2 GETTABLE                         R4 R1 R2
        3 MOVE                             R5 R4
        4 JUMPIFNOT                        R5 ; [+2]
        5 GETTABLEKS                       R5 R4 K0 ["allowedAssetTypeSettings"]
        7 LOADB                            R6 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K1 ["new"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          REF R6
       25 CALL                             R7 1 1
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          REF R6
       28 SETTABLEKS                       R8 R7 K2 ["cancel"]
       30 CLOSEUPVALS                      R6
       31 RETURN                           R7 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+6]
        4 GETIMPORT                        R0 K2 [error]
        6 LOADK                            R1 K3 ["No animation bundle parts resolved for validation"]
        7 LOADN                            R2 0
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 1
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 MOVE                             R5 R0
       16 CALL                             R1 4 2
       17 GETUPVAL                         R4 0
       18 LENGTH                           R3 R4
       19 LOADN                            R4 1
       20 JUMPIFNOTLT                      R4 R3 ; [+54]
       22 GETUPVAL                         R3 5
       23 GETUPVAL                         R4 0
       24 CALL                             R3 1 1
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R5 R5 K4 ["AssetQualityValidationClient"]
       28 GETTABLEKS                       R5 R5 K5 ["fetch"]
       30 MOVE                             R6 R3
       31 GETUPVAL                         R9 0
       32 GETTABLEN                        R8 R9 1
       33 GETTABLEKS                       R8 R8 K6 ["assetType"]
       35 DUPTABLE                         R7 K15 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"] = False, ["backendConfigs"]}]
       36 GETUPVAL                         R10 7
       37 GETTABLEKS                       R9 R10 K16 ["AvatarAnimations"]
       39 SETTABLEKS                       R9 R7 K11 ["intendedBundleType"]
       41 GETUPVAL                         R9 8
       42 MOVE                             R10 R0
       43 MOVE                             R11 R8
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R7 K14 ["backendConfigs"]
       47 FASTPCALL                        pcall 3 ; [+2]
       48 GETIMPORT                        R4 K18 [pcall]
       50 CALL                             R4 3 2
       51 JUMPIFNOT                        R4 ; [+6]
       52 GETUPVAL                         R6 9
       53 MOVE                             R7 R1
       54 MOVE                             R8 R5
       55 GETUPVAL                         R9 4
       56 CALL                             R6 3 0
       57 JUMP                             ; [+17]
       58 DUPTABLE                         R8 K20 [{["assetType"] = , ["error"]}]
       59 DUPTABLE                         R9 K23 [{["type"] = "message", ["message"]}]
       60 FASTCALL1                        TOSTRING R5 ; [+3]
       61 MOVE                             R11 R5
       62 GETIMPORT                        R10 K25 [tostring]
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K22 ["message"]
       67 SETTABLEKS                       R9 R8 K1 ["error"]
       69 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       71 MOVE                             R7 R1
       72 GETIMPORT                        R6 K28 [table.insert]
       74 CALL                             R6 2 0
       75 DUPTABLE                         R3 K31 [{"errors", "pieces"}]
       76 SETTABLEKS                       R1 R3 K29 ["errors"]
       78 SETTABLEKS                       R2 R3 K30 ["pieces"]
       80 RETURN                           R3 1

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R0 K1 [pcall]
       14 CALL                             R0 1 2
       15 GETUPVAL                         R2 10
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R0 0
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R2 11
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 12
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R1 K0 ["AvatarAnimations"]
        2 MOVE                             R4 R3
        3 JUMPIFNOT                        R4 ; [+2]
        4 GETTABLEKS                       R4 R3 K1 ["allowedAssetTypeSettings"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["createAvatarAnimationsPartFolders"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K3 ["UGCBundleTypes"]
       14 GETTABLEKS                       R8 R8 K0 ["AvatarAnimations"]
       16 CALL                             R5 3 1
       17 NEWTABLE                         R6 0 0
       19 JUMPIFNOT                        R5 ; [+26]
       20 GETUPVAL                         R7 2
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 FORGPREP                         R7
       24 GETTABLE                         R12 R5 R11
       25 JUMPIF                           R12 ; [+2]
       26 NEWTABLE                         R12 0 0
       28 LOADNIL                          R13
       29 LOADNIL                          R14
       30 FORGPREP                         R12
       31 DUPTABLE                         R19 K6 [{"instance", "assetType"}]
       32 SETTABLEKS                       R16 R19 K4 ["instance"]
       34 SETTABLEKS                       R11 R19 K5 ["assetType"]
       36 FASTCALL2                        TABLE_INSERT R6 R19 ; [+4]
       38 MOVE                             R18 R6
       39 GETIMPORT                        R17 K9 [table.insert]
       41 CALL                             R17 2 0
       42 FORGLOOP                         R12 2 ; [-12]
       44 FORGLOOP                         R7 2 ; [-21]
       46 LOADB                            R7 0
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K10 ["new"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R6
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U10
       61 CAPTURE                          REF R7
       62 CALL                             R8 1 1
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          REF R7
       65 SETTABLEKS                       R9 R8 K11 ["cancel"]
       67 CLOSEUPVALS                      R7
       68 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Promise"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["UGCValidation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K11 ["Src"]
       25 GETTABLEKS                       R4 R4 K8 ["Util"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K12 ["Services"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R4 K13 ["AnimationConfigUtil"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R4 K14 ["AssetConfigConstants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Src"]
       46 GETTABLEKS                       R9 R9 K15 ["Networking"]
       48 GETTABLEKS                       R9 R9 K16 ["Requests"]
       50 GETTABLEKS                       R9 R9 K17 ["GetAllowedGroupsForUpload"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K11 ["Src"]
       57 GETTABLEKS                       R10 R10 K15 ["Networking"]
       59 GETTABLEKS                       R10 R10 K16 ["Requests"]
       61 GETTABLEKS                       R10 R10 K18 ["GetIsUserInTrustedCreatorProgram"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K11 ["Src"]
       68 GETTABLEKS                       R11 R11 K15 ["Networking"]
       70 GETTABLEKS                       R11 R11 K16 ["Requests"]
       72 GETTABLEKS                       R11 R11 K19 ["GetIsEmissiveAllowed"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K11 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagUGCValidateEmissiveMapAllowed"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K6 [require]
       86 GETTABLEKS                       R13 R0 K11 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagUGCValidateEmotesBoneUserVerification"]
       92 CALL                             R12 1 1
       93 MOVE                             R13 R11
       94 CALL                             R13 0 1
       95 MOVE                             R14 R12
       96 CALL                             R14 0 1
       97 GETTABLEKS                       R15 R5 K23 ["GetService"]
       99 LOADK                            R16 K24 ["StudioService"]
      100 CALL                             R15 1 1
      101 DUPTABLE                         R16 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True}]
      102 GETTABLEKS                       R17 R7 K32 ["VAAS_SORTED_ASSET_TYPES"]
      104 GETTABLEKS                       R18 R7 K33 ["ANIMATION_ASSET_TYPES_IN_DISPLAY_ORDER"]
      106 DUPTABLE                         R19 K37 [{"Body", "Shoes", "AvatarAnimations"}]
      107 GETIMPORT                        R20 K41 [Enum.BundleType.BodyParts]
      109 SETTABLEKS                       R20 R19 K34 ["Body"]
      111 GETIMPORT                        R20 K42 [Enum.BundleType.Shoes]
      113 SETTABLEKS                       R20 R19 K35 ["Shoes"]
      115 GETIMPORT                        R20 K44 [Enum.BundleType.Animations]
      117 SETTABLEKS                       R20 R19 K36 ["AvatarAnimations"]
      119 NEWTABLE                         R20 8 0
      121 GETTABLEKS                       R21 R3 K45 ["AssetQualityValidationClient"]
      123 SETTABLEKS                       R21 R20 K45 ["AssetQualityValidationClient"]
      125 GETTABLEKS                       R21 R3 K46 ["combineResultsIntoLegacy"]
      127 SETTABLEKS                       R21 R20 K46 ["combineResultsIntoLegacy"]
      129 DUPCLOSURE                       R21 K47 [PROTO_0]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R8
      132 DUPCLOSURE                       R22 K48 [PROTO_1]
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R9
      136 DUPCLOSURE                       R23 K49 [PROTO_2]
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R10
      139 DUPCLOSURE                       R24 K50 [PROTO_3]
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R23
      142 DUPCLOSURE                       R25 K51 [PROTO_4]
      143 CAPTURE                          VAL R20
      144 DUPCLOSURE                       R26 K52 [PROTO_5]
      145 CAPTURE                          VAL R16
      146 DUPCLOSURE                       R27 K53 [PROTO_7]
      147 CAPTURE                          VAL R25
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 DUPCLOSURE                       R28 K54 [PROTO_8]
      151 DUPCLOSURE                       R29 K55 [PROTO_10]
      152 CAPTURE                          VAL R20
      153 DUPCLOSURE                       R30 K56 [PROTO_12]
      154 CAPTURE                          VAL R29
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R25
      159 DUPCLOSURE                       R31 K57 [PROTO_13]
      160 CAPTURE                          VAL R29
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R23
      164 SETTABLEKS                       R31 R20 K58 ["validateSingleAsset"]
      166 DUPCLOSURE                       R31 K59 [PROTO_18]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R28
      170 CAPTURE                          VAL R30
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R27
      175 SETTABLEKS                       R31 R20 K60 ["validateBundle"]
      177 DUPCLOSURE                       R31 K61 [PROTO_23]
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R30
      184 CAPTURE                          VAL R29
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R25
      189 SETTABLEKS                       R31 R20 K62 ["validateAnimationBundle"]
      191 RETURN                           R20 1
