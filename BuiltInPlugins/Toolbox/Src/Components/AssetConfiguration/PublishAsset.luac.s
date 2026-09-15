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
      330 JUMP                             ; [+22]
      331 GETUPVAL                         R71 10
      332 CALL                             R71 0 1
      333 JUMPIFNOT                        R71 ; [+13]
      334 GETUPVAL                         R71 1
      335 GETTABLEKS                       R71 R71 K90 ["isAnimationBundleType"]
      337 MOVE                             R72 R14
      338 CALL                             R71 1 1
      339 JUMPIFNOT                        R71 ; [+7]
      340 LOADK                            R73 K88 ["General"]
      341 LOADK                            R74 K91 ["AvatarAnimationsValidation"]
      342 NAMECALL                         R71 R60 K75 ["getText"]
      344 CALL                             R71 3 1
      345 MOVE                             R68 R71
      346 JUMP                             ; [+6]
      347 LOADK                            R73 K88 ["General"]
      348 LOADK                            R74 K92 ["ShoeValidation"]
      349 NAMECALL                         R71 R60 K75 ["getText"]
      351 CALL                             R71 3 1
      352 MOVE                             R68 R71
      353 GETTABLEKS                       R71 R2 K29 ["instances"]
      355 JUMPIFNOT                        R71 ; [+20]
      356 GETTABLEKS                       R74 R2 K29 ["instances"]
      358 GETTABLEN                        R73 R74 1
      359 GETTABLEKS                       R74 R2 K93 ["allowedBundleTypeSettings"]
      361 MOVE                             R75 R14
      362 MOVE                             R76 R1
      363 NAMECALL                         R71 R0 K94 ["getMissingOptionalPartsMessage"]
      365 CALL                             R71 5 1
      366 MOVE                             R69 R71
      367 GETTABLEKS                       R74 R2 K29 ["instances"]
      369 GETTABLEN                        R73 R74 1
      370 MOVE                             R74 R14
      371 MOVE                             R75 R1
      372 NAMECALL                         R71 R0 K95 ["getUnknownMeshPartMessage"]
      374 CALL                             R71 4 1
      375 MOVE                             R70 R71
      376 GETUPVAL                         R71 7
      377 GETTABLEKS                       R71 R71 K96 ["createElement"]
      379 GETUPVAL                         R72 11
      380 MOVE                             R73 R64
      381 DUPTABLE                         R74 K118 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "PublishToMarketplace", "DataSharingConsent", "SpecialAttribute", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      382 GETUPVAL                         R75 7
      383 GETTABLEKS                       R75 R75 K96 ["createElement"]
      385 LOADK                            R76 K119 ["UIPadding"]
      386 DUPTABLE                         R77 K124 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      387 GETIMPORT                        R78 K126 [UDim.new]
      389 LOADN                            R79 0
      390 LOADN                            R80 24
      391 CALL                             R78 2 1
      392 SETTABLEKS                       R78 R77 K120 ["PaddingTop"]
      394 GETIMPORT                        R78 K126 [UDim.new]
      396 LOADN                            R79 0
      397 LOADN                            R80 24
      398 CALL                             R78 2 1
      399 SETTABLEKS                       R78 R77 K121 ["PaddingBottom"]
      401 GETIMPORT                        R78 K126 [UDim.new]
      403 LOADN                            R79 0
      404 LOADN                            R80 24
      405 CALL                             R78 2 1
      406 SETTABLEKS                       R78 R77 K122 ["PaddingLeft"]
      408 GETIMPORT                        R78 K126 [UDim.new]
      410 LOADN                            R79 0
      411 LOADN                            R80 24
      412 CALL                             R78 2 1
      413 SETTABLEKS                       R78 R77 K123 ["PaddingRight"]
      415 CALL                             R75 2 1
      416 SETTABLEKS                       R75 R74 K97 ["Padding"]
      418 GETUPVAL                         R75 7
      419 GETTABLEKS                       R75 R75 K96 ["createElement"]
      421 LOADK                            R76 K98 ["UIListLayout"]
      422 NEWTABLE                         R77 8 0
      424 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
      426 SETTABLEKS                       R78 R77 K127 ["FillDirection"]
      428 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      430 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      432 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      434 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      436 GETIMPORT                        R78 K137 [Enum.SortOrder.LayoutOrder]
      438 SETTABLEKS                       R78 R77 K136 ["SortOrder"]
      440 GETIMPORT                        R78 K126 [UDim.new]
      442 LOADN                            R79 0
      443 LOADN                            R80 0
      444 CALL                             R78 2 1
      445 SETTABLEKS                       R78 R77 K97 ["Padding"]
      447 GETUPVAL                         R78 7
      448 GETTABLEKS                       R78 R78 K138 ["Change"]
      450 GETTABLEKS                       R78 R78 K139 ["AbsoluteContentSize"]
      452 GETTABLEKS                       R79 R0 K140 ["refreshCanvas"]
      454 JUMPIF                           R79 ; [+3]
      455 NEWCLOSURE                       R79 P1
      456 CAPTURE                          VAL R0
      457 CAPTURE                          VAL R3
      458 SETTABLE                         R79 R77 R78
      459 GETUPVAL                         R78 7
      460 GETTABLEKS                       R78 R78 K81 ["Ref"]
      462 GETTABLEKS                       R79 R0 K141 ["listLayoutRef"]
      464 SETTABLE                         R79 R77 R78
      465 CALL                             R75 2 1
      466 SETTABLEKS                       R75 R74 K98 ["UIListLayout"]
      468 JUMPIF                           R44 ; [+112]
      469 JUMPIFNOT                        R19 ; [+111]
      470 JUMPIFNOT                        R45 ; [+110]
      471 GETUPVAL                         R75 7
      472 GETTABLEKS                       R75 R75 K96 ["createElement"]
      474 GETUPVAL                         R76 12
      475 DUPTABLE                         R77 K145 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Padding"], ["Spacing"] = 5, ["VerticalAlignment"]}]
      476 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      478 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      480 GETIMPORT                        R78 K147 [Enum.FillDirection.Horizontal]
      482 SETTABLEKS                       R78 R77 K142 ["Layout"]
      484 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      486 CALL                             R78 1 1
      487 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      489 GETIMPORT                        R78 K150 [UDim2.new]
      491 LOADN                            R79 1
      492 LOADN                            R80 0
      493 LOADN                            R81 0
      494 GETUPVAL                         R82 13
      495 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      497 CALL                             R78 4 1
      498 SETTABLEKS                       R78 R77 K2 ["Size"]
      500 DUPTABLE                         R78 K154 [{["Bottom"] = 30}]
      501 SETTABLEKS                       R78 R77 K97 ["Padding"]
      503 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      505 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      507 DUPTABLE                         R78 K157 [{"Icon", "WarningText"}]
      508 GETUPVAL                         R79 7
      509 GETTABLEKS                       R79 R79 K96 ["createElement"]
      511 LOADK                            R80 K158 ["ImageLabel"]
      512 DUPTABLE                         R81 K163 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      513 GETUPVAL                         R82 14
      514 GETTABLEKS                       R82 R82 K164 ["WARNING_ICON"]
      516 SETTABLEKS                       R82 R81 K161 ["Image"]
      518 GETTABLEKS                       R82 R62 K165 ["warningIconColor"]
      520 SETTABLEKS                       R82 R81 K162 ["ImageColor3"]
      522 GETIMPORT                        R82 K167 [UDim2.fromOffset]
      524 LOADN                            R83 24
      525 LOADN                            R84 24
      526 CALL                             R82 2 1
      527 SETTABLEKS                       R82 R81 K2 ["Size"]
      529 CALL                             R79 2 1
      530 SETTABLEKS                       R79 R78 K155 ["Icon"]
      532 GETUPVAL                         R79 7
      533 GETTABLEKS                       R79 R79 K96 ["createElement"]
      535 LOADK                            R80 K168 ["TextLabel"]
      536 DUPTABLE                         R81 K179 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      537 GETIMPORT                        R82 K181 [Enum.AutomaticSize.XY]
      539 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      541 GETUPVAL                         R82 13
      542 GETTABLEKS                       R82 R82 K182 ["FONT"]
      544 SETTABLEKS                       R82 R81 K171 ["Font"]
      546 GETIMPORT                        R82 K150 [UDim2.new]
      548 LOADN                            R83 1
      549 LOADN                            R84 0
      550 LOADN                            R85 1
      551 LOADN                            R86 0
      552 CALL                             R82 4 1
      553 SETTABLEKS                       R82 R81 K2 ["Size"]
      555 SETTABLEKS                       R59 R81 K172 ["Text"]
      557 GETTABLEKS                       R82 R1 K183 ["assetConfig"]
      559 GETTABLEKS                       R82 R82 K184 ["warningColor"]
      561 SETTABLEKS                       R82 R81 K175 ["TextColor3"]
      563 GETIMPORT                        R82 K185 [Enum.TextXAlignment.Left]
      565 SETTABLEKS                       R82 R81 K176 ["TextXAlignment"]
      567 GETIMPORT                        R82 K187 [Enum.TextYAlignment.Center]
      569 SETTABLEKS                       R82 R81 K177 ["TextYAlignment"]
      571 GETUPVAL                         R82 13
      572 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      574 SETTABLEKS                       R82 R81 K178 ["TextSize"]
      576 CALL                             R79 2 1
      577 SETTABLEKS                       R79 R78 K156 ["WarningText"]
      579 CALL                             R75 3 1
      580 JUMP                             ; [+1]
      581 LOADNIL                          R75
      582 SETTABLEKS                       R75 R74 K99 ["ModelWarningFrame"]
      584 JUMPIFNOT                        R20 ; [+19]
      585 GETUPVAL                         R75 7
      586 GETTABLEKS                       R75 R75 K96 ["createElement"]
      588 GETUPVAL                         R76 15
      589 DUPTABLE                         R77 K188 [{"LayoutOrder", "Title"}]
      590 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      592 CALL                             R78 1 1
      593 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      595 LOADK                            R80 K76 ["AssetConfig"]
      596 LOADK                            R81 K189 ["PublishPluginHeader"]
      597 NAMECALL                         R78 R60 K75 ["getText"]
      599 CALL                             R78 3 1
      600 SETTABLEKS                       R78 R77 K101 ["Title"]
      602 CALL                             R75 2 1
      603 JUMP                             ; [+1]
      604 LOADNIL                          R75
      605 SETTABLEKS                       R75 R74 K100 ["Header"]
      607 GETUPVAL                         R75 7
      608 GETTABLEKS                       R75 R75 K96 ["createElement"]
      610 GETUPVAL                         R76 16
      611 DUPTABLE                         R77 K197 [{["Title"], ["TotalHeight"] = 100, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      612 LOADK                            R80 K88 ["General"]
      613 LOADK                            R81 K101 ["Title"]
      614 NAMECALL                         R78 R60 K75 ["getText"]
      616 CALL                             R78 3 1
      617 SETTABLEKS                       R78 R77 K101 ["Title"]
      619 GETUPVAL                         R78 0
      620 GETTABLEKS                       R78 R78 K198 ["NAME_CHARACTER_LIMIT"]
      622 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      624 SETTABLEKS                       R25 R77 K193 ["TextChangeCallBack"]
      626 SETTABLEKS                       R7 R77 K194 ["TextContent"]
      628 GETTABLEKS                       R78 R2 K199 ["showNameRequiredError"]
      630 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      632 NEWCLOSURE                       R78 P2
      633 CAPTURE                          VAL R0
      634 CAPTURE                          UPVAL U0
      635 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      637 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      639 CALL                             R78 1 1
      640 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      642 CALL                             R75 2 1
      643 SETTABLEKS                       R75 R74 K101 ["Title"]
      645 GETUPVAL                         R75 7
      646 GETTABLEKS                       R75 R75 K96 ["createElement"]
      648 GETUPVAL                         R76 16
      649 DUPTABLE                         R77 K202 [{["BottomRightText"], ["Title"], ["TotalHeight"] = 180, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      650 LOADK                            R80 K203 ["AssetConfigDescription"]
      651 LOADK                            R81 K204 ["AddRobloxLinks"]
      652 NAMECALL                         R78 R60 K75 ["getText"]
      654 CALL                             R78 3 1
      655 SETTABLEKS                       R78 R77 K200 ["BottomRightText"]
      657 LOADK                            R80 K88 ["General"]
      658 LOADK                            R81 K102 ["Description"]
      659 NAMECALL                         R78 R60 K75 ["getText"]
      661 CALL                             R78 3 1
      662 SETTABLEKS                       R78 R77 K101 ["Title"]
      664 GETUPVAL                         R78 0
      665 GETTABLEKS                       R78 R78 K205 ["DESCRIPTION_CHARACTER_LIMIT"]
      667 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      669 SETTABLEKS                       R26 R77 K193 ["TextChangeCallBack"]
      671 SETTABLEKS                       R8 R77 K194 ["TextContent"]
      673 GETTABLEKS                       R78 R2 K206 ["showDescriptionRequiredError"]
      675 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      677 NEWCLOSURE                       R78 P3
      678 CAPTURE                          VAL R0
      679 CAPTURE                          UPVAL U0
      680 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      682 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      684 CALL                             R78 1 1
      685 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      687 CALL                             R75 2 1
      688 SETTABLEKS                       R75 R74 K102 ["Description"]
      690 JUMPIFNOT                        R44 ; [+62]
      691 GETUPVAL                         R75 7
      692 GETTABLEKS                       R75 R75 K96 ["createElement"]
      694 GETUPVAL                         R76 17
      695 DUPTABLE                         R77 K217 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      696 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      698 CALL                             R78 1 1
      699 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      701 GETTABLEKS                       R78 R2 K207 ["dataSharingEnabled"]
      703 SETTABLEKS                       R78 R77 K207 ["dataSharingEnabled"]
      705 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
      707 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
      709 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
      711 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
      713 GETTABLEKS                       R78 R0 K218 ["state"]
      715 GETTABLEKS                       R78 R78 K210 ["validationState"]
      717 SETTABLEKS                       R78 R77 K210 ["validationState"]
      719 GETTABLEKS                       R78 R0 K218 ["state"]
      721 GETTABLEKS                       R78 R78 K211 ["validationFailureReasons"]
      723 SETTABLEKS                       R78 R77 K211 ["validationFailureReasons"]
      725 GETTABLEKS                       R78 R0 K212 ["setValidationState"]
      727 SETTABLEKS                       R78 R77 K212 ["setValidationState"]
      729 GETTABLEKS                       R78 R0 K213 ["setValidationFailureReasons"]
      731 SETTABLEKS                       R78 R77 K213 ["setValidationFailureReasons"]
      733 GETTABLEKS                       R78 R0 K218 ["state"]
      735 GETTABLEKS                       R78 R78 K214 ["ugcBundleValidationResults"]
      737 SETTABLEKS                       R78 R77 K214 ["ugcBundleValidationResults"]
      739 GETTABLEKS                       R78 R0 K215 ["setUGCBundleValidationResults"]
      741 SETTABLEKS                       R78 R77 K215 ["setUGCBundleValidationResults"]
      743 GETTABLEKS                       R78 R0 K216 ["setCurrentAssetType"]
      745 SETTABLEKS                       R78 R77 K216 ["setCurrentAssetType"]
      747 GETTABLEKS                       R78 R2 K29 ["instances"]
      749 SETTABLEKS                       R78 R77 K29 ["instances"]
      751 CALL                             R75 2 1
      752 JUMP                             ; [+1]
      753 LOADNIL                          R75
      754 SETTABLEKS                       R75 R74 K103 ["AssetTypeSelection"]
      756 JUMPIFNOT                        R44 ; [+33]
      757 JUMPIFNOT                        R39 ; [+32]
      758 GETUPVAL                         R75 7
      759 GETTABLEKS                       R75 R75 K96 ["createElement"]
      761 GETUPVAL                         R76 18
      762 DUPTABLE                         R77 K222 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      763 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      765 CALL                             R78 1 1
      766 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      768 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
      770 SETTABLEKS                       R9 R77 K8 ["owner"]
      772 GETUPVAL                         R79 19
      773 CALL                             R79 0 1
      774 JUMPIFNOT                        R79 ; [+3]
      775 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
      777 JUMP                             ; [+1]
      778 LOADNIL                          R78
      779 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
      781 LOADK                            R80 K88 ["General"]
      782 LOADK                            R81 K110 ["Ownership"]
      783 NAMECALL                         R78 R60 K75 ["getText"]
      785 CALL                             R78 3 1
      786 SETTABLEKS                       R78 R77 K101 ["Title"]
      788 CALL                             R75 2 1
      789 JUMP                             ; [+1]
      790 LOADNIL                          R75
      791 SETTABLEKS                       R75 R74 K104 ["Creator"]
      793 JUMPIFNOT                        R44 ; [+94]
      794 JUMPIFNOT                        R39 ; [+93]
      795 GETTABLEKS                       R76 R2 K223 ["showColorPicker"]
      797 JUMPIFNOT                        R76 ; [+90]
      798 GETUPVAL                         R75 7
      799 GETTABLEKS                       R75 R75 K96 ["createElement"]
      801 GETUPVAL                         R76 20
      802 GETTABLEKS                       R76 R76 K224 ["View"]
      804 DUPTABLE                         R77 K227 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      805 GETIMPORT                        R78 K150 [UDim2.new]
      807 LOADN                            R79 1
      808 LOADN                            R80 0
      809 LOADN                            R81 0
      810 LOADN                            R82 70
      811 CALL                             R78 4 1
      812 SETTABLEKS                       R78 R77 K2 ["Size"]
      814 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      816 CALL                             R78 1 1
      817 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      819 DUPTABLE                         R78 K229 [{"Title", "ColorPickerButton"}]
      820 GETUPVAL                         R79 21
      821 GETTABLEKS                       R79 R79 K96 ["createElement"]
      823 GETUPVAL                         R80 20
      824 GETTABLEKS                       R80 R80 K172 ["Text"]
      826 DUPTABLE                         R81 K230 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      827 NEWTABLE                         R82 2 0
      829 LOADB                            R83 1
      830 SETTABLEKS                       R83 R82 K231 ["text-align-x-left text-align-y-top"]
      832 LOADB                            R83 1
      833 SETTABLEKS                       R83 R82 K232 ["text-title-small content-emphasis"]
      835 SETTABLEKS                       R82 R81 K225 ["tag"]
      837 LOADK                            R84 K88 ["General"]
      838 LOADK                            R85 K233 ["ThumbnailSkinTone"]
      839 NAMECALL                         R82 R60 K75 ["getText"]
      841 CALL                             R82 3 1
      842 SETTABLEKS                       R82 R81 K172 ["Text"]
      844 GETIMPORT                        R82 K150 [UDim2.new]
      846 LOADN                            R83 0
      847 GETUPVAL                         R84 0
      848 GETTABLEKS                       R84 R84 K234 ["TITLE_GUTTER_WIDTH"]
      850 LOADN                            R85 1
      851 LOADN                            R86 0
      852 CALL                             R82 4 1
      853 SETTABLEKS                       R82 R81 K2 ["Size"]
      855 CALL                             R79 2 1
      856 SETTABLEKS                       R79 R78 K101 ["Title"]
      858 GETUPVAL                         R79 7
      859 GETTABLEKS                       R79 R79 K96 ["createElement"]
      861 GETUPVAL                         R80 22
      862 DUPTABLE                         R81 K238 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
      863 GETTABLEKS                       R82 R2 K235 ["selectedColor"]
      865 SETTABLEKS                       R82 R81 K235 ["selectedColor"]
      867 GETTABLEKS                       R82 R2 K236 ["setSelectedColor"]
      869 SETTABLEKS                       R82 R81 K236 ["setSelectedColor"]
      871 SETTABLEKS                       R60 R81 K72 ["Localization"]
      873 GETTABLEKS                       R82 R2 K239 ["showColorPickerRequiredError"]
      875 SETTABLEKS                       R82 R81 K195 ["showRequiredError"]
      877 GETTABLEKS                       R82 R1 K79 ["publishAsset"]
      879 GETTABLEKS                       R82 R82 K240 ["titleTextColor"]
      881 SETTABLEKS                       R82 R81 K237 ["textColor"]
      883 CALL                             R79 2 1
      884 SETTABLEKS                       R79 R78 K228 ["ColorPickerButton"]
      886 CALL                             R75 3 1
      887 JUMP                             ; [+1]
      888 LOADNIL                          R75
      889 SETTABLEKS                       R75 R74 K105 ["ColorPickerRow"]
      891 JUMPIFNOT                        R67 ; [+175]
      892 GETUPVAL                         R75 7
      893 GETTABLEKS                       R75 R75 K96 ["createElement"]
      895 GETUPVAL                         R76 23
      896 DUPTABLE                         R77 K241 [{"AutomaticSize", "LayoutOrder", "Title"}]
      897 GETIMPORT                        R78 K181 [Enum.AutomaticSize.XY]
      899 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
      901 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      903 CALL                             R78 1 1
      904 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      906 SETTABLEKS                       R68 R77 K101 ["Title"]
      908 DUPTABLE                         R78 K243 [{"ValidationPane"}]
      909 GETUPVAL                         R79 7
      910 GETTABLEKS                       R79 R79 K96 ["createElement"]
      912 GETUPVAL                         R80 12
      913 DUPTABLE                         R81 K245 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
      914 GETIMPORT                        R82 K247 [Enum.AutomaticSize.Y]
      916 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      918 GETIMPORT                        R82 K129 [Enum.FillDirection.Vertical]
      920 SETTABLEKS                       R82 R81 K142 ["Layout"]
      922 GETIMPORT                        R82 K249 [UDim2.fromScale]
      924 LOADN                            R83 1
      925 LOADN                            R84 0
      926 CALL                             R82 2 1
      927 SETTABLEKS                       R82 R81 K2 ["Size"]
      929 DUPTABLE                         R82 K251 [{["Bottom"] = 24}]
      930 SETTABLEKS                       R82 R81 K97 ["Padding"]
      932 DUPTABLE                         R82 K255 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      933 GETUPVAL                         R83 7
      934 GETTABLEKS                       R83 R83 K96 ["createElement"]
      936 GETUPVAL                         R84 24
      937 DUPTABLE                         R85 K258 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["onAssetValidationResultChanged"]}]
      938 GETUPVAL                         R86 1
      939 GETTABLEKS                       R86 R86 K87 ["isUGCBodyBundleType"]
      941 MOVE                             R87 R14
      942 CALL                             R86 1 1
      943 SETTABLEKS                       R86 R85 K87 ["isUGCBodyBundleType"]
      945 GETUPVAL                         R87 10
      946 CALL                             R87 0 1
      947 JUMPIFNOT                        R87 ; [+6]
      948 GETUPVAL                         R86 1
      949 GETTABLEKS                       R86 R86 K90 ["isAnimationBundleType"]
      951 MOVE                             R87 R14
      952 CALL                             R86 1 1
      953 JUMP                             ; [+1]
      954 LOADNIL                          R86
      955 SETTABLEKS                       R86 R85 K90 ["isAnimationBundleType"]
      957 GETTABLEKS                       R86 R0 K218 ["state"]
      959 GETTABLEKS                       R86 R86 K210 ["validationState"]
      961 SETTABLEKS                       R86 R85 K210 ["validationState"]
      963 GETTABLEKS                       R86 R0 K212 ["setValidationState"]
      965 SETTABLEKS                       R86 R85 K212 ["setValidationState"]
      967 GETTABLEKS                       R86 R0 K218 ["state"]
      969 GETTABLEKS                       R86 R86 K211 ["validationFailureReasons"]
      971 SETTABLEKS                       R86 R85 K211 ["validationFailureReasons"]
      973 GETTABLEKS                       R86 R0 K213 ["setValidationFailureReasons"]
      975 SETTABLEKS                       R86 R85 K213 ["setValidationFailureReasons"]
      977 GETTABLEKS                       R86 R0 K218 ["state"]
      979 GETTABLEKS                       R86 R86 K214 ["ugcBundleValidationResults"]
      981 SETTABLEKS                       R86 R85 K256 ["validationResults"]
      983 GETTABLEKS                       R86 R0 K215 ["setUGCBundleValidationResults"]
      985 SETTABLEKS                       R86 R85 K215 ["setUGCBundleValidationResults"]
      987 GETTABLEKS                       R86 R0 K218 ["state"]
      989 GETTABLEKS                       R86 R86 K259 ["currentAssetType"]
      991 SETTABLEKS                       R86 R85 K13 ["assetTypeEnum"]
      993 GETTABLEKS                       R86 R2 K29 ["instances"]
      995 SETTABLEKS                       R86 R85 K29 ["instances"]
      997 GETTABLEKS                       R86 R2 K93 ["allowedBundleTypeSettings"]
      999 SETTABLEKS                       R86 R85 K93 ["allowedBundleTypeSettings"]
     1001 GETTABLEKS                       R86 R2 K257 ["onAssetValidationResultChanged"]
     1003 SETTABLEKS                       R86 R85 K257 ["onAssetValidationResultChanged"]
     1005 CALL                             R83 2 1
     1006 SETTABLEKS                       R83 R82 K252 ["UGCBundleValidation"]
     1008 JUMPIFNOT                        R69 ; [+23]
     1009 GETUPVAL                         R83 7
     1010 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1012 GETUPVAL                         R84 12
     1013 DUPTABLE                         R85 K260 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
     1014 GETIMPORT                        R86 K247 [Enum.AutomaticSize.Y]
     1016 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1018 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1020 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1022 GETIMPORT                        R86 K249 [UDim2.fromScale]
     1024 LOADN                            R87 1
     1025 LOADN                            R88 0
     1026 CALL                             R86 2 1
     1027 SETTABLEKS                       R86 R85 K2 ["Size"]
     1029 MOVE                             R86 R69
     1030 CALL                             R83 3 1
     1031 JUMP                             ; [+1]
     1032 LOADNIL                          R83
     1033 SETTABLEKS                       R83 R82 K253 ["MissingOptionalAccessoriesMsg"]
     1035 JUMPIFNOT                        R70 ; [+23]
     1036 GETUPVAL                         R83 7
     1037 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1039 GETUPVAL                         R84 12
     1040 DUPTABLE                         R85 K262 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
     1041 GETIMPORT                        R86 K247 [Enum.AutomaticSize.Y]
     1043 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1045 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1047 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1049 GETIMPORT                        R86 K249 [UDim2.fromScale]
     1051 LOADN                            R87 1
     1052 LOADN                            R88 0
     1053 CALL                             R86 2 1
     1054 SETTABLEKS                       R86 R85 K2 ["Size"]
     1056 MOVE                             R86 R70
     1057 CALL                             R83 3 1
     1058 JUMP                             ; [+1]
     1059 LOADNIL                          R83
     1060 SETTABLEKS                       R83 R82 K254 ["UnknownMeshPartsMsgChildren"]
     1062 CALL                             R79 3 1
     1063 SETTABLEKS                       R79 R78 K242 ["ValidationPane"]
     1065 CALL                             R75 3 1
     1066 JUMP                             ; [+1]
     1067 LOADNIL                          R75
     1068 SETTABLEKS                       R75 R74 K106 ["ContentTypeBodyValidation"]
     1070 GETUPVAL                         R76 25
     1071 CALL                             R76 0 1
     1072 JUMPIFNOT                        R76 ; [+67]
     1073 GETTABLEKS                       R76 R2 K263 ["publishOnApprovalEnabled"]
     1075 JUMPIFNOT                        R76 ; [+64]
     1076 GETUPVAL                         R76 1
     1077 GETTABLEKS                       R76 R76 K264 ["canAutoPublishAvatarAssetType"]
     1079 MOVE                             R77 R14
     1080 CALL                             R76 1 1
     1081 JUMPIFNOT                        R76 ; [+58]
     1082 GETUPVAL                         R75 7
     1083 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1085 GETUPVAL                         R76 26
     1086 DUPTABLE                         R77 K270 [{"LayoutOrder", "canOptIn", "publishingFee", "publishOnApprovalToggled", "onPublishOnApprovalToggleClick", "groupId"}]
     1087 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1089 CALL                             R78 1 1
     1090 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1092 LOADB                            R78 0
     1093 GETTABLEKS                       R79 R2 K271 ["hasPublishingPreferences"]
     1095 JUMPIFNOTEQKB                    R79 TRUE ; [+7]
     1097 GETTABLEKS                       R79 R2 K272 ["hasPublishingFeePreview"]
     1099 JUMPIFEQKB                       R79 TRUE ; [+2]
     1101 LOADB                            R78 0 +1
     1102 LOADB                            R78 1
     1103 SETTABLEKS                       R78 R77 K265 ["canOptIn"]
     1105 GETTABLEKS                       R79 R2 K272 ["hasPublishingFeePreview"]
     1107 JUMPIFNOT                        R79 ; [+3]
     1108 GETTABLEKS                       R78 R2 K273 ["publishingFeePreview"]
     1110 JUMP                             ; [+1]
     1111 LOADNIL                          R78
     1112 SETTABLEKS                       R78 R77 K266 ["publishingFee"]
     1114 GETTABLEKS                       R78 R2 K267 ["publishOnApprovalToggled"]
     1116 SETTABLEKS                       R78 R77 K267 ["publishOnApprovalToggled"]
     1118 GETTABLEKS                       R78 R2 K274 ["onPublishToMarketplaceToggleClick"]
     1120 SETTABLEKS                       R78 R77 K268 ["onPublishOnApprovalToggleClick"]
     1122 GETTABLEKS                       R79 R2 K220 ["preselectedGroupId"]
     1124 JUMPIFNOT                        R79 ; [+10]
     1125 GETTABLEKS                       R79 R2 K220 ["preselectedGroupId"]
     1127 GETUPVAL                         R80 27
     1128 GETTABLEKS                       R80 R80 K275 ["None"]
     1130 JUMPIFEQ                         R79 R80 ; [+4]
     1132 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
     1134 JUMP                             ; [+1]
     1135 LOADNIL                          R78
     1136 SETTABLEKS                       R78 R77 K269 ["groupId"]
     1138 CALL                             R75 2 1
     1139 JUMP                             ; [+1]
     1140 LOADNIL                          R75
     1141 SETTABLEKS                       R75 R74 K107 ["PublishToMarketplace"]
     1143 GETTABLEKS                       R76 R2 K207 ["dataSharingEnabled"]
     1145 JUMPIFNOT                        R76 ; [+32]
     1146 GETUPVAL                         R76 1
     1147 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1149 MOVE                             R77 R14
     1150 CALL                             R76 1 1
     1151 JUMPIF                           R76 ; [+6]
     1152 GETUPVAL                         R76 1
     1153 GETTABLEKS                       R76 R76 K276 ["isCatalogAsset"]
     1155 MOVE                             R77 R14
     1156 CALL                             R76 1 1
     1157 JUMPIFNOT                        R76 ; [+20]
     1158 GETUPVAL                         R75 7
     1159 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1161 GETUPVAL                         R76 28
     1162 DUPTABLE                         R77 K277 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1163 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1165 CALL                             R78 1 1
     1166 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1168 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
     1170 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
     1172 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
     1174 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
     1176 CALL                             R75 2 1
     1177 JUMP                             ; [+1]
     1178 LOADNIL                          R75
     1179 SETTABLEKS                       R75 R74 K108 ["DataSharingConsent"]
     1181 GETUPVAL                         R76 29
     1182 CALL                             R76 0 1
     1183 JUMPIFNOT                        R76 ; [+66]
     1184 GETTABLEKS                       R76 R2 K278 ["specialAttributes"]
     1186 JUMPIFNOT                        R76 ; [+63]
     1187 GETTABLEKS                       R77 R2 K278 ["specialAttributes"]
     1189 LENGTH                           R76 R77
     1190 LOADN                            R77 0
     1191 JUMPIFNOTLT                      R77 R76 ; [+58]
     1193 GETTABLEKS                       R76 R2 K279 ["hasMetadataPermission"]
     1195 JUMPIFNOT                        R76 ; [+54]
     1196 GETUPVAL                         R76 30
     1197 CALL                             R76 0 1
     1198 JUMPIFNOT                        R76 ; [+12]
     1199 GETUPVAL                         R76 1
     1200 GETTABLEKS                       R76 R76 K276 ["isCatalogAsset"]
     1202 MOVE                             R77 R14
     1203 CALL                             R76 1 1
     1204 JUMPIF                           R76 ; [+6]
     1205 GETUPVAL                         R76 1
     1206 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1208 MOVE                             R77 R14
     1209 CALL                             R76 1 1
     1210 JUMPIFNOT                        R76 ; [+39]
     1211 GETUPVAL                         R75 21
     1212 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1214 GETUPVAL                         R76 12
     1215 DUPTABLE                         R77 K280 [{"AutomaticSize", "LayoutOrder", "Size", "Padding"}]
     1216 GETIMPORT                        R78 K247 [Enum.AutomaticSize.Y]
     1218 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1220 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1222 CALL                             R78 1 1
     1223 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1225 GETIMPORT                        R78 K249 [UDim2.fromScale]
     1227 LOADN                            R79 1
     1228 LOADN                            R80 0
     1229 CALL                             R78 2 1
     1230 SETTABLEKS                       R78 R77 K2 ["Size"]
     1232 DUPTABLE                         R78 K281 [{["Top"] = 24}]
     1233 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1235 DUPTABLE                         R78 K283 [{"Content"}]
     1236 GETUPVAL                         R79 21
     1237 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1239 GETUPVAL                         R80 31
     1240 DUPTABLE                         R81 K284 [{"specialAttributes"}]
     1241 GETTABLEKS                       R82 R2 K278 ["specialAttributes"]
     1243 SETTABLEKS                       R82 R81 K278 ["specialAttributes"]
     1245 CALL                             R79 2 1
     1246 SETTABLEKS                       R79 R78 K282 ["Content"]
     1248 CALL                             R75 3 1
     1249 JUMP                             ; [+1]
     1250 LOADNIL                          R75
     1251 SETTABLEKS                       R75 R74 K109 ["SpecialAttribute"]
     1253 JUMPIF                           R44 ; [+33]
     1254 JUMPIFNOT                        R39 ; [+32]
     1255 GETUPVAL                         R75 7
     1256 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1258 GETUPVAL                         R76 18
     1259 DUPTABLE                         R77 K285 [{["Title"], ["owner"], ["TotalHeight"] = 70, ["onDropDownSelect"], ["preselectedGroupId"], ["LayoutOrder"]}]
     1260 LOADK                            R80 K88 ["General"]
     1261 LOADK                            R81 K110 ["Ownership"]
     1262 NAMECALL                         R78 R60 K75 ["getText"]
     1264 CALL                             R78 3 1
     1265 SETTABLEKS                       R78 R77 K101 ["Title"]
     1267 SETTABLEKS                       R9 R77 K8 ["owner"]
     1269 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
     1271 GETUPVAL                         R79 19
     1272 CALL                             R79 0 1
     1273 JUMPIFNOT                        R79 ; [+3]
     1274 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
     1276 JUMP                             ; [+1]
     1277 LOADNIL                          R78
     1278 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
     1280 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1282 CALL                             R78 1 1
     1283 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1285 CALL                             R75 2 1
     1286 JUMP                             ; [+1]
     1287 LOADNIL                          R75
     1288 SETTABLEKS                       R75 R74 K110 ["Ownership"]
     1290 MOVE                             R75 R23
     1291 JUMPIFNOT                        R75 ; [+13]
     1292 GETUPVAL                         R75 21
     1293 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1295 GETUPVAL                         R76 20
     1296 GETTABLEKS                       R76 R76 K286 ["Divider"]
     1298 DUPTABLE                         R77 K287 [{"LayoutOrder"}]
     1299 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1301 CALL                             R78 1 1
     1302 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1304 CALL                             R75 2 1
     1305 SETTABLEKS                       R75 R74 K111 ["DividerBase"]
     1307 JUMPIFNOT                        R43 ; [+24]
     1308 GETUPVAL                         R75 7
     1309 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1311 GETUPVAL                         R76 32
     1312 DUPTABLE                         R77 K292 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1313 GETTABLEKS                       R78 R2 K33 ["assetId"]
     1315 SETTABLEKS                       R78 R77 K288 ["AssetId"]
     1317 SETTABLEKS                       R14 R77 K18 ["AssetType"]
     1319 SETTABLEKS                       R6 R77 K289 ["AllowSelectPrivate"]
     1321 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1323 CALL                             R78 1 1
     1324 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1326 SETTABLEKS                       R15 R77 K290 ["IsAssetPublic"]
     1328 SETTABLEKS                       R29 R77 K291 ["OnSelected"]
     1330 CALL                             R75 2 1
     1331 JUMP                             ; [+1]
     1332 LOADNIL                          R75
     1333 SETTABLEKS                       R75 R74 K112 ["Sharing"]
     1335 JUMPIFNOT                        R43 ; [+14]
     1336 GETUPVAL                         R75 21
     1337 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1339 GETUPVAL                         R76 20
     1340 GETTABLEKS                       R76 R76 K286 ["Divider"]
     1342 DUPTABLE                         R77 K287 [{"LayoutOrder"}]
     1343 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1345 CALL                             R78 1 1
     1346 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1348 CALL                             R75 2 1
     1349 JUMP                             ; [+1]
     1350 LOADNIL                          R75
     1351 SETTABLEKS                       R75 R74 K113 ["SharingDivider"]
     1353 JUMPIFNOT                        R23 ; [+106]
     1354 GETUPVAL                         R75 7
     1355 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1357 GETUPVAL                         R76 12
     1358 DUPTABLE                         R77 K293 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1359 GETIMPORT                        R78 K247 [Enum.AutomaticSize.Y]
     1361 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1363 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
     1365 SETTABLEKS                       R78 R77 K142 ["Layout"]
     1367 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1369 CALL                             R78 1 1
     1370 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1372 DUPTABLE                         R78 K295 [{["Top"] = 20}]
     1373 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1375 DUPTABLE                         R78 K298 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1376 GETUPVAL                         R79 7
     1377 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1379 GETUPVAL                         R80 33
     1380 DUPTABLE                         R81 K300 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1381 GETTABLEKS                       R82 R2 K72 ["Localization"]
     1383 LOADK                            R84 K301 ["AssetUploadResult"]
     1384 LOADK                            R85 K302 ["CreatorStoreConfigurationMessage"]
     1385 NAMECALL                         R82 R82 K75 ["getText"]
     1387 CALL                             R82 3 1
     1388 SETTABLEKS                       R82 R81 K172 ["Text"]
     1390 GETTABLEKS                       R82 R1 K303 ["uploadResult"]
     1392 GETTABLEKS                       R82 R82 K304 ["text"]
     1394 SETTABLEKS                       R82 R81 K299 ["TextColor"]
     1396 GETUPVAL                         R82 13
     1397 GETTABLEKS                       R82 R82 K305 ["FONT_SIZE_LARGE"]
     1399 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1401 GETIMPORT                        R82 K150 [UDim2.new]
     1403 LOADN                            R83 1
     1404 LOADN                            R84 0
     1405 LOADN                            R85 0
     1406 LOADN                            R86 24
     1407 CALL                             R82 4 1
     1408 SETTABLEKS                       R82 R81 K2 ["Size"]
     1410 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1412 CALL                             R82 1 1
     1413 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1415 CALL                             R79 2 1
     1416 SETTABLEKS                       R79 R78 K296 ["CreatorStoreConfigurationText"]
     1418 GETUPVAL                         R79 7
     1419 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1421 GETUPVAL                         R80 34
     1422 DUPTABLE                         R81 K307 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1423 SETTABLEKS                       R24 R81 K172 ["Text"]
     1425 GETTABLEKS                       R82 R1 K303 ["uploadResult"]
     1427 GETTABLEKS                       R82 R82 K308 ["link"]
     1429 SETTABLEKS                       R82 R81 K299 ["TextColor"]
     1431 GETUPVAL                         R82 13
     1432 GETTABLEKS                       R82 R82 K305 ["FONT_SIZE_LARGE"]
     1434 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1436 GETIMPORT                        R82 K150 [UDim2.new]
     1438 LOADN                            R83 1
     1439 LOADN                            R84 0
     1440 LOADN                            R85 0
     1441 LOADN                            R86 24
     1442 CALL                             R82 4 1
     1443 SETTABLEKS                       R82 R81 K2 ["Size"]
     1445 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1447 CALL                             R82 1 1
     1448 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1450 NEWCLOSURE                       R82 P4
     1451 CAPTURE                          UPVAL U35
     1452 CAPTURE                          VAL R24
     1453 SETTABLEKS                       R82 R81 K306 ["OnClick"]
     1455 CALL                             R79 2 1
     1456 SETTABLEKS                       R79 R78 K297 ["CreatorStoreConfigurationLink"]
     1458 CALL                             R75 3 1
     1459 JUMP                             ; [+1]
     1460 LOADNIL                          R75
     1461 SETTABLEKS                       R75 R74 K114 ["CreatorStoreConfigurationFrame"]
     1463 MOVE                             R75 R41
     1464 JUMPIFNOT                        R75 ; [+24]
     1465 GETUPVAL                         R75 7
     1466 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1468 GETUPVAL                         R76 36
     1469 DUPTABLE                         R77 K313 [{["Title"], ["TotalHeight"] = 80, ["CommentEnabled"], ["CommentOn"], ["ToggleCallback"], ["LayoutOrder"]}]
     1470 LOADK                            R80 K88 ["General"]
     1471 LOADK                            R81 K314 ["Comments"]
     1472 NAMECALL                         R78 R60 K75 ["getText"]
     1474 CALL                             R78 3 1
     1475 SETTABLEKS                       R78 R77 K101 ["Title"]
     1477 SETTABLEKS                       R11 R77 K310 ["CommentEnabled"]
     1479 SETTABLEKS                       R12 R77 K311 ["CommentOn"]
     1481 SETTABLEKS                       R31 R77 K312 ["ToggleCallback"]
     1483 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1485 CALL                             R78 1 1
     1486 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1488 CALL                             R75 2 1
     1489 SETTABLEKS                       R75 R74 K115 ["Comment"]
     1491 MOVE                             R75 R21
     1492 JUMPIFNOT                        R75 ; [+31]
     1493 GETUPVAL                         R75 7
     1494 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1496 GETUPVAL                         R76 37
     1497 DUPTABLE                         R77 K315 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1498 LOADK                            R80 K88 ["General"]
     1499 LOADK                            R81 K116 ["DeleteLocal"]
     1500 NAMECALL                         R78 R60 K75 ["getText"]
     1502 CALL                             R78 3 1
     1503 SETTABLEKS                       R78 R77 K101 ["Title"]
     1505 GETUPVAL                         R79 10
     1506 CALL                             R79 0 1
     1507 JUMPIFNOT                        R79 ; [+3]
     1508 JUMPIFNOT                        R21 ; [+2]
     1509 LOADN                            R78 120
     1510 JUMP                             ; [+1]
     1511 LOADN                            R78 80
     1512 SETTABLEKS                       R78 R77 K190 ["TotalHeight"]
     1514 SETTABLEKS                       R13 R77 K116 ["DeleteLocal"]
     1516 SETTABLEKS                       R32 R77 K312 ["ToggleCallback"]
     1518 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1520 CALL                             R78 1 1
     1521 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1523 CALL                             R75 2 1
     1524 SETTABLEKS                       R75 R74 K116 ["DeleteLocal"]
     1526 GETUPVAL                         R75 10
     1527 CALL                             R75 0 1
     1528 JUMPIFNOT                        R75 ; [+59]
     1529 MOVE                             R75 R22
     1530 JUMPIFNOT                        R75 ; [+57]
     1531 GETUPVAL                         R75 21
     1532 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1534 GETUPVAL                         R76 20
     1535 GETTABLEKS                       R76 R76 K224 ["View"]
     1537 DUPTABLE                         R77 K317 [{["tag"] = "col auto-xy padding-top-xlarge", ["LayoutOrder"]}]
     1538 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1540 CALL                             R78 1 1
     1541 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1543 DUPTABLE                         R78 K319 [{"Section"}]
     1544 GETUPVAL                         R79 21
     1545 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1547 GETUPVAL                         R80 23
     1548 DUPTABLE                         R81 K321 [{["LayoutOrder"] = 1, ["Title"], ["AutomaticContentHeight"] = True, ["Size"]}]
     1549 LOADK                            R84 K88 ["General"]
     1550 LOADK                            R85 K322 ["AnimationSectionTitle"]
     1551 NAMECALL                         R82 R60 K75 ["getText"]
     1553 CALL                             R82 3 1
     1554 SETTABLEKS                       R82 R81 K101 ["Title"]
     1556 GETIMPORT                        R82 K150 [UDim2.new]
     1558 LOADN                            R83 1
     1559 LOADN                            R84 0
     1560 LOADN                            R85 0
     1561 LOADN                            R86 0
     1562 CALL                             R82 4 1
     1563 SETTABLEKS                       R82 R81 K2 ["Size"]
     1565 DUPTABLE                         R82 K324 [{"AnimationCheckboxCol"}]
     1566 GETUPVAL                         R83 21
     1567 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1569 GETUPVAL                         R84 38
     1570 DUPTABLE                         R85 K327 [{["LayoutOrder"] = 1, ["Localization"], ["OnSelectionChanged"], ["OnSectionValidityChanged"]}]
     1571 SETTABLEKS                       R60 R85 K72 ["Localization"]
     1573 GETTABLEKS                       R86 R2 K328 ["onAnimationSelectionChanged"]
     1575 SETTABLEKS                       R86 R85 K325 ["OnSelectionChanged"]
     1577 GETTABLEKS                       R86 R2 K329 ["onanimationSectionValidityChanged"]
     1579 SETTABLEKS                       R86 R85 K326 ["OnSectionValidityChanged"]
     1581 CALL                             R83 2 1
     1582 SETTABLEKS                       R83 R82 K323 ["AnimationCheckboxCol"]
     1584 CALL                             R79 3 1
     1585 SETTABLEKS                       R79 R78 K318 ["Section"]
     1587 CALL                             R75 3 1
     1588 SETTABLEKS                       R75 R74 K117 ["AnimationPackProperties"]
     1590 CALL                             R71 3 -1
     1591 RETURN                           R71 -1

PROTO_19:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K6 [{"publishingRequirements", "assetMediaIds", "assetMediaMetadataArray", "sellerStatusData", "instances", "allowedBundleTypeSettings"}]
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
       35 RETURN                           R1 1

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
      307 GETTABLEKS                       R57 R57 K70 ["getFFlagEnableUploadingAvatarAnimations"]
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
      398 CAPTURE                          VAL R56
      399 CAPTURE                          VAL R23
      400 CAPTURE                          VAL R22
      401 CAPTURE                          VAL R30
      402 CAPTURE                          VAL R31
      403 CAPTURE                          VAL R47
      404 CAPTURE                          VAL R38
      405 CAPTURE                          VAL R42
      406 CAPTURE                          VAL R39
      407 CAPTURE                          VAL R55
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R11
      410 CAPTURE                          VAL R53
      411 CAPTURE                          VAL R46
      412 CAPTURE                          VAL R52
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
      431 DUPCLOSURE                       R64 K91 [PROTO_22]
      432 CAPTURE                          VAL R60
      433 CAPTURE                          VAL R28
      434 CAPTURE                          VAL R37
      435 MOVE                             R65 R15
      436 DUPTABLE                         R66 K93 [{"Localization", "Stylizer"}]
      437 GETTABLEKS                       R67 R14 K43 ["Localization"]
      439 SETTABLEKS                       R67 R66 K43 ["Localization"]
      441 GETTABLEKS                       R67 R14 K92 ["Stylizer"]
      443 SETTABLEKS                       R67 R66 K92 ["Stylizer"]
      445 CALL                             R65 1 1
      446 MOVE                             R66 R62
      447 CALL                             R65 1 1
      448 MOVE                             R62 R65
      449 GETTABLEKS                       R65 R13 K94 ["connect"]
      451 MOVE                             R66 R63
      452 MOVE                             R67 R64
      453 CALL                             R65 2 1
      454 MOVE                             R66 R62
      455 CALL                             R65 1 -1
      456 RETURN                           R65 -1
