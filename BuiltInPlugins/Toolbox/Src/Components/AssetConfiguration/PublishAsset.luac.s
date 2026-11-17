PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_MANAGER"]
        4 GETTABLEKS                       R2 R2 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R2 R2 K2 ["IMPORT_ASSET_VERSION"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["AssetId"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["AssetType"]
       14 NAMECALL                         R0 R0 K5 ["Fire"]
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K3 ["use"]
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 1
       14 DUPTABLE                         R4 K7 [{"text", "variant", "onActivated"}]
       15 LOADK                            R7 K8 ["AssetConfigVersions"]
       16 LOADK                            R8 K9 ["Appeal"]
       17 NAMECALL                         R5 R2 K10 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K4 ["text"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K11 ["Enums"]
       25 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       27 GETTABLEKS                       R5 R5 K13 ["Standard"]
       29 SETTABLEKS                       R5 R4 K5 ["variant"]
       31 DUPCLOSURE                       R5 K14 [PROTO_0]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       36 SETLIST                          R3 R4 1 [1]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R5 R0 K15 ["AssetType"]
       41 CALL                             R4 1 1
       42 JUMPIFNOT                        R4 ; [+29]
       43 DUPTABLE                         R6 K7 [{"text", "variant", "onActivated"}]
       44 LOADK                            R9 K8 ["AssetConfigVersions"]
       45 LOADK                            R10 K16 ["ImportNewVersion"]
       46 NAMECALL                         R7 R2 K10 ["getText"]
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K4 ["text"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K11 ["Enums"]
       54 GETTABLEKS                       R7 R7 K12 ["ButtonVariant"]
       56 GETTABLEKS                       R7 R7 K17 ["Emphasis"]
       58 SETTABLEKS                       R7 R6 K5 ["variant"]
       60 NEWCLOSURE                       R7 P1
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       66 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       68 MOVE                             R5 R3
       69 GETIMPORT                        R4 K20 [table.insert]
       71 CALL                             R4 2 0
       72 GETUPVAL                         R4 7
       73 GETTABLEKS                       R4 R4 K21 ["createElement"]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K22 ["View"]
       78 DUPTABLE                         R6 K26 [{["tag"] = "row size-full-0 auto-y padding-medium gap-medium radius-medium bg-surface-300 stroke-emphasis", ["LayoutOrder"]}]
       79 GETTABLEKS                       R7 R0 K25 ["LayoutOrder"]
       81 SETTABLEKS                       R7 R6 K25 ["LayoutOrder"]
       83 DUPTABLE                         R7 K29 [{"Icon", "Content"}]
       84 GETUPVAL                         R8 7
       85 GETTABLEKS                       R8 R8 K21 ["createElement"]
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K27 ["Icon"]
       90 DUPTABLE                         R10 K34 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K11 ["Enums"]
       94 GETTABLEKS                       R11 R11 K35 ["IconName"]
       96 GETTABLEKS                       R11 R11 K36 ["TriangleExclamation"]
       98 SETTABLEKS                       R11 R10 K31 ["name"]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K11 ["Enums"]
      103 GETTABLEKS                       R11 R11 K37 ["IconSize"]
      105 GETTABLEKS                       R11 R11 K38 ["Small"]
      107 SETTABLEKS                       R11 R10 K32 ["size"]
      109 GETTABLEKS                       R11 R1 K39 ["Color"]
      111 GETTABLEKS                       R11 R11 K40 ["System"]
      113 GETTABLEKS                       R11 R11 K41 ["Warning"]
      115 SETTABLEKS                       R11 R10 K33 ["style"]
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R7 K27 ["Icon"]
      120 GETUPVAL                         R8 7
      121 GETTABLEKS                       R8 R8 K21 ["createElement"]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R9 R9 K22 ["View"]
      126 DUPTABLE                         R10 K44 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall fill auto-y"}]
      127 DUPTABLE                         R11 K48 [{"Title", "Description", "Buttons"}]
      128 GETUPVAL                         R12 7
      129 GETTABLEKS                       R12 R12 K21 ["createElement"]
      131 GETUPVAL                         R13 0
      132 GETTABLEKS                       R13 R13 K49 ["Text"]
      134 DUPTABLE                         R14 K51 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-small auto-xy"}]
      135 LOADK                            R17 K8 ["AssetConfigVersions"]
      136 LOADK                            R18 K52 ["RestrictedBannerTitle"]
      137 DUPTABLE                         R19 K54 [{"version"}]
      138 GETTABLEKS                       R21 R0 K55 ["AssetVersion"]
      140 FASTCALL1                        TOSTRING R21 ; [+2]
      141 GETIMPORT                        R20 K57 [tostring]
      143 CALL                             R20 1 1
      144 SETTABLEKS                       R20 R19 K53 ["version"]
      146 NAMECALL                         R15 R2 K10 ["getText"]
      148 CALL                             R15 4 1
      149 SETTABLEKS                       R15 R14 K49 ["Text"]
      151 CALL                             R12 2 1
      152 SETTABLEKS                       R12 R11 K45 ["Title"]
      154 GETUPVAL                         R12 7
      155 GETTABLEKS                       R12 R12 K21 ["createElement"]
      157 GETUPVAL                         R13 0
      158 GETTABLEKS                       R13 R13 K49 ["Text"]
      160 DUPTABLE                         R14 K59 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "text-body-small auto-xy padding-bottom-small"}]
      161 LOADK                            R17 K8 ["AssetConfigVersions"]
      162 LOADK                            R18 K60 ["RestrictedBannerDescription"]
      163 NAMECALL                         R15 R2 K10 ["getText"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K49 ["Text"]
      168 CALL                             R12 2 1
      169 SETTABLEKS                       R12 R11 K46 ["Description"]
      171 GETUPVAL                         R12 7
      172 GETTABLEKS                       R12 R12 K21 ["createElement"]
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R13 R13 K61 ["ButtonGroup"]
      177 DUPTABLE                         R14 K64 [{["LayoutOrder"] = 3, ["size"], ["buttons"]}]
      178 GETUPVAL                         R15 0
      179 GETTABLEKS                       R15 R15 K11 ["Enums"]
      181 GETTABLEKS                       R15 R15 K65 ["InputSize"]
      183 GETTABLEKS                       R15 R15 K66 ["XSmall"]
      185 SETTABLEKS                       R15 R14 K32 ["size"]
      187 SETTABLEKS                       R3 R14 K63 ["buttons"]
      189 CALL                             R12 2 1
      190 SETTABLEKS                       R12 R11 K47 ["Buttons"]
      192 CALL                             R8 3 1
      193 SETTABLEKS                       R8 R7 K28 ["Content"]
      195 CALL                             R4 3 -1
      196 RETURN                           R4 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getMarketplaceOnboardingUrl"]
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationState"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationState"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationFailureReasons"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationFailureReasons"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ugcBundleValidationResults"}]
        2 SETTABLEKS                       R0 R3 K0 ["ugcBundleValidationResults"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentAssetType"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentAssetType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_12:
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
       43 DUPCLOSURE                       R2 K15 [PROTO_4]
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["from"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Title"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Description"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
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
      295 DUPCLOSURE                       R68 K85 [PROTO_16]
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
      378 DUPTABLE                         R74 K120 [{"Padding", "UIListLayout", "ModelWarningFrame", "ModerationBanner", "Header", "Title", "Description", "AvatarItemSection", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "PublishToMarketplace", "DataSharingConsent", "SpecialAttribute", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      379 GETUPVAL                         R75 7
      380 GETTABLEKS                       R75 R75 K96 ["createElement"]
      382 LOADK                            R76 K121 ["UIPadding"]
      383 DUPTABLE                         R77 K126 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      384 GETIMPORT                        R78 K128 [UDim.new]
      386 LOADN                            R79 0
      387 LOADN                            R80 24
      388 CALL                             R78 2 1
      389 SETTABLEKS                       R78 R77 K122 ["PaddingTop"]
      391 GETIMPORT                        R78 K128 [UDim.new]
      393 LOADN                            R79 0
      394 LOADN                            R80 24
      395 CALL                             R78 2 1
      396 SETTABLEKS                       R78 R77 K123 ["PaddingBottom"]
      398 GETIMPORT                        R78 K128 [UDim.new]
      400 LOADN                            R79 0
      401 LOADN                            R80 24
      402 CALL                             R78 2 1
      403 SETTABLEKS                       R78 R77 K124 ["PaddingLeft"]
      405 GETIMPORT                        R78 K128 [UDim.new]
      407 LOADN                            R79 0
      408 LOADN                            R80 24
      409 CALL                             R78 2 1
      410 SETTABLEKS                       R78 R77 K125 ["PaddingRight"]
      412 CALL                             R75 2 1
      413 SETTABLEKS                       R75 R74 K97 ["Padding"]
      415 GETUPVAL                         R75 7
      416 GETTABLEKS                       R75 R75 K96 ["createElement"]
      418 LOADK                            R76 K98 ["UIListLayout"]
      419 NEWTABLE                         R77 8 0
      421 GETIMPORT                        R78 K131 [Enum.FillDirection.Vertical]
      423 SETTABLEKS                       R78 R77 K129 ["FillDirection"]
      425 GETIMPORT                        R78 K134 [Enum.HorizontalAlignment.Left]
      427 SETTABLEKS                       R78 R77 K132 ["HorizontalAlignment"]
      429 GETIMPORT                        R78 K137 [Enum.VerticalAlignment.Top]
      431 SETTABLEKS                       R78 R77 K135 ["VerticalAlignment"]
      433 GETIMPORT                        R78 K139 [Enum.SortOrder.LayoutOrder]
      435 SETTABLEKS                       R78 R77 K138 ["SortOrder"]
      437 GETIMPORT                        R78 K128 [UDim.new]
      439 LOADN                            R79 0
      440 LOADN                            R80 0
      441 CALL                             R78 2 1
      442 SETTABLEKS                       R78 R77 K97 ["Padding"]
      444 GETUPVAL                         R78 7
      445 GETTABLEKS                       R78 R78 K140 ["Change"]
      447 GETTABLEKS                       R78 R78 K141 ["AbsoluteContentSize"]
      449 GETTABLEKS                       R79 R0 K142 ["refreshCanvas"]
      451 JUMPIF                           R79 ; [+3]
      452 NEWCLOSURE                       R79 P1
      453 CAPTURE                          VAL R0
      454 CAPTURE                          VAL R3
      455 SETTABLE                         R79 R77 R78
      456 GETUPVAL                         R78 7
      457 GETTABLEKS                       R78 R78 K81 ["Ref"]
      459 GETTABLEKS                       R79 R0 K143 ["listLayoutRef"]
      461 SETTABLE                         R79 R77 R78
      462 CALL                             R75 2 1
      463 SETTABLEKS                       R75 R74 K98 ["UIListLayout"]
      465 JUMPIF                           R44 ; [+112]
      466 JUMPIFNOT                        R19 ; [+111]
      467 JUMPIFNOT                        R45 ; [+110]
      468 GETUPVAL                         R75 7
      469 GETTABLEKS                       R75 R75 K96 ["createElement"]
      471 GETUPVAL                         R76 11
      472 DUPTABLE                         R77 K147 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Padding"], ["Spacing"] = 5, ["VerticalAlignment"]}]
      473 GETIMPORT                        R78 K134 [Enum.HorizontalAlignment.Left]
      475 SETTABLEKS                       R78 R77 K132 ["HorizontalAlignment"]
      477 GETIMPORT                        R78 K149 [Enum.FillDirection.Horizontal]
      479 SETTABLEKS                       R78 R77 K144 ["Layout"]
      481 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      483 CALL                             R78 1 1
      484 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      486 GETIMPORT                        R78 K152 [UDim2.new]
      488 LOADN                            R79 1
      489 LOADN                            R80 0
      490 LOADN                            R81 0
      491 GETUPVAL                         R82 12
      492 GETTABLEKS                       R82 R82 K153 ["FONT_SIZE_TITLE"]
      494 CALL                             R78 4 1
      495 SETTABLEKS                       R78 R77 K2 ["Size"]
      497 DUPTABLE                         R78 K156 [{["Bottom"] = 30}]
      498 SETTABLEKS                       R78 R77 K97 ["Padding"]
      500 GETIMPORT                        R78 K137 [Enum.VerticalAlignment.Top]
      502 SETTABLEKS                       R78 R77 K135 ["VerticalAlignment"]
      504 DUPTABLE                         R78 K159 [{"Icon", "WarningText"}]
      505 GETUPVAL                         R79 7
      506 GETTABLEKS                       R79 R79 K96 ["createElement"]
      508 LOADK                            R80 K160 ["ImageLabel"]
      509 DUPTABLE                         R81 K165 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      510 GETUPVAL                         R82 13
      511 GETTABLEKS                       R82 R82 K166 ["WARNING_ICON"]
      513 SETTABLEKS                       R82 R81 K163 ["Image"]
      515 GETTABLEKS                       R82 R62 K167 ["warningIconColor"]
      517 SETTABLEKS                       R82 R81 K164 ["ImageColor3"]
      519 GETIMPORT                        R82 K169 [UDim2.fromOffset]
      521 LOADN                            R83 24
      522 LOADN                            R84 24
      523 CALL                             R82 2 1
      524 SETTABLEKS                       R82 R81 K2 ["Size"]
      526 CALL                             R79 2 1
      527 SETTABLEKS                       R79 R78 K157 ["Icon"]
      529 GETUPVAL                         R79 7
      530 GETTABLEKS                       R79 R79 K96 ["createElement"]
      532 LOADK                            R80 K170 ["TextLabel"]
      533 DUPTABLE                         R81 K181 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      534 GETIMPORT                        R82 K183 [Enum.AutomaticSize.XY]
      536 SETTABLEKS                       R82 R81 K171 ["AutomaticSize"]
      538 GETUPVAL                         R82 12
      539 GETTABLEKS                       R82 R82 K184 ["FONT"]
      541 SETTABLEKS                       R82 R81 K173 ["Font"]
      543 GETIMPORT                        R82 K152 [UDim2.new]
      545 LOADN                            R83 1
      546 LOADN                            R84 0
      547 LOADN                            R85 1
      548 LOADN                            R86 0
      549 CALL                             R82 4 1
      550 SETTABLEKS                       R82 R81 K2 ["Size"]
      552 SETTABLEKS                       R59 R81 K174 ["Text"]
      554 GETTABLEKS                       R82 R1 K185 ["assetConfig"]
      556 GETTABLEKS                       R82 R82 K186 ["warningColor"]
      558 SETTABLEKS                       R82 R81 K177 ["TextColor3"]
      560 GETIMPORT                        R82 K187 [Enum.TextXAlignment.Left]
      562 SETTABLEKS                       R82 R81 K178 ["TextXAlignment"]
      564 GETIMPORT                        R82 K189 [Enum.TextYAlignment.Center]
      566 SETTABLEKS                       R82 R81 K179 ["TextYAlignment"]
      568 GETUPVAL                         R82 12
      569 GETTABLEKS                       R82 R82 K153 ["FONT_SIZE_TITLE"]
      571 SETTABLEKS                       R82 R81 K180 ["TextSize"]
      573 CALL                             R79 2 1
      574 SETTABLEKS                       R79 R78 K158 ["WarningText"]
      576 CALL                             R75 3 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R75
      579 SETTABLEKS                       R75 R74 K99 ["ModelWarningFrame"]
      581 GETUPVAL                         R76 14
      582 CALL                             R76 0 1
      583 JUMPIFNOT                        R76 ; [+36]
      584 GETTABLEKS                       R76 R2 K190 ["rejectedVersionNumber"]
      586 JUMPIFEQKNIL                     R76 ; [+33]
      588 GETUPVAL                         R75 15
      589 GETTABLEKS                       R75 R75 K96 ["createElement"]
      591 GETUPVAL                         R76 16
      592 GETTABLEKS                       R76 R76 K191 ["View"]
      594 DUPTABLE                         R77 K194 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-bottom-medium"}]
      595 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      597 CALL                             R78 1 1
      598 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      600 GETUPVAL                         R78 15
      601 GETTABLEKS                       R78 R78 K96 ["createElement"]
      603 GETUPVAL                         R79 17
      604 DUPTABLE                         R80 K197 [{"AssetId", "AssetVersion", "AssetType"}]
      605 GETTABLEKS                       R81 R2 K33 ["assetId"]
      607 SETTABLEKS                       R81 R80 K195 ["AssetId"]
      609 GETTABLEKS                       R81 R2 K190 ["rejectedVersionNumber"]
      611 SETTABLEKS                       R81 R80 K196 ["AssetVersion"]
      613 GETTABLEKS                       R81 R2 K13 ["assetTypeEnum"]
      615 SETTABLEKS                       R81 R80 K18 ["AssetType"]
      617 CALL                             R78 2 -1
      618 CALL                             R75 -1 1
      619 JUMP                             ; [+1]
      620 LOADNIL                          R75
      621 SETTABLEKS                       R75 R74 K100 ["ModerationBanner"]
      623 JUMPIFNOT                        R20 ; [+19]
      624 GETUPVAL                         R75 7
      625 GETTABLEKS                       R75 R75 K96 ["createElement"]
      627 GETUPVAL                         R76 18
      628 DUPTABLE                         R77 K198 [{"LayoutOrder", "Title"}]
      629 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      631 CALL                             R78 1 1
      632 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      634 LOADK                            R80 K76 ["AssetConfig"]
      635 LOADK                            R81 K199 ["PublishPluginHeader"]
      636 NAMECALL                         R78 R60 K75 ["getText"]
      638 CALL                             R78 3 1
      639 SETTABLEKS                       R78 R77 K102 ["Title"]
      641 CALL                             R75 2 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R75
      644 SETTABLEKS                       R75 R74 K101 ["Header"]
      646 GETUPVAL                         R75 7
      647 GETTABLEKS                       R75 R75 K96 ["createElement"]
      649 GETUPVAL                         R76 19
      650 DUPTABLE                         R77 K207 [{["Title"], ["TotalHeight"] = 100, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      651 LOADK                            R80 K88 ["General"]
      652 LOADK                            R81 K102 ["Title"]
      653 NAMECALL                         R78 R60 K75 ["getText"]
      655 CALL                             R78 3 1
      656 SETTABLEKS                       R78 R77 K102 ["Title"]
      658 GETUPVAL                         R78 0
      659 GETTABLEKS                       R78 R78 K208 ["NAME_CHARACTER_LIMIT"]
      661 SETTABLEKS                       R78 R77 K202 ["MaxCount"]
      663 SETTABLEKS                       R25 R77 K203 ["TextChangeCallBack"]
      665 SETTABLEKS                       R7 R77 K204 ["TextContent"]
      667 GETTABLEKS                       R78 R2 K209 ["showNameRequiredError"]
      669 SETTABLEKS                       R78 R77 K205 ["showRequiredError"]
      671 NEWCLOSURE                       R78 P2
      672 CAPTURE                          VAL R0
      673 CAPTURE                          UPVAL U0
      674 SETTABLEKS                       R78 R77 K206 ["ErrorCallback"]
      676 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      678 CALL                             R78 1 1
      679 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      681 CALL                             R75 2 1
      682 SETTABLEKS                       R75 R74 K102 ["Title"]
      684 GETUPVAL                         R75 7
      685 GETTABLEKS                       R75 R75 K96 ["createElement"]
      687 GETUPVAL                         R76 19
      688 DUPTABLE                         R77 K212 [{["BottomRightText"], ["Title"], ["TotalHeight"] = 180, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      689 LOADK                            R80 K213 ["AssetConfigDescription"]
      690 LOADK                            R81 K214 ["AddRobloxLinks"]
      691 NAMECALL                         R78 R60 K75 ["getText"]
      693 CALL                             R78 3 1
      694 SETTABLEKS                       R78 R77 K210 ["BottomRightText"]
      696 LOADK                            R80 K88 ["General"]
      697 LOADK                            R81 K103 ["Description"]
      698 NAMECALL                         R78 R60 K75 ["getText"]
      700 CALL                             R78 3 1
      701 SETTABLEKS                       R78 R77 K102 ["Title"]
      703 GETUPVAL                         R78 0
      704 GETTABLEKS                       R78 R78 K215 ["DESCRIPTION_CHARACTER_LIMIT"]
      706 SETTABLEKS                       R78 R77 K202 ["MaxCount"]
      708 SETTABLEKS                       R26 R77 K203 ["TextChangeCallBack"]
      710 SETTABLEKS                       R8 R77 K204 ["TextContent"]
      712 GETTABLEKS                       R78 R2 K216 ["showDescriptionRequiredError"]
      714 SETTABLEKS                       R78 R77 K205 ["showRequiredError"]
      716 NEWCLOSURE                       R78 P3
      717 CAPTURE                          VAL R0
      718 CAPTURE                          UPVAL U0
      719 SETTABLEKS                       R78 R77 K206 ["ErrorCallback"]
      721 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      723 CALL                             R78 1 1
      724 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      726 CALL                             R75 2 1
      727 SETTABLEKS                       R75 R74 K103 ["Description"]
      729 GETUPVAL                         R76 20
      730 CALL                             R76 0 1
      731 JUMPIFNOT                        R76 ; [+102]
      732 GETUPVAL                         R75 7
      733 GETTABLEKS                       R75 R75 K96 ["createElement"]
      735 GETUPVAL                         R76 21
      736 DUPTABLE                         R77 K235 [{"LayoutOrder", "assetTypeEnum", "instances", "displayAssetTypeSelection", "displayOwnership", "owner", "onOwnerSelected", "preselectedGroupId", "showColorPicker", "selectedColor", "setSelectedColor", "showColorPickerRequiredError", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "onAvatarItemCategorySelected", "allowedBundleTypeSettings", "onAssetValidationResultChanged", "publishOnApprovalEnabled", "hasPublishingPreferences", "hasPublishingFeePreview", "publishingFeePreview", "publishOnApprovalToggled", "onPublishToMarketplaceToggleClick", "specialAttributes", "hasMetadataPermission"}]
      737 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      739 CALL                             R78 1 1
      740 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      742 SETTABLEKS                       R14 R77 K13 ["assetTypeEnum"]
      744 GETTABLEKS                       R78 R2 K29 ["instances"]
      746 SETTABLEKS                       R78 R77 K29 ["instances"]
      748 SETTABLEKS                       R44 R77 K58 ["displayAssetTypeSelection"]
      750 SETTABLEKS                       R39 R77 K53 ["displayOwnership"]
      752 SETTABLEKS                       R9 R77 K8 ["owner"]
      754 SETTABLEKS                       R27 R77 K41 ["onOwnerSelected"]
      756 GETTABLEKS                       R78 R2 K217 ["preselectedGroupId"]
      758 SETTABLEKS                       R78 R77 K217 ["preselectedGroupId"]
      760 GETTABLEKS                       R78 R2 K218 ["showColorPicker"]
      762 SETTABLEKS                       R78 R77 K218 ["showColorPicker"]
      764 GETTABLEKS                       R78 R2 K219 ["selectedColor"]
      766 SETTABLEKS                       R78 R77 K219 ["selectedColor"]
      768 GETTABLEKS                       R78 R2 K220 ["setSelectedColor"]
      770 SETTABLEKS                       R78 R77 K220 ["setSelectedColor"]
      772 GETTABLEKS                       R78 R2 K221 ["showColorPickerRequiredError"]
      774 SETTABLEKS                       R78 R77 K221 ["showColorPickerRequiredError"]
      776 GETTABLEKS                       R78 R2 K222 ["dataSharingEnabled"]
      778 SETTABLEKS                       R78 R77 K222 ["dataSharingEnabled"]
      780 GETTABLEKS                       R78 R2 K223 ["dataSharingToggled"]
      782 SETTABLEKS                       R78 R77 K223 ["dataSharingToggled"]
      784 GETTABLEKS                       R78 R2 K224 ["onDataConsentToggleClick"]
      786 SETTABLEKS                       R78 R77 K224 ["onDataConsentToggleClick"]
      788 GETTABLEKS                       R78 R2 K225 ["onAvatarItemCategorySelected"]
      790 SETTABLEKS                       R78 R77 K225 ["onAvatarItemCategorySelected"]
      792 GETTABLEKS                       R78 R2 K93 ["allowedBundleTypeSettings"]
      794 SETTABLEKS                       R78 R77 K93 ["allowedBundleTypeSettings"]
      796 GETTABLEKS                       R78 R2 K226 ["onAssetValidationResultChanged"]
      798 SETTABLEKS                       R78 R77 K226 ["onAssetValidationResultChanged"]
      800 GETTABLEKS                       R78 R2 K227 ["publishOnApprovalEnabled"]
      802 SETTABLEKS                       R78 R77 K227 ["publishOnApprovalEnabled"]
      804 GETTABLEKS                       R78 R2 K228 ["hasPublishingPreferences"]
      806 SETTABLEKS                       R78 R77 K228 ["hasPublishingPreferences"]
      808 GETTABLEKS                       R78 R2 K229 ["hasPublishingFeePreview"]
      810 SETTABLEKS                       R78 R77 K229 ["hasPublishingFeePreview"]
      812 GETTABLEKS                       R78 R2 K230 ["publishingFeePreview"]
      814 SETTABLEKS                       R78 R77 K230 ["publishingFeePreview"]
      816 GETTABLEKS                       R78 R2 K231 ["publishOnApprovalToggled"]
      818 SETTABLEKS                       R78 R77 K231 ["publishOnApprovalToggled"]
      820 GETTABLEKS                       R78 R2 K232 ["onPublishToMarketplaceToggleClick"]
      822 SETTABLEKS                       R78 R77 K232 ["onPublishToMarketplaceToggleClick"]
      824 GETTABLEKS                       R78 R2 K233 ["specialAttributes"]
      826 SETTABLEKS                       R78 R77 K233 ["specialAttributes"]
      828 GETTABLEKS                       R78 R2 K234 ["hasMetadataPermission"]
      830 SETTABLEKS                       R78 R77 K234 ["hasMetadataPermission"]
      832 CALL                             R75 2 1
      833 JUMP                             ; [+1]
      834 LOADNIL                          R75
      835 SETTABLEKS                       R75 R74 K104 ["AvatarItemSection"]
      837 GETUPVAL                         R76 20
      838 CALL                             R76 0 1
      839 JUMPIF                           R76 ; [+67]
      840 JUMPIFNOT                        R44 ; [+66]
      841 GETUPVAL                         R75 7
      842 GETTABLEKS                       R75 R75 K96 ["createElement"]
      844 GETUPVAL                         R76 22
      845 DUPTABLE                         R77 K243 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "onAvatarItemCategorySelected", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      846 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      848 CALL                             R78 1 1
      849 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      851 GETTABLEKS                       R78 R2 K222 ["dataSharingEnabled"]
      853 SETTABLEKS                       R78 R77 K222 ["dataSharingEnabled"]
      855 GETTABLEKS                       R78 R2 K223 ["dataSharingToggled"]
      857 SETTABLEKS                       R78 R77 K223 ["dataSharingToggled"]
      859 GETTABLEKS                       R78 R2 K224 ["onDataConsentToggleClick"]
      861 SETTABLEKS                       R78 R77 K224 ["onDataConsentToggleClick"]
      863 GETTABLEKS                       R78 R2 K225 ["onAvatarItemCategorySelected"]
      865 SETTABLEKS                       R78 R77 K225 ["onAvatarItemCategorySelected"]
      867 GETTABLEKS                       R78 R0 K244 ["state"]
      869 GETTABLEKS                       R78 R78 K236 ["validationState"]
      871 SETTABLEKS                       R78 R77 K236 ["validationState"]
      873 GETTABLEKS                       R78 R0 K244 ["state"]
      875 GETTABLEKS                       R78 R78 K237 ["validationFailureReasons"]
      877 SETTABLEKS                       R78 R77 K237 ["validationFailureReasons"]
      879 GETTABLEKS                       R78 R0 K238 ["setValidationState"]
      881 SETTABLEKS                       R78 R77 K238 ["setValidationState"]
      883 GETTABLEKS                       R78 R0 K239 ["setValidationFailureReasons"]
      885 SETTABLEKS                       R78 R77 K239 ["setValidationFailureReasons"]
      887 GETTABLEKS                       R78 R0 K244 ["state"]
      889 GETTABLEKS                       R78 R78 K240 ["ugcBundleValidationResults"]
      891 SETTABLEKS                       R78 R77 K240 ["ugcBundleValidationResults"]
      893 GETTABLEKS                       R78 R0 K241 ["setUGCBundleValidationResults"]
      895 SETTABLEKS                       R78 R77 K241 ["setUGCBundleValidationResults"]
      897 GETTABLEKS                       R78 R0 K242 ["setCurrentAssetType"]
      899 SETTABLEKS                       R78 R77 K242 ["setCurrentAssetType"]
      901 GETTABLEKS                       R78 R2 K29 ["instances"]
      903 SETTABLEKS                       R78 R77 K29 ["instances"]
      905 CALL                             R75 2 1
      906 JUMP                             ; [+1]
      907 LOADNIL                          R75
      908 SETTABLEKS                       R75 R74 K105 ["AssetTypeSelection"]
      910 GETUPVAL                         R76 20
      911 CALL                             R76 0 1
      912 JUMPIF                           R76 ; [+34]
      913 JUMPIFNOT                        R44 ; [+33]
      914 JUMPIFNOT                        R39 ; [+32]
      915 GETUPVAL                         R75 7
      916 GETTABLEKS                       R75 R75 K96 ["createElement"]
      918 GETUPVAL                         R76 23
      919 DUPTABLE                         R77 K247 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      920 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      922 CALL                             R78 1 1
      923 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      925 SETTABLEKS                       R27 R77 K245 ["onDropDownSelect"]
      927 SETTABLEKS                       R9 R77 K8 ["owner"]
      929 GETUPVAL                         R79 24
      930 CALL                             R79 0 1
      931 JUMPIFNOT                        R79 ; [+3]
      932 GETTABLEKS                       R78 R2 K217 ["preselectedGroupId"]
      934 JUMP                             ; [+1]
      935 LOADNIL                          R78
      936 SETTABLEKS                       R78 R77 K217 ["preselectedGroupId"]
      938 LOADK                            R80 K88 ["General"]
      939 LOADK                            R81 K112 ["Ownership"]
      940 NAMECALL                         R78 R60 K75 ["getText"]
      942 CALL                             R78 3 1
      943 SETTABLEKS                       R78 R77 K102 ["Title"]
      945 CALL                             R75 2 1
      946 JUMP                             ; [+1]
      947 LOADNIL                          R75
      948 SETTABLEKS                       R75 R74 K106 ["Creator"]
      950 GETUPVAL                         R76 20
      951 CALL                             R76 0 1
      952 JUMPIF                           R76 ; [+95]
      953 JUMPIFNOT                        R44 ; [+94]
      954 JUMPIFNOT                        R39 ; [+93]
      955 GETTABLEKS                       R76 R2 K218 ["showColorPicker"]
      957 JUMPIFNOT                        R76 ; [+90]
      958 GETUPVAL                         R75 7
      959 GETTABLEKS                       R75 R75 K96 ["createElement"]
      961 GETUPVAL                         R76 16
      962 GETTABLEKS                       R76 R76 K191 ["View"]
      964 DUPTABLE                         R77 K249 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      965 GETIMPORT                        R78 K152 [UDim2.new]
      967 LOADN                            R79 1
      968 LOADN                            R80 0
      969 LOADN                            R81 0
      970 LOADN                            R82 70
      971 CALL                             R78 4 1
      972 SETTABLEKS                       R78 R77 K2 ["Size"]
      974 NAMECALL                         R78 R61 K150 ["getNextOrder"]
      976 CALL                             R78 1 1
      977 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      979 DUPTABLE                         R78 K251 [{"Title", "ColorPickerButton"}]
      980 GETUPVAL                         R79 15
      981 GETTABLEKS                       R79 R79 K96 ["createElement"]
      983 GETUPVAL                         R80 16
      984 GETTABLEKS                       R80 R80 K174 ["Text"]
      986 DUPTABLE                         R81 K252 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      987 NEWTABLE                         R82 2 0
      989 LOADB                            R83 1
      990 SETTABLEKS                       R83 R82 K253 ["text-align-x-left text-align-y-top"]
      992 LOADB                            R83 1
      993 SETTABLEKS                       R83 R82 K254 ["text-title-small content-emphasis"]
      995 SETTABLEKS                       R82 R81 K192 ["tag"]
      997 LOADK                            R84 K88 ["General"]
      998 LOADK                            R85 K255 ["ThumbnailSkinTone"]
      999 NAMECALL                         R82 R60 K75 ["getText"]
     1001 CALL                             R82 3 1
     1002 SETTABLEKS                       R82 R81 K174 ["Text"]
     1004 GETIMPORT                        R82 K152 [UDim2.new]
     1006 LOADN                            R83 0
     1007 GETUPVAL                         R84 0
     1008 GETTABLEKS                       R84 R84 K256 ["TITLE_GUTTER_WIDTH"]
     1010 LOADN                            R85 1
     1011 LOADN                            R86 0
     1012 CALL                             R82 4 1
     1013 SETTABLEKS                       R82 R81 K2 ["Size"]
     1015 CALL                             R79 2 1
     1016 SETTABLEKS                       R79 R78 K102 ["Title"]
     1018 GETUPVAL                         R79 7
     1019 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1021 GETUPVAL                         R80 25
     1022 DUPTABLE                         R81 K258 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
     1023 GETTABLEKS                       R82 R2 K219 ["selectedColor"]
     1025 SETTABLEKS                       R82 R81 K219 ["selectedColor"]
     1027 GETTABLEKS                       R82 R2 K220 ["setSelectedColor"]
     1029 SETTABLEKS                       R82 R81 K220 ["setSelectedColor"]
     1031 SETTABLEKS                       R60 R81 K72 ["Localization"]
     1033 GETTABLEKS                       R82 R2 K221 ["showColorPickerRequiredError"]
     1035 SETTABLEKS                       R82 R81 K205 ["showRequiredError"]
     1037 GETTABLEKS                       R82 R1 K79 ["publishAsset"]
     1039 GETTABLEKS                       R82 R82 K259 ["titleTextColor"]
     1041 SETTABLEKS                       R82 R81 K257 ["textColor"]
     1043 CALL                             R79 2 1
     1044 SETTABLEKS                       R79 R78 K250 ["ColorPickerButton"]
     1046 CALL                             R75 3 1
     1047 JUMP                             ; [+1]
     1048 LOADNIL                          R75
     1049 SETTABLEKS                       R75 R74 K107 ["ColorPickerRow"]
     1051 GETUPVAL                         R76 20
     1052 CALL                             R76 0 1
     1053 JUMPIF                           R76 ; [+171]
     1054 JUMPIFNOT                        R67 ; [+170]
     1055 GETUPVAL                         R75 7
     1056 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1058 GETUPVAL                         R76 26
     1059 DUPTABLE                         R77 K260 [{"AutomaticSize", "LayoutOrder", "Title"}]
     1060 GETIMPORT                        R78 K183 [Enum.AutomaticSize.XY]
     1062 SETTABLEKS                       R78 R77 K171 ["AutomaticSize"]
     1064 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1066 CALL                             R78 1 1
     1067 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1069 SETTABLEKS                       R68 R77 K102 ["Title"]
     1071 DUPTABLE                         R78 K262 [{"ValidationPane"}]
     1072 GETUPVAL                         R79 7
     1073 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1075 GETUPVAL                         R80 11
     1076 DUPTABLE                         R81 K264 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
     1077 GETIMPORT                        R82 K266 [Enum.AutomaticSize.Y]
     1079 SETTABLEKS                       R82 R81 K171 ["AutomaticSize"]
     1081 GETIMPORT                        R82 K131 [Enum.FillDirection.Vertical]
     1083 SETTABLEKS                       R82 R81 K144 ["Layout"]
     1085 GETIMPORT                        R82 K268 [UDim2.fromScale]
     1087 LOADN                            R83 1
     1088 LOADN                            R84 0
     1089 CALL                             R82 2 1
     1090 SETTABLEKS                       R82 R81 K2 ["Size"]
     1092 DUPTABLE                         R82 K270 [{["Bottom"] = 24}]
     1093 SETTABLEKS                       R82 R81 K97 ["Padding"]
     1095 DUPTABLE                         R82 K274 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
     1096 GETUPVAL                         R83 7
     1097 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1099 GETUPVAL                         R84 27
     1100 DUPTABLE                         R85 K276 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["onAssetValidationResultChanged"]}]
     1101 GETUPVAL                         R86 1
     1102 GETTABLEKS                       R86 R86 K87 ["isUGCBodyBundleType"]
     1104 MOVE                             R87 R14
     1105 CALL                             R86 1 1
     1106 SETTABLEKS                       R86 R85 K87 ["isUGCBodyBundleType"]
     1108 GETUPVAL                         R86 1
     1109 GETTABLEKS                       R86 R86 K90 ["isAnimationBundleType"]
     1111 MOVE                             R87 R14
     1112 CALL                             R86 1 1
     1113 SETTABLEKS                       R86 R85 K90 ["isAnimationBundleType"]
     1115 GETTABLEKS                       R86 R0 K244 ["state"]
     1117 GETTABLEKS                       R86 R86 K236 ["validationState"]
     1119 SETTABLEKS                       R86 R85 K236 ["validationState"]
     1121 GETTABLEKS                       R86 R0 K238 ["setValidationState"]
     1123 SETTABLEKS                       R86 R85 K238 ["setValidationState"]
     1125 GETTABLEKS                       R86 R0 K244 ["state"]
     1127 GETTABLEKS                       R86 R86 K237 ["validationFailureReasons"]
     1129 SETTABLEKS                       R86 R85 K237 ["validationFailureReasons"]
     1131 GETTABLEKS                       R86 R0 K239 ["setValidationFailureReasons"]
     1133 SETTABLEKS                       R86 R85 K239 ["setValidationFailureReasons"]
     1135 GETTABLEKS                       R86 R0 K244 ["state"]
     1137 GETTABLEKS                       R86 R86 K240 ["ugcBundleValidationResults"]
     1139 SETTABLEKS                       R86 R85 K275 ["validationResults"]
     1141 GETTABLEKS                       R86 R0 K241 ["setUGCBundleValidationResults"]
     1143 SETTABLEKS                       R86 R85 K241 ["setUGCBundleValidationResults"]
     1145 GETTABLEKS                       R86 R0 K244 ["state"]
     1147 GETTABLEKS                       R86 R86 K277 ["currentAssetType"]
     1149 SETTABLEKS                       R86 R85 K13 ["assetTypeEnum"]
     1151 GETTABLEKS                       R86 R2 K29 ["instances"]
     1153 SETTABLEKS                       R86 R85 K29 ["instances"]
     1155 GETTABLEKS                       R86 R2 K93 ["allowedBundleTypeSettings"]
     1157 SETTABLEKS                       R86 R85 K93 ["allowedBundleTypeSettings"]
     1159 GETTABLEKS                       R86 R2 K226 ["onAssetValidationResultChanged"]
     1161 SETTABLEKS                       R86 R85 K226 ["onAssetValidationResultChanged"]
     1163 CALL                             R83 2 1
     1164 SETTABLEKS                       R83 R82 K271 ["UGCBundleValidation"]
     1166 JUMPIFNOT                        R69 ; [+23]
     1167 GETUPVAL                         R83 7
     1168 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1170 GETUPVAL                         R84 11
     1171 DUPTABLE                         R85 K278 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
     1172 GETIMPORT                        R86 K266 [Enum.AutomaticSize.Y]
     1174 SETTABLEKS                       R86 R85 K171 ["AutomaticSize"]
     1176 GETIMPORT                        R86 K131 [Enum.FillDirection.Vertical]
     1178 SETTABLEKS                       R86 R85 K144 ["Layout"]
     1180 GETIMPORT                        R86 K268 [UDim2.fromScale]
     1182 LOADN                            R87 1
     1183 LOADN                            R88 0
     1184 CALL                             R86 2 1
     1185 SETTABLEKS                       R86 R85 K2 ["Size"]
     1187 MOVE                             R86 R69
     1188 CALL                             R83 3 1
     1189 JUMP                             ; [+1]
     1190 LOADNIL                          R83
     1191 SETTABLEKS                       R83 R82 K272 ["MissingOptionalAccessoriesMsg"]
     1193 JUMPIFNOT                        R70 ; [+23]
     1194 GETUPVAL                         R83 7
     1195 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1197 GETUPVAL                         R84 11
     1198 DUPTABLE                         R85 K280 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
     1199 GETIMPORT                        R86 K266 [Enum.AutomaticSize.Y]
     1201 SETTABLEKS                       R86 R85 K171 ["AutomaticSize"]
     1203 GETIMPORT                        R86 K131 [Enum.FillDirection.Vertical]
     1205 SETTABLEKS                       R86 R85 K144 ["Layout"]
     1207 GETIMPORT                        R86 K268 [UDim2.fromScale]
     1209 LOADN                            R87 1
     1210 LOADN                            R88 0
     1211 CALL                             R86 2 1
     1212 SETTABLEKS                       R86 R85 K2 ["Size"]
     1214 MOVE                             R86 R70
     1215 CALL                             R83 3 1
     1216 JUMP                             ; [+1]
     1217 LOADNIL                          R83
     1218 SETTABLEKS                       R83 R82 K273 ["UnknownMeshPartsMsgChildren"]
     1220 CALL                             R79 3 1
     1221 SETTABLEKS                       R79 R78 K261 ["ValidationPane"]
     1223 CALL                             R75 3 1
     1224 JUMP                             ; [+1]
     1225 LOADNIL                          R75
     1226 SETTABLEKS                       R75 R74 K108 ["ContentTypeBodyValidation"]
     1228 GETUPVAL                         R76 20
     1229 CALL                             R76 0 1
     1230 JUMPIF                           R76 ; [+70]
     1231 GETUPVAL                         R76 28
     1232 CALL                             R76 0 1
     1233 JUMPIFNOT                        R76 ; [+67]
     1234 GETTABLEKS                       R76 R2 K227 ["publishOnApprovalEnabled"]
     1236 JUMPIFNOT                        R76 ; [+64]
     1237 GETUPVAL                         R76 1
     1238 GETTABLEKS                       R76 R76 K281 ["canAutoPublishAvatarAssetType"]
     1240 MOVE                             R77 R14
     1241 CALL                             R76 1 1
     1242 JUMPIFNOT                        R76 ; [+58]
     1243 GETUPVAL                         R75 7
     1244 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1246 GETUPVAL                         R76 29
     1247 DUPTABLE                         R77 K286 [{"LayoutOrder", "canOptIn", "publishingFee", "publishOnApprovalToggled", "onPublishOnApprovalToggleClick", "groupId"}]
     1248 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1250 CALL                             R78 1 1
     1251 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1253 LOADB                            R78 0
     1254 GETTABLEKS                       R79 R2 K228 ["hasPublishingPreferences"]
     1256 JUMPIFNOTEQKB                    R79 TRUE ; [+7]
     1258 GETTABLEKS                       R79 R2 K229 ["hasPublishingFeePreview"]
     1260 JUMPIFEQKB                       R79 TRUE ; [+2]
     1262 LOADB                            R78 0 +1
     1263 LOADB                            R78 1
     1264 SETTABLEKS                       R78 R77 K282 ["canOptIn"]
     1266 GETTABLEKS                       R79 R2 K229 ["hasPublishingFeePreview"]
     1268 JUMPIFNOT                        R79 ; [+3]
     1269 GETTABLEKS                       R78 R2 K230 ["publishingFeePreview"]
     1271 JUMP                             ; [+1]
     1272 LOADNIL                          R78
     1273 SETTABLEKS                       R78 R77 K283 ["publishingFee"]
     1275 GETTABLEKS                       R78 R2 K231 ["publishOnApprovalToggled"]
     1277 SETTABLEKS                       R78 R77 K231 ["publishOnApprovalToggled"]
     1279 GETTABLEKS                       R78 R2 K232 ["onPublishToMarketplaceToggleClick"]
     1281 SETTABLEKS                       R78 R77 K284 ["onPublishOnApprovalToggleClick"]
     1283 GETTABLEKS                       R79 R2 K217 ["preselectedGroupId"]
     1285 JUMPIFNOT                        R79 ; [+10]
     1286 GETTABLEKS                       R79 R2 K217 ["preselectedGroupId"]
     1288 GETUPVAL                         R80 30
     1289 GETTABLEKS                       R80 R80 K287 ["None"]
     1291 JUMPIFEQ                         R79 R80 ; [+4]
     1293 GETTABLEKS                       R78 R2 K217 ["preselectedGroupId"]
     1295 JUMP                             ; [+1]
     1296 LOADNIL                          R78
     1297 SETTABLEKS                       R78 R77 K285 ["groupId"]
     1299 CALL                             R75 2 1
     1300 JUMP                             ; [+1]
     1301 LOADNIL                          R75
     1302 SETTABLEKS                       R75 R74 K109 ["PublishToMarketplace"]
     1304 GETUPVAL                         R76 20
     1305 CALL                             R76 0 1
     1306 JUMPIF                           R76 ; [+35]
     1307 GETTABLEKS                       R76 R2 K222 ["dataSharingEnabled"]
     1309 JUMPIFNOT                        R76 ; [+32]
     1310 GETUPVAL                         R76 1
     1311 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1313 MOVE                             R77 R14
     1314 CALL                             R76 1 1
     1315 JUMPIF                           R76 ; [+6]
     1316 GETUPVAL                         R76 1
     1317 GETTABLEKS                       R76 R76 K288 ["isCatalogAsset"]
     1319 MOVE                             R77 R14
     1320 CALL                             R76 1 1
     1321 JUMPIFNOT                        R76 ; [+20]
     1322 GETUPVAL                         R75 7
     1323 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1325 GETUPVAL                         R76 31
     1326 DUPTABLE                         R77 K289 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1327 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1329 CALL                             R78 1 1
     1330 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1332 GETTABLEKS                       R78 R2 K223 ["dataSharingToggled"]
     1334 SETTABLEKS                       R78 R77 K223 ["dataSharingToggled"]
     1336 GETTABLEKS                       R78 R2 K224 ["onDataConsentToggleClick"]
     1338 SETTABLEKS                       R78 R77 K224 ["onDataConsentToggleClick"]
     1340 CALL                             R75 2 1
     1341 JUMP                             ; [+1]
     1342 LOADNIL                          R75
     1343 SETTABLEKS                       R75 R74 K110 ["DataSharingConsent"]
     1345 GETUPVAL                         R76 20
     1346 CALL                             R76 0 1
     1347 JUMPIF                           R76 ; [+66]
     1348 GETTABLEKS                       R76 R2 K233 ["specialAttributes"]
     1350 JUMPIFNOT                        R76 ; [+63]
     1351 GETTABLEKS                       R77 R2 K233 ["specialAttributes"]
     1353 LENGTH                           R76 R77
     1354 LOADN                            R77 0
     1355 JUMPIFNOTLT                      R77 R76 ; [+58]
     1357 GETTABLEKS                       R76 R2 K234 ["hasMetadataPermission"]
     1359 JUMPIFNOT                        R76 ; [+54]
     1360 GETUPVAL                         R76 32
     1361 CALL                             R76 0 1
     1362 JUMPIFNOT                        R76 ; [+12]
     1363 GETUPVAL                         R76 1
     1364 GETTABLEKS                       R76 R76 K288 ["isCatalogAsset"]
     1366 MOVE                             R77 R14
     1367 CALL                             R76 1 1
     1368 JUMPIF                           R76 ; [+6]
     1369 GETUPVAL                         R76 1
     1370 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1372 MOVE                             R77 R14
     1373 CALL                             R76 1 1
     1374 JUMPIFNOT                        R76 ; [+39]
     1375 GETUPVAL                         R75 15
     1376 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1378 GETUPVAL                         R76 11
     1379 DUPTABLE                         R77 K290 [{"AutomaticSize", "LayoutOrder", "Size", "Padding"}]
     1380 GETIMPORT                        R78 K266 [Enum.AutomaticSize.Y]
     1382 SETTABLEKS                       R78 R77 K171 ["AutomaticSize"]
     1384 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1386 CALL                             R78 1 1
     1387 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1389 GETIMPORT                        R78 K268 [UDim2.fromScale]
     1391 LOADN                            R79 1
     1392 LOADN                            R80 0
     1393 CALL                             R78 2 1
     1394 SETTABLEKS                       R78 R77 K2 ["Size"]
     1396 DUPTABLE                         R78 K291 [{["Top"] = 24}]
     1397 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1399 DUPTABLE                         R78 K293 [{"Content"}]
     1400 GETUPVAL                         R79 15
     1401 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1403 GETUPVAL                         R80 33
     1404 DUPTABLE                         R81 K294 [{"specialAttributes"}]
     1405 GETTABLEKS                       R82 R2 K233 ["specialAttributes"]
     1407 SETTABLEKS                       R82 R81 K233 ["specialAttributes"]
     1409 CALL                             R79 2 1
     1410 SETTABLEKS                       R79 R78 K292 ["Content"]
     1412 CALL                             R75 3 1
     1413 JUMP                             ; [+1]
     1414 LOADNIL                          R75
     1415 SETTABLEKS                       R75 R74 K111 ["SpecialAttribute"]
     1417 JUMPIF                           R44 ; [+33]
     1418 JUMPIFNOT                        R39 ; [+32]
     1419 GETUPVAL                         R75 7
     1420 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1422 GETUPVAL                         R76 23
     1423 DUPTABLE                         R77 K295 [{["Title"], ["owner"], ["TotalHeight"] = 70, ["onDropDownSelect"], ["preselectedGroupId"], ["LayoutOrder"]}]
     1424 LOADK                            R80 K88 ["General"]
     1425 LOADK                            R81 K112 ["Ownership"]
     1426 NAMECALL                         R78 R60 K75 ["getText"]
     1428 CALL                             R78 3 1
     1429 SETTABLEKS                       R78 R77 K102 ["Title"]
     1431 SETTABLEKS                       R9 R77 K8 ["owner"]
     1433 SETTABLEKS                       R27 R77 K245 ["onDropDownSelect"]
     1435 GETUPVAL                         R79 24
     1436 CALL                             R79 0 1
     1437 JUMPIFNOT                        R79 ; [+3]
     1438 GETTABLEKS                       R78 R2 K217 ["preselectedGroupId"]
     1440 JUMP                             ; [+1]
     1441 LOADNIL                          R78
     1442 SETTABLEKS                       R78 R77 K217 ["preselectedGroupId"]
     1444 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1446 CALL                             R78 1 1
     1447 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1449 CALL                             R75 2 1
     1450 JUMP                             ; [+1]
     1451 LOADNIL                          R75
     1452 SETTABLEKS                       R75 R74 K112 ["Ownership"]
     1454 MOVE                             R75 R23
     1455 JUMPIFNOT                        R75 ; [+13]
     1456 GETUPVAL                         R75 15
     1457 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1459 GETUPVAL                         R76 16
     1460 GETTABLEKS                       R76 R76 K296 ["Divider"]
     1462 DUPTABLE                         R77 K297 [{"LayoutOrder"}]
     1463 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1465 CALL                             R78 1 1
     1466 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1468 CALL                             R75 2 1
     1469 SETTABLEKS                       R75 R74 K113 ["DividerBase"]
     1471 JUMPIFNOT                        R43 ; [+24]
     1472 GETUPVAL                         R75 7
     1473 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1475 GETUPVAL                         R76 34
     1476 DUPTABLE                         R77 K301 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1477 GETTABLEKS                       R78 R2 K33 ["assetId"]
     1479 SETTABLEKS                       R78 R77 K195 ["AssetId"]
     1481 SETTABLEKS                       R14 R77 K18 ["AssetType"]
     1483 SETTABLEKS                       R6 R77 K298 ["AllowSelectPrivate"]
     1485 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1487 CALL                             R78 1 1
     1488 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1490 SETTABLEKS                       R15 R77 K299 ["IsAssetPublic"]
     1492 SETTABLEKS                       R29 R77 K300 ["OnSelected"]
     1494 CALL                             R75 2 1
     1495 JUMP                             ; [+1]
     1496 LOADNIL                          R75
     1497 SETTABLEKS                       R75 R74 K114 ["Sharing"]
     1499 JUMPIFNOT                        R43 ; [+14]
     1500 GETUPVAL                         R75 15
     1501 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1503 GETUPVAL                         R76 16
     1504 GETTABLEKS                       R76 R76 K296 ["Divider"]
     1506 DUPTABLE                         R77 K297 [{"LayoutOrder"}]
     1507 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1509 CALL                             R78 1 1
     1510 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1512 CALL                             R75 2 1
     1513 JUMP                             ; [+1]
     1514 LOADNIL                          R75
     1515 SETTABLEKS                       R75 R74 K115 ["SharingDivider"]
     1517 JUMPIFNOT                        R23 ; [+109]
     1518 GETTABLEKS                       R76 R2 K302 ["hideCreatorStoreConfiguration"]
     1520 JUMPIF                           R76 ; [+106]
     1521 GETUPVAL                         R75 7
     1522 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1524 GETUPVAL                         R76 11
     1525 DUPTABLE                         R77 K303 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1526 GETIMPORT                        R78 K266 [Enum.AutomaticSize.Y]
     1528 SETTABLEKS                       R78 R77 K171 ["AutomaticSize"]
     1530 GETIMPORT                        R78 K131 [Enum.FillDirection.Vertical]
     1532 SETTABLEKS                       R78 R77 K144 ["Layout"]
     1534 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1536 CALL                             R78 1 1
     1537 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1539 DUPTABLE                         R78 K305 [{["Top"] = 20}]
     1540 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1542 DUPTABLE                         R78 K308 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1543 GETUPVAL                         R79 7
     1544 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1546 GETUPVAL                         R80 35
     1547 DUPTABLE                         R81 K310 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1548 GETTABLEKS                       R82 R2 K72 ["Localization"]
     1550 LOADK                            R84 K311 ["AssetUploadResult"]
     1551 LOADK                            R85 K312 ["CreatorStoreConfigurationMessage"]
     1552 NAMECALL                         R82 R82 K75 ["getText"]
     1554 CALL                             R82 3 1
     1555 SETTABLEKS                       R82 R81 K174 ["Text"]
     1557 GETTABLEKS                       R82 R1 K313 ["uploadResult"]
     1559 GETTABLEKS                       R82 R82 K314 ["text"]
     1561 SETTABLEKS                       R82 R81 K309 ["TextColor"]
     1563 GETUPVAL                         R82 12
     1564 GETTABLEKS                       R82 R82 K315 ["FONT_SIZE_LARGE"]
     1566 SETTABLEKS                       R82 R81 K180 ["TextSize"]
     1568 GETIMPORT                        R82 K152 [UDim2.new]
     1570 LOADN                            R83 1
     1571 LOADN                            R84 0
     1572 LOADN                            R85 0
     1573 LOADN                            R86 24
     1574 CALL                             R82 4 1
     1575 SETTABLEKS                       R82 R81 K2 ["Size"]
     1577 NAMECALL                         R82 R61 K150 ["getNextOrder"]
     1579 CALL                             R82 1 1
     1580 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1582 CALL                             R79 2 1
     1583 SETTABLEKS                       R79 R78 K306 ["CreatorStoreConfigurationText"]
     1585 GETUPVAL                         R79 7
     1586 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1588 GETUPVAL                         R80 36
     1589 DUPTABLE                         R81 K317 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1590 SETTABLEKS                       R24 R81 K174 ["Text"]
     1592 GETTABLEKS                       R82 R1 K313 ["uploadResult"]
     1594 GETTABLEKS                       R82 R82 K318 ["link"]
     1596 SETTABLEKS                       R82 R81 K309 ["TextColor"]
     1598 GETUPVAL                         R82 12
     1599 GETTABLEKS                       R82 R82 K315 ["FONT_SIZE_LARGE"]
     1601 SETTABLEKS                       R82 R81 K180 ["TextSize"]
     1603 GETIMPORT                        R82 K152 [UDim2.new]
     1605 LOADN                            R83 1
     1606 LOADN                            R84 0
     1607 LOADN                            R85 0
     1608 LOADN                            R86 24
     1609 CALL                             R82 4 1
     1610 SETTABLEKS                       R82 R81 K2 ["Size"]
     1612 NAMECALL                         R82 R61 K150 ["getNextOrder"]
     1614 CALL                             R82 1 1
     1615 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1617 NEWCLOSURE                       R82 P4
     1618 CAPTURE                          UPVAL U37
     1619 CAPTURE                          VAL R24
     1620 SETTABLEKS                       R82 R81 K316 ["OnClick"]
     1622 CALL                             R79 2 1
     1623 SETTABLEKS                       R79 R78 K307 ["CreatorStoreConfigurationLink"]
     1625 CALL                             R75 3 1
     1626 JUMP                             ; [+1]
     1627 LOADNIL                          R75
     1628 SETTABLEKS                       R75 R74 K116 ["CreatorStoreConfigurationFrame"]
     1630 MOVE                             R75 R41
     1631 JUMPIFNOT                        R75 ; [+24]
     1632 GETUPVAL                         R75 7
     1633 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1635 GETUPVAL                         R76 38
     1636 DUPTABLE                         R77 K323 [{["Title"], ["TotalHeight"] = 80, ["CommentEnabled"], ["CommentOn"], ["ToggleCallback"], ["LayoutOrder"]}]
     1637 LOADK                            R80 K88 ["General"]
     1638 LOADK                            R81 K324 ["Comments"]
     1639 NAMECALL                         R78 R60 K75 ["getText"]
     1641 CALL                             R78 3 1
     1642 SETTABLEKS                       R78 R77 K102 ["Title"]
     1644 SETTABLEKS                       R11 R77 K320 ["CommentEnabled"]
     1646 SETTABLEKS                       R12 R77 K321 ["CommentOn"]
     1648 SETTABLEKS                       R31 R77 K322 ["ToggleCallback"]
     1650 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1652 CALL                             R78 1 1
     1653 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1655 CALL                             R75 2 1
     1656 SETTABLEKS                       R75 R74 K117 ["Comment"]
     1658 MOVE                             R75 R21
     1659 JUMPIFNOT                        R75 ; [+28]
     1660 GETUPVAL                         R75 7
     1661 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1663 GETUPVAL                         R76 39
     1664 DUPTABLE                         R77 K325 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1665 LOADK                            R80 K88 ["General"]
     1666 LOADK                            R81 K118 ["DeleteLocal"]
     1667 NAMECALL                         R78 R60 K75 ["getText"]
     1669 CALL                             R78 3 1
     1670 SETTABLEKS                       R78 R77 K102 ["Title"]
     1672 JUMPIFNOT                        R21 ; [+2]
     1673 LOADN                            R78 120
     1674 JUMP                             ; [+1]
     1675 LOADN                            R78 80
     1676 SETTABLEKS                       R78 R77 K200 ["TotalHeight"]
     1678 SETTABLEKS                       R13 R77 K118 ["DeleteLocal"]
     1680 SETTABLEKS                       R32 R77 K322 ["ToggleCallback"]
     1682 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1684 CALL                             R78 1 1
     1685 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1687 CALL                             R75 2 1
     1688 SETTABLEKS                       R75 R74 K118 ["DeleteLocal"]
     1690 MOVE                             R75 R22
     1691 JUMPIFNOT                        R75 ; [+57]
     1692 GETUPVAL                         R75 15
     1693 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1695 GETUPVAL                         R76 16
     1696 GETTABLEKS                       R76 R76 K191 ["View"]
     1698 DUPTABLE                         R77 K327 [{["tag"] = "col auto-xy padding-top-xlarge", ["LayoutOrder"]}]
     1699 NAMECALL                         R78 R61 K150 ["getNextOrder"]
     1701 CALL                             R78 1 1
     1702 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1704 DUPTABLE                         R78 K329 [{"Section"}]
     1705 GETUPVAL                         R79 15
     1706 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1708 GETUPVAL                         R80 26
     1709 DUPTABLE                         R81 K331 [{["LayoutOrder"] = 1, ["Title"], ["AutomaticContentHeight"] = True, ["Size"]}]
     1710 LOADK                            R84 K88 ["General"]
     1711 LOADK                            R85 K332 ["AnimationSectionTitle"]
     1712 NAMECALL                         R82 R60 K75 ["getText"]
     1714 CALL                             R82 3 1
     1715 SETTABLEKS                       R82 R81 K102 ["Title"]
     1717 GETIMPORT                        R82 K152 [UDim2.new]
     1719 LOADN                            R83 1
     1720 LOADN                            R84 0
     1721 LOADN                            R85 0
     1722 LOADN                            R86 0
     1723 CALL                             R82 4 1
     1724 SETTABLEKS                       R82 R81 K2 ["Size"]
     1726 DUPTABLE                         R82 K334 [{"AnimationCheckboxCol"}]
     1727 GETUPVAL                         R83 15
     1728 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1730 GETUPVAL                         R84 40
     1731 DUPTABLE                         R85 K337 [{["LayoutOrder"] = 1, ["Localization"], ["OnSelectionChanged"], ["OnSectionValidityChanged"]}]
     1732 SETTABLEKS                       R60 R85 K72 ["Localization"]
     1734 GETTABLEKS                       R86 R2 K338 ["onAnimationSelectionChanged"]
     1736 SETTABLEKS                       R86 R85 K335 ["OnSelectionChanged"]
     1738 GETTABLEKS                       R86 R2 K339 ["onanimationSectionValidityChanged"]
     1740 SETTABLEKS                       R86 R85 K336 ["OnSectionValidityChanged"]
     1742 CALL                             R83 2 1
     1743 SETTABLEKS                       R83 R82 K333 ["AnimationCheckboxCol"]
     1745 CALL                             R79 3 1
     1746 SETTABLEKS                       R79 R78 K328 ["Section"]
     1748 CALL                             R75 3 1
     1749 SETTABLEKS                       R75 R74 K119 ["AnimationPackProperties"]
     1751 CALL                             R71 3 -1
     1752 RETURN                           R71 -1

PROTO_22:
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
       35 GETUPVAL                         R2 1
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+21]
       38 GETTABLEKS                       R2 R0 K7 ["versionHistoryWithDescriptions"]
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETTABLEKS                       R3 R0 K7 ["versionHistoryWithDescriptions"]
       43 GETTABLEN                        R2 R3 1
       44 JUMPIFEQKNIL                     R2 ; [+11]
       46 GETTABLEKS                       R4 R2 K8 ["moderationState"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K9 ["MODERATION_STATE_REJECTED"]
       51 JUMPIFNOTEQ                      R4 R5 ; [+4]
       53 GETTABLEKS                       R3 R2 K10 ["assetVersionNumber"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R1 K11 ["rejectedVersionNumber"]
       59 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
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
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["BrowserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETTABLEKS                       R2 R2 K7 ["Parent"]
       23 GETTABLEKS                       R3 R2 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Util"]
       27 GETTABLEKS                       R4 R2 K10 ["Packages"]
       29 GETIMPORT                        R5 K12 [require]
       31 GETTABLEKS                       R6 R4 K13 ["Cryo"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K12 [require]
       36 GETTABLEKS                       R7 R4 K14 ["Framework"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K12 [require]
       41 GETTABLEKS                       R8 R4 K15 ["SharedPluginConstants"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R6 K9 ["Util"]
       46 GETTABLEKS                       R8 R8 K16 ["CrossPluginCommunication"]
       48 GETTABLEKS                       R8 R8 K17 ["new"]
       50 GETTABLEKS                       R9 R7 K18 ["ASSET_MANAGER"]
       52 GETTABLEKS                       R9 R9 K19 ["CPC_ID"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K12 [require]
       57 GETTABLEKS                       R10 R4 K20 ["Foundation"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K1 [game]
       62 LOADK                            R12 K21 ["ToolboxVideoConfigSharing2"]
       63 NAMECALL                         R10 R10 K22 ["GetFastFlag"]
       65 CALL                             R10 2 1
       66 GETIMPORT                        R11 K12 [require]
       68 GETTABLEKS                       R12 R2 K8 ["Src"]
       70 GETTABLEKS                       R12 R12 K9 ["Util"]
       72 GETTABLEKS                       R12 R12 K23 ["SharedFlags"]
       74 GETTABLEKS                       R12 R12 K24 ["getFFlagToolboxEnableFiatFully"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K12 [require]
       79 GETTABLEKS                       R13 R2 K8 ["Src"]
       81 GETTABLEKS                       R13 R13 K9 ["Util"]
       83 GETTABLEKS                       R13 R13 K23 ["SharedFlags"]
       85 GETTABLEKS                       R13 R13 K25 ["getFFlagToolboxAssetConfigOnboardingLink"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K1 [game]
       90 LOADK                            R15 K26 ["ToolboxRemoveRestrictedAssetWarning2"]
       91 NAMECALL                         R13 R13 K22 ["GetFastFlag"]
       93 CALL                             R13 2 1
       94 GETIMPORT                        R14 K12 [require]
       96 GETTABLEKS                       R15 R4 K27 ["React"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K12 [require]
      101 GETTABLEKS                       R16 R4 K28 ["Roact"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K12 [require]
      106 GETTABLEKS                       R17 R4 K29 ["RoactRodux"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K12 [require]
      111 GETTABLEKS                       R18 R4 K14 ["Framework"]
      113 CALL                             R17 1 1
      114 GETTABLEKS                       R17 R17 K30 ["ContextServices"]
      116 GETTABLEKS                       R18 R17 K31 ["withContext"]
      118 GETTABLEKS                       R19 R6 K32 ["UI"]
      120 GETTABLEKS                       R20 R19 K33 ["MultiImagePickerWrapper"]
      122 GETTABLEKS                       R21 R19 K34 ["TextLabel"]
      124 GETTABLEKS                       R22 R19 K35 ["TitledFrame"]
      126 GETTABLEKS                       R23 R19 K36 ["BulletList"]
      128 GETTABLEKS                       R24 R19 K37 ["LinkText"]
      130 GETTABLEKS                       R25 R19 K38 ["Pane"]
      132 GETIMPORT                        R26 K12 [require]
      134 GETTABLEKS                       R27 R2 K8 ["Src"]
      136 GETTABLEKS                       R27 R27 K39 ["Components"]
      138 GETTABLEKS                       R27 R27 K40 ["StyledScrollingFrame"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K12 [require]
      143 GETTABLEKS                       R28 R4 K41 ["Dash"]
      145 CALL                             R27 1 1
      146 GETTABLEKS                       R28 R27 K42 ["map"]
      148 GETIMPORT                        R29 K12 [require]
      150 GETTABLEKS                       R30 R3 K43 ["createAssetMediaMetadata"]
      152 CALL                             R29 1 1
      153 GETIMPORT                        R30 K12 [require]
      155 GETTABLEKS                       R31 R3 K44 ["LayoutOrderIterator"]
      157 CALL                             R30 1 1
      158 GETIMPORT                        R31 K12 [require]
      160 GETTABLEKS                       R32 R3 K45 ["AssetConfigConstants"]
      162 CALL                             R31 1 1
      163 GETIMPORT                        R32 K12 [require]
      165 GETTABLEKS                       R33 R3 K46 ["AssetConfigUtil"]
      167 CALL                             R32 1 1
      168 GETIMPORT                        R33 K12 [require]
      170 GETTABLEKS                       R34 R3 K47 ["Constants"]
      172 CALL                             R33 1 1
      173 GETIMPORT                        R34 K12 [require]
      175 GETTABLEKS                       R35 R2 K8 ["Src"]
      177 GETTABLEKS                       R35 R35 K9 ["Util"]
      179 GETTABLEKS                       R35 R35 K48 ["Images"]
      181 CALL                             R34 1 1
      182 GETIMPORT                        R35 K12 [require]
      184 GETTABLEKS                       R36 R2 K8 ["Src"]
      186 GETTABLEKS                       R36 R36 K49 ["Localization"]
      188 GETTABLEKS                       R36 R36 K50 ["getLocalizedAssetTextMap"]
      190 CALL                             R35 1 1
      191 GETIMPORT                        R36 K12 [require]
      193 GETTABLEKS                       R37 R3 K51 ["ToolboxUtilities"]
      195 CALL                             R36 1 1
      196 GETIMPORT                        R37 K12 [require]
      198 GETTABLEKS                       R38 R3 K52 ["FiatTempConstants"]
      200 CALL                             R37 1 1
      201 GETIMPORT                        R38 K12 [require]
      203 GETTABLEKS                       R39 R3 K53 ["Urls"]
      205 CALL                             R38 1 1
      206 GETTABLEKS                       R39 R2 K8 ["Src"]
      208 GETTABLEKS                       R39 R39 K39 ["Components"]
      210 GETTABLEKS                       R39 R39 K54 ["AssetConfiguration"]
      212 GETIMPORT                        R40 K12 [require]
      214 GETTABLEKS                       R41 R2 K8 ["Src"]
      216 GETTABLEKS                       R41 R41 K55 ["Actions"]
      218 GETTABLEKS                       R41 R41 K56 ["SetUploadAssetValidationStatus"]
      220 CALL                             R40 1 1
      221 GETIMPORT                        R41 K12 [require]
      223 GETTABLEKS                       R42 R39 K57 ["ConfigTextField"]
      225 CALL                             R41 1 1
      226 GETIMPORT                        R42 K12 [require]
      228 GETTABLEKS                       R43 R39 K58 ["ConfigAccess"]
      230 CALL                             R42 1 1
      231 GETIMPORT                        R43 K12 [require]
      233 GETTABLEKS                       R44 R39 K59 ["ConfigDeleteLocal"]
      235 CALL                             R43 1 1
      236 GETIMPORT                        R44 K12 [require]
      238 GETTABLEKS                       R45 R39 K60 ["ConfigCopy"]
      240 CALL                             R44 1 1
      241 GETIMPORT                        R45 K12 [require]
      243 GETTABLEKS                       R46 R39 K61 ["ConfigAssetType"]
      245 CALL                             R45 1 1
      246 GETIMPORT                        R46 K12 [require]
      248 GETTABLEKS                       R47 R39 K62 ["PublishToMarketplaceToggle"]
      250 CALL                             R46 1 1
      251 GETIMPORT                        R47 K12 [require]
      253 GETTABLEKS                       R48 R39 K63 ["ConfigComment"]
      255 CALL                             R47 1 1
      256 GETIMPORT                        R48 K12 [require]
      258 GETTABLEKS                       R49 R39 K64 ["ConfigSharing"]
      260 CALL                             R48 1 1
      261 GETIMPORT                        R49 K12 [require]
      263 GETTABLEKS                       R50 R39 K65 ["ConfigSectionWrapper"]
      265 CALL                             R49 1 1
      266 GETIMPORT                        R50 K12 [require]
      268 GETTABLEKS                       R51 R39 K66 ["Header"]
      270 CALL                             R50 1 1
      271 GETIMPORT                        R51 K12 [require]
      273 GETTABLEKS                       R52 R39 K67 ["AnimationCheckboxCol"]
      275 CALL                             R51 1 1
      276 GETIMPORT                        R52 K12 [require]
      278 GETTABLEKS                       R53 R39 K68 ["FiatPriceComponent"]
      280 CALL                             R52 1 1
      281 GETIMPORT                        R53 K12 [require]
      283 GETTABLEKS                       R54 R39 K69 ["DataConsentToggle"]
      285 CALL                             R53 1 1
      286 GETIMPORT                        R54 K12 [require]
      288 GETTABLEKS                       R55 R39 K70 ["SpecialAttributeSection"]
      290 CALL                             R54 1 1
      291 GETIMPORT                        R55 K12 [require]
      293 GETTABLEKS                       R56 R39 K71 ["UGCBundleValidation"]
      295 CALL                             R55 1 1
      296 GETIMPORT                        R56 K12 [require]
      298 GETTABLEKS                       R57 R2 K8 ["Src"]
      300 GETTABLEKS                       R57 R57 K9 ["Util"]
      302 GETTABLEKS                       R57 R57 K72 ["ColorPicker"]
      304 CALL                             R56 1 1
      305 GETIMPORT                        R57 K12 [require]
      307 GETTABLEKS                       R58 R39 K73 ["AvatarItemSection"]
      309 CALL                             R57 1 1
      310 GETIMPORT                        R58 K12 [require]
      312 GETTABLEKS                       R59 R2 K8 ["Src"]
      314 GETTABLEKS                       R59 R59 K74 ["Flags"]
      316 GETTABLEKS                       R59 R59 K75 ["getFFlagToolboxPublishOnApproval"]
      318 CALL                             R58 1 1
      319 GETIMPORT                        R59 K12 [require]
      321 GETTABLEKS                       R60 R2 K8 ["Src"]
      323 GETTABLEKS                       R60 R60 K74 ["Flags"]
      325 GETTABLEKS                       R60 R60 K76 ["getFFlagToolboxAssetConfigGroupOwnership"]
      327 CALL                             R59 1 1
      328 GETIMPORT                        R60 K12 [require]
      330 GETTABLEKS                       R61 R2 K8 ["Src"]
      332 GETTABLEKS                       R61 R61 K74 ["Flags"]
      334 GETTABLEKS                       R61 R61 K77 ["getFFlagToolboxHideSpecialAttributeForNonAvatarItems"]
      336 CALL                             R60 1 1
      337 GETIMPORT                        R61 K12 [require]
      339 GETTABLEKS                       R62 R2 K8 ["Src"]
      341 GETTABLEKS                       R62 R62 K74 ["Flags"]
      343 GETTABLEKS                       R62 R62 K78 ["getFFlagToolboxAvatarItemSection"]
      345 CALL                             R61 1 1
      346 GETIMPORT                        R62 K12 [require]
      348 GETTABLEKS                       R63 R2 K8 ["Src"]
      350 GETTABLEKS                       R63 R63 K74 ["Flags"]
      352 GETTABLEKS                       R63 R63 K79 ["getFStringToolboxAssetAppealPage"]
      354 CALL                             R62 1 1
      355 GETIMPORT                        R63 K12 [require]
      357 GETTABLEKS                       R64 R2 K8 ["Src"]
      359 GETTABLEKS                       R64 R64 K74 ["Flags"]
      361 GETTABLEKS                       R64 R64 K80 ["getFFlagToolboxEnableExtendedVersioning"]
      363 CALL                             R63 1 1
      364 GETIMPORT                        R64 K12 [require]
      366 GETTABLEKS                       R65 R2 K8 ["Src"]
      368 GETTABLEKS                       R65 R65 K9 ["Util"]
      370 GETTABLEKS                       R65 R65 K81 ["canImportNewAssetVersion"]
      372 CALL                             R64 1 1
      373 GETIMPORT                        R65 K12 [require]
      375 GETTABLEKS                       R66 R2 K8 ["Src"]
      377 GETTABLEKS                       R66 R66 K82 ["Types"]
      379 GETTABLEKS                       R66 R66 K83 ["MarketplaceFiatServiceTypes"]
      381 CALL                             R65 1 1
      382 GETIMPORT                        R66 K12 [require]
      384 GETTABLEKS                       R67 R2 K8 ["Src"]
      386 GETTABLEKS                       R67 R67 K55 ["Actions"]
      388 GETTABLEKS                       R67 R67 K84 ["SetFieldError"]
      390 CALL                             R66 1 1
      391 GETIMPORT                        R67 K12 [require]
      393 GETTABLEKS                       R68 R2 K8 ["Src"]
      395 GETTABLEKS                       R68 R68 K9 ["Util"]
      397 GETTABLEKS                       R68 R68 K85 ["PageInfoHelper"]
      399 CALL                             R67 1 1
      400 GETTABLEKS                       R68 R15 K86 ["PureComponent"]
      402 LOADK                            R70 K87 ["PublishAsset"]
      403 NAMECALL                         R68 R68 K88 ["extend"]
      405 CALL                             R68 2 1
      406 DUPCLOSURE                       R69 K89 [PROTO_2]
      407 CAPTURE                          VAL R9
      408 CAPTURE                          VAL R17
      409 CAPTURE                          VAL R1
      410 CAPTURE                          VAL R62
      411 CAPTURE                          VAL R64
      412 CAPTURE                          VAL R8
      413 CAPTURE                          VAL R7
      414 CAPTURE                          VAL R14
      415 DUPCLOSURE                       R70 K90 [PROTO_12]
      416 CAPTURE                          VAL R31
      417 CAPTURE                          VAL R15
      418 CAPTURE                          VAL R0
      419 CAPTURE                          VAL R36
      420 CAPTURE                          VAL R12
      421 SETTABLEKS                       R70 R68 K91 ["init"]
      423 DUPCLOSURE                       R70 K92 [PROTO_13]
      424 SETTABLEKS                       R70 R68 K93 ["bumpCanvas"]
      426 DUPCLOSURE                       R70 K94 [PROTO_14]
      427 CAPTURE                          VAL R32
      428 CAPTURE                          VAL R30
      429 CAPTURE                          VAL R14
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R35
      432 SETTABLEKS                       R70 R68 K95 ["getMissingOptionalPartsMessage"]
      434 DUPCLOSURE                       R70 K96 [PROTO_15]
      435 CAPTURE                          VAL R32
      436 CAPTURE                          VAL R30
      437 CAPTURE                          VAL R14
      438 CAPTURE                          VAL R9
      439 SETTABLEKS                       R70 R68 K97 ["getUnknownMeshPartMessage"]
      441 DUPCLOSURE                       R70 K98 [PROTO_21]
      442 CAPTURE                          VAL R31
      443 CAPTURE                          VAL R32
      444 CAPTURE                          VAL R38
      445 CAPTURE                          VAL R36
      446 CAPTURE                          VAL R13
      447 CAPTURE                          VAL R10
      448 CAPTURE                          VAL R30
      449 CAPTURE                          VAL R15
      450 CAPTURE                          VAL R28
      451 CAPTURE                          VAL R29
      452 CAPTURE                          VAL R26
      453 CAPTURE                          VAL R25
      454 CAPTURE                          VAL R33
      455 CAPTURE                          VAL R34
      456 CAPTURE                          VAL R63
      457 CAPTURE                          VAL R14
      458 CAPTURE                          VAL R9
      459 CAPTURE                          VAL R69
      460 CAPTURE                          VAL R50
      461 CAPTURE                          VAL R41
      462 CAPTURE                          VAL R61
      463 CAPTURE                          VAL R57
      464 CAPTURE                          VAL R45
      465 CAPTURE                          VAL R42
      466 CAPTURE                          VAL R59
      467 CAPTURE                          VAL R56
      468 CAPTURE                          VAL R49
      469 CAPTURE                          VAL R55
      470 CAPTURE                          VAL R58
      471 CAPTURE                          VAL R46
      472 CAPTURE                          VAL R5
      473 CAPTURE                          VAL R53
      474 CAPTURE                          VAL R60
      475 CAPTURE                          VAL R54
      476 CAPTURE                          VAL R48
      477 CAPTURE                          VAL R21
      478 CAPTURE                          VAL R24
      479 CAPTURE                          VAL R0
      480 CAPTURE                          VAL R47
      481 CAPTURE                          VAL R43
      482 CAPTURE                          VAL R51
      483 SETTABLEKS                       R70 R68 K99 ["render"]
      485 DUPCLOSURE                       R70 K100 [PROTO_22]
      486 CAPTURE                          VAL R12
      487 CAPTURE                          VAL R63
      488 CAPTURE                          VAL R31
      489 DUPCLOSURE                       R71 K101 [PROTO_25]
      490 CAPTURE                          VAL R66
      491 CAPTURE                          VAL R31
      492 CAPTURE                          VAL R40
      493 MOVE                             R72 R18
      494 DUPTABLE                         R73 K103 [{"Localization", "Stylizer"}]
      495 GETTABLEKS                       R74 R17 K49 ["Localization"]
      497 SETTABLEKS                       R74 R73 K49 ["Localization"]
      499 GETTABLEKS                       R74 R17 K102 ["Stylizer"]
      501 SETTABLEKS                       R74 R73 K102 ["Stylizer"]
      503 CALL                             R72 1 1
      504 MOVE                             R73 R68
      505 CALL                             R72 1 1
      506 MOVE                             R68 R72
      507 GETTABLEKS                       R72 R16 K104 ["connect"]
      509 MOVE                             R73 R70
      510 MOVE                             R74 R71
      511 CALL                             R72 2 1
      512 MOVE                             R73 R68
      513 CALL                             R72 1 -1
      514 RETURN                           R72 -1
