PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getMarketplaceAssetConfigUrl"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["props"]
        7 GETTABLEKS                       R3 R4 K2 ["assetId"]
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K3 ["OpenBrowserWindow"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getMarketplaceOnboardingUrl"]
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["baseFrameRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+52]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["listLayoutRef"]
        9 GETTABLEKS                       R0 R1 K1 ["current"]
       11 JUMPIFNOT                        R0 ; [+46]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["baseFrameRef"]
       15 GETTABLEKS                       R0 R1 K1 ["current"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["listLayoutRef"]
       20 GETTABLEKS                       R1 R2 K1 ["current"]
       22 GETTABLEKS                       R5 R1 K4 ["AbsoluteContentSize"]
       24 GETTABLEKS                       R4 R5 K5 ["y"]
       26 ADDK                             R3 R4 K3 [48]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K6 ["state"]
       30 GETTABLEKS                       R4 R5 K7 ["maxDropdownPosition"]
       32 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       34 GETIMPORT                        R2 K10 [math.max]
       36 CALL                             R2 2 1
       37 GETIMPORT                        R3 K13 [UDim2.new]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K14 ["Size"]
       42 GETTABLEKS                       R5 R6 K15 ["X"]
       44 GETTABLEKS                       R4 R5 K16 ["Scale"]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R7 R8 K14 ["Size"]
       49 GETTABLEKS                       R6 R7 K15 ["X"]
       51 GETTABLEKS                       R5 R6 K17 ["Offset"]
       53 LOADN                            R6 0
       54 MOVE                             R7 R2
       55 CALL                             R3 4 1
       56 SETTABLEKS                       R3 R0 K18 ["CanvasSize"]
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["maxDropdownPosition"]
        6 JUMPIFNOTLT                      R1 R0 ; [+13]
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K2 [{"maxDropdownPosition"}]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K1 ["maxDropdownPosition"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K4 ["refreshCanvas"]
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
        6 GETTABLEKS                       R8 R0 K0 ["current"]
        8 GETTABLEKS                       R7 R8 K2 ["AbsolutePosition"]
       10 GETTABLEKS                       R6 R7 K3 ["Y"]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R10 R11 K4 ["baseFrameRef"]
       15 GETTABLEKS                       R9 R10 K0 ["current"]
       17 GETTABLEKS                       R8 R9 K5 ["CanvasPosition"]
       19 GETTABLEKS                       R7 R8 K3 ["Y"]
       21 ADD                              R5 R6 R7
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K4 ["baseFrameRef"]
       25 GETTABLEKS                       R9 R10 K0 ["current"]
       27 GETTABLEKS                       R8 R9 K2 ["AbsolutePosition"]
       29 GETTABLEKS                       R7 R8 K3 ["Y"]
       31 MINUS                            R6 R7
       32 ADD                              R4 R5 R6
       33 SUBK                             R3 R4 K1 [24]
       34 ADDK                             R7 R3 K1 [24]
       35 GETTABLEKS                       R10 R0 K0 ["current"]
       37 GETTABLEKS                       R9 R10 K6 ["AbsoluteSize"]
       39 GETTABLEKS                       R8 R9 K3 ["Y"]
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
        0 DUPTABLE                         R2 K5 [{"maxDropdownPosition", "validationState", "validationFailureReasons", "ugcBundleValidationResults", "currentAssetType"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["maxDropdownPosition"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K6 ["VALIDATION_STATE"]
        7 GETTABLEKS                       R3 R4 K7 ["NONE"]
        9 SETTABLEKS                       R3 R2 K1 ["validationState"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["validationFailureReasons"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["ugcBundleValidationResults"]
       19 GETTABLEKS                       R3 R1 K8 ["assetTypeEnum"]
       21 SETTABLEKS                       R3 R2 K4 ["currentAssetType"]
       23 SETTABLEKS                       R2 R0 K9 ["state"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K10 ["createRef"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R0 K11 ["baseFrameRef"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K10 ["createRef"]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R0 K12 ["listLayoutRef"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K10 ["createRef"]
       40 CALL                             R2 0 1
       41 SETTABLEKS                       R2 R0 K13 ["tagsRef"]
       43 NEWCLOSURE                       R2 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K14 ["onClickConfigurePriceUrl"]
       49 GETUPVAL                         R2 4
       50 CALL                             R2 0 1
       51 JUMPIFNOT                        R2 ; [+5]
       52 DUPCLOSURE                       R2 K15 [PROTO_1]
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 SETTABLEKS                       R2 R0 K16 ["onClickOnboardLink"]
       57 NEWCLOSURE                       R2 P2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R2 R0 K17 ["refreshCanvas"]
       62 NEWCLOSURE                       R2 P3
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R2 R0 K18 ["updateMaxDropdownPosition"]
       66 NEWCLOSURE                       R2 P4
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R2 R0 K19 ["setValidationState"]
       70 NEWCLOSURE                       R2 P5
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R2 R0 K20 ["setValidationFailureReasons"]
       74 NEWCLOSURE                       R2 P6
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R2 R0 K21 ["setUGCBundleValidationResults"]
       78 NEWCLOSURE                       R2 P7
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R2 R0 K22 ["setCurrentAssetType"]
       82 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["baseFrameRef"]
        2 GETTABLEKS                       R3 R4 K1 ["current"]
        4 JUMPIFNOT                        R3 ; [+44]
        5 GETTABLEKS                       R4 R0 K0 ["baseFrameRef"]
        7 GETTABLEKS                       R3 R4 K1 ["current"]
        9 GETTABLEKS                       R5 R3 K2 ["CanvasPosition"]
       11 GETTABLEKS                       R4 R5 K3 ["Y"]
       13 GETTABLEKS                       R6 R3 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R5 R6 K3 ["Y"]
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
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["isUGCBundleType"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K2 ["getOptionalBodyPartsNotFound"]
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
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K3 ["new"]
       29 CALL                             R8 0 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R9 R10 K4 ["createElement"]
       33 GETUPVAL                         R10 3
       34 DUPTABLE                         R11 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       35 GETIMPORT                        R12 K19 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
       39 LOADN                            R12 1
       40 SETTABLEKS                       R12 R11 K6 ["BackgroundTransparency"]
       42 GETUPVAL                         R13 4
       43 GETTABLEKS                       R12 R13 K20 ["FONT"]
       45 SETTABLEKS                       R12 R11 K7 ["Font"]
       47 NAMECALL                         R12 R8 K21 ["getNextOrder"]
       49 CALL                             R12 1 1
       50 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       52 GETIMPORT                        R12 K24 [UDim2.fromScale]
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K9 ["Size"]
       59 GETTABLEKS                       R12 R5 K25 ["Localization"]
       61 LOADK                            R14 K26 ["AssetConfig"]
       62 LOADK                            R15 K27 ["UGCMissingOptionalPartsMessage"]
       63 NAMECALL                         R12 R12 K28 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K10 ["Text"]
       68 GETTABLEKS                       R13 R4 K29 ["assetConfig"]
       70 GETTABLEKS                       R12 R13 K30 ["labelTextColor"]
       72 SETTABLEKS                       R12 R11 K11 ["TextColor"]
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R12 R13 K31 ["FONT_SIZE_TITLE"]
       77 SETTABLEKS                       R12 R11 K12 ["TextSize"]
       79 LOADB                            R12 1
       80 SETTABLEKS                       R12 R11 K13 ["TextWrapped"]
       82 GETIMPORT                        R12 K33 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R12 R11 K14 ["TextXAlignment"]
       86 GETIMPORT                        R12 K35 [Enum.TextYAlignment.Center]
       88 SETTABLEKS                       R12 R11 K15 ["TextYAlignment"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R7 K36 ["OptionalPartsMessage"]
       93 MOVE                             R9 R6
       94 LOADNIL                          R10
       95 LOADNIL                          R11
       96 FORGPREP                         R9
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R16 R5 K25 ["Localization"]
      100 CALL                             R15 1 1
      101 GETTABLE                         R14 R15 R13
      102 JUMPIFEQKNIL                     R14 ; [+58]
      104 GETTABLEKS                       R15 R13 K37 ["Name"]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R16 R17 K4 ["createElement"]
      109 GETUPVAL                         R17 3
      110 DUPTABLE                         R18 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      111 GETIMPORT                        R19 K19 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R19 R18 K5 ["AutomaticSize"]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K6 ["BackgroundTransparency"]
      118 GETUPVAL                         R20 4
      119 GETTABLEKS                       R19 R20 K20 ["FONT"]
      121 SETTABLEKS                       R19 R18 K7 ["Font"]
      123 NAMECALL                         R19 R8 K21 ["getNextOrder"]
      125 CALL                             R19 1 1
      126 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      128 GETIMPORT                        R19 K24 [UDim2.fromScale]
      130 LOADN                            R20 1
      131 LOADN                            R21 0
      132 CALL                             R19 2 1
      133 SETTABLEKS                       R19 R18 K9 ["Size"]
      135 SETTABLEKS                       R14 R18 K10 ["Text"]
      137 GETTABLEKS                       R20 R4 K29 ["assetConfig"]
      139 GETTABLEKS                       R19 R20 K30 ["labelTextColor"]
      141 SETTABLEKS                       R19 R18 K11 ["TextColor"]
      143 GETUPVAL                         R20 4
      144 GETTABLEKS                       R19 R20 K31 ["FONT_SIZE_TITLE"]
      146 SETTABLEKS                       R19 R18 K12 ["TextSize"]
      148 LOADB                            R19 1
      149 SETTABLEKS                       R19 R18 K13 ["TextWrapped"]
      151 GETIMPORT                        R19 K33 [Enum.TextXAlignment.Left]
      153 SETTABLEKS                       R19 R18 K14 ["TextXAlignment"]
      155 GETIMPORT                        R19 K35 [Enum.TextYAlignment.Center]
      157 SETTABLEKS                       R19 R18 K15 ["TextYAlignment"]
      159 CALL                             R16 2 1
      160 SETTABLE                         R16 R7 R15
      161 FORGLOOP                         R9 2 ; [-65]
      163 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["isUGCBundleType"]
        5 MOVE                             R6 R2
        6 CALL                             R5 1 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADNIL                          R5
        9 RETURN                           R5 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["getUnknownMeshPartNames"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 LENGTH                           R6 R5
       17 LOADN                            R7 0
       18 JUMPIFNOTLE                      R6 R7 ; [+3]
       20 LOADNIL                          R6
       21 RETURN                           R6 1
       22 NEWTABLE                         R6 1 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K3 ["new"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K4 ["createElement"]
       31 GETUPVAL                         R9 3
       32 DUPTABLE                         R10 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       33 GETIMPORT                        R11 K19 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K6 ["BackgroundTransparency"]
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R11 R12 K20 ["FONT"]
       43 SETTABLEKS                       R11 R10 K7 ["Font"]
       45 NAMECALL                         R11 R7 K21 ["getNextOrder"]
       47 CALL                             R11 1 1
       48 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       50 GETIMPORT                        R11 K24 [UDim2.fromScale]
       52 LOADN                            R12 1
       53 LOADN                            R13 0
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K9 ["Size"]
       57 GETTABLEKS                       R11 R4 K25 ["Localization"]
       59 LOADK                            R13 K26 ["AssetConfig"]
       60 LOADK                            R14 K27 ["UGCUnknownMeshPartsMessage"]
       61 NAMECALL                         R11 R11 K28 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K10 ["Text"]
       66 GETTABLEKS                       R12 R3 K29 ["assetConfig"]
       68 GETTABLEKS                       R11 R12 K30 ["labelTextColor"]
       70 SETTABLEKS                       R11 R10 K11 ["TextColor"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R11 R12 K31 ["FONT_SIZE_TITLE"]
       75 SETTABLEKS                       R11 R10 K12 ["TextSize"]
       77 LOADB                            R11 1
       78 SETTABLEKS                       R11 R10 K13 ["TextWrapped"]
       80 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R11 R10 K14 ["TextXAlignment"]
       84 GETIMPORT                        R11 K35 [Enum.TextYAlignment.Center]
       86 SETTABLEKS                       R11 R10 K15 ["TextYAlignment"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R6 K36 ["OptionalPartsMessage"]
       91 MOVE                             R8 R5
       92 LOADNIL                          R9
       93 LOADNIL                          R10
       94 FORGPREP                         R8
       95 GETUPVAL                         R14 2
       96 GETTABLEKS                       R13 R14 K4 ["createElement"]
       98 GETUPVAL                         R14 3
       99 DUPTABLE                         R15 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      100 GETIMPORT                        R16 K19 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R16 R15 K5 ["AutomaticSize"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K6 ["BackgroundTransparency"]
      107 GETUPVAL                         R17 4
      108 GETTABLEKS                       R16 R17 K20 ["FONT"]
      110 SETTABLEKS                       R16 R15 K7 ["Font"]
      112 NAMECALL                         R16 R7 K21 ["getNextOrder"]
      114 CALL                             R16 1 1
      115 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      117 GETIMPORT                        R16 K24 [UDim2.fromScale]
      119 LOADN                            R17 1
      120 LOADN                            R18 0
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K9 ["Size"]
      124 SETTABLEKS                       R12 R15 K10 ["Text"]
      126 GETTABLEKS                       R17 R3 K29 ["assetConfig"]
      128 GETTABLEKS                       R16 R17 K30 ["labelTextColor"]
      130 SETTABLEKS                       R16 R15 K11 ["TextColor"]
      132 GETUPVAL                         R17 4
      133 GETTABLEKS                       R16 R17 K31 ["FONT_SIZE_TITLE"]
      135 SETTABLEKS                       R16 R15 K12 ["TextSize"]
      137 LOADB                            R16 1
      138 SETTABLEKS                       R16 R15 K13 ["TextWrapped"]
      140 GETIMPORT                        R16 K33 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R16 R15 K14 ["TextXAlignment"]
      144 GETIMPORT                        R16 K35 [Enum.TextYAlignment.Center]
      146 SETTABLEKS                       R16 R15 K15 ["TextYAlignment"]
      148 CALL                             R13 2 1
      149 SETTABLE                         R13 R6 R12
      150 FORGLOOP                         R8 2 ; [-56]
      152 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["from"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["baseFrameRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["baseFrameRef"]
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 GETIMPORT                        R2 K4 [UDim2.new]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K5 ["X"]
       16 GETTABLEKS                       R3 R4 K6 ["Scale"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["X"]
       21 GETTABLEKS                       R4 R5 K7 ["Offset"]
       23 LOADN                            R5 0
       24 GETTABLEKS                       R8 R0 K9 ["AbsoluteContentSize"]
       26 GETTABLEKS                       R7 R8 K10 ["y"]
       28 ADDK                             R6 R7 K8 [48]
       29 CALL                             R2 4 1
       30 SETTABLEKS                       R2 R1 K11 ["CanvasSize"]
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["setFieldError"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R3 K3 ["Title"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["setFieldError"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R3 K3 ["Description"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Size"]
        8 GETTABLEKS                       R4 R2 K3 ["LayoutOrder"]
       10 GETTABLEKS                       R5 R2 K4 ["allowCopy"]
       12 GETTABLEKS                       R6 R2 K5 ["allowSelectPrivate"]
       14 GETTABLEKS                       R7 R2 K6 ["name"]
       16 GETTABLEKS                       R8 R2 K7 ["description"]
       18 GETTABLEKS                       R9 R2 K8 ["tags"]
       20 GETTABLEKS                       R10 R2 K9 ["owner"]
       22 GETTABLEKS                       R11 R2 K10 ["copyOn"]
       24 GETTABLEKS                       R12 R2 K11 ["allowComment"]
       26 GETTABLEKS                       R13 R2 K12 ["commentOn"]
       28 GETTABLEKS                       R14 R2 K13 ["deleteLocal"]
       30 GETTABLEKS                       R15 R2 K14 ["assetTypeEnum"]
       32 GETTABLEKS                       R16 R2 K15 ["isAssetPublic"]
       34 GETUPVAL                         R19 0
       35 GETTABLEKS                       R18 R19 K16 ["additionalImages"]
       37 GETTABLEKS                       R17 R18 K17 ["MaxThumbnails"]
       39 GETIMPORT                        R19 K21 [Enum.AssetType.Audio]
       41 JUMPIFEQ                         R15 R19 ; [+2]
       43 LOADB                            R18 0 +1
       44 LOADB                            R18 1
       45 GETIMPORT                        R20 K23 [Enum.AssetType.Video]
       47 JUMPIFEQ                         R15 R20 ; [+2]
       49 LOADB                            R19 0 +1
       50 LOADB                            R19 1
       51 GETIMPORT                        R21 K25 [Enum.AssetType.Model]
       53 JUMPIFEQ                         R15 R21 ; [+2]
       55 LOADB                            R20 0 +1
       56 LOADB                            R20 1
       57 GETIMPORT                        R22 K27 [Enum.AssetType.Plugin]
       59 JUMPIFEQ                         R15 R22 ; [+2]
       61 LOADB                            R21 0 +1
       62 LOADB                            R21 1
       63 GETIMPORT                        R23 K29 [Enum.AssetType.Animation]
       65 JUMPIFEQ                         R15 R23 ; [+2]
       67 LOADB                            R22 0 +1
       68 LOADB                            R22 1
       69 GETUPVAL                         R24 1
       70 GETTABLEKS                       R23 R24 K30 ["isCreatorStoreAssetNotIncludingAnimation"]
       72 MOVE                             R24 R15
       73 CALL                             R23 1 1
       74 GETTABLEKS                       R26 R2 K31 ["assetId"]
       76 FASTCALL1                        TYPEOF R26 ; [+2]
       77 GETIMPORT                        R25 K33 [typeof]
       79 CALL                             R25 1 1
       80 JUMPIFNOTEQKS                    R25 K34 ["number"] ; [+8]
       82 GETUPVAL                         R25 2
       83 GETTABLEKS                       R24 R25 K35 ["constructCreatorStoreConfigurationUrl"]
       85 GETTABLEKS                       R25 R2 K31 ["assetId"]
       87 CALL                             R24 1 1
       88 JUMP                             ; [+4]
       89 GETUPVAL                         R25 3
       90 GETTABLEKS                       R24 R25 K36 ["getCreatorDashboardBaseUrl"]
       92 CALL                             R24 0 1
       93 GETTABLEKS                       R25 R2 K37 ["onNameChange"]
       95 GETTABLEKS                       R26 R2 K38 ["onDescChange"]
       97 GETTABLEKS                       R27 R2 K39 ["onOwnerSelected"]
       99 GETTABLEKS                       R28 R2 K40 ["onCategoryChange"]
      101 GETTABLEKS                       R29 R2 K41 ["onSharingChanged"]
      103 GETTABLEKS                       R30 R2 K42 ["toggleCopy"]
      105 GETTABLEKS                       R31 R2 K43 ["toggleComment"]
      107 GETTABLEKS                       R32 R2 K44 ["toggleDeleteLocal"]
      109 GETUPVAL                         R34 4
      110 CALL                             R34 0 1
      111 JUMPIFNOT                        R34 ; [+3]
      112 GETTABLEKS                       R33 R2 K45 ["canUploadWithUgcRestrictions"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R33
      116 GETUPVAL                         R35 4
      117 CALL                             R35 0 1
      118 JUMPIFNOT                        R35 ; [+3]
      119 GETTABLEKS                       R34 R2 K46 ["canUploadWithUgcRestrictionsDenyReason"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R34
      123 GETTABLEKS                       R35 R2 K47 ["publishingRequirements"]
      125 GETTABLEKS                       R36 R2 K48 ["publishingRestriction"]
      127 JUMPIFNOT                        R35 ; [+3]
      128 GETTABLEKS                       R37 R35 K49 ["verification"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R37
      132 JUMPIFNOT                        R37 ; [+11]
      133 GETTABLEKS                       R39 R37 K50 ["supportedTypes"]
      135 JUMPIFNOT                        R39 ; [+8]
      136 GETTABLEKS                       R40 R37 K50 ["supportedTypes"]
      138 LENGTH                           R39 R40
      139 JUMPIFNOTEQKN                    R39 K51 [0] ; [+2]
      141 LOADB                            R38 0 +1
      142 LOADB                            R38 1
      143 JUMP                             ; [+1]
      144 LOADB                            R38 0
      145 MOVE                             R39 R37
      146 JUMPIFNOT                        R39 ; [+2]
      147 GETTABLEKS                       R39 R37 K52 ["isVerified"]
      149 AND                              R40 R39 R21
      150 GETTABLEKS                       R41 R2 K53 ["displayOwnership"]
      152 GETTABLEKS                       R42 R2 K54 ["displayCopy"]
      154 GETTABLEKS                       R43 R2 K55 ["displayComment"]
      156 JUMPIFNOT                        R21 ; [+2]
      157 LOADB                            R44 0
      158 JUMP                             ; [+2]
      159 GETTABLEKS                       R44 R2 K56 ["displayAssetType"]
      161 GETTABLEKS                       R45 R2 K57 ["displaySharing"]
      163 GETTABLEKS                       R46 R2 K58 ["displayAssetTypeSelection"]
      165 GETUPVAL                         R48 5
      166 NOT                              R47 R48
      167 JUMPIFNOT                        R21 ; [+3]
      168 GETTABLEKS                       R48 R2 K59 ["allowedAssetTypesForRelease"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R48
      172 GETTABLEKS                       R49 R2 K60 ["allowedAssetTypesForFree"]
      174 JUMPIFNOT                        R21 ; [+3]
      175 GETTABLEKS                       R50 R2 K61 ["newAssetStatus"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R50
      179 JUMPIFNOT                        R21 ; [+3]
      180 GETTABLEKS                       R51 R2 K62 ["currentAssetStatus"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R51
      184 JUMPIFNOT                        R21 ; [+3]
      185 GETTABLEKS                       R52 R2 K63 ["onStatusChange"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R52
      189 JUMPIFNOT                        R21 ; [+3]
      190 GETTABLEKS                       R53 R2 K64 ["price"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R53
      194 JUMPIFNOT                        R21 ; [+3]
      195 GETTABLEKS                       R54 R2 K65 ["minPrice"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R54
      199 JUMPIFNOT                        R21 ; [+3]
      200 GETTABLEKS                       R55 R2 K66 ["maxPrice"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R55
      204 JUMPIFNOT                        R21 ; [+3]
      205 GETTABLEKS                       R56 R2 K67 ["feeRate"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R56
      209 JUMPIFNOT                        R21 ; [+3]
      210 GETTABLEKS                       R57 R2 K68 ["isPriceValid"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R57
      214 JUMPIFNOT                        R21 ; [+3]
      215 GETTABLEKS                       R58 R2 K69 ["onPriceChange"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R58
      219 JUMPIFNOT                        R21 ; [+12]
      220 GETUPVAL                         R60 1
      221 GETTABLEKS                       R59 R60 K70 ["isReadyForSale"]
      223 MOVE                             R60 R50
      224 CALL                             R59 1 1
      225 JUMPIF                           R59 ; [+7]
      226 GETUPVAL                         R60 1
      227 GETTABLEKS                       R59 R60 K71 ["isBuyableMarketplaceAsset"]
      229 MOVE                             R60 R15
      230 CALL                             R59 1 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R59
      233 GETUPVAL                         R61 6
      234 CALL                             R61 0 1
      235 JUMPIFNOT                        R61 ; [+2]
      236 LOADNIL                          R60
      237 JUMP                             ; [+2]
      238 GETTABLEKS                       R60 R2 K72 ["maximumItemTagsPerItem"]
      240 LOADNIL                          R61
      241 LOADNIL                          R62
      242 GETTABLEKS                       R63 R2 K73 ["Localization"]
      244 JUMPIF                           R18 ; [+3]
      245 GETUPVAL                         R64 7
      246 JUMPIFNOT                        R64 ; [+9]
      247 JUMPIFNOT                        R19 ; [+8]
      248 JUMPIF                           R16 ; [+7]
      249 JUMPIFNOT                        R11 ; [+6]
      250 LOADK                            R66 K74 ["AssetConfigCopy"]
      251 LOADK                            R67 K75 ["MustShare"]
      252 NAMECALL                         R64 R63 K76 ["getText"]
      254 CALL                             R64 3 1
      255 MOVE                             R61 R64
      256 JUMPIFNOT                        R20 ; [+6]
      257 LOADK                            R66 K77 ["AssetConfig"]
      258 LOADK                            R67 K78 ["ModelPublishWarning"]
      259 NAMECALL                         R64 R63 K76 ["getText"]
      261 CALL                             R64 3 1
      262 MOVE                             R62 R64
      263 GETUPVAL                         R65 8
      264 GETTABLEKS                       R64 R65 K79 ["new"]
      266 CALL                             R64 0 1
      267 GETTABLEKS                       R65 R1 K80 ["publishAsset"]
      269 LOADN                            R66 80
      270 JUMPIF                           R5 ; [+1]
      271 ADDK                             R66 R66 K81 [60]
      272 NEWTABLE                         R67 4 0
      274 SETTABLEKS                       R3 R67 K2 ["Size"]
      276 SETTABLEKS                       R4 R67 K3 ["LayoutOrder"]
      278 GETUPVAL                         R69 9
      279 GETTABLEKS                       R68 R69 K82 ["Ref"]
      281 GETTABLEKS                       R69 R0 K83 ["baseFrameRef"]
      283 SETTABLE                         R69 R67 R68
      284 LOADNIL                          R68
      285 GETTABLEKS                       R69 R2 K84 ["assetMediaMetadataArray"]
      287 JUMPIFNOT                        R69 ; [+3]
      288 GETTABLEKS                       R68 R2 K84 ["assetMediaMetadataArray"]
      290 JUMP                             ; [+11]
      291 GETTABLEKS                       R69 R2 K85 ["assetMediaIds"]
      293 JUMPIFEQKNIL                     R69 ; [+8]
      295 GETUPVAL                         R69 10
      296 GETTABLEKS                       R70 R2 K85 ["assetMediaIds"]
      298 DUPCLOSURE                       R71 K86 [PROTO_13]
      299 CAPTURE                          UPVAL U11
      300 CALL                             R69 2 1
      301 MOVE                             R68 R69
      302 JUMPIFNOT                        R21 ; [+7]
      303 MOVE                             R69 R59
      304 JUMPIFNOT                        R69 ; [+6]
      305 JUMPIFEQKNIL                     R36 ; [+2]
      307 LOADB                            R69 0 +1
      308 LOADB                            R69 1
      309 JUMP                             ; [+1]
      310 MOVE                             R69 R5
      311 LOADNIL                          R70
      312 LOADNIL                          R71
      313 LOADNIL                          R72
      314 LOADNIL                          R73
      315 GETUPVAL                         R75 1
      316 GETTABLEKS                       R74 R75 K87 ["isUGCBundleType"]
      318 MOVE                             R75 R15
      319 CALL                             R74 1 1
      320 MOVE                             R70 R74
      321 LOADK                            R76 K88 ["General"]
      322 LOADK                            R77 K89 ["BodyValidation"]
      323 NAMECALL                         R74 R63 K76 ["getText"]
      325 CALL                             R74 3 1
      326 MOVE                             R71 R74
      327 GETTABLEKS                       R74 R2 K90 ["instances"]
      329 JUMPIFNOT                        R74 ; [+20]
      330 GETTABLEKS                       R77 R2 K90 ["instances"]
      332 GETTABLEN                        R76 R77 1
      333 GETTABLEKS                       R77 R2 K91 ["allowedBundleTypeSettings"]
      335 MOVE                             R78 R15
      336 MOVE                             R79 R1
      337 NAMECALL                         R74 R0 K92 ["getMissingOptionalPartsMessage"]
      339 CALL                             R74 5 1
      340 MOVE                             R72 R74
      341 GETTABLEKS                       R77 R2 K90 ["instances"]
      343 GETTABLEN                        R76 R77 1
      344 MOVE                             R77 R15
      345 MOVE                             R78 R1
      346 NAMECALL                         R74 R0 K93 ["getUnknownMeshPartMessage"]
      348 CALL                             R74 4 1
      349 MOVE                             R73 R74
      350 GETUPVAL                         R75 9
      351 GETTABLEKS                       R74 R75 K94 ["createElement"]
      353 GETUPVAL                         R75 12
      354 MOVE                             R76 R67
      355 DUPTABLE                         R77 K113 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal"}]
      356 GETUPVAL                         R79 9
      357 GETTABLEKS                       R78 R79 K94 ["createElement"]
      359 LOADK                            R79 K114 ["UIPadding"]
      360 DUPTABLE                         R80 K119 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      361 GETIMPORT                        R81 K121 [UDim.new]
      363 LOADN                            R82 0
      364 LOADN                            R83 24
      365 CALL                             R81 2 1
      366 SETTABLEKS                       R81 R80 K115 ["PaddingTop"]
      368 GETIMPORT                        R81 K121 [UDim.new]
      370 LOADN                            R82 0
      371 LOADN                            R83 24
      372 CALL                             R81 2 1
      373 SETTABLEKS                       R81 R80 K116 ["PaddingBottom"]
      375 GETIMPORT                        R81 K121 [UDim.new]
      377 LOADN                            R82 0
      378 LOADN                            R83 24
      379 CALL                             R81 2 1
      380 SETTABLEKS                       R81 R80 K117 ["PaddingLeft"]
      382 GETIMPORT                        R81 K121 [UDim.new]
      384 LOADN                            R82 0
      385 LOADN                            R83 24
      386 CALL                             R81 2 1
      387 SETTABLEKS                       R81 R80 K118 ["PaddingRight"]
      389 CALL                             R78 2 1
      390 SETTABLEKS                       R78 R77 K95 ["Padding"]
      392 GETUPVAL                         R79 9
      393 GETTABLEKS                       R78 R79 K94 ["createElement"]
      395 LOADK                            R79 K96 ["UIListLayout"]
      396 NEWTABLE                         R80 8 0
      398 GETIMPORT                        R81 K124 [Enum.FillDirection.Vertical]
      400 SETTABLEKS                       R81 R80 K122 ["FillDirection"]
      402 GETIMPORT                        R81 K127 [Enum.HorizontalAlignment.Left]
      404 SETTABLEKS                       R81 R80 K125 ["HorizontalAlignment"]
      406 GETIMPORT                        R81 K130 [Enum.VerticalAlignment.Top]
      408 SETTABLEKS                       R81 R80 K128 ["VerticalAlignment"]
      410 GETIMPORT                        R81 K132 [Enum.SortOrder.LayoutOrder]
      412 SETTABLEKS                       R81 R80 K131 ["SortOrder"]
      414 GETIMPORT                        R81 K121 [UDim.new]
      416 LOADN                            R82 0
      417 LOADN                            R83 0
      418 CALL                             R81 2 1
      419 SETTABLEKS                       R81 R80 K95 ["Padding"]
      421 GETUPVAL                         R83 9
      422 GETTABLEKS                       R82 R83 K133 ["Change"]
      424 GETTABLEKS                       R81 R82 K134 ["AbsoluteContentSize"]
      426 GETTABLEKS                       R82 R0 K135 ["refreshCanvas"]
      428 JUMPIF                           R82 ; [+3]
      429 NEWCLOSURE                       R82 P1
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R3
      432 SETTABLE                         R82 R80 R81
      433 GETUPVAL                         R82 9
      434 GETTABLEKS                       R81 R82 K82 ["Ref"]
      436 GETTABLEKS                       R82 R0 K136 ["listLayoutRef"]
      438 SETTABLE                         R82 R80 R81
      439 CALL                             R78 2 1
      440 SETTABLEKS                       R78 R77 K96 ["UIListLayout"]
      442 JUMPIF                           R46 ; [+133]
      443 JUMPIFNOT                        R20 ; [+132]
      444 JUMPIFNOT                        R47 ; [+131]
      445 GETUPVAL                         R79 9
      446 GETTABLEKS                       R78 R79 K94 ["createElement"]
      448 GETUPVAL                         R79 13
      449 DUPTABLE                         R80 K139 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
      450 GETIMPORT                        R81 K127 [Enum.HorizontalAlignment.Left]
      452 SETTABLEKS                       R81 R80 K125 ["HorizontalAlignment"]
      454 GETIMPORT                        R81 K141 [Enum.FillDirection.Horizontal]
      456 SETTABLEKS                       R81 R80 K137 ["Layout"]
      458 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      460 CALL                             R81 1 1
      461 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      463 GETIMPORT                        R81 K144 [UDim2.new]
      465 LOADN                            R82 1
      466 LOADN                            R83 0
      467 LOADN                            R84 0
      468 GETUPVAL                         R86 14
      469 GETTABLEKS                       R85 R86 K145 ["FONT_SIZE_TITLE"]
      471 CALL                             R81 4 1
      472 SETTABLEKS                       R81 R80 K2 ["Size"]
      474 DUPTABLE                         R81 K147 [{"Bottom"}]
      475 LOADN                            R82 30
      476 SETTABLEKS                       R82 R81 K146 ["Bottom"]
      478 SETTABLEKS                       R81 R80 K95 ["Padding"]
      480 LOADN                            R81 5
      481 SETTABLEKS                       R81 R80 K138 ["Spacing"]
      483 GETIMPORT                        R81 K130 [Enum.VerticalAlignment.Top]
      485 SETTABLEKS                       R81 R80 K128 ["VerticalAlignment"]
      487 DUPTABLE                         R81 K150 [{"Icon", "WarningText"}]
      488 GETUPVAL                         R83 9
      489 GETTABLEKS                       R82 R83 K94 ["createElement"]
      491 LOADK                            R83 K151 ["ImageLabel"]
      492 DUPTABLE                         R84 K155 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      493 LOADN                            R85 1
      494 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      496 LOADN                            R85 1
      497 SETTABLEKS                       R85 R84 K152 ["BackgroundTransparency"]
      499 GETUPVAL                         R86 15
      500 GETTABLEKS                       R85 R86 K156 ["WARNING_ICON"]
      502 SETTABLEKS                       R85 R84 K153 ["Image"]
      504 GETTABLEKS                       R85 R65 K157 ["warningIconColor"]
      506 SETTABLEKS                       R85 R84 K154 ["ImageColor3"]
      508 GETIMPORT                        R85 K159 [UDim2.fromOffset]
      510 LOADN                            R86 24
      511 LOADN                            R87 24
      512 CALL                             R85 2 1
      513 SETTABLEKS                       R85 R84 K2 ["Size"]
      515 CALL                             R82 2 1
      516 SETTABLEKS                       R82 R81 K148 ["Icon"]
      518 GETUPVAL                         R83 9
      519 GETTABLEKS                       R82 R83 K94 ["createElement"]
      521 LOADK                            R83 K160 ["TextLabel"]
      522 DUPTABLE                         R84 K169 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      523 GETIMPORT                        R85 K171 [Enum.AutomaticSize.XY]
      525 SETTABLEKS                       R85 R84 K161 ["AutomaticSize"]
      527 LOADN                            R85 2
      528 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      530 LOADN                            R85 1
      531 SETTABLEKS                       R85 R84 K152 ["BackgroundTransparency"]
      533 GETUPVAL                         R86 14
      534 GETTABLEKS                       R85 R86 K172 ["FONT"]
      536 SETTABLEKS                       R85 R84 K162 ["Font"]
      538 GETIMPORT                        R85 K144 [UDim2.new]
      540 LOADN                            R86 1
      541 LOADN                            R87 0
      542 LOADN                            R88 1
      543 LOADN                            R89 0
      544 CALL                             R85 4 1
      545 SETTABLEKS                       R85 R84 K2 ["Size"]
      547 SETTABLEKS                       R62 R84 K163 ["Text"]
      549 LOADB                            R85 1
      550 SETTABLEKS                       R85 R84 K164 ["TextWrapped"]
      552 GETTABLEKS                       R86 R1 K173 ["assetConfig"]
      554 GETTABLEKS                       R85 R86 K174 ["warningColor"]
      556 SETTABLEKS                       R85 R84 K165 ["TextColor3"]
      558 GETIMPORT                        R85 K175 [Enum.TextXAlignment.Left]
      560 SETTABLEKS                       R85 R84 K166 ["TextXAlignment"]
      562 GETIMPORT                        R85 K177 [Enum.TextYAlignment.Center]
      564 SETTABLEKS                       R85 R84 K167 ["TextYAlignment"]
      566 GETUPVAL                         R86 14
      567 GETTABLEKS                       R85 R86 K145 ["FONT_SIZE_TITLE"]
      569 SETTABLEKS                       R85 R84 K168 ["TextSize"]
      571 CALL                             R82 2 1
      572 SETTABLEKS                       R82 R81 K149 ["WarningText"]
      574 CALL                             R78 3 1
      575 JUMP                             ; [+1]
      576 LOADNIL                          R78
      577 SETTABLEKS                       R78 R77 K97 ["ModelWarningFrame"]
      579 JUMPIFNOT                        R21 ; [+19]
      580 GETUPVAL                         R79 9
      581 GETTABLEKS                       R78 R79 K94 ["createElement"]
      583 GETUPVAL                         R79 16
      584 DUPTABLE                         R80 K178 [{"LayoutOrder", "Title"}]
      585 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      587 CALL                             R81 1 1
      588 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      590 LOADK                            R83 K77 ["AssetConfig"]
      591 LOADK                            R84 K179 ["PublishPluginHeader"]
      592 NAMECALL                         R81 R63 K76 ["getText"]
      594 CALL                             R81 3 1
      595 SETTABLEKS                       R81 R80 K99 ["Title"]
      597 CALL                             R78 2 1
      598 JUMP                             ; [+1]
      599 LOADNIL                          R78
      600 SETTABLEKS                       R78 R77 K98 ["Header"]
      602 GETUPVAL                         R79 9
      603 GETTABLEKS                       R78 R79 K94 ["createElement"]
      605 GETUPVAL                         R79 17
      606 DUPTABLE                         R80 K185 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "ErrorCallback", "LayoutOrder"}]
      607 LOADK                            R83 K88 ["General"]
      608 LOADK                            R84 K99 ["Title"]
      609 NAMECALL                         R81 R63 K76 ["getText"]
      611 CALL                             R81 3 1
      612 SETTABLEKS                       R81 R80 K99 ["Title"]
      614 LOADN                            R81 100
      615 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
      617 GETUPVAL                         R82 0
      618 GETTABLEKS                       R81 R82 K186 ["NAME_CHARACTER_LIMIT"]
      620 SETTABLEKS                       R81 R80 K181 ["MaxCount"]
      622 SETTABLEKS                       R25 R80 K182 ["TextChangeCallBack"]
      624 SETTABLEKS                       R7 R80 K183 ["TextContent"]
      626 NEWCLOSURE                       R81 P2
      627 CAPTURE                          VAL R0
      628 CAPTURE                          UPVAL U0
      629 SETTABLEKS                       R81 R80 K184 ["ErrorCallback"]
      631 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      633 CALL                             R81 1 1
      634 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      636 CALL                             R78 2 1
      637 SETTABLEKS                       R78 R77 K99 ["Title"]
      639 GETUPVAL                         R79 9
      640 GETTABLEKS                       R78 R79 K94 ["createElement"]
      642 GETUPVAL                         R79 17
      643 DUPTABLE                         R80 K188 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "ErrorCallback", "LayoutOrder"}]
      644 LOADK                            R83 K189 ["AssetConfigDescription"]
      645 LOADK                            R84 K190 ["AddRobloxLinks"]
      646 NAMECALL                         R81 R63 K76 ["getText"]
      648 CALL                             R81 3 1
      649 SETTABLEKS                       R81 R80 K187 ["BottomRightText"]
      651 LOADK                            R83 K88 ["General"]
      652 LOADK                            R84 K100 ["Description"]
      653 NAMECALL                         R81 R63 K76 ["getText"]
      655 CALL                             R81 3 1
      656 SETTABLEKS                       R81 R80 K99 ["Title"]
      658 LOADN                            R81 180
      659 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
      661 GETUPVAL                         R82 0
      662 GETTABLEKS                       R81 R82 K191 ["DESCRIPTION_CHARACTER_LIMIT"]
      664 SETTABLEKS                       R81 R80 K181 ["MaxCount"]
      666 SETTABLEKS                       R26 R80 K182 ["TextChangeCallBack"]
      668 SETTABLEKS                       R8 R80 K183 ["TextContent"]
      670 NEWCLOSURE                       R81 P3
      671 CAPTURE                          VAL R0
      672 CAPTURE                          UPVAL U0
      673 SETTABLEKS                       R81 R80 K184 ["ErrorCallback"]
      675 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      677 CALL                             R81 1 1
      678 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      680 CALL                             R78 2 1
      681 SETTABLEKS                       R78 R77 K100 ["Description"]
      683 JUMPIFNOT                        R46 ; [+80]
      684 GETUPVAL                         R79 9
      685 GETTABLEKS                       R78 R79 K94 ["createElement"]
      687 GETUPVAL                         R79 18
      688 DUPTABLE                         R80 K202 [{"LayoutOrder", "onCategoryChange", "canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      689 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      691 CALL                             R81 1 1
      692 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      694 SETTABLEKS                       R28 R80 K40 ["onCategoryChange"]
      696 GETUPVAL                         R82 4
      697 CALL                             R82 0 1
      698 JUMPIFNOT                        R82 ; [+2]
      699 MOVE                             R81 R33
      700 JUMP                             ; [+1]
      701 LOADNIL                          R81
      702 SETTABLEKS                       R81 R80 K45 ["canUploadWithUgcRestrictions"]
      704 GETUPVAL                         R82 4
      705 CALL                             R82 0 1
      706 JUMPIFNOT                        R82 ; [+2]
      707 MOVE                             R81 R34
      708 JUMP                             ; [+1]
      709 LOADNIL                          R81
      710 SETTABLEKS                       R81 R80 K46 ["canUploadWithUgcRestrictionsDenyReason"]
      712 GETTABLEKS                       R81 R2 K192 ["dataSharingEnabled"]
      714 SETTABLEKS                       R81 R80 K192 ["dataSharingEnabled"]
      716 GETTABLEKS                       R81 R2 K193 ["dataSharingToggled"]
      718 SETTABLEKS                       R81 R80 K193 ["dataSharingToggled"]
      720 GETTABLEKS                       R81 R2 K194 ["onDataConsentToggleClick"]
      722 SETTABLEKS                       R81 R80 K194 ["onDataConsentToggleClick"]
      724 GETTABLEKS                       R82 R0 K203 ["state"]
      726 GETTABLEKS                       R81 R82 K195 ["validationState"]
      728 SETTABLEKS                       R81 R80 K195 ["validationState"]
      730 GETTABLEKS                       R82 R0 K203 ["state"]
      732 GETTABLEKS                       R81 R82 K196 ["validationFailureReasons"]
      734 SETTABLEKS                       R81 R80 K196 ["validationFailureReasons"]
      736 GETTABLEKS                       R81 R0 K197 ["setValidationState"]
      738 SETTABLEKS                       R81 R80 K197 ["setValidationState"]
      740 GETTABLEKS                       R81 R0 K198 ["setValidationFailureReasons"]
      742 SETTABLEKS                       R81 R80 K198 ["setValidationFailureReasons"]
      744 GETTABLEKS                       R82 R0 K203 ["state"]
      746 GETTABLEKS                       R81 R82 K199 ["ugcBundleValidationResults"]
      748 SETTABLEKS                       R81 R80 K199 ["ugcBundleValidationResults"]
      750 GETTABLEKS                       R81 R0 K200 ["setUGCBundleValidationResults"]
      752 SETTABLEKS                       R81 R80 K200 ["setUGCBundleValidationResults"]
      754 GETTABLEKS                       R81 R0 K201 ["setCurrentAssetType"]
      756 SETTABLEKS                       R81 R80 K201 ["setCurrentAssetType"]
      758 GETTABLEKS                       R81 R2 K90 ["instances"]
      760 SETTABLEKS                       R81 R80 K90 ["instances"]
      762 CALL                             R78 2 1
      763 JUMP                             ; [+1]
      764 LOADNIL                          R78
      765 SETTABLEKS                       R78 R77 K101 ["AssetTypeSelection"]
      767 JUMPIFNOT                        R46 ; [+27]
      768 JUMPIFNOT                        R41 ; [+26]
      769 GETUPVAL                         R79 9
      770 GETTABLEKS                       R78 R79 K94 ["createElement"]
      772 GETUPVAL                         R79 19
      773 DUPTABLE                         R80 K205 [{"LayoutOrder", "onDropDownSelect", "owner", "Title", "TotalHeight"}]
      774 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      776 CALL                             R81 1 1
      777 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      779 SETTABLEKS                       R27 R80 K204 ["onDropDownSelect"]
      781 SETTABLEKS                       R10 R80 K9 ["owner"]
      783 LOADK                            R83 K88 ["General"]
      784 LOADK                            R84 K106 ["Ownership"]
      785 NAMECALL                         R81 R63 K76 ["getText"]
      787 CALL                             R81 3 1
      788 SETTABLEKS                       R81 R80 K99 ["Title"]
      790 LOADN                            R81 70
      791 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
      793 CALL                             R78 2 1
      794 JUMP                             ; [+1]
      795 LOADNIL                          R78
      796 SETTABLEKS                       R78 R77 K102 ["Creator"]
      798 GETUPVAL                         R79 20
      799 CALL                             R79 0 1
      800 JUMPIFNOT                        R79 ; [+110]
      801 GETUPVAL                         R79 21
      802 CALL                             R79 0 1
      803 JUMPIFNOT                        R79 ; [+107]
      804 JUMPIFNOT                        R46 ; [+106]
      805 JUMPIFNOT                        R41 ; [+105]
      806 GETTABLEKS                       R79 R2 K206 ["showColorPicker"]
      808 JUMPIFNOT                        R79 ; [+102]
      809 GETUPVAL                         R79 9
      810 GETTABLEKS                       R78 R79 K94 ["createElement"]
      812 GETUPVAL                         R80 22
      813 GETTABLEKS                       R79 R80 K207 ["View"]
      815 DUPTABLE                         R80 K209 [{"tag", "Size", "LayoutOrder"}]
      816 LOADK                            R81 K210 ["row align-x-left align-y-top size-full-x"]
      817 SETTABLEKS                       R81 R80 K208 ["tag"]
      819 GETIMPORT                        R81 K144 [UDim2.new]
      821 LOADN                            R82 1
      822 LOADN                            R83 0
      823 LOADN                            R84 0
      824 LOADN                            R85 70
      825 CALL                             R81 4 1
      826 SETTABLEKS                       R81 R80 K2 ["Size"]
      828 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      830 CALL                             R81 1 1
      831 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      833 DUPTABLE                         R81 K212 [{"Title", "ColorPickerButton"}]
      834 GETUPVAL                         R83 9
      835 GETTABLEKS                       R82 R83 K94 ["createElement"]
      837 GETUPVAL                         R84 22
      838 GETTABLEKS                       R83 R84 K163 ["Text"]
      840 DUPTABLE                         R84 K214 [{"tag", "Text", "Size", "textStyle", "LayoutOrder"}]
      841 LOADK                            R85 K215 ["text-body-large text-align-y-top text-align-x-left"]
      842 SETTABLEKS                       R85 R84 K208 ["tag"]
      844 LOADK                            R87 K88 ["General"]
      845 LOADK                            R88 K216 ["ThumbnailSkinColor"]
      846 NAMECALL                         R85 R63 K76 ["getText"]
      848 CALL                             R85 3 1
      849 SETTABLEKS                       R85 R84 K163 ["Text"]
      851 GETIMPORT                        R85 K144 [UDim2.new]
      853 LOADN                            R86 0
      854 GETUPVAL                         R88 0
      855 GETTABLEKS                       R87 R88 K217 ["TITLE_GUTTER_WIDTH"]
      857 LOADN                            R88 1
      858 LOADN                            R89 0
      859 CALL                             R85 4 1
      860 SETTABLEKS                       R85 R84 K2 ["Size"]
      862 DUPTABLE                         R85 K219 [{"Color"}]
      863 GETTABLEKS                       R87 R1 K80 ["publishAsset"]
      865 GETTABLEKS                       R86 R87 K220 ["titleTextColor"]
      867 SETTABLEKS                       R86 R85 K218 ["Color"]
      869 SETTABLEKS                       R85 R84 K213 ["textStyle"]
      871 LOADN                            R85 1
      872 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      874 CALL                             R82 2 1
      875 SETTABLEKS                       R82 R81 K99 ["Title"]
      877 GETUPVAL                         R83 9
      878 GETTABLEKS                       R82 R83 K94 ["createElement"]
      880 GETUPVAL                         R83 23
      881 DUPTABLE                         R84 K224 [{"selectedColor", "setSelectedColor", "LayoutOrder", "textColor"}]
      882 GETTABLEKS                       R85 R2 K221 ["selectedColor"]
      884 JUMPIF                           R85 ; [+6]
      885 GETIMPORT                        R85 K227 [Color3.fromRGB]
      887 LOADN                            R86 205
      888 LOADN                            R87 205
      889 LOADN                            R88 204
      890 CALL                             R85 3 1
      891 SETTABLEKS                       R85 R84 K221 ["selectedColor"]
      893 GETTABLEKS                       R85 R2 K222 ["setSelectedColor"]
      895 SETTABLEKS                       R85 R84 K222 ["setSelectedColor"]
      897 LOADN                            R85 2
      898 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      900 GETTABLEKS                       R86 R1 K80 ["publishAsset"]
      902 GETTABLEKS                       R85 R86 K220 ["titleTextColor"]
      904 SETTABLEKS                       R85 R84 K223 ["textColor"]
      906 CALL                             R82 2 1
      907 SETTABLEKS                       R82 R81 K211 ["ColorPickerButton"]
      909 CALL                             R78 3 1
      910 JUMP                             ; [+1]
      911 LOADNIL                          R78
      912 SETTABLEKS                       R78 R77 K103 ["ColorPickerRow"]
      914 JUMPIFNOT                        R70 ; [+186]
      915 GETUPVAL                         R79 9
      916 GETTABLEKS                       R78 R79 K94 ["createElement"]
      918 GETUPVAL                         R79 24
      919 DUPTABLE                         R80 K228 [{"AutomaticSize", "LayoutOrder", "Title"}]
      920 GETIMPORT                        R81 K171 [Enum.AutomaticSize.XY]
      922 SETTABLEKS                       R81 R80 K161 ["AutomaticSize"]
      924 NAMECALL                         R81 R64 K142 ["getNextOrder"]
      926 CALL                             R81 1 1
      927 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      929 SETTABLEKS                       R71 R80 K99 ["Title"]
      931 DUPTABLE                         R81 K230 [{"ValidationPane"}]
      932 GETUPVAL                         R83 9
      933 GETTABLEKS                       R82 R83 K94 ["createElement"]
      935 GETUPVAL                         R83 13
      936 DUPTABLE                         R84 K231 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      937 GETIMPORT                        R85 K233 [Enum.AutomaticSize.Y]
      939 SETTABLEKS                       R85 R84 K161 ["AutomaticSize"]
      941 GETIMPORT                        R85 K124 [Enum.FillDirection.Vertical]
      943 SETTABLEKS                       R85 R84 K137 ["Layout"]
      945 LOADN                            R85 1
      946 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      948 GETIMPORT                        R85 K235 [UDim2.fromScale]
      950 LOADN                            R86 1
      951 LOADN                            R87 0
      952 CALL                             R85 2 1
      953 SETTABLEKS                       R85 R84 K2 ["Size"]
      955 LOADN                            R85 18
      956 SETTABLEKS                       R85 R84 K138 ["Spacing"]
      958 DUPTABLE                         R85 K147 [{"Bottom"}]
      959 LOADN                            R86 24
      960 SETTABLEKS                       R86 R85 K146 ["Bottom"]
      962 SETTABLEKS                       R85 R84 K95 ["Padding"]
      964 DUPTABLE                         R85 K239 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      965 GETUPVAL                         R87 9
      966 GETTABLEKS                       R86 R87 K94 ["createElement"]
      968 GETUPVAL                         R87 25
      969 DUPTABLE                         R88 K243 [{"LayoutOrder", "isUGCBodyBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
      970 LOADN                            R89 1
      971 SETTABLEKS                       R89 R88 K3 ["LayoutOrder"]
      973 GETUPVAL                         R90 26
      974 CALL                             R90 0 1
      975 JUMPIFNOT                        R90 ; [+6]
      976 GETUPVAL                         R90 1
      977 GETTABLEKS                       R89 R90 K240 ["isUGCBodyBundleType"]
      979 MOVE                             R90 R15
      980 CALL                             R89 1 1
      981 JUMP                             ; [+1]
      982 LOADNIL                          R89
      983 SETTABLEKS                       R89 R88 K240 ["isUGCBodyBundleType"]
      985 GETTABLEKS                       R90 R0 K203 ["state"]
      987 GETTABLEKS                       R89 R90 K195 ["validationState"]
      989 SETTABLEKS                       R89 R88 K195 ["validationState"]
      991 GETTABLEKS                       R89 R0 K197 ["setValidationState"]
      993 SETTABLEKS                       R89 R88 K197 ["setValidationState"]
      995 GETTABLEKS                       R90 R0 K203 ["state"]
      997 GETTABLEKS                       R89 R90 K196 ["validationFailureReasons"]
      999 SETTABLEKS                       R89 R88 K196 ["validationFailureReasons"]
     1001 GETTABLEKS                       R89 R0 K198 ["setValidationFailureReasons"]
     1003 SETTABLEKS                       R89 R88 K198 ["setValidationFailureReasons"]
     1005 GETTABLEKS                       R90 R0 K203 ["state"]
     1007 GETTABLEKS                       R89 R90 K199 ["ugcBundleValidationResults"]
     1009 SETTABLEKS                       R89 R88 K241 ["validationResults"]
     1011 GETTABLEKS                       R89 R0 K200 ["setUGCBundleValidationResults"]
     1013 SETTABLEKS                       R89 R88 K200 ["setUGCBundleValidationResults"]
     1015 GETTABLEKS                       R90 R0 K203 ["state"]
     1017 GETTABLEKS                       R89 R90 K244 ["currentAssetType"]
     1019 SETTABLEKS                       R89 R88 K14 ["assetTypeEnum"]
     1021 GETTABLEKS                       R89 R2 K90 ["instances"]
     1023 SETTABLEKS                       R89 R88 K90 ["instances"]
     1025 GETTABLEKS                       R89 R2 K91 ["allowedBundleTypeSettings"]
     1027 SETTABLEKS                       R89 R88 K91 ["allowedBundleTypeSettings"]
     1029 GETTABLEKS                       R89 R2 K242 ["onAssetValidationResultChanged"]
     1031 SETTABLEKS                       R89 R88 K242 ["onAssetValidationResultChanged"]
     1033 CALL                             R86 2 1
     1034 SETTABLEKS                       R86 R85 K236 ["UGCBundleValidation"]
     1036 JUMPIFNOT                        R72 ; [+26]
     1037 GETUPVAL                         R87 9
     1038 GETTABLEKS                       R86 R87 K94 ["createElement"]
     1040 GETUPVAL                         R87 13
     1041 DUPTABLE                         R88 K245 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1042 GETIMPORT                        R89 K233 [Enum.AutomaticSize.Y]
     1044 SETTABLEKS                       R89 R88 K161 ["AutomaticSize"]
     1046 GETIMPORT                        R89 K124 [Enum.FillDirection.Vertical]
     1048 SETTABLEKS                       R89 R88 K137 ["Layout"]
     1050 LOADN                            R89 2
     1051 SETTABLEKS                       R89 R88 K3 ["LayoutOrder"]
     1053 GETIMPORT                        R89 K235 [UDim2.fromScale]
     1055 LOADN                            R90 1
     1056 LOADN                            R91 0
     1057 CALL                             R89 2 1
     1058 SETTABLEKS                       R89 R88 K2 ["Size"]
     1060 MOVE                             R89 R72
     1061 CALL                             R86 3 1
     1062 JUMP                             ; [+1]
     1063 LOADNIL                          R86
     1064 SETTABLEKS                       R86 R85 K237 ["MissingOptionalAccessoriesMsg"]
     1066 JUMPIFNOT                        R73 ; [+26]
     1067 GETUPVAL                         R87 9
     1068 GETTABLEKS                       R86 R87 K94 ["createElement"]
     1070 GETUPVAL                         R87 13
     1071 DUPTABLE                         R88 K245 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1072 GETIMPORT                        R89 K233 [Enum.AutomaticSize.Y]
     1074 SETTABLEKS                       R89 R88 K161 ["AutomaticSize"]
     1076 GETIMPORT                        R89 K124 [Enum.FillDirection.Vertical]
     1078 SETTABLEKS                       R89 R88 K137 ["Layout"]
     1080 LOADN                            R89 3
     1081 SETTABLEKS                       R89 R88 K3 ["LayoutOrder"]
     1083 GETIMPORT                        R89 K235 [UDim2.fromScale]
     1085 LOADN                            R90 1
     1086 LOADN                            R91 0
     1087 CALL                             R89 2 1
     1088 SETTABLEKS                       R89 R88 K2 ["Size"]
     1090 MOVE                             R89 R73
     1091 CALL                             R86 3 1
     1092 JUMP                             ; [+1]
     1093 LOADNIL                          R86
     1094 SETTABLEKS                       R86 R85 K238 ["UnknownMeshPartsMsgChildren"]
     1096 CALL                             R82 3 1
     1097 SETTABLEKS                       R82 R81 K229 ["ValidationPane"]
     1099 CALL                             R78 3 1
     1100 JUMP                             ; [+1]
     1101 LOADNIL                          R78
     1102 SETTABLEKS                       R78 R77 K104 ["ContentTypeBodyValidation"]
     1104 GETTABLEKS                       R79 R2 K192 ["dataSharingEnabled"]
     1106 JUMPIFNOT                        R79 ; [+32]
     1107 GETUPVAL                         R80 1
     1108 GETTABLEKS                       R79 R80 K87 ["isUGCBundleType"]
     1110 MOVE                             R80 R15
     1111 CALL                             R79 1 1
     1112 JUMPIF                           R79 ; [+6]
     1113 GETUPVAL                         R80 1
     1114 GETTABLEKS                       R79 R80 K246 ["isCatalogAsset"]
     1116 MOVE                             R80 R15
     1117 CALL                             R79 1 1
     1118 JUMPIFNOT                        R79 ; [+20]
     1119 GETUPVAL                         R79 9
     1120 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1122 GETUPVAL                         R79 27
     1123 DUPTABLE                         R80 K247 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1124 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1126 CALL                             R81 1 1
     1127 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1129 GETTABLEKS                       R81 R2 K193 ["dataSharingToggled"]
     1131 SETTABLEKS                       R81 R80 K193 ["dataSharingToggled"]
     1133 GETTABLEKS                       R81 R2 K194 ["onDataConsentToggleClick"]
     1135 SETTABLEKS                       R81 R80 K194 ["onDataConsentToggleClick"]
     1137 CALL                             R78 2 1
     1138 JUMP                             ; [+1]
     1139 LOADNIL                          R78
     1140 SETTABLEKS                       R78 R77 K105 ["DataSharingConsent"]
     1142 JUMPIF                           R46 ; [+27]
     1143 JUMPIFNOT                        R41 ; [+26]
     1144 GETUPVAL                         R79 9
     1145 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1147 GETUPVAL                         R79 19
     1148 DUPTABLE                         R80 K248 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "LayoutOrder"}]
     1149 LOADK                            R83 K88 ["General"]
     1150 LOADK                            R84 K106 ["Ownership"]
     1151 NAMECALL                         R81 R63 K76 ["getText"]
     1153 CALL                             R81 3 1
     1154 SETTABLEKS                       R81 R80 K99 ["Title"]
     1156 SETTABLEKS                       R10 R80 K9 ["owner"]
     1158 LOADN                            R81 70
     1159 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
     1161 SETTABLEKS                       R27 R80 K204 ["onDropDownSelect"]
     1163 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1165 CALL                             R81 1 1
     1166 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1168 CALL                             R78 2 1
     1169 JUMP                             ; [+1]
     1170 LOADNIL                          R78
     1171 SETTABLEKS                       R78 R77 K106 ["Ownership"]
     1173 MOVE                             R78 R23
     1174 JUMPIFNOT                        R78 ; [+41]
     1175 GETUPVAL                         R79 9
     1176 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1178 LOADK                            R79 K249 ["Frame"]
     1179 DUPTABLE                         R80 K250 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1180 LOADN                            R81 1
     1181 SETTABLEKS                       R81 R80 K152 ["BackgroundTransparency"]
     1183 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1185 CALL                             R81 1 1
     1186 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1188 GETIMPORT                        R81 K144 [UDim2.new]
     1190 LOADN                            R82 1
     1191 LOADN                            R83 0
     1192 LOADN                            R84 0
     1193 LOADN                            R85 20
     1194 CALL                             R81 4 1
     1195 SETTABLEKS                       R81 R80 K2 ["Size"]
     1197 DUPTABLE                         R81 K252 [{"Separator"}]
     1198 GETUPVAL                         R83 9
     1199 GETTABLEKS                       R82 R83 K94 ["createElement"]
     1201 GETUPVAL                         R83 28
     1202 DUPTABLE                         R84 K254 [{"Position"}]
     1203 GETIMPORT                        R85 K144 [UDim2.new]
     1205 LOADK                            R86 K255 [0.5]
     1206 LOADN                            R87 0
     1207 LOADK                            R88 K255 [0.5]
     1208 LOADN                            R89 0
     1209 CALL                             R85 4 1
     1210 SETTABLEKS                       R85 R84 K253 ["Position"]
     1212 CALL                             R82 2 1
     1213 SETTABLEKS                       R82 R81 K251 ["Separator"]
     1215 CALL                             R78 3 1
     1216 SETTABLEKS                       R78 R77 K107 ["DividerBase"]
     1218 JUMPIFNOT                        R45 ; [+24]
     1219 GETUPVAL                         R79 9
     1220 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1222 GETUPVAL                         R79 29
     1223 DUPTABLE                         R80 K260 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1224 GETTABLEKS                       R81 R2 K31 ["assetId"]
     1226 SETTABLEKS                       R81 R80 K256 ["AssetId"]
     1228 SETTABLEKS                       R15 R80 K19 ["AssetType"]
     1230 SETTABLEKS                       R6 R80 K257 ["AllowSelectPrivate"]
     1232 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1234 CALL                             R81 1 1
     1235 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1237 SETTABLEKS                       R16 R80 K258 ["IsAssetPublic"]
     1239 SETTABLEKS                       R29 R80 K259 ["OnSelected"]
     1241 CALL                             R78 2 1
     1242 JUMP                             ; [+1]
     1243 LOADNIL                          R78
     1244 SETTABLEKS                       R78 R77 K108 ["Sharing"]
     1246 JUMPIFNOT                        R45 ; [+42]
     1247 GETUPVAL                         R79 9
     1248 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1250 LOADK                            R79 K249 ["Frame"]
     1251 DUPTABLE                         R80 K250 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1252 LOADN                            R81 1
     1253 SETTABLEKS                       R81 R80 K152 ["BackgroundTransparency"]
     1255 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1257 CALL                             R81 1 1
     1258 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1260 GETIMPORT                        R81 K144 [UDim2.new]
     1262 LOADN                            R82 1
     1263 LOADN                            R83 0
     1264 LOADN                            R84 0
     1265 LOADN                            R85 20
     1266 CALL                             R81 4 1
     1267 SETTABLEKS                       R81 R80 K2 ["Size"]
     1269 DUPTABLE                         R81 K252 [{"Separator"}]
     1270 GETUPVAL                         R83 9
     1271 GETTABLEKS                       R82 R83 K94 ["createElement"]
     1273 GETUPVAL                         R83 28
     1274 DUPTABLE                         R84 K254 [{"Position"}]
     1275 GETIMPORT                        R85 K144 [UDim2.new]
     1277 LOADK                            R86 K255 [0.5]
     1278 LOADN                            R87 0
     1279 LOADK                            R88 K255 [0.5]
     1280 LOADN                            R89 0
     1281 CALL                             R85 4 1
     1282 SETTABLEKS                       R85 R84 K253 ["Position"]
     1284 CALL                             R82 2 1
     1285 SETTABLEKS                       R82 R81 K251 ["Separator"]
     1287 CALL                             R78 3 1
     1288 JUMP                             ; [+1]
     1289 LOADNIL                          R78
     1290 SETTABLEKS                       R78 R77 K109 ["SharingDivider"]
     1292 JUMPIFNOT                        R23 ; [+109]
     1293 GETUPVAL                         R79 9
     1294 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1296 GETUPVAL                         R79 13
     1297 DUPTABLE                         R80 K261 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1298 GETIMPORT                        R81 K233 [Enum.AutomaticSize.Y]
     1300 SETTABLEKS                       R81 R80 K161 ["AutomaticSize"]
     1302 GETIMPORT                        R81 K124 [Enum.FillDirection.Vertical]
     1304 SETTABLEKS                       R81 R80 K137 ["Layout"]
     1306 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1308 CALL                             R81 1 1
     1309 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1311 DUPTABLE                         R81 K262 [{"Top"}]
     1312 LOADN                            R82 20
     1313 SETTABLEKS                       R82 R81 K129 ["Top"]
     1315 SETTABLEKS                       R81 R80 K95 ["Padding"]
     1317 DUPTABLE                         R81 K265 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1318 GETUPVAL                         R83 9
     1319 GETTABLEKS                       R82 R83 K94 ["createElement"]
     1321 GETUPVAL                         R83 30
     1322 DUPTABLE                         R84 K266 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder"}]
     1323 GETTABLEKS                       R85 R2 K73 ["Localization"]
     1325 LOADK                            R87 K11 ["allowComment"]
     1326 LOADK                            R88 K12 ["commentOn"]
     1327 NAMECALL                         R85 R85 K76 ["getText"]
     1329 CALL                             R85 3 1
     1330 SETTABLEKS                       R85 R84 K163 ["Text"]
     1332 GETTABLEKS                       R86 R1 K269 ["uploadResult"]
     1334 GETTABLEKS                       R85 R86 K270 ["text"]
     1336 SETTABLEKS                       R85 R84 K165 ["TextColor3"]
     1338 GETUPVAL                         R86 14
     1339 GETTABLEKS                       R85 R86 K271 ["FONT_SIZE_LARGE"]
     1341 SETTABLEKS                       R85 R84 K168 ["TextSize"]
     1343 GETIMPORT                        R85 K144 [UDim2.new]
     1345 LOADN                            R86 1
     1346 LOADN                            R87 0
     1347 LOADN                            R88 0
     1348 LOADN                            R89 24
     1349 CALL                             R85 4 1
     1350 SETTABLEKS                       R85 R84 K2 ["Size"]
     1352 NAMECALL                         R85 R64 K142 ["getNextOrder"]
     1354 CALL                             R85 1 1
     1355 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
     1357 CALL                             R82 2 1
     1358 SETTABLEKS                       R82 R81 K263 ["CreatorStoreConfigurationText"]
     1360 GETUPVAL                         R83 9
     1361 GETTABLEKS                       R82 R83 K94 ["createElement"]
     1363 GETUPVAL                         R83 31
     1364 DUPTABLE                         R84 K273 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1365 SETTABLEKS                       R24 R84 K163 ["Text"]
     1367 GETTABLEKS                       R86 R1 K269 ["uploadResult"]
     1369 GETTABLEKS                       R85 R86 K274 ["link"]
     1371 SETTABLEKS                       R85 R84 K165 ["TextColor3"]
     1373 GETUPVAL                         R86 14
     1374 GETTABLEKS                       R85 R86 K271 ["FONT_SIZE_LARGE"]
     1376 SETTABLEKS                       R85 R84 K168 ["TextSize"]
     1378 GETIMPORT                        R85 K144 [UDim2.new]
     1380 LOADN                            R86 1
     1381 LOADN                            R87 0
     1382 LOADN                            R88 0
     1383 LOADN                            R89 24
     1384 CALL                             R85 4 1
     1385 SETTABLEKS                       R85 R84 K2 ["Size"]
     1387 NAMECALL                         R85 R64 K142 ["getNextOrder"]
     1389 CALL                             R85 1 1
     1390 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
     1392 NEWCLOSURE                       R85 P4
     1393 CAPTURE                          UPVAL U32
     1394 CAPTURE                          VAL R24
     1395 SETTABLEKS                       R85 R84 K272 ["OnClick"]
     1397 CALL                             R82 2 1
     1398 SETTABLEKS                       R82 R81 K264 ["CreatorStoreConfigurationLink"]
     1400 CALL                             R78 3 1
     1401 JUMP                             ; [+1]
     1402 LOADNIL                          R78
     1403 SETTABLEKS                       R78 R77 K110 ["CreatorStoreConfigurationFrame"]
     1405 MOVE                             R78 R43
     1406 JUMPIFNOT                        R78 ; [+27]
     1407 GETUPVAL                         R79 9
     1408 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1410 GETUPVAL                         R79 33
     1411 DUPTABLE                         R80 K278 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1412 LOADK                            R83 K88 ["General"]
     1413 LOADK                            R84 K23 [Enum.AssetType.Video]
     1414 NAMECALL                         R81 R63 K76 ["getText"]
     1416 CALL                             R81 3 1
     1417 SETTABLEKS                       R81 R80 K99 ["Title"]
     1419 LOADN                            R81 80
     1420 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
     1422 SETTABLEKS                       R12 R80 K275 ["CommentEnabled"]
     1424 SETTABLEKS                       R13 R80 K276 ["CommentOn"]
     1426 SETTABLEKS                       R31 R80 K277 ["ToggleCallback"]
     1428 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1430 CALL                             R81 1 1
     1431 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1433 CALL                             R78 2 1
     1434 SETTABLEKS                       R78 R77 K111 ["Comment"]
     1436 MOVE                             R78 R22
     1437 JUMPIFNOT                        R78 ; [+25]
     1438 GETUPVAL                         R79 9
     1439 GETTABLEKS                       R78 R79 K94 ["createElement"]
     1441 GETUPVAL                         R79 34
     1442 DUPTABLE                         R80 K280 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1443 LOADK                            R83 K88 ["General"]
     1444 LOADK                            R84 K112 ["DeleteLocal"]
     1445 NAMECALL                         R81 R63 K76 ["getText"]
     1447 CALL                             R81 3 1
     1448 SETTABLEKS                       R81 R80 K99 ["Title"]
     1450 LOADN                            R81 80
     1451 SETTABLEKS                       R81 R80 K180 ["TotalHeight"]
     1453 SETTABLEKS                       R14 R80 K112 ["DeleteLocal"]
     1455 SETTABLEKS                       R32 R80 K277 ["ToggleCallback"]
     1457 NAMECALL                         R81 R64 K142 ["getNextOrder"]
     1459 CALL                             R81 1 1
     1460 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1462 CALL                             R78 2 1
     1463 SETTABLEKS                       R78 R77 K112 ["DeleteLocal"]
     1465 CALL                             R74 3 -1
     1466 RETURN                           R74 -1

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
        2 GETUPVAL                         R6 2
        3 GETTABLEKS                       R5 R6 K0 ["SIDE_TABS"]
        5 GETTABLEKS                       R4 R5 K1 ["General"]
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
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETTABLEKS                       R3 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R3 K8 ["Util"]
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
       38 GETIMPORT                        R7 K11 [require]
       40 GETTABLEKS                       R11 R1 K7 ["Src"]
       42 GETTABLEKS                       R10 R11 K8 ["Util"]
       44 GETTABLEKS                       R9 R10 K15 ["SharedFlags"]
       46 GETTABLEKS                       R8 R9 K16 ["getFFlagEnableUGCForAllChecks"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K1 [game]
       51 LOADK                            R10 K17 ["ToolboxVideoConfigSharing2"]
       52 NAMECALL                         R8 R8 K18 ["GetFastFlag"]
       54 CALL                             R8 2 1
       55 GETIMPORT                        R9 K11 [require]
       57 GETTABLEKS                       R13 R1 K7 ["Src"]
       59 GETTABLEKS                       R12 R13 K8 ["Util"]
       61 GETTABLEKS                       R11 R12 K15 ["SharedFlags"]
       63 GETTABLEKS                       R10 R11 K19 ["getFFlagToolboxEnableFiatFully"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K11 [require]
       68 GETTABLEKS                       R14 R1 K7 ["Src"]
       70 GETTABLEKS                       R13 R14 K8 ["Util"]
       72 GETTABLEKS                       R12 R13 K15 ["SharedFlags"]
       74 GETTABLEKS                       R11 R12 K20 ["getFFlagToolboxAssetConfigOnboardingLink"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K1 [game]
       79 LOADK                            R13 K21 ["ToolboxRemoveRestrictedAssetWarning2"]
       80 NAMECALL                         R11 R11 K18 ["GetFastFlag"]
       82 CALL                             R11 2 1
       83 GETIMPORT                        R12 K11 [require]
       85 GETTABLEKS                       R15 R1 K7 ["Src"]
       87 GETTABLEKS                       R14 R15 K22 ["Flags"]
       89 GETTABLEKS                       R13 R14 K23 ["getFFlagEnableUploadingShoes"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R16 R1 K7 ["Src"]
       96 GETTABLEKS                       R15 R16 K22 ["Flags"]
       98 GETTABLEKS                       R14 R15 K24 ["getFFlagRemoveItemTags"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K11 [require]
      103 GETTABLEKS                       R15 R3 K25 ["Roact"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K11 [require]
      108 GETTABLEKS                       R16 R3 K26 ["RoactRodux"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R17 K11 [require]
      113 GETTABLEKS                       R18 R3 K13 ["Framework"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R16 R17 K27 ["ContextServices"]
      118 GETTABLEKS                       R17 R16 K28 ["withContext"]
      120 GETTABLEKS                       R18 R5 K29 ["UI"]
      122 GETTABLEKS                       R19 R18 K30 ["MultiImagePickerWrapper"]
      124 GETTABLEKS                       R20 R18 K31 ["TextLabel"]
      126 GETTABLEKS                       R21 R18 K32 ["TitledFrame"]
      128 GETTABLEKS                       R22 R18 K33 ["BulletList"]
      130 GETTABLEKS                       R23 R18 K34 ["LinkText"]
      132 GETTABLEKS                       R24 R18 K35 ["Pane"]
      134 GETTABLEKS                       R25 R18 K36 ["Separator"]
      136 GETIMPORT                        R26 K11 [require]
      138 GETTABLEKS                       R29 R1 K7 ["Src"]
      140 GETTABLEKS                       R28 R29 K37 ["Components"]
      142 GETTABLEKS                       R27 R28 K38 ["StyledScrollingFrame"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K11 [require]
      147 GETTABLEKS                       R28 R3 K39 ["Dash"]
      149 CALL                             R27 1 1
      150 GETTABLEKS                       R28 R27 K40 ["map"]
      152 GETIMPORT                        R29 K11 [require]
      154 GETTABLEKS                       R30 R2 K41 ["createAssetMediaMetadata"]
      156 CALL                             R29 1 1
      157 GETIMPORT                        R30 K11 [require]
      159 GETTABLEKS                       R31 R2 K42 ["LayoutOrderIterator"]
      161 CALL                             R30 1 1
      162 GETIMPORT                        R31 K11 [require]
      164 GETTABLEKS                       R32 R2 K43 ["AssetConfigConstants"]
      166 CALL                             R31 1 1
      167 GETIMPORT                        R32 K11 [require]
      169 GETTABLEKS                       R33 R2 K44 ["AssetConfigUtil"]
      171 CALL                             R32 1 1
      172 GETIMPORT                        R33 K11 [require]
      174 GETTABLEKS                       R34 R2 K45 ["Constants"]
      176 CALL                             R33 1 1
      177 GETIMPORT                        R34 K11 [require]
      179 GETTABLEKS                       R37 R1 K7 ["Src"]
      181 GETTABLEKS                       R36 R37 K8 ["Util"]
      183 GETTABLEKS                       R35 R36 K46 ["Images"]
      185 CALL                             R34 1 1
      186 GETIMPORT                        R35 K11 [require]
      188 GETTABLEKS                       R38 R1 K7 ["Src"]
      190 GETTABLEKS                       R37 R38 K47 ["Localization"]
      192 GETTABLEKS                       R36 R37 K48 ["getLocalizedAssetTextMap"]
      194 CALL                             R35 1 1
      195 GETIMPORT                        R36 K11 [require]
      197 GETTABLEKS                       R37 R2 K49 ["ToolboxUtilities"]
      199 CALL                             R36 1 1
      200 GETIMPORT                        R37 K11 [require]
      202 GETTABLEKS                       R38 R2 K50 ["FiatTempConstants"]
      204 CALL                             R37 1 1
      205 GETIMPORT                        R38 K11 [require]
      207 GETTABLEKS                       R39 R2 K51 ["Urls"]
      209 CALL                             R38 1 1
      210 GETTABLEKS                       R41 R1 K7 ["Src"]
      212 GETTABLEKS                       R40 R41 K37 ["Components"]
      214 GETTABLEKS                       R39 R40 K52 ["AssetConfiguration"]
      216 GETIMPORT                        R40 K11 [require]
      218 GETTABLEKS                       R43 R1 K7 ["Src"]
      220 GETTABLEKS                       R42 R43 K53 ["Actions"]
      222 GETTABLEKS                       R41 R42 K54 ["SetUploadAssetValidationStatus"]
      224 CALL                             R40 1 1
      225 GETIMPORT                        R41 K11 [require]
      227 GETTABLEKS                       R42 R39 K55 ["ConfigTextField"]
      229 CALL                             R41 1 1
      230 GETIMPORT                        R42 K11 [require]
      232 GETTABLEKS                       R43 R39 K56 ["ConfigAccess"]
      234 CALL                             R42 1 1
      235 GETIMPORT                        R43 K11 [require]
      237 GETTABLEKS                       R44 R39 K57 ["ConfigDeleteLocal"]
      239 CALL                             R43 1 1
      240 GETIMPORT                        R44 K11 [require]
      242 GETTABLEKS                       R45 R39 K58 ["ConfigCopy"]
      244 CALL                             R44 1 1
      245 GETIMPORT                        R45 K11 [require]
      247 GETTABLEKS                       R46 R39 K59 ["ConfigAssetType"]
      249 CALL                             R45 1 1
      250 GETIMPORT                        R46 K11 [require]
      252 GETTABLEKS                       R47 R39 K60 ["ConfigComment"]
      254 CALL                             R46 1 1
      255 GETIMPORT                        R47 K11 [require]
      257 GETTABLEKS                       R48 R39 K61 ["ConfigSharing"]
      259 CALL                             R47 1 1
      260 GETIMPORT                        R48 K11 [require]
      262 GETTABLEKS                       R49 R39 K62 ["ConfigSectionWrapper"]
      264 CALL                             R48 1 1
      265 GETIMPORT                        R49 K11 [require]
      267 GETTABLEKS                       R50 R39 K63 ["Header"]
      269 CALL                             R49 1 1
      270 GETIMPORT                        R50 K11 [require]
      272 GETTABLEKS                       R51 R39 K64 ["FiatPriceComponent"]
      274 CALL                             R50 1 1
      275 GETIMPORT                        R51 K11 [require]
      277 GETTABLEKS                       R52 R39 K65 ["DataConsentToggle"]
      279 CALL                             R51 1 1
      280 GETIMPORT                        R52 K11 [require]
      282 GETTABLEKS                       R53 R39 K66 ["UGCBundleValidation"]
      284 CALL                             R52 1 1
      285 GETIMPORT                        R53 K11 [require]
      287 GETTABLEKS                       R56 R1 K7 ["Src"]
      289 GETTABLEKS                       R55 R56 K8 ["Util"]
      291 GETTABLEKS                       R54 R55 K67 ["ColorPicker"]
      293 CALL                             R53 1 1
      294 GETIMPORT                        R54 K11 [require]
      296 GETTABLEKS                       R57 R1 K7 ["Src"]
      298 GETTABLEKS                       R56 R57 K22 ["Flags"]
      300 GETTABLEKS                       R55 R56 K68 ["getFFlagEnableUploadingMakeup"]
      302 CALL                             R54 1 1
      303 GETIMPORT                        R55 K11 [require]
      305 GETTABLEKS                       R58 R1 K7 ["Src"]
      307 GETTABLEKS                       R57 R58 K22 ["Flags"]
      309 GETTABLEKS                       R56 R57 K69 ["getFFlagToolboxMigrateFoundation"]
      311 CALL                             R55 1 1
      312 GETIMPORT                        R56 K11 [require]
      314 GETTABLEKS                       R59 R1 K7 ["Src"]
      316 GETTABLEKS                       R58 R59 K70 ["Types"]
      318 GETTABLEKS                       R57 R58 K71 ["MarketplaceFiatServiceTypes"]
      320 CALL                             R56 1 1
      321 GETIMPORT                        R57 K11 [require]
      323 GETTABLEKS                       R60 R1 K7 ["Src"]
      325 GETTABLEKS                       R59 R60 K53 ["Actions"]
      327 GETTABLEKS                       R58 R59 K72 ["SetFieldError"]
      329 CALL                             R57 1 1
      330 GETIMPORT                        R58 K11 [require]
      332 GETTABLEKS                       R61 R1 K7 ["Src"]
      334 GETTABLEKS                       R60 R61 K8 ["Util"]
      336 GETTABLEKS                       R59 R60 K73 ["PageInfoHelper"]
      338 CALL                             R58 1 1
      339 GETTABLEKS                       R59 R14 K74 ["PureComponent"]
      341 LOADK                            R61 K75 ["PublishAsset"]
      342 NAMECALL                         R59 R59 K76 ["extend"]
      344 CALL                             R59 2 1
      345 DUPCLOSURE                       R60 K77 [PROTO_9]
      346 CAPTURE                          VAL R31
      347 CAPTURE                          VAL R14
      348 CAPTURE                          VAL R0
      349 CAPTURE                          VAL R36
      350 CAPTURE                          VAL R10
      351 SETTABLEKS                       R60 R59 K78 ["init"]
      353 DUPCLOSURE                       R60 K79 [PROTO_10]
      354 SETTABLEKS                       R60 R59 K80 ["bumpCanvas"]
      356 DUPCLOSURE                       R60 K81 [PROTO_11]
      357 CAPTURE                          VAL R32
      358 CAPTURE                          VAL R30
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R33
      362 CAPTURE                          VAL R35
      363 SETTABLEKS                       R60 R59 K82 ["getMissingOptionalPartsMessage"]
      365 DUPCLOSURE                       R60 K83 [PROTO_12]
      366 CAPTURE                          VAL R32
      367 CAPTURE                          VAL R30
      368 CAPTURE                          VAL R14
      369 CAPTURE                          VAL R20
      370 CAPTURE                          VAL R33
      371 SETTABLEKS                       R60 R59 K84 ["getUnknownMeshPartMessage"]
      373 DUPCLOSURE                       R60 K85 [PROTO_18]
      374 CAPTURE                          VAL R31
      375 CAPTURE                          VAL R32
      376 CAPTURE                          VAL R38
      377 CAPTURE                          VAL R36
      378 CAPTURE                          VAL R7
      379 CAPTURE                          VAL R11
      380 CAPTURE                          VAL R13
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R30
      383 CAPTURE                          VAL R14
      384 CAPTURE                          VAL R28
      385 CAPTURE                          VAL R29
      386 CAPTURE                          VAL R26
      387 CAPTURE                          VAL R24
      388 CAPTURE                          VAL R33
      389 CAPTURE                          VAL R34
      390 CAPTURE                          VAL R49
      391 CAPTURE                          VAL R41
      392 CAPTURE                          VAL R45
      393 CAPTURE                          VAL R42
      394 CAPTURE                          VAL R54
      395 CAPTURE                          VAL R55
      396 CAPTURE                          VAL R6
      397 CAPTURE                          VAL R53
      398 CAPTURE                          VAL R48
      399 CAPTURE                          VAL R52
      400 CAPTURE                          VAL R12
      401 CAPTURE                          VAL R51
      402 CAPTURE                          VAL R25
      403 CAPTURE                          VAL R47
      404 CAPTURE                          VAL R20
      405 CAPTURE                          VAL R23
      406 CAPTURE                          VAL R0
      407 CAPTURE                          VAL R46
      408 CAPTURE                          VAL R43
      409 SETTABLEKS                       R60 R59 K86 ["render"]
      411 DUPCLOSURE                       R60 K87 [PROTO_19]
      412 CAPTURE                          VAL R10
      413 DUPCLOSURE                       R61 K88 [PROTO_22]
      414 CAPTURE                          VAL R57
      415 CAPTURE                          VAL R31
      416 CAPTURE                          VAL R40
      417 MOVE                             R62 R17
      418 DUPTABLE                         R63 K90 [{"Localization", "Stylizer"}]
      419 GETTABLEKS                       R64 R16 K47 ["Localization"]
      421 SETTABLEKS                       R64 R63 K47 ["Localization"]
      423 GETTABLEKS                       R64 R16 K89 ["Stylizer"]
      425 SETTABLEKS                       R64 R63 K89 ["Stylizer"]
      427 CALL                             R62 1 1
      428 MOVE                             R63 R59
      429 CALL                             R62 1 1
      430 MOVE                             R59 R62
      431 GETTABLEKS                       R62 R15 K91 ["connect"]
      433 MOVE                             R63 R60
      434 MOVE                             R64 R61
      435 CALL                             R62 2 1
      436 MOVE                             R63 R59
      437 CALL                             R62 1 -1
      438 RETURN                           R62 -1
