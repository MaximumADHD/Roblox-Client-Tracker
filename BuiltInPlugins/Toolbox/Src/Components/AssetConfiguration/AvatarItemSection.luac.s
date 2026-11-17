PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationState"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationState"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"validationFailureReasons"}]
        2 SETTABLEKS                       R0 R3 K0 ["validationFailureReasons"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ugcBundleValidationResults"}]
        2 SETTABLEKS                       R0 R3 K0 ["ugcBundleValidationResults"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentAssetType"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentAssetType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K4 [{"validationState", "validationFailureReasons", "ugcBundleValidationResults", "currentAssetType"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K5 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R3 R3 K6 ["NONE"]
        6 SETTABLEKS                       R3 R2 K0 ["validationState"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K1 ["validationFailureReasons"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K2 ["ugcBundleValidationResults"]
       16 GETTABLEKS                       R3 R1 K7 ["assetTypeEnum"]
       18 SETTABLEKS                       R3 R2 K3 ["currentAssetType"]
       20 SETTABLEKS                       R2 R0 K8 ["state"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K9 ["setValidationState"]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K10 ["setValidationFailureReasons"]
       30 NEWCLOSURE                       R2 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K11 ["setUGCBundleValidationResults"]
       34 NEWCLOSURE                       R2 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K12 ["setCurrentAssetType"]
       38 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
        8 GETTABLEKS                       R5 R1 K4 ["displayAssetTypeSelection"]
       10 GETTABLEKS                       R6 R1 K5 ["displayOwnership"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["isUGCBundleType"]
       19 MOVE                             R9 R4
       20 CALL                             R8 1 1
       21 LOADNIL                          R9
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K8 ["isUGCBodyBundleType"]
       25 MOVE                             R11 R4
       26 CALL                             R10 1 1
       27 JUMPIFNOT                        R10 ; [+7]
       28 LOADK                            R12 K9 ["General"]
       29 LOADK                            R13 K10 ["BodyValidation"]
       30 NAMECALL                         R10 R3 K11 ["getText"]
       32 CALL                             R10 3 1
       33 MOVE                             R9 R10
       34 JUMP                             ; [+19]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R10 R10 K12 ["isAnimationBundleType"]
       38 MOVE                             R11 R4
       39 CALL                             R10 1 1
       40 JUMPIFNOT                        R10 ; [+7]
       41 LOADK                            R12 K9 ["General"]
       42 LOADK                            R13 K13 ["AvatarAnimationsValidation"]
       43 NAMECALL                         R10 R3 K11 ["getText"]
       45 CALL                             R10 3 1
       46 MOVE                             R9 R10
       47 JUMP                             ; [+6]
       48 LOADK                            R12 K9 ["General"]
       49 LOADK                            R13 K14 ["ShoeValidation"]
       50 NAMECALL                         R10 R3 K11 ["getText"]
       52 CALL                             R10 3 1
       53 MOVE                             R9 R10
       54 LOADNIL                          R10
       55 LOADNIL                          R11
       56 GETTABLEKS                       R12 R1 K15 ["instances"]
       58 JUMPIFNOT                        R12 ; [+20]
       59 GETTABLEKS                       R15 R1 K15 ["instances"]
       61 GETTABLEN                        R14 R15 1
       62 GETTABLEKS                       R15 R1 K16 ["allowedBundleTypeSettings"]
       64 MOVE                             R16 R4
       65 MOVE                             R17 R2
       66 NAMECALL                         R12 R0 K17 ["getMissingOptionalPartsMessage"]
       68 CALL                             R12 5 1
       69 MOVE                             R10 R12
       70 GETTABLEKS                       R15 R1 K15 ["instances"]
       72 GETTABLEN                        R14 R15 1
       73 MOVE                             R15 R4
       74 MOVE                             R16 R2
       75 NAMECALL                         R12 R0 K18 ["getUnknownMeshPartMessage"]
       77 CALL                             R12 4 1
       78 MOVE                             R11 R12
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K19 ["createElement"]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K20 ["View"]
       85 DUPTABLE                         R14 K24 [{["tag"] = "col size-full-0 auto-y align-x-left align-y-top", ["LayoutOrder"]}]
       86 GETTABLEKS                       R15 R1 K23 ["LayoutOrder"]
       88 SETTABLEKS                       R15 R14 K23 ["LayoutOrder"]
       90 DUPTABLE                         R15 K32 [{"AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "PublishToMarketplace", "DataSharingConsent", "SpecialAttribute"}]
       91 JUMPIFNOT                        R5 ; [+66]
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R16 R16 K19 ["createElement"]
       95 GETUPVAL                         R17 4
       96 DUPTABLE                         R18 K44 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "onAvatarItemCategorySelected", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
       97 NAMECALL                         R19 R7 K45 ["getNextOrder"]
       99 CALL                             R19 1 1
      100 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      102 GETTABLEKS                       R19 R1 K33 ["dataSharingEnabled"]
      104 SETTABLEKS                       R19 R18 K33 ["dataSharingEnabled"]
      106 GETTABLEKS                       R19 R1 K34 ["dataSharingToggled"]
      108 SETTABLEKS                       R19 R18 K34 ["dataSharingToggled"]
      110 GETTABLEKS                       R19 R1 K35 ["onDataConsentToggleClick"]
      112 SETTABLEKS                       R19 R18 K35 ["onDataConsentToggleClick"]
      114 GETTABLEKS                       R19 R1 K36 ["onAvatarItemCategorySelected"]
      116 SETTABLEKS                       R19 R18 K36 ["onAvatarItemCategorySelected"]
      118 GETTABLEKS                       R19 R0 K46 ["state"]
      120 GETTABLEKS                       R19 R19 K37 ["validationState"]
      122 SETTABLEKS                       R19 R18 K37 ["validationState"]
      124 GETTABLEKS                       R19 R0 K46 ["state"]
      126 GETTABLEKS                       R19 R19 K38 ["validationFailureReasons"]
      128 SETTABLEKS                       R19 R18 K38 ["validationFailureReasons"]
      130 GETTABLEKS                       R19 R0 K39 ["setValidationState"]
      132 SETTABLEKS                       R19 R18 K39 ["setValidationState"]
      134 GETTABLEKS                       R19 R0 K40 ["setValidationFailureReasons"]
      136 SETTABLEKS                       R19 R18 K40 ["setValidationFailureReasons"]
      138 GETTABLEKS                       R19 R0 K46 ["state"]
      140 GETTABLEKS                       R19 R19 K41 ["ugcBundleValidationResults"]
      142 SETTABLEKS                       R19 R18 K41 ["ugcBundleValidationResults"]
      144 GETTABLEKS                       R19 R0 K42 ["setUGCBundleValidationResults"]
      146 SETTABLEKS                       R19 R18 K42 ["setUGCBundleValidationResults"]
      148 GETTABLEKS                       R19 R0 K43 ["setCurrentAssetType"]
      150 SETTABLEKS                       R19 R18 K43 ["setCurrentAssetType"]
      152 GETTABLEKS                       R19 R1 K15 ["instances"]
      154 SETTABLEKS                       R19 R18 K15 ["instances"]
      156 CALL                             R16 2 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R16
      159 SETTABLEKS                       R16 R15 K25 ["AssetTypeSelection"]
      161 JUMPIFNOT                        R5 ; [+37]
      162 JUMPIFNOT                        R6 ; [+36]
      163 GETUPVAL                         R16 2
      164 GETTABLEKS                       R16 R16 K19 ["createElement"]
      166 GETUPVAL                         R17 5
      167 DUPTABLE                         R18 K53 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      168 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      170 CALL                             R19 1 1
      171 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      173 GETTABLEKS                       R19 R1 K54 ["onOwnerSelected"]
      175 SETTABLEKS                       R19 R18 K47 ["onDropDownSelect"]
      177 GETTABLEKS                       R19 R1 K48 ["owner"]
      179 SETTABLEKS                       R19 R18 K48 ["owner"]
      181 GETUPVAL                         R20 6
      182 CALL                             R20 0 1
      183 JUMPIFNOT                        R20 ; [+3]
      184 GETTABLEKS                       R19 R1 K49 ["preselectedGroupId"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R19
      188 SETTABLEKS                       R19 R18 K49 ["preselectedGroupId"]
      190 LOADK                            R21 K9 ["General"]
      191 LOADK                            R22 K55 ["Ownership"]
      192 NAMECALL                         R19 R3 K11 ["getText"]
      194 CALL                             R19 3 1
      195 SETTABLEKS                       R19 R18 K50 ["Title"]
      197 CALL                             R16 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R16
      200 SETTABLEKS                       R16 R15 K26 ["Creator"]
      202 JUMPIFNOT                        R5 ; [+94]
      203 JUMPIFNOT                        R6 ; [+93]
      204 GETTABLEKS                       R17 R1 K56 ["showColorPicker"]
      206 JUMPIFNOT                        R17 ; [+90]
      207 GETUPVAL                         R16 2
      208 GETTABLEKS                       R16 R16 K19 ["createElement"]
      210 GETUPVAL                         R17 3
      211 GETTABLEKS                       R17 R17 K20 ["View"]
      213 DUPTABLE                         R18 K59 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      214 GETIMPORT                        R19 K61 [UDim2.new]
      216 LOADN                            R20 1
      217 LOADN                            R21 0
      218 LOADN                            R22 0
      219 LOADN                            R23 70
      220 CALL                             R19 4 1
      221 SETTABLEKS                       R19 R18 K58 ["Size"]
      223 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      225 CALL                             R19 1 1
      226 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      228 DUPTABLE                         R19 K63 [{"Title", "ColorPickerButton"}]
      229 GETUPVAL                         R20 7
      230 GETTABLEKS                       R20 R20 K19 ["createElement"]
      232 GETUPVAL                         R21 3
      233 GETTABLEKS                       R21 R21 K64 ["Text"]
      235 DUPTABLE                         R22 K66 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      236 NEWTABLE                         R23 2 0
      238 LOADB                            R24 1
      239 SETTABLEKS                       R24 R23 K67 ["text-align-x-left text-align-y-top"]
      241 LOADB                            R24 1
      242 SETTABLEKS                       R24 R23 K68 ["text-title-small content-emphasis"]
      244 SETTABLEKS                       R23 R22 K21 ["tag"]
      246 LOADK                            R25 K9 ["General"]
      247 LOADK                            R26 K69 ["ThumbnailSkinTone"]
      248 NAMECALL                         R23 R3 K11 ["getText"]
      250 CALL                             R23 3 1
      251 SETTABLEKS                       R23 R22 K64 ["Text"]
      253 GETIMPORT                        R23 K61 [UDim2.new]
      255 LOADN                            R24 0
      256 GETUPVAL                         R25 8
      257 GETTABLEKS                       R25 R25 K70 ["TITLE_GUTTER_WIDTH"]
      259 LOADN                            R26 1
      260 LOADN                            R27 0
      261 CALL                             R23 4 1
      262 SETTABLEKS                       R23 R22 K58 ["Size"]
      264 CALL                             R20 2 1
      265 SETTABLEKS                       R20 R19 K50 ["Title"]
      267 GETUPVAL                         R20 2
      268 GETTABLEKS                       R20 R20 K19 ["createElement"]
      270 GETUPVAL                         R21 9
      271 DUPTABLE                         R22 K76 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
      272 GETTABLEKS                       R23 R1 K71 ["selectedColor"]
      274 SETTABLEKS                       R23 R22 K71 ["selectedColor"]
      276 GETTABLEKS                       R23 R1 K72 ["setSelectedColor"]
      278 SETTABLEKS                       R23 R22 K72 ["setSelectedColor"]
      280 SETTABLEKS                       R3 R22 K2 ["Localization"]
      282 GETTABLEKS                       R23 R1 K77 ["showColorPickerRequiredError"]
      284 SETTABLEKS                       R23 R22 K73 ["showRequiredError"]
      286 GETTABLEKS                       R23 R2 K78 ["publishAsset"]
      288 GETTABLEKS                       R23 R23 K79 ["titleTextColor"]
      290 SETTABLEKS                       R23 R22 K75 ["textColor"]
      292 CALL                             R20 2 1
      293 SETTABLEKS                       R20 R19 K62 ["ColorPickerButton"]
      295 CALL                             R16 3 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R16
      298 SETTABLEKS                       R16 R15 K27 ["ColorPickerRow"]
      300 JUMPIFNOT                        R8 ; [+170]
      301 GETUPVAL                         R16 2
      302 GETTABLEKS                       R16 R16 K19 ["createElement"]
      304 GETUPVAL                         R17 10
      305 DUPTABLE                         R18 K81 [{"AutomaticSize", "LayoutOrder", "Title"}]
      306 GETIMPORT                        R19 K84 [Enum.AutomaticSize.XY]
      308 SETTABLEKS                       R19 R18 K80 ["AutomaticSize"]
      310 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      312 CALL                             R19 1 1
      313 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      315 SETTABLEKS                       R9 R18 K50 ["Title"]
      317 DUPTABLE                         R19 K86 [{"ValidationPane"}]
      318 GETUPVAL                         R20 2
      319 GETTABLEKS                       R20 R20 K19 ["createElement"]
      321 GETUPVAL                         R21 11
      322 DUPTABLE                         R22 K91 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
      323 GETIMPORT                        R23 K93 [Enum.AutomaticSize.Y]
      325 SETTABLEKS                       R23 R22 K80 ["AutomaticSize"]
      327 GETIMPORT                        R23 K96 [Enum.FillDirection.Vertical]
      329 SETTABLEKS                       R23 R22 K87 ["Layout"]
      331 GETIMPORT                        R23 K98 [UDim2.fromScale]
      333 LOADN                            R24 1
      334 LOADN                            R25 0
      335 CALL                             R23 2 1
      336 SETTABLEKS                       R23 R22 K58 ["Size"]
      338 DUPTABLE                         R23 K101 [{["Bottom"] = 24}]
      339 SETTABLEKS                       R23 R22 K90 ["Padding"]
      341 DUPTABLE                         R23 K105 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      342 GETUPVAL                         R24 2
      343 GETTABLEKS                       R24 R24 K19 ["createElement"]
      345 GETUPVAL                         R25 12
      346 DUPTABLE                         R26 K108 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["onAssetValidationResultChanged"]}]
      347 GETUPVAL                         R27 1
      348 GETTABLEKS                       R27 R27 K8 ["isUGCBodyBundleType"]
      350 MOVE                             R28 R4
      351 CALL                             R27 1 1
      352 SETTABLEKS                       R27 R26 K8 ["isUGCBodyBundleType"]
      354 GETUPVAL                         R27 1
      355 GETTABLEKS                       R27 R27 K12 ["isAnimationBundleType"]
      357 MOVE                             R28 R4
      358 CALL                             R27 1 1
      359 SETTABLEKS                       R27 R26 K12 ["isAnimationBundleType"]
      361 GETTABLEKS                       R27 R0 K46 ["state"]
      363 GETTABLEKS                       R27 R27 K37 ["validationState"]
      365 SETTABLEKS                       R27 R26 K37 ["validationState"]
      367 GETTABLEKS                       R27 R0 K39 ["setValidationState"]
      369 SETTABLEKS                       R27 R26 K39 ["setValidationState"]
      371 GETTABLEKS                       R27 R0 K46 ["state"]
      373 GETTABLEKS                       R27 R27 K38 ["validationFailureReasons"]
      375 SETTABLEKS                       R27 R26 K38 ["validationFailureReasons"]
      377 GETTABLEKS                       R27 R0 K40 ["setValidationFailureReasons"]
      379 SETTABLEKS                       R27 R26 K40 ["setValidationFailureReasons"]
      381 GETTABLEKS                       R27 R0 K46 ["state"]
      383 GETTABLEKS                       R27 R27 K41 ["ugcBundleValidationResults"]
      385 SETTABLEKS                       R27 R26 K106 ["validationResults"]
      387 GETTABLEKS                       R27 R0 K42 ["setUGCBundleValidationResults"]
      389 SETTABLEKS                       R27 R26 K42 ["setUGCBundleValidationResults"]
      391 GETTABLEKS                       R27 R0 K46 ["state"]
      393 GETTABLEKS                       R27 R27 K109 ["currentAssetType"]
      395 SETTABLEKS                       R27 R26 K3 ["assetTypeEnum"]
      397 GETTABLEKS                       R27 R1 K15 ["instances"]
      399 SETTABLEKS                       R27 R26 K15 ["instances"]
      401 GETTABLEKS                       R27 R1 K16 ["allowedBundleTypeSettings"]
      403 SETTABLEKS                       R27 R26 K16 ["allowedBundleTypeSettings"]
      405 GETTABLEKS                       R27 R1 K107 ["onAssetValidationResultChanged"]
      407 SETTABLEKS                       R27 R26 K107 ["onAssetValidationResultChanged"]
      409 CALL                             R24 2 1
      410 SETTABLEKS                       R24 R23 K102 ["UGCBundleValidation"]
      412 JUMPIFNOT                        R10 ; [+23]
      413 GETUPVAL                         R24 2
      414 GETTABLEKS                       R24 R24 K19 ["createElement"]
      416 GETUPVAL                         R25 11
      417 DUPTABLE                         R26 K110 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
      418 GETIMPORT                        R27 K93 [Enum.AutomaticSize.Y]
      420 SETTABLEKS                       R27 R26 K80 ["AutomaticSize"]
      422 GETIMPORT                        R27 K96 [Enum.FillDirection.Vertical]
      424 SETTABLEKS                       R27 R26 K87 ["Layout"]
      426 GETIMPORT                        R27 K98 [UDim2.fromScale]
      428 LOADN                            R28 1
      429 LOADN                            R29 0
      430 CALL                             R27 2 1
      431 SETTABLEKS                       R27 R26 K58 ["Size"]
      433 MOVE                             R27 R10
      434 CALL                             R24 3 1
      435 JUMP                             ; [+1]
      436 LOADNIL                          R24
      437 SETTABLEKS                       R24 R23 K103 ["MissingOptionalAccessoriesMsg"]
      439 JUMPIFNOT                        R11 ; [+23]
      440 GETUPVAL                         R24 2
      441 GETTABLEKS                       R24 R24 K19 ["createElement"]
      443 GETUPVAL                         R25 11
      444 DUPTABLE                         R26 K112 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
      445 GETIMPORT                        R27 K93 [Enum.AutomaticSize.Y]
      447 SETTABLEKS                       R27 R26 K80 ["AutomaticSize"]
      449 GETIMPORT                        R27 K96 [Enum.FillDirection.Vertical]
      451 SETTABLEKS                       R27 R26 K87 ["Layout"]
      453 GETIMPORT                        R27 K98 [UDim2.fromScale]
      455 LOADN                            R28 1
      456 LOADN                            R29 0
      457 CALL                             R27 2 1
      458 SETTABLEKS                       R27 R26 K58 ["Size"]
      460 MOVE                             R27 R11
      461 CALL                             R24 3 1
      462 JUMP                             ; [+1]
      463 LOADNIL                          R24
      464 SETTABLEKS                       R24 R23 K104 ["UnknownMeshPartsMsgChildren"]
      466 CALL                             R20 3 1
      467 SETTABLEKS                       R20 R19 K85 ["ValidationPane"]
      469 CALL                             R16 3 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R16
      472 SETTABLEKS                       R16 R15 K28 ["ContentTypeBodyValidation"]
      474 GETUPVAL                         R17 13
      475 CALL                             R17 0 1
      476 JUMPIFNOT                        R17 ; [+67]
      477 GETTABLEKS                       R17 R1 K113 ["publishOnApprovalEnabled"]
      479 JUMPIFNOT                        R17 ; [+64]
      480 GETUPVAL                         R17 1
      481 GETTABLEKS                       R17 R17 K114 ["canAutoPublishAvatarAssetType"]
      483 MOVE                             R18 R4
      484 CALL                             R17 1 1
      485 JUMPIFNOT                        R17 ; [+58]
      486 GETUPVAL                         R16 2
      487 GETTABLEKS                       R16 R16 K19 ["createElement"]
      489 GETUPVAL                         R17 14
      490 DUPTABLE                         R18 K120 [{"LayoutOrder", "canOptIn", "publishingFee", "publishOnApprovalToggled", "onPublishOnApprovalToggleClick", "groupId"}]
      491 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      493 CALL                             R19 1 1
      494 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      496 LOADB                            R19 0
      497 GETTABLEKS                       R20 R1 K121 ["hasPublishingPreferences"]
      499 JUMPIFNOTEQKB                    R20 TRUE ; [+7]
      501 GETTABLEKS                       R20 R1 K122 ["hasPublishingFeePreview"]
      503 JUMPIFEQKB                       R20 TRUE ; [+2]
      505 LOADB                            R19 0 +1
      506 LOADB                            R19 1
      507 SETTABLEKS                       R19 R18 K115 ["canOptIn"]
      509 GETTABLEKS                       R20 R1 K122 ["hasPublishingFeePreview"]
      511 JUMPIFNOT                        R20 ; [+3]
      512 GETTABLEKS                       R19 R1 K123 ["publishingFeePreview"]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R19
      516 SETTABLEKS                       R19 R18 K116 ["publishingFee"]
      518 GETTABLEKS                       R19 R1 K117 ["publishOnApprovalToggled"]
      520 SETTABLEKS                       R19 R18 K117 ["publishOnApprovalToggled"]
      522 GETTABLEKS                       R19 R1 K124 ["onPublishToMarketplaceToggleClick"]
      524 SETTABLEKS                       R19 R18 K118 ["onPublishOnApprovalToggleClick"]
      526 GETTABLEKS                       R20 R1 K49 ["preselectedGroupId"]
      528 JUMPIFNOT                        R20 ; [+10]
      529 GETTABLEKS                       R20 R1 K49 ["preselectedGroupId"]
      531 GETUPVAL                         R21 15
      532 GETTABLEKS                       R21 R21 K125 ["None"]
      534 JUMPIFEQ                         R20 R21 ; [+4]
      536 GETTABLEKS                       R19 R1 K49 ["preselectedGroupId"]
      538 JUMP                             ; [+1]
      539 LOADNIL                          R19
      540 SETTABLEKS                       R19 R18 K119 ["groupId"]
      542 CALL                             R16 2 1
      543 JUMP                             ; [+1]
      544 LOADNIL                          R16
      545 SETTABLEKS                       R16 R15 K29 ["PublishToMarketplace"]
      547 GETTABLEKS                       R17 R1 K33 ["dataSharingEnabled"]
      549 JUMPIFNOT                        R17 ; [+32]
      550 GETUPVAL                         R17 1
      551 GETTABLEKS                       R17 R17 K7 ["isUGCBundleType"]
      553 MOVE                             R18 R4
      554 CALL                             R17 1 1
      555 JUMPIF                           R17 ; [+6]
      556 GETUPVAL                         R17 1
      557 GETTABLEKS                       R17 R17 K126 ["isCatalogAsset"]
      559 MOVE                             R18 R4
      560 CALL                             R17 1 1
      561 JUMPIFNOT                        R17 ; [+20]
      562 GETUPVAL                         R16 2
      563 GETTABLEKS                       R16 R16 K19 ["createElement"]
      565 GETUPVAL                         R17 16
      566 DUPTABLE                         R18 K127 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
      567 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      569 CALL                             R19 1 1
      570 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      572 GETTABLEKS                       R19 R1 K34 ["dataSharingToggled"]
      574 SETTABLEKS                       R19 R18 K34 ["dataSharingToggled"]
      576 GETTABLEKS                       R19 R1 K35 ["onDataConsentToggleClick"]
      578 SETTABLEKS                       R19 R18 K35 ["onDataConsentToggleClick"]
      580 CALL                             R16 2 1
      581 JUMP                             ; [+1]
      582 LOADNIL                          R16
      583 SETTABLEKS                       R16 R15 K30 ["DataSharingConsent"]
      585 GETTABLEKS                       R17 R1 K128 ["specialAttributes"]
      587 JUMPIFNOT                        R17 ; [+63]
      588 GETTABLEKS                       R18 R1 K128 ["specialAttributes"]
      590 LENGTH                           R17 R18
      591 LOADN                            R18 0
      592 JUMPIFNOTLT                      R18 R17 ; [+58]
      594 GETTABLEKS                       R17 R1 K129 ["hasMetadataPermission"]
      596 JUMPIFNOT                        R17 ; [+54]
      597 GETUPVAL                         R17 17
      598 CALL                             R17 0 1
      599 JUMPIFNOT                        R17 ; [+12]
      600 GETUPVAL                         R17 1
      601 GETTABLEKS                       R17 R17 K126 ["isCatalogAsset"]
      603 MOVE                             R18 R4
      604 CALL                             R17 1 1
      605 JUMPIF                           R17 ; [+6]
      606 GETUPVAL                         R17 1
      607 GETTABLEKS                       R17 R17 K7 ["isUGCBundleType"]
      609 MOVE                             R18 R4
      610 CALL                             R17 1 1
      611 JUMPIFNOT                        R17 ; [+39]
      612 GETUPVAL                         R16 7
      613 GETTABLEKS                       R16 R16 K19 ["createElement"]
      615 GETUPVAL                         R17 11
      616 DUPTABLE                         R18 K130 [{"AutomaticSize", "LayoutOrder", "Size", "Padding"}]
      617 GETIMPORT                        R19 K93 [Enum.AutomaticSize.Y]
      619 SETTABLEKS                       R19 R18 K80 ["AutomaticSize"]
      621 NAMECALL                         R19 R7 K45 ["getNextOrder"]
      623 CALL                             R19 1 1
      624 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      626 GETIMPORT                        R19 K98 [UDim2.fromScale]
      628 LOADN                            R20 1
      629 LOADN                            R21 0
      630 CALL                             R19 2 1
      631 SETTABLEKS                       R19 R18 K58 ["Size"]
      633 DUPTABLE                         R19 K132 [{["Top"] = 24}]
      634 SETTABLEKS                       R19 R18 K90 ["Padding"]
      636 DUPTABLE                         R19 K134 [{"Content"}]
      637 GETUPVAL                         R20 7
      638 GETTABLEKS                       R20 R20 K19 ["createElement"]
      640 GETUPVAL                         R21 18
      641 DUPTABLE                         R22 K135 [{"specialAttributes"}]
      642 GETTABLEKS                       R23 R1 K128 ["specialAttributes"]
      644 SETTABLEKS                       R23 R22 K128 ["specialAttributes"]
      646 CALL                             R20 2 1
      647 SETTABLEKS                       R20 R19 K133 ["Content"]
      649 CALL                             R16 3 1
      650 JUMP                             ; [+1]
      651 LOADNIL                          R16
      652 SETTABLEKS                       R16 R15 K31 ["SpecialAttribute"]
      654 CALL                             R12 3 -1
      655 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["React"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Roact"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       36 GETTABLEKS                       R8 R7 K13 ["withContext"]
       38 GETTABLEKS                       R9 R4 K14 ["UI"]
       40 GETTABLEKS                       R10 R9 K15 ["Pane"]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R11 K17 ["Util"]
       46 GETIMPORT                        R12 K6 [require]
       48 GETTABLEKS                       R13 R11 K18 ["LayoutOrderIterator"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K6 [require]
       53 GETTABLEKS                       R14 R11 K19 ["AssetConfigConstants"]
       55 CALL                             R13 1 1
       56 GETIMPORT                        R14 K6 [require]
       58 GETTABLEKS                       R15 R11 K20 ["AssetConfigUtil"]
       60 CALL                             R14 1 1
       61 GETTABLEKS                       R15 R0 K16 ["Src"]
       63 GETTABLEKS                       R15 R15 K21 ["Components"]
       65 GETTABLEKS                       R15 R15 K22 ["AssetConfiguration"]
       67 GETIMPORT                        R16 K6 [require]
       69 GETTABLEKS                       R17 R0 K16 ["Src"]
       71 GETTABLEKS                       R17 R17 K17 ["Util"]
       73 GETTABLEKS                       R17 R17 K23 ["ColorPicker"]
       75 CALL                             R16 1 1
       76 GETIMPORT                        R17 K6 [require]
       78 GETTABLEKS                       R18 R15 K24 ["ConfigAccess"]
       80 CALL                             R17 1 1
       81 GETIMPORT                        R18 K6 [require]
       83 GETTABLEKS                       R19 R15 K25 ["ConfigAssetType"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K6 [require]
       88 GETTABLEKS                       R20 R15 K26 ["ConfigSectionWrapper"]
       90 CALL                             R19 1 1
       91 GETIMPORT                        R20 K6 [require]
       93 GETTABLEKS                       R21 R15 K27 ["DataConsentToggle"]
       95 CALL                             R20 1 1
       96 GETIMPORT                        R21 K6 [require]
       98 GETTABLEKS                       R22 R15 K28 ["PublishToMarketplaceToggle"]
      100 CALL                             R21 1 1
      101 GETIMPORT                        R22 K6 [require]
      103 GETTABLEKS                       R23 R15 K29 ["SpecialAttributeSection"]
      105 CALL                             R22 1 1
      106 GETIMPORT                        R23 K6 [require]
      108 GETTABLEKS                       R24 R15 K30 ["UGCBundleValidation"]
      110 CALL                             R23 1 1
      111 GETIMPORT                        R24 K6 [require]
      113 GETTABLEKS                       R25 R0 K16 ["Src"]
      115 GETTABLEKS                       R25 R25 K31 ["Localization"]
      117 GETTABLEKS                       R25 R25 K32 ["getLocalizedAssetTextMap"]
      119 CALL                             R24 1 1
      120 GETIMPORT                        R25 K6 [require]
      122 GETTABLEKS                       R26 R0 K16 ["Src"]
      124 GETTABLEKS                       R26 R26 K33 ["Flags"]
      126 GETTABLEKS                       R26 R26 K34 ["getFFlagToolboxAssetConfigGroupOwnership"]
      128 CALL                             R25 1 1
      129 GETIMPORT                        R26 K6 [require]
      131 GETTABLEKS                       R27 R0 K16 ["Src"]
      133 GETTABLEKS                       R27 R27 K33 ["Flags"]
      135 GETTABLEKS                       R27 R27 K35 ["getFFlagToolboxHideSpecialAttributeForNonAvatarItems"]
      137 CALL                             R26 1 1
      138 GETIMPORT                        R27 K6 [require]
      140 GETTABLEKS                       R28 R0 K16 ["Src"]
      142 GETTABLEKS                       R28 R28 K33 ["Flags"]
      144 GETTABLEKS                       R28 R28 K36 ["getFFlagToolboxPublishOnApproval"]
      146 CALL                             R27 1 1
      147 GETTABLEKS                       R28 R6 K37 ["PureComponent"]
      149 LOADK                            R30 K38 ["AvatarItemSection"]
      150 NAMECALL                         R28 R28 K39 ["extend"]
      152 CALL                             R28 2 1
      153 DUPCLOSURE                       R29 K40 [PROTO_4]
      154 CAPTURE                          VAL R13
      155 SETTABLEKS                       R29 R28 K41 ["init"]
      157 DUPCLOSURE                       R29 K42 [PROTO_5]
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R24
      163 SETTABLEKS                       R29 R28 K43 ["getMissingOptionalPartsMessage"]
      165 DUPCLOSURE                       R29 K44 [PROTO_6]
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R3
      170 SETTABLEKS                       R29 R28 K45 ["getUnknownMeshPartMessage"]
      172 DUPCLOSURE                       R29 K46 [PROTO_7]
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R25
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R27
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R22
      192 SETTABLEKS                       R29 R28 K47 ["render"]
      194 MOVE                             R29 R8
      195 DUPTABLE                         R30 K49 [{"Localization", "Stylizer"}]
      196 GETTABLEKS                       R31 R7 K31 ["Localization"]
      198 SETTABLEKS                       R31 R30 K31 ["Localization"]
      200 GETTABLEKS                       R31 R7 K48 ["Stylizer"]
      202 SETTABLEKS                       R31 R30 K48 ["Stylizer"]
      204 CALL                             R29 1 1
      205 MOVE                             R30 R28
      206 CALL                             R29 1 1
      207 MOVE                             R28 R29
      208 RETURN                           R28 1
