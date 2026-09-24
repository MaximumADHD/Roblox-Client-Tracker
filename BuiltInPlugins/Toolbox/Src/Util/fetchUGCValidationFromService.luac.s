PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{[1] = "User", ["id"]}]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K4 ["GetUserId"]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K2 ["id"]
        9 SETLIST                          R1 R2 1 [1]
       11 MOVE                             R2 R0
       12 JUMPIF                           R2 ; [+2]
       13 NEWTABLE                         R2 0 0
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETTABLEKS                       R7 R6 K2 ["id"]
       20 JUMPIFEQKNIL                     R7 ; [+12]
       22 DUPTABLE                         R9 K6 [{[1] = "Group", ["id"]}]
       23 GETTABLEKS                       R10 R6 K2 ["id"]
       25 SETTABLEKS                       R10 R9 K2 ["id"]
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K9 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-16]
       35 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "emissiveByAssetType"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["restrictedUserIds"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K1 ["isUserInTrustedCreatorProgram"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K2 ["emissiveByAssetType"]
       14 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["emissiveByAssetType"]
        2 GETTABLEKS                       R4 R1 K1 ["Value"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOTEQKNIL                  R2 ; [+10]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 MOVE                             R2 R3
       11 GETTABLEKS                       R3 R0 K0 ["emissiveByAssetType"]
       13 GETTABLEKS                       R4 R1 K1 ["Value"]
       15 SETTABLE                         R2 R3 R4
       16 DUPTABLE                         R3 K5 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       17 GETTABLEKS                       R4 R0 K2 ["restrictedUserIds"]
       19 SETTABLEKS                       R4 R3 K2 ["restrictedUserIds"]
       21 GETTABLEKS                       R4 R0 K3 ["isUserInTrustedCreatorProgram"]
       23 SETTABLEKS                       R4 R3 K3 ["isUserInTrustedCreatorProgram"]
       25 SETTABLEKS                       R2 R3 K4 ["isEmissiveAllowed"]
       27 RETURN                           R3 1

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
       14 GETTABLEKS                       R6 R1 K9 ["emissiveByAssetType"]
       16 GETTABLEKS                       R7 R2 K10 ["Value"]
       18 GETTABLE                         R5 R6 R7
       19 JUMPIFNOTEQKNIL                  R5 ; [+10]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R2
       23 CALL                             R6 1 1
       24 MOVE                             R5 R6
       25 GETTABLEKS                       R6 R1 K9 ["emissiveByAssetType"]
       27 GETTABLEKS                       R7 R2 K10 ["Value"]
       29 SETTABLE                         R5 R6 R7
       30 DUPTABLE                         R4 K14 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       31 GETTABLEKS                       R6 R1 K11 ["restrictedUserIds"]
       33 SETTABLEKS                       R6 R4 K11 ["restrictedUserIds"]
       35 GETTABLEKS                       R6 R1 K12 ["isUserInTrustedCreatorProgram"]
       37 SETTABLEKS                       R6 R4 K12 ["isUserInTrustedCreatorProgram"]
       39 SETTABLEKS                       R5 R4 K13 ["isEmissiveAllowed"]
       41 SETTABLEKS                       R4 R3 K6 ["backendConfigs"]
       43 RETURN                           R3 1

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
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 CALL                             R2 1 2
        9 JUMPIF                           R2 ; [+16]
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K2 ["model"]
       16 NAMECALL                         R9 R9 K3 ["Destroy"]
       18 CALL                             R9 1 0
       19 FORGLOOP                         R4 2 ; [-6]
       21 GETIMPORT                        R4 K5 [error]
       23 MOVE                             R5 R3
       24 LOADN                            R6 0
       25 CALL                             R4 2 0
       26 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["AssetQualityValidationClient"]
        5 GETTABLEKS                       R1 R1 K3 ["fetch"]
        7 NEWTABLE                         R2 0 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["input"]
       12 SETLIST                          R2 R3 1 [1]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K5 ["config"]
       17 CALL                             R0 3 2
       18 JUMPIFNOT                        R0 ; [+11]
       19 NEWTABLE                         R2 0 0
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R2
       23 MOVE                             R5 R1
       24 GETUPVAL                         R6 3
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 4
       27 GETUPVAL                         R4 5
       28 SETTABLE                         R2 R3 R4
       29 JUMP                             ; [+4]
       30 GETUPVAL                         R2 6
       31 JUMPIFNOTEQKNIL                  R2 ; [+2]
       33 SETUPVAL                         R1 6
       34 GETUPVAL                         R2 7
       35 SUBK                             R2 R2 K6 [1]
       36 SETUPVAL                         R2 7
       37 GETUPVAL                         R2 8
       38 NAMECALL                         R2 R2 K7 ["Fire"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

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
       18 GETTABLEKS                       R17 R3 K14 ["emissiveByAssetType"]
       20 GETTABLEKS                       R18 R14 K15 ["Value"]
       22 GETTABLE                         R16 R17 R18
       23 JUMPIFNOTEQKNIL                  R16 ; [+10]
       25 GETUPVAL                         R17 1
       26 MOVE                             R18 R14
       27 CALL                             R17 1 1
       28 MOVE                             R16 R17
       29 GETTABLEKS                       R17 R3 K14 ["emissiveByAssetType"]
       31 GETTABLEKS                       R18 R14 K15 ["Value"]
       33 SETTABLE                         R16 R17 R18
       34 DUPTABLE                         R15 K19 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       35 GETTABLEKS                       R17 R3 K16 ["restrictedUserIds"]
       37 SETTABLEKS                       R17 R15 K16 ["restrictedUserIds"]
       39 GETTABLEKS                       R17 R3 K17 ["isUserInTrustedCreatorProgram"]
       41 SETTABLEKS                       R17 R15 K17 ["isUserInTrustedCreatorProgram"]
       43 SETTABLEKS                       R16 R15 K18 ["isEmissiveAllowed"]
       45 SETTABLEKS                       R15 R13 K12 ["backendConfigs"]
       47 SETTABLEKS                       R13 R12 K1 ["config"]
       49 SETTABLE                         R12 R4 R10
       50 GETTABLEKS                       R13 R11 K3 ["assetType"]
       52 JUMPIFNOT                        R1 ; [+4]
       53 GETTABLEKS                       R15 R13 K20 ["Name"]
       55 GETTABLE                         R14 R1 R15
       56 JUMP                             ; [+1]
       57 LOADNIL                          R14
       58 DUPTABLE                         R12 K25 [{["assetType"], ["instance"] = , ["settings"], ["status"] = "finished"}]
       59 SETTABLEKS                       R13 R12 K3 ["assetType"]
       61 MOVE                             R15 R14
       62 JUMPIF                           R15 ; [+1]
       63 GETUPVAL                         R15 2
       64 SETTABLEKS                       R15 R12 K22 ["settings"]
       66 SETTABLE                         R12 R5 R10
       67 FORGLOOP                         R7 2 ; [-57]
       69 NEWTABLE                         R7 0 0
       71 LOADNIL                          R8
       72 LENGTH                           R9 R4
       73 GETIMPORT                        R10 K28 [Instance.new]
       75 LOADK                            R11 K29 ["BindableEvent"]
       76 CALL                             R10 1 1
       77 MOVE                             R11 R4
       78 LOADNIL                          R12
       79 LOADNIL                          R13
       80 FORGPREP                         R11
       81 GETIMPORT                        R16 K32 [task.spawn]
       83 NEWCLOSURE                       R17 P0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R15
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R14
       90 CAPTURE                          REF R8
       91 CAPTURE                          REF R9
       92 CAPTURE                          VAL R10
       93 CALL                             R16 1 0
       94 FORGLOOP                         R11 2 ; [-14]
       96 LOADN                            R11 0
       97 JUMPIFNOTLT                      R11 R9 ; [+7]
       99 GETTABLEKS                       R11 R10 K33 ["Event"]
      101 NAMECALL                         R11 R11 K34 ["Wait"]
      103 CALL                             R11 1 0
      104 JUMPBACK                         ; [-9]
      105 NAMECALL                         R11 R10 K35 ["Destroy"]
      107 CALL                             R11 1 0
      108 JUMPIFEQKNIL                     R8 ; [+6]
      110 GETIMPORT                        R11 K37 [error]
      112 MOVE                             R12 R8
      113 LOADN                            R13 0
      114 CALL                             R11 2 0
      115 NEWTABLE                         R11 0 0
      117 LOADN                            R14 1
      118 LENGTH                           R12 R4
      119 LOADN                            R13 1
      120 FORNPREP                         R12
      121 GETTABLE                         R15 R7 R14
      122 JUMPIFNOT                        R15 ; [+13]
      123 MOVE                             R16 R15
      124 LOADNIL                          R17
      125 LOADNIL                          R18
      126 FORGPREP                         R16
      127 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      129 MOVE                             R22 R11
      130 MOVE                             R23 R20
      131 GETIMPORT                        R21 K40 [table.insert]
      133 CALL                             R21 2 0
      134 FORGLOOP                         R16 2 ; [-8]
      136 FORNLOOP                         R12
      137 MOVE                             R12 R11
      138 MOVE                             R13 R5
      139 CLOSEUPVALS                      R8
      140 RETURN                           R12 2

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+10]
        2 GETTABLEKS                       R4 R1 K0 ["Value"]
        4 LOADN                            R5 0
        5 JUMPIFLE                         R4 R5 ; [+5]
        7 GETIMPORT                        R4 K4 [Enum.AssetType.Model]
        9 JUMPIFNOTEQ                      R1 R4 ; [+14]
       11 GETIMPORT                        R4 K6 [error]
       13 LOADK                            R5 K7 ["Unsupported asset type for validation: %*"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K9 [tostring]
       18 CALL                             R7 1 1
       19 NAMECALL                         R5 R5 K10 ["format"]
       21 CALL                             R5 2 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 0
       24 NEWTABLE                         R4 0 0
       26 JUMPIFNOT                        R0 ; [+23]
       27 NEWTABLE                         R5 0 0
       29 MOVE                             R6 R0
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 DUPTABLE                         R13 K13 [{"instance", "assetType"}]
       34 SETTABLEKS                       R10 R13 K11 ["instance"]
       36 SETTABLEKS                       R1 R13 K12 ["assetType"]
       38 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K16 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-12]
       46 GETUPVAL                         R6 0
       47 MOVE                             R7 R5
       48 CALL                             R6 1 1
       49 MOVE                             R4 R6
       50 GETUPVAL                         R5 1
       51 MOVE                             R6 R3
       52 CALL                             R5 1 1
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K17 ["AssetQualityValidationClient"]
       56 GETTABLEKS                       R6 R6 K18 ["fetch"]
       58 MOVE                             R7 R4
       59 DUPTABLE                         R8 K28 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"] = , ["validateSingleAssetsInBundle"] = False, ["backendConfigs"]}]
       60 GETTABLEKS                       R11 R5 K29 ["emissiveByAssetType"]
       62 GETTABLEKS                       R12 R1 K0 ["Value"]
       64 GETTABLE                         R10 R11 R12
       65 JUMPIFNOTEQKNIL                  R10 ; [+10]
       67 GETUPVAL                         R11 3
       68 MOVE                             R12 R1
       69 CALL                             R11 1 1
       70 MOVE                             R10 R11
       71 GETTABLEKS                       R11 R5 K29 ["emissiveByAssetType"]
       73 GETTABLEKS                       R12 R1 K0 ["Value"]
       75 SETTABLE                         R10 R11 R12
       76 DUPTABLE                         R9 K33 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       77 GETTABLEKS                       R11 R5 K30 ["restrictedUserIds"]
       79 SETTABLEKS                       R11 R9 K30 ["restrictedUserIds"]
       81 GETTABLEKS                       R11 R5 K31 ["isUserInTrustedCreatorProgram"]
       83 SETTABLEKS                       R11 R9 K31 ["isUserInTrustedCreatorProgram"]
       85 SETTABLEKS                       R10 R9 K32 ["isEmissiveAllowed"]
       87 SETTABLEKS                       R9 R8 K27 ["backendConfigs"]
       89 CALL                             R6 2 1
       90 LOADB                            R7 1
       91 NEWTABLE                         R8 0 0
       93 MOVE                             R9 R6
       94 LOADNIL                          R10
       95 LOADNIL                          R11
       96 FORGPREP                         R9
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K34 ["combineResultsIntoLegacy"]
      100 MOVE                             R15 R7
      101 MOVE                             R16 R8
      102 GETTABLEKS                       R17 R13 K35 ["validationData"]
      104 MOVE                             R18 R2
      105 CALL                             R14 4 2
      106 MOVE                             R7 R14
      107 MOVE                             R8 R15
      108 FORGLOOP                         R9 2 ; [-12]
      110 MOVE                             R9 R7
      111 MOVE                             R10 R8
      112 JUMPIF                           R10 ; [+2]
      113 NEWTABLE                         R10 0 0
      115 RETURN                           R9 2

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQKS                    R1 K0 ["Shoes"] ; [+16]
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 5
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 6
       12 GETUPVAL                         R5 7
       13 MOVE                             R6 R0
       14 CALL                             R2 4 2
       15 DUPTABLE                         R4 K3 [{"errors", "pieces"}]
       16 SETTABLEKS                       R2 R4 K1 ["errors"]
       18 SETTABLEKS                       R3 R4 K2 ["pieces"]
       20 RETURN                           R4 1
       21 GETUPVAL                         R1 2
       22 JUMPIFEQKS                       R1 K4 ["Body"] ; [+4]
       24 GETUPVAL                         R1 2
       25 JUMPIFNOTEQKS                    R1 K5 ["DynamicHead"] ; [+82]
       27 GETUPVAL                         R1 8
       28 GETTABLEKS                       R1 R1 K6 ["AssetQualityValidationClient"]
       30 GETTABLEKS                       R1 R1 K7 ["createBodyInputs"]
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 9
       34 GETUPVAL                         R4 2
       35 CALL                             R1 3 1
       36 LENGTH                           R2 R1
       37 JUMPIFNOTEQKN                    R2 K8 [0] ; [+10]
       39 GETIMPORT                        R2 K10 [error]
       41 LOADK                            R3 K11 ["No %* bundle parts resolved for validation"]
       42 GETUPVAL                         R5 2
       43 NAMECALL                         R3 R3 K12 ["format"]
       45 CALL                             R3 2 1
       46 LOADN                            R4 0
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 8
       49 GETTABLEKS                       R2 R2 K6 ["AssetQualityValidationClient"]
       51 GETTABLEKS                       R2 R2 K13 ["fetch"]
       53 MOVE                             R3 R1
       54 GETUPVAL                         R5 2
       55 GETIMPORT                        R6 K16 [Enum.AssetType.DynamicHead]
       57 DUPTABLE                         R4 K24 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"], ["backendConfigs"]}]
       58 JUMPIFNOT                        R5 ; [+3]
       59 GETUPVAL                         R8 10
       60 GETTABLE                         R7 R8 R5
       61 JUMP                             ; [+1]
       62 LOADNIL                          R7
       63 SETTABLEKS                       R7 R4 K21 ["intendedBundleType"]
       65 JUMPIFEQKS                       R5 K4 ["Body"] ; [+2]
       67 LOADB                            R7 0 +1
       68 LOADB                            R7 1
       69 SETTABLEKS                       R7 R4 K22 ["validateSingleAssetsInBundle"]
       71 GETTABLEKS                       R9 R0 K25 ["emissiveByAssetType"]
       73 GETTABLEKS                       R10 R6 K26 ["Value"]
       75 GETTABLE                         R8 R9 R10
       76 JUMPIFNOTEQKNIL                  R8 ; [+10]
       78 GETUPVAL                         R9 11
       79 MOVE                             R10 R6
       80 CALL                             R9 1 1
       81 MOVE                             R8 R9
       82 GETTABLEKS                       R9 R0 K25 ["emissiveByAssetType"]
       84 GETTABLEKS                       R10 R6 K26 ["Value"]
       86 SETTABLE                         R8 R9 R10
       87 DUPTABLE                         R7 K30 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       88 GETTABLEKS                       R9 R0 K27 ["restrictedUserIds"]
       90 SETTABLEKS                       R9 R7 K27 ["restrictedUserIds"]
       92 GETTABLEKS                       R9 R0 K28 ["isUserInTrustedCreatorProgram"]
       94 SETTABLEKS                       R9 R7 K28 ["isUserInTrustedCreatorProgram"]
       96 SETTABLEKS                       R8 R7 K29 ["isEmissiveAllowed"]
       98 SETTABLEKS                       R7 R4 K23 ["backendConfigs"]
      100 CALL                             R2 2 1
      101 GETUPVAL                         R3 12
      102 MOVE                             R4 R2
      103 MOVE                             R5 R1
      104 GETUPVAL                         R6 6
      105 GETUPVAL                         R7 7
      106 CALL                             R3 4 1
      107 RETURN                           R3 1
      108 GETIMPORT                        R1 K10 [error]
      110 LOADK                            R2 K31 ["Unsupported bundle type for validation: %*"]
      111 GETUPVAL                         R5 2
      112 FASTCALL1                        TOSTRING R5 ; [+2]
      113 GETIMPORT                        R4 K33 [tostring]
      115 CALL                             R4 1 1
      116 NAMECALL                         R2 R2 K12 ["format"]
      118 CALL                             R2 2 1
      119 LOADN                            R3 0
      120 CALL                             R1 2 0
      121 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
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
       16 CALL                             R0 1 2
       17 GETUPVAL                         R2 13
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R2 14
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 15
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
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R5 R2
        1 JUMPIFNOT                        R5 ; [+1]
        2 GETTABLE                         R5 R1 R2
        3 MOVE                             R6 R5
        4 JUMPIFNOT                        R6 ; [+2]
        5 GETTABLEKS                       R6 R5 K0 ["allowedAssetTypeSettings"]
        7 LOADB                            R7 0
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K1 ["new"]
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          REF R7
       26 CALL                             R8 1 1
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          REF R7
       29 SETTABLEKS                       R9 R8 K2 ["cancel"]
       31 CLOSEUPVALS                      R7
       32 RETURN                           R8 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+6]
        4 GETIMPORT                        R0 K2 [error]
        6 LOADK                            R1 K3 ["No animation bundle parts resolved for validation"]
        7 LOADN                            R2 0
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R3 4
       15 GETUPVAL                         R4 5
       16 MOVE                             R5 R0
       17 CALL                             R1 4 2
       18 GETUPVAL                         R4 0
       19 LENGTH                           R3 R4
       20 LOADN                            R4 1
       21 JUMPIFNOTLT                      R4 R3 ; [+76]
       23 GETUPVAL                         R3 6
       24 GETUPVAL                         R4 0
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [pcall]
       28 GETUPVAL                         R5 7
       29 GETTABLEKS                       R5 R5 K6 ["AssetQualityValidationClient"]
       31 GETTABLEKS                       R5 R5 K7 ["fetch"]
       33 MOVE                             R6 R3
       34 GETUPVAL                         R9 0
       35 GETTABLEN                        R8 R9 1
       36 GETTABLEKS                       R8 R8 K8 ["assetType"]
       38 DUPTABLE                         R7 K17 [{["source"] = "Toolbox", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"] = False, ["backendConfigs"]}]
       39 GETUPVAL                         R10 8
       40 GETTABLEKS                       R9 R10 K18 ["AvatarAnimations"]
       42 SETTABLEKS                       R9 R7 K13 ["intendedBundleType"]
       44 GETTABLEKS                       R11 R0 K19 ["emissiveByAssetType"]
       46 GETTABLEKS                       R12 R8 K20 ["Value"]
       48 GETTABLE                         R10 R11 R12
       49 JUMPIFNOTEQKNIL                  R10 ; [+10]
       51 GETUPVAL                         R11 9
       52 MOVE                             R12 R8
       53 CALL                             R11 1 1
       54 MOVE                             R10 R11
       55 GETTABLEKS                       R11 R0 K19 ["emissiveByAssetType"]
       57 GETTABLEKS                       R12 R8 K20 ["Value"]
       59 SETTABLE                         R10 R11 R12
       60 DUPTABLE                         R9 K24 [{"restrictedUserIds", "isUserInTrustedCreatorProgram", "isEmissiveAllowed"}]
       61 GETTABLEKS                       R11 R0 K21 ["restrictedUserIds"]
       63 SETTABLEKS                       R11 R9 K21 ["restrictedUserIds"]
       65 GETTABLEKS                       R11 R0 K22 ["isUserInTrustedCreatorProgram"]
       67 SETTABLEKS                       R11 R9 K22 ["isUserInTrustedCreatorProgram"]
       69 SETTABLEKS                       R10 R9 K23 ["isEmissiveAllowed"]
       71 SETTABLEKS                       R9 R7 K16 ["backendConfigs"]
       73 CALL                             R4 3 2
       74 JUMPIFNOT                        R4 ; [+6]
       75 GETUPVAL                         R6 10
       76 MOVE                             R7 R1
       77 MOVE                             R8 R5
       78 GETUPVAL                         R9 5
       79 CALL                             R6 3 0
       80 JUMP                             ; [+17]
       81 DUPTABLE                         R8 K26 [{["assetType"] = , ["error"]}]
       82 DUPTABLE                         R9 K29 [{["type"] = "message", ["message"]}]
       83 FASTCALL1                        TOSTRING R5 ; [+3]
       84 MOVE                             R11 R5
       85 GETIMPORT                        R10 K31 [tostring]
       87 CALL                             R10 1 1
       88 SETTABLEKS                       R10 R9 K28 ["message"]
       90 SETTABLEKS                       R9 R8 K1 ["error"]
       92 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       94 MOVE                             R7 R1
       95 GETIMPORT                        R6 K34 [table.insert]
       97 CALL                             R6 2 0
       98 DUPTABLE                         R3 K37 [{"errors", "pieces"}]
       99 SETTABLEKS                       R1 R3 K35 ["errors"]
      101 SETTABLEKS                       R2 R3 K36 ["pieces"]
      103 RETURN                           R3 1

PROTO_20:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
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
       14 CALL                             R0 1 2
       15 GETUPVAL                         R2 11
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R0 0
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R2 12
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 13
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
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R1 K0 ["AvatarAnimations"]
        2 MOVE                             R5 R4
        3 JUMPIFNOT                        R5 ; [+2]
        4 GETTABLEKS                       R5 R4 K1 ["allowedAssetTypeSettings"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["createAvatarAnimationsPartFolders"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R1
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K3 ["UGCBundleTypes"]
       14 GETTABLEKS                       R9 R9 K0 ["AvatarAnimations"]
       16 CALL                             R6 3 1
       17 NEWTABLE                         R7 0 0
       19 JUMPIFNOT                        R6 ; [+26]
       20 GETUPVAL                         R8 2
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 GETTABLE                         R13 R6 R12
       25 JUMPIF                           R13 ; [+2]
       26 NEWTABLE                         R13 0 0
       28 LOADNIL                          R14
       29 LOADNIL                          R15
       30 FORGPREP                         R13
       31 DUPTABLE                         R20 K6 [{"instance", "assetType"}]
       32 SETTABLEKS                       R17 R20 K4 ["instance"]
       34 SETTABLEKS                       R12 R20 K5 ["assetType"]
       36 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
       38 MOVE                             R19 R7
       39 GETIMPORT                        R18 K9 [table.insert]
       41 CALL                             R18 2 0
       42 FORGLOOP                         R13 2 ; [-12]
       44 FORGLOOP                         R8 2 ; [-21]
       46 LOADB                            R8 0
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K10 ["new"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          REF R8
       63 CALL                             R9 1 1
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          REF R8
       66 SETTABLEKS                       R10 R9 K11 ["cancel"]
       68 CLOSEUPVALS                      R8
       69 RETURN                           R9 1

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
       50 GETTABLEKS                       R9 R9 K17 ["GetIsUserInTrustedCreatorProgram"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K11 ["Src"]
       57 GETTABLEKS                       R10 R10 K15 ["Networking"]
       59 GETTABLEKS                       R10 R10 K16 ["Requests"]
       61 GETTABLEKS                       R10 R10 K18 ["GetIsEmissiveAllowed"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R5 K19 ["GetService"]
       66 LOADK                            R11 K20 ["StudioService"]
       67 CALL                             R10 1 1
       68 DUPTABLE                         R11 K27 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True}]
       69 GETTABLEKS                       R12 R7 K28 ["VAAS_SORTED_ASSET_TYPES"]
       71 GETTABLEKS                       R13 R7 K29 ["ANIMATION_ASSET_TYPES_IN_DISPLAY_ORDER"]
       73 DUPTABLE                         R14 K33 [{"Body", "Shoes", "AvatarAnimations"}]
       74 GETIMPORT                        R15 K37 [Enum.BundleType.BodyParts]
       76 SETTABLEKS                       R15 R14 K30 ["Body"]
       78 GETIMPORT                        R15 K38 [Enum.BundleType.Shoes]
       80 SETTABLEKS                       R15 R14 K31 ["Shoes"]
       82 GETIMPORT                        R15 K40 [Enum.BundleType.Animations]
       84 SETTABLEKS                       R15 R14 K32 ["AvatarAnimations"]
       86 NEWTABLE                         R15 8 0
       88 GETTABLEKS                       R16 R3 K41 ["AssetQualityValidationClient"]
       90 SETTABLEKS                       R16 R15 K41 ["AssetQualityValidationClient"]
       92 GETTABLEKS                       R16 R3 K42 ["combineResultsIntoLegacy"]
       94 SETTABLEKS                       R16 R15 K42 ["combineResultsIntoLegacy"]
       96 DUPCLOSURE                       R16 K43 [PROTO_0]
       97 CAPTURE                          VAL R10
       98 DUPCLOSURE                       R17 K44 [PROTO_1]
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R8
      101 DUPCLOSURE                       R18 K45 [PROTO_2]
      102 CAPTURE                          VAL R9
      103 DUPCLOSURE                       R19 K46 [PROTO_3]
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R9
      106 DUPCLOSURE                       R20 K47 [PROTO_4]
      107 CAPTURE                          VAL R15
      108 DUPCLOSURE                       R21 K48 [PROTO_5]
      109 CAPTURE                          VAL R11
      110 DUPCLOSURE                       R22 K49 [PROTO_7]
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R23 K50 [PROTO_8]
      115 DUPCLOSURE                       R24 K51 [PROTO_10]
      116 CAPTURE                          VAL R15
      117 DUPCLOSURE                       R25 K52 [PROTO_12]
      118 CAPTURE                          VAL R24
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R20
      123 DUPCLOSURE                       R26 K53 [PROTO_13]
      124 CAPTURE                          VAL R24
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R9
      128 SETTABLEKS                       R26 R15 K54 ["validateSingleAsset"]
      130 DUPCLOSURE                       R26 K55 [PROTO_18]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R23
      134 CAPTURE                          VAL R25
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R22
      139 SETTABLEKS                       R26 R15 K56 ["validateBundle"]
      141 DUPCLOSURE                       R26 K57 [PROTO_23]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R25
      148 CAPTURE                          VAL R24
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R20
      153 SETTABLEKS                       R26 R15 K58 ["validateAnimationBundle"]
      155 RETURN                           R15 1
