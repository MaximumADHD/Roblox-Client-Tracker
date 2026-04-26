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
      312 GETUPVAL                         R72 11
      313 CALL                             R72 0 1
      314 JUMPIFNOT                        R72 ; [+20]
      315 GETUPVAL                         R73 1
      316 GETTABLEKS                       R72 R73 K86 ["isUGCBodyBundleType"]
      318 MOVE                             R73 R14
      319 CALL                             R72 1 1
      320 JUMPIFNOT                        R72 ; [+7]
      321 LOADK                            R74 K87 ["General"]
      322 LOADK                            R75 K88 ["BodyValidation"]
      323 NAMECALL                         R72 R61 K74 ["getText"]
      325 CALL                             R72 3 1
      326 MOVE                             R69 R72
      327 JUMP                             ; [+13]
      328 LOADK                            R74 K87 ["General"]
      329 LOADK                            R75 K89 ["ShoeValidation"]
      330 NAMECALL                         R72 R61 K74 ["getText"]
      332 CALL                             R72 3 1
      333 MOVE                             R69 R72
      334 JUMP                             ; [+6]
      335 LOADK                            R74 K87 ["General"]
      336 LOADK                            R75 K88 ["BodyValidation"]
      337 NAMECALL                         R72 R61 K74 ["getText"]
      339 CALL                             R72 3 1
      340 MOVE                             R69 R72
      341 GETTABLEKS                       R72 R2 K90 ["instances"]
      343 JUMPIFNOT                        R72 ; [+20]
      344 GETTABLEKS                       R75 R2 K90 ["instances"]
      346 GETTABLEN                        R74 R75 1
      347 GETTABLEKS                       R75 R2 K91 ["allowedBundleTypeSettings"]
      349 MOVE                             R76 R14
      350 MOVE                             R77 R1
      351 NAMECALL                         R72 R0 K92 ["getMissingOptionalPartsMessage"]
      353 CALL                             R72 5 1
      354 MOVE                             R70 R72
      355 GETTABLEKS                       R75 R2 K90 ["instances"]
      357 GETTABLEN                        R74 R75 1
      358 MOVE                             R75 R14
      359 MOVE                             R76 R1
      360 NAMECALL                         R72 R0 K93 ["getUnknownMeshPartMessage"]
      362 CALL                             R72 4 1
      363 MOVE                             R71 R72
      364 GETUPVAL                         R73 8
      365 GETTABLEKS                       R72 R73 K94 ["createElement"]
      367 GETUPVAL                         R73 12
      368 MOVE                             R74 R65
      369 DUPTABLE                         R75 K113 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal"}]
      370 GETUPVAL                         R77 8
      371 GETTABLEKS                       R76 R77 K94 ["createElement"]
      373 LOADK                            R77 K114 ["UIPadding"]
      374 DUPTABLE                         R78 K119 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      375 GETIMPORT                        R79 K121 [UDim.new]
      377 LOADN                            R80 0
      378 LOADN                            R81 24
      379 CALL                             R79 2 1
      380 SETTABLEKS                       R79 R78 K115 ["PaddingTop"]
      382 GETIMPORT                        R79 K121 [UDim.new]
      384 LOADN                            R80 0
      385 LOADN                            R81 24
      386 CALL                             R79 2 1
      387 SETTABLEKS                       R79 R78 K116 ["PaddingBottom"]
      389 GETIMPORT                        R79 K121 [UDim.new]
      391 LOADN                            R80 0
      392 LOADN                            R81 24
      393 CALL                             R79 2 1
      394 SETTABLEKS                       R79 R78 K117 ["PaddingLeft"]
      396 GETIMPORT                        R79 K121 [UDim.new]
      398 LOADN                            R80 0
      399 LOADN                            R81 24
      400 CALL                             R79 2 1
      401 SETTABLEKS                       R79 R78 K118 ["PaddingRight"]
      403 CALL                             R76 2 1
      404 SETTABLEKS                       R76 R75 K95 ["Padding"]
      406 GETUPVAL                         R77 8
      407 GETTABLEKS                       R76 R77 K94 ["createElement"]
      409 LOADK                            R77 K96 ["UIListLayout"]
      410 NEWTABLE                         R78 8 0
      412 GETIMPORT                        R79 K124 [Enum.FillDirection.Vertical]
      414 SETTABLEKS                       R79 R78 K122 ["FillDirection"]
      416 GETIMPORT                        R79 K127 [Enum.HorizontalAlignment.Left]
      418 SETTABLEKS                       R79 R78 K125 ["HorizontalAlignment"]
      420 GETIMPORT                        R79 K130 [Enum.VerticalAlignment.Top]
      422 SETTABLEKS                       R79 R78 K128 ["VerticalAlignment"]
      424 GETIMPORT                        R79 K132 [Enum.SortOrder.LayoutOrder]
      426 SETTABLEKS                       R79 R78 K131 ["SortOrder"]
      428 GETIMPORT                        R79 K121 [UDim.new]
      430 LOADN                            R80 0
      431 LOADN                            R81 0
      432 CALL                             R79 2 1
      433 SETTABLEKS                       R79 R78 K95 ["Padding"]
      435 GETUPVAL                         R81 8
      436 GETTABLEKS                       R80 R81 K133 ["Change"]
      438 GETTABLEKS                       R79 R80 K134 ["AbsoluteContentSize"]
      440 GETTABLEKS                       R80 R0 K135 ["refreshCanvas"]
      442 JUMPIF                           R80 ; [+3]
      443 NEWCLOSURE                       R80 P1
      444 CAPTURE                          VAL R0
      445 CAPTURE                          VAL R3
      446 SETTABLE                         R80 R78 R79
      447 GETUPVAL                         R80 8
      448 GETTABLEKS                       R79 R80 K80 ["Ref"]
      450 GETTABLEKS                       R80 R0 K136 ["listLayoutRef"]
      452 SETTABLE                         R80 R78 R79
      453 CALL                             R76 2 1
      454 SETTABLEKS                       R76 R75 K96 ["UIListLayout"]
      456 JUMPIF                           R45 ; [+133]
      457 JUMPIFNOT                        R19 ; [+132]
      458 JUMPIFNOT                        R46 ; [+131]
      459 GETUPVAL                         R77 8
      460 GETTABLEKS                       R76 R77 K94 ["createElement"]
      462 GETUPVAL                         R77 13
      463 DUPTABLE                         R78 K139 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
      464 GETIMPORT                        R79 K127 [Enum.HorizontalAlignment.Left]
      466 SETTABLEKS                       R79 R78 K125 ["HorizontalAlignment"]
      468 GETIMPORT                        R79 K141 [Enum.FillDirection.Horizontal]
      470 SETTABLEKS                       R79 R78 K137 ["Layout"]
      472 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      474 CALL                             R79 1 1
      475 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      477 GETIMPORT                        R79 K144 [UDim2.new]
      479 LOADN                            R80 1
      480 LOADN                            R81 0
      481 LOADN                            R82 0
      482 GETUPVAL                         R84 14
      483 GETTABLEKS                       R83 R84 K145 ["FONT_SIZE_TITLE"]
      485 CALL                             R79 4 1
      486 SETTABLEKS                       R79 R78 K2 ["Size"]
      488 DUPTABLE                         R79 K147 [{"Bottom"}]
      489 LOADN                            R80 30
      490 SETTABLEKS                       R80 R79 K146 ["Bottom"]
      492 SETTABLEKS                       R79 R78 K95 ["Padding"]
      494 LOADN                            R79 5
      495 SETTABLEKS                       R79 R78 K138 ["Spacing"]
      497 GETIMPORT                        R79 K130 [Enum.VerticalAlignment.Top]
      499 SETTABLEKS                       R79 R78 K128 ["VerticalAlignment"]
      501 DUPTABLE                         R79 K150 [{"Icon", "WarningText"}]
      502 GETUPVAL                         R81 8
      503 GETTABLEKS                       R80 R81 K94 ["createElement"]
      505 LOADK                            R81 K151 ["ImageLabel"]
      506 DUPTABLE                         R82 K155 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      507 LOADN                            R83 1
      508 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      510 LOADN                            R83 1
      511 SETTABLEKS                       R83 R82 K152 ["BackgroundTransparency"]
      513 GETUPVAL                         R84 15
      514 GETTABLEKS                       R83 R84 K156 ["WARNING_ICON"]
      516 SETTABLEKS                       R83 R82 K153 ["Image"]
      518 GETTABLEKS                       R83 R63 K157 ["warningIconColor"]
      520 SETTABLEKS                       R83 R82 K154 ["ImageColor3"]
      522 GETIMPORT                        R83 K159 [UDim2.fromOffset]
      524 LOADN                            R84 24
      525 LOADN                            R85 24
      526 CALL                             R83 2 1
      527 SETTABLEKS                       R83 R82 K2 ["Size"]
      529 CALL                             R80 2 1
      530 SETTABLEKS                       R80 R79 K148 ["Icon"]
      532 GETUPVAL                         R81 8
      533 GETTABLEKS                       R80 R81 K94 ["createElement"]
      535 LOADK                            R81 K160 ["TextLabel"]
      536 DUPTABLE                         R82 K169 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      537 GETIMPORT                        R83 K171 [Enum.AutomaticSize.XY]
      539 SETTABLEKS                       R83 R82 K161 ["AutomaticSize"]
      541 LOADN                            R83 2
      542 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      544 LOADN                            R83 1
      545 SETTABLEKS                       R83 R82 K152 ["BackgroundTransparency"]
      547 GETUPVAL                         R84 14
      548 GETTABLEKS                       R83 R84 K172 ["FONT"]
      550 SETTABLEKS                       R83 R82 K162 ["Font"]
      552 GETIMPORT                        R83 K144 [UDim2.new]
      554 LOADN                            R84 1
      555 LOADN                            R85 0
      556 LOADN                            R86 1
      557 LOADN                            R87 0
      558 CALL                             R83 4 1
      559 SETTABLEKS                       R83 R82 K2 ["Size"]
      561 SETTABLEKS                       R60 R82 K163 ["Text"]
      563 LOADB                            R83 1
      564 SETTABLEKS                       R83 R82 K164 ["TextWrapped"]
      566 GETTABLEKS                       R84 R1 K173 ["assetConfig"]
      568 GETTABLEKS                       R83 R84 K174 ["warningColor"]
      570 SETTABLEKS                       R83 R82 K165 ["TextColor3"]
      572 GETIMPORT                        R83 K175 [Enum.TextXAlignment.Left]
      574 SETTABLEKS                       R83 R82 K166 ["TextXAlignment"]
      576 GETIMPORT                        R83 K177 [Enum.TextYAlignment.Center]
      578 SETTABLEKS                       R83 R82 K167 ["TextYAlignment"]
      580 GETUPVAL                         R84 14
      581 GETTABLEKS                       R83 R84 K145 ["FONT_SIZE_TITLE"]
      583 SETTABLEKS                       R83 R82 K168 ["TextSize"]
      585 CALL                             R80 2 1
      586 SETTABLEKS                       R80 R79 K149 ["WarningText"]
      588 CALL                             R76 3 1
      589 JUMP                             ; [+1]
      590 LOADNIL                          R76
      591 SETTABLEKS                       R76 R75 K97 ["ModelWarningFrame"]
      593 JUMPIFNOT                        R20 ; [+19]
      594 GETUPVAL                         R77 8
      595 GETTABLEKS                       R76 R77 K94 ["createElement"]
      597 GETUPVAL                         R77 16
      598 DUPTABLE                         R78 K178 [{"LayoutOrder", "Title"}]
      599 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      601 CALL                             R79 1 1
      602 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      604 LOADK                            R81 K75 ["AssetConfig"]
      605 LOADK                            R82 K179 ["PublishPluginHeader"]
      606 NAMECALL                         R79 R61 K74 ["getText"]
      608 CALL                             R79 3 1
      609 SETTABLEKS                       R79 R78 K99 ["Title"]
      611 CALL                             R76 2 1
      612 JUMP                             ; [+1]
      613 LOADNIL                          R76
      614 SETTABLEKS                       R76 R75 K98 ["Header"]
      616 GETUPVAL                         R77 8
      617 GETTABLEKS                       R76 R77 K94 ["createElement"]
      619 GETUPVAL                         R77 17
      620 DUPTABLE                         R78 K186 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      621 LOADK                            R81 K87 ["General"]
      622 LOADK                            R82 K99 ["Title"]
      623 NAMECALL                         R79 R61 K74 ["getText"]
      625 CALL                             R79 3 1
      626 SETTABLEKS                       R79 R78 K99 ["Title"]
      628 LOADN                            R79 100
      629 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
      631 GETUPVAL                         R80 0
      632 GETTABLEKS                       R79 R80 K187 ["NAME_CHARACTER_LIMIT"]
      634 SETTABLEKS                       R79 R78 K181 ["MaxCount"]
      636 SETTABLEKS                       R24 R78 K182 ["TextChangeCallBack"]
      638 SETTABLEKS                       R7 R78 K183 ["TextContent"]
      640 GETUPVAL                         R80 18
      641 CALL                             R80 0 1
      642 JUMPIFNOT                        R80 ; [+3]
      643 GETTABLEKS                       R79 R2 K188 ["showNameRequiredError"]
      645 JUMP                             ; [+1]
      646 LOADNIL                          R79
      647 SETTABLEKS                       R79 R78 K184 ["showRequiredError"]
      649 NEWCLOSURE                       R79 P2
      650 CAPTURE                          VAL R0
      651 CAPTURE                          UPVAL U0
      652 SETTABLEKS                       R79 R78 K185 ["ErrorCallback"]
      654 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      656 CALL                             R79 1 1
      657 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      659 CALL                             R76 2 1
      660 SETTABLEKS                       R76 R75 K99 ["Title"]
      662 GETUPVAL                         R77 8
      663 GETTABLEKS                       R76 R77 K94 ["createElement"]
      665 GETUPVAL                         R77 17
      666 DUPTABLE                         R78 K190 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "showRequiredError", "ErrorCallback", "LayoutOrder"}]
      667 LOADK                            R81 K191 ["AssetConfigDescription"]
      668 LOADK                            R82 K192 ["AddRobloxLinks"]
      669 NAMECALL                         R79 R61 K74 ["getText"]
      671 CALL                             R79 3 1
      672 SETTABLEKS                       R79 R78 K189 ["BottomRightText"]
      674 LOADK                            R81 K87 ["General"]
      675 LOADK                            R82 K100 ["Description"]
      676 NAMECALL                         R79 R61 K74 ["getText"]
      678 CALL                             R79 3 1
      679 SETTABLEKS                       R79 R78 K99 ["Title"]
      681 LOADN                            R79 180
      682 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
      684 GETUPVAL                         R80 0
      685 GETTABLEKS                       R79 R80 K193 ["DESCRIPTION_CHARACTER_LIMIT"]
      687 SETTABLEKS                       R79 R78 K181 ["MaxCount"]
      689 SETTABLEKS                       R25 R78 K182 ["TextChangeCallBack"]
      691 SETTABLEKS                       R8 R78 K183 ["TextContent"]
      693 GETUPVAL                         R80 18
      694 CALL                             R80 0 1
      695 JUMPIFNOT                        R80 ; [+3]
      696 GETTABLEKS                       R79 R2 K194 ["showDescriptionRequiredError"]
      698 JUMP                             ; [+1]
      699 LOADNIL                          R79
      700 SETTABLEKS                       R79 R78 K184 ["showRequiredError"]
      702 NEWCLOSURE                       R79 P3
      703 CAPTURE                          VAL R0
      704 CAPTURE                          UPVAL U0
      705 SETTABLEKS                       R79 R78 K185 ["ErrorCallback"]
      707 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      709 CALL                             R79 1 1
      710 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      712 CALL                             R76 2 1
      713 SETTABLEKS                       R76 R75 K100 ["Description"]
      715 JUMPIFNOT                        R45 ; [+80]
      716 GETUPVAL                         R77 8
      717 GETTABLEKS                       R76 R77 K94 ["createElement"]
      719 GETUPVAL                         R77 19
      720 DUPTABLE                         R78 K205 [{"LayoutOrder", "onCategoryChange", "canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      721 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      723 CALL                             R79 1 1
      724 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      726 SETTABLEKS                       R27 R78 K39 ["onCategoryChange"]
      728 GETUPVAL                         R80 4
      729 CALL                             R80 0 1
      730 JUMPIFNOT                        R80 ; [+2]
      731 MOVE                             R79 R32
      732 JUMP                             ; [+1]
      733 LOADNIL                          R79
      734 SETTABLEKS                       R79 R78 K44 ["canUploadWithUgcRestrictions"]
      736 GETUPVAL                         R80 4
      737 CALL                             R80 0 1
      738 JUMPIFNOT                        R80 ; [+2]
      739 MOVE                             R79 R33
      740 JUMP                             ; [+1]
      741 LOADNIL                          R79
      742 SETTABLEKS                       R79 R78 K45 ["canUploadWithUgcRestrictionsDenyReason"]
      744 GETTABLEKS                       R79 R2 K195 ["dataSharingEnabled"]
      746 SETTABLEKS                       R79 R78 K195 ["dataSharingEnabled"]
      748 GETTABLEKS                       R79 R2 K196 ["dataSharingToggled"]
      750 SETTABLEKS                       R79 R78 K196 ["dataSharingToggled"]
      752 GETTABLEKS                       R79 R2 K197 ["onDataConsentToggleClick"]
      754 SETTABLEKS                       R79 R78 K197 ["onDataConsentToggleClick"]
      756 GETTABLEKS                       R80 R0 K206 ["state"]
      758 GETTABLEKS                       R79 R80 K198 ["validationState"]
      760 SETTABLEKS                       R79 R78 K198 ["validationState"]
      762 GETTABLEKS                       R80 R0 K206 ["state"]
      764 GETTABLEKS                       R79 R80 K199 ["validationFailureReasons"]
      766 SETTABLEKS                       R79 R78 K199 ["validationFailureReasons"]
      768 GETTABLEKS                       R79 R0 K200 ["setValidationState"]
      770 SETTABLEKS                       R79 R78 K200 ["setValidationState"]
      772 GETTABLEKS                       R79 R0 K201 ["setValidationFailureReasons"]
      774 SETTABLEKS                       R79 R78 K201 ["setValidationFailureReasons"]
      776 GETTABLEKS                       R80 R0 K206 ["state"]
      778 GETTABLEKS                       R79 R80 K202 ["ugcBundleValidationResults"]
      780 SETTABLEKS                       R79 R78 K202 ["ugcBundleValidationResults"]
      782 GETTABLEKS                       R79 R0 K203 ["setUGCBundleValidationResults"]
      784 SETTABLEKS                       R79 R78 K203 ["setUGCBundleValidationResults"]
      786 GETTABLEKS                       R79 R0 K204 ["setCurrentAssetType"]
      788 SETTABLEKS                       R79 R78 K204 ["setCurrentAssetType"]
      790 GETTABLEKS                       R79 R2 K90 ["instances"]
      792 SETTABLEKS                       R79 R78 K90 ["instances"]
      794 CALL                             R76 2 1
      795 JUMP                             ; [+1]
      796 LOADNIL                          R76
      797 SETTABLEKS                       R76 R75 K101 ["AssetTypeSelection"]
      799 JUMPIFNOT                        R45 ; [+36]
      800 JUMPIFNOT                        R40 ; [+35]
      801 GETUPVAL                         R77 8
      802 GETTABLEKS                       R76 R77 K94 ["createElement"]
      804 GETUPVAL                         R77 20
      805 DUPTABLE                         R78 K209 [{"LayoutOrder", "onDropDownSelect", "owner", "preselectedGroupId", "Title", "TotalHeight"}]
      806 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      808 CALL                             R79 1 1
      809 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      811 SETTABLEKS                       R26 R78 K207 ["onDropDownSelect"]
      813 SETTABLEKS                       R9 R78 K8 ["owner"]
      815 GETUPVAL                         R80 21
      816 CALL                             R80 0 1
      817 JUMPIFNOT                        R80 ; [+3]
      818 GETTABLEKS                       R79 R2 K208 ["preselectedGroupId"]
      820 JUMP                             ; [+1]
      821 LOADNIL                          R79
      822 SETTABLEKS                       R79 R78 K208 ["preselectedGroupId"]
      824 LOADK                            R81 K87 ["General"]
      825 LOADK                            R82 K106 ["Ownership"]
      826 NAMECALL                         R79 R61 K74 ["getText"]
      828 CALL                             R79 3 1
      829 SETTABLEKS                       R79 R78 K99 ["Title"]
      831 LOADN                            R79 70
      832 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
      834 CALL                             R76 2 1
      835 JUMP                             ; [+1]
      836 LOADNIL                          R76
      837 SETTABLEKS                       R76 R75 K102 ["Creator"]
      839 GETUPVAL                         R77 22
      840 CALL                             R77 0 1
      841 JUMPIFNOT                        R77 ; [+110]
      842 JUMPIFNOT                        R45 ; [+109]
      843 JUMPIFNOT                        R40 ; [+108]
      844 GETTABLEKS                       R77 R2 K210 ["showColorPicker"]
      846 JUMPIFNOT                        R77 ; [+105]
      847 GETUPVAL                         R77 8
      848 GETTABLEKS                       R76 R77 K94 ["createElement"]
      850 GETUPVAL                         R78 23
      851 GETTABLEKS                       R77 R78 K211 ["View"]
      853 DUPTABLE                         R78 K213 [{"tag", "Size", "LayoutOrder"}]
      854 LOADK                            R79 K214 ["row align-x-left align-y-top size-full-x"]
      855 SETTABLEKS                       R79 R78 K212 ["tag"]
      857 GETIMPORT                        R79 K144 [UDim2.new]
      859 LOADN                            R80 1
      860 LOADN                            R81 0
      861 LOADN                            R82 0
      862 LOADN                            R83 70
      863 CALL                             R79 4 1
      864 SETTABLEKS                       R79 R78 K2 ["Size"]
      866 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      868 CALL                             R79 1 1
      869 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      871 DUPTABLE                         R79 K216 [{"Title", "ColorPickerButton"}]
      872 GETUPVAL                         R81 24
      873 GETTABLEKS                       R80 R81 K94 ["createElement"]
      875 GETUPVAL                         R82 23
      876 GETTABLEKS                       R81 R82 K163 ["Text"]
      878 DUPTABLE                         R82 K217 [{"tag", "Text", "Size", "LayoutOrder"}]
      879 NEWTABLE                         R83 4 0
      881 LOADB                            R84 1
      882 SETTABLEKS                       R84 R83 K218 ["text-align-y-top text-align-x-left"]
      884 GETUPVAL                         R84 25
      885 CALL                             R84 0 1
      886 SETTABLEKS                       R84 R83 K219 ["text-title-small bold content-emphasis"]
      888 GETUPVAL                         R85 25
      889 CALL                             R85 0 1
      890 NOT                              R84 R85
      891 SETTABLEKS                       R84 R83 K220 ["text-body-large"]
      893 SETTABLEKS                       R83 R82 K212 ["tag"]
      895 LOADK                            R85 K87 ["General"]
      896 LOADK                            R86 K221 ["ThumbnailSkinTone"]
      897 NAMECALL                         R83 R61 K74 ["getText"]
      899 CALL                             R83 3 1
      900 SETTABLEKS                       R83 R82 K163 ["Text"]
      902 GETIMPORT                        R83 K144 [UDim2.new]
      904 LOADN                            R84 0
      905 GETUPVAL                         R86 0
      906 GETTABLEKS                       R85 R86 K222 ["TITLE_GUTTER_WIDTH"]
      908 LOADN                            R86 1
      909 LOADN                            R87 0
      910 CALL                             R83 4 1
      911 SETTABLEKS                       R83 R82 K2 ["Size"]
      913 LOADN                            R83 1
      914 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      916 CALL                             R80 2 1
      917 SETTABLEKS                       R80 R79 K99 ["Title"]
      919 GETUPVAL                         R81 8
      920 GETTABLEKS                       R80 R81 K94 ["createElement"]
      922 GETUPVAL                         R81 26
      923 DUPTABLE                         R82 K226 [{"selectedColor", "setSelectedColor", "Localization", "showRequiredError", "LayoutOrder", "textColor"}]
      924 GETTABLEKS                       R83 R2 K223 ["selectedColor"]
      926 SETTABLEKS                       R83 R82 K223 ["selectedColor"]
      928 GETTABLEKS                       R83 R2 K224 ["setSelectedColor"]
      930 SETTABLEKS                       R83 R82 K224 ["setSelectedColor"]
      932 SETTABLEKS                       R61 R82 K71 ["Localization"]
      934 GETTABLEKS                       R83 R2 K227 ["showColorPickerRequiredError"]
      936 SETTABLEKS                       R83 R82 K184 ["showRequiredError"]
      938 LOADN                            R83 2
      939 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      941 GETTABLEKS                       R84 R1 K78 ["publishAsset"]
      943 GETTABLEKS                       R83 R84 K228 ["titleTextColor"]
      945 SETTABLEKS                       R83 R82 K225 ["textColor"]
      947 CALL                             R80 2 1
      948 SETTABLEKS                       R80 R79 K215 ["ColorPickerButton"]
      950 CALL                             R76 3 1
      951 JUMP                             ; [+1]
      952 LOADNIL                          R76
      953 SETTABLEKS                       R76 R75 K103 ["ColorPickerRow"]
      955 JUMPIFNOT                        R68 ; [+181]
      956 GETUPVAL                         R77 8
      957 GETTABLEKS                       R76 R77 K94 ["createElement"]
      959 GETUPVAL                         R77 27
      960 DUPTABLE                         R78 K229 [{"AutomaticSize", "LayoutOrder", "Title"}]
      961 GETIMPORT                        R79 K171 [Enum.AutomaticSize.XY]
      963 SETTABLEKS                       R79 R78 K161 ["AutomaticSize"]
      965 NAMECALL                         R79 R62 K142 ["getNextOrder"]
      967 CALL                             R79 1 1
      968 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
      970 SETTABLEKS                       R69 R78 K99 ["Title"]
      972 DUPTABLE                         R79 K231 [{"ValidationPane"}]
      973 GETUPVAL                         R81 8
      974 GETTABLEKS                       R80 R81 K94 ["createElement"]
      976 GETUPVAL                         R81 13
      977 DUPTABLE                         R82 K232 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
      978 GETIMPORT                        R83 K234 [Enum.AutomaticSize.Y]
      980 SETTABLEKS                       R83 R82 K161 ["AutomaticSize"]
      982 GETIMPORT                        R83 K124 [Enum.FillDirection.Vertical]
      984 SETTABLEKS                       R83 R82 K137 ["Layout"]
      986 LOADN                            R83 1
      987 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
      989 GETIMPORT                        R83 K236 [UDim2.fromScale]
      991 LOADN                            R84 1
      992 LOADN                            R85 0
      993 CALL                             R83 2 1
      994 SETTABLEKS                       R83 R82 K2 ["Size"]
      996 LOADN                            R83 18
      997 SETTABLEKS                       R83 R82 K138 ["Spacing"]
      999 DUPTABLE                         R83 K147 [{"Bottom"}]
     1000 LOADN                            R84 24
     1001 SETTABLEKS                       R84 R83 K146 ["Bottom"]
     1003 SETTABLEKS                       R83 R82 K95 ["Padding"]
     1005 DUPTABLE                         R83 K240 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
     1006 GETUPVAL                         R85 8
     1007 GETTABLEKS                       R84 R85 K94 ["createElement"]
     1009 GETUPVAL                         R85 28
     1010 DUPTABLE                         R86 K243 [{"LayoutOrder", "isUGCBodyBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
     1011 LOADN                            R87 1
     1012 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1014 GETUPVAL                         R88 1
     1015 GETTABLEKS                       R87 R88 K86 ["isUGCBodyBundleType"]
     1017 MOVE                             R88 R14
     1018 CALL                             R87 1 1
     1019 SETTABLEKS                       R87 R86 K86 ["isUGCBodyBundleType"]
     1021 GETTABLEKS                       R88 R0 K206 ["state"]
     1023 GETTABLEKS                       R87 R88 K198 ["validationState"]
     1025 SETTABLEKS                       R87 R86 K198 ["validationState"]
     1027 GETTABLEKS                       R87 R0 K200 ["setValidationState"]
     1029 SETTABLEKS                       R87 R86 K200 ["setValidationState"]
     1031 GETTABLEKS                       R88 R0 K206 ["state"]
     1033 GETTABLEKS                       R87 R88 K199 ["validationFailureReasons"]
     1035 SETTABLEKS                       R87 R86 K199 ["validationFailureReasons"]
     1037 GETTABLEKS                       R87 R0 K201 ["setValidationFailureReasons"]
     1039 SETTABLEKS                       R87 R86 K201 ["setValidationFailureReasons"]
     1041 GETTABLEKS                       R88 R0 K206 ["state"]
     1043 GETTABLEKS                       R87 R88 K202 ["ugcBundleValidationResults"]
     1045 SETTABLEKS                       R87 R86 K241 ["validationResults"]
     1047 GETTABLEKS                       R87 R0 K203 ["setUGCBundleValidationResults"]
     1049 SETTABLEKS                       R87 R86 K203 ["setUGCBundleValidationResults"]
     1051 GETTABLEKS                       R88 R0 K206 ["state"]
     1053 GETTABLEKS                       R87 R88 K244 ["currentAssetType"]
     1055 SETTABLEKS                       R87 R86 K13 ["assetTypeEnum"]
     1057 GETTABLEKS                       R87 R2 K90 ["instances"]
     1059 SETTABLEKS                       R87 R86 K90 ["instances"]
     1061 GETTABLEKS                       R87 R2 K91 ["allowedBundleTypeSettings"]
     1063 SETTABLEKS                       R87 R86 K91 ["allowedBundleTypeSettings"]
     1065 GETTABLEKS                       R87 R2 K242 ["onAssetValidationResultChanged"]
     1067 SETTABLEKS                       R87 R86 K242 ["onAssetValidationResultChanged"]
     1069 CALL                             R84 2 1
     1070 SETTABLEKS                       R84 R83 K237 ["UGCBundleValidation"]
     1072 JUMPIFNOT                        R70 ; [+26]
     1073 GETUPVAL                         R85 8
     1074 GETTABLEKS                       R84 R85 K94 ["createElement"]
     1076 GETUPVAL                         R85 13
     1077 DUPTABLE                         R86 K245 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1078 GETIMPORT                        R87 K234 [Enum.AutomaticSize.Y]
     1080 SETTABLEKS                       R87 R86 K161 ["AutomaticSize"]
     1082 GETIMPORT                        R87 K124 [Enum.FillDirection.Vertical]
     1084 SETTABLEKS                       R87 R86 K137 ["Layout"]
     1086 LOADN                            R87 2
     1087 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1089 GETIMPORT                        R87 K236 [UDim2.fromScale]
     1091 LOADN                            R88 1
     1092 LOADN                            R89 0
     1093 CALL                             R87 2 1
     1094 SETTABLEKS                       R87 R86 K2 ["Size"]
     1096 MOVE                             R87 R70
     1097 CALL                             R84 3 1
     1098 JUMP                             ; [+1]
     1099 LOADNIL                          R84
     1100 SETTABLEKS                       R84 R83 K238 ["MissingOptionalAccessoriesMsg"]
     1102 JUMPIFNOT                        R71 ; [+26]
     1103 GETUPVAL                         R85 8
     1104 GETTABLEKS                       R84 R85 K94 ["createElement"]
     1106 GETUPVAL                         R85 13
     1107 DUPTABLE                         R86 K245 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
     1108 GETIMPORT                        R87 K234 [Enum.AutomaticSize.Y]
     1110 SETTABLEKS                       R87 R86 K161 ["AutomaticSize"]
     1112 GETIMPORT                        R87 K124 [Enum.FillDirection.Vertical]
     1114 SETTABLEKS                       R87 R86 K137 ["Layout"]
     1116 LOADN                            R87 3
     1117 SETTABLEKS                       R87 R86 K3 ["LayoutOrder"]
     1119 GETIMPORT                        R87 K236 [UDim2.fromScale]
     1121 LOADN                            R88 1
     1122 LOADN                            R89 0
     1123 CALL                             R87 2 1
     1124 SETTABLEKS                       R87 R86 K2 ["Size"]
     1126 MOVE                             R87 R71
     1127 CALL                             R84 3 1
     1128 JUMP                             ; [+1]
     1129 LOADNIL                          R84
     1130 SETTABLEKS                       R84 R83 K239 ["UnknownMeshPartsMsgChildren"]
     1132 CALL                             R80 3 1
     1133 SETTABLEKS                       R80 R79 K230 ["ValidationPane"]
     1135 CALL                             R76 3 1
     1136 JUMP                             ; [+1]
     1137 LOADNIL                          R76
     1138 SETTABLEKS                       R76 R75 K104 ["ContentTypeBodyValidation"]
     1140 GETTABLEKS                       R77 R2 K195 ["dataSharingEnabled"]
     1142 JUMPIFNOT                        R77 ; [+32]
     1143 GETUPVAL                         R78 1
     1144 GETTABLEKS                       R77 R78 K85 ["isUGCBundleType"]
     1146 MOVE                             R78 R14
     1147 CALL                             R77 1 1
     1148 JUMPIF                           R77 ; [+6]
     1149 GETUPVAL                         R78 1
     1150 GETTABLEKS                       R77 R78 K246 ["isCatalogAsset"]
     1152 MOVE                             R78 R14
     1153 CALL                             R77 1 1
     1154 JUMPIFNOT                        R77 ; [+20]
     1155 GETUPVAL                         R77 8
     1156 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1158 GETUPVAL                         R77 29
     1159 DUPTABLE                         R78 K247 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1160 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1162 CALL                             R79 1 1
     1163 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1165 GETTABLEKS                       R79 R2 K196 ["dataSharingToggled"]
     1167 SETTABLEKS                       R79 R78 K196 ["dataSharingToggled"]
     1169 GETTABLEKS                       R79 R2 K197 ["onDataConsentToggleClick"]
     1171 SETTABLEKS                       R79 R78 K197 ["onDataConsentToggleClick"]
     1173 CALL                             R76 2 1
     1174 JUMP                             ; [+1]
     1175 LOADNIL                          R76
     1176 SETTABLEKS                       R76 R75 K105 ["DataSharingConsent"]
     1178 JUMPIF                           R45 ; [+36]
     1179 JUMPIFNOT                        R40 ; [+35]
     1180 GETUPVAL                         R77 8
     1181 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1183 GETUPVAL                         R77 20
     1184 DUPTABLE                         R78 K248 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "preselectedGroupId", "LayoutOrder"}]
     1185 LOADK                            R81 K87 ["General"]
     1186 LOADK                            R82 K106 ["Ownership"]
     1187 NAMECALL                         R79 R61 K74 ["getText"]
     1189 CALL                             R79 3 1
     1190 SETTABLEKS                       R79 R78 K99 ["Title"]
     1192 SETTABLEKS                       R9 R78 K8 ["owner"]
     1194 LOADN                            R79 70
     1195 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
     1197 SETTABLEKS                       R26 R78 K207 ["onDropDownSelect"]
     1199 GETUPVAL                         R80 21
     1200 CALL                             R80 0 1
     1201 JUMPIFNOT                        R80 ; [+3]
     1202 GETTABLEKS                       R79 R2 K208 ["preselectedGroupId"]
     1204 JUMP                             ; [+1]
     1205 LOADNIL                          R79
     1206 SETTABLEKS                       R79 R78 K208 ["preselectedGroupId"]
     1208 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1210 CALL                             R79 1 1
     1211 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1213 CALL                             R76 2 1
     1214 JUMP                             ; [+1]
     1215 LOADNIL                          R76
     1216 SETTABLEKS                       R76 R75 K106 ["Ownership"]
     1218 MOVE                             R76 R22
     1219 JUMPIFNOT                        R76 ; [+41]
     1220 GETUPVAL                         R77 8
     1221 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1223 LOADK                            R77 K249 ["Frame"]
     1224 DUPTABLE                         R78 K250 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1225 LOADN                            R79 1
     1226 SETTABLEKS                       R79 R78 K152 ["BackgroundTransparency"]
     1228 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1230 CALL                             R79 1 1
     1231 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1233 GETIMPORT                        R79 K144 [UDim2.new]
     1235 LOADN                            R80 1
     1236 LOADN                            R81 0
     1237 LOADN                            R82 0
     1238 LOADN                            R83 20
     1239 CALL                             R79 4 1
     1240 SETTABLEKS                       R79 R78 K2 ["Size"]
     1242 DUPTABLE                         R79 K252 [{"Separator"}]
     1243 GETUPVAL                         R81 8
     1244 GETTABLEKS                       R80 R81 K94 ["createElement"]
     1246 GETUPVAL                         R81 30
     1247 DUPTABLE                         R82 K254 [{"Position"}]
     1248 GETIMPORT                        R83 K144 [UDim2.new]
     1250 LOADK                            R84 K255 [0.5]
     1251 LOADN                            R85 0
     1252 LOADK                            R86 K255 [0.5]
     1253 LOADN                            R87 0
     1254 CALL                             R83 4 1
     1255 SETTABLEKS                       R83 R82 K253 ["Position"]
     1257 CALL                             R80 2 1
     1258 SETTABLEKS                       R80 R79 K251 ["Separator"]
     1260 CALL                             R76 3 1
     1261 SETTABLEKS                       R76 R75 K107 ["DividerBase"]
     1263 JUMPIFNOT                        R44 ; [+24]
     1264 GETUPVAL                         R77 8
     1265 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1267 GETUPVAL                         R77 31
     1268 DUPTABLE                         R78 K260 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1269 GETTABLEKS                       R79 R2 K30 ["assetId"]
     1271 SETTABLEKS                       R79 R78 K256 ["AssetId"]
     1273 SETTABLEKS                       R14 R78 K18 ["AssetType"]
     1275 SETTABLEKS                       R6 R78 K257 ["AllowSelectPrivate"]
     1277 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1279 CALL                             R79 1 1
     1280 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1282 SETTABLEKS                       R15 R78 K258 ["IsAssetPublic"]
     1284 SETTABLEKS                       R28 R78 K259 ["OnSelected"]
     1286 CALL                             R76 2 1
     1287 JUMP                             ; [+1]
     1288 LOADNIL                          R76
     1289 SETTABLEKS                       R76 R75 K108 ["Sharing"]
     1291 JUMPIFNOT                        R44 ; [+42]
     1292 GETUPVAL                         R77 8
     1293 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1295 LOADK                            R77 K249 ["Frame"]
     1296 DUPTABLE                         R78 K250 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1297 LOADN                            R79 1
     1298 SETTABLEKS                       R79 R78 K152 ["BackgroundTransparency"]
     1300 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1302 CALL                             R79 1 1
     1303 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1305 GETIMPORT                        R79 K144 [UDim2.new]
     1307 LOADN                            R80 1
     1308 LOADN                            R81 0
     1309 LOADN                            R82 0
     1310 LOADN                            R83 20
     1311 CALL                             R79 4 1
     1312 SETTABLEKS                       R79 R78 K2 ["Size"]
     1314 DUPTABLE                         R79 K252 [{"Separator"}]
     1315 GETUPVAL                         R81 8
     1316 GETTABLEKS                       R80 R81 K94 ["createElement"]
     1318 GETUPVAL                         R81 30
     1319 DUPTABLE                         R82 K254 [{"Position"}]
     1320 GETIMPORT                        R83 K144 [UDim2.new]
     1322 LOADK                            R84 K255 [0.5]
     1323 LOADN                            R85 0
     1324 LOADK                            R86 K255 [0.5]
     1325 LOADN                            R87 0
     1326 CALL                             R83 4 1
     1327 SETTABLEKS                       R83 R82 K253 ["Position"]
     1329 CALL                             R80 2 1
     1330 SETTABLEKS                       R80 R79 K251 ["Separator"]
     1332 CALL                             R76 3 1
     1333 JUMP                             ; [+1]
     1334 LOADNIL                          R76
     1335 SETTABLEKS                       R76 R75 K109 ["SharingDivider"]
     1337 JUMPIFNOT                        R22 ; [+109]
     1338 GETUPVAL                         R77 8
     1339 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1341 GETUPVAL                         R77 13
     1342 DUPTABLE                         R78 K261 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1343 GETIMPORT                        R79 K234 [Enum.AutomaticSize.Y]
     1345 SETTABLEKS                       R79 R78 K161 ["AutomaticSize"]
     1347 GETIMPORT                        R79 K124 [Enum.FillDirection.Vertical]
     1349 SETTABLEKS                       R79 R78 K137 ["Layout"]
     1351 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1353 CALL                             R79 1 1
     1354 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1356 DUPTABLE                         R79 K262 [{"Top"}]
     1357 LOADN                            R80 20
     1358 SETTABLEKS                       R80 R79 K129 ["Top"]
     1360 SETTABLEKS                       R79 R78 K95 ["Padding"]
     1362 DUPTABLE                         R79 K265 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1363 GETUPVAL                         R81 8
     1364 GETTABLEKS                       R80 R81 K94 ["createElement"]
     1366 GETUPVAL                         R81 32
     1367 DUPTABLE                         R82 K266 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder"}]
     1368 GETTABLEKS                       R83 R2 K71 ["Localization"]
     1370 LOADK                            R85 K11 ["commentOn"]
     1371 LOADK                            R86 K12 ["deleteLocal"]
     1372 NAMECALL                         R83 R83 K74 ["getText"]
     1374 CALL                             R83 3 1
     1375 SETTABLEKS                       R83 R82 K163 ["Text"]
     1377 GETTABLEKS                       R84 R1 K269 ["uploadResult"]
     1379 GETTABLEKS                       R83 R84 K270 ["text"]
     1381 SETTABLEKS                       R83 R82 K165 ["TextColor3"]
     1383 GETUPVAL                         R84 14
     1384 GETTABLEKS                       R83 R84 K271 ["FONT_SIZE_LARGE"]
     1386 SETTABLEKS                       R83 R82 K168 ["TextSize"]
     1388 GETIMPORT                        R83 K144 [UDim2.new]
     1390 LOADN                            R84 1
     1391 LOADN                            R85 0
     1392 LOADN                            R86 0
     1393 LOADN                            R87 24
     1394 CALL                             R83 4 1
     1395 SETTABLEKS                       R83 R82 K2 ["Size"]
     1397 NAMECALL                         R83 R62 K142 ["getNextOrder"]
     1399 CALL                             R83 1 1
     1400 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1402 CALL                             R80 2 1
     1403 SETTABLEKS                       R80 R79 K263 ["CreatorStoreConfigurationText"]
     1405 GETUPVAL                         R81 8
     1406 GETTABLEKS                       R80 R81 K94 ["createElement"]
     1408 GETUPVAL                         R81 33
     1409 DUPTABLE                         R82 K273 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1410 SETTABLEKS                       R23 R82 K163 ["Text"]
     1412 GETTABLEKS                       R84 R1 K269 ["uploadResult"]
     1414 GETTABLEKS                       R83 R84 K274 ["link"]
     1416 SETTABLEKS                       R83 R82 K165 ["TextColor3"]
     1418 GETUPVAL                         R84 14
     1419 GETTABLEKS                       R83 R84 K271 ["FONT_SIZE_LARGE"]
     1421 SETTABLEKS                       R83 R82 K168 ["TextSize"]
     1423 GETIMPORT                        R83 K144 [UDim2.new]
     1425 LOADN                            R84 1
     1426 LOADN                            R85 0
     1427 LOADN                            R86 0
     1428 LOADN                            R87 24
     1429 CALL                             R83 4 1
     1430 SETTABLEKS                       R83 R82 K2 ["Size"]
     1432 NAMECALL                         R83 R62 K142 ["getNextOrder"]
     1434 CALL                             R83 1 1
     1435 SETTABLEKS                       R83 R82 K3 ["LayoutOrder"]
     1437 NEWCLOSURE                       R83 P4
     1438 CAPTURE                          UPVAL U34
     1439 CAPTURE                          VAL R23
     1440 SETTABLEKS                       R83 R82 K272 ["OnClick"]
     1442 CALL                             R80 2 1
     1443 SETTABLEKS                       R80 R79 K264 ["CreatorStoreConfigurationLink"]
     1445 CALL                             R76 3 1
     1446 JUMP                             ; [+1]
     1447 LOADNIL                          R76
     1448 SETTABLEKS                       R76 R75 K110 ["CreatorStoreConfigurationFrame"]
     1450 MOVE                             R76 R42
     1451 JUMPIFNOT                        R76 ; [+27]
     1452 GETUPVAL                         R77 8
     1453 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1455 GETUPVAL                         R77 35
     1456 DUPTABLE                         R78 K278 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
     1457 LOADK                            R81 K87 ["General"]
     1458 LOADK                            R82 K23 ["Model"]
     1459 NAMECALL                         R79 R61 K74 ["getText"]
     1461 CALL                             R79 3 1
     1462 SETTABLEKS                       R79 R78 K99 ["Title"]
     1464 LOADN                            R79 80
     1465 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
     1467 SETTABLEKS                       R11 R78 K275 ["CommentEnabled"]
     1469 SETTABLEKS                       R12 R78 K276 ["CommentOn"]
     1471 SETTABLEKS                       R30 R78 K277 ["ToggleCallback"]
     1473 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1475 CALL                             R79 1 1
     1476 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1478 CALL                             R76 2 1
     1479 SETTABLEKS                       R76 R75 K111 ["Comment"]
     1481 MOVE                             R76 R21
     1482 JUMPIFNOT                        R76 ; [+25]
     1483 GETUPVAL                         R77 8
     1484 GETTABLEKS                       R76 R77 K94 ["createElement"]
     1486 GETUPVAL                         R77 36
     1487 DUPTABLE                         R78 K280 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1488 LOADK                            R81 K87 ["General"]
     1489 LOADK                            R82 K112 ["DeleteLocal"]
     1490 NAMECALL                         R79 R61 K74 ["getText"]
     1492 CALL                             R79 3 1
     1493 SETTABLEKS                       R79 R78 K99 ["Title"]
     1495 LOADN                            R79 80
     1496 SETTABLEKS                       R79 R78 K180 ["TotalHeight"]
     1498 SETTABLEKS                       R13 R78 K112 ["DeleteLocal"]
     1500 SETTABLEKS                       R31 R78 K277 ["ToggleCallback"]
     1502 NAMECALL                         R79 R62 K142 ["getNextOrder"]
     1504 CALL                             R79 1 1
     1505 SETTABLEKS                       R79 R78 K3 ["LayoutOrder"]
     1507 CALL                             R76 2 1
     1508 SETTABLEKS                       R76 R75 K112 ["DeleteLocal"]
     1510 CALL                             R72 3 -1
     1511 RETURN                           R72 -1

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
      321 GETTABLEKS                       R59 R60 K66 ["Flags"]
      323 GETTABLEKS                       R58 R59 K71 ["getFFlagFixBundleValidationTitle"]
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
      373 CAPTURE                          VAL R55
      374 CAPTURE                          VAL R12
      375 CAPTURE                          VAL R6
      376 CAPTURE                          VAL R13
      377 CAPTURE                          VAL R19
      378 CAPTURE                          VAL R32
      379 CAPTURE                          VAL R34
      380 SETTABLEKS                       R62 R61 K84 ["getMissingOptionalPartsMessage"]
      382 DUPCLOSURE                       R62 K85 [PROTO_12]
      383 CAPTURE                          VAL R31
      384 CAPTURE                          VAL R29
      385 CAPTURE                          VAL R55
      386 CAPTURE                          VAL R12
      387 CAPTURE                          VAL R6
      388 CAPTURE                          VAL R13
      389 CAPTURE                          VAL R19
      390 CAPTURE                          VAL R32
      391 SETTABLEKS                       R62 R61 K86 ["getUnknownMeshPartMessage"]
      393 DUPCLOSURE                       R62 K87 [PROTO_18]
      394 CAPTURE                          VAL R30
      395 CAPTURE                          VAL R31
      396 CAPTURE                          VAL R37
      397 CAPTURE                          VAL R35
      398 CAPTURE                          VAL R7
      399 CAPTURE                          VAL R11
      400 CAPTURE                          VAL R8
      401 CAPTURE                          VAL R29
      402 CAPTURE                          VAL R13
      403 CAPTURE                          VAL R27
      404 CAPTURE                          VAL R28
      405 CAPTURE                          VAL R57
      406 CAPTURE                          VAL R25
      407 CAPTURE                          VAL R23
      408 CAPTURE                          VAL R32
      409 CAPTURE                          VAL R33
      410 CAPTURE                          VAL R48
      411 CAPTURE                          VAL R40
      412 CAPTURE                          VAL R56
      413 CAPTURE                          VAL R44
      414 CAPTURE                          VAL R41
      415 CAPTURE                          VAL R54
      416 CAPTURE                          VAL R53
      417 CAPTURE                          VAL R6
      418 CAPTURE                          VAL R12
      419 CAPTURE                          VAL R55
      420 CAPTURE                          VAL R52
      421 CAPTURE                          VAL R47
      422 CAPTURE                          VAL R51
      423 CAPTURE                          VAL R50
      424 CAPTURE                          VAL R24
      425 CAPTURE                          VAL R46
      426 CAPTURE                          VAL R19
      427 CAPTURE                          VAL R22
      428 CAPTURE                          VAL R0
      429 CAPTURE                          VAL R45
      430 CAPTURE                          VAL R42
      431 SETTABLEKS                       R62 R61 K88 ["render"]
      433 DUPCLOSURE                       R62 K89 [PROTO_19]
      434 CAPTURE                          VAL R10
      435 DUPCLOSURE                       R63 K90 [PROTO_22]
      436 CAPTURE                          VAL R59
      437 CAPTURE                          VAL R30
      438 CAPTURE                          VAL R39
      439 MOVE                             R64 R16
      440 DUPTABLE                         R65 K92 [{"Localization", "Stylizer"}]
      441 GETTABLEKS                       R66 R15 K45 ["Localization"]
      443 SETTABLEKS                       R66 R65 K45 ["Localization"]
      445 GETTABLEKS                       R66 R15 K91 ["Stylizer"]
      447 SETTABLEKS                       R66 R65 K91 ["Stylizer"]
      449 CALL                             R64 1 1
      450 MOVE                             R65 R61
      451 CALL                             R64 1 1
      452 MOVE                             R61 R64
      453 GETTABLEKS                       R64 R14 K93 ["connect"]
      455 MOVE                             R65 R62
      456 MOVE                             R66 R63
      457 CALL                             R64 2 1
      458 MOVE                             R65 R61
      459 CALL                             R64 1 -1
      460 RETURN                           R64 -1
