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
      218 GETUPVAL                         R58 1
      219 GETTABLEKS                       R58 R58 K69 ["isReadyForSale"]
      221 MOVE                             R59 R49
      222 CALL                             R58 1 1
      223 JUMPIF                           R58 ; [+7]
      224 GETUPVAL                         R58 1
      225 GETTABLEKS                       R58 R58 K70 ["isBuyableMarketplaceAsset"]
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
      254 GETUPVAL                         R62 7
      255 GETTABLEKS                       R62 R62 K77 ["new"]
      257 CALL                             R62 0 1
      258 GETTABLEKS                       R63 R1 K78 ["publishAsset"]
      260 LOADN                            R64 80
      261 JUMPIF                           R5 ; [+1]
      262 ADDK                             R64 R64 K79 [60]
      263 NEWTABLE                         R65 4 0
      265 SETTABLEKS                       R3 R65 K2 ["Size"]
      267 SETTABLEKS                       R4 R65 K3 ["LayoutOrder"]
      269 GETUPVAL                         R66 8
      270 GETTABLEKS                       R66 R66 K80 ["Ref"]
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
      306 GETUPVAL                         R72 1
      307 GETTABLEKS                       R72 R72 K85 ["isUGCBundleType"]
      309 MOVE                             R73 R14
      310 CALL                             R72 1 1
      311 MOVE                             R68 R72
      312 GETUPVAL                         R72 11
      313 CALL                             R72 0 1
      314 JUMPIFNOT                        R72 ; [+36]
      315 GETUPVAL                         R72 1
      316 GETTABLEKS                       R72 R72 K86 ["isUGCBodyBundleType"]
      318 MOVE                             R73 R14
      319 CALL                             R72 1 1
      320 JUMPIFNOT                        R72 ; [+7]
      321 LOADK                            R74 K87 ["General"]
      322 LOADK                            R75 K88 ["BodyValidation"]
      323 NAMECALL                         R72 R61 K74 ["getText"]
      325 CALL                             R72 3 1
      326 MOVE                             R69 R72
      327 JUMP                             ; [+29]
      328 GETUPVAL                         R72 12
      329 CALL                             R72 0 1
      330 JUMPIFNOT                        R72 ; [+13]
      331 GETUPVAL                         R72 1
      332 GETTABLEKS                       R72 R72 K89 ["isAnimationBundleType"]
      334 MOVE                             R73 R14
      335 CALL                             R72 1 1
      336 JUMPIFNOT                        R72 ; [+7]
      337 LOADK                            R74 K87 ["General"]
      338 LOADK                            R75 K90 ["AvatarAnimationsValidation"]
      339 NAMECALL                         R72 R61 K74 ["getText"]
      341 CALL                             R72 3 1
      342 MOVE                             R69 R72
      343 JUMP                             ; [+13]
      344 LOADK                            R74 K87 ["General"]
      345 LOADK                            R75 K91 ["ShoeValidation"]
      346 NAMECALL                         R72 R61 K74 ["getText"]
      348 CALL                             R72 3 1
      349 MOVE                             R69 R72
      350 JUMP                             ; [+6]
      351 LOADK                            R74 K87 ["General"]
      352 LOADK                            R75 K88 ["BodyValidation"]
      353 NAMECALL                         R72 R61 K74 ["getText"]
      355 CALL                             R72 3 1
      356 MOVE                             R69 R72
      357 GETTABLEKS                       R72 R2 K92 ["instances"]
      359 JUMPIFNOT                        R72 ; [+20]
      360 GETTABLEKS                       R75 R2 K92 ["instances"]
      362 GETTABLEN                        R74 R75 1
      363 GETTABLEKS                       R75 R2 K93 ["allowedBundleTypeSettings"]
      365 MOVE                             R76 R14
      366 MOVE                             R77 R1
      367 NAMECALL                         R72 R0 K94 ["getMissingOptionalPartsMessage"]
      369 CALL                             R72 5 1
      370 MOVE                             R70 R72
      371 GETTABLEKS                       R75 R2 K92 ["instances"]
      373 GETTABLEN                        R74 R75 1
      374 MOVE                             R75 R14
      375 MOVE                             R76 R1
      376 NAMECALL                         R72 R0 K95 ["getUnknownMeshPartMessage"]
      378 CALL                             R72 4 1
      379 MOVE                             R71 R72
      380 GETUPVAL                         R72 8
      381 GETTABLEKS                       R72 R72 K96 ["createElement"]
      383 GETUPVAL                         R73 13
      384 MOVE                             R74 R65
      385 DUPTABLE                         R75 K116 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      386 GETUPVAL                         R76 8
      387 GETTABLEKS                       R76 R76 K96 ["createElement"]
      389 LOADK                            R77 K117 ["UIPadding"]
      390 DUPTABLE                         R78 K122 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      391 GETIMPORT                        R79 K124 [UDim.new]
      393 LOADN                            R80 0
      394 LOADN                            R81 24
      395 CALL                             R79 2 1
      396 SETTABLEKS                       R79 R78 K118 ["PaddingTop"]
      398 GETIMPORT                        R79 K124 [UDim.new]
      400 LOADN                            R80 0
      401 LOADN                            R81 24
      402 CALL                             R79 2 1
      403 SETTABLEKS                       R79 R78 K119 ["PaddingBottom"]
      405 GETIMPORT                        R79 K124 [UDim.new]
      407 LOADN                            R80 0
      408 LOADN                            R81 24
      409 CALL                             R79 2 1
      410 SETTABLEKS                       R79 R78 K120 ["PaddingLeft"]
      412 GETIMPORT                        R79 K124 [UDim.new]
      414 LOADN                            R80 0
      415 LOADN                            R81 24
      416 CALL                             R79 2 1
      417 SETTABLEKS                       R79 R78 K121 ["PaddingRight"]
      419 CALL                             R76 2 1
      420 SETTABLEKS                       R76 R75 K97 ["Padding"]
      422 GETUPVAL                         R76 8
      423 GETTABLEKS                       R76 R76 K96 ["createElement"]
      425 LOADK                            R77 K98 ["UIListLayout"]
      426 NEWTABLE                         R78 8 0
      428 GETIMPORT                        R79 K127 [Enum.FillDirection.Vertical]
      430 SETTABLEKS                       R79 R78 K125 ["FillDirection"]
      432 GETIMPORT                        R79 K130 [Enum.HorizontalAlignment.Left]
      434 SETTABLEKS                       R79 R78 K128 ["HorizontalAlignment"]
      436 GETIMPORT                        R79 K133 [Enum.VerticalAlignment.Top]
      438 SETTABLEKS                       R79 R78 K131 ["VerticalAlignment"]
      440 GETIMPORT                        R79 K135 [Enum.SortOrder.LayoutOrder]
      442 SETTABLEKS                       R79 R78 K134 ["SortOrder"]
      444 GETIMPORT                        R79 K124 [UDim.new]
      446 LOADN                            R80 0
      447 LOADN                            R81 0
      448 CALL                             R79 2 1
      449 SETTABLEKS                       R79 R78 K97 ["Padding"]
      451 GETUPVAL                         R79 8
      452 GETTABLEKS                       R79 R79 K136 ["Change"]
      454 GETTABLEKS                       R79 R79 K137 ["AbsoluteContentSize"]
      456 GETTABLEKS                       R80 R0 K138 ["refreshCanvas"]
      458 JUMPIF                           R80 ; [+3]
      459 NEWCLOSURE                       R80 P1
      460 CAPTURE                          VAL R0
      461 CAPTURE                          VAL R3
      462 SETTABLE                         R80 R78 R79
      463 GETUPVAL                         R79 8
      464 GETTABLEKS                       R79 R79 K80 ["Ref"]
      466 GETTABLEKS                       R80 R0 K139 ["listLayoutRef"]
      468 SETTABLE                         R80 R78 R79
      469 CALL                             R76 2 1
      470 SETTABLEKS                       R76 R75 K98 ["UIListLayout"]
      472 JUMPIF                           R45 ; [+133]
      473 JUMPIFNOT                        R19 ; [+132]
      474 JUMPIFNOT                        R46 ; [+131]
      475 GETUPVAL                         R76 8
      476 GETTABLEKS                       R76 R76 K96 ["createElement"]
      478 GETUPVAL                         R77 14
      479 DUPTABLE                         R78 K142 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
      480 GETIMPORT                        R79 K130 [Enum.HorizontalAlignment.Left]
      482 SETTABLEKS                       R79 R78 K128 ["HorizontalAlignment"]
      484 GETIMPORT                        R79 K144 [Enum.FillDirection.Horizontal]
      486 SETTABLEKS                       R79 R78 K140 ["Layout"]
      488 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      490 CALL                             R79 1 1
      491 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      493 GETIMPORT                        R79 K147 [UDim2.new]
      495 LOADN                            R80 1
      496 LOADN                            R81 0
      497 LOADN                            R82 0
      498 GETUPVAL                         R83 15
      499 GETTABLEKS                       R83 R83 K148 ["FONT_SIZE_TITLE"]
      501 CALL                             R79 4 1
      502 SETTABLEKS                       R79 R78 K2 ["Size"]
      504 DUPTABLE                         R79 K150 [{"Bottom"}]
      505 LOADN                            R80 30
      506 SETTABLEKS                       R80 R79 K149 ["Bottom"]
      508 SETTABLEKS                       R79 R78 K97 ["Padding"]
      510 LOADN                            R79 5
      511 SETTABLEKS                       R79 R78 K141 ["Spacing"]
      513 GETIMPORT                        R79 K133 [Enum.VerticalAlignment.Top]
      515 SETTABLEKS                       R79 R78 K131 ["VerticalAlignment"]
      517 DUPTABLE                         R79 K153 [{"Icon", "WarningText"}]
      518 GETUPVAL                         R80 8
      519 GETTABLEKS                       R80 R80 K96 ["createElement"]
      521 LOADK                            R81 K154 ["ImageLabel"]
      522 DUPTABLE                         R82 K158 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      523 LOADN                            R83 1
      524 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      526 LOADN                            R83 1
      527 SETTABLEKS                       R83 R82 K155 ["BackgroundTransparency"]
      529 GETUPVAL                         R83 16
      530 GETTABLEKS                       R83 R83 K159 ["WARNING_ICON"]
      532 SETTABLEKS                       R83 R82 K156 ["Image"]
      534 GETTABLEKS                       R83 R63 K160 ["warningIconColor"]
      536 SETTABLEKS                       R83 R82 K157 ["ImageColor3"]
      538 GETIMPORT                        R83 K162 [UDim2.fromOffset]
      540 LOADN                            R84 24
      541 LOADN                            R85 24
      542 CALL                             R83 2 1
      543 SETTABLEKS                       R83 R82 K2 ["Size"]
      545 CALL                             R80 2 1
      546 SETTABLEKS                       R80 R79 K151 ["Icon"]
      548 GETUPVAL                         R80 8
      549 GETTABLEKS                       R80 R80 K96 ["createElement"]
      551 LOADK                            R81 K163 ["TextLabel"]
      552 DUPTABLE                         R82 K172 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      553 GETIMPORT                        R83 K174 [Enum.AutomaticSize.XY]
      555 SETTABLEKS                       R83 R82 K164 ["AutomaticSize"]
      557 LOADN                            R83 2
      558 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      560 LOADN                            R83 1
      561 SETTABLEKS                       R83 R82 K155 ["BackgroundTransparency"]
      563 GETUPVAL                         R83 15
      564 GETTABLEKS                       R83 R83 K175 ["FONT"]
      566 SETTABLEKS                       R83 R82 K165 ["Font"]
      568 GETIMPORT                        R83 K147 [UDim2.new]
      570 LOADN                            R84 1
      571 LOADN                            R85 0
      572 LOADN                            R86 1
      573 LOADN                            R87 0
      574 CALL                             R83 4 1
      575 SETTABLEKS                       R83 R82 K2 ["Size"]
      577 SETTABLEKS                       R60 R82 K166 ["Text"]
      579 LOADB                            R83 1
      580 SETTABLEKS                       R83 R82 K167 ["TextWrapped"]
      582 GETTABLEKS                       R83 R1 K176 ["assetConfig"]
      584 GETTABLEKS                       R83 R83 K177 ["warningColor"]
      586 SETTABLEKS                       R83 R82 K168 ["TextColor3"]
      588 GETIMPORT                        R83 K178 [Enum.TextXAlignment.Left]
      590 SETTABLEKS                       R83 R82 K169 ["TextXAlignment"]
      592 GETIMPORT                        R83 K180 [Enum.TextYAlignment.Center]
      594 SETTABLEKS                       R83 R82 K170 ["TextYAlignment"]
      596 GETUPVAL                         R83 15
      597 GETTABLEKS                       R83 R83 K148 ["FONT_SIZE_TITLE"]
      599 SETTABLEKS                       R83 R82 K171 ["TextSize"]
      601 CALL                             R80 2 1
      602 SETTABLEKS                       R80 R79 K152 ["WarningText"]
      604 CALL                             R76 3 1
      605 JUMP                             ; [+1]
      606 LOADNIL                          R76
      607 SETTABLEKS                       R76 R75 K99 ["ModelWarningFrame"]
      609 JUMPIFNOT                        R20 ; [+19]
      610 GETUPVAL                         R76 8
      611 GETTABLEKS                       R76 R76 K96 ["createElement"]
      613 GETUPVAL                         R77 17
      614 DUPTABLE                         R78 K181 [{"LayoutOrder", "Title"}]
      615 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      617 CALL                             R79 1 1
      618 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      620 LOADK                            R81 K75 ["AssetConfig"]
      621 LOADK                            R82 K182 ["PublishPluginHeader"]
      622 NAMECALL                         R79 R61 K74 ["getText"]
      624 CALL                             R79 3 1
      625 SETTABLEKS                       R79 R78 K101 ["Title"]
      627 CALL                             R76 2 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R76
      630 SETTABLEKS                       R76 R75 K100 ["Header"]
      632 GETUPVAL                         R76 8
      633 GETTABLEKS                       R76 R76 K96 ["createElement"]
      635 GETUPVAL                         R77 18
      636 DUPTABLE                         R78 K189 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      637 LOADK                            R81 K87 ["General"]
      638 LOADK                            R82 K101 ["Title"]
      639 NAMECALL                         R79 R61 K74 ["getText"]
      641 CALL                             R79 3 1
      642 SETTABLEKS                       R79 R78 K101 ["Title"]
      644 LOADN                            R79 100
      645 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
      647 GETUPVAL                         R79 0
      648 GETTABLEKS                       R79 R79 K190 ["NAME_CHARACTER_LIMIT"]
      650 SETTABLEKS                       R79 R78 K184 ["MaxCount"]
      652 SETTABLEKS                       R24 R78 K185 ["TextChangeCallBack"]
      654 SETTABLEKS                       R7 R78 K186 ["TextContent"]
      656 GETUPVAL                         R80 19
      657 CALL                             R80 0 1
      658 JUMPIFNOT                        R80 ; [+3]
      659 GETTABLEKS                       R79 R2 K191 ["showNameRequiredError"]
      661 JUMP                             ; [+1]
      662 LOADNIL                          R79
      663 SETTABLEKS                       R79 R78 K187 ["showRequiredError"]
      665 NEWCLOSURE                       R79 P2
      666 CAPTURE                          VAL R0
      667 CAPTURE                          UPVAL U0
      668 SETTABLEKS                       R79 R78 K188 ["ErrorCallback"]
      670 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      672 CALL                             R79 1 1
      673 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      675 CALL                             R76 2 1
      676 SETTABLEKS                       R76 R75 K101 ["Title"]
      678 GETUPVAL                         R76 8
      679 GETTABLEKS                       R76 R76 K96 ["createElement"]
      681 GETUPVAL                         R77 18
      682 DUPTABLE                         R78 K193 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      683 LOADK                            R81 K194 ["AssetConfigDescription"]
      684 LOADK                            R82 K195 ["AddRobloxLinks"]
      685 NAMECALL                         R79 R61 K74 ["getText"]
      687 CALL                             R79 3 1
      688 SETTABLEKS                       R79 R78 K192 ["BottomRightText"]
      690 LOADK                            R81 K87 ["General"]
      691 LOADK                            R82 K102 ["Description"]
      692 NAMECALL                         R79 R61 K74 ["getText"]
      694 CALL                             R79 3 1
      695 SETTABLEKS                       R79 R78 K101 ["Title"]
      697 LOADN                            R79 180
      698 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
      700 GETUPVAL                         R79 0
      701 GETTABLEKS                       R79 R79 K196 ["DESCRIPTION_CHARACTER_LIMIT"]
      703 SETTABLEKS                       R79 R78 K184 ["MaxCount"]
      705 SETTABLEKS                       R25 R78 K185 ["TextChangeCallBack"]
      707 SETTABLEKS                       R8 R78 K186 ["TextContent"]
      709 GETUPVAL                         R80 19
      710 CALL                             R80 0 1
      711 JUMPIFNOT                        R80 ; [+3]
      712 GETTABLEKS                       R79 R2 K197 ["showDescriptionRequiredError"]
      714 JUMP                             ; [+1]
      715 LOADNIL                          R79
      716 SETTABLEKS                       R79 R78 K187 ["showRequiredError"]
      718 NEWCLOSURE                       R79 P3
      719 CAPTURE                          VAL R0
      720 CAPTURE                          UPVAL U0
      721 SETTABLEKS                       R79 R78 K188 ["ErrorCallback"]
      723 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      725 CALL                             R79 1 1
      726 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      728 CALL                             R76 2 1
      729 SETTABLEKS                       R76 R75 K102 ["Description"]
      731 JUMPIFNOT                        R45 ; [+80]
      732 GETUPVAL                         R76 8
      733 GETTABLEKS                       R76 R76 K96 ["createElement"]
      735 GETUPVAL                         R77 20
      736 DUPTABLE                         R78 K208 [{"LayoutOrder", "onCategoryChange", "canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      737 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      739 CALL                             R79 1 1
      740 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      742 SETTABLEKS                       R27 R78 K39 ["onCategoryChange"]
      744 GETUPVAL                         R80 4
      745 CALL                             R80 0 1
      746 JUMPIFNOT                        R80 ; [+2]
      747 MOVE                             R79 R32
      748 JUMP                             ; [+1]
      749 LOADNIL                          R79
      750 SETTABLEKS                       R79 R78 K44 ["canUploadWithUgcRestrictions"]
      752 GETUPVAL                         R80 4
      753 CALL                             R80 0 1
      754 JUMPIFNOT                        R80 ; [+2]
      755 MOVE                             R79 R33
      756 JUMP                             ; [+1]
      757 LOADNIL                          R79
      758 SETTABLEKS                       R79 R78 K45 ["canUploadWithUgcRestrictionsDenyReason"]
      760 GETTABLEKS                       R79 R2 K198 ["dataSharingEnabled"]
      762 SETTABLEKS                       R79 R78 K198 ["dataSharingEnabled"]
      764 GETTABLEKS                       R79 R2 K199 ["dataSharingToggled"]
      766 SETTABLEKS                       R79 R78 K199 ["dataSharingToggled"]
      768 GETTABLEKS                       R79 R2 K200 ["onDataConsentToggleClick"]
      770 SETTABLEKS                       R79 R78 K200 ["onDataConsentToggleClick"]
      772 GETTABLEKS                       R79 R0 K209 ["state"]
      774 GETTABLEKS                       R79 R79 K201 ["validationState"]
      776 SETTABLEKS                       R79 R78 K201 ["validationState"]
      778 GETTABLEKS                       R79 R0 K209 ["state"]
      780 GETTABLEKS                       R79 R79 K202 ["validationFailureReasons"]
      782 SETTABLEKS                       R79 R78 K202 ["validationFailureReasons"]
      784 GETTABLEKS                       R79 R0 K203 ["setValidationState"]
      786 SETTABLEKS                       R79 R78 K203 ["setValidationState"]
      788 GETTABLEKS                       R79 R0 K204 ["setValidationFailureReasons"]
      790 SETTABLEKS                       R79 R78 K204 ["setValidationFailureReasons"]
      792 GETTABLEKS                       R79 R0 K209 ["state"]
      794 GETTABLEKS                       R79 R79 K205 ["ugcBundleValidationResults"]
      796 SETTABLEKS                       R79 R78 K205 ["ugcBundleValidationResults"]
      798 GETTABLEKS                       R79 R0 K206 ["setUGCBundleValidationResults"]
      800 SETTABLEKS                       R79 R78 K206 ["setUGCBundleValidationResults"]
      802 GETTABLEKS                       R79 R0 K207 ["setCurrentAssetType"]
      804 SETTABLEKS                       R79 R78 K207 ["setCurrentAssetType"]
      806 GETTABLEKS                       R79 R2 K92 ["instances"]
      808 SETTABLEKS                       R79 R78 K92 ["instances"]
      810 CALL                             R76 2 1
      811 JUMP                             ; [+1]
      812 LOADNIL                          R76
      813 SETTABLEKS                       R76 R75 K103 ["AssetTypeSelection"]
      815 JUMPIFNOT                        R45 ; [+36]
      816 JUMPIFNOT                        R40 ; [+35]
      817 GETUPVAL                         R76 8
      818 GETTABLEKS                       R76 R76 K96 ["createElement"]
      820 GETUPVAL                         R77 21
      821 DUPTABLE                         R78 K212 [{"LayoutOrder", "onDropDownSelect", "owner", "preselectedGroupId", "Title", "TotalHeight"}]
      822 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      824 CALL                             R79 1 1
      825 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      827 SETTABLEKS                       R26 R78 K210 ["onDropDownSelect"]
      829 SETTABLEKS                       R9 R78 K8 ["owner"]
      831 GETUPVAL                         R80 22
      832 CALL                             R80 0 1
      833 JUMPIFNOT                        R80 ; [+3]
      834 GETTABLEKS                       R79 R2 K211 ["preselectedGroupId"]
      836 JUMP                             ; [+1]
      837 LOADNIL                          R79
      838 SETTABLEKS                       R79 R78 K211 ["preselectedGroupId"]
      840 LOADK                            R81 K87 ["General"]
      841 LOADK                            R82 K108 ["Ownership"]
      842 NAMECALL                         R79 R61 K74 ["getText"]
      844 CALL                             R79 3 1
      845 SETTABLEKS                       R79 R78 K101 ["Title"]
      847 LOADN                            R79 70
      848 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
      850 CALL                             R76 2 1
      851 JUMP                             ; [+1]
      852 LOADNIL                          R76
      853 SETTABLEKS                       R76 R75 K104 ["Creator"]
      855 GETUPVAL                         R77 23
      856 CALL                             R77 0 1
      857 JUMPIFNOT                        R77 ; [+110]
      858 JUMPIFNOT                        R45 ; [+109]
      859 JUMPIFNOT                        R40 ; [+108]
      860 GETTABLEKS                       R77 R2 K213 ["showColorPicker"]
      862 JUMPIFNOT                        R77 ; [+105]
      863 GETUPVAL                         R76 8
      864 GETTABLEKS                       R76 R76 K96 ["createElement"]
      866 GETUPVAL                         R77 24
      867 GETTABLEKS                       R77 R77 K214 ["View"]
      869 DUPTABLE                         R78 K216 [{"tag", "Size", "LayoutOrder"}]
      870 LOADK                            R79 K217 ["row align-x-left align-y-top size-full-x"]
      871 SETTABLEKS                       R79 R78 K215 ["tag"]
      873 GETIMPORT                        R79 K147 [UDim2.new]
      875 LOADN                            R80 1
      876 LOADN                            R81 0
      877 LOADN                            R82 0
      878 LOADN                            R83 70
      879 CALL                             R79 4 1
      880 SETTABLEKS                       R79 R78 K2 ["Size"]
      882 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      884 CALL                             R79 1 1
      885 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      887 DUPTABLE                         R79 K219 [{"Title", "ColorPickerButton"}]
      888 GETUPVAL                         R80 25
      889 GETTABLEKS                       R80 R80 K96 ["createElement"]
      891 GETUPVAL                         R81 24
      892 GETTABLEKS                       R81 R81 K166 ["Text"]
      894 DUPTABLE                         R82 K220 [{"tag", "Text", "Size", "LayoutOrder"}]
      895 NEWTABLE                         R83 4 0
      897 LOADB                            R84 1
      898 SETTABLEKS                       R84 R83 K221 ["text-align-y-top text-align-x-left"]
      900 GETUPVAL                         R84 26
      901 CALL                             R84 0 1
      902 SETTABLEKS                       R84 R83 K222 ["text-title-small bold content-emphasis"]
      904 GETUPVAL                         R85 26
      905 CALL                             R85 0 1
      906 NOT                              R84 R85
      907 SETTABLEKS                       R84 R83 K223 ["text-body-large"]
      909 SETTABLEKS                       R83 R82 K215 ["tag"]
      911 LOADK                            R85 K87 ["General"]
      912 LOADK                            R86 K224 ["ThumbnailSkinTone"]
      913 NAMECALL                         R83 R61 K74 ["getText"]
      915 CALL                             R83 3 1
      916 SETTABLEKS                       R83 R82 K166 ["Text"]
      918 GETIMPORT                        R83 K147 [UDim2.new]
      920 LOADN                            R84 0
      921 GETUPVAL                         R85 0
      922 GETTABLEKS                       R85 R85 K225 ["TITLE_GUTTER_WIDTH"]
      924 LOADN                            R86 1
      925 LOADN                            R87 0
      926 CALL                             R83 4 1
      927 SETTABLEKS                       R83 R82 K2 ["Size"]
      929 LOADN                            R83 1
      930 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      932 CALL                             R80 2 1
      933 SETTABLEKS                       R80 R79 K101 ["Title"]
      935 GETUPVAL                         R80 8
      936 GETTABLEKS                       R80 R80 K96 ["createElement"]
      938 GETUPVAL                         R81 27
      939 DUPTABLE                         R82 K229 [{"selectedColor", "setSelectedColor", "Localization", "showRequiredError", "LayoutOrder", "textColor"}]
      940 GETTABLEKS                       R83 R2 K226 ["selectedColor"]
      942 SETTABLEKS                       R83 R82 K226 ["selectedColor"]
      944 GETTABLEKS                       R83 R2 K227 ["setSelectedColor"]
      946 SETTABLEKS                       R83 R82 K227 ["setSelectedColor"]
      948 SETTABLEKS                       R61 R82 K71 ["Localization"]
      950 GETTABLEKS                       R83 R2 K230 ["showColorPickerRequiredError"]
      952 SETTABLEKS                       R83 R82 K187 ["showRequiredError"]
      954 LOADN                            R83 2
      955 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      957 GETTABLEKS                       R83 R1 K78 ["publishAsset"]
      959 GETTABLEKS                       R83 R83 K231 ["titleTextColor"]
      961 SETTABLEKS                       R83 R82 K228 ["textColor"]
      963 CALL                             R80 2 1
      964 SETTABLEKS                       R80 R79 K218 ["ColorPickerButton"]
      966 CALL                             R76 3 1
      967 JUMP                             ; [+1]
      968 LOADNIL                          R76
      969 SETTABLEKS                       R76 R75 K105 ["ColorPickerRow"]
      971 JUMPIFNOT                        R68 ; [+193]
      972 GETUPVAL                         R76 8
      973 GETTABLEKS                       R76 R76 K96 ["createElement"]
      975 GETUPVAL                         R77 28
      976 DUPTABLE                         R78 K232 [{"AutomaticSize", "LayoutOrder", "Title"}]
      977 GETIMPORT                        R79 K174 [Enum.AutomaticSize.XY]
      979 SETTABLEKS                       R79 R78 K164 ["AutomaticSize"]
      981 NAMECALL                         R79 R62 K145 ["getNextOrder"]
      983 CALL                             R79 1 1
      984 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      986 SETTABLEKS                       R69 R78 K101 ["Title"]
      988 DUPTABLE                         R79 K234 [{"ValidationPane"}]
      989 GETUPVAL                         R80 8
      990 GETTABLEKS                       R80 R80 K96 ["createElement"]
      992 GETUPVAL                         R81 14
      993 DUPTABLE                         R82 K235 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      994 GETIMPORT                        R83 K237 [Enum.AutomaticSize.Y]
      996 SETTABLEKS                       R83 R82 K164 ["AutomaticSize"]
      998 GETIMPORT                        R83 K127 [Enum.FillDirection.Vertical]
     1000 SETTABLEKS                       R83 R82 K140 ["Layout"]
     1002 LOADN                            R83 1
     1003 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1005 GETIMPORT                        R83 K239 [UDim2.fromScale]
     1007 LOADN                            R84 1
     1008 LOADN                            R85 0
     1009 CALL                             R83 2 1
     1010 SETTABLEKS                       R83 R82 K2 ["Size"]
     1012 LOADN                            R83 18
     1013 SETTABLEKS                       R83 R82 K141 ["Spacing"]
     1015 DUPTABLE                         R83 K150 [{"Bottom"}]
     1016 LOADN                            R84 24
     1017 SETTABLEKS                       R84 R83 K149 ["Bottom"]
     1019 SETTABLEKS                       R83 R82 K97 ["Padding"]
     1021 DUPTABLE                         R83 K243 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
     1022 GETUPVAL                         R84 8
     1023 GETTABLEKS                       R84 R84 K96 ["createElement"]
     1025 GETUPVAL                         R85 29
     1026 DUPTABLE                         R86 K246 [{"LayoutOrder", "isUGCBodyBundleType", "isAnimationBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
     1027 LOADN                            R87 1
     1028 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1030 GETUPVAL                         R87 1
     1031 GETTABLEKS                       R87 R87 K86 ["isUGCBodyBundleType"]
     1033 MOVE                             R88 R14
     1034 CALL                             R87 1 1
     1035 SETTABLEKS                       R87 R86 K86 ["isUGCBodyBundleType"]
     1037 GETUPVAL                         R88 12
     1038 CALL                             R88 0 1
     1039 JUMPIFNOT                        R88 ; [+6]
     1040 GETUPVAL                         R87 1
     1041 GETTABLEKS                       R87 R87 K89 ["isAnimationBundleType"]
     1043 MOVE                             R88 R14
     1044 CALL                             R87 1 1
     1045 JUMP                             ; [+1]
     1046 LOADNIL                          R87
     1047 SETTABLEKS                       R87 R86 K89 ["isAnimationBundleType"]
     1049 GETTABLEKS                       R87 R0 K209 ["state"]
     1051 GETTABLEKS                       R87 R87 K201 ["validationState"]
     1053 SETTABLEKS                       R87 R86 K201 ["validationState"]
     1055 GETTABLEKS                       R87 R0 K203 ["setValidationState"]
     1057 SETTABLEKS                       R87 R86 K203 ["setValidationState"]
     1059 GETTABLEKS                       R87 R0 K209 ["state"]
     1061 GETTABLEKS                       R87 R87 K202 ["validationFailureReasons"]
     1063 SETTABLEKS                       R87 R86 K202 ["validationFailureReasons"]
     1065 GETTABLEKS                       R87 R0 K204 ["setValidationFailureReasons"]
     1067 SETTABLEKS                       R87 R86 K204 ["setValidationFailureReasons"]
     1069 GETTABLEKS                       R87 R0 K209 ["state"]
     1071 GETTABLEKS                       R87 R87 K205 ["ugcBundleValidationResults"]
     1073 SETTABLEKS                       R87 R86 K244 ["validationResults"]
     1075 GETTABLEKS                       R87 R0 K206 ["setUGCBundleValidationResults"]
     1077 SETTABLEKS                       R87 R86 K206 ["setUGCBundleValidationResults"]
     1079 GETTABLEKS                       R87 R0 K209 ["state"]
     1081 GETTABLEKS                       R87 R87 K247 ["currentAssetType"]
     1083 SETTABLEKS                       R87 R86 K13 ["assetTypeEnum"]
     1085 GETTABLEKS                       R87 R2 K92 ["instances"]
     1087 SETTABLEKS                       R87 R86 K92 ["instances"]
     1089 GETTABLEKS                       R87 R2 K93 ["allowedBundleTypeSettings"]
     1091 SETTABLEKS                       R87 R86 K93 ["allowedBundleTypeSettings"]
     1093 GETTABLEKS                       R87 R2 K245 ["onAssetValidationResultChanged"]
     1095 SETTABLEKS                       R87 R86 K245 ["onAssetValidationResultChanged"]
     1097 CALL                             R84 2 1
     1098 SETTABLEKS                       R84 R83 K240 ["UGCBundleValidation"]
     1100 JUMPIFNOT                        R70 ; [+26]
     1101 GETUPVAL                         R84 8
     1102 GETTABLEKS                       R84 R84 K96 ["createElement"]
     1104 GETUPVAL                         R85 14
     1105 DUPTABLE                         R86 K248 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1106 GETIMPORT                        R87 K237 [Enum.AutomaticSize.Y]
     1108 SETTABLEKS                       R87 R86 K164 ["AutomaticSize"]
     1110 GETIMPORT                        R87 K127 [Enum.FillDirection.Vertical]
     1112 SETTABLEKS                       R87 R86 K140 ["Layout"]
     1114 LOADN                            R87 2
     1115 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1117 GETIMPORT                        R87 K239 [UDim2.fromScale]
     1119 LOADN                            R88 1
     1120 LOADN                            R89 0
     1121 CALL                             R87 2 1
     1122 SETTABLEKS                       R87 R86 K2 ["Size"]
     1124 MOVE                             R87 R70
     1125 CALL                             R84 3 1
     1126 JUMP                             ; [+1]
     1127 LOADNIL                          R84
     1128 SETTABLEKS                       R84 R83 K241 ["MissingOptionalAccessoriesMsg"]
     1130 JUMPIFNOT                        R71 ; [+26]
     1131 GETUPVAL                         R84 8
     1132 GETTABLEKS                       R84 R84 K96 ["createElement"]
     1134 GETUPVAL                         R85 14
     1135 DUPTABLE                         R86 K248 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1136 GETIMPORT                        R87 K237 [Enum.AutomaticSize.Y]
     1138 SETTABLEKS                       R87 R86 K164 ["AutomaticSize"]
     1140 GETIMPORT                        R87 K127 [Enum.FillDirection.Vertical]
     1142 SETTABLEKS                       R87 R86 K140 ["Layout"]
     1144 LOADN                            R87 3
     1145 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1147 GETIMPORT                        R87 K239 [UDim2.fromScale]
     1149 LOADN                            R88 1
     1150 LOADN                            R89 0
     1151 CALL                             R87 2 1
     1152 SETTABLEKS                       R87 R86 K2 ["Size"]
     1154 MOVE                             R87 R71
     1155 CALL                             R84 3 1
     1156 JUMP                             ; [+1]
     1157 LOADNIL                          R84
     1158 SETTABLEKS                       R84 R83 K242 ["UnknownMeshPartsMsgChildren"]
     1160 CALL                             R80 3 1
     1161 SETTABLEKS                       R80 R79 K233 ["ValidationPane"]
     1163 CALL                             R76 3 1
     1164 JUMP                             ; [+1]
     1165 LOADNIL                          R76
     1166 SETTABLEKS                       R76 R75 K106 ["ContentTypeBodyValidation"]
     1168 GETTABLEKS                       R77 R2 K198 ["dataSharingEnabled"]
     1170 JUMPIFNOT                        R77 ; [+32]
     1171 GETUPVAL                         R77 1
     1172 GETTABLEKS                       R77 R77 K85 ["isUGCBundleType"]
     1174 MOVE                             R78 R14
     1175 CALL                             R77 1 1
     1176 JUMPIF                           R77 ; [+6]
     1177 GETUPVAL                         R77 1
     1178 GETTABLEKS                       R77 R77 K249 ["isCatalogAsset"]
     1180 MOVE                             R78 R14
     1181 CALL                             R77 1 1
     1182 JUMPIFNOT                        R77 ; [+20]
     1183 GETUPVAL                         R76 8
     1184 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1186 GETUPVAL                         R77 30
     1187 DUPTABLE                         R78 K250 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1188 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1190 CALL                             R79 1 1
     1191 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1193 GETTABLEKS                       R79 R2 K199 ["dataSharingToggled"]
     1195 SETTABLEKS                       R79 R78 K199 ["dataSharingToggled"]
     1197 GETTABLEKS                       R79 R2 K200 ["onDataConsentToggleClick"]
     1199 SETTABLEKS                       R79 R78 K200 ["onDataConsentToggleClick"]
     1201 CALL                             R76 2 1
     1202 JUMP                             ; [+1]
     1203 LOADNIL                          R76
     1204 SETTABLEKS                       R76 R75 K107 ["DataSharingConsent"]
     1206 JUMPIF                           R45 ; [+36]
     1207 JUMPIFNOT                        R40 ; [+35]
     1208 GETUPVAL                         R76 8
     1209 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1211 GETUPVAL                         R77 21
     1212 DUPTABLE                         R78 K251 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "preselectedGroupId", "LayoutOrder"}]
     1213 LOADK                            R81 K87 ["General"]
     1214 LOADK                            R82 K108 ["Ownership"]
     1215 NAMECALL                         R79 R61 K74 ["getText"]
     1217 CALL                             R79 3 1
     1218 SETTABLEKS                       R79 R78 K101 ["Title"]
     1220 SETTABLEKS                       R9 R78 K8 ["owner"]
     1222 LOADN                            R79 70
     1223 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
     1225 SETTABLEKS                       R26 R78 K210 ["onDropDownSelect"]
     1227 GETUPVAL                         R80 22
     1228 CALL                             R80 0 1
     1229 JUMPIFNOT                        R80 ; [+3]
     1230 GETTABLEKS                       R79 R2 K211 ["preselectedGroupId"]
     1232 JUMP                             ; [+1]
     1233 LOADNIL                          R79
     1234 SETTABLEKS                       R79 R78 K211 ["preselectedGroupId"]
     1236 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1238 CALL                             R79 1 1
     1239 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1241 CALL                             R76 2 1
     1242 JUMP                             ; [+1]
     1243 LOADNIL                          R76
     1244 SETTABLEKS                       R76 R75 K108 ["Ownership"]
     1246 MOVE                             R76 R22
     1247 JUMPIFNOT                        R76 ; [+58]
     1248 GETUPVAL                         R77 31
     1249 CALL                             R77 0 1
     1250 JUMPIFNOT                        R77 ; [+14]
     1251 GETUPVAL                         R76 25
     1252 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1254 GETUPVAL                         R77 24
     1255 GETTABLEKS                       R77 R77 K252 ["Divider"]
     1257 DUPTABLE                         R78 K253 [{"LayoutOrder"}]
     1258 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1260 CALL                             R79 1 1
     1261 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1263 CALL                             R76 2 1
     1264 JUMP                             ; [+41]
     1265 GETUPVAL                         R76 8
     1266 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1268 LOADK                            R77 K254 ["Frame"]
     1269 DUPTABLE                         R78 K255 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1270 LOADN                            R79 1
     1271 SETTABLEKS                       R79 R78 K155 ["BackgroundTransparency"]
     1273 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1275 CALL                             R79 1 1
     1276 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1278 GETIMPORT                        R79 K147 [UDim2.new]
     1280 LOADN                            R80 1
     1281 LOADN                            R81 0
     1282 LOADN                            R82 0
     1283 LOADN                            R83 20
     1284 CALL                             R79 4 1
     1285 SETTABLEKS                       R79 R78 K2 ["Size"]
     1287 DUPTABLE                         R79 K257 [{"Separator"}]
     1288 GETUPVAL                         R80 8
     1289 GETTABLEKS                       R80 R80 K96 ["createElement"]
     1291 GETUPVAL                         R81 32
     1292 DUPTABLE                         R82 K259 [{"Position"}]
     1293 GETIMPORT                        R83 K147 [UDim2.new]
     1295 LOADK                            R84 K4 ["allowCopy"]
     1296 LOADN                            R85 0
     1297 LOADK                            R86 K4 ["allowCopy"]
     1298 LOADN                            R87 0
     1299 CALL                             R83 4 1
     1300 SETTABLEKS                       R83 R82 K258 ["Position"]
     1302 CALL                             R80 2 1
     1303 SETTABLEKS                       R80 R79 K256 ["Separator"]
     1305 CALL                             R76 3 1
     1306 SETTABLEKS                       R76 R75 K109 ["DividerBase"]
     1308 JUMPIFNOT                        R44 ; [+24]
     1309 GETUPVAL                         R76 8
     1310 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1312 GETUPVAL                         R77 33
     1313 DUPTABLE                         R78 K265 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1314 GETTABLEKS                       R79 R2 K30 ["assetId"]
     1316 SETTABLEKS                       R79 R78 K261 ["AssetId"]
     1318 SETTABLEKS                       R14 R78 K18 ["AssetType"]
     1320 SETTABLEKS                       R6 R78 K262 ["AllowSelectPrivate"]
     1322 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1324 CALL                             R79 1 1
     1325 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1327 SETTABLEKS                       R15 R78 K263 ["IsAssetPublic"]
     1329 SETTABLEKS                       R28 R78 K264 ["OnSelected"]
     1331 CALL                             R76 2 1
     1332 JUMP                             ; [+1]
     1333 LOADNIL                          R76
     1334 SETTABLEKS                       R76 R75 K110 ["Sharing"]
     1336 JUMPIFNOT                        R44 ; [+59]
     1337 GETUPVAL                         R77 31
     1338 CALL                             R77 0 1
     1339 JUMPIFNOT                        R77 ; [+14]
     1340 GETUPVAL                         R76 25
     1341 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1343 GETUPVAL                         R77 24
     1344 GETTABLEKS                       R77 R77 K252 ["Divider"]
     1346 DUPTABLE                         R78 K253 [{"LayoutOrder"}]
     1347 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1349 CALL                             R79 1 1
     1350 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1352 CALL                             R76 2 1
     1353 JUMP                             ; [+43]
     1354 GETUPVAL                         R76 8
     1355 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1357 LOADK                            R77 K254 ["Frame"]
     1358 DUPTABLE                         R78 K255 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1359 LOADN                            R79 1
     1360 SETTABLEKS                       R79 R78 K155 ["BackgroundTransparency"]
     1362 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1364 CALL                             R79 1 1
     1365 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1367 GETIMPORT                        R79 K147 [UDim2.new]
     1369 LOADN                            R80 1
     1370 LOADN                            R81 0
     1371 LOADN                            R82 0
     1372 LOADN                            R83 20
     1373 CALL                             R79 4 1
     1374 SETTABLEKS                       R79 R78 K2 ["Size"]
     1376 DUPTABLE                         R79 K257 [{"Separator"}]
     1377 GETUPVAL                         R80 8
     1378 GETTABLEKS                       R80 R80 K96 ["createElement"]
     1380 GETUPVAL                         R81 32
     1381 DUPTABLE                         R82 K259 [{"Position"}]
     1382 GETIMPORT                        R83 K147 [UDim2.new]
     1384 LOADK                            R84 K4 ["allowCopy"]
     1385 LOADN                            R85 0
     1386 LOADK                            R86 K4 ["allowCopy"]
     1387 LOADN                            R87 0
     1388 CALL                             R83 4 1
     1389 SETTABLEKS                       R83 R82 K258 ["Position"]
     1391 CALL                             R80 2 1
     1392 SETTABLEKS                       R80 R79 K256 ["Separator"]
     1394 CALL                             R76 3 1
     1395 JUMP                             ; [+1]
     1396 LOADNIL                          R76
     1397 SETTABLEKS                       R76 R75 K111 ["SharingDivider"]
     1399 JUMPIFNOT                        R22 ; [+109]
     1400 GETUPVAL                         R76 8
     1401 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1403 GETUPVAL                         R77 14
     1404 DUPTABLE                         R78 K266 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1405 GETIMPORT                        R79 K237 [Enum.AutomaticSize.Y]
     1407 SETTABLEKS                       R79 R78 K164 ["AutomaticSize"]
     1409 GETIMPORT                        R79 K127 [Enum.FillDirection.Vertical]
     1411 SETTABLEKS                       R79 R78 K140 ["Layout"]
     1413 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1415 CALL                             R79 1 1
     1416 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1418 DUPTABLE                         R79 K267 [{"Top"}]
     1419 LOADN                            R80 20
     1420 SETTABLEKS                       R80 R79 K132 ["Top"]
     1422 SETTABLEKS                       R79 R78 K97 ["Padding"]
     1424 DUPTABLE                         R79 K270 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1425 GETUPVAL                         R80 8
     1426 GETTABLEKS                       R80 R80 K96 ["createElement"]
     1428 GETUPVAL                         R81 34
     1429 DUPTABLE                         R82 K272 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1430 GETTABLEKS                       R83 R2 K71 ["Localization"]
     1432 LOADK                            R85 K17 ["Enum"]
     1433 LOADK                            R86 K18 ["AssetType"]
     1434 NAMECALL                         R83 R83 K74 ["getText"]
     1436 CALL                             R83 3 1
     1437 SETTABLEKS                       R83 R82 K166 ["Text"]
     1439 GETTABLEKS                       R83 R1 K275 ["uploadResult"]
     1441 GETTABLEKS                       R83 R83 K276 ["text"]
     1443 SETTABLEKS                       R83 R82 K271 ["TextColor"]
     1445 GETUPVAL                         R83 15
     1446 GETTABLEKS                       R83 R83 K277 ["FONT_SIZE_LARGE"]
     1448 SETTABLEKS                       R83 R82 K171 ["TextSize"]
     1450 GETIMPORT                        R83 K147 [UDim2.new]
     1452 LOADN                            R84 1
     1453 LOADN                            R85 0
     1454 LOADN                            R86 0
     1455 LOADN                            R87 24
     1456 CALL                             R83 4 1
     1457 SETTABLEKS                       R83 R82 K2 ["Size"]
     1459 NAMECALL                         R83 R62 K145 ["getNextOrder"]
     1461 CALL                             R83 1 1
     1462 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1464 CALL                             R80 2 1
     1465 SETTABLEKS                       R80 R79 K268 ["CreatorStoreConfigurationText"]
     1467 GETUPVAL                         R80 8
     1468 GETTABLEKS                       R80 R80 K96 ["createElement"]
     1470 GETUPVAL                         R81 35
     1471 DUPTABLE                         R82 K279 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1472 SETTABLEKS                       R23 R82 K166 ["Text"]
     1474 GETTABLEKS                       R83 R1 K275 ["uploadResult"]
     1476 GETTABLEKS                       R83 R83 K280 ["link"]
     1478 SETTABLEKS                       R83 R82 K271 ["TextColor"]
     1480 GETUPVAL                         R83 15
     1481 GETTABLEKS                       R83 R83 K277 ["FONT_SIZE_LARGE"]
     1483 SETTABLEKS                       R83 R82 K171 ["TextSize"]
     1485 GETIMPORT                        R83 K147 [UDim2.new]
     1487 LOADN                            R84 1
     1488 LOADN                            R85 0
     1489 LOADN                            R86 0
     1490 LOADN                            R87 24
     1491 CALL                             R83 4 1
     1492 SETTABLEKS                       R83 R82 K2 ["Size"]
     1494 NAMECALL                         R83 R62 K145 ["getNextOrder"]
     1496 CALL                             R83 1 1
     1497 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1499 NEWCLOSURE                       R83 P4
     1500 CAPTURE                          UPVAL U36
     1501 CAPTURE                          VAL R23
     1502 SETTABLEKS                       R83 R82 K278 ["OnClick"]
     1504 CALL                             R80 2 1
     1505 SETTABLEKS                       R80 R79 K269 ["CreatorStoreConfigurationLink"]
     1507 CALL                             R76 3 1
     1508 JUMP                             ; [+1]
     1509 LOADNIL                          R76
     1510 SETTABLEKS                       R76 R75 K112 ["CreatorStoreConfigurationFrame"]
     1512 MOVE                             R76 R42
     1513 JUMPIFNOT                        R76 ; [+27]
     1514 GETUPVAL                         R76 8
     1515 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1517 GETUPVAL                         R77 37
     1518 DUPTABLE                         R78 K284 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1519 LOADK                            R81 K87 ["General"]
     1520 LOADK                            R82 K29 ["isCreatorStoreAssetNotIncludingAnimation"]
     1521 NAMECALL                         R79 R61 K74 ["getText"]
     1523 CALL                             R79 3 1
     1524 SETTABLEKS                       R79 R78 K101 ["Title"]
     1526 LOADN                            R79 80
     1527 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
     1529 SETTABLEKS                       R11 R78 K281 ["CommentEnabled"]
     1531 SETTABLEKS                       R12 R78 K282 ["CommentOn"]
     1533 SETTABLEKS                       R30 R78 K283 ["ToggleCallback"]
     1535 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1537 CALL                             R79 1 1
     1538 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1540 CALL                             R76 2 1
     1541 SETTABLEKS                       R76 R75 K113 ["Comment"]
     1543 MOVE                             R76 R21
     1544 JUMPIFNOT                        R76 ; [+31]
     1545 GETUPVAL                         R76 8
     1546 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1548 GETUPVAL                         R77 38
     1549 DUPTABLE                         R78 K286 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1550 LOADK                            R81 K87 ["General"]
     1551 LOADK                            R82 K114 ["DeleteLocal"]
     1552 NAMECALL                         R79 R61 K74 ["getText"]
     1554 CALL                             R79 3 1
     1555 SETTABLEKS                       R79 R78 K101 ["Title"]
     1557 GETUPVAL                         R80 12
     1558 CALL                             R80 0 1
     1559 JUMPIFNOT                        R80 ; [+3]
     1560 JUMPIFNOT                        R21 ; [+2]
     1561 LOADN                            R79 120
     1562 JUMP                             ; [+1]
     1563 LOADN                            R79 80
     1564 SETTABLEKS                       R79 R78 K183 ["TotalHeight"]
     1566 SETTABLEKS                       R13 R78 K114 ["DeleteLocal"]
     1568 SETTABLEKS                       R31 R78 K283 ["ToggleCallback"]
     1570 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1572 CALL                             R79 1 1
     1573 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1575 CALL                             R76 2 1
     1576 SETTABLEKS                       R76 R75 K114 ["DeleteLocal"]
     1578 GETUPVAL                         R76 12
     1579 CALL                             R76 0 1
     1580 JUMPIFNOT                        R76 ; [+71]
     1581 MOVE                             R76 R21
     1582 JUMPIFNOT                        R76 ; [+69]
     1583 GETUPVAL                         R76 25
     1584 GETTABLEKS                       R76 R76 K96 ["createElement"]
     1586 GETUPVAL                         R77 24
     1587 GETTABLEKS                       R77 R77 K214 ["View"]
     1589 DUPTABLE                         R78 K287 [{"tag", "LayoutOrder"}]
     1590 LOADK                            R79 K32 [typeof]
     1591 SETTABLEKS                       R79 R78 K215 ["tag"]
     1593 NAMECALL                         R79 R62 K145 ["getNextOrder"]
     1595 CALL                             R79 1 1
     1596 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1598 DUPTABLE                         R79 K290 [{"Section"}]
     1599 GETUPVAL                         R80 25
     1600 GETTABLEKS                       R80 R80 K96 ["createElement"]
     1602 GETUPVAL                         R81 28
     1603 DUPTABLE                         R82 K292 [{"LayoutOrder", "Title", "AutomaticContentHeight", "Size"}]
     1604 LOADN                            R83 1
     1605 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1607 LOADK                            R85 K87 ["General"]
     1608 LOADK                            R86 K37 ["onDescChange"]
     1609 NAMECALL                         R83 R61 K74 ["getText"]
     1611 CALL                             R83 3 1
     1612 SETTABLEKS                       R83 R82 K101 ["Title"]
     1614 LOADB                            R83 1
     1615 SETTABLEKS                       R83 R82 K291 ["AutomaticContentHeight"]
     1617 GETIMPORT                        R83 K147 [UDim2.new]
     1619 LOADN                            R84 1
     1620 LOADN                            R85 0
     1621 LOADN                            R86 0
     1622 LOADN                            R87 0
     1623 CALL                             R83 4 1
     1624 SETTABLEKS                       R83 R82 K2 ["Size"]
     1626 DUPTABLE                         R83 K295 [{"AnimationCheckboxCol"}]
     1627 GETUPVAL                         R84 25
     1628 GETTABLEKS                       R84 R84 K96 ["createElement"]
     1630 GETUPVAL                         R85 39
     1631 DUPTABLE                         R86 K298 [{"LayoutOrder", "Localization", "OnSelectionChanged", "OnSectionValidityChanged"}]
     1632 LOADN                            R87 1
     1633 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1635 SETTABLEKS                       R61 R86 K71 ["Localization"]
     1637 GETTABLEKS                       R87 R2 K299 ["onAnimationSelectionChanged"]
     1639 SETTABLEKS                       R87 R86 K296 ["OnSelectionChanged"]
     1641 GETTABLEKS                       R87 R2 K300 ["onanimationSectionValidityChanged"]
     1643 SETTABLEKS                       R87 R86 K297 ["OnSectionValidityChanged"]
     1645 CALL                             R84 2 1
     1646 SETTABLEKS                       R84 R83 K294 ["AnimationCheckboxCol"]
     1648 CALL                             R80 3 1
     1649 SETTABLEKS                       R80 R79 K289 ["Section"]
     1651 CALL                             R76 3 1
     1652 SETTABLEKS                       R76 R75 K115 ["AnimationPackProperties"]
     1654 CALL                             R72 3 -1
     1655 RETURN                           R72 -1

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
       38 GETIMPORT                        R7 K11 [require]
       40 GETTABLEKS                       R8 R1 K7 ["Src"]
       42 GETTABLEKS                       R8 R8 K8 ["Util"]
       44 GETTABLEKS                       R8 R8 K15 ["SharedFlags"]
       46 GETTABLEKS                       R8 R8 K16 ["getFFlagEnableUGCForAllChecks"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K1 [game]
       51 LOADK                            R10 K17 ["ToolboxVideoConfigSharing2"]
       52 NAMECALL                         R8 R8 K18 ["GetFastFlag"]
       54 CALL                             R8 2 1
       55 GETIMPORT                        R9 K11 [require]
       57 GETTABLEKS                       R10 R1 K7 ["Src"]
       59 GETTABLEKS                       R10 R10 K8 ["Util"]
       61 GETTABLEKS                       R10 R10 K15 ["SharedFlags"]
       63 GETTABLEKS                       R10 R10 K19 ["getFFlagToolboxEnableFiatFully"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K11 [require]
       68 GETTABLEKS                       R11 R1 K7 ["Src"]
       70 GETTABLEKS                       R11 R11 K8 ["Util"]
       72 GETTABLEKS                       R11 R11 K15 ["SharedFlags"]
       74 GETTABLEKS                       R11 R11 K20 ["getFFlagToolboxAssetConfigOnboardingLink"]
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
       98 GETIMPORT                        R15 K11 [require]
      100 GETTABLEKS                       R16 R3 K13 ["Framework"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R15 R15 K25 ["ContextServices"]
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
      125 GETTABLEKS                       R26 R1 K7 ["Src"]
      127 GETTABLEKS                       R26 R26 K35 ["Components"]
      129 GETTABLEKS                       R26 R26 K36 ["StyledScrollingFrame"]
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
      166 GETTABLEKS                       R34 R1 K7 ["Src"]
      168 GETTABLEKS                       R34 R34 K8 ["Util"]
      170 GETTABLEKS                       R34 R34 K44 ["Images"]
      172 CALL                             R33 1 1
      173 GETIMPORT                        R34 K11 [require]
      175 GETTABLEKS                       R35 R1 K7 ["Src"]
      177 GETTABLEKS                       R35 R35 K45 ["Localization"]
      179 GETTABLEKS                       R35 R35 K46 ["getLocalizedAssetTextMap"]
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
      197 GETTABLEKS                       R38 R1 K7 ["Src"]
      199 GETTABLEKS                       R38 R38 K35 ["Components"]
      201 GETTABLEKS                       R38 R38 K50 ["AssetConfiguration"]
      203 GETIMPORT                        R39 K11 [require]
      205 GETTABLEKS                       R40 R1 K7 ["Src"]
      207 GETTABLEKS                       R40 R40 K51 ["Actions"]
      209 GETTABLEKS                       R40 R40 K52 ["SetUploadAssetValidationStatus"]
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
      259 GETTABLEKS                       R50 R38 K62 ["AnimationCheckboxCol"]
      261 CALL                             R49 1 1
      262 GETIMPORT                        R50 K11 [require]
      264 GETTABLEKS                       R51 R38 K63 ["FiatPriceComponent"]
      266 CALL                             R50 1 1
      267 GETIMPORT                        R51 K11 [require]
      269 GETTABLEKS                       R52 R38 K64 ["DataConsentToggle"]
      271 CALL                             R51 1 1
      272 GETIMPORT                        R52 K11 [require]
      274 GETTABLEKS                       R53 R38 K65 ["UGCBundleValidation"]
      276 CALL                             R52 1 1
      277 GETIMPORT                        R53 K11 [require]
      279 GETTABLEKS                       R54 R1 K7 ["Src"]
      281 GETTABLEKS                       R54 R54 K8 ["Util"]
      283 GETTABLEKS                       R54 R54 K66 ["ColorPicker"]
      285 CALL                             R53 1 1
      286 GETIMPORT                        R54 K11 [require]
      288 GETTABLEKS                       R55 R1 K7 ["Src"]
      290 GETTABLEKS                       R55 R55 K67 ["Flags"]
      292 GETTABLEKS                       R55 R55 K68 ["getFFlagEnableUploadingMakeup"]
      294 CALL                             R54 1 1
      295 GETIMPORT                        R55 K11 [require]
      297 GETTABLEKS                       R56 R1 K7 ["Src"]
      299 GETTABLEKS                       R56 R56 K67 ["Flags"]
      301 GETTABLEKS                       R56 R56 K69 ["getFFlagToolboxAssetConfigGroupOwnership"]
      303 CALL                             R55 1 1
      304 GETIMPORT                        R56 K11 [require]
      306 GETTABLEKS                       R57 R1 K7 ["Src"]
      308 GETTABLEKS                       R57 R57 K67 ["Flags"]
      310 GETTABLEKS                       R57 R57 K70 ["getFFlagToolboxAssetConfigFoundationMigration"]
      312 CALL                             R56 1 1
      313 GETIMPORT                        R57 K11 [require]
      315 GETTABLEKS                       R58 R1 K7 ["Src"]
      317 GETTABLEKS                       R58 R58 K67 ["Flags"]
      319 GETTABLEKS                       R58 R58 K71 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      321 CALL                             R57 1 1
      322 GETIMPORT                        R58 K11 [require]
      324 GETTABLEKS                       R59 R1 K7 ["Src"]
      326 GETTABLEKS                       R59 R59 K67 ["Flags"]
      328 GETTABLEKS                       R59 R59 K72 ["getFFlagEnableUploadingAvatarAnimations"]
      330 CALL                             R58 1 1
      331 GETIMPORT                        R59 K11 [require]
      333 GETTABLEKS                       R60 R1 K7 ["Src"]
      335 GETTABLEKS                       R60 R60 K67 ["Flags"]
      337 GETTABLEKS                       R60 R60 K73 ["getFFlagFixBundleValidationTitle"]
      339 CALL                             R59 1 1
      340 GETIMPORT                        R60 K11 [require]
      342 GETTABLEKS                       R61 R1 K7 ["Src"]
      344 GETTABLEKS                       R61 R61 K67 ["Flags"]
      346 GETTABLEKS                       R61 R61 K74 ["getFFlagDividerFoundationMigration"]
      348 CALL                             R60 1 1
      349 GETIMPORT                        R61 K11 [require]
      351 GETTABLEKS                       R62 R1 K7 ["Src"]
      353 GETTABLEKS                       R62 R62 K75 ["Types"]
      355 GETTABLEKS                       R62 R62 K76 ["MarketplaceFiatServiceTypes"]
      357 CALL                             R61 1 1
      358 GETIMPORT                        R62 K11 [require]
      360 GETTABLEKS                       R63 R1 K7 ["Src"]
      362 GETTABLEKS                       R63 R63 K51 ["Actions"]
      364 GETTABLEKS                       R63 R63 K77 ["SetFieldError"]
      366 CALL                             R62 1 1
      367 GETIMPORT                        R63 K11 [require]
      369 GETTABLEKS                       R64 R1 K7 ["Src"]
      371 GETTABLEKS                       R64 R64 K8 ["Util"]
      373 GETTABLEKS                       R64 R64 K78 ["PageInfoHelper"]
      375 CALL                             R63 1 1
      376 GETTABLEKS                       R64 R13 K79 ["PureComponent"]
      378 LOADK                            R66 K80 ["PublishAsset"]
      379 NAMECALL                         R64 R64 K81 ["extend"]
      381 CALL                             R64 2 1
      382 DUPCLOSURE                       R65 K82 [PROTO_9]
      383 CAPTURE                          VAL R30
      384 CAPTURE                          VAL R13
      385 CAPTURE                          VAL R0
      386 CAPTURE                          VAL R35
      387 CAPTURE                          VAL R10
      388 SETTABLEKS                       R65 R64 K83 ["init"]
      390 DUPCLOSURE                       R65 K84 [PROTO_10]
      391 SETTABLEKS                       R65 R64 K85 ["bumpCanvas"]
      393 DUPCLOSURE                       R65 K86 [PROTO_11]
      394 CAPTURE                          VAL R31
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R56
      397 CAPTURE                          VAL R12
      398 CAPTURE                          VAL R6
      399 CAPTURE                          VAL R13
      400 CAPTURE                          VAL R19
      401 CAPTURE                          VAL R32
      402 CAPTURE                          VAL R34
      403 SETTABLEKS                       R65 R64 K87 ["getMissingOptionalPartsMessage"]
      405 DUPCLOSURE                       R65 K88 [PROTO_12]
      406 CAPTURE                          VAL R31
      407 CAPTURE                          VAL R29
      408 CAPTURE                          VAL R56
      409 CAPTURE                          VAL R12
      410 CAPTURE                          VAL R6
      411 CAPTURE                          VAL R13
      412 CAPTURE                          VAL R19
      413 CAPTURE                          VAL R32
      414 SETTABLEKS                       R65 R64 K89 ["getUnknownMeshPartMessage"]
      416 DUPCLOSURE                       R65 K90 [PROTO_18]
      417 CAPTURE                          VAL R30
      418 CAPTURE                          VAL R31
      419 CAPTURE                          VAL R37
      420 CAPTURE                          VAL R35
      421 CAPTURE                          VAL R7
      422 CAPTURE                          VAL R11
      423 CAPTURE                          VAL R8
      424 CAPTURE                          VAL R29
      425 CAPTURE                          VAL R13
      426 CAPTURE                          VAL R27
      427 CAPTURE                          VAL R28
      428 CAPTURE                          VAL R59
      429 CAPTURE                          VAL R58
      430 CAPTURE                          VAL R25
      431 CAPTURE                          VAL R23
      432 CAPTURE                          VAL R32
      433 CAPTURE                          VAL R33
      434 CAPTURE                          VAL R48
      435 CAPTURE                          VAL R40
      436 CAPTURE                          VAL R57
      437 CAPTURE                          VAL R44
      438 CAPTURE                          VAL R41
      439 CAPTURE                          VAL R55
      440 CAPTURE                          VAL R54
      441 CAPTURE                          VAL R6
      442 CAPTURE                          VAL R12
      443 CAPTURE                          VAL R56
      444 CAPTURE                          VAL R53
      445 CAPTURE                          VAL R47
      446 CAPTURE                          VAL R52
      447 CAPTURE                          VAL R51
      448 CAPTURE                          VAL R60
      449 CAPTURE                          VAL R24
      450 CAPTURE                          VAL R46
      451 CAPTURE                          VAL R19
      452 CAPTURE                          VAL R22
      453 CAPTURE                          VAL R0
      454 CAPTURE                          VAL R45
      455 CAPTURE                          VAL R42
      456 CAPTURE                          VAL R49
      457 SETTABLEKS                       R65 R64 K91 ["render"]
      459 DUPCLOSURE                       R65 K92 [PROTO_19]
      460 CAPTURE                          VAL R10
      461 DUPCLOSURE                       R66 K93 [PROTO_22]
      462 CAPTURE                          VAL R62
      463 CAPTURE                          VAL R30
      464 CAPTURE                          VAL R39
      465 MOVE                             R67 R16
      466 DUPTABLE                         R68 K95 [{"Localization", "Stylizer"}]
      467 GETTABLEKS                       R69 R15 K45 ["Localization"]
      469 SETTABLEKS                       R69 R68 K45 ["Localization"]
      471 GETTABLEKS                       R69 R15 K94 ["Stylizer"]
      473 SETTABLEKS                       R69 R68 K94 ["Stylizer"]
      475 CALL                             R67 1 1
      476 MOVE                             R68 R64
      477 CALL                             R67 1 1
      478 MOVE                             R64 R67
      479 GETTABLEKS                       R67 R14 K96 ["connect"]
      481 MOVE                             R68 R65
      482 MOVE                             R69 R66
      483 CALL                             R67 2 1
      484 MOVE                             R68 R64
      485 CALL                             R67 1 -1
      486 RETURN                           R67 -1
