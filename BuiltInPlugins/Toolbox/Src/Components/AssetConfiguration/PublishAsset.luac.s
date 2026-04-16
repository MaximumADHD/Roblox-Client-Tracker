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
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K13 ["onClickConfigurePriceUrl"]
       43 GETUPVAL                         R2 4
       44 CALL                             R2 0 1
       45 JUMPIFNOT                        R2 ; [+5]
       46 DUPCLOSURE                       R2 K14 [PROTO_1]
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 SETTABLEKS                       R2 R0 K15 ["onClickOnboardLink"]
       51 NEWCLOSURE                       R2 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R2 R0 K16 ["refreshCanvas"]
       56 NEWCLOSURE                       R2 P3
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R0 K17 ["updateMaxDropdownPosition"]
       60 NEWCLOSURE                       R2 P4
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R2 R0 K18 ["setValidationState"]
       64 NEWCLOSURE                       R2 P5
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R2 R0 K19 ["setValidationFailureReasons"]
       68 NEWCLOSURE                       R2 P6
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R2 R0 K20 ["setUGCBundleValidationResults"]
       72 NEWCLOSURE                       R2 P7
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R2 R0 K21 ["setCurrentAssetType"]
       76 RETURN                           R0 0

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
       18 GETTABLEKS                       R9 R2 K8 ["owner"]
       20 GETTABLEKS                       R10 R2 K9 ["copyOn"]
       22 GETTABLEKS                       R11 R2 K10 ["allowComment"]
       24 GETTABLEKS                       R12 R2 K11 ["commentOn"]
       26 GETTABLEKS                       R13 R2 K12 ["deleteLocal"]
       28 GETTABLEKS                       R14 R2 K13 ["assetTypeEnum"]
       30 GETTABLEKS                       R15 R2 K14 ["isAssetPublic"]
       32 GETUPVAL                         R18 0
       33 GETTABLEKS                       R17 R18 K15 ["additionalImages"]
       35 GETTABLEKS                       R16 R17 K16 ["MaxThumbnails"]
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
       67 GETUPVAL                         R23 1
       68 GETTABLEKS                       R22 R23 K29 ["isCreatorStoreAssetNotIncludingAnimation"]
       70 MOVE                             R23 R14
       71 CALL                             R22 1 1
       72 GETTABLEKS                       R25 R2 K30 ["assetId"]
       74 FASTCALL1                        TYPEOF R25 ; [+2]
       75 GETIMPORT                        R24 K32 [typeof]
       77 CALL                             R24 1 1
       78 JUMPIFNOTEQKS                    R24 K33 ["number"] ; [+8]
       80 GETUPVAL                         R24 2
       81 GETTABLEKS                       R23 R24 K34 ["constructCreatorStoreConfigurationUrl"]
       83 GETTABLEKS                       R24 R2 K30 ["assetId"]
       85 CALL                             R23 1 1
       86 JUMP                             ; [+4]
       87 GETUPVAL                         R24 3
       88 GETTABLEKS                       R23 R24 K35 ["getCreatorDashboardBaseUrl"]
       90 CALL                             R23 0 1
       91 GETTABLEKS                       R24 R2 K36 ["onNameChange"]
       93 GETTABLEKS                       R25 R2 K37 ["onDescChange"]
       95 GETTABLEKS                       R26 R2 K38 ["onOwnerSelected"]
       97 GETTABLEKS                       R27 R2 K39 ["onCategoryChange"]
       99 GETTABLEKS                       R28 R2 K40 ["onSharingChanged"]
      101 GETTABLEKS                       R29 R2 K41 ["toggleCopy"]
      103 GETTABLEKS                       R30 R2 K42 ["toggleComment"]
      105 GETTABLEKS                       R31 R2 K43 ["toggleDeleteLocal"]
      107 GETUPVAL                         R33 4
      108 CALL                             R33 0 1
      109 JUMPIFNOT                        R33 ; [+3]
      110 GETTABLEKS                       R32 R2 K44 ["canUploadWithUgcRestrictions"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R32
      114 GETUPVAL                         R34 4
      115 CALL                             R34 0 1
      116 JUMPIFNOT                        R34 ; [+3]
      117 GETTABLEKS                       R33 R2 K45 ["canUploadWithUgcRestrictionsDenyReason"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R33
      121 GETTABLEKS                       R34 R2 K46 ["publishingRequirements"]
      123 GETTABLEKS                       R35 R2 K47 ["publishingRestriction"]
      125 JUMPIFNOT                        R34 ; [+3]
      126 GETTABLEKS                       R36 R34 K48 ["verification"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R36
      130 JUMPIFNOT                        R36 ; [+11]
      131 GETTABLEKS                       R38 R36 K49 ["supportedTypes"]
      133 JUMPIFNOT                        R38 ; [+8]
      134 GETTABLEKS                       R39 R36 K49 ["supportedTypes"]
      136 LENGTH                           R38 R39
      137 JUMPIFNOTEQKN                    R38 K50 [0] ; [+2]
      139 LOADB                            R37 0 +1
      140 LOADB                            R37 1
      141 JUMP                             ; [+1]
      142 LOADB                            R37 0
      143 MOVE                             R38 R36
      144 JUMPIFNOT                        R38 ; [+2]
      145 GETTABLEKS                       R38 R36 K51 ["isVerified"]
      147 AND                              R39 R38 R20
      148 GETTABLEKS                       R40 R2 K52 ["displayOwnership"]
      150 GETTABLEKS                       R41 R2 K53 ["displayCopy"]
      152 GETTABLEKS                       R42 R2 K54 ["displayComment"]
      154 JUMPIFNOT                        R20 ; [+2]
      155 LOADB                            R43 0
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R43 R2 K55 ["displayAssetType"]
      159 GETTABLEKS                       R44 R2 K56 ["displaySharing"]
      161 GETTABLEKS                       R45 R2 K57 ["displayAssetTypeSelection"]
      163 GETUPVAL                         R47 5
      164 NOT                              R46 R47
      165 JUMPIFNOT                        R20 ; [+3]
      166 GETTABLEKS                       R47 R2 K58 ["allowedAssetTypesForRelease"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R47
      170 GETTABLEKS                       R48 R2 K59 ["allowedAssetTypesForFree"]
      172 JUMPIFNOT                        R20 ; [+3]
      173 GETTABLEKS                       R49 R2 K60 ["newAssetStatus"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R49
      177 JUMPIFNOT                        R20 ; [+3]
      178 GETTABLEKS                       R50 R2 K61 ["currentAssetStatus"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R50
      182 JUMPIFNOT                        R20 ; [+3]
      183 GETTABLEKS                       R51 R2 K62 ["onStatusChange"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R51
      187 JUMPIFNOT                        R20 ; [+3]
      188 GETTABLEKS                       R52 R2 K63 ["price"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R52
      192 JUMPIFNOT                        R20 ; [+3]
      193 GETTABLEKS                       R53 R2 K64 ["minPrice"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R53
      197 JUMPIFNOT                        R20 ; [+3]
      198 GETTABLEKS                       R54 R2 K65 ["maxPrice"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R54
      202 JUMPIFNOT                        R20 ; [+3]
      203 GETTABLEKS                       R55 R2 K66 ["feeRate"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R55
      207 JUMPIFNOT                        R20 ; [+3]
      208 GETTABLEKS                       R56 R2 K67 ["isPriceValid"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R56
      212 JUMPIFNOT                        R20 ; [+3]
      213 GETTABLEKS                       R57 R2 K68 ["onPriceChange"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R57
      217 JUMPIFNOT                        R20 ; [+12]
      218 GETUPVAL                         R59 1
      219 GETTABLEKS                       R58 R59 K69 ["isReadyForSale"]
      221 MOVE                             R59 R49
      222 CALL                             R58 1 1
      223 JUMPIF                           R58 ; [+7]
      224 GETUPVAL                         R59 1
      225 GETTABLEKS                       R58 R59 K70 ["isBuyableMarketplaceAsset"]
      227 MOVE                             R59 R14
      228 CALL                             R58 1 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R58
      231 LOADNIL                          R59
      232 LOADNIL                          R60
      233 GETTABLEKS                       R61 R2 K71 ["Localization"]
      235 JUMPIF                           R17 ; [+3]
      236 GETUPVAL                         R62 6
      237 JUMPIFNOT                        R62 ; [+9]
      238 JUMPIFNOT                        R18 ; [+8]
      239 JUMPIF                           R15 ; [+7]
      240 JUMPIFNOT                        R10 ; [+6]
      241 LOADK                            R64 K72 ["AssetConfigCopy"]
      242 LOADK                            R65 K73 ["MustShare"]
      243 NAMECALL                         R62 R61 K74 ["getText"]
      245 CALL                             R62 3 1
      246 MOVE                             R59 R62
      247 JUMPIFNOT                        R19 ; [+6]
      248 LOADK                            R64 K75 ["AssetConfig"]
      249 LOADK                            R65 K76 ["ModelPublishWarning"]
      250 NAMECALL                         R62 R61 K74 ["getText"]
      252 CALL                             R62 3 1
      253 MOVE                             R60 R62
      254 GETUPVAL                         R63 7
      255 GETTABLEKS                       R62 R63 K77 ["new"]
      257 CALL                             R62 0 1
      258 GETTABLEKS                       R63 R1 K78 ["publishAsset"]
      260 LOADN                            R64 80
      261 JUMPIF                           R5 ; [+1]
      262 ADDK                             R64 R64 K79 [60]
      263 NEWTABLE                         R65 4 0
      265 SETTABLEKS                       R3 R65 K2 ["Size"]
      267 SETTABLEKS                       R4 R65 K3 ["LayoutOrder"]
      269 GETUPVAL                         R67 8
      270 GETTABLEKS                       R66 R67 K80 ["Ref"]
      272 GETTABLEKS                       R67 R0 K81 ["baseFrameRef"]
      274 SETTABLE                         R67 R65 R66
      275 LOADNIL                          R66
      276 GETTABLEKS                       R67 R2 K82 ["assetMediaMetadataArray"]
      278 JUMPIFNOT                        R67 ; [+3]
      279 GETTABLEKS                       R66 R2 K82 ["assetMediaMetadataArray"]
      281 JUMP                             ; [+11]
      282 GETTABLEKS                       R67 R2 K83 ["assetMediaIds"]
      284 JUMPIFEQKNIL                     R67 ; [+8]
      286 GETUPVAL                         R67 9
      287 GETTABLEKS                       R68 R2 K83 ["assetMediaIds"]
      289 DUPCLOSURE                       R69 K84 [PROTO_13]
      290 CAPTURE                          UPVAL U10
      291 CALL                             R67 2 1
      292 MOVE                             R66 R67
      293 JUMPIFNOT                        R20 ; [+7]
      294 MOVE                             R67 R58
      295 JUMPIFNOT                        R67 ; [+6]
      296 JUMPIFEQKNIL                     R35 ; [+2]
      298 LOADB                            R67 0 +1
      299 LOADB                            R67 1
      300 JUMP                             ; [+1]
      301 MOVE                             R67 R5
      302 LOADNIL                          R68
      303 LOADNIL                          R69
      304 LOADNIL                          R70
      305 LOADNIL                          R71
      306 GETUPVAL                         R73 1
      307 GETTABLEKS                       R72 R73 K85 ["isUGCBundleType"]
      309 MOVE                             R73 R14
      310 CALL                             R72 1 1
      311 MOVE                             R68 R72
      312 LOADK                            R74 K86 ["General"]
      313 LOADK                            R75 K87 ["BodyValidation"]
      314 NAMECALL                         R72 R61 K74 ["getText"]
      316 CALL                             R72 3 1
      317 MOVE                             R69 R72
      318 GETTABLEKS                       R72 R2 K88 ["instances"]
      320 JUMPIFNOT                        R72 ; [+20]
      321 GETTABLEKS                       R75 R2 K88 ["instances"]
      323 GETTABLEN                        R74 R75 1
      324 GETTABLEKS                       R75 R2 K89 ["allowedBundleTypeSettings"]
      326 MOVE                             R76 R14
      327 MOVE                             R77 R1
      328 NAMECALL                         R72 R0 K90 ["getMissingOptionalPartsMessage"]
      330 CALL                             R72 5 1
      331 MOVE                             R70 R72
      332 GETTABLEKS                       R75 R2 K88 ["instances"]
      334 GETTABLEN                        R74 R75 1
      335 MOVE                             R75 R14
      336 MOVE                             R76 R1
      337 NAMECALL                         R72 R0 K91 ["getUnknownMeshPartMessage"]
      339 CALL                             R72 4 1
      340 MOVE                             R71 R72
      341 GETUPVAL                         R73 8
      342 GETTABLEKS                       R72 R73 K92 ["createElement"]
      344 GETUPVAL                         R73 11
      345 MOVE                             R74 R65
      346 DUPTABLE                         R75 K111 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal"}]
      347 GETUPVAL                         R77 8
      348 GETTABLEKS                       R76 R77 K92 ["createElement"]
      350 LOADK                            R77 K112 ["UIPadding"]
      351 DUPTABLE                         R78 K117 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      352 GETIMPORT                        R79 K119 [UDim.new]
      354 LOADN                            R80 0
      355 LOADN                            R81 24
      356 CALL                             R79 2 1
      357 SETTABLEKS                       R79 R78 K113 ["PaddingTop"]
      359 GETIMPORT                        R79 K119 [UDim.new]
      361 LOADN                            R80 0
      362 LOADN                            R81 24
      363 CALL                             R79 2 1
      364 SETTABLEKS                       R79 R78 K114 ["PaddingBottom"]
      366 GETIMPORT                        R79 K119 [UDim.new]
      368 LOADN                            R80 0
      369 LOADN                            R81 24
      370 CALL                             R79 2 1
      371 SETTABLEKS                       R79 R78 K115 ["PaddingLeft"]
      373 GETIMPORT                        R79 K119 [UDim.new]
      375 LOADN                            R80 0
      376 LOADN                            R81 24
      377 CALL                             R79 2 1
      378 SETTABLEKS                       R79 R78 K116 ["PaddingRight"]
      380 CALL                             R76 2 1
      381 SETTABLEKS                       R76 R75 K93 ["Padding"]
      383 GETUPVAL                         R77 8
      384 GETTABLEKS                       R76 R77 K92 ["createElement"]
      386 LOADK                            R77 K94 ["UIListLayout"]
      387 NEWTABLE                         R78 8 0
      389 GETIMPORT                        R79 K122 [Enum.FillDirection.Vertical]
      391 SETTABLEKS                       R79 R78 K120 ["FillDirection"]
      393 GETIMPORT                        R79 K125 [Enum.HorizontalAlignment.Left]
      395 SETTABLEKS                       R79 R78 K123 ["HorizontalAlignment"]
      397 GETIMPORT                        R79 K128 [Enum.VerticalAlignment.Top]
      399 SETTABLEKS                       R79 R78 K126 ["VerticalAlignment"]
      401 GETIMPORT                        R79 K130 [Enum.SortOrder.LayoutOrder]
      403 SETTABLEKS                       R79 R78 K129 ["SortOrder"]
      405 GETIMPORT                        R79 K119 [UDim.new]
      407 LOADN                            R80 0
      408 LOADN                            R81 0
      409 CALL                             R79 2 1
      410 SETTABLEKS                       R79 R78 K93 ["Padding"]
      412 GETUPVAL                         R81 8
      413 GETTABLEKS                       R80 R81 K131 ["Change"]
      415 GETTABLEKS                       R79 R80 K132 ["AbsoluteContentSize"]
      417 GETTABLEKS                       R80 R0 K133 ["refreshCanvas"]
      419 JUMPIF                           R80 ; [+3]
      420 NEWCLOSURE                       R80 P1
      421 CAPTURE                          VAL R0
      422 CAPTURE                          VAL R3
      423 SETTABLE                         R80 R78 R79
      424 GETUPVAL                         R80 8
      425 GETTABLEKS                       R79 R80 K80 ["Ref"]
      427 GETTABLEKS                       R80 R0 K134 ["listLayoutRef"]
      429 SETTABLE                         R80 R78 R79
      430 CALL                             R76 2 1
      431 SETTABLEKS                       R76 R75 K94 ["UIListLayout"]
      433 JUMPIF                           R45 ; [+133]
      434 JUMPIFNOT                        R19 ; [+132]
      435 JUMPIFNOT                        R46 ; [+131]
      436 GETUPVAL                         R77 8
      437 GETTABLEKS                       R76 R77 K92 ["createElement"]
      439 GETUPVAL                         R77 12
      440 DUPTABLE                         R78 K137 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
      441 GETIMPORT                        R79 K125 [Enum.HorizontalAlignment.Left]
      443 SETTABLEKS                       R79 R78 K123 ["HorizontalAlignment"]
      445 GETIMPORT                        R79 K139 [Enum.FillDirection.Horizontal]
      447 SETTABLEKS                       R79 R78 K135 ["Layout"]
      449 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      451 CALL                             R79 1 1
      452 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      454 GETIMPORT                        R79 K142 [UDim2.new]
      456 LOADN                            R80 1
      457 LOADN                            R81 0
      458 LOADN                            R82 0
      459 GETUPVAL                         R84 13
      460 GETTABLEKS                       R83 R84 K143 ["FONT_SIZE_TITLE"]
      462 CALL                             R79 4 1
      463 SETTABLEKS                       R79 R78 K2 ["Size"]
      465 DUPTABLE                         R79 K145 [{"Bottom"}]
      466 LOADN                            R80 30
      467 SETTABLEKS                       R80 R79 K144 ["Bottom"]
      469 SETTABLEKS                       R79 R78 K93 ["Padding"]
      471 LOADN                            R79 5
      472 SETTABLEKS                       R79 R78 K136 ["Spacing"]
      474 GETIMPORT                        R79 K128 [Enum.VerticalAlignment.Top]
      476 SETTABLEKS                       R79 R78 K126 ["VerticalAlignment"]
      478 DUPTABLE                         R79 K148 [{"Icon", "WarningText"}]
      479 GETUPVAL                         R81 8
      480 GETTABLEKS                       R80 R81 K92 ["createElement"]
      482 LOADK                            R81 K149 ["ImageLabel"]
      483 DUPTABLE                         R82 K153 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      484 LOADN                            R83 1
      485 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      487 LOADN                            R83 1
      488 SETTABLEKS                       R83 R82 K150 ["BackgroundTransparency"]
      490 GETUPVAL                         R84 14
      491 GETTABLEKS                       R83 R84 K154 ["WARNING_ICON"]
      493 SETTABLEKS                       R83 R82 K151 ["Image"]
      495 GETTABLEKS                       R83 R63 K155 ["warningIconColor"]
      497 SETTABLEKS                       R83 R82 K152 ["ImageColor3"]
      499 GETIMPORT                        R83 K157 [UDim2.fromOffset]
      501 LOADN                            R84 24
      502 LOADN                            R85 24
      503 CALL                             R83 2 1
      504 SETTABLEKS                       R83 R82 K2 ["Size"]
      506 CALL                             R80 2 1
      507 SETTABLEKS                       R80 R79 K146 ["Icon"]
      509 GETUPVAL                         R81 8
      510 GETTABLEKS                       R80 R81 K92 ["createElement"]
      512 LOADK                            R81 K158 ["TextLabel"]
      513 DUPTABLE                         R82 K167 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      514 GETIMPORT                        R83 K169 [Enum.AutomaticSize.XY]
      516 SETTABLEKS                       R83 R82 K159 ["AutomaticSize"]
      518 LOADN                            R83 2
      519 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      521 LOADN                            R83 1
      522 SETTABLEKS                       R83 R82 K150 ["BackgroundTransparency"]
      524 GETUPVAL                         R84 13
      525 GETTABLEKS                       R83 R84 K170 ["FONT"]
      527 SETTABLEKS                       R83 R82 K160 ["Font"]
      529 GETIMPORT                        R83 K142 [UDim2.new]
      531 LOADN                            R84 1
      532 LOADN                            R85 0
      533 LOADN                            R86 1
      534 LOADN                            R87 0
      535 CALL                             R83 4 1
      536 SETTABLEKS                       R83 R82 K2 ["Size"]
      538 SETTABLEKS                       R60 R82 K161 ["Text"]
      540 LOADB                            R83 1
      541 SETTABLEKS                       R83 R82 K162 ["TextWrapped"]
      543 GETTABLEKS                       R84 R1 K171 ["assetConfig"]
      545 GETTABLEKS                       R83 R84 K172 ["warningColor"]
      547 SETTABLEKS                       R83 R82 K163 ["TextColor3"]
      549 GETIMPORT                        R83 K173 [Enum.TextXAlignment.Left]
      551 SETTABLEKS                       R83 R82 K164 ["TextXAlignment"]
      553 GETIMPORT                        R83 K175 [Enum.TextYAlignment.Center]
      555 SETTABLEKS                       R83 R82 K165 ["TextYAlignment"]
      557 GETUPVAL                         R84 13
      558 GETTABLEKS                       R83 R84 K143 ["FONT_SIZE_TITLE"]
      560 SETTABLEKS                       R83 R82 K166 ["TextSize"]
      562 CALL                             R80 2 1
      563 SETTABLEKS                       R80 R79 K147 ["WarningText"]
      565 CALL                             R76 3 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R76
      568 SETTABLEKS                       R76 R75 K95 ["ModelWarningFrame"]
      570 JUMPIFNOT                        R20 ; [+19]
      571 GETUPVAL                         R77 8
      572 GETTABLEKS                       R76 R77 K92 ["createElement"]
      574 GETUPVAL                         R77 15
      575 DUPTABLE                         R78 K176 [{"LayoutOrder", "Title"}]
      576 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      578 CALL                             R79 1 1
      579 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      581 LOADK                            R81 K75 ["AssetConfig"]
      582 LOADK                            R82 K177 ["PublishPluginHeader"]
      583 NAMECALL                         R79 R61 K74 ["getText"]
      585 CALL                             R79 3 1
      586 SETTABLEKS                       R79 R78 K97 ["Title"]
      588 CALL                             R76 2 1
      589 JUMP                             ; [+1]
      590 LOADNIL                          R76
      591 SETTABLEKS                       R76 R75 K96 ["Header"]
      593 GETUPVAL                         R77 8
      594 GETTABLEKS                       R76 R77 K92 ["createElement"]
      596 GETUPVAL                         R77 16
      597 DUPTABLE                         R78 K184 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      598 LOADK                            R81 K86 ["General"]
      599 LOADK                            R82 K97 ["Title"]
      600 NAMECALL                         R79 R61 K74 ["getText"]
      602 CALL                             R79 3 1
      603 SETTABLEKS                       R79 R78 K97 ["Title"]
      605 LOADN                            R79 100
      606 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
      608 GETUPVAL                         R80 0
      609 GETTABLEKS                       R79 R80 K185 ["NAME_CHARACTER_LIMIT"]
      611 SETTABLEKS                       R79 R78 K179 ["MaxCount"]
      613 SETTABLEKS                       R24 R78 K180 ["TextChangeCallBack"]
      615 SETTABLEKS                       R7 R78 K181 ["TextContent"]
      617 GETUPVAL                         R80 17
      618 CALL                             R80 0 1
      619 JUMPIFNOT                        R80 ; [+3]
      620 GETTABLEKS                       R79 R2 K186 ["showNameRequiredError"]
      622 JUMP                             ; [+1]
      623 LOADNIL                          R79
      624 SETTABLEKS                       R79 R78 K182 ["showRequiredError"]
      626 NEWCLOSURE                       R79 P2
      627 CAPTURE                          VAL R0
      628 CAPTURE                          UPVAL U0
      629 SETTABLEKS                       R79 R78 K183 ["ErrorCallback"]
      631 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      633 CALL                             R79 1 1
      634 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      636 CALL                             R76 2 1
      637 SETTABLEKS                       R76 R75 K97 ["Title"]
      639 GETUPVAL                         R77 8
      640 GETTABLEKS                       R76 R77 K92 ["createElement"]
      642 GETUPVAL                         R77 16
      643 DUPTABLE                         R78 K188 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      644 LOADK                            R81 K189 ["AssetConfigDescription"]
      645 LOADK                            R82 K190 ["AddRobloxLinks"]
      646 NAMECALL                         R79 R61 K74 ["getText"]
      648 CALL                             R79 3 1
      649 SETTABLEKS                       R79 R78 K187 ["BottomRightText"]
      651 LOADK                            R81 K86 ["General"]
      652 LOADK                            R82 K98 ["Description"]
      653 NAMECALL                         R79 R61 K74 ["getText"]
      655 CALL                             R79 3 1
      656 SETTABLEKS                       R79 R78 K97 ["Title"]
      658 LOADN                            R79 180
      659 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
      661 GETUPVAL                         R80 0
      662 GETTABLEKS                       R79 R80 K191 ["DESCRIPTION_CHARACTER_LIMIT"]
      664 SETTABLEKS                       R79 R78 K179 ["MaxCount"]
      666 SETTABLEKS                       R25 R78 K180 ["TextChangeCallBack"]
      668 SETTABLEKS                       R8 R78 K181 ["TextContent"]
      670 GETUPVAL                         R80 17
      671 CALL                             R80 0 1
      672 JUMPIFNOT                        R80 ; [+3]
      673 GETTABLEKS                       R79 R2 K192 ["showDescriptionRequiredError"]
      675 JUMP                             ; [+1]
      676 LOADNIL                          R79
      677 SETTABLEKS                       R79 R78 K182 ["showRequiredError"]
      679 NEWCLOSURE                       R79 P3
      680 CAPTURE                          VAL R0
      681 CAPTURE                          UPVAL U0
      682 SETTABLEKS                       R79 R78 K183 ["ErrorCallback"]
      684 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      686 CALL                             R79 1 1
      687 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      689 CALL                             R76 2 1
      690 SETTABLEKS                       R76 R75 K98 ["Description"]
      692 JUMPIFNOT                        R45 ; [+80]
      693 GETUPVAL                         R77 8
      694 GETTABLEKS                       R76 R77 K92 ["createElement"]
      696 GETUPVAL                         R77 18
      697 DUPTABLE                         R78 K203 [{"LayoutOrder", "onCategoryChange", "canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      698 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      700 CALL                             R79 1 1
      701 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      703 SETTABLEKS                       R27 R78 K39 ["onCategoryChange"]
      705 GETUPVAL                         R80 4
      706 CALL                             R80 0 1
      707 JUMPIFNOT                        R80 ; [+2]
      708 MOVE                             R79 R32
      709 JUMP                             ; [+1]
      710 LOADNIL                          R79
      711 SETTABLEKS                       R79 R78 K44 ["canUploadWithUgcRestrictions"]
      713 GETUPVAL                         R80 4
      714 CALL                             R80 0 1
      715 JUMPIFNOT                        R80 ; [+2]
      716 MOVE                             R79 R33
      717 JUMP                             ; [+1]
      718 LOADNIL                          R79
      719 SETTABLEKS                       R79 R78 K45 ["canUploadWithUgcRestrictionsDenyReason"]
      721 GETTABLEKS                       R79 R2 K193 ["dataSharingEnabled"]
      723 SETTABLEKS                       R79 R78 K193 ["dataSharingEnabled"]
      725 GETTABLEKS                       R79 R2 K194 ["dataSharingToggled"]
      727 SETTABLEKS                       R79 R78 K194 ["dataSharingToggled"]
      729 GETTABLEKS                       R79 R2 K195 ["onDataConsentToggleClick"]
      731 SETTABLEKS                       R79 R78 K195 ["onDataConsentToggleClick"]
      733 GETTABLEKS                       R80 R0 K204 ["state"]
      735 GETTABLEKS                       R79 R80 K196 ["validationState"]
      737 SETTABLEKS                       R79 R78 K196 ["validationState"]
      739 GETTABLEKS                       R80 R0 K204 ["state"]
      741 GETTABLEKS                       R79 R80 K197 ["validationFailureReasons"]
      743 SETTABLEKS                       R79 R78 K197 ["validationFailureReasons"]
      745 GETTABLEKS                       R79 R0 K198 ["setValidationState"]
      747 SETTABLEKS                       R79 R78 K198 ["setValidationState"]
      749 GETTABLEKS                       R79 R0 K199 ["setValidationFailureReasons"]
      751 SETTABLEKS                       R79 R78 K199 ["setValidationFailureReasons"]
      753 GETTABLEKS                       R80 R0 K204 ["state"]
      755 GETTABLEKS                       R79 R80 K200 ["ugcBundleValidationResults"]
      757 SETTABLEKS                       R79 R78 K200 ["ugcBundleValidationResults"]
      759 GETTABLEKS                       R79 R0 K201 ["setUGCBundleValidationResults"]
      761 SETTABLEKS                       R79 R78 K201 ["setUGCBundleValidationResults"]
      763 GETTABLEKS                       R79 R0 K202 ["setCurrentAssetType"]
      765 SETTABLEKS                       R79 R78 K202 ["setCurrentAssetType"]
      767 GETTABLEKS                       R79 R2 K88 ["instances"]
      769 SETTABLEKS                       R79 R78 K88 ["instances"]
      771 CALL                             R76 2 1
      772 JUMP                             ; [+1]
      773 LOADNIL                          R76
      774 SETTABLEKS                       R76 R75 K99 ["AssetTypeSelection"]
      776 JUMPIFNOT                        R45 ; [+36]
      777 JUMPIFNOT                        R40 ; [+35]
      778 GETUPVAL                         R77 8
      779 GETTABLEKS                       R76 R77 K92 ["createElement"]
      781 GETUPVAL                         R77 19
      782 DUPTABLE                         R78 K207 [{"LayoutOrder", "onDropDownSelect", "owner", "preselectedGroupId", "Title", "TotalHeight"}]
      783 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      785 CALL                             R79 1 1
      786 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      788 SETTABLEKS                       R26 R78 K205 ["onDropDownSelect"]
      790 SETTABLEKS                       R9 R78 K8 ["owner"]
      792 GETUPVAL                         R80 20
      793 CALL                             R80 0 1
      794 JUMPIFNOT                        R80 ; [+3]
      795 GETTABLEKS                       R79 R2 K206 ["preselectedGroupId"]
      797 JUMP                             ; [+1]
      798 LOADNIL                          R79
      799 SETTABLEKS                       R79 R78 K206 ["preselectedGroupId"]
      801 LOADK                            R81 K86 ["General"]
      802 LOADK                            R82 K104 ["Ownership"]
      803 NAMECALL                         R79 R61 K74 ["getText"]
      805 CALL                             R79 3 1
      806 SETTABLEKS                       R79 R78 K97 ["Title"]
      808 LOADN                            R79 70
      809 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
      811 CALL                             R76 2 1
      812 JUMP                             ; [+1]
      813 LOADNIL                          R76
      814 SETTABLEKS                       R76 R75 K100 ["Creator"]
      816 GETUPVAL                         R77 21
      817 CALL                             R77 0 1
      818 JUMPIFNOT                        R77 ; [+113]
      819 GETUPVAL                         R77 22
      820 CALL                             R77 0 1
      821 JUMPIFNOT                        R77 ; [+110]
      822 JUMPIFNOT                        R45 ; [+109]
      823 JUMPIFNOT                        R40 ; [+108]
      824 GETTABLEKS                       R77 R2 K208 ["showColorPicker"]
      826 JUMPIFNOT                        R77 ; [+105]
      827 GETUPVAL                         R77 8
      828 GETTABLEKS                       R76 R77 K92 ["createElement"]
      830 GETUPVAL                         R78 23
      831 GETTABLEKS                       R77 R78 K209 ["View"]
      833 DUPTABLE                         R78 K211 [{"tag", "Size", "LayoutOrder"}]
      834 LOADK                            R79 K212 ["row align-x-left align-y-top size-full-x"]
      835 SETTABLEKS                       R79 R78 K210 ["tag"]
      837 GETIMPORT                        R79 K142 [UDim2.new]
      839 LOADN                            R80 1
      840 LOADN                            R81 0
      841 LOADN                            R82 0
      842 LOADN                            R83 70
      843 CALL                             R79 4 1
      844 SETTABLEKS                       R79 R78 K2 ["Size"]
      846 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      848 CALL                             R79 1 1
      849 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      851 DUPTABLE                         R79 K214 [{"Title", "ColorPickerButton"}]
      852 GETUPVAL                         R81 24
      853 GETTABLEKS                       R80 R81 K92 ["createElement"]
      855 GETUPVAL                         R82 23
      856 GETTABLEKS                       R81 R82 K161 ["Text"]
      858 DUPTABLE                         R82 K215 [{"tag", "Text", "Size", "LayoutOrder"}]
      859 NEWTABLE                         R83 4 0
      861 LOADB                            R84 1
      862 SETTABLEKS                       R84 R83 K216 ["text-align-y-top text-align-x-left"]
      864 GETUPVAL                         R84 25
      865 CALL                             R84 0 1
      866 SETTABLEKS                       R84 R83 K217 ["text-title-small bold content-emphasis"]
      868 GETUPVAL                         R85 25
      869 CALL                             R85 0 1
      870 NOT                              R84 R85
      871 SETTABLEKS                       R84 R83 K218 ["text-body-large"]
      873 SETTABLEKS                       R83 R82 K210 ["tag"]
      875 LOADK                            R85 K86 ["General"]
      876 LOADK                            R86 K219 ["ThumbnailSkinTone"]
      877 NAMECALL                         R83 R61 K74 ["getText"]
      879 CALL                             R83 3 1
      880 SETTABLEKS                       R83 R82 K161 ["Text"]
      882 GETIMPORT                        R83 K142 [UDim2.new]
      884 LOADN                            R84 0
      885 GETUPVAL                         R86 0
      886 GETTABLEKS                       R85 R86 K220 ["TITLE_GUTTER_WIDTH"]
      888 LOADN                            R86 1
      889 LOADN                            R87 0
      890 CALL                             R83 4 1
      891 SETTABLEKS                       R83 R82 K2 ["Size"]
      893 LOADN                            R83 1
      894 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      896 CALL                             R80 2 1
      897 SETTABLEKS                       R80 R79 K97 ["Title"]
      899 GETUPVAL                         R81 8
      900 GETTABLEKS                       R80 R81 K92 ["createElement"]
      902 GETUPVAL                         R81 26
      903 DUPTABLE                         R82 K224 [{"selectedColor", "setSelectedColor", "Localization", "showRequiredError", "LayoutOrder", "textColor"}]
      904 GETTABLEKS                       R83 R2 K221 ["selectedColor"]
      906 SETTABLEKS                       R83 R82 K221 ["selectedColor"]
      908 GETTABLEKS                       R83 R2 K222 ["setSelectedColor"]
      910 SETTABLEKS                       R83 R82 K222 ["setSelectedColor"]
      912 SETTABLEKS                       R61 R82 K71 ["Localization"]
      914 GETTABLEKS                       R83 R2 K225 ["showColorPickerRequiredError"]
      916 SETTABLEKS                       R83 R82 K182 ["showRequiredError"]
      918 LOADN                            R83 2
      919 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      921 GETTABLEKS                       R84 R1 K78 ["publishAsset"]
      923 GETTABLEKS                       R83 R84 K226 ["titleTextColor"]
      925 SETTABLEKS                       R83 R82 K223 ["textColor"]
      927 CALL                             R80 2 1
      928 SETTABLEKS                       R80 R79 K213 ["ColorPickerButton"]
      930 CALL                             R76 3 1
      931 JUMP                             ; [+1]
      932 LOADNIL                          R76
      933 SETTABLEKS                       R76 R75 K101 ["ColorPickerRow"]
      935 JUMPIFNOT                        R68 ; [+181]
      936 GETUPVAL                         R77 8
      937 GETTABLEKS                       R76 R77 K92 ["createElement"]
      939 GETUPVAL                         R77 27
      940 DUPTABLE                         R78 K227 [{"AutomaticSize", "LayoutOrder", "Title"}]
      941 GETIMPORT                        R79 K169 [Enum.AutomaticSize.XY]
      943 SETTABLEKS                       R79 R78 K159 ["AutomaticSize"]
      945 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      947 CALL                             R79 1 1
      948 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      950 SETTABLEKS                       R69 R78 K97 ["Title"]
      952 DUPTABLE                         R79 K229 [{"ValidationPane"}]
      953 GETUPVAL                         R81 8
      954 GETTABLEKS                       R80 R81 K92 ["createElement"]
      956 GETUPVAL                         R81 12
      957 DUPTABLE                         R82 K230 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      958 GETIMPORT                        R83 K232 [Enum.AutomaticSize.Y]
      960 SETTABLEKS                       R83 R82 K159 ["AutomaticSize"]
      962 GETIMPORT                        R83 K122 [Enum.FillDirection.Vertical]
      964 SETTABLEKS                       R83 R82 K135 ["Layout"]
      966 LOADN                            R83 1
      967 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      969 GETIMPORT                        R83 K234 [UDim2.fromScale]
      971 LOADN                            R84 1
      972 LOADN                            R85 0
      973 CALL                             R83 2 1
      974 SETTABLEKS                       R83 R82 K2 ["Size"]
      976 LOADN                            R83 18
      977 SETTABLEKS                       R83 R82 K136 ["Spacing"]
      979 DUPTABLE                         R83 K145 [{"Bottom"}]
      980 LOADN                            R84 24
      981 SETTABLEKS                       R84 R83 K144 ["Bottom"]
      983 SETTABLEKS                       R83 R82 K93 ["Padding"]
      985 DUPTABLE                         R83 K238 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      986 GETUPVAL                         R85 8
      987 GETTABLEKS                       R84 R85 K92 ["createElement"]
      989 GETUPVAL                         R85 28
      990 DUPTABLE                         R86 K242 [{"LayoutOrder", "isUGCBodyBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
      991 LOADN                            R87 1
      992 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
      994 GETUPVAL                         R88 1
      995 GETTABLEKS                       R87 R88 K239 ["isUGCBodyBundleType"]
      997 MOVE                             R88 R14
      998 CALL                             R87 1 1
      999 SETTABLEKS                       R87 R86 K239 ["isUGCBodyBundleType"]
     1001 GETTABLEKS                       R88 R0 K204 ["state"]
     1003 GETTABLEKS                       R87 R88 K196 ["validationState"]
     1005 SETTABLEKS                       R87 R86 K196 ["validationState"]
     1007 GETTABLEKS                       R87 R0 K198 ["setValidationState"]
     1009 SETTABLEKS                       R87 R86 K198 ["setValidationState"]
     1011 GETTABLEKS                       R88 R0 K204 ["state"]
     1013 GETTABLEKS                       R87 R88 K197 ["validationFailureReasons"]
     1015 SETTABLEKS                       R87 R86 K197 ["validationFailureReasons"]
     1017 GETTABLEKS                       R87 R0 K199 ["setValidationFailureReasons"]
     1019 SETTABLEKS                       R87 R86 K199 ["setValidationFailureReasons"]
     1021 GETTABLEKS                       R88 R0 K204 ["state"]
     1023 GETTABLEKS                       R87 R88 K200 ["ugcBundleValidationResults"]
     1025 SETTABLEKS                       R87 R86 K240 ["validationResults"]
     1027 GETTABLEKS                       R87 R0 K201 ["setUGCBundleValidationResults"]
     1029 SETTABLEKS                       R87 R86 K201 ["setUGCBundleValidationResults"]
     1031 GETTABLEKS                       R88 R0 K204 ["state"]
     1033 GETTABLEKS                       R87 R88 K243 ["currentAssetType"]
     1035 SETTABLEKS                       R87 R86 K13 ["assetTypeEnum"]
     1037 GETTABLEKS                       R87 R2 K88 ["instances"]
     1039 SETTABLEKS                       R87 R86 K88 ["instances"]
     1041 GETTABLEKS                       R87 R2 K89 ["allowedBundleTypeSettings"]
     1043 SETTABLEKS                       R87 R86 K89 ["allowedBundleTypeSettings"]
     1045 GETTABLEKS                       R87 R2 K241 ["onAssetValidationResultChanged"]
     1047 SETTABLEKS                       R87 R86 K241 ["onAssetValidationResultChanged"]
     1049 CALL                             R84 2 1
     1050 SETTABLEKS                       R84 R83 K235 ["UGCBundleValidation"]
     1052 JUMPIFNOT                        R70 ; [+26]
     1053 GETUPVAL                         R85 8
     1054 GETTABLEKS                       R84 R85 K92 ["createElement"]
     1056 GETUPVAL                         R85 12
     1057 DUPTABLE                         R86 K244 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1058 GETIMPORT                        R87 K232 [Enum.AutomaticSize.Y]
     1060 SETTABLEKS                       R87 R86 K159 ["AutomaticSize"]
     1062 GETIMPORT                        R87 K122 [Enum.FillDirection.Vertical]
     1064 SETTABLEKS                       R87 R86 K135 ["Layout"]
     1066 LOADN                            R87 2
     1067 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1069 GETIMPORT                        R87 K234 [UDim2.fromScale]
     1071 LOADN                            R88 1
     1072 LOADN                            R89 0
     1073 CALL                             R87 2 1
     1074 SETTABLEKS                       R87 R86 K2 ["Size"]
     1076 MOVE                             R87 R70
     1077 CALL                             R84 3 1
     1078 JUMP                             ; [+1]
     1079 LOADNIL                          R84
     1080 SETTABLEKS                       R84 R83 K236 ["MissingOptionalAccessoriesMsg"]
     1082 JUMPIFNOT                        R71 ; [+26]
     1083 GETUPVAL                         R85 8
     1084 GETTABLEKS                       R84 R85 K92 ["createElement"]
     1086 GETUPVAL                         R85 12
     1087 DUPTABLE                         R86 K244 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1088 GETIMPORT                        R87 K232 [Enum.AutomaticSize.Y]
     1090 SETTABLEKS                       R87 R86 K159 ["AutomaticSize"]
     1092 GETIMPORT                        R87 K122 [Enum.FillDirection.Vertical]
     1094 SETTABLEKS                       R87 R86 K135 ["Layout"]
     1096 LOADN                            R87 3
     1097 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1099 GETIMPORT                        R87 K234 [UDim2.fromScale]
     1101 LOADN                            R88 1
     1102 LOADN                            R89 0
     1103 CALL                             R87 2 1
     1104 SETTABLEKS                       R87 R86 K2 ["Size"]
     1106 MOVE                             R87 R71
     1107 CALL                             R84 3 1
     1108 JUMP                             ; [+1]
     1109 LOADNIL                          R84
     1110 SETTABLEKS                       R84 R83 K237 ["UnknownMeshPartsMsgChildren"]
     1112 CALL                             R80 3 1
     1113 SETTABLEKS                       R80 R79 K228 ["ValidationPane"]
     1115 CALL                             R76 3 1
     1116 JUMP                             ; [+1]
     1117 LOADNIL                          R76
     1118 SETTABLEKS                       R76 R75 K102 ["ContentTypeBodyValidation"]
     1120 GETTABLEKS                       R77 R2 K193 ["dataSharingEnabled"]
     1122 JUMPIFNOT                        R77 ; [+32]
     1123 GETUPVAL                         R78 1
     1124 GETTABLEKS                       R77 R78 K85 ["isUGCBundleType"]
     1126 MOVE                             R78 R14
     1127 CALL                             R77 1 1
     1128 JUMPIF                           R77 ; [+6]
     1129 GETUPVAL                         R78 1
     1130 GETTABLEKS                       R77 R78 K245 ["isCatalogAsset"]
     1132 MOVE                             R78 R14
     1133 CALL                             R77 1 1
     1134 JUMPIFNOT                        R77 ; [+20]
     1135 GETUPVAL                         R77 8
     1136 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1138 GETUPVAL                         R77 29
     1139 DUPTABLE                         R78 K246 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1140 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1142 CALL                             R79 1 1
     1143 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1145 GETTABLEKS                       R79 R2 K194 ["dataSharingToggled"]
     1147 SETTABLEKS                       R79 R78 K194 ["dataSharingToggled"]
     1149 GETTABLEKS                       R79 R2 K195 ["onDataConsentToggleClick"]
     1151 SETTABLEKS                       R79 R78 K195 ["onDataConsentToggleClick"]
     1153 CALL                             R76 2 1
     1154 JUMP                             ; [+1]
     1155 LOADNIL                          R76
     1156 SETTABLEKS                       R76 R75 K103 ["DataSharingConsent"]
     1158 JUMPIF                           R45 ; [+36]
     1159 JUMPIFNOT                        R40 ; [+35]
     1160 GETUPVAL                         R77 8
     1161 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1163 GETUPVAL                         R77 19
     1164 DUPTABLE                         R78 K247 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "preselectedGroupId", "LayoutOrder"}]
     1165 LOADK                            R81 K86 ["General"]
     1166 LOADK                            R82 K104 ["Ownership"]
     1167 NAMECALL                         R79 R61 K74 ["getText"]
     1169 CALL                             R79 3 1
     1170 SETTABLEKS                       R79 R78 K97 ["Title"]
     1172 SETTABLEKS                       R9 R78 K8 ["owner"]
     1174 LOADN                            R79 70
     1175 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1177 SETTABLEKS                       R26 R78 K205 ["onDropDownSelect"]
     1179 GETUPVAL                         R80 20
     1180 CALL                             R80 0 1
     1181 JUMPIFNOT                        R80 ; [+3]
     1182 GETTABLEKS                       R79 R2 K206 ["preselectedGroupId"]
     1184 JUMP                             ; [+1]
     1185 LOADNIL                          R79
     1186 SETTABLEKS                       R79 R78 K206 ["preselectedGroupId"]
     1188 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1190 CALL                             R79 1 1
     1191 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1193 CALL                             R76 2 1
     1194 JUMP                             ; [+1]
     1195 LOADNIL                          R76
     1196 SETTABLEKS                       R76 R75 K104 ["Ownership"]
     1198 MOVE                             R76 R22
     1199 JUMPIFNOT                        R76 ; [+41]
     1200 GETUPVAL                         R77 8
     1201 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1203 LOADK                            R77 K248 ["Frame"]
     1204 DUPTABLE                         R78 K249 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1205 LOADN                            R79 1
     1206 SETTABLEKS                       R79 R78 K150 ["BackgroundTransparency"]
     1208 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1210 CALL                             R79 1 1
     1211 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1213 GETIMPORT                        R79 K142 [UDim2.new]
     1215 LOADN                            R80 1
     1216 LOADN                            R81 0
     1217 LOADN                            R82 0
     1218 LOADN                            R83 20
     1219 CALL                             R79 4 1
     1220 SETTABLEKS                       R79 R78 K2 ["Size"]
     1222 DUPTABLE                         R79 K251 [{"Separator"}]
     1223 GETUPVAL                         R81 8
     1224 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1226 GETUPVAL                         R81 30
     1227 DUPTABLE                         R82 K253 [{"Position"}]
     1228 GETIMPORT                        R83 K142 [UDim2.new]
     1230 LOADK                            R84 K254 [0.5]
     1231 LOADN                            R85 0
     1232 LOADK                            R86 K254 [0.5]
     1233 LOADN                            R87 0
     1234 CALL                             R83 4 1
     1235 SETTABLEKS                       R83 R82 K252 ["Position"]
     1237 CALL                             R80 2 1
     1238 SETTABLEKS                       R80 R79 K250 ["Separator"]
     1240 CALL                             R76 3 1
     1241 SETTABLEKS                       R76 R75 K105 ["DividerBase"]
     1243 JUMPIFNOT                        R44 ; [+24]
     1244 GETUPVAL                         R77 8
     1245 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1247 GETUPVAL                         R77 31
     1248 DUPTABLE                         R78 K259 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1249 GETTABLEKS                       R79 R2 K30 ["assetId"]
     1251 SETTABLEKS                       R79 R78 K255 ["AssetId"]
     1253 SETTABLEKS                       R14 R78 K18 ["AssetType"]
     1255 SETTABLEKS                       R6 R78 K256 ["AllowSelectPrivate"]
     1257 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1259 CALL                             R79 1 1
     1260 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1262 SETTABLEKS                       R15 R78 K257 ["IsAssetPublic"]
     1264 SETTABLEKS                       R28 R78 K258 ["OnSelected"]
     1266 CALL                             R76 2 1
     1267 JUMP                             ; [+1]
     1268 LOADNIL                          R76
     1269 SETTABLEKS                       R76 R75 K106 ["Sharing"]
     1271 JUMPIFNOT                        R44 ; [+42]
     1272 GETUPVAL                         R77 8
     1273 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1275 LOADK                            R77 K248 ["Frame"]
     1276 DUPTABLE                         R78 K249 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1277 LOADN                            R79 1
     1278 SETTABLEKS                       R79 R78 K150 ["BackgroundTransparency"]
     1280 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1282 CALL                             R79 1 1
     1283 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1285 GETIMPORT                        R79 K142 [UDim2.new]
     1287 LOADN                            R80 1
     1288 LOADN                            R81 0
     1289 LOADN                            R82 0
     1290 LOADN                            R83 20
     1291 CALL                             R79 4 1
     1292 SETTABLEKS                       R79 R78 K2 ["Size"]
     1294 DUPTABLE                         R79 K251 [{"Separator"}]
     1295 GETUPVAL                         R81 8
     1296 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1298 GETUPVAL                         R81 30
     1299 DUPTABLE                         R82 K253 [{"Position"}]
     1300 GETIMPORT                        R83 K142 [UDim2.new]
     1302 LOADK                            R84 K254 [0.5]
     1303 LOADN                            R85 0
     1304 LOADK                            R86 K254 [0.5]
     1305 LOADN                            R87 0
     1306 CALL                             R83 4 1
     1307 SETTABLEKS                       R83 R82 K252 ["Position"]
     1309 CALL                             R80 2 1
     1310 SETTABLEKS                       R80 R79 K250 ["Separator"]
     1312 CALL                             R76 3 1
     1313 JUMP                             ; [+1]
     1314 LOADNIL                          R76
     1315 SETTABLEKS                       R76 R75 K107 ["SharingDivider"]
     1317 JUMPIFNOT                        R22 ; [+109]
     1318 GETUPVAL                         R77 8
     1319 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1321 GETUPVAL                         R77 12
     1322 DUPTABLE                         R78 K260 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1323 GETIMPORT                        R79 K232 [Enum.AutomaticSize.Y]
     1325 SETTABLEKS                       R79 R78 K159 ["AutomaticSize"]
     1327 GETIMPORT                        R79 K122 [Enum.FillDirection.Vertical]
     1329 SETTABLEKS                       R79 R78 K135 ["Layout"]
     1331 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1333 CALL                             R79 1 1
     1334 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1336 DUPTABLE                         R79 K261 [{"Top"}]
     1337 LOADN                            R80 20
     1338 SETTABLEKS                       R80 R79 K127 ["Top"]
     1340 SETTABLEKS                       R79 R78 K93 ["Padding"]
     1342 DUPTABLE                         R79 K264 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1343 GETUPVAL                         R81 8
     1344 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1346 GETUPVAL                         R81 32
     1347 DUPTABLE                         R82 K265 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder"}]
     1348 GETTABLEKS                       R83 R2 K71 ["Localization"]
     1350 LOADK                            R85 K10 ["allowComment"]
     1351 LOADK                            R86 K11 ["commentOn"]
     1352 NAMECALL                         R83 R83 K74 ["getText"]
     1354 CALL                             R83 3 1
     1355 SETTABLEKS                       R83 R82 K161 ["Text"]
     1357 GETTABLEKS                       R84 R1 K268 ["uploadResult"]
     1359 GETTABLEKS                       R83 R84 K269 ["text"]
     1361 SETTABLEKS                       R83 R82 K163 ["TextColor3"]
     1363 GETUPVAL                         R84 13
     1364 GETTABLEKS                       R83 R84 K270 ["FONT_SIZE_LARGE"]
     1366 SETTABLEKS                       R83 R82 K166 ["TextSize"]
     1368 GETIMPORT                        R83 K142 [UDim2.new]
     1370 LOADN                            R84 1
     1371 LOADN                            R85 0
     1372 LOADN                            R86 0
     1373 LOADN                            R87 24
     1374 CALL                             R83 4 1
     1375 SETTABLEKS                       R83 R82 K2 ["Size"]
     1377 NAMECALL                         R83 R62 K140 ["getNextOrder"]
     1379 CALL                             R83 1 1
     1380 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1382 CALL                             R80 2 1
     1383 SETTABLEKS                       R80 R79 K262 ["CreatorStoreConfigurationText"]
     1385 GETUPVAL                         R81 8
     1386 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1388 GETUPVAL                         R81 33
     1389 DUPTABLE                         R82 K272 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1390 SETTABLEKS                       R23 R82 K161 ["Text"]
     1392 GETTABLEKS                       R84 R1 K268 ["uploadResult"]
     1394 GETTABLEKS                       R83 R84 K273 ["link"]
     1396 SETTABLEKS                       R83 R82 K163 ["TextColor3"]
     1398 GETUPVAL                         R84 13
     1399 GETTABLEKS                       R83 R84 K270 ["FONT_SIZE_LARGE"]
     1401 SETTABLEKS                       R83 R82 K166 ["TextSize"]
     1403 GETIMPORT                        R83 K142 [UDim2.new]
     1405 LOADN                            R84 1
     1406 LOADN                            R85 0
     1407 LOADN                            R86 0
     1408 LOADN                            R87 24
     1409 CALL                             R83 4 1
     1410 SETTABLEKS                       R83 R82 K2 ["Size"]
     1412 NAMECALL                         R83 R62 K140 ["getNextOrder"]
     1414 CALL                             R83 1 1
     1415 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1417 NEWCLOSURE                       R83 P4
     1418 CAPTURE                          UPVAL U34
     1419 CAPTURE                          VAL R23
     1420 SETTABLEKS                       R83 R82 K271 ["OnClick"]
     1422 CALL                             R80 2 1
     1423 SETTABLEKS                       R80 R79 K263 ["CreatorStoreConfigurationLink"]
     1425 CALL                             R76 3 1
     1426 JUMP                             ; [+1]
     1427 LOADNIL                          R76
     1428 SETTABLEKS                       R76 R75 K108 ["CreatorStoreConfigurationFrame"]
     1430 MOVE                             R76 R42
     1431 JUMPIFNOT                        R76 ; [+27]
     1432 GETUPVAL                         R77 8
     1433 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1435 GETUPVAL                         R77 35
     1436 DUPTABLE                         R78 K277 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1437 LOADK                            R81 K86 ["General"]
     1438 LOADK                            R82 K22 [Enum.AssetType.Video]
     1439 NAMECALL                         R79 R61 K74 ["getText"]
     1441 CALL                             R79 3 1
     1442 SETTABLEKS                       R79 R78 K97 ["Title"]
     1444 LOADN                            R79 80
     1445 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1447 SETTABLEKS                       R11 R78 K274 ["CommentEnabled"]
     1449 SETTABLEKS                       R12 R78 K275 ["CommentOn"]
     1451 SETTABLEKS                       R30 R78 K276 ["ToggleCallback"]
     1453 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1455 CALL                             R79 1 1
     1456 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1458 CALL                             R76 2 1
     1459 SETTABLEKS                       R76 R75 K109 ["Comment"]
     1461 MOVE                             R76 R21
     1462 JUMPIFNOT                        R76 ; [+25]
     1463 GETUPVAL                         R77 8
     1464 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1466 GETUPVAL                         R77 36
     1467 DUPTABLE                         R78 K279 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1468 LOADK                            R81 K86 ["General"]
     1469 LOADK                            R82 K110 ["DeleteLocal"]
     1470 NAMECALL                         R79 R61 K74 ["getText"]
     1472 CALL                             R79 3 1
     1473 SETTABLEKS                       R79 R78 K97 ["Title"]
     1475 LOADN                            R79 80
     1476 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1478 SETTABLEKS                       R13 R78 K110 ["DeleteLocal"]
     1480 SETTABLEKS                       R31 R78 K276 ["ToggleCallback"]
     1482 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1484 CALL                             R79 1 1
     1485 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1487 CALL                             R76 2 1
     1488 SETTABLEKS                       R76 R75 K110 ["DeleteLocal"]
     1490 CALL                             R72 3 -1
     1491 RETURN                           R72 -1

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
       85 GETTABLEKS                       R13 R3 K22 ["React"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K11 [require]
       90 GETTABLEKS                       R14 R3 K23 ["Roact"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K11 [require]
       95 GETTABLEKS                       R15 R3 K24 ["RoactRodux"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R16 K11 [require]
      100 GETTABLEKS                       R17 R3 K13 ["Framework"]
      102 CALL                             R16 1 1
      103 GETTABLEKS                       R15 R16 K25 ["ContextServices"]
      105 GETTABLEKS                       R16 R15 K26 ["withContext"]
      107 GETTABLEKS                       R17 R5 K27 ["UI"]
      109 GETTABLEKS                       R18 R17 K28 ["MultiImagePickerWrapper"]
      111 GETTABLEKS                       R19 R17 K29 ["TextLabel"]
      113 GETTABLEKS                       R20 R17 K30 ["TitledFrame"]
      115 GETTABLEKS                       R21 R17 K31 ["BulletList"]
      117 GETTABLEKS                       R22 R17 K32 ["LinkText"]
      119 GETTABLEKS                       R23 R17 K33 ["Pane"]
      121 GETTABLEKS                       R24 R17 K34 ["Separator"]
      123 GETIMPORT                        R25 K11 [require]
      125 GETTABLEKS                       R28 R1 K7 ["Src"]
      127 GETTABLEKS                       R27 R28 K35 ["Components"]
      129 GETTABLEKS                       R26 R27 K36 ["StyledScrollingFrame"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K11 [require]
      134 GETTABLEKS                       R27 R3 K37 ["Dash"]
      136 CALL                             R26 1 1
      137 GETTABLEKS                       R27 R26 K38 ["map"]
      139 GETIMPORT                        R28 K11 [require]
      141 GETTABLEKS                       R29 R2 K39 ["createAssetMediaMetadata"]
      143 CALL                             R28 1 1
      144 GETIMPORT                        R29 K11 [require]
      146 GETTABLEKS                       R30 R2 K40 ["LayoutOrderIterator"]
      148 CALL                             R29 1 1
      149 GETIMPORT                        R30 K11 [require]
      151 GETTABLEKS                       R31 R2 K41 ["AssetConfigConstants"]
      153 CALL                             R30 1 1
      154 GETIMPORT                        R31 K11 [require]
      156 GETTABLEKS                       R32 R2 K42 ["AssetConfigUtil"]
      158 CALL                             R31 1 1
      159 GETIMPORT                        R32 K11 [require]
      161 GETTABLEKS                       R33 R2 K43 ["Constants"]
      163 CALL                             R32 1 1
      164 GETIMPORT                        R33 K11 [require]
      166 GETTABLEKS                       R36 R1 K7 ["Src"]
      168 GETTABLEKS                       R35 R36 K8 ["Util"]
      170 GETTABLEKS                       R34 R35 K44 ["Images"]
      172 CALL                             R33 1 1
      173 GETIMPORT                        R34 K11 [require]
      175 GETTABLEKS                       R37 R1 K7 ["Src"]
      177 GETTABLEKS                       R36 R37 K45 ["Localization"]
      179 GETTABLEKS                       R35 R36 K46 ["getLocalizedAssetTextMap"]
      181 CALL                             R34 1 1
      182 GETIMPORT                        R35 K11 [require]
      184 GETTABLEKS                       R36 R2 K47 ["ToolboxUtilities"]
      186 CALL                             R35 1 1
      187 GETIMPORT                        R36 K11 [require]
      189 GETTABLEKS                       R37 R2 K48 ["FiatTempConstants"]
      191 CALL                             R36 1 1
      192 GETIMPORT                        R37 K11 [require]
      194 GETTABLEKS                       R38 R2 K49 ["Urls"]
      196 CALL                             R37 1 1
      197 GETTABLEKS                       R40 R1 K7 ["Src"]
      199 GETTABLEKS                       R39 R40 K35 ["Components"]
      201 GETTABLEKS                       R38 R39 K50 ["AssetConfiguration"]
      203 GETIMPORT                        R39 K11 [require]
      205 GETTABLEKS                       R42 R1 K7 ["Src"]
      207 GETTABLEKS                       R41 R42 K51 ["Actions"]
      209 GETTABLEKS                       R40 R41 K52 ["SetUploadAssetValidationStatus"]
      211 CALL                             R39 1 1
      212 GETIMPORT                        R40 K11 [require]
      214 GETTABLEKS                       R41 R38 K53 ["ConfigTextField"]
      216 CALL                             R40 1 1
      217 GETIMPORT                        R41 K11 [require]
      219 GETTABLEKS                       R42 R38 K54 ["ConfigAccess"]
      221 CALL                             R41 1 1
      222 GETIMPORT                        R42 K11 [require]
      224 GETTABLEKS                       R43 R38 K55 ["ConfigDeleteLocal"]
      226 CALL                             R42 1 1
      227 GETIMPORT                        R43 K11 [require]
      229 GETTABLEKS                       R44 R38 K56 ["ConfigCopy"]
      231 CALL                             R43 1 1
      232 GETIMPORT                        R44 K11 [require]
      234 GETTABLEKS                       R45 R38 K57 ["ConfigAssetType"]
      236 CALL                             R44 1 1
      237 GETIMPORT                        R45 K11 [require]
      239 GETTABLEKS                       R46 R38 K58 ["ConfigComment"]
      241 CALL                             R45 1 1
      242 GETIMPORT                        R46 K11 [require]
      244 GETTABLEKS                       R47 R38 K59 ["ConfigSharing"]
      246 CALL                             R46 1 1
      247 GETIMPORT                        R47 K11 [require]
      249 GETTABLEKS                       R48 R38 K60 ["ConfigSectionWrapper"]
      251 CALL                             R47 1 1
      252 GETIMPORT                        R48 K11 [require]
      254 GETTABLEKS                       R49 R38 K61 ["Header"]
      256 CALL                             R48 1 1
      257 GETIMPORT                        R49 K11 [require]
      259 GETTABLEKS                       R50 R38 K62 ["FiatPriceComponent"]
      261 CALL                             R49 1 1
      262 GETIMPORT                        R50 K11 [require]
      264 GETTABLEKS                       R51 R38 K63 ["DataConsentToggle"]
      266 CALL                             R50 1 1
      267 GETIMPORT                        R51 K11 [require]
      269 GETTABLEKS                       R52 R38 K64 ["UGCBundleValidation"]
      271 CALL                             R51 1 1
      272 GETIMPORT                        R52 K11 [require]
      274 GETTABLEKS                       R55 R1 K7 ["Src"]
      276 GETTABLEKS                       R54 R55 K8 ["Util"]
      278 GETTABLEKS                       R53 R54 K65 ["ColorPicker"]
      280 CALL                             R52 1 1
      281 GETIMPORT                        R53 K11 [require]
      283 GETTABLEKS                       R56 R1 K7 ["Src"]
      285 GETTABLEKS                       R55 R56 K66 ["Flags"]
      287 GETTABLEKS                       R54 R55 K67 ["getFFlagEnableUploadingMakeup"]
      289 CALL                             R53 1 1
      290 GETIMPORT                        R54 K11 [require]
      292 GETTABLEKS                       R57 R1 K7 ["Src"]
      294 GETTABLEKS                       R56 R57 K66 ["Flags"]
      296 GETTABLEKS                       R55 R56 K68 ["getFFlagToolboxMigrateFoundation"]
      298 CALL                             R54 1 1
      299 GETIMPORT                        R55 K11 [require]
      301 GETTABLEKS                       R58 R1 K7 ["Src"]
      303 GETTABLEKS                       R57 R58 K66 ["Flags"]
      305 GETTABLEKS                       R56 R57 K69 ["getFFlagToolboxAssetConfigGroupOwnership"]
      307 CALL                             R55 1 1
      308 GETIMPORT                        R56 K11 [require]
      310 GETTABLEKS                       R59 R1 K7 ["Src"]
      312 GETTABLEKS                       R58 R59 K66 ["Flags"]
      314 GETTABLEKS                       R57 R58 K70 ["getFFlagToolboxAssetConfigFoundationMigration"]
      316 CALL                             R56 1 1
      317 GETIMPORT                        R57 K11 [require]
      319 GETTABLEKS                       R60 R1 K7 ["Src"]
      321 GETTABLEKS                       R59 R60 K66 ["Flags"]
      323 GETTABLEKS                       R58 R59 K71 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      325 CALL                             R57 1 1
      326 GETIMPORT                        R58 K11 [require]
      328 GETTABLEKS                       R61 R1 K7 ["Src"]
      330 GETTABLEKS                       R60 R61 K72 ["Types"]
      332 GETTABLEKS                       R59 R60 K73 ["MarketplaceFiatServiceTypes"]
      334 CALL                             R58 1 1
      335 GETIMPORT                        R59 K11 [require]
      337 GETTABLEKS                       R62 R1 K7 ["Src"]
      339 GETTABLEKS                       R61 R62 K51 ["Actions"]
      341 GETTABLEKS                       R60 R61 K74 ["SetFieldError"]
      343 CALL                             R59 1 1
      344 GETIMPORT                        R60 K11 [require]
      346 GETTABLEKS                       R63 R1 K7 ["Src"]
      348 GETTABLEKS                       R62 R63 K8 ["Util"]
      350 GETTABLEKS                       R61 R62 K75 ["PageInfoHelper"]
      352 CALL                             R60 1 1
      353 GETTABLEKS                       R61 R13 K76 ["PureComponent"]
      355 LOADK                            R63 K77 ["PublishAsset"]
      356 NAMECALL                         R61 R61 K78 ["extend"]
      358 CALL                             R61 2 1
      359 DUPCLOSURE                       R62 K79 [PROTO_9]
      360 CAPTURE                          VAL R30
      361 CAPTURE                          VAL R13
      362 CAPTURE                          VAL R0
      363 CAPTURE                          VAL R35
      364 CAPTURE                          VAL R10
      365 SETTABLEKS                       R62 R61 K80 ["init"]
      367 DUPCLOSURE                       R62 K81 [PROTO_10]
      368 SETTABLEKS                       R62 R61 K82 ["bumpCanvas"]
      370 DUPCLOSURE                       R62 K83 [PROTO_11]
      371 CAPTURE                          VAL R31
      372 CAPTURE                          VAL R29
      373 CAPTURE                          VAL R13
      374 CAPTURE                          VAL R19
      375 CAPTURE                          VAL R32
      376 CAPTURE                          VAL R34
      377 SETTABLEKS                       R62 R61 K84 ["getMissingOptionalPartsMessage"]
      379 DUPCLOSURE                       R62 K85 [PROTO_12]
      380 CAPTURE                          VAL R31
      381 CAPTURE                          VAL R29
      382 CAPTURE                          VAL R13
      383 CAPTURE                          VAL R19
      384 CAPTURE                          VAL R32
      385 SETTABLEKS                       R62 R61 K86 ["getUnknownMeshPartMessage"]
      387 DUPCLOSURE                       R62 K87 [PROTO_18]
      388 CAPTURE                          VAL R30
      389 CAPTURE                          VAL R31
      390 CAPTURE                          VAL R37
      391 CAPTURE                          VAL R35
      392 CAPTURE                          VAL R7
      393 CAPTURE                          VAL R11
      394 CAPTURE                          VAL R8
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R13
      397 CAPTURE                          VAL R27
      398 CAPTURE                          VAL R28
      399 CAPTURE                          VAL R25
      400 CAPTURE                          VAL R23
      401 CAPTURE                          VAL R32
      402 CAPTURE                          VAL R33
      403 CAPTURE                          VAL R48
      404 CAPTURE                          VAL R40
      405 CAPTURE                          VAL R57
      406 CAPTURE                          VAL R44
      407 CAPTURE                          VAL R41
      408 CAPTURE                          VAL R55
      409 CAPTURE                          VAL R53
      410 CAPTURE                          VAL R54
      411 CAPTURE                          VAL R6
      412 CAPTURE                          VAL R12
      413 CAPTURE                          VAL R56
      414 CAPTURE                          VAL R52
      415 CAPTURE                          VAL R47
      416 CAPTURE                          VAL R51
      417 CAPTURE                          VAL R50
      418 CAPTURE                          VAL R24
      419 CAPTURE                          VAL R46
      420 CAPTURE                          VAL R19
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R0
      423 CAPTURE                          VAL R45
      424 CAPTURE                          VAL R42
      425 SETTABLEKS                       R62 R61 K88 ["render"]
      427 DUPCLOSURE                       R62 K89 [PROTO_19]
      428 CAPTURE                          VAL R10
      429 DUPCLOSURE                       R63 K90 [PROTO_22]
      430 CAPTURE                          VAL R59
      431 CAPTURE                          VAL R30
      432 CAPTURE                          VAL R39
      433 MOVE                             R64 R16
      434 DUPTABLE                         R65 K92 [{"Localization", "Stylizer"}]
      435 GETTABLEKS                       R66 R15 K45 ["Localization"]
      437 SETTABLEKS                       R66 R65 K45 ["Localization"]
      439 GETTABLEKS                       R66 R15 K91 ["Stylizer"]
      441 SETTABLEKS                       R66 R65 K91 ["Stylizer"]
      443 CALL                             R64 1 1
      444 MOVE                             R65 R61
      445 CALL                             R64 1 1
      446 MOVE                             R61 R64
      447 GETTABLEKS                       R64 R14 K93 ["connect"]
      449 MOVE                             R65 R62
      450 MOVE                             R66 R63
      451 CALL                             R64 2 1
      452 MOVE                             R65 R61
      453 CALL                             R64 1 -1
      454 RETURN                           R64 -1
