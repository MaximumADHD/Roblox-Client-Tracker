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
       31 CALL                             R10 0 1
       32 JUMPIFNOT                        R10 ; [+26]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R9 R10 K4 ["createElement"]
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R10 R11 K5 ["Text"]
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
       59 GETUPVAL                         R10 5
       60 GETTABLEKS                       R9 R10 K4 ["createElement"]
       62 GETUPVAL                         R10 6
       63 DUPTABLE                         R11 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       64 GETIMPORT                        R12 K27 [Enum.AutomaticSize.Y]
       66 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       68 LOADN                            R12 1
       69 SETTABLEKS                       R12 R11 K16 ["BackgroundTransparency"]
       71 GETUPVAL                         R13 7
       72 GETTABLEKS                       R12 R13 K28 ["FONT"]
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
       97 GETTABLEKS                       R13 R4 K32 ["assetConfig"]
       99 GETTABLEKS                       R12 R13 K33 ["labelTextColor"]
      101 SETTABLEKS                       R12 R11 K19 ["TextColor"]
      103 GETUPVAL                         R13 7
      104 GETTABLEKS                       R12 R13 K34 ["FONT_SIZE_TITLE"]
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
      138 GETUPVAL                         R17 3
      139 GETTABLEKS                       R16 R17 K4 ["createElement"]
      141 GETUPVAL                         R18 4
      142 GETTABLEKS                       R17 R18 K5 ["Text"]
      144 DUPTABLE                         R18 K8 [{"tag", "LayoutOrder", "Text"}]
      145 LOADK                            R19 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
      146 SETTABLEKS                       R19 R18 K6 ["tag"]
      148 NAMECALL                         R19 R8 K10 ["getNextOrder"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      153 SETTABLEKS                       R14 R18 K5 ["Text"]
      155 CALL                             R16 2 1
      156 JUMP                             ; [+54]
      157 GETUPVAL                         R17 5
      158 GETTABLEKS                       R16 R17 K4 ["createElement"]
      160 GETUPVAL                         R17 6
      161 DUPTABLE                         R18 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      162 GETIMPORT                        R19 K27 [Enum.AutomaticSize.Y]
      164 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
      166 LOADN                            R19 1
      167 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      169 GETUPVAL                         R20 7
      170 GETTABLEKS                       R19 R20 K28 ["FONT"]
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
      188 GETTABLEKS                       R20 R4 K32 ["assetConfig"]
      190 GETTABLEKS                       R19 R20 K33 ["labelTextColor"]
      192 SETTABLEKS                       R19 R18 K19 ["TextColor"]
      194 GETUPVAL                         R20 7
      195 GETTABLEKS                       R19 R20 K34 ["FONT_SIZE_TITLE"]
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
       29 CALL                             R9 0 1
       30 JUMPIFNOT                        R9 ; [+26]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K4 ["createElement"]
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R9 R10 K5 ["Text"]
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
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R8 R9 K4 ["createElement"]
       60 GETUPVAL                         R9 6
       61 DUPTABLE                         R10 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       62 GETIMPORT                        R11 K27 [Enum.AutomaticSize.Y]
       64 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       66 LOADN                            R11 1
       67 SETTABLEKS                       R11 R10 K16 ["BackgroundTransparency"]
       69 GETUPVAL                         R12 7
       70 GETTABLEKS                       R11 R12 K28 ["FONT"]
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
       95 GETTABLEKS                       R12 R3 K32 ["assetConfig"]
       97 GETTABLEKS                       R11 R12 K33 ["labelTextColor"]
       99 SETTABLEKS                       R11 R10 K19 ["TextColor"]
      101 GETUPVAL                         R12 7
      102 GETTABLEKS                       R11 R12 K34 ["FONT_SIZE_TITLE"]
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
      127 GETUPVAL                         R14 3
      128 GETTABLEKS                       R13 R14 K4 ["createElement"]
      130 GETUPVAL                         R15 4
      131 GETTABLEKS                       R14 R15 K5 ["Text"]
      133 DUPTABLE                         R15 K8 [{"tag", "LayoutOrder", "Text"}]
      134 LOADK                            R16 K9 ["text-body-medium content-inverse-muted text-align-x-left text-align-y-center size-full-0 auto-y text-wrap"]
      135 SETTABLEKS                       R16 R15 K6 ["tag"]
      137 NAMECALL                         R16 R7 K10 ["getNextOrder"]
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      142 SETTABLEKS                       R12 R15 K5 ["Text"]
      144 CALL                             R13 2 1
      145 JUMP                             ; [+54]
      146 GETUPVAL                         R14 5
      147 GETTABLEKS                       R13 R14 K4 ["createElement"]
      149 GETUPVAL                         R14 6
      150 DUPTABLE                         R15 K24 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      151 GETIMPORT                        R16 K27 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      155 LOADN                            R16 1
      156 SETTABLEKS                       R16 R15 K16 ["BackgroundTransparency"]
      158 GETUPVAL                         R17 7
      159 GETTABLEKS                       R16 R17 K28 ["FONT"]
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
      177 GETTABLEKS                       R17 R3 K32 ["assetConfig"]
      179 GETTABLEKS                       R16 R17 K33 ["labelTextColor"]
      181 SETTABLEKS                       R16 R15 K19 ["TextColor"]
      183 GETUPVAL                         R17 7
      184 GETTABLEKS                       R16 R17 K34 ["FONT_SIZE_TITLE"]
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
      818 JUMPIFNOT                        R77 ; [+110]
      819 JUMPIFNOT                        R45 ; [+109]
      820 JUMPIFNOT                        R40 ; [+108]
      821 GETTABLEKS                       R77 R2 K208 ["showColorPicker"]
      823 JUMPIFNOT                        R77 ; [+105]
      824 GETUPVAL                         R77 8
      825 GETTABLEKS                       R76 R77 K92 ["createElement"]
      827 GETUPVAL                         R78 22
      828 GETTABLEKS                       R77 R78 K209 ["View"]
      830 DUPTABLE                         R78 K211 [{"tag", "Size", "LayoutOrder"}]
      831 LOADK                            R79 K212 ["row align-x-left align-y-top size-full-x"]
      832 SETTABLEKS                       R79 R78 K210 ["tag"]
      834 GETIMPORT                        R79 K142 [UDim2.new]
      836 LOADN                            R80 1
      837 LOADN                            R81 0
      838 LOADN                            R82 0
      839 LOADN                            R83 70
      840 CALL                             R79 4 1
      841 SETTABLEKS                       R79 R78 K2 ["Size"]
      843 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      845 CALL                             R79 1 1
      846 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      848 DUPTABLE                         R79 K214 [{"Title", "ColorPickerButton"}]
      849 GETUPVAL                         R81 23
      850 GETTABLEKS                       R80 R81 K92 ["createElement"]
      852 GETUPVAL                         R82 22
      853 GETTABLEKS                       R81 R82 K161 ["Text"]
      855 DUPTABLE                         R82 K215 [{"tag", "Text", "Size", "LayoutOrder"}]
      856 NEWTABLE                         R83 4 0
      858 LOADB                            R84 1
      859 SETTABLEKS                       R84 R83 K216 ["text-align-y-top text-align-x-left"]
      861 GETUPVAL                         R84 24
      862 CALL                             R84 0 1
      863 SETTABLEKS                       R84 R83 K217 ["text-title-small bold content-emphasis"]
      865 GETUPVAL                         R85 24
      866 CALL                             R85 0 1
      867 NOT                              R84 R85
      868 SETTABLEKS                       R84 R83 K218 ["text-body-large"]
      870 SETTABLEKS                       R83 R82 K210 ["tag"]
      872 LOADK                            R85 K86 ["General"]
      873 LOADK                            R86 K219 ["ThumbnailSkinTone"]
      874 NAMECALL                         R83 R61 K74 ["getText"]
      876 CALL                             R83 3 1
      877 SETTABLEKS                       R83 R82 K161 ["Text"]
      879 GETIMPORT                        R83 K142 [UDim2.new]
      881 LOADN                            R84 0
      882 GETUPVAL                         R86 0
      883 GETTABLEKS                       R85 R86 K220 ["TITLE_GUTTER_WIDTH"]
      885 LOADN                            R86 1
      886 LOADN                            R87 0
      887 CALL                             R83 4 1
      888 SETTABLEKS                       R83 R82 K2 ["Size"]
      890 LOADN                            R83 1
      891 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      893 CALL                             R80 2 1
      894 SETTABLEKS                       R80 R79 K97 ["Title"]
      896 GETUPVAL                         R81 8
      897 GETTABLEKS                       R80 R81 K92 ["createElement"]
      899 GETUPVAL                         R81 25
      900 DUPTABLE                         R82 K224 [{"selectedColor", "setSelectedColor", "Localization", "showRequiredError", "LayoutOrder", "textColor"}]
      901 GETTABLEKS                       R83 R2 K221 ["selectedColor"]
      903 SETTABLEKS                       R83 R82 K221 ["selectedColor"]
      905 GETTABLEKS                       R83 R2 K222 ["setSelectedColor"]
      907 SETTABLEKS                       R83 R82 K222 ["setSelectedColor"]
      909 SETTABLEKS                       R61 R82 K71 ["Localization"]
      911 GETTABLEKS                       R83 R2 K225 ["showColorPickerRequiredError"]
      913 SETTABLEKS                       R83 R82 K182 ["showRequiredError"]
      915 LOADN                            R83 2
      916 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      918 GETTABLEKS                       R84 R1 K78 ["publishAsset"]
      920 GETTABLEKS                       R83 R84 K226 ["titleTextColor"]
      922 SETTABLEKS                       R83 R82 K223 ["textColor"]
      924 CALL                             R80 2 1
      925 SETTABLEKS                       R80 R79 K213 ["ColorPickerButton"]
      927 CALL                             R76 3 1
      928 JUMP                             ; [+1]
      929 LOADNIL                          R76
      930 SETTABLEKS                       R76 R75 K101 ["ColorPickerRow"]
      932 JUMPIFNOT                        R68 ; [+181]
      933 GETUPVAL                         R77 8
      934 GETTABLEKS                       R76 R77 K92 ["createElement"]
      936 GETUPVAL                         R77 26
      937 DUPTABLE                         R78 K227 [{"AutomaticSize", "LayoutOrder", "Title"}]
      938 GETIMPORT                        R79 K169 [Enum.AutomaticSize.XY]
      940 SETTABLEKS                       R79 R78 K159 ["AutomaticSize"]
      942 NAMECALL                         R79 R62 K140 ["getNextOrder"]
      944 CALL                             R79 1 1
      945 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      947 SETTABLEKS                       R69 R78 K97 ["Title"]
      949 DUPTABLE                         R79 K229 [{"ValidationPane"}]
      950 GETUPVAL                         R81 8
      951 GETTABLEKS                       R80 R81 K92 ["createElement"]
      953 GETUPVAL                         R81 12
      954 DUPTABLE                         R82 K230 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      955 GETIMPORT                        R83 K232 [Enum.AutomaticSize.Y]
      957 SETTABLEKS                       R83 R82 K159 ["AutomaticSize"]
      959 GETIMPORT                        R83 K122 [Enum.FillDirection.Vertical]
      961 SETTABLEKS                       R83 R82 K135 ["Layout"]
      963 LOADN                            R83 1
      964 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      966 GETIMPORT                        R83 K234 [UDim2.fromScale]
      968 LOADN                            R84 1
      969 LOADN                            R85 0
      970 CALL                             R83 2 1
      971 SETTABLEKS                       R83 R82 K2 ["Size"]
      973 LOADN                            R83 18
      974 SETTABLEKS                       R83 R82 K136 ["Spacing"]
      976 DUPTABLE                         R83 K145 [{"Bottom"}]
      977 LOADN                            R84 24
      978 SETTABLEKS                       R84 R83 K144 ["Bottom"]
      980 SETTABLEKS                       R83 R82 K93 ["Padding"]
      982 DUPTABLE                         R83 K238 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      983 GETUPVAL                         R85 8
      984 GETTABLEKS                       R84 R85 K92 ["createElement"]
      986 GETUPVAL                         R85 27
      987 DUPTABLE                         R86 K242 [{"LayoutOrder", "isUGCBodyBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
      988 LOADN                            R87 1
      989 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
      991 GETUPVAL                         R88 1
      992 GETTABLEKS                       R87 R88 K239 ["isUGCBodyBundleType"]
      994 MOVE                             R88 R14
      995 CALL                             R87 1 1
      996 SETTABLEKS                       R87 R86 K239 ["isUGCBodyBundleType"]
      998 GETTABLEKS                       R88 R0 K204 ["state"]
     1000 GETTABLEKS                       R87 R88 K196 ["validationState"]
     1002 SETTABLEKS                       R87 R86 K196 ["validationState"]
     1004 GETTABLEKS                       R87 R0 K198 ["setValidationState"]
     1006 SETTABLEKS                       R87 R86 K198 ["setValidationState"]
     1008 GETTABLEKS                       R88 R0 K204 ["state"]
     1010 GETTABLEKS                       R87 R88 K197 ["validationFailureReasons"]
     1012 SETTABLEKS                       R87 R86 K197 ["validationFailureReasons"]
     1014 GETTABLEKS                       R87 R0 K199 ["setValidationFailureReasons"]
     1016 SETTABLEKS                       R87 R86 K199 ["setValidationFailureReasons"]
     1018 GETTABLEKS                       R88 R0 K204 ["state"]
     1020 GETTABLEKS                       R87 R88 K200 ["ugcBundleValidationResults"]
     1022 SETTABLEKS                       R87 R86 K240 ["validationResults"]
     1024 GETTABLEKS                       R87 R0 K201 ["setUGCBundleValidationResults"]
     1026 SETTABLEKS                       R87 R86 K201 ["setUGCBundleValidationResults"]
     1028 GETTABLEKS                       R88 R0 K204 ["state"]
     1030 GETTABLEKS                       R87 R88 K243 ["currentAssetType"]
     1032 SETTABLEKS                       R87 R86 K13 ["assetTypeEnum"]
     1034 GETTABLEKS                       R87 R2 K88 ["instances"]
     1036 SETTABLEKS                       R87 R86 K88 ["instances"]
     1038 GETTABLEKS                       R87 R2 K89 ["allowedBundleTypeSettings"]
     1040 SETTABLEKS                       R87 R86 K89 ["allowedBundleTypeSettings"]
     1042 GETTABLEKS                       R87 R2 K241 ["onAssetValidationResultChanged"]
     1044 SETTABLEKS                       R87 R86 K241 ["onAssetValidationResultChanged"]
     1046 CALL                             R84 2 1
     1047 SETTABLEKS                       R84 R83 K235 ["UGCBundleValidation"]
     1049 JUMPIFNOT                        R70 ; [+26]
     1050 GETUPVAL                         R85 8
     1051 GETTABLEKS                       R84 R85 K92 ["createElement"]
     1053 GETUPVAL                         R85 12
     1054 DUPTABLE                         R86 K244 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1055 GETIMPORT                        R87 K232 [Enum.AutomaticSize.Y]
     1057 SETTABLEKS                       R87 R86 K159 ["AutomaticSize"]
     1059 GETIMPORT                        R87 K122 [Enum.FillDirection.Vertical]
     1061 SETTABLEKS                       R87 R86 K135 ["Layout"]
     1063 LOADN                            R87 2
     1064 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1066 GETIMPORT                        R87 K234 [UDim2.fromScale]
     1068 LOADN                            R88 1
     1069 LOADN                            R89 0
     1070 CALL                             R87 2 1
     1071 SETTABLEKS                       R87 R86 K2 ["Size"]
     1073 MOVE                             R87 R70
     1074 CALL                             R84 3 1
     1075 JUMP                             ; [+1]
     1076 LOADNIL                          R84
     1077 SETTABLEKS                       R84 R83 K236 ["MissingOptionalAccessoriesMsg"]
     1079 JUMPIFNOT                        R71 ; [+26]
     1080 GETUPVAL                         R85 8
     1081 GETTABLEKS                       R84 R85 K92 ["createElement"]
     1083 GETUPVAL                         R85 12
     1084 DUPTABLE                         R86 K244 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1085 GETIMPORT                        R87 K232 [Enum.AutomaticSize.Y]
     1087 SETTABLEKS                       R87 R86 K159 ["AutomaticSize"]
     1089 GETIMPORT                        R87 K122 [Enum.FillDirection.Vertical]
     1091 SETTABLEKS                       R87 R86 K135 ["Layout"]
     1093 LOADN                            R87 3
     1094 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1096 GETIMPORT                        R87 K234 [UDim2.fromScale]
     1098 LOADN                            R88 1
     1099 LOADN                            R89 0
     1100 CALL                             R87 2 1
     1101 SETTABLEKS                       R87 R86 K2 ["Size"]
     1103 MOVE                             R87 R71
     1104 CALL                             R84 3 1
     1105 JUMP                             ; [+1]
     1106 LOADNIL                          R84
     1107 SETTABLEKS                       R84 R83 K237 ["UnknownMeshPartsMsgChildren"]
     1109 CALL                             R80 3 1
     1110 SETTABLEKS                       R80 R79 K228 ["ValidationPane"]
     1112 CALL                             R76 3 1
     1113 JUMP                             ; [+1]
     1114 LOADNIL                          R76
     1115 SETTABLEKS                       R76 R75 K102 ["ContentTypeBodyValidation"]
     1117 GETTABLEKS                       R77 R2 K193 ["dataSharingEnabled"]
     1119 JUMPIFNOT                        R77 ; [+32]
     1120 GETUPVAL                         R78 1
     1121 GETTABLEKS                       R77 R78 K85 ["isUGCBundleType"]
     1123 MOVE                             R78 R14
     1124 CALL                             R77 1 1
     1125 JUMPIF                           R77 ; [+6]
     1126 GETUPVAL                         R78 1
     1127 GETTABLEKS                       R77 R78 K245 ["isCatalogAsset"]
     1129 MOVE                             R78 R14
     1130 CALL                             R77 1 1
     1131 JUMPIFNOT                        R77 ; [+20]
     1132 GETUPVAL                         R77 8
     1133 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1135 GETUPVAL                         R77 28
     1136 DUPTABLE                         R78 K246 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1137 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1139 CALL                             R79 1 1
     1140 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1142 GETTABLEKS                       R79 R2 K194 ["dataSharingToggled"]
     1144 SETTABLEKS                       R79 R78 K194 ["dataSharingToggled"]
     1146 GETTABLEKS                       R79 R2 K195 ["onDataConsentToggleClick"]
     1148 SETTABLEKS                       R79 R78 K195 ["onDataConsentToggleClick"]
     1150 CALL                             R76 2 1
     1151 JUMP                             ; [+1]
     1152 LOADNIL                          R76
     1153 SETTABLEKS                       R76 R75 K103 ["DataSharingConsent"]
     1155 JUMPIF                           R45 ; [+36]
     1156 JUMPIFNOT                        R40 ; [+35]
     1157 GETUPVAL                         R77 8
     1158 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1160 GETUPVAL                         R77 19
     1161 DUPTABLE                         R78 K247 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "preselectedGroupId", "LayoutOrder"}]
     1162 LOADK                            R81 K86 ["General"]
     1163 LOADK                            R82 K104 ["Ownership"]
     1164 NAMECALL                         R79 R61 K74 ["getText"]
     1166 CALL                             R79 3 1
     1167 SETTABLEKS                       R79 R78 K97 ["Title"]
     1169 SETTABLEKS                       R9 R78 K8 ["owner"]
     1171 LOADN                            R79 70
     1172 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1174 SETTABLEKS                       R26 R78 K205 ["onDropDownSelect"]
     1176 GETUPVAL                         R80 20
     1177 CALL                             R80 0 1
     1178 JUMPIFNOT                        R80 ; [+3]
     1179 GETTABLEKS                       R79 R2 K206 ["preselectedGroupId"]
     1181 JUMP                             ; [+1]
     1182 LOADNIL                          R79
     1183 SETTABLEKS                       R79 R78 K206 ["preselectedGroupId"]
     1185 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1187 CALL                             R79 1 1
     1188 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1190 CALL                             R76 2 1
     1191 JUMP                             ; [+1]
     1192 LOADNIL                          R76
     1193 SETTABLEKS                       R76 R75 K104 ["Ownership"]
     1195 MOVE                             R76 R22
     1196 JUMPIFNOT                        R76 ; [+41]
     1197 GETUPVAL                         R77 8
     1198 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1200 LOADK                            R77 K248 ["Frame"]
     1201 DUPTABLE                         R78 K249 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1202 LOADN                            R79 1
     1203 SETTABLEKS                       R79 R78 K150 ["BackgroundTransparency"]
     1205 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1207 CALL                             R79 1 1
     1208 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1210 GETIMPORT                        R79 K142 [UDim2.new]
     1212 LOADN                            R80 1
     1213 LOADN                            R81 0
     1214 LOADN                            R82 0
     1215 LOADN                            R83 20
     1216 CALL                             R79 4 1
     1217 SETTABLEKS                       R79 R78 K2 ["Size"]
     1219 DUPTABLE                         R79 K251 [{"Separator"}]
     1220 GETUPVAL                         R81 8
     1221 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1223 GETUPVAL                         R81 29
     1224 DUPTABLE                         R82 K253 [{"Position"}]
     1225 GETIMPORT                        R83 K142 [UDim2.new]
     1227 LOADK                            R84 K254 [0.5]
     1228 LOADN                            R85 0
     1229 LOADK                            R86 K254 [0.5]
     1230 LOADN                            R87 0
     1231 CALL                             R83 4 1
     1232 SETTABLEKS                       R83 R82 K252 ["Position"]
     1234 CALL                             R80 2 1
     1235 SETTABLEKS                       R80 R79 K250 ["Separator"]
     1237 CALL                             R76 3 1
     1238 SETTABLEKS                       R76 R75 K105 ["DividerBase"]
     1240 JUMPIFNOT                        R44 ; [+24]
     1241 GETUPVAL                         R77 8
     1242 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1244 GETUPVAL                         R77 30
     1245 DUPTABLE                         R78 K259 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1246 GETTABLEKS                       R79 R2 K30 ["assetId"]
     1248 SETTABLEKS                       R79 R78 K255 ["AssetId"]
     1250 SETTABLEKS                       R14 R78 K18 ["AssetType"]
     1252 SETTABLEKS                       R6 R78 K256 ["AllowSelectPrivate"]
     1254 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1256 CALL                             R79 1 1
     1257 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1259 SETTABLEKS                       R15 R78 K257 ["IsAssetPublic"]
     1261 SETTABLEKS                       R28 R78 K258 ["OnSelected"]
     1263 CALL                             R76 2 1
     1264 JUMP                             ; [+1]
     1265 LOADNIL                          R76
     1266 SETTABLEKS                       R76 R75 K106 ["Sharing"]
     1268 JUMPIFNOT                        R44 ; [+42]
     1269 GETUPVAL                         R77 8
     1270 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1272 LOADK                            R77 K248 ["Frame"]
     1273 DUPTABLE                         R78 K249 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1274 LOADN                            R79 1
     1275 SETTABLEKS                       R79 R78 K150 ["BackgroundTransparency"]
     1277 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1279 CALL                             R79 1 1
     1280 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1282 GETIMPORT                        R79 K142 [UDim2.new]
     1284 LOADN                            R80 1
     1285 LOADN                            R81 0
     1286 LOADN                            R82 0
     1287 LOADN                            R83 20
     1288 CALL                             R79 4 1
     1289 SETTABLEKS                       R79 R78 K2 ["Size"]
     1291 DUPTABLE                         R79 K251 [{"Separator"}]
     1292 GETUPVAL                         R81 8
     1293 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1295 GETUPVAL                         R81 29
     1296 DUPTABLE                         R82 K253 [{"Position"}]
     1297 GETIMPORT                        R83 K142 [UDim2.new]
     1299 LOADK                            R84 K254 [0.5]
     1300 LOADN                            R85 0
     1301 LOADK                            R86 K254 [0.5]
     1302 LOADN                            R87 0
     1303 CALL                             R83 4 1
     1304 SETTABLEKS                       R83 R82 K252 ["Position"]
     1306 CALL                             R80 2 1
     1307 SETTABLEKS                       R80 R79 K250 ["Separator"]
     1309 CALL                             R76 3 1
     1310 JUMP                             ; [+1]
     1311 LOADNIL                          R76
     1312 SETTABLEKS                       R76 R75 K107 ["SharingDivider"]
     1314 JUMPIFNOT                        R22 ; [+109]
     1315 GETUPVAL                         R77 8
     1316 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1318 GETUPVAL                         R77 12
     1319 DUPTABLE                         R78 K260 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1320 GETIMPORT                        R79 K232 [Enum.AutomaticSize.Y]
     1322 SETTABLEKS                       R79 R78 K159 ["AutomaticSize"]
     1324 GETIMPORT                        R79 K122 [Enum.FillDirection.Vertical]
     1326 SETTABLEKS                       R79 R78 K135 ["Layout"]
     1328 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1330 CALL                             R79 1 1
     1331 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1333 DUPTABLE                         R79 K261 [{"Top"}]
     1334 LOADN                            R80 20
     1335 SETTABLEKS                       R80 R79 K127 ["Top"]
     1337 SETTABLEKS                       R79 R78 K93 ["Padding"]
     1339 DUPTABLE                         R79 K264 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1340 GETUPVAL                         R81 8
     1341 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1343 GETUPVAL                         R81 31
     1344 DUPTABLE                         R82 K265 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder"}]
     1345 GETTABLEKS                       R83 R2 K71 ["Localization"]
     1347 LOADK                            R85 K10 ["allowComment"]
     1348 LOADK                            R86 K11 ["commentOn"]
     1349 NAMECALL                         R83 R83 K74 ["getText"]
     1351 CALL                             R83 3 1
     1352 SETTABLEKS                       R83 R82 K161 ["Text"]
     1354 GETTABLEKS                       R84 R1 K268 ["uploadResult"]
     1356 GETTABLEKS                       R83 R84 K269 ["text"]
     1358 SETTABLEKS                       R83 R82 K163 ["TextColor3"]
     1360 GETUPVAL                         R84 13
     1361 GETTABLEKS                       R83 R84 K270 ["FONT_SIZE_LARGE"]
     1363 SETTABLEKS                       R83 R82 K166 ["TextSize"]
     1365 GETIMPORT                        R83 K142 [UDim2.new]
     1367 LOADN                            R84 1
     1368 LOADN                            R85 0
     1369 LOADN                            R86 0
     1370 LOADN                            R87 24
     1371 CALL                             R83 4 1
     1372 SETTABLEKS                       R83 R82 K2 ["Size"]
     1374 NAMECALL                         R83 R62 K140 ["getNextOrder"]
     1376 CALL                             R83 1 1
     1377 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1379 CALL                             R80 2 1
     1380 SETTABLEKS                       R80 R79 K262 ["CreatorStoreConfigurationText"]
     1382 GETUPVAL                         R81 8
     1383 GETTABLEKS                       R80 R81 K92 ["createElement"]
     1385 GETUPVAL                         R81 32
     1386 DUPTABLE                         R82 K272 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1387 SETTABLEKS                       R23 R82 K161 ["Text"]
     1389 GETTABLEKS                       R84 R1 K268 ["uploadResult"]
     1391 GETTABLEKS                       R83 R84 K273 ["link"]
     1393 SETTABLEKS                       R83 R82 K163 ["TextColor3"]
     1395 GETUPVAL                         R84 13
     1396 GETTABLEKS                       R83 R84 K270 ["FONT_SIZE_LARGE"]
     1398 SETTABLEKS                       R83 R82 K166 ["TextSize"]
     1400 GETIMPORT                        R83 K142 [UDim2.new]
     1402 LOADN                            R84 1
     1403 LOADN                            R85 0
     1404 LOADN                            R86 0
     1405 LOADN                            R87 24
     1406 CALL                             R83 4 1
     1407 SETTABLEKS                       R83 R82 K2 ["Size"]
     1409 NAMECALL                         R83 R62 K140 ["getNextOrder"]
     1411 CALL                             R83 1 1
     1412 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1414 NEWCLOSURE                       R83 P4
     1415 CAPTURE                          UPVAL U33
     1416 CAPTURE                          VAL R23
     1417 SETTABLEKS                       R83 R82 K271 ["OnClick"]
     1419 CALL                             R80 2 1
     1420 SETTABLEKS                       R80 R79 K263 ["CreatorStoreConfigurationLink"]
     1422 CALL                             R76 3 1
     1423 JUMP                             ; [+1]
     1424 LOADNIL                          R76
     1425 SETTABLEKS                       R76 R75 K108 ["CreatorStoreConfigurationFrame"]
     1427 MOVE                             R76 R42
     1428 JUMPIFNOT                        R76 ; [+27]
     1429 GETUPVAL                         R77 8
     1430 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1432 GETUPVAL                         R77 34
     1433 DUPTABLE                         R78 K277 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1434 LOADK                            R81 K86 ["General"]
     1435 LOADK                            R82 K22 [Enum.AssetType.Video]
     1436 NAMECALL                         R79 R61 K74 ["getText"]
     1438 CALL                             R79 3 1
     1439 SETTABLEKS                       R79 R78 K97 ["Title"]
     1441 LOADN                            R79 80
     1442 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1444 SETTABLEKS                       R11 R78 K274 ["CommentEnabled"]
     1446 SETTABLEKS                       R12 R78 K275 ["CommentOn"]
     1448 SETTABLEKS                       R30 R78 K276 ["ToggleCallback"]
     1450 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1452 CALL                             R79 1 1
     1453 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1455 CALL                             R76 2 1
     1456 SETTABLEKS                       R76 R75 K109 ["Comment"]
     1458 MOVE                             R76 R21
     1459 JUMPIFNOT                        R76 ; [+25]
     1460 GETUPVAL                         R77 8
     1461 GETTABLEKS                       R76 R77 K92 ["createElement"]
     1463 GETUPVAL                         R77 35
     1464 DUPTABLE                         R78 K279 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1465 LOADK                            R81 K86 ["General"]
     1466 LOADK                            R82 K110 ["DeleteLocal"]
     1467 NAMECALL                         R79 R61 K74 ["getText"]
     1469 CALL                             R79 3 1
     1470 SETTABLEKS                       R79 R78 K97 ["Title"]
     1472 LOADN                            R79 80
     1473 SETTABLEKS                       R79 R78 K178 ["TotalHeight"]
     1475 SETTABLEKS                       R13 R78 K110 ["DeleteLocal"]
     1477 SETTABLEKS                       R31 R78 K276 ["ToggleCallback"]
     1479 NAMECALL                         R79 R62 K140 ["getNextOrder"]
     1481 CALL                             R79 1 1
     1482 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1484 CALL                             R76 2 1
     1485 SETTABLEKS                       R76 R75 K110 ["DeleteLocal"]
     1487 CALL                             R72 3 -1
     1488 RETURN                           R72 -1

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
      296 GETTABLEKS                       R55 R56 K68 ["getFFlagToolboxAssetConfigGroupOwnership"]
      298 CALL                             R54 1 1
      299 GETIMPORT                        R55 K11 [require]
      301 GETTABLEKS                       R58 R1 K7 ["Src"]
      303 GETTABLEKS                       R57 R58 K66 ["Flags"]
      305 GETTABLEKS                       R56 R57 K69 ["getFFlagToolboxAssetConfigFoundationMigration"]
      307 CALL                             R55 1 1
      308 GETIMPORT                        R56 K11 [require]
      310 GETTABLEKS                       R59 R1 K7 ["Src"]
      312 GETTABLEKS                       R58 R59 K66 ["Flags"]
      314 GETTABLEKS                       R57 R58 K70 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      316 CALL                             R56 1 1
      317 GETIMPORT                        R57 K11 [require]
      319 GETTABLEKS                       R60 R1 K7 ["Src"]
      321 GETTABLEKS                       R59 R60 K71 ["Types"]
      323 GETTABLEKS                       R58 R59 K72 ["MarketplaceFiatServiceTypes"]
      325 CALL                             R57 1 1
      326 GETIMPORT                        R58 K11 [require]
      328 GETTABLEKS                       R61 R1 K7 ["Src"]
      330 GETTABLEKS                       R60 R61 K51 ["Actions"]
      332 GETTABLEKS                       R59 R60 K73 ["SetFieldError"]
      334 CALL                             R58 1 1
      335 GETIMPORT                        R59 K11 [require]
      337 GETTABLEKS                       R62 R1 K7 ["Src"]
      339 GETTABLEKS                       R61 R62 K8 ["Util"]
      341 GETTABLEKS                       R60 R61 K74 ["PageInfoHelper"]
      343 CALL                             R59 1 1
      344 GETTABLEKS                       R60 R13 K75 ["PureComponent"]
      346 LOADK                            R62 K76 ["PublishAsset"]
      347 NAMECALL                         R60 R60 K77 ["extend"]
      349 CALL                             R60 2 1
      350 DUPCLOSURE                       R61 K78 [PROTO_9]
      351 CAPTURE                          VAL R30
      352 CAPTURE                          VAL R13
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R35
      355 CAPTURE                          VAL R10
      356 SETTABLEKS                       R61 R60 K79 ["init"]
      358 DUPCLOSURE                       R61 K80 [PROTO_10]
      359 SETTABLEKS                       R61 R60 K81 ["bumpCanvas"]
      361 DUPCLOSURE                       R61 K82 [PROTO_11]
      362 CAPTURE                          VAL R31
      363 CAPTURE                          VAL R29
      364 CAPTURE                          VAL R55
      365 CAPTURE                          VAL R12
      366 CAPTURE                          VAL R6
      367 CAPTURE                          VAL R13
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R32
      370 CAPTURE                          VAL R34
      371 SETTABLEKS                       R61 R60 K83 ["getMissingOptionalPartsMessage"]
      373 DUPCLOSURE                       R61 K84 [PROTO_12]
      374 CAPTURE                          VAL R31
      375 CAPTURE                          VAL R29
      376 CAPTURE                          VAL R55
      377 CAPTURE                          VAL R12
      378 CAPTURE                          VAL R6
      379 CAPTURE                          VAL R13
      380 CAPTURE                          VAL R19
      381 CAPTURE                          VAL R32
      382 SETTABLEKS                       R61 R60 K85 ["getUnknownMeshPartMessage"]
      384 DUPCLOSURE                       R61 K86 [PROTO_18]
      385 CAPTURE                          VAL R30
      386 CAPTURE                          VAL R31
      387 CAPTURE                          VAL R37
      388 CAPTURE                          VAL R35
      389 CAPTURE                          VAL R7
      390 CAPTURE                          VAL R11
      391 CAPTURE                          VAL R8
      392 CAPTURE                          VAL R29
      393 CAPTURE                          VAL R13
      394 CAPTURE                          VAL R27
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R25
      397 CAPTURE                          VAL R23
      398 CAPTURE                          VAL R32
      399 CAPTURE                          VAL R33
      400 CAPTURE                          VAL R48
      401 CAPTURE                          VAL R40
      402 CAPTURE                          VAL R56
      403 CAPTURE                          VAL R44
      404 CAPTURE                          VAL R41
      405 CAPTURE                          VAL R54
      406 CAPTURE                          VAL R53
      407 CAPTURE                          VAL R6
      408 CAPTURE                          VAL R12
      409 CAPTURE                          VAL R55
      410 CAPTURE                          VAL R52
      411 CAPTURE                          VAL R47
      412 CAPTURE                          VAL R51
      413 CAPTURE                          VAL R50
      414 CAPTURE                          VAL R24
      415 CAPTURE                          VAL R46
      416 CAPTURE                          VAL R19
      417 CAPTURE                          VAL R22
      418 CAPTURE                          VAL R0
      419 CAPTURE                          VAL R45
      420 CAPTURE                          VAL R42
      421 SETTABLEKS                       R61 R60 K87 ["render"]
      423 DUPCLOSURE                       R61 K88 [PROTO_19]
      424 CAPTURE                          VAL R10
      425 DUPCLOSURE                       R62 K89 [PROTO_22]
      426 CAPTURE                          VAL R58
      427 CAPTURE                          VAL R30
      428 CAPTURE                          VAL R39
      429 MOVE                             R63 R16
      430 DUPTABLE                         R64 K91 [{"Localization", "Stylizer"}]
      431 GETTABLEKS                       R65 R15 K45 ["Localization"]
      433 SETTABLEKS                       R65 R64 K45 ["Localization"]
      435 GETTABLEKS                       R65 R15 K90 ["Stylizer"]
      437 SETTABLEKS                       R65 R64 K90 ["Stylizer"]
      439 CALL                             R63 1 1
      440 MOVE                             R64 R60
      441 CALL                             R63 1 1
      442 MOVE                             R60 R63
      443 GETTABLEKS                       R63 R14 K92 ["connect"]
      445 MOVE                             R64 R61
      446 MOVE                             R65 R62
      447 CALL                             R63 2 1
      448 MOVE                             R64 R60
      449 CALL                             R63 1 -1
      450 RETURN                           R63 -1
