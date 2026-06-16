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
        0 DUPTABLE                         R2 K5 [{"maxDropdownPosition", "validationState", "validationFailureReasons", "ugcBundleValidationResults", "currentAssetType"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["maxDropdownPosition"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K6 ["VALIDATION_STATE"]
        7 GETTABLEKS                       R3 R3 K7 ["NONE"]
        9 SETTABLEKS                       R3 R2 K1 ["validationState"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["validationFailureReasons"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["ugcBundleValidationResults"]
       19 GETTABLEKS                       R3 R1 K8 ["assetTypeEnum"]
       21 SETTABLEKS                       R3 R2 K4 ["currentAssetType"]
       23 SETTABLEKS                       R2 R0 K9 ["state"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K10 ["createRef"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R0 K11 ["baseFrameRef"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K10 ["createRef"]
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
       30 GETUPVAL                         R10 2
       31 CALL                             R10 0 1
       32 JUMPIFNOT                        R10 ; [+26]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K5 ["Text"]
       39 DUPTABLE                         R11 K8 [{"tag", "LayoutOrder", "Text"}]
       40 LOADK                            R12 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
       41 SETTABLEKS                       R12 R11 K6 ["tag"]
       43 NAMECALL                         R12 R8 K10 ["getNextOrder"]
       45 CALL                             R12 1 1
       46 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       48 GETTABLEKS                       R12 R5 K11 ["Localization"]
       50 LOADK                            R14 K12 ["AssetConfig"]
       51 LOADK                            R15 K13 ["UGCMissingOptionalPartsMessage"]
       52 NAMECALL                         R12 R12 K14 ["getText"]
       54 CALL                             R12 3 1
       55 SETTABLEKS                       R12 R11 K5 ["Text"]
       57 CALL                             R9 2 1
       58 JUMP                             ; [+61]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R9 R9 K4 ["createElement"]
       62 GETUPVAL                         R10 6
       63 DUPTABLE                         R11 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       64 GETIMPORT                        R12 K27 [Enum.AutomaticSize.Y]
       66 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       68 LOADN                            R12 1
       69 SETTABLEKS                       R12 R11 K16 ["BackgroundTransparency"]
       71 GETUPVAL                         R12 7
       72 GETTABLEKS                       R12 R12 K28 ["FONT"]
       74 SETTABLEKS                       R12 R11 K17 ["Font"]
       76 NAMECALL                         R12 R8 K10 ["getNextOrder"]
       78 CALL                             R12 1 1
       79 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       81 GETIMPORT                        R12 K31 [UDim2.fromScale]
       83 LOADN                            R13 1
       84 LOADN                            R14 0
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K18 ["Size"]
       88 GETTABLEKS                       R12 R5 K11 ["Localization"]
       90 LOADK                            R14 K12 ["AssetConfig"]
       91 LOADK                            R15 K13 ["UGCMissingOptionalPartsMessage"]
       92 NAMECALL                         R12 R12 K14 ["getText"]
       94 CALL                             R12 3 1
       95 SETTABLEKS                       R12 R11 K5 ["Text"]
       97 GETTABLEKS                       R12 R4 K32 ["assetConfig"]
       99 GETTABLEKS                       R12 R12 K33 ["labelTextColor"]
      101 SETTABLEKS                       R12 R11 K19 ["TextColor"]
      103 GETUPVAL                         R12 7
      104 GETTABLEKS                       R12 R12 K34 ["FONT_SIZE_TITLE"]
      106 SETTABLEKS                       R12 R11 K20 ["TextSize"]
      108 LOADB                            R12 1
      109 SETTABLEKS                       R12 R11 K21 ["TextWrapped"]
      111 GETIMPORT                        R12 K36 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R12 R11 K22 ["TextXAlignment"]
      115 GETIMPORT                        R12 K38 [Enum.TextYAlignment.Center]
      117 SETTABLEKS                       R12 R11 K23 ["TextYAlignment"]
      119 CALL                             R9 2 1
      120 SETTABLEKS                       R9 R7 K39 ["OptionalPartsMessage"]
      122 MOVE                             R9 R6
      123 LOADNIL                          R10
      124 LOADNIL                          R11
      125 FORGPREP                         R9
      126 GETUPVAL                         R15 8
      127 GETTABLEKS                       R16 R5 K11 ["Localization"]
      129 CALL                             R15 1 1
      130 GETTABLE                         R14 R15 R13
      131 JUMPIFEQKNIL                     R14 ; [+80]
      133 GETTABLEKS                       R15 R13 K40 ["Name"]
      135 GETUPVAL                         R17 2
      136 CALL                             R17 0 1
      137 JUMPIFNOT                        R17 ; [+19]
      138 GETUPVAL                         R16 3
      139 GETTABLEKS                       R16 R16 K4 ["createElement"]
      141 GETUPVAL                         R17 4
      142 GETTABLEKS                       R17 R17 K5 ["Text"]
      144 DUPTABLE                         R18 K8 [{"tag", "LayoutOrder", "Text"}]
      145 LOADK                            R19 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
      146 SETTABLEKS                       R19 R18 K6 ["tag"]
      148 NAMECALL                         R19 R8 K10 ["getNextOrder"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      153 SETTABLEKS                       R14 R18 K5 ["Text"]
      155 CALL                             R16 2 1
      156 JUMP                             ; [+54]
      157 GETUPVAL                         R16 5
      158 GETTABLEKS                       R16 R16 K4 ["createElement"]
      160 GETUPVAL                         R17 6
      161 DUPTABLE                         R18 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      162 GETIMPORT                        R19 K27 [Enum.AutomaticSize.Y]
      164 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
      166 LOADN                            R19 1
      167 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      169 GETUPVAL                         R19 7
      170 GETTABLEKS                       R19 R19 K28 ["FONT"]
      172 SETTABLEKS                       R19 R18 K17 ["Font"]
      174 NAMECALL                         R19 R8 K10 ["getNextOrder"]
      176 CALL                             R19 1 1
      177 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      179 GETIMPORT                        R19 K31 [UDim2.fromScale]
      181 LOADN                            R20 1
      182 LOADN                            R21 0
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K18 ["Size"]
      186 SETTABLEKS                       R14 R18 K5 ["Text"]
      188 GETTABLEKS                       R19 R4 K32 ["assetConfig"]
      190 GETTABLEKS                       R19 R19 K33 ["labelTextColor"]
      192 SETTABLEKS                       R19 R18 K19 ["TextColor"]
      194 GETUPVAL                         R19 7
      195 GETTABLEKS                       R19 R19 K34 ["FONT_SIZE_TITLE"]
      197 SETTABLEKS                       R19 R18 K20 ["TextSize"]
      199 LOADB                            R19 1
      200 SETTABLEKS                       R19 R18 K21 ["TextWrapped"]
      202 GETIMPORT                        R19 K36 [Enum.TextXAlignment.Left]
      204 SETTABLEKS                       R19 R18 K22 ["TextXAlignment"]
      206 GETIMPORT                        R19 K38 [Enum.TextYAlignment.Center]
      208 SETTABLEKS                       R19 R18 K23 ["TextYAlignment"]
      210 CALL                             R16 2 1
      211 SETTABLE                         R16 R7 R15
      212 FORGLOOP                         R9 2 ; [-87]
      214 RETURN                           R7 1

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
       28 GETUPVAL                         R9 2
       29 CALL                             R9 0 1
       30 JUMPIFNOT                        R9 ; [+26]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K4 ["createElement"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K5 ["Text"]
       37 DUPTABLE                         R10 K8 [{"tag", "LayoutOrder", "Text"}]
       38 LOADK                            R11 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
       39 SETTABLEKS                       R11 R10 K6 ["tag"]
       41 NAMECALL                         R11 R7 K10 ["getNextOrder"]
       43 CALL                             R11 1 1
       44 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       46 GETTABLEKS                       R11 R4 K11 ["Localization"]
       48 LOADK                            R13 K12 ["AssetConfig"]
       49 LOADK                            R14 K13 ["UGCUnknownMeshPartsMessage"]
       50 NAMECALL                         R11 R11 K14 ["getText"]
       52 CALL                             R11 3 1
       53 SETTABLEKS                       R11 R10 K5 ["Text"]
       55 CALL                             R8 2 1
       56 JUMP                             ; [+61]
       57 GETUPVAL                         R8 5
       58 GETTABLEKS                       R8 R8 K4 ["createElement"]
       60 GETUPVAL                         R9 6
       61 DUPTABLE                         R10 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       62 GETIMPORT                        R11 K27 [Enum.AutomaticSize.Y]
       64 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       66 LOADN                            R11 1
       67 SETTABLEKS                       R11 R10 K16 ["BackgroundTransparency"]
       69 GETUPVAL                         R11 7
       70 GETTABLEKS                       R11 R11 K28 ["FONT"]
       72 SETTABLEKS                       R11 R10 K17 ["Font"]
       74 NAMECALL                         R11 R7 K10 ["getNextOrder"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       79 GETIMPORT                        R11 K31 [UDim2.fromScale]
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K18 ["Size"]
       86 GETTABLEKS                       R11 R4 K11 ["Localization"]
       88 LOADK                            R13 K12 ["AssetConfig"]
       89 LOADK                            R14 K13 ["UGCUnknownMeshPartsMessage"]
       90 NAMECALL                         R11 R11 K14 ["getText"]
       92 CALL                             R11 3 1
       93 SETTABLEKS                       R11 R10 K5 ["Text"]
       95 GETTABLEKS                       R11 R3 K32 ["assetConfig"]
       97 GETTABLEKS                       R11 R11 K33 ["labelTextColor"]
       99 SETTABLEKS                       R11 R10 K19 ["TextColor"]
      101 GETUPVAL                         R11 7
      102 GETTABLEKS                       R11 R11 K34 ["FONT_SIZE_TITLE"]
      104 SETTABLEKS                       R11 R10 K20 ["TextSize"]
      106 LOADB                            R11 1
      107 SETTABLEKS                       R11 R10 K21 ["TextWrapped"]
      109 GETIMPORT                        R11 K36 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R11 R10 K22 ["TextXAlignment"]
      113 GETIMPORT                        R11 K38 [Enum.TextYAlignment.Center]
      115 SETTABLEKS                       R11 R10 K23 ["TextYAlignment"]
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R6 K39 ["OptionalPartsMessage"]
      120 MOVE                             R8 R5
      121 LOADNIL                          R9
      122 LOADNIL                          R10
      123 FORGPREP                         R8
      124 GETUPVAL                         R14 2
      125 CALL                             R14 0 1
      126 JUMPIFNOT                        R14 ; [+19]
      127 GETUPVAL                         R13 3
      128 GETTABLEKS                       R13 R13 K4 ["createElement"]
      130 GETUPVAL                         R14 4
      131 GETTABLEKS                       R14 R14 K5 ["Text"]
      133 DUPTABLE                         R15 K8 [{"tag", "LayoutOrder", "Text"}]
      134 LOADK                            R16 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
      135 SETTABLEKS                       R16 R15 K6 ["tag"]
      137 NAMECALL                         R16 R7 K10 ["getNextOrder"]
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      142 SETTABLEKS                       R12 R15 K5 ["Text"]
      144 CALL                             R13 2 1
      145 JUMP                             ; [+54]
      146 GETUPVAL                         R13 5
      147 GETTABLEKS                       R13 R13 K4 ["createElement"]
      149 GETUPVAL                         R14 6
      150 DUPTABLE                         R15 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      151 GETIMPORT                        R16 K27 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      155 LOADN                            R16 1
      156 SETTABLEKS                       R16 R15 K16 ["BackgroundTransparency"]
      158 GETUPVAL                         R16 7
      159 GETTABLEKS                       R16 R16 K28 ["FONT"]
      161 SETTABLEKS                       R16 R15 K17 ["Font"]
      163 NAMECALL                         R16 R7 K10 ["getNextOrder"]
      165 CALL                             R16 1 1
      166 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      168 GETIMPORT                        R16 K31 [UDim2.fromScale]
      170 LOADN                            R17 1
      171 LOADN                            R18 0
      172 CALL                             R16 2 1
      173 SETTABLEKS                       R16 R15 K18 ["Size"]
      175 SETTABLEKS                       R12 R15 K5 ["Text"]
      177 GETTABLEKS                       R16 R3 K32 ["assetConfig"]
      179 GETTABLEKS                       R16 R16 K33 ["labelTextColor"]
      181 SETTABLEKS                       R16 R15 K19 ["TextColor"]
      183 GETUPVAL                         R16 7
      184 GETTABLEKS                       R16 R16 K34 ["FONT_SIZE_TITLE"]
      186 SETTABLEKS                       R16 R15 K20 ["TextSize"]
      188 LOADB                            R16 1
      189 SETTABLEKS                       R16 R15 K21 ["TextWrapped"]
      191 GETIMPORT                        R16 K36 [Enum.TextXAlignment.Left]
      193 SETTABLEKS                       R16 R15 K22 ["TextXAlignment"]
      195 GETIMPORT                        R16 K38 [Enum.TextYAlignment.Center]
      197 SETTABLEKS                       R16 R15 K23 ["TextYAlignment"]
      199 CALL                             R13 2 1
      200 SETTABLE                         R13 R6 R12
      201 FORGLOOP                         R8 2 ; [-78]
      203 RETURN                           R6 1

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
       67 GETUPVAL                         R22 1
       68 GETTABLEKS                       R22 R22 K29 ["isCreatorStoreAssetNotIncludingAnimation"]
       70 MOVE                             R23 R14
       71 CALL                             R22 1 1
       72 GETTABLEKS                       R25 R2 K30 ["assetId"]
       74 FASTCALL1                        TYPEOF R25 ; [+2]
       75 GETIMPORT                        R24 K32 [typeof]
       77 CALL                             R24 1 1
       78 JUMPIFNOTEQKS                    R24 K33 ["number"] ; [+8]
       80 GETUPVAL                         R23 2
       81 GETTABLEKS                       R23 R23 K34 ["constructCreatorStoreConfigurationUrl"]
       83 GETTABLEKS                       R24 R2 K30 ["assetId"]
       85 CALL                             R23 1 1
       86 JUMP                             ; [+4]
       87 GETUPVAL                         R23 3
       88 GETTABLEKS                       R23 R23 K35 ["getCreatorDashboardBaseUrl"]
       90 CALL                             R23 0 1
       91 GETTABLEKS                       R24 R2 K36 ["onNameChange"]
       93 GETTABLEKS                       R25 R2 K37 ["onDescChange"]
       95 GETTABLEKS                       R26 R2 K38 ["onOwnerSelected"]
       97 GETTABLEKS                       R27 R2 K39 ["onCategoryChange"]
       99 GETTABLEKS                       R28 R2 K40 ["onSharingChanged"]
      101 GETTABLEKS                       R29 R2 K41 ["toggleCopy"]
      103 GETTABLEKS                       R30 R2 K42 ["toggleComment"]
      105 GETTABLEKS                       R31 R2 K43 ["toggleDeleteLocal"]
      107 GETTABLEKS                       R32 R2 K44 ["publishingRequirements"]
      109 GETTABLEKS                       R33 R2 K45 ["publishingRestriction"]
      111 JUMPIFNOT                        R32 ; [+3]
      112 GETTABLEKS                       R34 R32 K46 ["verification"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R34
      116 JUMPIFNOT                        R34 ; [+11]
      117 GETTABLEKS                       R36 R34 K47 ["supportedTypes"]
      119 JUMPIFNOT                        R36 ; [+8]
      120 GETTABLEKS                       R37 R34 K47 ["supportedTypes"]
      122 LENGTH                           R36 R37
      123 JUMPIFNOTEQKN                    R36 K48 [0] ; [+2]
      125 LOADB                            R35 0 +1
      126 LOADB                            R35 1
      127 JUMP                             ; [+1]
      128 LOADB                            R35 0
      129 MOVE                             R36 R34
      130 JUMPIFNOT                        R36 ; [+2]
      131 GETTABLEKS                       R36 R34 K49 ["isVerified"]
      133 AND                              R37 R36 R20
      134 GETTABLEKS                       R38 R2 K50 ["displayOwnership"]
      136 GETTABLEKS                       R39 R2 K51 ["displayCopy"]
      138 GETTABLEKS                       R40 R2 K52 ["displayComment"]
      140 JUMPIFNOT                        R20 ; [+2]
      141 LOADB                            R41 0
      142 JUMP                             ; [+2]
      143 GETTABLEKS                       R41 R2 K53 ["displayAssetType"]
      145 GETTABLEKS                       R42 R2 K54 ["displaySharing"]
      147 GETTABLEKS                       R43 R2 K55 ["displayAssetTypeSelection"]
      149 GETUPVAL                         R45 4
      150 NOT                              R44 R45
      151 JUMPIFNOT                        R20 ; [+3]
      152 GETTABLEKS                       R45 R2 K56 ["allowedAssetTypesForRelease"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R45
      156 GETTABLEKS                       R46 R2 K57 ["allowedAssetTypesForFree"]
      158 JUMPIFNOT                        R20 ; [+3]
      159 GETTABLEKS                       R47 R2 K58 ["newAssetStatus"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R47
      163 JUMPIFNOT                        R20 ; [+3]
      164 GETTABLEKS                       R48 R2 K59 ["currentAssetStatus"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R48
      168 JUMPIFNOT                        R20 ; [+3]
      169 GETTABLEKS                       R49 R2 K60 ["onStatusChange"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R49
      173 JUMPIFNOT                        R20 ; [+3]
      174 GETTABLEKS                       R50 R2 K61 ["price"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R50
      178 JUMPIFNOT                        R20 ; [+3]
      179 GETTABLEKS                       R51 R2 K62 ["minPrice"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R51
      183 JUMPIFNOT                        R20 ; [+3]
      184 GETTABLEKS                       R52 R2 K63 ["maxPrice"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R52
      188 JUMPIFNOT                        R20 ; [+3]
      189 GETTABLEKS                       R53 R2 K64 ["feeRate"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R53
      193 JUMPIFNOT                        R20 ; [+3]
      194 GETTABLEKS                       R54 R2 K65 ["isPriceValid"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R54
      198 JUMPIFNOT                        R20 ; [+3]
      199 GETTABLEKS                       R55 R2 K66 ["onPriceChange"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R55
      203 JUMPIFNOT                        R20 ; [+12]
      204 GETUPVAL                         R56 1
      205 GETTABLEKS                       R56 R56 K67 ["isReadyForSale"]
      207 MOVE                             R57 R47
      208 CALL                             R56 1 1
      209 JUMPIF                           R56 ; [+7]
      210 GETUPVAL                         R56 1
      211 GETTABLEKS                       R56 R56 K68 ["isBuyableMarketplaceAsset"]
      213 MOVE                             R57 R14
      214 CALL                             R56 1 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R56
      217 LOADNIL                          R57
      218 LOADNIL                          R58
      219 GETTABLEKS                       R59 R2 K69 ["Localization"]
      221 JUMPIF                           R17 ; [+3]
      222 GETUPVAL                         R60 5
      223 JUMPIFNOT                        R60 ; [+9]
      224 JUMPIFNOT                        R18 ; [+8]
      225 JUMPIF                           R15 ; [+7]
      226 JUMPIFNOT                        R10 ; [+6]
      227 LOADK                            R62 K70 ["AssetConfigCopy"]
      228 LOADK                            R63 K71 ["MustShare"]
      229 NAMECALL                         R60 R59 K72 ["getText"]
      231 CALL                             R60 3 1
      232 MOVE                             R57 R60
      233 JUMPIFNOT                        R19 ; [+6]
      234 LOADK                            R62 K73 ["AssetConfig"]
      235 LOADK                            R63 K74 ["ModelPublishWarning"]
      236 NAMECALL                         R60 R59 K72 ["getText"]
      238 CALL                             R60 3 1
      239 MOVE                             R58 R60
      240 GETUPVAL                         R60 6
      241 GETTABLEKS                       R60 R60 K75 ["new"]
      243 CALL                             R60 0 1
      244 GETTABLEKS                       R61 R1 K76 ["publishAsset"]
      246 LOADN                            R62 80
      247 JUMPIF                           R5 ; [+1]
      248 ADDK                             R62 R62 K77 [60]
      249 NEWTABLE                         R63 4 0
      251 SETTABLEKS                       R3 R63 K2 ["Size"]
      253 SETTABLEKS                       R4 R63 K3 ["LayoutOrder"]
      255 GETUPVAL                         R64 7
      256 GETTABLEKS                       R64 R64 K78 ["Ref"]
      258 GETTABLEKS                       R65 R0 K79 ["baseFrameRef"]
      260 SETTABLE                         R65 R63 R64
      261 LOADNIL                          R64
      262 GETTABLEKS                       R65 R2 K80 ["assetMediaMetadataArray"]
      264 JUMPIFNOT                        R65 ; [+3]
      265 GETTABLEKS                       R64 R2 K80 ["assetMediaMetadataArray"]
      267 JUMP                             ; [+11]
      268 GETTABLEKS                       R65 R2 K81 ["assetMediaIds"]
      270 JUMPIFEQKNIL                     R65 ; [+8]
      272 GETUPVAL                         R65 8
      273 GETTABLEKS                       R66 R2 K81 ["assetMediaIds"]
      275 DUPCLOSURE                       R67 K82 [PROTO_13]
      276 CAPTURE                          UPVAL U9
      277 CALL                             R65 2 1
      278 MOVE                             R64 R65
      279 JUMPIFNOT                        R20 ; [+7]
      280 MOVE                             R65 R56
      281 JUMPIFNOT                        R65 ; [+6]
      282 JUMPIFEQKNIL                     R33 ; [+2]
      284 LOADB                            R65 0 +1
      285 LOADB                            R65 1
      286 JUMP                             ; [+1]
      287 MOVE                             R65 R5
      288 LOADNIL                          R66
      289 LOADNIL                          R67
      290 LOADNIL                          R68
      291 LOADNIL                          R69
      292 GETUPVAL                         R70 1
      293 GETTABLEKS                       R70 R70 K83 ["isUGCBundleType"]
      295 MOVE                             R71 R14
      296 CALL                             R70 1 1
      297 MOVE                             R66 R70
      298 GETUPVAL                         R70 10
      299 CALL                             R70 0 1
      300 JUMPIFNOT                        R70 ; [+36]
      301 GETUPVAL                         R70 1
      302 GETTABLEKS                       R70 R70 K84 ["isUGCBodyBundleType"]
      304 MOVE                             R71 R14
      305 CALL                             R70 1 1
      306 JUMPIFNOT                        R70 ; [+7]
      307 LOADK                            R72 K85 ["General"]
      308 LOADK                            R73 K86 ["BodyValidation"]
      309 NAMECALL                         R70 R59 K72 ["getText"]
      311 CALL                             R70 3 1
      312 MOVE                             R67 R70
      313 JUMP                             ; [+29]
      314 GETUPVAL                         R70 11
      315 CALL                             R70 0 1
      316 JUMPIFNOT                        R70 ; [+13]
      317 GETUPVAL                         R70 1
      318 GETTABLEKS                       R70 R70 K87 ["isAnimationBundleType"]
      320 MOVE                             R71 R14
      321 CALL                             R70 1 1
      322 JUMPIFNOT                        R70 ; [+7]
      323 LOADK                            R72 K85 ["General"]
      324 LOADK                            R73 K88 ["AvatarAnimationsValidation"]
      325 NAMECALL                         R70 R59 K72 ["getText"]
      327 CALL                             R70 3 1
      328 MOVE                             R67 R70
      329 JUMP                             ; [+13]
      330 LOADK                            R72 K85 ["General"]
      331 LOADK                            R73 K89 ["ShoeValidation"]
      332 NAMECALL                         R70 R59 K72 ["getText"]
      334 CALL                             R70 3 1
      335 MOVE                             R67 R70
      336 JUMP                             ; [+6]
      337 LOADK                            R72 K85 ["General"]
      338 LOADK                            R73 K86 ["BodyValidation"]
      339 NAMECALL                         R70 R59 K72 ["getText"]
      341 CALL                             R70 3 1
      342 MOVE                             R67 R70
      343 GETTABLEKS                       R70 R2 K90 ["instances"]
      345 JUMPIFNOT                        R70 ; [+20]
      346 GETTABLEKS                       R73 R2 K90 ["instances"]
      348 GETTABLEN                        R72 R73 1
      349 GETTABLEKS                       R73 R2 K91 ["allowedBundleTypeSettings"]
      351 MOVE                             R74 R14
      352 MOVE                             R75 R1
      353 NAMECALL                         R70 R0 K92 ["getMissingOptionalPartsMessage"]
      355 CALL                             R70 5 1
      356 MOVE                             R68 R70
      357 GETTABLEKS                       R73 R2 K90 ["instances"]
      359 GETTABLEN                        R72 R73 1
      360 MOVE                             R73 R14
      361 MOVE                             R74 R1
      362 NAMECALL                         R70 R0 K93 ["getUnknownMeshPartMessage"]
      364 CALL                             R70 4 1
      365 MOVE                             R69 R70
      366 GETUPVAL                         R70 7
      367 GETTABLEKS                       R70 R70 K94 ["createElement"]
      369 GETUPVAL                         R71 12
      370 MOVE                             R72 R63
      371 DUPTABLE                         R73 K114 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      372 GETUPVAL                         R74 7
      373 GETTABLEKS                       R74 R74 K94 ["createElement"]
      375 LOADK                            R75 K115 ["UIPadding"]
      376 DUPTABLE                         R76 K120 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      377 GETIMPORT                        R77 K122 [UDim.new]
      379 LOADN                            R78 0
      380 LOADN                            R79 24
      381 CALL                             R77 2 1
      382 SETTABLEKS                       R77 R76 K116 ["PaddingTop"]
      384 GETIMPORT                        R77 K122 [UDim.new]
      386 LOADN                            R78 0
      387 LOADN                            R79 24
      388 CALL                             R77 2 1
      389 SETTABLEKS                       R77 R76 K117 ["PaddingBottom"]
      391 GETIMPORT                        R77 K122 [UDim.new]
      393 LOADN                            R78 0
      394 LOADN                            R79 24
      395 CALL                             R77 2 1
      396 SETTABLEKS                       R77 R76 K118 ["PaddingLeft"]
      398 GETIMPORT                        R77 K122 [UDim.new]
      400 LOADN                            R78 0
      401 LOADN                            R79 24
      402 CALL                             R77 2 1
      403 SETTABLEKS                       R77 R76 K119 ["PaddingRight"]
      405 CALL                             R74 2 1
      406 SETTABLEKS                       R74 R73 K95 ["Padding"]
      408 GETUPVAL                         R74 7
      409 GETTABLEKS                       R74 R74 K94 ["createElement"]
      411 LOADK                            R75 K96 ["UIListLayout"]
      412 NEWTABLE                         R76 8 0
      414 GETIMPORT                        R77 K125 [Enum.FillDirection.Vertical]
      416 SETTABLEKS                       R77 R76 K123 ["FillDirection"]
      418 GETIMPORT                        R77 K128 [Enum.HorizontalAlignment.Left]
      420 SETTABLEKS                       R77 R76 K126 ["HorizontalAlignment"]
      422 GETIMPORT                        R77 K131 [Enum.VerticalAlignment.Top]
      424 SETTABLEKS                       R77 R76 K129 ["VerticalAlignment"]
      426 GETIMPORT                        R77 K133 [Enum.SortOrder.LayoutOrder]
      428 SETTABLEKS                       R77 R76 K132 ["SortOrder"]
      430 GETIMPORT                        R77 K122 [UDim.new]
      432 LOADN                            R78 0
      433 LOADN                            R79 0
      434 CALL                             R77 2 1
      435 SETTABLEKS                       R77 R76 K95 ["Padding"]
      437 GETUPVAL                         R77 7
      438 GETTABLEKS                       R77 R77 K134 ["Change"]
      440 GETTABLEKS                       R77 R77 K135 ["AbsoluteContentSize"]
      442 GETTABLEKS                       R78 R0 K136 ["refreshCanvas"]
      444 JUMPIF                           R78 ; [+3]
      445 NEWCLOSURE                       R78 P1
      446 CAPTURE                          VAL R0
      447 CAPTURE                          VAL R3
      448 SETTABLE                         R78 R76 R77
      449 GETUPVAL                         R77 7
      450 GETTABLEKS                       R77 R77 K78 ["Ref"]
      452 GETTABLEKS                       R78 R0 K137 ["listLayoutRef"]
      454 SETTABLE                         R78 R76 R77
      455 CALL                             R74 2 1
      456 SETTABLEKS                       R74 R73 K96 ["UIListLayout"]
      458 JUMPIF                           R43 ; [+133]
      459 JUMPIFNOT                        R19 ; [+132]
      460 JUMPIFNOT                        R44 ; [+131]
      461 GETUPVAL                         R74 7
      462 GETTABLEKS                       R74 R74 K94 ["createElement"]
      464 GETUPVAL                         R75 13
      465 DUPTABLE                         R76 K140 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
      466 GETIMPORT                        R77 K128 [Enum.HorizontalAlignment.Left]
      468 SETTABLEKS                       R77 R76 K126 ["HorizontalAlignment"]
      470 GETIMPORT                        R77 K142 [Enum.FillDirection.Horizontal]
      472 SETTABLEKS                       R77 R76 K138 ["Layout"]
      474 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      476 CALL                             R77 1 1
      477 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      479 GETIMPORT                        R77 K145 [UDim2.new]
      481 LOADN                            R78 1
      482 LOADN                            R79 0
      483 LOADN                            R80 0
      484 GETUPVAL                         R81 14
      485 GETTABLEKS                       R81 R81 K146 ["FONT_SIZE_TITLE"]
      487 CALL                             R77 4 1
      488 SETTABLEKS                       R77 R76 K2 ["Size"]
      490 DUPTABLE                         R77 K148 [{"Bottom"}]
      491 LOADN                            R78 30
      492 SETTABLEKS                       R78 R77 K147 ["Bottom"]
      494 SETTABLEKS                       R77 R76 K95 ["Padding"]
      496 LOADN                            R77 5
      497 SETTABLEKS                       R77 R76 K139 ["Spacing"]
      499 GETIMPORT                        R77 K131 [Enum.VerticalAlignment.Top]
      501 SETTABLEKS                       R77 R76 K129 ["VerticalAlignment"]
      503 DUPTABLE                         R77 K151 [{"Icon", "WarningText"}]
      504 GETUPVAL                         R78 7
      505 GETTABLEKS                       R78 R78 K94 ["createElement"]
      507 LOADK                            R79 K152 ["ImageLabel"]
      508 DUPTABLE                         R80 K156 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      509 LOADN                            R81 1
      510 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      512 LOADN                            R81 1
      513 SETTABLEKS                       R81 R80 K153 ["BackgroundTransparency"]
      515 GETUPVAL                         R81 15
      516 GETTABLEKS                       R81 R81 K157 ["WARNING_ICON"]
      518 SETTABLEKS                       R81 R80 K154 ["Image"]
      520 GETTABLEKS                       R81 R61 K158 ["warningIconColor"]
      522 SETTABLEKS                       R81 R80 K155 ["ImageColor3"]
      524 GETIMPORT                        R81 K160 [UDim2.fromOffset]
      526 LOADN                            R82 24
      527 LOADN                            R83 24
      528 CALL                             R81 2 1
      529 SETTABLEKS                       R81 R80 K2 ["Size"]
      531 CALL                             R78 2 1
      532 SETTABLEKS                       R78 R77 K149 ["Icon"]
      534 GETUPVAL                         R78 7
      535 GETTABLEKS                       R78 R78 K94 ["createElement"]
      537 LOADK                            R79 K161 ["TextLabel"]
      538 DUPTABLE                         R80 K170 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      539 GETIMPORT                        R81 K172 [Enum.AutomaticSize.XY]
      541 SETTABLEKS                       R81 R80 K162 ["AutomaticSize"]
      543 LOADN                            R81 2
      544 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      546 LOADN                            R81 1
      547 SETTABLEKS                       R81 R80 K153 ["BackgroundTransparency"]
      549 GETUPVAL                         R81 14
      550 GETTABLEKS                       R81 R81 K173 ["FONT"]
      552 SETTABLEKS                       R81 R80 K163 ["Font"]
      554 GETIMPORT                        R81 K145 [UDim2.new]
      556 LOADN                            R82 1
      557 LOADN                            R83 0
      558 LOADN                            R84 1
      559 LOADN                            R85 0
      560 CALL                             R81 4 1
      561 SETTABLEKS                       R81 R80 K2 ["Size"]
      563 SETTABLEKS                       R58 R80 K164 ["Text"]
      565 LOADB                            R81 1
      566 SETTABLEKS                       R81 R80 K165 ["TextWrapped"]
      568 GETTABLEKS                       R81 R1 K174 ["assetConfig"]
      570 GETTABLEKS                       R81 R81 K175 ["warningColor"]
      572 SETTABLEKS                       R81 R80 K166 ["TextColor3"]
      574 GETIMPORT                        R81 K176 [Enum.TextXAlignment.Left]
      576 SETTABLEKS                       R81 R80 K167 ["TextXAlignment"]
      578 GETIMPORT                        R81 K178 [Enum.TextYAlignment.Center]
      580 SETTABLEKS                       R81 R80 K168 ["TextYAlignment"]
      582 GETUPVAL                         R81 14
      583 GETTABLEKS                       R81 R81 K146 ["FONT_SIZE_TITLE"]
      585 SETTABLEKS                       R81 R80 K169 ["TextSize"]
      587 CALL                             R78 2 1
      588 SETTABLEKS                       R78 R77 K150 ["WarningText"]
      590 CALL                             R74 3 1
      591 JUMP                             ; [+1]
      592 LOADNIL                          R74
      593 SETTABLEKS                       R74 R73 K97 ["ModelWarningFrame"]
      595 JUMPIFNOT                        R20 ; [+19]
      596 GETUPVAL                         R74 7
      597 GETTABLEKS                       R74 R74 K94 ["createElement"]
      599 GETUPVAL                         R75 16
      600 DUPTABLE                         R76 K179 [{"LayoutOrder", "Title"}]
      601 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      603 CALL                             R77 1 1
      604 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      606 LOADK                            R79 K73 ["AssetConfig"]
      607 LOADK                            R80 K180 ["PublishPluginHeader"]
      608 NAMECALL                         R77 R59 K72 ["getText"]
      610 CALL                             R77 3 1
      611 SETTABLEKS                       R77 R76 K99 ["Title"]
      613 CALL                             R74 2 1
      614 JUMP                             ; [+1]
      615 LOADNIL                          R74
      616 SETTABLEKS                       R74 R73 K98 ["Header"]
      618 GETUPVAL                         R74 7
      619 GETTABLEKS                       R74 R74 K94 ["createElement"]
      621 GETUPVAL                         R75 17
      622 DUPTABLE                         R76 K187 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      623 LOADK                            R79 K85 ["General"]
      624 LOADK                            R80 K99 ["Title"]
      625 NAMECALL                         R77 R59 K72 ["getText"]
      627 CALL                             R77 3 1
      628 SETTABLEKS                       R77 R76 K99 ["Title"]
      630 LOADN                            R77 100
      631 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
      633 GETUPVAL                         R77 0
      634 GETTABLEKS                       R77 R77 K188 ["NAME_CHARACTER_LIMIT"]
      636 SETTABLEKS                       R77 R76 K182 ["MaxCount"]
      638 SETTABLEKS                       R24 R76 K183 ["TextChangeCallBack"]
      640 SETTABLEKS                       R7 R76 K184 ["TextContent"]
      642 GETUPVAL                         R78 18
      643 CALL                             R78 0 1
      644 JUMPIFNOT                        R78 ; [+3]
      645 GETTABLEKS                       R77 R2 K189 ["showNameRequiredError"]
      647 JUMP                             ; [+1]
      648 LOADNIL                          R77
      649 SETTABLEKS                       R77 R76 K185 ["showRequiredError"]
      651 NEWCLOSURE                       R77 P2
      652 CAPTURE                          VAL R0
      653 CAPTURE                          UPVAL U0
      654 SETTABLEKS                       R77 R76 K186 ["ErrorCallback"]
      656 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      658 CALL                             R77 1 1
      659 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      661 CALL                             R74 2 1
      662 SETTABLEKS                       R74 R73 K99 ["Title"]
      664 GETUPVAL                         R74 7
      665 GETTABLEKS                       R74 R74 K94 ["createElement"]
      667 GETUPVAL                         R75 17
      668 DUPTABLE                         R76 K191 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      669 LOADK                            R79 K192 ["AssetConfigDescription"]
      670 LOADK                            R80 K193 ["AddRobloxLinks"]
      671 NAMECALL                         R77 R59 K72 ["getText"]
      673 CALL                             R77 3 1
      674 SETTABLEKS                       R77 R76 K190 ["BottomRightText"]
      676 LOADK                            R79 K85 ["General"]
      677 LOADK                            R80 K100 ["Description"]
      678 NAMECALL                         R77 R59 K72 ["getText"]
      680 CALL                             R77 3 1
      681 SETTABLEKS                       R77 R76 K99 ["Title"]
      683 LOADN                            R77 180
      684 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
      686 GETUPVAL                         R77 0
      687 GETTABLEKS                       R77 R77 K194 ["DESCRIPTION_CHARACTER_LIMIT"]
      689 SETTABLEKS                       R77 R76 K182 ["MaxCount"]
      691 SETTABLEKS                       R25 R76 K183 ["TextChangeCallBack"]
      693 SETTABLEKS                       R8 R76 K184 ["TextContent"]
      695 GETUPVAL                         R78 18
      696 CALL                             R78 0 1
      697 JUMPIFNOT                        R78 ; [+3]
      698 GETTABLEKS                       R77 R2 K195 ["showDescriptionRequiredError"]
      700 JUMP                             ; [+1]
      701 LOADNIL                          R77
      702 SETTABLEKS                       R77 R76 K185 ["showRequiredError"]
      704 NEWCLOSURE                       R77 P3
      705 CAPTURE                          VAL R0
      706 CAPTURE                          UPVAL U0
      707 SETTABLEKS                       R77 R76 K186 ["ErrorCallback"]
      709 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      711 CALL                             R77 1 1
      712 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      714 CALL                             R74 2 1
      715 SETTABLEKS                       R74 R73 K100 ["Description"]
      717 JUMPIFNOT                        R43 ; [+62]
      718 GETUPVAL                         R74 7
      719 GETTABLEKS                       R74 R74 K94 ["createElement"]
      721 GETUPVAL                         R75 19
      722 DUPTABLE                         R76 K206 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      723 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      725 CALL                             R77 1 1
      726 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      728 GETTABLEKS                       R77 R2 K196 ["dataSharingEnabled"]
      730 SETTABLEKS                       R77 R76 K196 ["dataSharingEnabled"]
      732 GETTABLEKS                       R77 R2 K197 ["dataSharingToggled"]
      734 SETTABLEKS                       R77 R76 K197 ["dataSharingToggled"]
      736 GETTABLEKS                       R77 R2 K198 ["onDataConsentToggleClick"]
      738 SETTABLEKS                       R77 R76 K198 ["onDataConsentToggleClick"]
      740 GETTABLEKS                       R77 R0 K207 ["state"]
      742 GETTABLEKS                       R77 R77 K199 ["validationState"]
      744 SETTABLEKS                       R77 R76 K199 ["validationState"]
      746 GETTABLEKS                       R77 R0 K207 ["state"]
      748 GETTABLEKS                       R77 R77 K200 ["validationFailureReasons"]
      750 SETTABLEKS                       R77 R76 K200 ["validationFailureReasons"]
      752 GETTABLEKS                       R77 R0 K201 ["setValidationState"]
      754 SETTABLEKS                       R77 R76 K201 ["setValidationState"]
      756 GETTABLEKS                       R77 R0 K202 ["setValidationFailureReasons"]
      758 SETTABLEKS                       R77 R76 K202 ["setValidationFailureReasons"]
      760 GETTABLEKS                       R77 R0 K207 ["state"]
      762 GETTABLEKS                       R77 R77 K203 ["ugcBundleValidationResults"]
      764 SETTABLEKS                       R77 R76 K203 ["ugcBundleValidationResults"]
      766 GETTABLEKS                       R77 R0 K204 ["setUGCBundleValidationResults"]
      768 SETTABLEKS                       R77 R76 K204 ["setUGCBundleValidationResults"]
      770 GETTABLEKS                       R77 R0 K205 ["setCurrentAssetType"]
      772 SETTABLEKS                       R77 R76 K205 ["setCurrentAssetType"]
      774 GETTABLEKS                       R77 R2 K90 ["instances"]
      776 SETTABLEKS                       R77 R76 K90 ["instances"]
      778 CALL                             R74 2 1
      779 JUMP                             ; [+1]
      780 LOADNIL                          R74
      781 SETTABLEKS                       R74 R73 K101 ["AssetTypeSelection"]
      783 JUMPIFNOT                        R43 ; [+36]
      784 JUMPIFNOT                        R38 ; [+35]
      785 GETUPVAL                         R74 7
      786 GETTABLEKS                       R74 R74 K94 ["createElement"]
      788 GETUPVAL                         R75 20
      789 DUPTABLE                         R76 K210 [{"LayoutOrder", "onDropDownSelect", "owner", "preselectedGroupId", "Title", "TotalHeight"}]
      790 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      792 CALL                             R77 1 1
      793 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      795 SETTABLEKS                       R26 R76 K208 ["onDropDownSelect"]
      797 SETTABLEKS                       R9 R76 K8 ["owner"]
      799 GETUPVAL                         R78 21
      800 CALL                             R78 0 1
      801 JUMPIFNOT                        R78 ; [+3]
      802 GETTABLEKS                       R77 R2 K209 ["preselectedGroupId"]
      804 JUMP                             ; [+1]
      805 LOADNIL                          R77
      806 SETTABLEKS                       R77 R76 K209 ["preselectedGroupId"]
      808 LOADK                            R79 K85 ["General"]
      809 LOADK                            R80 K106 ["Ownership"]
      810 NAMECALL                         R77 R59 K72 ["getText"]
      812 CALL                             R77 3 1
      813 SETTABLEKS                       R77 R76 K99 ["Title"]
      815 LOADN                            R77 70
      816 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
      818 CALL                             R74 2 1
      819 JUMP                             ; [+1]
      820 LOADNIL                          R74
      821 SETTABLEKS                       R74 R73 K102 ["Creator"]
      823 GETUPVAL                         R75 22
      824 CALL                             R75 0 1
      825 JUMPIFNOT                        R75 ; [+110]
      826 JUMPIFNOT                        R43 ; [+109]
      827 JUMPIFNOT                        R38 ; [+108]
      828 GETTABLEKS                       R75 R2 K211 ["showColorPicker"]
      830 JUMPIFNOT                        R75 ; [+105]
      831 GETUPVAL                         R74 7
      832 GETTABLEKS                       R74 R74 K94 ["createElement"]
      834 GETUPVAL                         R75 23
      835 GETTABLEKS                       R75 R75 K212 ["View"]
      837 DUPTABLE                         R76 K214 [{"tag", "Size", "LayoutOrder"}]
      838 LOADK                            R77 K215 ["row align-x-left align-y-top size-full-x"]
      839 SETTABLEKS                       R77 R76 K213 ["tag"]
      841 GETIMPORT                        R77 K145 [UDim2.new]
      843 LOADN                            R78 1
      844 LOADN                            R79 0
      845 LOADN                            R80 0
      846 LOADN                            R81 70
      847 CALL                             R77 4 1
      848 SETTABLEKS                       R77 R76 K2 ["Size"]
      850 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      852 CALL                             R77 1 1
      853 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      855 DUPTABLE                         R77 K217 [{"Title", "ColorPickerButton"}]
      856 GETUPVAL                         R78 24
      857 GETTABLEKS                       R78 R78 K94 ["createElement"]
      859 GETUPVAL                         R79 23
      860 GETTABLEKS                       R79 R79 K164 ["Text"]
      862 DUPTABLE                         R80 K218 [{"tag", "Text", "Size", "LayoutOrder"}]
      863 NEWTABLE                         R81 4 0
      865 LOADB                            R82 1
      866 SETTABLEKS                       R82 R81 K219 ["text-align-y-top text-align-x-left"]
      868 GETUPVAL                         R82 25
      869 CALL                             R82 0 1
      870 SETTABLEKS                       R82 R81 K220 ["text-title-small bold content-emphasis"]
      872 GETUPVAL                         R83 25
      873 CALL                             R83 0 1
      874 NOT                              R82 R83
      875 SETTABLEKS                       R82 R81 K221 ["text-body-large"]
      877 SETTABLEKS                       R81 R80 K213 ["tag"]
      879 LOADK                            R83 K85 ["General"]
      880 LOADK                            R84 K222 ["ThumbnailSkinTone"]
      881 NAMECALL                         R81 R59 K72 ["getText"]
      883 CALL                             R81 3 1
      884 SETTABLEKS                       R81 R80 K164 ["Text"]
      886 GETIMPORT                        R81 K145 [UDim2.new]
      888 LOADN                            R82 0
      889 GETUPVAL                         R83 0
      890 GETTABLEKS                       R83 R83 K223 ["TITLE_GUTTER_WIDTH"]
      892 LOADN                            R84 1
      893 LOADN                            R85 0
      894 CALL                             R81 4 1
      895 SETTABLEKS                       R81 R80 K2 ["Size"]
      897 LOADN                            R81 1
      898 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      900 CALL                             R78 2 1
      901 SETTABLEKS                       R78 R77 K99 ["Title"]
      903 GETUPVAL                         R78 7
      904 GETTABLEKS                       R78 R78 K94 ["createElement"]
      906 GETUPVAL                         R79 26
      907 DUPTABLE                         R80 K227 [{"selectedColor", "setSelectedColor", "Localization", "showRequiredError", "LayoutOrder", "textColor"}]
      908 GETTABLEKS                       R81 R2 K224 ["selectedColor"]
      910 SETTABLEKS                       R81 R80 K224 ["selectedColor"]
      912 GETTABLEKS                       R81 R2 K225 ["setSelectedColor"]
      914 SETTABLEKS                       R81 R80 K225 ["setSelectedColor"]
      916 SETTABLEKS                       R59 R80 K69 ["Localization"]
      918 GETTABLEKS                       R81 R2 K228 ["showColorPickerRequiredError"]
      920 SETTABLEKS                       R81 R80 K185 ["showRequiredError"]
      922 LOADN                            R81 2
      923 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      925 GETTABLEKS                       R81 R1 K76 ["publishAsset"]
      927 GETTABLEKS                       R81 R81 K229 ["titleTextColor"]
      929 SETTABLEKS                       R81 R80 K226 ["textColor"]
      931 CALL                             R78 2 1
      932 SETTABLEKS                       R78 R77 K216 ["ColorPickerButton"]
      934 CALL                             R74 3 1
      935 JUMP                             ; [+1]
      936 LOADNIL                          R74
      937 SETTABLEKS                       R74 R73 K103 ["ColorPickerRow"]
      939 JUMPIFNOT                        R66 ; [+193]
      940 GETUPVAL                         R74 7
      941 GETTABLEKS                       R74 R74 K94 ["createElement"]
      943 GETUPVAL                         R75 27
      944 DUPTABLE                         R76 K230 [{"AutomaticSize", "LayoutOrder", "Title"}]
      945 GETIMPORT                        R77 K172 [Enum.AutomaticSize.XY]
      947 SETTABLEKS                       R77 R76 K162 ["AutomaticSize"]
      949 NAMECALL                         R77 R60 K143 ["getNextOrder"]
      951 CALL                             R77 1 1
      952 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
      954 SETTABLEKS                       R67 R76 K99 ["Title"]
      956 DUPTABLE                         R77 K232 [{"ValidationPane"}]
      957 GETUPVAL                         R78 7
      958 GETTABLEKS                       R78 R78 K94 ["createElement"]
      960 GETUPVAL                         R79 13
      961 DUPTABLE                         R80 K233 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      962 GETIMPORT                        R81 K235 [Enum.AutomaticSize.Y]
      964 SETTABLEKS                       R81 R80 K162 ["AutomaticSize"]
      966 GETIMPORT                        R81 K125 [Enum.FillDirection.Vertical]
      968 SETTABLEKS                       R81 R80 K138 ["Layout"]
      970 LOADN                            R81 1
      971 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
      973 GETIMPORT                        R81 K237 [UDim2.fromScale]
      975 LOADN                            R82 1
      976 LOADN                            R83 0
      977 CALL                             R81 2 1
      978 SETTABLEKS                       R81 R80 K2 ["Size"]
      980 LOADN                            R81 18
      981 SETTABLEKS                       R81 R80 K139 ["Spacing"]
      983 DUPTABLE                         R81 K148 [{"Bottom"}]
      984 LOADN                            R82 24
      985 SETTABLEKS                       R82 R81 K147 ["Bottom"]
      987 SETTABLEKS                       R81 R80 K95 ["Padding"]
      989 DUPTABLE                         R81 K241 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      990 GETUPVAL                         R82 7
      991 GETTABLEKS                       R82 R82 K94 ["createElement"]
      993 GETUPVAL                         R83 28
      994 DUPTABLE                         R84 K244 [{"LayoutOrder", "isUGCBodyBundleType", "isAnimationBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
      995 LOADN                            R85 1
      996 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
      998 GETUPVAL                         R85 1
      999 GETTABLEKS                       R85 R85 K84 ["isUGCBodyBundleType"]
     1001 MOVE                             R86 R14
     1002 CALL                             R85 1 1
     1003 SETTABLEKS                       R85 R84 K84 ["isUGCBodyBundleType"]
     1005 GETUPVAL                         R86 11
     1006 CALL                             R86 0 1
     1007 JUMPIFNOT                        R86 ; [+6]
     1008 GETUPVAL                         R85 1
     1009 GETTABLEKS                       R85 R85 K87 ["isAnimationBundleType"]
     1011 MOVE                             R86 R14
     1012 CALL                             R85 1 1
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R85
     1015 SETTABLEKS                       R85 R84 K87 ["isAnimationBundleType"]
     1017 GETTABLEKS                       R85 R0 K207 ["state"]
     1019 GETTABLEKS                       R85 R85 K199 ["validationState"]
     1021 SETTABLEKS                       R85 R84 K199 ["validationState"]
     1023 GETTABLEKS                       R85 R0 K201 ["setValidationState"]
     1025 SETTABLEKS                       R85 R84 K201 ["setValidationState"]
     1027 GETTABLEKS                       R85 R0 K207 ["state"]
     1029 GETTABLEKS                       R85 R85 K200 ["validationFailureReasons"]
     1031 SETTABLEKS                       R85 R84 K200 ["validationFailureReasons"]
     1033 GETTABLEKS                       R85 R0 K202 ["setValidationFailureReasons"]
     1035 SETTABLEKS                       R85 R84 K202 ["setValidationFailureReasons"]
     1037 GETTABLEKS                       R85 R0 K207 ["state"]
     1039 GETTABLEKS                       R85 R85 K203 ["ugcBundleValidationResults"]
     1041 SETTABLEKS                       R85 R84 K242 ["validationResults"]
     1043 GETTABLEKS                       R85 R0 K204 ["setUGCBundleValidationResults"]
     1045 SETTABLEKS                       R85 R84 K204 ["setUGCBundleValidationResults"]
     1047 GETTABLEKS                       R85 R0 K207 ["state"]
     1049 GETTABLEKS                       R85 R85 K245 ["currentAssetType"]
     1051 SETTABLEKS                       R85 R84 K13 ["assetTypeEnum"]
     1053 GETTABLEKS                       R85 R2 K90 ["instances"]
     1055 SETTABLEKS                       R85 R84 K90 ["instances"]
     1057 GETTABLEKS                       R85 R2 K91 ["allowedBundleTypeSettings"]
     1059 SETTABLEKS                       R85 R84 K91 ["allowedBundleTypeSettings"]
     1061 GETTABLEKS                       R85 R2 K243 ["onAssetValidationResultChanged"]
     1063 SETTABLEKS                       R85 R84 K243 ["onAssetValidationResultChanged"]
     1065 CALL                             R82 2 1
     1066 SETTABLEKS                       R82 R81 K238 ["UGCBundleValidation"]
     1068 JUMPIFNOT                        R68 ; [+26]
     1069 GETUPVAL                         R82 7
     1070 GETTABLEKS                       R82 R82 K94 ["createElement"]
     1072 GETUPVAL                         R83 13
     1073 DUPTABLE                         R84 K246 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1074 GETIMPORT                        R85 K235 [Enum.AutomaticSize.Y]
     1076 SETTABLEKS                       R85 R84 K162 ["AutomaticSize"]
     1078 GETIMPORT                        R85 K125 [Enum.FillDirection.Vertical]
     1080 SETTABLEKS                       R85 R84 K138 ["Layout"]
     1082 LOADN                            R85 2
     1083 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
     1085 GETIMPORT                        R85 K237 [UDim2.fromScale]
     1087 LOADN                            R86 1
     1088 LOADN                            R87 0
     1089 CALL                             R85 2 1
     1090 SETTABLEKS                       R85 R84 K2 ["Size"]
     1092 MOVE                             R85 R68
     1093 CALL                             R82 3 1
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R82
     1096 SETTABLEKS                       R82 R81 K239 ["MissingOptionalAccessoriesMsg"]
     1098 JUMPIFNOT                        R69 ; [+26]
     1099 GETUPVAL                         R82 7
     1100 GETTABLEKS                       R82 R82 K94 ["createElement"]
     1102 GETUPVAL                         R83 13
     1103 DUPTABLE                         R84 K246 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1104 GETIMPORT                        R85 K235 [Enum.AutomaticSize.Y]
     1106 SETTABLEKS                       R85 R84 K162 ["AutomaticSize"]
     1108 GETIMPORT                        R85 K125 [Enum.FillDirection.Vertical]
     1110 SETTABLEKS                       R85 R84 K138 ["Layout"]
     1112 LOADN                            R85 3
     1113 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
     1115 GETIMPORT                        R85 K237 [UDim2.fromScale]
     1117 LOADN                            R86 1
     1118 LOADN                            R87 0
     1119 CALL                             R85 2 1
     1120 SETTABLEKS                       R85 R84 K2 ["Size"]
     1122 MOVE                             R85 R69
     1123 CALL                             R82 3 1
     1124 JUMP                             ; [+1]
     1125 LOADNIL                          R82
     1126 SETTABLEKS                       R82 R81 K240 ["UnknownMeshPartsMsgChildren"]
     1128 CALL                             R78 3 1
     1129 SETTABLEKS                       R78 R77 K231 ["ValidationPane"]
     1131 CALL                             R74 3 1
     1132 JUMP                             ; [+1]
     1133 LOADNIL                          R74
     1134 SETTABLEKS                       R74 R73 K104 ["ContentTypeBodyValidation"]
     1136 GETTABLEKS                       R75 R2 K196 ["dataSharingEnabled"]
     1138 JUMPIFNOT                        R75 ; [+32]
     1139 GETUPVAL                         R75 1
     1140 GETTABLEKS                       R75 R75 K83 ["isUGCBundleType"]
     1142 MOVE                             R76 R14
     1143 CALL                             R75 1 1
     1144 JUMPIF                           R75 ; [+6]
     1145 GETUPVAL                         R75 1
     1146 GETTABLEKS                       R75 R75 K247 ["isCatalogAsset"]
     1148 MOVE                             R76 R14
     1149 CALL                             R75 1 1
     1150 JUMPIFNOT                        R75 ; [+20]
     1151 GETUPVAL                         R74 7
     1152 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1154 GETUPVAL                         R75 29
     1155 DUPTABLE                         R76 K248 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1156 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1158 CALL                             R77 1 1
     1159 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1161 GETTABLEKS                       R77 R2 K197 ["dataSharingToggled"]
     1163 SETTABLEKS                       R77 R76 K197 ["dataSharingToggled"]
     1165 GETTABLEKS                       R77 R2 K198 ["onDataConsentToggleClick"]
     1167 SETTABLEKS                       R77 R76 K198 ["onDataConsentToggleClick"]
     1169 CALL                             R74 2 1
     1170 JUMP                             ; [+1]
     1171 LOADNIL                          R74
     1172 SETTABLEKS                       R74 R73 K105 ["DataSharingConsent"]
     1174 JUMPIF                           R43 ; [+36]
     1175 JUMPIFNOT                        R38 ; [+35]
     1176 GETUPVAL                         R74 7
     1177 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1179 GETUPVAL                         R75 20
     1180 DUPTABLE                         R76 K249 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "preselectedGroupId", "LayoutOrder"}]
     1181 LOADK                            R79 K85 ["General"]
     1182 LOADK                            R80 K106 ["Ownership"]
     1183 NAMECALL                         R77 R59 K72 ["getText"]
     1185 CALL                             R77 3 1
     1186 SETTABLEKS                       R77 R76 K99 ["Title"]
     1188 SETTABLEKS                       R9 R76 K8 ["owner"]
     1190 LOADN                            R77 70
     1191 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
     1193 SETTABLEKS                       R26 R76 K208 ["onDropDownSelect"]
     1195 GETUPVAL                         R78 21
     1196 CALL                             R78 0 1
     1197 JUMPIFNOT                        R78 ; [+3]
     1198 GETTABLEKS                       R77 R2 K209 ["preselectedGroupId"]
     1200 JUMP                             ; [+1]
     1201 LOADNIL                          R77
     1202 SETTABLEKS                       R77 R76 K209 ["preselectedGroupId"]
     1204 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1206 CALL                             R77 1 1
     1207 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1209 CALL                             R74 2 1
     1210 JUMP                             ; [+1]
     1211 LOADNIL                          R74
     1212 SETTABLEKS                       R74 R73 K106 ["Ownership"]
     1214 MOVE                             R74 R22
     1215 JUMPIFNOT                        R74 ; [+58]
     1216 GETUPVAL                         R75 30
     1217 CALL                             R75 0 1
     1218 JUMPIFNOT                        R75 ; [+14]
     1219 GETUPVAL                         R74 24
     1220 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1222 GETUPVAL                         R75 23
     1223 GETTABLEKS                       R75 R75 K250 ["Divider"]
     1225 DUPTABLE                         R76 K251 [{"LayoutOrder"}]
     1226 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1228 CALL                             R77 1 1
     1229 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1231 CALL                             R74 2 1
     1232 JUMP                             ; [+41]
     1233 GETUPVAL                         R74 7
     1234 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1236 LOADK                            R75 K252 ["Frame"]
     1237 DUPTABLE                         R76 K253 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1238 LOADN                            R77 1
     1239 SETTABLEKS                       R77 R76 K153 ["BackgroundTransparency"]
     1241 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1243 CALL                             R77 1 1
     1244 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1246 GETIMPORT                        R77 K145 [UDim2.new]
     1248 LOADN                            R78 1
     1249 LOADN                            R79 0
     1250 LOADN                            R80 0
     1251 LOADN                            R81 20
     1252 CALL                             R77 4 1
     1253 SETTABLEKS                       R77 R76 K2 ["Size"]
     1255 DUPTABLE                         R77 K255 [{"Separator"}]
     1256 GETUPVAL                         R78 7
     1257 GETTABLEKS                       R78 R78 K94 ["createElement"]
     1259 GETUPVAL                         R79 31
     1260 DUPTABLE                         R80 K257 [{"Position"}]
     1261 GETIMPORT                        R81 K145 [UDim2.new]
     1263 LOADK                            R82 K2 ["Size"]
     1264 LOADN                            R83 0
     1265 LOADK                            R84 K2 ["Size"]
     1266 LOADN                            R85 0
     1267 CALL                             R81 4 1
     1268 SETTABLEKS                       R81 R80 K256 ["Position"]
     1270 CALL                             R78 2 1
     1271 SETTABLEKS                       R78 R77 K254 ["Separator"]
     1273 CALL                             R74 3 1
     1274 SETTABLEKS                       R74 R73 K107 ["DividerBase"]
     1276 JUMPIFNOT                        R42 ; [+24]
     1277 GETUPVAL                         R74 7
     1278 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1280 GETUPVAL                         R75 32
     1281 DUPTABLE                         R76 K263 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1282 GETTABLEKS                       R77 R2 K30 ["assetId"]
     1284 SETTABLEKS                       R77 R76 K259 ["AssetId"]
     1286 SETTABLEKS                       R14 R76 K18 ["AssetType"]
     1288 SETTABLEKS                       R6 R76 K260 ["AllowSelectPrivate"]
     1290 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1292 CALL                             R77 1 1
     1293 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1295 SETTABLEKS                       R15 R76 K261 ["IsAssetPublic"]
     1297 SETTABLEKS                       R28 R76 K262 ["OnSelected"]
     1299 CALL                             R74 2 1
     1300 JUMP                             ; [+1]
     1301 LOADNIL                          R74
     1302 SETTABLEKS                       R74 R73 K108 ["Sharing"]
     1304 JUMPIFNOT                        R42 ; [+59]
     1305 GETUPVAL                         R75 30
     1306 CALL                             R75 0 1
     1307 JUMPIFNOT                        R75 ; [+14]
     1308 GETUPVAL                         R74 24
     1309 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1311 GETUPVAL                         R75 23
     1312 GETTABLEKS                       R75 R75 K250 ["Divider"]
     1314 DUPTABLE                         R76 K251 [{"LayoutOrder"}]
     1315 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1317 CALL                             R77 1 1
     1318 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1320 CALL                             R74 2 1
     1321 JUMP                             ; [+43]
     1322 GETUPVAL                         R74 7
     1323 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1325 LOADK                            R75 K252 ["Frame"]
     1326 DUPTABLE                         R76 K253 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1327 LOADN                            R77 1
     1328 SETTABLEKS                       R77 R76 K153 ["BackgroundTransparency"]
     1330 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1332 CALL                             R77 1 1
     1333 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1335 GETIMPORT                        R77 K145 [UDim2.new]
     1337 LOADN                            R78 1
     1338 LOADN                            R79 0
     1339 LOADN                            R80 0
     1340 LOADN                            R81 20
     1341 CALL                             R77 4 1
     1342 SETTABLEKS                       R77 R76 K2 ["Size"]
     1344 DUPTABLE                         R77 K255 [{"Separator"}]
     1345 GETUPVAL                         R78 7
     1346 GETTABLEKS                       R78 R78 K94 ["createElement"]
     1348 GETUPVAL                         R79 31
     1349 DUPTABLE                         R80 K257 [{"Position"}]
     1350 GETIMPORT                        R81 K145 [UDim2.new]
     1352 LOADK                            R82 K2 ["Size"]
     1353 LOADN                            R83 0
     1354 LOADK                            R84 K2 ["Size"]
     1355 LOADN                            R85 0
     1356 CALL                             R81 4 1
     1357 SETTABLEKS                       R81 R80 K256 ["Position"]
     1359 CALL                             R78 2 1
     1360 SETTABLEKS                       R78 R77 K254 ["Separator"]
     1362 CALL                             R74 3 1
     1363 JUMP                             ; [+1]
     1364 LOADNIL                          R74
     1365 SETTABLEKS                       R74 R73 K109 ["SharingDivider"]
     1367 JUMPIFNOT                        R22 ; [+109]
     1368 GETUPVAL                         R74 7
     1369 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1371 GETUPVAL                         R75 13
     1372 DUPTABLE                         R76 K264 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1373 GETIMPORT                        R77 K235 [Enum.AutomaticSize.Y]
     1375 SETTABLEKS                       R77 R76 K162 ["AutomaticSize"]
     1377 GETIMPORT                        R77 K125 [Enum.FillDirection.Vertical]
     1379 SETTABLEKS                       R77 R76 K138 ["Layout"]
     1381 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1383 CALL                             R77 1 1
     1384 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1386 DUPTABLE                         R77 K265 [{"Top"}]
     1387 LOADN                            R78 20
     1388 SETTABLEKS                       R78 R77 K130 ["Top"]
     1390 SETTABLEKS                       R77 R76 K95 ["Padding"]
     1392 DUPTABLE                         R77 K268 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1393 GETUPVAL                         R78 7
     1394 GETTABLEKS                       R78 R78 K94 ["createElement"]
     1396 GETUPVAL                         R79 33
     1397 DUPTABLE                         R80 K270 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1398 GETTABLEKS                       R81 R2 K69 ["Localization"]
     1400 LOADK                            R83 K15 ["additionalImages"]
     1401 LOADK                            R84 K16 ["MaxThumbnails"]
     1402 NAMECALL                         R81 R81 K72 ["getText"]
     1404 CALL                             R81 3 1
     1405 SETTABLEKS                       R81 R80 K164 ["Text"]
     1407 GETTABLEKS                       R81 R1 K273 ["uploadResult"]
     1409 GETTABLEKS                       R81 R81 K274 ["text"]
     1411 SETTABLEKS                       R81 R80 K269 ["TextColor"]
     1413 GETUPVAL                         R81 14
     1414 GETTABLEKS                       R81 R81 K275 ["FONT_SIZE_LARGE"]
     1416 SETTABLEKS                       R81 R80 K169 ["TextSize"]
     1418 GETIMPORT                        R81 K145 [UDim2.new]
     1420 LOADN                            R82 1
     1421 LOADN                            R83 0
     1422 LOADN                            R84 0
     1423 LOADN                            R85 24
     1424 CALL                             R81 4 1
     1425 SETTABLEKS                       R81 R80 K2 ["Size"]
     1427 NAMECALL                         R81 R60 K143 ["getNextOrder"]
     1429 CALL                             R81 1 1
     1430 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1432 CALL                             R78 2 1
     1433 SETTABLEKS                       R78 R77 K266 ["CreatorStoreConfigurationText"]
     1435 GETUPVAL                         R78 7
     1436 GETTABLEKS                       R78 R78 K94 ["createElement"]
     1438 GETUPVAL                         R79 34
     1439 DUPTABLE                         R80 K277 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1440 SETTABLEKS                       R23 R80 K164 ["Text"]
     1442 GETTABLEKS                       R81 R1 K273 ["uploadResult"]
     1444 GETTABLEKS                       R81 R81 K278 ["link"]
     1446 SETTABLEKS                       R81 R80 K269 ["TextColor"]
     1448 GETUPVAL                         R81 14
     1449 GETTABLEKS                       R81 R81 K275 ["FONT_SIZE_LARGE"]
     1451 SETTABLEKS                       R81 R80 K169 ["TextSize"]
     1453 GETIMPORT                        R81 K145 [UDim2.new]
     1455 LOADN                            R82 1
     1456 LOADN                            R83 0
     1457 LOADN                            R84 0
     1458 LOADN                            R85 24
     1459 CALL                             R81 4 1
     1460 SETTABLEKS                       R81 R80 K2 ["Size"]
     1462 NAMECALL                         R81 R60 K143 ["getNextOrder"]
     1464 CALL                             R81 1 1
     1465 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1467 NEWCLOSURE                       R81 P4
     1468 CAPTURE                          UPVAL U35
     1469 CAPTURE                          VAL R23
     1470 SETTABLEKS                       R81 R80 K276 ["OnClick"]
     1472 CALL                             R78 2 1
     1473 SETTABLEKS                       R78 R77 K267 ["CreatorStoreConfigurationLink"]
     1475 CALL                             R74 3 1
     1476 JUMP                             ; [+1]
     1477 LOADNIL                          R74
     1478 SETTABLEKS                       R74 R73 K110 ["CreatorStoreConfigurationFrame"]
     1480 MOVE                             R74 R40
     1481 JUMPIFNOT                        R74 ; [+27]
     1482 GETUPVAL                         R74 7
     1483 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1485 GETUPVAL                         R75 36
     1486 DUPTABLE                         R76 K282 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1487 LOADK                            R79 K85 ["General"]
     1488 LOADK                            R80 K27 ["Animation"]
     1489 NAMECALL                         R77 R59 K72 ["getText"]
     1491 CALL                             R77 3 1
     1492 SETTABLEKS                       R77 R76 K99 ["Title"]
     1494 LOADN                            R77 80
     1495 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
     1497 SETTABLEKS                       R11 R76 K279 ["CommentEnabled"]
     1499 SETTABLEKS                       R12 R76 K280 ["CommentOn"]
     1501 SETTABLEKS                       R30 R76 K281 ["ToggleCallback"]
     1503 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1505 CALL                             R77 1 1
     1506 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1508 CALL                             R74 2 1
     1509 SETTABLEKS                       R74 R73 K111 ["Comment"]
     1511 MOVE                             R74 R21
     1512 JUMPIFNOT                        R74 ; [+31]
     1513 GETUPVAL                         R74 7
     1514 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1516 GETUPVAL                         R75 37
     1517 DUPTABLE                         R76 K284 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1518 LOADK                            R79 K85 ["General"]
     1519 LOADK                            R80 K112 ["DeleteLocal"]
     1520 NAMECALL                         R77 R59 K72 ["getText"]
     1522 CALL                             R77 3 1
     1523 SETTABLEKS                       R77 R76 K99 ["Title"]
     1525 GETUPVAL                         R78 11
     1526 CALL                             R78 0 1
     1527 JUMPIFNOT                        R78 ; [+3]
     1528 JUMPIFNOT                        R21 ; [+2]
     1529 LOADN                            R77 120
     1530 JUMP                             ; [+1]
     1531 LOADN                            R77 80
     1532 SETTABLEKS                       R77 R76 K181 ["TotalHeight"]
     1534 SETTABLEKS                       R13 R76 K112 ["DeleteLocal"]
     1536 SETTABLEKS                       R31 R76 K281 ["ToggleCallback"]
     1538 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1540 CALL                             R77 1 1
     1541 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1543 CALL                             R74 2 1
     1544 SETTABLEKS                       R74 R73 K112 ["DeleteLocal"]
     1546 GETUPVAL                         R74 11
     1547 CALL                             R74 0 1
     1548 JUMPIFNOT                        R74 ; [+71]
     1549 MOVE                             R74 R21
     1550 JUMPIFNOT                        R74 ; [+69]
     1551 GETUPVAL                         R74 24
     1552 GETTABLEKS                       R74 R74 K94 ["createElement"]
     1554 GETUPVAL                         R75 23
     1555 GETTABLEKS                       R75 R75 K212 ["View"]
     1557 DUPTABLE                         R76 K285 [{"tag", "LayoutOrder"}]
     1558 LOADK                            R77 K30 ["assetId"]
     1559 SETTABLEKS                       R77 R76 K213 ["tag"]
     1561 NAMECALL                         R77 R60 K143 ["getNextOrder"]
     1563 CALL                             R77 1 1
     1564 SETTABLEKS                       R77 R76 K3 ["LayoutOrder"]
     1566 DUPTABLE                         R77 K288 [{"Section"}]
     1567 GETUPVAL                         R78 24
     1568 GETTABLEKS                       R78 R78 K94 ["createElement"]
     1570 GETUPVAL                         R79 27
     1571 DUPTABLE                         R80 K290 [{"LayoutOrder", "Title", "AutomaticContentHeight", "Size"}]
     1572 LOADN                            R81 1
     1573 SETTABLEKS                       R81 R80 K3 ["LayoutOrder"]
     1575 LOADK                            R83 K85 ["General"]
     1576 LOADK                            R84 K35 ["getCreatorDashboardBaseUrl"]
     1577 NAMECALL                         R81 R59 K72 ["getText"]
     1579 CALL                             R81 3 1
     1580 SETTABLEKS                       R81 R80 K99 ["Title"]
     1582 LOADB                            R81 1
     1583 SETTABLEKS                       R81 R80 K289 ["AutomaticContentHeight"]
     1585 GETIMPORT                        R81 K145 [UDim2.new]
     1587 LOADN                            R82 1
     1588 LOADN                            R83 0
     1589 LOADN                            R84 0
     1590 LOADN                            R85 0
     1591 CALL                             R81 4 1
     1592 SETTABLEKS                       R81 R80 K2 ["Size"]
     1594 DUPTABLE                         R81 K293 [{"AnimationCheckboxCol"}]
     1595 GETUPVAL                         R82 24
     1596 GETTABLEKS                       R82 R82 K94 ["createElement"]
     1598 GETUPVAL                         R83 38
     1599 DUPTABLE                         R84 K296 [{"LayoutOrder", "Localization", "OnSelectionChanged", "OnSectionValidityChanged"}]
     1600 LOADN                            R85 1
     1601 SETTABLEKS                       R85 R84 K3 ["LayoutOrder"]
     1603 SETTABLEKS                       R59 R84 K69 ["Localization"]
     1605 GETTABLEKS                       R85 R2 K297 ["onAnimationSelectionChanged"]
     1607 SETTABLEKS                       R85 R84 K294 ["OnSelectionChanged"]
     1609 GETTABLEKS                       R85 R2 K298 ["onanimationSectionValidityChanged"]
     1611 SETTABLEKS                       R85 R84 K295 ["OnSectionValidityChanged"]
     1613 CALL                             R82 2 1
     1614 SETTABLEKS                       R82 R81 K292 ["AnimationCheckboxCol"]
     1616 CALL                             R78 3 1
     1617 SETTABLEKS                       R78 R77 K287 ["Section"]
     1619 CALL                             R74 3 1
     1620 SETTABLEKS                       R74 R73 K113 ["AnimationPackProperties"]
     1622 CALL                             R70 3 -1
     1623 RETURN                           R70 -1

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
      110 GETTABLEKS                       R23 R16 K33 ["Separator"]
      112 GETIMPORT                        R24 K11 [require]
      114 GETTABLEKS                       R25 R1 K7 ["Src"]
      116 GETTABLEKS                       R25 R25 K34 ["Components"]
      118 GETTABLEKS                       R25 R25 K35 ["StyledScrollingFrame"]
      120 CALL                             R24 1 1
      121 GETIMPORT                        R25 K11 [require]
      123 GETTABLEKS                       R26 R3 K36 ["Dash"]
      125 CALL                             R25 1 1
      126 GETTABLEKS                       R26 R25 K37 ["map"]
      128 GETIMPORT                        R27 K11 [require]
      130 GETTABLEKS                       R28 R2 K38 ["createAssetMediaMetadata"]
      132 CALL                             R27 1 1
      133 GETIMPORT                        R28 K11 [require]
      135 GETTABLEKS                       R29 R2 K39 ["LayoutOrderIterator"]
      137 CALL                             R28 1 1
      138 GETIMPORT                        R29 K11 [require]
      140 GETTABLEKS                       R30 R2 K40 ["AssetConfigConstants"]
      142 CALL                             R29 1 1
      143 GETIMPORT                        R30 K11 [require]
      145 GETTABLEKS                       R31 R2 K41 ["AssetConfigUtil"]
      147 CALL                             R30 1 1
      148 GETIMPORT                        R31 K11 [require]
      150 GETTABLEKS                       R32 R2 K42 ["Constants"]
      152 CALL                             R31 1 1
      153 GETIMPORT                        R32 K11 [require]
      155 GETTABLEKS                       R33 R1 K7 ["Src"]
      157 GETTABLEKS                       R33 R33 K8 ["Util"]
      159 GETTABLEKS                       R33 R33 K43 ["Images"]
      161 CALL                             R32 1 1
      162 GETIMPORT                        R33 K11 [require]
      164 GETTABLEKS                       R34 R1 K7 ["Src"]
      166 GETTABLEKS                       R34 R34 K44 ["Localization"]
      168 GETTABLEKS                       R34 R34 K45 ["getLocalizedAssetTextMap"]
      170 CALL                             R33 1 1
      171 GETIMPORT                        R34 K11 [require]
      173 GETTABLEKS                       R35 R2 K46 ["ToolboxUtilities"]
      175 CALL                             R34 1 1
      176 GETIMPORT                        R35 K11 [require]
      178 GETTABLEKS                       R36 R2 K47 ["FiatTempConstants"]
      180 CALL                             R35 1 1
      181 GETIMPORT                        R36 K11 [require]
      183 GETTABLEKS                       R37 R2 K48 ["Urls"]
      185 CALL                             R36 1 1
      186 GETTABLEKS                       R37 R1 K7 ["Src"]
      188 GETTABLEKS                       R37 R37 K34 ["Components"]
      190 GETTABLEKS                       R37 R37 K49 ["AssetConfiguration"]
      192 GETIMPORT                        R38 K11 [require]
      194 GETTABLEKS                       R39 R1 K7 ["Src"]
      196 GETTABLEKS                       R39 R39 K50 ["Actions"]
      198 GETTABLEKS                       R39 R39 K51 ["SetUploadAssetValidationStatus"]
      200 CALL                             R38 1 1
      201 GETIMPORT                        R39 K11 [require]
      203 GETTABLEKS                       R40 R37 K52 ["ConfigTextField"]
      205 CALL                             R39 1 1
      206 GETIMPORT                        R40 K11 [require]
      208 GETTABLEKS                       R41 R37 K53 ["ConfigAccess"]
      210 CALL                             R40 1 1
      211 GETIMPORT                        R41 K11 [require]
      213 GETTABLEKS                       R42 R37 K54 ["ConfigDeleteLocal"]
      215 CALL                             R41 1 1
      216 GETIMPORT                        R42 K11 [require]
      218 GETTABLEKS                       R43 R37 K55 ["ConfigCopy"]
      220 CALL                             R42 1 1
      221 GETIMPORT                        R43 K11 [require]
      223 GETTABLEKS                       R44 R37 K56 ["ConfigAssetType"]
      225 CALL                             R43 1 1
      226 GETIMPORT                        R44 K11 [require]
      228 GETTABLEKS                       R45 R37 K57 ["ConfigComment"]
      230 CALL                             R44 1 1
      231 GETIMPORT                        R45 K11 [require]
      233 GETTABLEKS                       R46 R37 K58 ["ConfigSharing"]
      235 CALL                             R45 1 1
      236 GETIMPORT                        R46 K11 [require]
      238 GETTABLEKS                       R47 R37 K59 ["ConfigSectionWrapper"]
      240 CALL                             R46 1 1
      241 GETIMPORT                        R47 K11 [require]
      243 GETTABLEKS                       R48 R37 K60 ["Header"]
      245 CALL                             R47 1 1
      246 GETIMPORT                        R48 K11 [require]
      248 GETTABLEKS                       R49 R37 K61 ["AnimationCheckboxCol"]
      250 CALL                             R48 1 1
      251 GETIMPORT                        R49 K11 [require]
      253 GETTABLEKS                       R50 R37 K62 ["FiatPriceComponent"]
      255 CALL                             R49 1 1
      256 GETIMPORT                        R50 K11 [require]
      258 GETTABLEKS                       R51 R37 K63 ["DataConsentToggle"]
      260 CALL                             R50 1 1
      261 GETIMPORT                        R51 K11 [require]
      263 GETTABLEKS                       R52 R37 K64 ["UGCBundleValidation"]
      265 CALL                             R51 1 1
      266 GETIMPORT                        R52 K11 [require]
      268 GETTABLEKS                       R53 R1 K7 ["Src"]
      270 GETTABLEKS                       R53 R53 K8 ["Util"]
      272 GETTABLEKS                       R53 R53 K65 ["ColorPicker"]
      274 CALL                             R52 1 1
      275 GETIMPORT                        R53 K11 [require]
      277 GETTABLEKS                       R54 R1 K7 ["Src"]
      279 GETTABLEKS                       R54 R54 K66 ["Flags"]
      281 GETTABLEKS                       R54 R54 K67 ["getFFlagEnableUploadingMakeup"]
      283 CALL                             R53 1 1
      284 GETIMPORT                        R54 K11 [require]
      286 GETTABLEKS                       R55 R1 K7 ["Src"]
      288 GETTABLEKS                       R55 R55 K66 ["Flags"]
      290 GETTABLEKS                       R55 R55 K68 ["getFFlagToolboxAssetConfigGroupOwnership"]
      292 CALL                             R54 1 1
      293 GETIMPORT                        R55 K11 [require]
      295 GETTABLEKS                       R56 R1 K7 ["Src"]
      297 GETTABLEKS                       R56 R56 K66 ["Flags"]
      299 GETTABLEKS                       R56 R56 K69 ["getFFlagToolboxAssetConfigFoundationMigration"]
      301 CALL                             R55 1 1
      302 GETIMPORT                        R56 K11 [require]
      304 GETTABLEKS                       R57 R1 K7 ["Src"]
      306 GETTABLEKS                       R57 R57 K66 ["Flags"]
      308 GETTABLEKS                       R57 R57 K70 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      310 CALL                             R56 1 1
      311 GETIMPORT                        R57 K11 [require]
      313 GETTABLEKS                       R58 R1 K7 ["Src"]
      315 GETTABLEKS                       R58 R58 K66 ["Flags"]
      317 GETTABLEKS                       R58 R58 K71 ["getFFlagEnableUploadingAvatarAnimations"]
      319 CALL                             R57 1 1
      320 GETIMPORT                        R58 K11 [require]
      322 GETTABLEKS                       R59 R1 K7 ["Src"]
      324 GETTABLEKS                       R59 R59 K66 ["Flags"]
      326 GETTABLEKS                       R59 R59 K72 ["getFFlagFixBundleValidationTitle"]
      328 CALL                             R58 1 1
      329 GETIMPORT                        R59 K11 [require]
      331 GETTABLEKS                       R60 R1 K7 ["Src"]
      333 GETTABLEKS                       R60 R60 K66 ["Flags"]
      335 GETTABLEKS                       R60 R60 K73 ["getFFlagDividerFoundationMigration"]
      337 CALL                             R59 1 1
      338 GETIMPORT                        R60 K11 [require]
      340 GETTABLEKS                       R61 R1 K7 ["Src"]
      342 GETTABLEKS                       R61 R61 K74 ["Types"]
      344 GETTABLEKS                       R61 R61 K75 ["MarketplaceFiatServiceTypes"]
      346 CALL                             R60 1 1
      347 GETIMPORT                        R61 K11 [require]
      349 GETTABLEKS                       R62 R1 K7 ["Src"]
      351 GETTABLEKS                       R62 R62 K50 ["Actions"]
      353 GETTABLEKS                       R62 R62 K76 ["SetFieldError"]
      355 CALL                             R61 1 1
      356 GETIMPORT                        R62 K11 [require]
      358 GETTABLEKS                       R63 R1 K7 ["Src"]
      360 GETTABLEKS                       R63 R63 K8 ["Util"]
      362 GETTABLEKS                       R63 R63 K77 ["PageInfoHelper"]
      364 CALL                             R62 1 1
      365 GETTABLEKS                       R63 R12 K78 ["PureComponent"]
      367 LOADK                            R65 K79 ["PublishAsset"]
      368 NAMECALL                         R63 R63 K80 ["extend"]
      370 CALL                             R63 2 1
      371 DUPCLOSURE                       R64 K81 [PROTO_9]
      372 CAPTURE                          VAL R29
      373 CAPTURE                          VAL R12
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R34
      376 CAPTURE                          VAL R9
      377 SETTABLEKS                       R64 R63 K82 ["init"]
      379 DUPCLOSURE                       R64 K83 [PROTO_10]
      380 SETTABLEKS                       R64 R63 K84 ["bumpCanvas"]
      382 DUPCLOSURE                       R64 K85 [PROTO_11]
      383 CAPTURE                          VAL R30
      384 CAPTURE                          VAL R28
      385 CAPTURE                          VAL R55
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R6
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R18
      390 CAPTURE                          VAL R31
      391 CAPTURE                          VAL R33
      392 SETTABLEKS                       R64 R63 K86 ["getMissingOptionalPartsMessage"]
      394 DUPCLOSURE                       R64 K87 [PROTO_12]
      395 CAPTURE                          VAL R30
      396 CAPTURE                          VAL R28
      397 CAPTURE                          VAL R55
      398 CAPTURE                          VAL R11
      399 CAPTURE                          VAL R6
      400 CAPTURE                          VAL R12
      401 CAPTURE                          VAL R18
      402 CAPTURE                          VAL R31
      403 SETTABLEKS                       R64 R63 K88 ["getUnknownMeshPartMessage"]
      405 DUPCLOSURE                       R64 K89 [PROTO_18]
      406 CAPTURE                          VAL R29
      407 CAPTURE                          VAL R30
      408 CAPTURE                          VAL R36
      409 CAPTURE                          VAL R34
      410 CAPTURE                          VAL R10
      411 CAPTURE                          VAL R7
      412 CAPTURE                          VAL R28
      413 CAPTURE                          VAL R12
      414 CAPTURE                          VAL R26
      415 CAPTURE                          VAL R27
      416 CAPTURE                          VAL R58
      417 CAPTURE                          VAL R57
      418 CAPTURE                          VAL R24
      419 CAPTURE                          VAL R22
      420 CAPTURE                          VAL R31
      421 CAPTURE                          VAL R32
      422 CAPTURE                          VAL R47
      423 CAPTURE                          VAL R39
      424 CAPTURE                          VAL R56
      425 CAPTURE                          VAL R43
      426 CAPTURE                          VAL R40
      427 CAPTURE                          VAL R54
      428 CAPTURE                          VAL R53
      429 CAPTURE                          VAL R6
      430 CAPTURE                          VAL R11
      431 CAPTURE                          VAL R55
      432 CAPTURE                          VAL R52
      433 CAPTURE                          VAL R46
      434 CAPTURE                          VAL R51
      435 CAPTURE                          VAL R50
      436 CAPTURE                          VAL R59
      437 CAPTURE                          VAL R23
      438 CAPTURE                          VAL R45
      439 CAPTURE                          VAL R18
      440 CAPTURE                          VAL R21
      441 CAPTURE                          VAL R0
      442 CAPTURE                          VAL R44
      443 CAPTURE                          VAL R41
      444 CAPTURE                          VAL R48
      445 SETTABLEKS                       R64 R63 K90 ["render"]
      447 DUPCLOSURE                       R64 K91 [PROTO_19]
      448 CAPTURE                          VAL R9
      449 DUPCLOSURE                       R65 K92 [PROTO_22]
      450 CAPTURE                          VAL R61
      451 CAPTURE                          VAL R29
      452 CAPTURE                          VAL R38
      453 MOVE                             R66 R15
      454 DUPTABLE                         R67 K94 [{"Localization", "Stylizer"}]
      455 GETTABLEKS                       R68 R14 K44 ["Localization"]
      457 SETTABLEKS                       R68 R67 K44 ["Localization"]
      459 GETTABLEKS                       R68 R14 K93 ["Stylizer"]
      461 SETTABLEKS                       R68 R67 K93 ["Stylizer"]
      463 CALL                             R66 1 1
      464 MOVE                             R67 R63
      465 CALL                             R66 1 1
      466 MOVE                             R63 R66
      467 GETTABLEKS                       R66 R13 K95 ["connect"]
      469 MOVE                             R67 R64
      470 MOVE                             R68 R65
      471 CALL                             R66 2 1
      472 MOVE                             R67 R63
      473 CALL                             R66 1 -1
      474 RETURN                           R66 -1
