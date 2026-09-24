PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getMarketplaceAssetConfigUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["props"]
        7 GETTABLEKS                       R3 R3 K2 ["assetId"]
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K3 ["OpenBrowserWindow"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getMarketplaceOnboardingUrl"]
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["baseFrameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+52]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["listLayoutRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 JUMPIFNOT                        R0 ; [+46]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["baseFrameRef"]
       15 GETTABLEKS                       R0 R0 K1 ["current"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["listLayoutRef"]
       20 GETTABLEKS                       R1 R1 K1 ["current"]
       22 GETTABLEKS                       R4 R1 K4 ["AbsoluteContentSize"]
       24 GETTABLEKS                       R4 R4 K5 ["y"]
       26 ADDK                             R3 R4 K3 [48]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K6 ["state"]
       30 GETTABLEKS                       R4 R4 K7 ["maxDropdownPosition"]
       32 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       34 GETIMPORT                        R2 K10 [math.max]
       36 CALL                             R2 2 1
       37 GETIMPORT                        R3 K13 [UDim2.new]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K14 ["Size"]
       42 GETTABLEKS                       R4 R4 K15 ["X"]
       44 GETTABLEKS                       R4 R4 K16 ["Scale"]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K14 ["Size"]
       49 GETTABLEKS                       R5 R5 K15 ["X"]
       51 GETTABLEKS                       R5 R5 K17 ["Offset"]
       53 LOADN                            R6 0
       54 MOVE                             R7 R2
       55 CALL                             R3 4 1
       56 SETTABLEKS                       R3 R0 K18 ["CanvasSize"]
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["maxDropdownPosition"]
        6 JUMPIFNOTLT                      R1 R0 ; [+13]
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K2 [{"maxDropdownPosition"}]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K1 ["maxDropdownPosition"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K4 ["refreshCanvas"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 1
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R0 R0 K5 ["bumpCanvas"]
       25 CALL                             R0 3 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIFNOT                        R2 ; [+48]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R1 ; [+46]
        6 GETTABLEKS                       R6 R0 K0 ["current"]
        8 GETTABLEKS                       R6 R6 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R6 R6 K3 ["Y"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K4 ["baseFrameRef"]
       15 GETTABLEKS                       R7 R7 K0 ["current"]
       17 GETTABLEKS                       R7 R7 K5 ["CanvasPosition"]
       19 GETTABLEKS                       R7 R7 K3 ["Y"]
       21 ADD                              R5 R6 R7
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["baseFrameRef"]
       25 GETTABLEKS                       R7 R7 K0 ["current"]
       27 GETTABLEKS                       R7 R7 K2 ["AbsolutePosition"]
       29 GETTABLEKS                       R7 R7 K3 ["Y"]
       31 MINUS                            R6 R7
       32 ADD                              R4 R5 R6
       33 SUBK                             R3 R4 K1 [24]
       34 ADDK                             R7 R3 K1 [24]
       35 GETTABLEKS                       R8 R0 K0 ["current"]
       37 GETTABLEKS                       R8 R8 K6 ["AbsoluteSize"]
       39 GETTABLEKS                       R8 R8 K3 ["Y"]
       41 ADD                              R6 R7 R8
       42 ADD                              R5 R6 R1
       43 ADDK                             R4 R5 K1 [24]
       44 GETIMPORT                        R5 K8 [spawn]
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R3
       50 CALL                             R5 1 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationState"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationState"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationFailureReasons"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationFailureReasons"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ugcBundleValidationResults"}]
        2 SETTABLEKS                       R0 R3 K0 ["ugcBundleValidationResults"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentAssetType"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentAssetType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K6 [{[1] = 0, ["validationState"], ["validationFailureReasons"], ["ugcBundleValidationResults"], ["currentAssetType"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K7 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R3 R3 K8 ["NONE"]
        6 SETTABLEKS                       R3 R2 K2 ["validationState"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K3 ["validationFailureReasons"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K4 ["ugcBundleValidationResults"]
       16 GETTABLEKS                       R3 R1 K9 ["assetTypeEnum"]
       18 SETTABLEKS                       R3 R2 K5 ["currentAssetType"]
       20 SETTABLEKS                       R2 R0 K10 ["state"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K11 ["createRef"]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R0 K12 ["baseFrameRef"]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K11 ["createRef"]
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R0 K13 ["listLayoutRef"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K14 ["onClickConfigurePriceUrl"]
       40 GETUPVAL                         R2 4
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+5]
       43 DUPCLOSURE                       R2 K15 [PROTO_1]
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 SETTABLEKS                       R2 R0 K16 ["onClickOnboardLink"]
       48 NEWCLOSURE                       R2 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R2 R0 K17 ["refreshCanvas"]
       53 NEWCLOSURE                       R2 P3
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K18 ["updateMaxDropdownPosition"]
       57 NEWCLOSURE                       R2 P4
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R0 K19 ["setValidationState"]
       61 NEWCLOSURE                       R2 P5
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R2 R0 K20 ["setValidationFailureReasons"]
       65 NEWCLOSURE                       R2 P6
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R2 R0 K21 ["setUGCBundleValidationResults"]
       69 NEWCLOSURE                       R2 P7
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R0 K22 ["setCurrentAssetType"]
       73 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["baseFrameRef"]
        2 GETTABLEKS                       R3 R3 K1 ["current"]
        4 JUMPIFNOT                        R3 ; [+44]
        5 GETTABLEKS                       R3 R0 K0 ["baseFrameRef"]
        7 GETTABLEKS                       R3 R3 K1 ["current"]
        9 GETTABLEKS                       R4 R3 K2 ["CanvasPosition"]
       11 GETTABLEKS                       R4 R4 K3 ["Y"]
       13 GETTABLEKS                       R5 R3 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R5 R5 K3 ["Y"]
       17 JUMPIFNOTLT                      R1 R4 ; [+15]
       19 GETIMPORT                        R6 K7 [Vector2.new]
       21 LOADN                            R7 0
       22 LOADN                            R9 0
       23 FASTCALL2                        MATH_MAX R9 R1 ; [+4]
       25 MOVE                             R10 R1
       26 GETIMPORT                        R8 K10 [math.max]
       28 CALL                             R8 2 1
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R3 K2 ["CanvasPosition"]
       32 RETURN                           R0 0
       33 ADD                              R6 R4 R5
       34 JUMPIFNOTLT                      R6 R2 ; [+14]
       36 GETIMPORT                        R6 K7 [Vector2.new]
       38 LOADN                            R7 0
       39 LOADN                            R9 0
       40 SUB                              R10 R2 R5
       41 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       43 GETIMPORT                        R8 K10 [math.max]
       45 CALL                             R8 2 1
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R3 K2 ["CanvasPosition"]
       49 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["isUGCBundleType"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["getOptionalBodyPartsNotFound"]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 CALL                             R6 3 1
       17 JUMPIFNOT                        R6 ; [+4]
       18 LENGTH                           R7 R6
       19 LOADN                            R8 0
       20 JUMPIFNOTLE                      R7 R8 ; [+3]
       22 LOADNIL                          R7
       23 RETURN                           R7 1
       24 NEWTABLE                         R7 1 0
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K3 ["new"]
       29 CALL                             R8 0 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K4 ["createElement"]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K5 ["Text"]
       36 DUPTABLE                         R11 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       37 NAMECALL                         R12 R8 K10 ["getNextOrder"]
       39 CALL                             R12 1 1
       40 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       42 GETTABLEKS                       R12 R5 K11 ["Localization"]
       44 LOADK                            R14 K12 ["AssetConfig"]
       45 LOADK                            R15 K13 ["UGCMissingOptionalPartsMessage"]
       46 NAMECALL                         R12 R12 K14 ["getText"]
       48 CALL                             R12 3 1
       49 SETTABLEKS                       R12 R11 K5 ["Text"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R7 K15 ["OptionalPartsMessage"]
       54 MOVE                             R9 R6
       55 LOADNIL                          R10
       56 LOADNIL                          R11
       57 FORGPREP                         R9
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R16 R5 K11 ["Localization"]
       61 CALL                             R15 1 1
       62 GETTABLE                         R14 R15 R13
       63 JUMPIFEQKNIL                     R14 ; [+19]
       65 GETTABLEKS                       R15 R13 K16 ["Name"]
       67 GETUPVAL                         R16 2
       68 GETTABLEKS                       R16 R16 K4 ["createElement"]
       70 GETUPVAL                         R17 3
       71 GETTABLEKS                       R17 R17 K5 ["Text"]
       73 DUPTABLE                         R18 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       74 NAMECALL                         R19 R8 K10 ["getNextOrder"]
       76 CALL                             R19 1 1
       77 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
       79 SETTABLEKS                       R14 R18 K5 ["Text"]
       81 CALL                             R16 2 1
       82 SETTABLE                         R16 R7 R15
       83 FORGLOOP                         R9 2 ; [-26]
       85 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["isUGCBundleType"]
        5 MOVE                             R6 R2
        6 CALL                             R5 1 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADNIL                          R5
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["getUnknownMeshPartNames"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 LENGTH                           R6 R5
       17 LOADN                            R7 0
       18 JUMPIFNOTLE                      R6 R7 ; [+3]
       20 LOADNIL                          R6
       21 RETURN                           R6 1
       22 NEWTABLE                         R6 1 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K3 ["new"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K4 ["createElement"]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K5 ["Text"]
       34 DUPTABLE                         R10 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       35 NAMECALL                         R11 R7 K10 ["getNextOrder"]
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       40 GETTABLEKS                       R11 R4 K11 ["Localization"]
       42 LOADK                            R13 K12 ["AssetConfig"]
       43 LOADK                            R14 K13 ["UGCUnknownMeshPartsMessage"]
       44 NAMECALL                         R11 R11 K14 ["getText"]
       46 CALL                             R11 3 1
       47 SETTABLEKS                       R11 R10 K5 ["Text"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R6 K15 ["OptionalPartsMessage"]
       52 MOVE                             R8 R5
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 FORGPREP                         R8
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K4 ["createElement"]
       59 GETUPVAL                         R14 3
       60 GETTABLEKS                       R14 R14 K5 ["Text"]
       62 DUPTABLE                         R15 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       63 NAMECALL                         R16 R7 K10 ["getNextOrder"]
       65 CALL                             R16 1 1
       66 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       68 SETTABLEKS                       R12 R15 K5 ["Text"]
       70 CALL                             R13 2 1
       71 SETTABLE                         R13 R6 R12
       72 FORGLOOP                         R8 2 ; [-17]
       74 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["from"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["baseFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["baseFrameRef"]
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 GETIMPORT                        R2 K4 [UDim2.new]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["X"]
       16 GETTABLEKS                       R3 R3 K6 ["Scale"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["X"]
       21 GETTABLEKS                       R4 R4 K7 ["Offset"]
       23 LOADN                            R5 0
       24 GETTABLEKS                       R7 R0 K9 ["AbsoluteContentSize"]
       26 GETTABLEKS                       R7 R7 K10 ["y"]
       28 ADDK                             R6 R7 K8 [48]
       29 CALL                             R2 4 1
       30 SETTABLEKS                       R2 R1 K11 ["CanvasSize"]
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Title"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Description"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Size"]
        8 GETTABLEKS                       R4 R2 K3 ["LayoutOrder"]
       10 GETTABLEKS                       R5 R2 K4 ["allowCopy"]
       12 GETTABLEKS                       R6 R2 K5 ["allowSelectPrivate"]
       14 GETTABLEKS                       R7 R2 K6 ["name"]
       16 GETTABLEKS                       R8 R2 K7 ["description"]
       18 GETTABLEKS                       R9 R2 K8 ["owner"]
       20 GETTABLEKS                       R10 R2 K9 ["copyOn"]
       22 GETTABLEKS                       R11 R2 K10 ["allowComment"]
       24 GETTABLEKS                       R12 R2 K11 ["commentOn"]
       26 GETTABLEKS                       R13 R2 K12 ["deleteLocal"]
       28 GETTABLEKS                       R14 R2 K13 ["assetTypeEnum"]
       30 GETTABLEKS                       R15 R2 K14 ["isAssetPublic"]
       32 GETUPVAL                         R16 0
       33 GETTABLEKS                       R16 R16 K15 ["additionalImages"]
       35 GETTABLEKS                       R16 R16 K16 ["MaxThumbnails"]
       37 GETIMPORT                        R18 K20 [Enum.AssetType.Audio]
       39 JUMPIFEQ                         R14 R18 ; [+2]
       41 LOADB                            R17 0 +1
       42 LOADB                            R17 1
       43 GETIMPORT                        R19 K22 [Enum.AssetType.Video]
       45 JUMPIFEQ                         R14 R19 ; [+2]
       47 LOADB                            R18 0 +1
       48 LOADB                            R18 1
       49 GETIMPORT                        R20 K24 [Enum.AssetType.Model]
       51 JUMPIFEQ                         R14 R20 ; [+2]
       53 LOADB                            R19 0 +1
       54 LOADB                            R19 1
       55 GETIMPORT                        R21 K26 [Enum.AssetType.Plugin]
       57 JUMPIFEQ                         R14 R21 ; [+2]
       59 LOADB                            R20 0 +1
       60 LOADB                            R20 1
       61 GETIMPORT                        R22 K28 [Enum.AssetType.Animation]
       63 JUMPIFEQ                         R14 R22 ; [+2]
       65 LOADB                            R21 0 +1
       66 LOADB                            R21 1
       67 MOVE                             R22 R21
       68 JUMPIFNOT                        R22 ; [+18]
       69 LOADB                            R22 0
       70 GETTABLEKS                       R23 R2 K29 ["instances"]
       72 JUMPIFEQKNIL                     R23 ; [+14]
       74 LOADB                            R22 0
       75 GETTABLEKS                       R24 R2 K29 ["instances"]
       77 GETTABLEN                        R23 R24 1
       78 JUMPIFEQKNIL                     R23 ; [+8]
       80 GETTABLEKS                       R23 R2 K29 ["instances"]
       82 GETTABLEN                        R22 R23 1
       83 LOADK                            R24 K30 ["CurveAnimation"]
       84 NAMECALL                         R22 R22 K31 ["IsA"]
       86 CALL                             R22 2 1
       87 GETUPVAL                         R23 1
       88 GETTABLEKS                       R23 R23 K32 ["isCreatorStoreAssetNotIncludingAnimation"]
       90 MOVE                             R24 R14
       91 CALL                             R23 1 1
       92 GETTABLEKS                       R26 R2 K33 ["assetId"]
       94 FASTCALL1                        TYPEOF R26 ; [+2]
       95 GETIMPORT                        R25 K35 [typeof]
       97 CALL                             R25 1 1
       98 JUMPIFNOTEQKS                    R25 K36 ["number"] ; [+8]
      100 GETUPVAL                         R24 2
      101 GETTABLEKS                       R24 R24 K37 ["constructCreatorStoreConfigurationUrl"]
      103 GETTABLEKS                       R25 R2 K33 ["assetId"]
      105 CALL                             R24 1 1
      106 JUMP                             ; [+4]
      107 GETUPVAL                         R24 3
      108 GETTABLEKS                       R24 R24 K38 ["getCreatorDashboardBaseUrl"]
      110 CALL                             R24 0 1
      111 GETTABLEKS                       R25 R2 K39 ["onNameChange"]
      113 GETTABLEKS                       R26 R2 K40 ["onDescChange"]
      115 GETTABLEKS                       R27 R2 K41 ["onOwnerSelected"]
      117 GETTABLEKS                       R28 R2 K42 ["onCategoryChange"]
      119 GETTABLEKS                       R29 R2 K43 ["onSharingChanged"]
      121 GETTABLEKS                       R30 R2 K44 ["toggleCopy"]
      123 GETTABLEKS                       R31 R2 K45 ["toggleComment"]
      125 GETTABLEKS                       R32 R2 K46 ["toggleDeleteLocal"]
      127 GETTABLEKS                       R33 R2 K47 ["publishingRequirements"]
      129 GETTABLEKS                       R34 R2 K48 ["publishingRestriction"]
      131 JUMPIFNOT                        R33 ; [+3]
      132 GETTABLEKS                       R35 R33 K49 ["verification"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R35
      136 JUMPIFNOT                        R35 ; [+11]
      137 GETTABLEKS                       R37 R35 K50 ["supportedTypes"]
      139 JUMPIFNOT                        R37 ; [+8]
      140 GETTABLEKS                       R38 R35 K50 ["supportedTypes"]
      142 LENGTH                           R37 R38
      143 JUMPIFNOTEQKN                    R37 K51 [0] ; [+2]
      145 LOADB                            R36 0 +1
      146 LOADB                            R36 1
      147 JUMP                             ; [+1]
      148 LOADB                            R36 0
      149 MOVE                             R37 R35
      150 JUMPIFNOT                        R37 ; [+2]
      151 GETTABLEKS                       R37 R35 K52 ["isVerified"]
      153 AND                              R38 R37 R20
      154 GETTABLEKS                       R39 R2 K53 ["displayOwnership"]
      156 GETTABLEKS                       R40 R2 K54 ["displayCopy"]
      158 GETTABLEKS                       R41 R2 K55 ["displayComment"]
      160 JUMPIFNOT                        R20 ; [+2]
      161 LOADB                            R42 0
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R42 R2 K56 ["displayAssetType"]
      165 GETTABLEKS                       R43 R2 K57 ["displaySharing"]
      167 GETTABLEKS                       R44 R2 K58 ["displayAssetTypeSelection"]
      169 GETUPVAL                         R46 4
      170 NOT                              R45 R46
      171 JUMPIFNOT                        R20 ; [+3]
      172 GETTABLEKS                       R46 R2 K59 ["allowedAssetTypesForRelease"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R46
      176 GETTABLEKS                       R47 R2 K60 ["allowedAssetTypesForFree"]
      178 JUMPIFNOT                        R20 ; [+3]
      179 GETTABLEKS                       R48 R2 K61 ["newAssetStatus"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R48
      183 JUMPIFNOT                        R20 ; [+3]
      184 GETTABLEKS                       R49 R2 K62 ["currentAssetStatus"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R49
      188 JUMPIFNOT                        R20 ; [+3]
      189 GETTABLEKS                       R50 R2 K63 ["onStatusChange"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R50
      193 JUMPIFNOT                        R20 ; [+3]
      194 GETTABLEKS                       R51 R2 K64 ["price"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R51
      198 JUMPIFNOT                        R20 ; [+3]
      199 GETTABLEKS                       R52 R2 K65 ["minPrice"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R52
      203 JUMPIFNOT                        R20 ; [+3]
      204 GETTABLEKS                       R53 R2 K66 ["maxPrice"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R53
      208 JUMPIFNOT                        R20 ; [+3]
      209 GETTABLEKS                       R54 R2 K67 ["feeRate"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R54
      213 JUMPIFNOT                        R20 ; [+3]
      214 GETTABLEKS                       R55 R2 K68 ["isPriceValid"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R55
      218 JUMPIFNOT                        R20 ; [+3]
      219 GETTABLEKS                       R56 R2 K69 ["onPriceChange"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R56
      223 JUMPIFNOT                        R20 ; [+12]
      224 GETUPVAL                         R57 1
      225 GETTABLEKS                       R57 R57 K70 ["isReadyForSale"]
      227 MOVE                             R58 R48
      228 CALL                             R57 1 1
      229 JUMPIF                           R57 ; [+7]
      230 GETUPVAL                         R57 1
      231 GETTABLEKS                       R57 R57 K71 ["isBuyableMarketplaceAsset"]
      233 MOVE                             R58 R14
      234 CALL                             R57 1 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R57
      237 LOADNIL                          R58
      238 LOADNIL                          R59
      239 GETTABLEKS                       R60 R2 K72 ["Localization"]
      241 JUMPIF                           R17 ; [+3]
      242 GETUPVAL                         R61 5
      243 JUMPIFNOT                        R61 ; [+9]
      244 JUMPIFNOT                        R18 ; [+8]
      245 JUMPIF                           R15 ; [+7]
      246 JUMPIFNOT                        R10 ; [+6]
      247 LOADK                            R63 K73 ["AssetConfigCopy"]
      248 LOADK                            R64 K74 ["MustShare"]
      249 NAMECALL                         R61 R60 K75 ["getText"]
      251 CALL                             R61 3 1
      252 MOVE                             R58 R61
      253 JUMPIFNOT                        R19 ; [+6]
      254 LOADK                            R63 K76 ["AssetConfig"]
      255 LOADK                            R64 K77 ["ModelPublishWarning"]
      256 NAMECALL                         R61 R60 K75 ["getText"]
      258 CALL                             R61 3 1
      259 MOVE                             R59 R61
      260 GETUPVAL                         R61 6
      261 GETTABLEKS                       R61 R61 K78 ["new"]
      263 CALL                             R61 0 1
      264 GETTABLEKS                       R62 R1 K79 ["publishAsset"]
      266 LOADN                            R63 80
      267 JUMPIF                           R5 ; [+1]
      268 ADDK                             R63 R63 K80 [60]
      269 NEWTABLE                         R64 4 0
      271 SETTABLEKS                       R3 R64 K2 ["Size"]
      273 SETTABLEKS                       R4 R64 K3 ["LayoutOrder"]
      275 GETUPVAL                         R65 7
      276 GETTABLEKS                       R65 R65 K81 ["Ref"]
      278 GETTABLEKS                       R66 R0 K82 ["baseFrameRef"]
      280 SETTABLE                         R66 R64 R65
      281 LOADNIL                          R65
      282 GETTABLEKS                       R66 R2 K83 ["assetMediaMetadataArray"]
      284 JUMPIFNOT                        R66 ; [+3]
      285 GETTABLEKS                       R65 R2 K83 ["assetMediaMetadataArray"]
      287 JUMP                             ; [+11]
      288 GETTABLEKS                       R66 R2 K84 ["assetMediaIds"]
      290 JUMPIFEQKNIL                     R66 ; [+8]
      292 GETUPVAL                         R66 8
      293 GETTABLEKS                       R67 R2 K84 ["assetMediaIds"]
      295 DUPCLOSURE                       R68 K85 [PROTO_13]
      296 CAPTURE                          UPVAL U9
      297 CALL                             R66 2 1
      298 MOVE                             R65 R66
      299 JUMPIFNOT                        R20 ; [+7]
      300 MOVE                             R66 R57
      301 JUMPIFNOT                        R66 ; [+6]
      302 JUMPIFEQKNIL                     R34 ; [+2]
      304 LOADB                            R66 0 +1
      305 LOADB                            R66 1
      306 JUMP                             ; [+1]
      307 MOVE                             R66 R5
      308 LOADNIL                          R67
      309 LOADNIL                          R68
      310 LOADNIL                          R69
      311 LOADNIL                          R70
      312 GETUPVAL                         R71 1
      313 GETTABLEKS                       R71 R71 K86 ["isUGCBundleType"]
      315 MOVE                             R72 R14
      316 CALL                             R71 1 1
      317 MOVE                             R67 R71
      318 GETUPVAL                         R71 1
      319 GETTABLEKS                       R71 R71 K87 ["isUGCBodyBundleType"]
      321 MOVE                             R72 R14
      322 CALL                             R71 1 1
      323 JUMPIFNOT                        R71 ; [+7]
      324 LOADK                            R73 K88 ["General"]
      325 LOADK                            R74 K89 ["BodyValidation"]
      326 NAMECALL                         R71 R60 K75 ["getText"]
      328 CALL                             R71 3 1
      329 MOVE                             R68 R71
      330 JUMP                             ; [+19]
      331 GETUPVAL                         R71 1
      332 GETTABLEKS                       R71 R71 K90 ["isAnimationBundleType"]
      334 MOVE                             R72 R14
      335 CALL                             R71 1 1
      336 JUMPIFNOT                        R71 ; [+7]
      337 LOADK                            R73 K88 ["General"]
      338 LOADK                            R74 K91 ["AvatarAnimationsValidation"]
      339 NAMECALL                         R71 R60 K75 ["getText"]
      341 CALL                             R71 3 1
      342 MOVE                             R68 R71
      343 JUMP                             ; [+6]
      344 LOADK                            R73 K88 ["General"]
      345 LOADK                            R74 K92 ["ShoeValidation"]
      346 NAMECALL                         R71 R60 K75 ["getText"]
      348 CALL                             R71 3 1
      349 MOVE                             R68 R71
      350 GETTABLEKS                       R71 R2 K29 ["instances"]
      352 JUMPIFNOT                        R71 ; [+20]
      353 GETTABLEKS                       R74 R2 K29 ["instances"]
      355 GETTABLEN                        R73 R74 1
      356 GETTABLEKS                       R74 R2 K93 ["allowedBundleTypeSettings"]
      358 MOVE                             R75 R14
      359 MOVE                             R76 R1
      360 NAMECALL                         R71 R0 K94 ["getMissingOptionalPartsMessage"]
      362 CALL                             R71 5 1
      363 MOVE                             R69 R71
      364 GETTABLEKS                       R74 R2 K29 ["instances"]
      366 GETTABLEN                        R73 R74 1
      367 MOVE                             R74 R14
      368 MOVE                             R75 R1
      369 NAMECALL                         R71 R0 K95 ["getUnknownMeshPartMessage"]
      371 CALL                             R71 4 1
      372 MOVE                             R70 R71
      373 GETUPVAL                         R71 7
      374 GETTABLEKS                       R71 R71 K96 ["createElement"]
      376 GETUPVAL                         R72 10
      377 MOVE                             R73 R64
      378 DUPTABLE                         R74 K118 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "PublishToMarketplace", "DataSharingConsent", "SpecialAttribute", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      379 GETUPVAL                         R75 7
      380 GETTABLEKS                       R75 R75 K96 ["createElement"]
      382 LOADK                            R76 K119 ["UIPadding"]
      383 DUPTABLE                         R77 K124 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      384 GETIMPORT                        R78 K126 [UDim.new]
      386 LOADN                            R79 0
      387 LOADN                            R80 24
      388 CALL                             R78 2 1
      389 SETTABLEKS                       R78 R77 K120 ["PaddingTop"]
      391 GETIMPORT                        R78 K126 [UDim.new]
      393 LOADN                            R79 0
      394 LOADN                            R80 24
      395 CALL                             R78 2 1
      396 SETTABLEKS                       R78 R77 K121 ["PaddingBottom"]
      398 GETIMPORT                        R78 K126 [UDim.new]
      400 LOADN                            R79 0
      401 LOADN                            R80 24
      402 CALL                             R78 2 1
      403 SETTABLEKS                       R78 R77 K122 ["PaddingLeft"]
      405 GETIMPORT                        R78 K126 [UDim.new]
      407 LOADN                            R79 0
      408 LOADN                            R80 24
      409 CALL                             R78 2 1
      410 SETTABLEKS                       R78 R77 K123 ["PaddingRight"]
      412 CALL                             R75 2 1
      413 SETTABLEKS                       R75 R74 K97 ["Padding"]
      415 GETUPVAL                         R75 7
      416 GETTABLEKS                       R75 R75 K96 ["createElement"]
      418 LOADK                            R76 K98 ["UIListLayout"]
      419 NEWTABLE                         R77 8 0
      421 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
      423 SETTABLEKS                       R78 R77 K127 ["FillDirection"]
      425 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      427 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      429 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      431 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      433 GETIMPORT                        R78 K137 [Enum.SortOrder.LayoutOrder]
      435 SETTABLEKS                       R78 R77 K136 ["SortOrder"]
      437 GETIMPORT                        R78 K126 [UDim.new]
      439 LOADN                            R79 0
      440 LOADN                            R80 0
      441 CALL                             R78 2 1
      442 SETTABLEKS                       R78 R77 K97 ["Padding"]
      444 GETUPVAL                         R78 7
      445 GETTABLEKS                       R78 R78 K138 ["Change"]
      447 GETTABLEKS                       R78 R78 K139 ["AbsoluteContentSize"]
      449 GETTABLEKS                       R79 R0 K140 ["refreshCanvas"]
      451 JUMPIF                           R79 ; [+3]
      452 NEWCLOSURE                       R79 P1
      453 CAPTURE                          VAL R0
      454 CAPTURE                          VAL R3
      455 SETTABLE                         R79 R77 R78
      456 GETUPVAL                         R78 7
      457 GETTABLEKS                       R78 R78 K81 ["Ref"]
      459 GETTABLEKS                       R79 R0 K141 ["listLayoutRef"]
      461 SETTABLE                         R79 R77 R78
      462 CALL                             R75 2 1
      463 SETTABLEKS                       R75 R74 K98 ["UIListLayout"]
      465 JUMPIF                           R44 ; [+112]
      466 JUMPIFNOT                        R19 ; [+111]
      467 JUMPIFNOT                        R45 ; [+110]
      468 GETUPVAL                         R75 7
      469 GETTABLEKS                       R75 R75 K96 ["createElement"]
      471 GETUPVAL                         R76 11
      472 DUPTABLE                         R77 K145 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Padding"], ["Spacing"] = 5, ["VerticalAlignment"]}]
      473 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      475 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      477 GETIMPORT                        R78 K147 [Enum.FillDirection.Horizontal]
      479 SETTABLEKS                       R78 R77 K142 ["Layout"]
      481 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      483 CALL                             R78 1 1
      484 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      486 GETIMPORT                        R78 K150 [UDim2.new]
      488 LOADN                            R79 1
      489 LOADN                            R80 0
      490 LOADN                            R81 0
      491 GETUPVAL                         R82 12
      492 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      494 CALL                             R78 4 1
      495 SETTABLEKS                       R78 R77 K2 ["Size"]
      497 DUPTABLE                         R78 K154 [{["Bottom"] = 30}]
      498 SETTABLEKS                       R78 R77 K97 ["Padding"]
      500 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      502 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      504 DUPTABLE                         R78 K157 [{"Icon", "WarningText"}]
      505 GETUPVAL                         R79 7
      506 GETTABLEKS                       R79 R79 K96 ["createElement"]
      508 LOADK                            R80 K158 ["ImageLabel"]
      509 DUPTABLE                         R81 K163 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      510 GETUPVAL                         R82 13
      511 GETTABLEKS                       R82 R82 K164 ["WARNING_ICON"]
      513 SETTABLEKS                       R82 R81 K161 ["Image"]
      515 GETTABLEKS                       R82 R62 K165 ["warningIconColor"]
      517 SETTABLEKS                       R82 R81 K162 ["ImageColor3"]
      519 GETIMPORT                        R82 K167 [UDim2.fromOffset]
      521 LOADN                            R83 24
      522 LOADN                            R84 24
      523 CALL                             R82 2 1
      524 SETTABLEKS                       R82 R81 K2 ["Size"]
      526 CALL                             R79 2 1
      527 SETTABLEKS                       R79 R78 K155 ["Icon"]
      529 GETUPVAL                         R79 7
      530 GETTABLEKS                       R79 R79 K96 ["createElement"]
      532 LOADK                            R80 K168 ["TextLabel"]
      533 DUPTABLE                         R81 K179 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      534 GETIMPORT                        R82 K181 [Enum.AutomaticSize.XY]
      536 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      538 GETUPVAL                         R82 12
      539 GETTABLEKS                       R82 R82 K182 ["FONT"]
      541 SETTABLEKS                       R82 R81 K171 ["Font"]
      543 GETIMPORT                        R82 K150 [UDim2.new]
      545 LOADN                            R83 1
      546 LOADN                            R84 0
      547 LOADN                            R85 1
      548 LOADN                            R86 0
      549 CALL                             R82 4 1
      550 SETTABLEKS                       R82 R81 K2 ["Size"]
      552 SETTABLEKS                       R59 R81 K172 ["Text"]
      554 GETTABLEKS                       R82 R1 K183 ["assetConfig"]
      556 GETTABLEKS                       R82 R82 K184 ["warningColor"]
      558 SETTABLEKS                       R82 R81 K175 ["TextColor3"]
      560 GETIMPORT                        R82 K185 [Enum.TextXAlignment.Left]
      562 SETTABLEKS                       R82 R81 K176 ["TextXAlignment"]
      564 GETIMPORT                        R82 K187 [Enum.TextYAlignment.Center]
      566 SETTABLEKS                       R82 R81 K177 ["TextYAlignment"]
      568 GETUPVAL                         R82 12
      569 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      571 SETTABLEKS                       R82 R81 K178 ["TextSize"]
      573 CALL                             R79 2 1
      574 SETTABLEKS                       R79 R78 K156 ["WarningText"]
      576 CALL                             R75 3 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R75
      579 SETTABLEKS                       R75 R74 K99 ["ModelWarningFrame"]
      581 JUMPIFNOT                        R20 ; [+19]
      582 GETUPVAL                         R75 7
      583 GETTABLEKS                       R75 R75 K96 ["createElement"]
      585 GETUPVAL                         R76 14
      586 DUPTABLE                         R77 K188 [{"LayoutOrder", "Title"}]
      587 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      589 CALL                             R78 1 1
      590 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      592 LOADK                            R80 K76 ["AssetConfig"]
      593 LOADK                            R81 K189 ["PublishPluginHeader"]
      594 NAMECALL                         R78 R60 K75 ["getText"]
      596 CALL                             R78 3 1
      597 SETTABLEKS                       R78 R77 K101 ["Title"]
      599 CALL                             R75 2 1
      600 JUMP                             ; [+1]
      601 LOADNIL                          R75
      602 SETTABLEKS                       R75 R74 K100 ["Header"]
      604 GETUPVAL                         R75 7
      605 GETTABLEKS                       R75 R75 K96 ["createElement"]
      607 GETUPVAL                         R76 15
      608 DUPTABLE                         R77 K197 [{["Title"], ["TotalHeight"] = 100, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      609 LOADK                            R80 K88 ["General"]
      610 LOADK                            R81 K101 ["Title"]
      611 NAMECALL                         R78 R60 K75 ["getText"]
      613 CALL                             R78 3 1
      614 SETTABLEKS                       R78 R77 K101 ["Title"]
      616 GETUPVAL                         R78 0
      617 GETTABLEKS                       R78 R78 K198 ["NAME_CHARACTER_LIMIT"]
      619 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      621 SETTABLEKS                       R25 R77 K193 ["TextChangeCallBack"]
      623 SETTABLEKS                       R7 R77 K194 ["TextContent"]
      625 GETTABLEKS                       R78 R2 K199 ["showNameRequiredError"]
      627 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      629 NEWCLOSURE                       R78 P2
      630 CAPTURE                          VAL R0
      631 CAPTURE                          UPVAL U0
      632 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      634 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      636 CALL                             R78 1 1
      637 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      639 CALL                             R75 2 1
      640 SETTABLEKS                       R75 R74 K101 ["Title"]
      642 GETUPVAL                         R75 7
      643 GETTABLEKS                       R75 R75 K96 ["createElement"]
      645 GETUPVAL                         R76 15
      646 DUPTABLE                         R77 K202 [{["BottomRightText"], ["Title"], ["TotalHeight"] = 180, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      647 LOADK                            R80 K203 ["AssetConfigDescription"]
      648 LOADK                            R81 K204 ["AddRobloxLinks"]
      649 NAMECALL                         R78 R60 K75 ["getText"]
      651 CALL                             R78 3 1
      652 SETTABLEKS                       R78 R77 K200 ["BottomRightText"]
      654 LOADK                            R80 K88 ["General"]
      655 LOADK                            R81 K102 ["Description"]
      656 NAMECALL                         R78 R60 K75 ["getText"]
      658 CALL                             R78 3 1
      659 SETTABLEKS                       R78 R77 K101 ["Title"]
      661 GETUPVAL                         R78 0
      662 GETTABLEKS                       R78 R78 K205 ["DESCRIPTION_CHARACTER_LIMIT"]
      664 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      666 SETTABLEKS                       R26 R77 K193 ["TextChangeCallBack"]
      668 SETTABLEKS                       R8 R77 K194 ["TextContent"]
      670 GETTABLEKS                       R78 R2 K206 ["showDescriptionRequiredError"]
      672 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      674 NEWCLOSURE                       R78 P3
      675 CAPTURE                          VAL R0
      676 CAPTURE                          UPVAL U0
      677 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      679 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      681 CALL                             R78 1 1
      682 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      684 CALL                             R75 2 1
      685 SETTABLEKS                       R75 R74 K102 ["Description"]
      687 JUMPIFNOT                        R44 ; [+62]
      688 GETUPVAL                         R75 7
      689 GETTABLEKS                       R75 R75 K96 ["createElement"]
      691 GETUPVAL                         R76 16
      692 DUPTABLE                         R77 K217 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      693 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      695 CALL                             R78 1 1
      696 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      698 GETTABLEKS                       R78 R2 K207 ["dataSharingEnabled"]
      700 SETTABLEKS                       R78 R77 K207 ["dataSharingEnabled"]
      702 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
      704 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
      706 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
      708 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
      710 GETTABLEKS                       R78 R0 K218 ["state"]
      712 GETTABLEKS                       R78 R78 K210 ["validationState"]
      714 SETTABLEKS                       R78 R77 K210 ["validationState"]
      716 GETTABLEKS                       R78 R0 K218 ["state"]
      718 GETTABLEKS                       R78 R78 K211 ["validationFailureReasons"]
      720 SETTABLEKS                       R78 R77 K211 ["validationFailureReasons"]
      722 GETTABLEKS                       R78 R0 K212 ["setValidationState"]
      724 SETTABLEKS                       R78 R77 K212 ["setValidationState"]
      726 GETTABLEKS                       R78 R0 K213 ["setValidationFailureReasons"]
      728 SETTABLEKS                       R78 R77 K213 ["setValidationFailureReasons"]
      730 GETTABLEKS                       R78 R0 K218 ["state"]
      732 GETTABLEKS                       R78 R78 K214 ["ugcBundleValidationResults"]
      734 SETTABLEKS                       R78 R77 K214 ["ugcBundleValidationResults"]
      736 GETTABLEKS                       R78 R0 K215 ["setUGCBundleValidationResults"]
      738 SETTABLEKS                       R78 R77 K215 ["setUGCBundleValidationResults"]
      740 GETTABLEKS                       R78 R0 K216 ["setCurrentAssetType"]
      742 SETTABLEKS                       R78 R77 K216 ["setCurrentAssetType"]
      744 GETTABLEKS                       R78 R2 K29 ["instances"]
      746 SETTABLEKS                       R78 R77 K29 ["instances"]
      748 CALL                             R75 2 1
      749 JUMP                             ; [+1]
      750 LOADNIL                          R75
      751 SETTABLEKS                       R75 R74 K103 ["AssetTypeSelection"]
      753 JUMPIFNOT                        R44 ; [+33]
      754 JUMPIFNOT                        R39 ; [+32]
      755 GETUPVAL                         R75 7
      756 GETTABLEKS                       R75 R75 K96 ["createElement"]
      758 GETUPVAL                         R76 17
      759 DUPTABLE                         R77 K222 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      760 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      762 CALL                             R78 1 1
      763 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      765 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
      767 SETTABLEKS                       R9 R77 K8 ["owner"]
      769 GETUPVAL                         R79 18
      770 CALL                             R79 0 1
      771 JUMPIFNOT                        R79 ; [+3]
      772 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
      774 JUMP                             ; [+1]
      775 LOADNIL                          R78
      776 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
      778 LOADK                            R80 K88 ["General"]
      779 LOADK                            R81 K110 ["Ownership"]
      780 NAMECALL                         R78 R60 K75 ["getText"]
      782 CALL                             R78 3 1
      783 SETTABLEKS                       R78 R77 K101 ["Title"]
      785 CALL                             R75 2 1
      786 JUMP                             ; [+1]
      787 LOADNIL                          R75
      788 SETTABLEKS                       R75 R74 K104 ["Creator"]
      790 JUMPIFNOT                        R44 ; [+94]
      791 JUMPIFNOT                        R39 ; [+93]
      792 GETTABLEKS                       R76 R2 K223 ["showColorPicker"]
      794 JUMPIFNOT                        R76 ; [+90]
      795 GETUPVAL                         R75 7
      796 GETTABLEKS                       R75 R75 K96 ["createElement"]
      798 GETUPVAL                         R76 19
      799 GETTABLEKS                       R76 R76 K224 ["View"]
      801 DUPTABLE                         R77 K227 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      802 GETIMPORT                        R78 K150 [UDim2.new]
      804 LOADN                            R79 1
      805 LOADN                            R80 0
      806 LOADN                            R81 0
      807 LOADN                            R82 70
      808 CALL                             R78 4 1
      809 SETTABLEKS                       R78 R77 K2 ["Size"]
      811 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      813 CALL                             R78 1 1
      814 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      816 DUPTABLE                         R78 K229 [{"Title", "ColorPickerButton"}]
      817 GETUPVAL                         R79 20
      818 GETTABLEKS                       R79 R79 K96 ["createElement"]
      820 GETUPVAL                         R80 19
      821 GETTABLEKS                       R80 R80 K172 ["Text"]
      823 DUPTABLE                         R81 K230 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      824 NEWTABLE                         R82 2 0
      826 LOADB                            R83 1
      827 SETTABLEKS                       R83 R82 K231 ["text-align-x-left text-align-y-top"]
      829 LOADB                            R83 1
      830 SETTABLEKS                       R83 R82 K232 ["text-title-small content-emphasis"]
      832 SETTABLEKS                       R82 R81 K225 ["tag"]
      834 LOADK                            R84 K88 ["General"]
      835 LOADK                            R85 K233 ["ThumbnailSkinTone"]
      836 NAMECALL                         R82 R60 K75 ["getText"]
      838 CALL                             R82 3 1
      839 SETTABLEKS                       R82 R81 K172 ["Text"]
      841 GETIMPORT                        R82 K150 [UDim2.new]
      843 LOADN                            R83 0
      844 GETUPVAL                         R84 0
      845 GETTABLEKS                       R84 R84 K234 ["TITLE_GUTTER_WIDTH"]
      847 LOADN                            R85 1
      848 LOADN                            R86 0
      849 CALL                             R82 4 1
      850 SETTABLEKS                       R82 R81 K2 ["Size"]
      852 CALL                             R79 2 1
      853 SETTABLEKS                       R79 R78 K101 ["Title"]
      855 GETUPVAL                         R79 7
      856 GETTABLEKS                       R79 R79 K96 ["createElement"]
      858 GETUPVAL                         R80 21
      859 DUPTABLE                         R81 K238 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
      860 GETTABLEKS                       R82 R2 K235 ["selectedColor"]
      862 SETTABLEKS                       R82 R81 K235 ["selectedColor"]
      864 GETTABLEKS                       R82 R2 K236 ["setSelectedColor"]
      866 SETTABLEKS                       R82 R81 K236 ["setSelectedColor"]
      868 SETTABLEKS                       R60 R81 K72 ["Localization"]
      870 GETTABLEKS                       R82 R2 K239 ["showColorPickerRequiredError"]
      872 SETTABLEKS                       R82 R81 K195 ["showRequiredError"]
      874 GETTABLEKS                       R82 R1 K79 ["publishAsset"]
      876 GETTABLEKS                       R82 R82 K240 ["titleTextColor"]
      878 SETTABLEKS                       R82 R81 K237 ["textColor"]
      880 CALL                             R79 2 1
      881 SETTABLEKS                       R79 R78 K228 ["ColorPickerButton"]
      883 CALL                             R75 3 1
      884 JUMP                             ; [+1]
      885 LOADNIL                          R75
      886 SETTABLEKS                       R75 R74 K105 ["ColorPickerRow"]
      888 JUMPIFNOT                        R67 ; [+179]
      889 GETUPVAL                         R75 7
      890 GETTABLEKS                       R75 R75 K96 ["createElement"]
      892 GETUPVAL                         R76 22
      893 DUPTABLE                         R77 K241 [{"AutomaticSize", "LayoutOrder", "Title"}]
      894 GETIMPORT                        R78 K181 [Enum.AutomaticSize.XY]
      896 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
      898 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      900 CALL                             R78 1 1
      901 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      903 SETTABLEKS                       R68 R77 K101 ["Title"]
      905 DUPTABLE                         R78 K243 [{"ValidationPane"}]
      906 GETUPVAL                         R79 7
      907 GETTABLEKS                       R79 R79 K96 ["createElement"]
      909 GETUPVAL                         R80 11
      910 DUPTABLE                         R81 K245 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
      911 GETIMPORT                        R82 K247 [Enum.AutomaticSize.Y]
      913 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      915 GETIMPORT                        R82 K129 [Enum.FillDirection.Vertical]
      917 SETTABLEKS                       R82 R81 K142 ["Layout"]
      919 GETIMPORT                        R82 K249 [UDim2.fromScale]
      921 LOADN                            R83 1
      922 LOADN                            R84 0
      923 CALL                             R82 2 1
      924 SETTABLEKS                       R82 R81 K2 ["Size"]
      926 DUPTABLE                         R82 K251 [{["Bottom"] = 24}]
      927 SETTABLEKS                       R82 R81 K97 ["Padding"]
      929 DUPTABLE                         R82 K255 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      930 GETUPVAL                         R83 7
      931 GETTABLEKS                       R83 R83 K96 ["createElement"]
      933 GETUPVAL                         R84 23
      934 DUPTABLE                         R85 K259 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["allowedGroupsForUpload"], ["onAssetValidationResultChanged"]}]
      935 GETUPVAL                         R86 1
      936 GETTABLEKS                       R86 R86 K87 ["isUGCBodyBundleType"]
      938 MOVE                             R87 R14
      939 CALL                             R86 1 1
      940 SETTABLEKS                       R86 R85 K87 ["isUGCBodyBundleType"]
      942 GETUPVAL                         R86 1
      943 GETTABLEKS                       R86 R86 K90 ["isAnimationBundleType"]
      945 MOVE                             R87 R14
      946 CALL                             R86 1 1
      947 SETTABLEKS                       R86 R85 K90 ["isAnimationBundleType"]
      949 GETTABLEKS                       R86 R0 K218 ["state"]
      951 GETTABLEKS                       R86 R86 K210 ["validationState"]
      953 SETTABLEKS                       R86 R85 K210 ["validationState"]
      955 GETTABLEKS                       R86 R0 K212 ["setValidationState"]
      957 SETTABLEKS                       R86 R85 K212 ["setValidationState"]
      959 GETTABLEKS                       R86 R0 K218 ["state"]
      961 GETTABLEKS                       R86 R86 K211 ["validationFailureReasons"]
      963 SETTABLEKS                       R86 R85 K211 ["validationFailureReasons"]
      965 GETTABLEKS                       R86 R0 K213 ["setValidationFailureReasons"]
      967 SETTABLEKS                       R86 R85 K213 ["setValidationFailureReasons"]
      969 GETTABLEKS                       R86 R0 K218 ["state"]
      971 GETTABLEKS                       R86 R86 K214 ["ugcBundleValidationResults"]
      973 SETTABLEKS                       R86 R85 K256 ["validationResults"]
      975 GETTABLEKS                       R86 R0 K215 ["setUGCBundleValidationResults"]
      977 SETTABLEKS                       R86 R85 K215 ["setUGCBundleValidationResults"]
      979 GETTABLEKS                       R86 R0 K218 ["state"]
      981 GETTABLEKS                       R86 R86 K260 ["currentAssetType"]
      983 SETTABLEKS                       R86 R85 K13 ["assetTypeEnum"]
      985 GETTABLEKS                       R86 R2 K29 ["instances"]
      987 SETTABLEKS                       R86 R85 K29 ["instances"]
      989 GETTABLEKS                       R86 R2 K93 ["allowedBundleTypeSettings"]
      991 SETTABLEKS                       R86 R85 K93 ["allowedBundleTypeSettings"]
      993 GETUPVAL                         R87 24
      994 CALL                             R87 0 1
      995 JUMPIFNOT                        R87 ; [+3]
      996 GETTABLEKS                       R86 R2 K257 ["allowedGroupsForUpload"]
      998 JUMP                             ; [+1]
      999 LOADNIL                          R86
     1000 SETTABLEKS                       R86 R85 K257 ["allowedGroupsForUpload"]
     1002 GETTABLEKS                       R86 R2 K258 ["onAssetValidationResultChanged"]
     1004 SETTABLEKS                       R86 R85 K258 ["onAssetValidationResultChanged"]
     1006 CALL                             R83 2 1
     1007 SETTABLEKS                       R83 R82 K252 ["UGCBundleValidation"]
     1009 JUMPIFNOT                        R69 ; [+23]
     1010 GETUPVAL                         R83 7
     1011 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1013 GETUPVAL                         R84 11
     1014 DUPTABLE                         R85 K261 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
     1015 GETIMPORT                        R86 K247 [Enum.AutomaticSize.Y]
     1017 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1019 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1021 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1023 GETIMPORT                        R86 K249 [UDim2.fromScale]
     1025 LOADN                            R87 1
     1026 LOADN                            R88 0
     1027 CALL                             R86 2 1
     1028 SETTABLEKS                       R86 R85 K2 ["Size"]
     1030 MOVE                             R86 R69
     1031 CALL                             R83 3 1
     1032 JUMP                             ; [+1]
     1033 LOADNIL                          R83
     1034 SETTABLEKS                       R83 R82 K253 ["MissingOptionalAccessoriesMsg"]
     1036 JUMPIFNOT                        R70 ; [+23]
     1037 GETUPVAL                         R83 7
     1038 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1040 GETUPVAL                         R84 11
     1041 DUPTABLE                         R85 K263 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
     1042 GETIMPORT                        R86 K247 [Enum.AutomaticSize.Y]
     1044 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1046 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1048 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1050 GETIMPORT                        R86 K249 [UDim2.fromScale]
     1052 LOADN                            R87 1
     1053 LOADN                            R88 0
     1054 CALL                             R86 2 1
     1055 SETTABLEKS                       R86 R85 K2 ["Size"]
     1057 MOVE                             R86 R70
     1058 CALL                             R83 3 1
     1059 JUMP                             ; [+1]
     1060 LOADNIL                          R83
     1061 SETTABLEKS                       R83 R82 K254 ["UnknownMeshPartsMsgChildren"]
     1063 CALL                             R79 3 1
     1064 SETTABLEKS                       R79 R78 K242 ["ValidationPane"]
     1066 CALL                             R75 3 1
     1067 JUMP                             ; [+1]
     1068 LOADNIL                          R75
     1069 SETTABLEKS                       R75 R74 K106 ["ContentTypeBodyValidation"]
     1071 GETUPVAL                         R76 25
     1072 CALL                             R76 0 1
     1073 JUMPIFNOT                        R76 ; [+67]
     1074 GETTABLEKS                       R76 R2 K264 ["publishOnApprovalEnabled"]
     1076 JUMPIFNOT                        R76 ; [+64]
     1077 GETUPVAL                         R76 1
     1078 GETTABLEKS                       R76 R76 K265 ["canAutoPublishAvatarAssetType"]
     1080 MOVE                             R77 R14
     1081 CALL                             R76 1 1
     1082 JUMPIFNOT                        R76 ; [+58]
     1083 GETUPVAL                         R75 7
     1084 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1086 GETUPVAL                         R76 26
     1087 DUPTABLE                         R77 K271 [{"LayoutOrder", "canOptIn", "publishingFee", "publishOnApprovalToggled", "onPublishOnApprovalToggleClick", "groupId"}]
     1088 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1090 CALL                             R78 1 1
     1091 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1093 LOADB                            R78 0
     1094 GETTABLEKS                       R79 R2 K272 ["hasPublishingPreferences"]
     1096 JUMPIFNOTEQKB                    R79 TRUE ; [+7]
     1098 GETTABLEKS                       R79 R2 K273 ["hasPublishingFeePreview"]
     1100 JUMPIFEQKB                       R79 TRUE ; [+2]
     1102 LOADB                            R78 0 +1
     1103 LOADB                            R78 1
     1104 SETTABLEKS                       R78 R77 K266 ["canOptIn"]
     1106 GETTABLEKS                       R79 R2 K273 ["hasPublishingFeePreview"]
     1108 JUMPIFNOT                        R79 ; [+3]
     1109 GETTABLEKS                       R78 R2 K274 ["publishingFeePreview"]
     1111 JUMP                             ; [+1]
     1112 LOADNIL                          R78
     1113 SETTABLEKS                       R78 R77 K267 ["publishingFee"]
     1115 GETTABLEKS                       R78 R2 K268 ["publishOnApprovalToggled"]
     1117 SETTABLEKS                       R78 R77 K268 ["publishOnApprovalToggled"]
     1119 GETTABLEKS                       R78 R2 K275 ["onPublishToMarketplaceToggleClick"]
     1121 SETTABLEKS                       R78 R77 K269 ["onPublishOnApprovalToggleClick"]
     1123 GETTABLEKS                       R79 R2 K220 ["preselectedGroupId"]
     1125 JUMPIFNOT                        R79 ; [+10]
     1126 GETTABLEKS                       R79 R2 K220 ["preselectedGroupId"]
     1128 GETUPVAL                         R80 27
     1129 GETTABLEKS                       R80 R80 K276 ["None"]
     1131 JUMPIFEQ                         R79 R80 ; [+4]
     1133 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
     1135 JUMP                             ; [+1]
     1136 LOADNIL                          R78
     1137 SETTABLEKS                       R78 R77 K270 ["groupId"]
     1139 CALL                             R75 2 1
     1140 JUMP                             ; [+1]
     1141 LOADNIL                          R75
     1142 SETTABLEKS                       R75 R74 K107 ["PublishToMarketplace"]
     1144 GETTABLEKS                       R76 R2 K207 ["dataSharingEnabled"]
     1146 JUMPIFNOT                        R76 ; [+32]
     1147 GETUPVAL                         R76 1
     1148 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1150 MOVE                             R77 R14
     1151 CALL                             R76 1 1
     1152 JUMPIF                           R76 ; [+6]
     1153 GETUPVAL                         R76 1
     1154 GETTABLEKS                       R76 R76 K277 ["isCatalogAsset"]
     1156 MOVE                             R77 R14
     1157 CALL                             R76 1 1
     1158 JUMPIFNOT                        R76 ; [+20]
     1159 GETUPVAL                         R75 7
     1160 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1162 GETUPVAL                         R76 28
     1163 DUPTABLE                         R77 K278 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1164 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1166 CALL                             R78 1 1
     1167 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1169 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
     1171 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
     1173 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
     1175 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
     1177 CALL                             R75 2 1
     1178 JUMP                             ; [+1]
     1179 LOADNIL                          R75
     1180 SETTABLEKS                       R75 R74 K108 ["DataSharingConsent"]
     1182 GETUPVAL                         R76 29
     1183 CALL                             R76 0 1
     1184 JUMPIFNOT                        R76 ; [+66]
     1185 GETTABLEKS                       R76 R2 K279 ["specialAttributes"]
     1187 JUMPIFNOT                        R76 ; [+63]
     1188 GETTABLEKS                       R77 R2 K279 ["specialAttributes"]
     1190 LENGTH                           R76 R77
     1191 LOADN                            R77 0
     1192 JUMPIFNOTLT                      R77 R76 ; [+58]
     1194 GETTABLEKS                       R76 R2 K280 ["hasMetadataPermission"]
     1196 JUMPIFNOT                        R76 ; [+54]
     1197 GETUPVAL                         R76 30
     1198 CALL                             R76 0 1
     1199 JUMPIFNOT                        R76 ; [+12]
     1200 GETUPVAL                         R76 1
     1201 GETTABLEKS                       R76 R76 K277 ["isCatalogAsset"]
     1203 MOVE                             R77 R14
     1204 CALL                             R76 1 1
     1205 JUMPIF                           R76 ; [+6]
     1206 GETUPVAL                         R76 1
     1207 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1209 MOVE                             R77 R14
     1210 CALL                             R76 1 1
     1211 JUMPIFNOT                        R76 ; [+39]
     1212 GETUPVAL                         R75 20
     1213 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1215 GETUPVAL                         R76 11
     1216 DUPTABLE                         R77 K281 [{"AutomaticSize", "LayoutOrder", "Size", "Padding"}]
     1217 GETIMPORT                        R78 K247 [Enum.AutomaticSize.Y]
     1219 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1221 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1223 CALL                             R78 1 1
     1224 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1226 GETIMPORT                        R78 K249 [UDim2.fromScale]
     1228 LOADN                            R79 1
     1229 LOADN                            R80 0
     1230 CALL                             R78 2 1
     1231 SETTABLEKS                       R78 R77 K2 ["Size"]
     1233 DUPTABLE                         R78 K282 [{["Top"] = 24}]
     1234 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1236 DUPTABLE                         R78 K284 [{"Content"}]
     1237 GETUPVAL                         R79 20
     1238 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1240 GETUPVAL                         R80 31
     1241 DUPTABLE                         R81 K285 [{"specialAttributes"}]
     1242 GETTABLEKS                       R82 R2 K279 ["specialAttributes"]
     1244 SETTABLEKS                       R82 R81 K279 ["specialAttributes"]
     1246 CALL                             R79 2 1
     1247 SETTABLEKS                       R79 R78 K283 ["Content"]
     1249 CALL                             R75 3 1
     1250 JUMP                             ; [+1]
     1251 LOADNIL                          R75
     1252 SETTABLEKS                       R75 R74 K109 ["SpecialAttribute"]
     1254 JUMPIF                           R44 ; [+33]
     1255 JUMPIFNOT                        R39 ; [+32]
     1256 GETUPVAL                         R75 7
     1257 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1259 GETUPVAL                         R76 17
     1260 DUPTABLE                         R77 K286 [{["Title"], ["owner"], ["TotalHeight"] = 70, ["onDropDownSelect"], ["preselectedGroupId"], ["LayoutOrder"]}]
     1261 LOADK                            R80 K88 ["General"]
     1262 LOADK                            R81 K110 ["Ownership"]
     1263 NAMECALL                         R78 R60 K75 ["getText"]
     1265 CALL                             R78 3 1
     1266 SETTABLEKS                       R78 R77 K101 ["Title"]
     1268 SETTABLEKS                       R9 R77 K8 ["owner"]
     1270 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
     1272 GETUPVAL                         R79 18
     1273 CALL                             R79 0 1
     1274 JUMPIFNOT                        R79 ; [+3]
     1275 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
     1277 JUMP                             ; [+1]
     1278 LOADNIL                          R78
     1279 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
     1281 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1283 CALL                             R78 1 1
     1284 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1286 CALL                             R75 2 1
     1287 JUMP                             ; [+1]
     1288 LOADNIL                          R75
     1289 SETTABLEKS                       R75 R74 K110 ["Ownership"]
     1291 MOVE                             R75 R23
     1292 JUMPIFNOT                        R75 ; [+13]
     1293 GETUPVAL                         R75 20
     1294 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1296 GETUPVAL                         R76 19
     1297 GETTABLEKS                       R76 R76 K287 ["Divider"]
     1299 DUPTABLE                         R77 K288 [{"LayoutOrder"}]
     1300 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1302 CALL                             R78 1 1
     1303 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1305 CALL                             R75 2 1
     1306 SETTABLEKS                       R75 R74 K111 ["DividerBase"]
     1308 JUMPIFNOT                        R43 ; [+24]
     1309 GETUPVAL                         R75 7
     1310 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1312 GETUPVAL                         R76 32
     1313 DUPTABLE                         R77 K293 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1314 GETTABLEKS                       R78 R2 K33 ["assetId"]
     1316 SETTABLEKS                       R78 R77 K289 ["AssetId"]
     1318 SETTABLEKS                       R14 R77 K18 ["AssetType"]
     1320 SETTABLEKS                       R6 R77 K290 ["AllowSelectPrivate"]
     1322 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1324 CALL                             R78 1 1
     1325 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1327 SETTABLEKS                       R15 R77 K291 ["IsAssetPublic"]
     1329 SETTABLEKS                       R29 R77 K292 ["OnSelected"]
     1331 CALL                             R75 2 1
     1332 JUMP                             ; [+1]
     1333 LOADNIL                          R75
     1334 SETTABLEKS                       R75 R74 K112 ["Sharing"]
     1336 JUMPIFNOT                        R43 ; [+14]
     1337 GETUPVAL                         R75 20
     1338 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1340 GETUPVAL                         R76 19
     1341 GETTABLEKS                       R76 R76 K287 ["Divider"]
     1343 DUPTABLE                         R77 K288 [{"LayoutOrder"}]
     1344 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1346 CALL                             R78 1 1
     1347 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1349 CALL                             R75 2 1
     1350 JUMP                             ; [+1]
     1351 LOADNIL                          R75
     1352 SETTABLEKS                       R75 R74 K113 ["SharingDivider"]
     1354 JUMPIFNOT                        R23 ; [+106]
     1355 GETUPVAL                         R75 7
     1356 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1358 GETUPVAL                         R76 11
     1359 DUPTABLE                         R77 K294 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1360 GETIMPORT                        R78 K247 [Enum.AutomaticSize.Y]
     1362 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1364 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
     1366 SETTABLEKS                       R78 R77 K142 ["Layout"]
     1368 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1370 CALL                             R78 1 1
     1371 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1373 DUPTABLE                         R78 K296 [{["Top"] = 20}]
     1374 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1376 DUPTABLE                         R78 K299 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1377 GETUPVAL                         R79 7
     1378 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1380 GETUPVAL                         R80 33
     1381 DUPTABLE                         R81 K301 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1382 GETTABLEKS                       R82 R2 K72 ["Localization"]
     1384 LOADK                            R84 K302 ["AssetUploadResult"]
     1385 LOADK                            R85 K303 ["CreatorStoreConfigurationMessage"]
     1386 NAMECALL                         R82 R82 K75 ["getText"]
     1388 CALL                             R82 3 1
     1389 SETTABLEKS                       R82 R81 K172 ["Text"]
     1391 GETTABLEKS                       R82 R1 K304 ["uploadResult"]
     1393 GETTABLEKS                       R82 R82 K305 ["text"]
     1395 SETTABLEKS                       R82 R81 K300 ["TextColor"]
     1397 GETUPVAL                         R82 12
     1398 GETTABLEKS                       R82 R82 K306 ["FONT_SIZE_LARGE"]
     1400 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1402 GETIMPORT                        R82 K150 [UDim2.new]
     1404 LOADN                            R83 1
     1405 LOADN                            R84 0
     1406 LOADN                            R85 0
     1407 LOADN                            R86 24
     1408 CALL                             R82 4 1
     1409 SETTABLEKS                       R82 R81 K2 ["Size"]
     1411 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1413 CALL                             R82 1 1
     1414 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1416 CALL                             R79 2 1
     1417 SETTABLEKS                       R79 R78 K297 ["CreatorStoreConfigurationText"]
     1419 GETUPVAL                         R79 7
     1420 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1422 GETUPVAL                         R80 34
     1423 DUPTABLE                         R81 K308 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1424 SETTABLEKS                       R24 R81 K172 ["Text"]
     1426 GETTABLEKS                       R82 R1 K304 ["uploadResult"]
     1428 GETTABLEKS                       R82 R82 K309 ["link"]
     1430 SETTABLEKS                       R82 R81 K300 ["TextColor"]
     1432 GETUPVAL                         R82 12
     1433 GETTABLEKS                       R82 R82 K306 ["FONT_SIZE_LARGE"]
     1435 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1437 GETIMPORT                        R82 K150 [UDim2.new]
     1439 LOADN                            R83 1
     1440 LOADN                            R84 0
     1441 LOADN                            R85 0
     1442 LOADN                            R86 24
     1443 CALL                             R82 4 1
     1444 SETTABLEKS                       R82 R81 K2 ["Size"]
     1446 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1448 CALL                             R82 1 1
     1449 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1451 NEWCLOSURE                       R82 P4
     1452 CAPTURE                          UPVAL U35
     1453 CAPTURE                          VAL R24
     1454 SETTABLEKS                       R82 R81 K307 ["OnClick"]
     1456 CALL                             R79 2 1
     1457 SETTABLEKS                       R79 R78 K298 ["CreatorStoreConfigurationLink"]
     1459 CALL                             R75 3 1
     1460 JUMP                             ; [+1]
     1461 LOADNIL                          R75
     1462 SETTABLEKS                       R75 R74 K114 ["CreatorStoreConfigurationFrame"]
     1464 MOVE                             R75 R41
     1465 JUMPIFNOT                        R75 ; [+24]
     1466 GETUPVAL                         R75 7
     1467 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1469 GETUPVAL                         R76 36
     1470 DUPTABLE                         R77 K314 [{["Title"], ["TotalHeight"] = 80, ["CommentEnabled"], ["CommentOn"], ["ToggleCallback"], ["LayoutOrder"]}]
     1471 LOADK                            R80 K88 ["General"]
     1472 LOADK                            R81 K315 ["Comments"]
     1473 NAMECALL                         R78 R60 K75 ["getText"]
     1475 CALL                             R78 3 1
     1476 SETTABLEKS                       R78 R77 K101 ["Title"]
     1478 SETTABLEKS                       R11 R77 K311 ["CommentEnabled"]
     1480 SETTABLEKS                       R12 R77 K312 ["CommentOn"]
     1482 SETTABLEKS                       R31 R77 K313 ["ToggleCallback"]
     1484 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1486 CALL                             R78 1 1
     1487 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1489 CALL                             R75 2 1
     1490 SETTABLEKS                       R75 R74 K115 ["Comment"]
     1492 MOVE                             R75 R21
     1493 JUMPIFNOT                        R75 ; [+28]
     1494 GETUPVAL                         R75 7
     1495 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1497 GETUPVAL                         R76 37
     1498 DUPTABLE                         R77 K316 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1499 LOADK                            R80 K88 ["General"]
     1500 LOADK                            R81 K116 ["DeleteLocal"]
     1501 NAMECALL                         R78 R60 K75 ["getText"]
     1503 CALL                             R78 3 1
     1504 SETTABLEKS                       R78 R77 K101 ["Title"]
     1506 JUMPIFNOT                        R21 ; [+2]
     1507 LOADN                            R78 120
     1508 JUMP                             ; [+1]
     1509 LOADN                            R78 80
     1510 SETTABLEKS                       R78 R77 K190 ["TotalHeight"]
     1512 SETTABLEKS                       R13 R77 K116 ["DeleteLocal"]
     1514 SETTABLEKS                       R32 R77 K313 ["ToggleCallback"]
     1516 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1518 CALL                             R78 1 1
     1519 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1521 CALL                             R75 2 1
     1522 SETTABLEKS                       R75 R74 K116 ["DeleteLocal"]
     1524 MOVE                             R75 R22
     1525 JUMPIFNOT                        R75 ; [+57]
     1526 GETUPVAL                         R75 20
     1527 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1529 GETUPVAL                         R76 19
     1530 GETTABLEKS                       R76 R76 K224 ["View"]
     1532 DUPTABLE                         R77 K318 [{["tag"] = "col auto-xy padding-top-xlarge", ["LayoutOrder"]}]
     1533 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1535 CALL                             R78 1 1
     1536 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1538 DUPTABLE                         R78 K320 [{"Section"}]
     1539 GETUPVAL                         R79 20
     1540 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1542 GETUPVAL                         R80 22
     1543 DUPTABLE                         R81 K322 [{["LayoutOrder"] = 1, ["Title"], ["AutomaticContentHeight"] = True, ["Size"]}]
     1544 LOADK                            R84 K88 ["General"]
     1545 LOADK                            R85 K323 ["AnimationSectionTitle"]
     1546 NAMECALL                         R82 R60 K75 ["getText"]
     1548 CALL                             R82 3 1
     1549 SETTABLEKS                       R82 R81 K101 ["Title"]
     1551 GETIMPORT                        R82 K150 [UDim2.new]
     1553 LOADN                            R83 1
     1554 LOADN                            R84 0
     1555 LOADN                            R85 0
     1556 LOADN                            R86 0
     1557 CALL                             R82 4 1
     1558 SETTABLEKS                       R82 R81 K2 ["Size"]
     1560 DUPTABLE                         R82 K325 [{"AnimationCheckboxCol"}]
     1561 GETUPVAL                         R83 20
     1562 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1564 GETUPVAL                         R84 38
     1565 DUPTABLE                         R85 K328 [{["LayoutOrder"] = 1, ["Localization"], ["OnSelectionChanged"], ["OnSectionValidityChanged"]}]
     1566 SETTABLEKS                       R60 R85 K72 ["Localization"]
     1568 GETTABLEKS                       R86 R2 K329 ["onAnimationSelectionChanged"]
     1570 SETTABLEKS                       R86 R85 K326 ["OnSelectionChanged"]
     1572 GETTABLEKS                       R86 R2 K330 ["onanimationSectionValidityChanged"]
     1574 SETTABLEKS                       R86 R85 K327 ["OnSectionValidityChanged"]
     1576 CALL                             R83 2 1
     1577 SETTABLEKS                       R83 R82 K324 ["AnimationCheckboxCol"]
     1579 CALL                             R79 3 1
     1580 SETTABLEKS                       R79 R78 K319 ["Section"]
     1582 CALL                             R75 3 1
     1583 SETTABLEKS                       R75 R74 K117 ["AnimationPackProperties"]
     1585 CALL                             R71 3 -1
     1586 RETURN                           R71 -1

PROTO_19:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K7 [{"publishingRequirements", "assetMediaIds", "assetMediaMetadataArray", "sellerStatusData", "instances", "allowedBundleTypeSettings", "allowedGroupsForUpload"}]
        6 GETTABLEKS                       R2 R0 K0 ["publishingRequirements"]
        8 SETTABLEKS                       R2 R1 K0 ["publishingRequirements"]
       10 GETTABLEKS                       R2 R0 K1 ["assetMediaIds"]
       12 SETTABLEKS                       R2 R1 K1 ["assetMediaIds"]
       14 GETTABLEKS                       R2 R0 K2 ["assetMediaMetadataArray"]
       16 SETTABLEKS                       R2 R1 K2 ["assetMediaMetadataArray"]
       18 GETUPVAL                         R3 0
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETTABLEKS                       R2 R0 K3 ["sellerStatusData"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K3 ["sellerStatusData"]
       27 GETTABLEKS                       R2 R0 K4 ["instances"]
       29 SETTABLEKS                       R2 R1 K4 ["instances"]
       31 GETTABLEKS                       R2 R0 K5 ["allowedBundleTypeSettings"]
       33 SETTABLEKS                       R2 R1 K5 ["allowedBundleTypeSettings"]
       35 GETUPVAL                         R3 1
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+3]
       38 GETTABLEKS                       R2 R0 K6 ["allowedGroupsForUpload"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K6 ["allowedGroupsForUpload"]
       44 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["SIDE_TABS"]
        5 GETTABLEKS                       R4 R4 K1 ["General"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K2 [{"setFieldError", "onAssetValidationResultChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["setFieldError"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["onAssetValidationResultChanged"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R2 K8 ["Util"]
       21 GETTABLEKS                       R3 R1 K9 ["Packages"]
       23 GETIMPORT                        R4 K11 [require]
       25 GETTABLEKS                       R5 R3 K12 ["Cryo"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R3 K13 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K11 [require]
       35 GETTABLEKS                       R7 R3 K14 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K1 [game]
       40 LOADK                            R9 K15 ["ToolboxVideoConfigSharing2"]
       41 NAMECALL                         R7 R7 K16 ["GetFastFlag"]
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K11 [require]
       46 GETTABLEKS                       R9 R1 K7 ["Src"]
       48 GETTABLEKS                       R9 R9 K8 ["Util"]
       50 GETTABLEKS                       R9 R9 K17 ["SharedFlags"]
       52 GETTABLEKS                       R9 R9 K18 ["getFFlagToolboxEnableFiatFully"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K11 [require]
       57 GETTABLEKS                       R10 R1 K7 ["Src"]
       59 GETTABLEKS                       R10 R10 K8 ["Util"]
       61 GETTABLEKS                       R10 R10 K17 ["SharedFlags"]
       63 GETTABLEKS                       R10 R10 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K1 [game]
       68 LOADK                            R12 K20 ["ToolboxRemoveRestrictedAssetWarning2"]
       69 NAMECALL                         R10 R10 K16 ["GetFastFlag"]
       71 CALL                             R10 2 1
       72 GETIMPORT                        R11 K11 [require]
       74 GETTABLEKS                       R12 R3 K21 ["React"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K11 [require]
       79 GETTABLEKS                       R13 R3 K22 ["Roact"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K11 [require]
       84 GETTABLEKS                       R14 R3 K23 ["RoactRodux"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K11 [require]
       89 GETTABLEKS                       R15 R3 K13 ["Framework"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R14 R14 K24 ["ContextServices"]
       94 GETTABLEKS                       R15 R14 K25 ["withContext"]
       96 GETTABLEKS                       R16 R5 K26 ["UI"]
       98 GETTABLEKS                       R17 R16 K27 ["MultiImagePickerWrapper"]
      100 GETTABLEKS                       R18 R16 K28 ["TextLabel"]
      102 GETTABLEKS                       R19 R16 K29 ["TitledFrame"]
      104 GETTABLEKS                       R20 R16 K30 ["BulletList"]
      106 GETTABLEKS                       R21 R16 K31 ["LinkText"]
      108 GETTABLEKS                       R22 R16 K32 ["Pane"]
      110 GETIMPORT                        R23 K11 [require]
      112 GETTABLEKS                       R24 R1 K7 ["Src"]
      114 GETTABLEKS                       R24 R24 K33 ["Components"]
      116 GETTABLEKS                       R24 R24 K34 ["StyledScrollingFrame"]
      118 CALL                             R23 1 1
      119 GETIMPORT                        R24 K11 [require]
      121 GETTABLEKS                       R25 R3 K35 ["Dash"]
      123 CALL                             R24 1 1
      124 GETTABLEKS                       R25 R24 K36 ["map"]
      126 GETIMPORT                        R26 K11 [require]
      128 GETTABLEKS                       R27 R2 K37 ["createAssetMediaMetadata"]
      130 CALL                             R26 1 1
      131 GETIMPORT                        R27 K11 [require]
      133 GETTABLEKS                       R28 R2 K38 ["LayoutOrderIterator"]
      135 CALL                             R27 1 1
      136 GETIMPORT                        R28 K11 [require]
      138 GETTABLEKS                       R29 R2 K39 ["AssetConfigConstants"]
      140 CALL                             R28 1 1
      141 GETIMPORT                        R29 K11 [require]
      143 GETTABLEKS                       R30 R2 K40 ["AssetConfigUtil"]
      145 CALL                             R29 1 1
      146 GETIMPORT                        R30 K11 [require]
      148 GETTABLEKS                       R31 R2 K41 ["Constants"]
      150 CALL                             R30 1 1
      151 GETIMPORT                        R31 K11 [require]
      153 GETTABLEKS                       R32 R1 K7 ["Src"]
      155 GETTABLEKS                       R32 R32 K8 ["Util"]
      157 GETTABLEKS                       R32 R32 K42 ["Images"]
      159 CALL                             R31 1 1
      160 GETIMPORT                        R32 K11 [require]
      162 GETTABLEKS                       R33 R1 K7 ["Src"]
      164 GETTABLEKS                       R33 R33 K43 ["Localization"]
      166 GETTABLEKS                       R33 R33 K44 ["getLocalizedAssetTextMap"]
      168 CALL                             R32 1 1
      169 GETIMPORT                        R33 K11 [require]
      171 GETTABLEKS                       R34 R2 K45 ["ToolboxUtilities"]
      173 CALL                             R33 1 1
      174 GETIMPORT                        R34 K11 [require]
      176 GETTABLEKS                       R35 R2 K46 ["FiatTempConstants"]
      178 CALL                             R34 1 1
      179 GETIMPORT                        R35 K11 [require]
      181 GETTABLEKS                       R36 R2 K47 ["Urls"]
      183 CALL                             R35 1 1
      184 GETTABLEKS                       R36 R1 K7 ["Src"]
      186 GETTABLEKS                       R36 R36 K33 ["Components"]
      188 GETTABLEKS                       R36 R36 K48 ["AssetConfiguration"]
      190 GETIMPORT                        R37 K11 [require]
      192 GETTABLEKS                       R38 R1 K7 ["Src"]
      194 GETTABLEKS                       R38 R38 K49 ["Actions"]
      196 GETTABLEKS                       R38 R38 K50 ["SetUploadAssetValidationStatus"]
      198 CALL                             R37 1 1
      199 GETIMPORT                        R38 K11 [require]
      201 GETTABLEKS                       R39 R36 K51 ["ConfigTextField"]
      203 CALL                             R38 1 1
      204 GETIMPORT                        R39 K11 [require]
      206 GETTABLEKS                       R40 R36 K52 ["ConfigAccess"]
      208 CALL                             R39 1 1
      209 GETIMPORT                        R40 K11 [require]
      211 GETTABLEKS                       R41 R36 K53 ["ConfigDeleteLocal"]
      213 CALL                             R40 1 1
      214 GETIMPORT                        R41 K11 [require]
      216 GETTABLEKS                       R42 R36 K54 ["ConfigCopy"]
      218 CALL                             R41 1 1
      219 GETIMPORT                        R42 K11 [require]
      221 GETTABLEKS                       R43 R36 K55 ["ConfigAssetType"]
      223 CALL                             R42 1 1
      224 GETIMPORT                        R43 K11 [require]
      226 GETTABLEKS                       R44 R36 K56 ["PublishToMarketplaceToggle"]
      228 CALL                             R43 1 1
      229 GETIMPORT                        R44 K11 [require]
      231 GETTABLEKS                       R45 R36 K57 ["ConfigComment"]
      233 CALL                             R44 1 1
      234 GETIMPORT                        R45 K11 [require]
      236 GETTABLEKS                       R46 R36 K58 ["ConfigSharing"]
      238 CALL                             R45 1 1
      239 GETIMPORT                        R46 K11 [require]
      241 GETTABLEKS                       R47 R36 K59 ["ConfigSectionWrapper"]
      243 CALL                             R46 1 1
      244 GETIMPORT                        R47 K11 [require]
      246 GETTABLEKS                       R48 R36 K60 ["Header"]
      248 CALL                             R47 1 1
      249 GETIMPORT                        R48 K11 [require]
      251 GETTABLEKS                       R49 R36 K61 ["AnimationCheckboxCol"]
      253 CALL                             R48 1 1
      254 GETIMPORT                        R49 K11 [require]
      256 GETTABLEKS                       R50 R36 K62 ["FiatPriceComponent"]
      258 CALL                             R49 1 1
      259 GETIMPORT                        R50 K11 [require]
      261 GETTABLEKS                       R51 R36 K63 ["DataConsentToggle"]
      263 CALL                             R50 1 1
      264 GETIMPORT                        R51 K11 [require]
      266 GETTABLEKS                       R52 R36 K64 ["SpecialAttributeSection"]
      268 CALL                             R51 1 1
      269 GETIMPORT                        R52 K11 [require]
      271 GETTABLEKS                       R53 R36 K65 ["UGCBundleValidation"]
      273 CALL                             R52 1 1
      274 GETIMPORT                        R53 K11 [require]
      276 GETTABLEKS                       R54 R1 K7 ["Src"]
      278 GETTABLEKS                       R54 R54 K8 ["Util"]
      280 GETTABLEKS                       R54 R54 K66 ["ColorPicker"]
      282 CALL                             R53 1 1
      283 GETIMPORT                        R54 K11 [require]
      285 GETTABLEKS                       R55 R1 K7 ["Src"]
      287 GETTABLEKS                       R55 R55 K67 ["Flags"]
      289 GETTABLEKS                       R55 R55 K68 ["getFFlagToolboxPublishOnApproval"]
      291 CALL                             R54 1 1
      292 GETIMPORT                        R55 K11 [require]
      294 GETTABLEKS                       R56 R1 K7 ["Src"]
      296 GETTABLEKS                       R56 R56 K67 ["Flags"]
      298 GETTABLEKS                       R56 R56 K69 ["getFFlagToolboxAssetConfigGroupOwnership"]
      300 CALL                             R55 1 1
      301 GETIMPORT                        R56 K11 [require]
      303 GETTABLEKS                       R57 R1 K7 ["Src"]
      305 GETTABLEKS                       R57 R57 K67 ["Flags"]
      307 GETTABLEKS                       R57 R57 K70 ["getToolboxUGCValidationViaAQSEnabled"]
      309 CALL                             R56 1 1
      310 GETIMPORT                        R57 K11 [require]
      312 GETTABLEKS                       R58 R1 K7 ["Src"]
      314 GETTABLEKS                       R58 R58 K67 ["Flags"]
      316 GETTABLEKS                       R58 R58 K71 ["getFFlagToolboxDynamicUploadFee"]
      318 CALL                             R57 1 1
      319 GETIMPORT                        R58 K11 [require]
      321 GETTABLEKS                       R59 R1 K7 ["Src"]
      323 GETTABLEKS                       R59 R59 K67 ["Flags"]
      325 GETTABLEKS                       R59 R59 K72 ["getFFlagToolboxHideSpecialAttributeForNonAvatarItems"]
      327 CALL                             R58 1 1
      328 GETIMPORT                        R59 K11 [require]
      330 GETTABLEKS                       R60 R1 K7 ["Src"]
      332 GETTABLEKS                       R60 R60 K73 ["Types"]
      334 GETTABLEKS                       R60 R60 K74 ["MarketplaceFiatServiceTypes"]
      336 CALL                             R59 1 1
      337 GETIMPORT                        R60 K11 [require]
      339 GETTABLEKS                       R61 R1 K7 ["Src"]
      341 GETTABLEKS                       R61 R61 K49 ["Actions"]
      343 GETTABLEKS                       R61 R61 K75 ["SetFieldError"]
      345 CALL                             R60 1 1
      346 GETIMPORT                        R61 K11 [require]
      348 GETTABLEKS                       R62 R1 K7 ["Src"]
      350 GETTABLEKS                       R62 R62 K8 ["Util"]
      352 GETTABLEKS                       R62 R62 K76 ["PageInfoHelper"]
      354 CALL                             R61 1 1
      355 GETTABLEKS                       R62 R12 K77 ["PureComponent"]
      357 LOADK                            R64 K78 ["PublishAsset"]
      358 NAMECALL                         R62 R62 K79 ["extend"]
      360 CALL                             R62 2 1
      361 DUPCLOSURE                       R63 K80 [PROTO_9]
      362 CAPTURE                          VAL R28
      363 CAPTURE                          VAL R12
      364 CAPTURE                          VAL R0
      365 CAPTURE                          VAL R33
      366 CAPTURE                          VAL R9
      367 SETTABLEKS                       R63 R62 K81 ["init"]
      369 DUPCLOSURE                       R63 K82 [PROTO_10]
      370 SETTABLEKS                       R63 R62 K83 ["bumpCanvas"]
      372 DUPCLOSURE                       R63 K84 [PROTO_11]
      373 CAPTURE                          VAL R29
      374 CAPTURE                          VAL R27
      375 CAPTURE                          VAL R11
      376 CAPTURE                          VAL R6
      377 CAPTURE                          VAL R32
      378 SETTABLEKS                       R63 R62 K85 ["getMissingOptionalPartsMessage"]
      380 DUPCLOSURE                       R63 K86 [PROTO_12]
      381 CAPTURE                          VAL R29
      382 CAPTURE                          VAL R27
      383 CAPTURE                          VAL R11
      384 CAPTURE                          VAL R6
      385 SETTABLEKS                       R63 R62 K87 ["getUnknownMeshPartMessage"]
      387 DUPCLOSURE                       R63 K88 [PROTO_18]
      388 CAPTURE                          VAL R28
      389 CAPTURE                          VAL R29
      390 CAPTURE                          VAL R35
      391 CAPTURE                          VAL R33
      392 CAPTURE                          VAL R10
      393 CAPTURE                          VAL R7
      394 CAPTURE                          VAL R27
      395 CAPTURE                          VAL R12
      396 CAPTURE                          VAL R25
      397 CAPTURE                          VAL R26
      398 CAPTURE                          VAL R23
      399 CAPTURE                          VAL R22
      400 CAPTURE                          VAL R30
      401 CAPTURE                          VAL R31
      402 CAPTURE                          VAL R47
      403 CAPTURE                          VAL R38
      404 CAPTURE                          VAL R42
      405 CAPTURE                          VAL R39
      406 CAPTURE                          VAL R55
      407 CAPTURE                          VAL R6
      408 CAPTURE                          VAL R11
      409 CAPTURE                          VAL R53
      410 CAPTURE                          VAL R46
      411 CAPTURE                          VAL R52
      412 CAPTURE                          VAL R56
      413 CAPTURE                          VAL R54
      414 CAPTURE                          VAL R43
      415 CAPTURE                          VAL R4
      416 CAPTURE                          VAL R50
      417 CAPTURE                          VAL R57
      418 CAPTURE                          VAL R58
      419 CAPTURE                          VAL R51
      420 CAPTURE                          VAL R45
      421 CAPTURE                          VAL R18
      422 CAPTURE                          VAL R21
      423 CAPTURE                          VAL R0
      424 CAPTURE                          VAL R44
      425 CAPTURE                          VAL R40
      426 CAPTURE                          VAL R48
      427 SETTABLEKS                       R63 R62 K89 ["render"]
      429 DUPCLOSURE                       R63 K90 [PROTO_19]
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R56
      432 DUPCLOSURE                       R64 K91 [PROTO_22]
      433 CAPTURE                          VAL R60
      434 CAPTURE                          VAL R28
      435 CAPTURE                          VAL R37
      436 MOVE                             R65 R15
      437 DUPTABLE                         R66 K93 [{"Localization", "Stylizer"}]
      438 GETTABLEKS                       R67 R14 K43 ["Localization"]
      440 SETTABLEKS                       R67 R66 K43 ["Localization"]
      442 GETTABLEKS                       R67 R14 K92 ["Stylizer"]
      444 SETTABLEKS                       R67 R66 K92 ["Stylizer"]
      446 CALL                             R65 1 1
      447 MOVE                             R66 R62
      448 CALL                             R65 1 1
      449 MOVE                             R62 R65
      450 GETTABLEKS                       R65 R13 K94 ["connect"]
      452 MOVE                             R66 R63
      453 MOVE                             R67 R64
      454 CALL                             R65 2 1
      455 MOVE                             R66 R62
      456 CALL                             R65 1 -1
      457 RETURN                           R65 -1
