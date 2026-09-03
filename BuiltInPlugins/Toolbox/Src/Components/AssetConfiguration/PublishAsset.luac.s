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
       30 GETUPVAL                         R10 2
       31 CALL                             R10 0 1
       32 JUMPIFNOT                        R10 ; [+23]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K5 ["Text"]
       39 DUPTABLE                         R11 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       40 NAMECALL                         R12 R8 K10 ["getNextOrder"]
       42 CALL                             R12 1 1
       43 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       45 GETTABLEKS                       R12 R5 K11 ["Localization"]
       47 LOADK                            R14 K12 ["AssetConfig"]
       48 LOADK                            R15 K13 ["UGCMissingOptionalPartsMessage"]
       49 NAMECALL                         R12 R12 K14 ["getText"]
       51 CALL                             R12 3 1
       52 SETTABLEKS                       R12 R11 K5 ["Text"]
       54 CALL                             R9 2 1
       55 JUMP                             ; [+55]
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K4 ["createElement"]
       59 GETUPVAL                         R10 6
       60 DUPTABLE                         R11 K26 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       61 GETIMPORT                        R12 K29 [Enum.AutomaticSize.Y]
       63 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       65 GETUPVAL                         R12 7
       66 GETTABLEKS                       R12 R12 K30 ["FONT"]
       68 SETTABLEKS                       R12 R11 K18 ["Font"]
       70 NAMECALL                         R12 R8 K10 ["getNextOrder"]
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       75 GETIMPORT                        R12 K33 [UDim2.fromScale]
       77 LOADN                            R13 1
       78 LOADN                            R14 0
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K19 ["Size"]
       82 GETTABLEKS                       R12 R5 K11 ["Localization"]
       84 LOADK                            R14 K12 ["AssetConfig"]
       85 LOADK                            R15 K13 ["UGCMissingOptionalPartsMessage"]
       86 NAMECALL                         R12 R12 K14 ["getText"]
       88 CALL                             R12 3 1
       89 SETTABLEKS                       R12 R11 K5 ["Text"]
       91 GETTABLEKS                       R12 R4 K34 ["assetConfig"]
       93 GETTABLEKS                       R12 R12 K35 ["labelTextColor"]
       95 SETTABLEKS                       R12 R11 K20 ["TextColor"]
       97 GETUPVAL                         R12 7
       98 GETTABLEKS                       R12 R12 K36 ["FONT_SIZE_TITLE"]
      100 SETTABLEKS                       R12 R11 K21 ["TextSize"]
      102 GETIMPORT                        R12 K38 [Enum.TextXAlignment.Left]
      104 SETTABLEKS                       R12 R11 K24 ["TextXAlignment"]
      106 GETIMPORT                        R12 K40 [Enum.TextYAlignment.Center]
      108 SETTABLEKS                       R12 R11 K25 ["TextYAlignment"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R7 K41 ["OptionalPartsMessage"]
      113 MOVE                             R9 R6
      114 LOADNIL                          R10
      115 LOADNIL                          R11
      116 FORGPREP                         R9
      117 GETUPVAL                         R15 8
      118 GETTABLEKS                       R16 R5 K11 ["Localization"]
      120 CALL                             R15 1 1
      121 GETTABLE                         R14 R15 R13
      122 JUMPIFEQKNIL                     R14 ; [+71]
      124 GETTABLEKS                       R15 R13 K42 ["Name"]
      126 GETUPVAL                         R17 2
      127 CALL                             R17 0 1
      128 JUMPIFNOT                        R17 ; [+16]
      129 GETUPVAL                         R16 3
      130 GETTABLEKS                       R16 R16 K4 ["createElement"]
      132 GETUPVAL                         R17 4
      133 GETTABLEKS                       R17 R17 K5 ["Text"]
      135 DUPTABLE                         R18 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
      136 NAMECALL                         R19 R8 K10 ["getNextOrder"]
      138 CALL                             R19 1 1
      139 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      141 SETTABLEKS                       R14 R18 K5 ["Text"]
      143 CALL                             R16 2 1
      144 JUMP                             ; [+48]
      145 GETUPVAL                         R16 5
      146 GETTABLEKS                       R16 R16 K4 ["createElement"]
      148 GETUPVAL                         R17 6
      149 DUPTABLE                         R18 K26 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      150 GETIMPORT                        R19 K29 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
      154 GETUPVAL                         R19 7
      155 GETTABLEKS                       R19 R19 K30 ["FONT"]
      157 SETTABLEKS                       R19 R18 K18 ["Font"]
      159 NAMECALL                         R19 R8 K10 ["getNextOrder"]
      161 CALL                             R19 1 1
      162 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      164 GETIMPORT                        R19 K33 [UDim2.fromScale]
      166 LOADN                            R20 1
      167 LOADN                            R21 0
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K19 ["Size"]
      171 SETTABLEKS                       R14 R18 K5 ["Text"]
      173 GETTABLEKS                       R19 R4 K34 ["assetConfig"]
      175 GETTABLEKS                       R19 R19 K35 ["labelTextColor"]
      177 SETTABLEKS                       R19 R18 K20 ["TextColor"]
      179 GETUPVAL                         R19 7
      180 GETTABLEKS                       R19 R19 K36 ["FONT_SIZE_TITLE"]
      182 SETTABLEKS                       R19 R18 K21 ["TextSize"]
      184 GETIMPORT                        R19 K38 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R19 R18 K24 ["TextXAlignment"]
      188 GETIMPORT                        R19 K40 [Enum.TextYAlignment.Center]
      190 SETTABLEKS                       R19 R18 K25 ["TextYAlignment"]
      192 CALL                             R16 2 1
      193 SETTABLE                         R16 R7 R15
      194 FORGLOOP                         R9 2 ; [-78]
      196 RETURN                           R7 1

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
       30 JUMPIFNOT                        R9 ; [+23]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K4 ["createElement"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K5 ["Text"]
       37 DUPTABLE                         R10 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
       38 NAMECALL                         R11 R7 K10 ["getNextOrder"]
       40 CALL                             R11 1 1
       41 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       43 GETTABLEKS                       R11 R4 K11 ["Localization"]
       45 LOADK                            R13 K12 ["AssetConfig"]
       46 LOADK                            R14 K13 ["UGCUnknownMeshPartsMessage"]
       47 NAMECALL                         R11 R11 K14 ["getText"]
       49 CALL                             R11 3 1
       50 SETTABLEKS                       R11 R10 K5 ["Text"]
       52 CALL                             R8 2 1
       53 JUMP                             ; [+55]
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R8 R8 K4 ["createElement"]
       57 GETUPVAL                         R9 6
       58 DUPTABLE                         R10 K26 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       59 GETIMPORT                        R11 K29 [Enum.AutomaticSize.Y]
       61 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       63 GETUPVAL                         R11 7
       64 GETTABLEKS                       R11 R11 K30 ["FONT"]
       66 SETTABLEKS                       R11 R10 K18 ["Font"]
       68 NAMECALL                         R11 R7 K10 ["getNextOrder"]
       70 CALL                             R11 1 1
       71 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       73 GETIMPORT                        R11 K33 [UDim2.fromScale]
       75 LOADN                            R12 1
       76 LOADN                            R13 0
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K19 ["Size"]
       80 GETTABLEKS                       R11 R4 K11 ["Localization"]
       82 LOADK                            R13 K12 ["AssetConfig"]
       83 LOADK                            R14 K13 ["UGCUnknownMeshPartsMessage"]
       84 NAMECALL                         R11 R11 K14 ["getText"]
       86 CALL                             R11 3 1
       87 SETTABLEKS                       R11 R10 K5 ["Text"]
       89 GETTABLEKS                       R11 R3 K34 ["assetConfig"]
       91 GETTABLEKS                       R11 R11 K35 ["labelTextColor"]
       93 SETTABLEKS                       R11 R10 K20 ["TextColor"]
       95 GETUPVAL                         R11 7
       96 GETTABLEKS                       R11 R11 K36 ["FONT_SIZE_TITLE"]
       98 SETTABLEKS                       R11 R10 K21 ["TextSize"]
      100 GETIMPORT                        R11 K38 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R11 R10 K24 ["TextXAlignment"]
      104 GETIMPORT                        R11 K40 [Enum.TextYAlignment.Center]
      106 SETTABLEKS                       R11 R10 K25 ["TextYAlignment"]
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R6 K41 ["OptionalPartsMessage"]
      111 MOVE                             R8 R5
      112 LOADNIL                          R9
      113 LOADNIL                          R10
      114 FORGPREP                         R8
      115 GETUPVAL                         R14 2
      116 CALL                             R14 0 1
      117 JUMPIFNOT                        R14 ; [+16]
      118 GETUPVAL                         R13 3
      119 GETTABLEKS                       R13 R13 K4 ["createElement"]
      121 GETUPVAL                         R14 4
      122 GETTABLEKS                       R14 R14 K5 ["Text"]
      124 DUPTABLE                         R15 K9 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left text-align-y-center content-inverse-muted", ["LayoutOrder"], ["Text"]}]
      125 NAMECALL                         R16 R7 K10 ["getNextOrder"]
      127 CALL                             R16 1 1
      128 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      130 SETTABLEKS                       R12 R15 K5 ["Text"]
      132 CALL                             R13 2 1
      133 JUMP                             ; [+48]
      134 GETUPVAL                         R13 5
      135 GETTABLEKS                       R13 R13 K4 ["createElement"]
      137 GETUPVAL                         R14 6
      138 DUPTABLE                         R15 K26 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      139 GETIMPORT                        R16 K29 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      143 GETUPVAL                         R16 7
      144 GETTABLEKS                       R16 R16 K30 ["FONT"]
      146 SETTABLEKS                       R16 R15 K18 ["Font"]
      148 NAMECALL                         R16 R7 K10 ["getNextOrder"]
      150 CALL                             R16 1 1
      151 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      153 GETIMPORT                        R16 K33 [UDim2.fromScale]
      155 LOADN                            R17 1
      156 LOADN                            R18 0
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K19 ["Size"]
      160 SETTABLEKS                       R12 R15 K5 ["Text"]
      162 GETTABLEKS                       R16 R3 K34 ["assetConfig"]
      164 GETTABLEKS                       R16 R16 K35 ["labelTextColor"]
      166 SETTABLEKS                       R16 R15 K20 ["TextColor"]
      168 GETUPVAL                         R16 7
      169 GETTABLEKS                       R16 R16 K36 ["FONT_SIZE_TITLE"]
      171 SETTABLEKS                       R16 R15 K21 ["TextSize"]
      173 GETIMPORT                        R16 K38 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R16 R15 K24 ["TextXAlignment"]
      177 GETIMPORT                        R16 K40 [Enum.TextYAlignment.Center]
      179 SETTABLEKS                       R16 R15 K25 ["TextYAlignment"]
      181 CALL                             R13 2 1
      182 SETTABLE                         R13 R6 R12
      183 FORGLOOP                         R8 2 ; [-69]
      185 RETURN                           R6 1

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
       67 GETUPVAL                         R23 1
       68 CALL                             R23 0 1
       69 JUMPIFNOT                        R23 ; [+21]
       70 MOVE                             R22 R21
       71 JUMPIFNOT                        R22 ; [+20]
       72 LOADB                            R22 0
       73 GETTABLEKS                       R23 R2 K29 ["instances"]
       75 JUMPIFEQKNIL                     R23 ; [+16]
       77 LOADB                            R22 0
       78 GETTABLEKS                       R24 R2 K29 ["instances"]
       80 GETTABLEN                        R23 R24 1
       81 JUMPIFEQKNIL                     R23 ; [+10]
       83 GETTABLEKS                       R23 R2 K29 ["instances"]
       85 GETTABLEN                        R22 R23 1
       86 LOADK                            R24 K30 ["CurveAnimation"]
       87 NAMECALL                         R22 R22 K31 ["IsA"]
       89 CALL                             R22 2 1
       90 JUMP                             ; [+1]
       91 MOVE                             R22 R21
       92 GETUPVAL                         R23 2
       93 GETTABLEKS                       R23 R23 K32 ["isCreatorStoreAssetNotIncludingAnimation"]
       95 MOVE                             R24 R14
       96 CALL                             R23 1 1
       97 GETTABLEKS                       R26 R2 K33 ["assetId"]
       99 FASTCALL1                        TYPEOF R26 ; [+2]
      100 GETIMPORT                        R25 K35 [typeof]
      102 CALL                             R25 1 1
      103 JUMPIFNOTEQKS                    R25 K36 ["number"] ; [+8]
      105 GETUPVAL                         R24 3
      106 GETTABLEKS                       R24 R24 K37 ["constructCreatorStoreConfigurationUrl"]
      108 GETTABLEKS                       R25 R2 K33 ["assetId"]
      110 CALL                             R24 1 1
      111 JUMP                             ; [+4]
      112 GETUPVAL                         R24 4
      113 GETTABLEKS                       R24 R24 K38 ["getCreatorDashboardBaseUrl"]
      115 CALL                             R24 0 1
      116 GETTABLEKS                       R25 R2 K39 ["onNameChange"]
      118 GETTABLEKS                       R26 R2 K40 ["onDescChange"]
      120 GETTABLEKS                       R27 R2 K41 ["onOwnerSelected"]
      122 GETTABLEKS                       R28 R2 K42 ["onCategoryChange"]
      124 GETTABLEKS                       R29 R2 K43 ["onSharingChanged"]
      126 GETTABLEKS                       R30 R2 K44 ["toggleCopy"]
      128 GETTABLEKS                       R31 R2 K45 ["toggleComment"]
      130 GETTABLEKS                       R32 R2 K46 ["toggleDeleteLocal"]
      132 GETTABLEKS                       R33 R2 K47 ["publishingRequirements"]
      134 GETTABLEKS                       R34 R2 K48 ["publishingRestriction"]
      136 JUMPIFNOT                        R33 ; [+3]
      137 GETTABLEKS                       R35 R33 K49 ["verification"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R35
      141 JUMPIFNOT                        R35 ; [+11]
      142 GETTABLEKS                       R37 R35 K50 ["supportedTypes"]
      144 JUMPIFNOT                        R37 ; [+8]
      145 GETTABLEKS                       R38 R35 K50 ["supportedTypes"]
      147 LENGTH                           R37 R38
      148 JUMPIFNOTEQKN                    R37 K51 [0] ; [+2]
      150 LOADB                            R36 0 +1
      151 LOADB                            R36 1
      152 JUMP                             ; [+1]
      153 LOADB                            R36 0
      154 MOVE                             R37 R35
      155 JUMPIFNOT                        R37 ; [+2]
      156 GETTABLEKS                       R37 R35 K52 ["isVerified"]
      158 AND                              R38 R37 R20
      159 GETTABLEKS                       R39 R2 K53 ["displayOwnership"]
      161 GETTABLEKS                       R40 R2 K54 ["displayCopy"]
      163 GETTABLEKS                       R41 R2 K55 ["displayComment"]
      165 JUMPIFNOT                        R20 ; [+2]
      166 LOADB                            R42 0
      167 JUMP                             ; [+2]
      168 GETTABLEKS                       R42 R2 K56 ["displayAssetType"]
      170 GETTABLEKS                       R43 R2 K57 ["displaySharing"]
      172 GETTABLEKS                       R44 R2 K58 ["displayAssetTypeSelection"]
      174 GETUPVAL                         R46 5
      175 NOT                              R45 R46
      176 JUMPIFNOT                        R20 ; [+3]
      177 GETTABLEKS                       R46 R2 K59 ["allowedAssetTypesForRelease"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R46
      181 GETTABLEKS                       R47 R2 K60 ["allowedAssetTypesForFree"]
      183 JUMPIFNOT                        R20 ; [+3]
      184 GETTABLEKS                       R48 R2 K61 ["newAssetStatus"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R48
      188 JUMPIFNOT                        R20 ; [+3]
      189 GETTABLEKS                       R49 R2 K62 ["currentAssetStatus"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R49
      193 JUMPIFNOT                        R20 ; [+3]
      194 GETTABLEKS                       R50 R2 K63 ["onStatusChange"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R50
      198 JUMPIFNOT                        R20 ; [+3]
      199 GETTABLEKS                       R51 R2 K64 ["price"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R51
      203 JUMPIFNOT                        R20 ; [+3]
      204 GETTABLEKS                       R52 R2 K65 ["minPrice"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R52
      208 JUMPIFNOT                        R20 ; [+3]
      209 GETTABLEKS                       R53 R2 K66 ["maxPrice"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R53
      213 JUMPIFNOT                        R20 ; [+3]
      214 GETTABLEKS                       R54 R2 K67 ["feeRate"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R54
      218 JUMPIFNOT                        R20 ; [+3]
      219 GETTABLEKS                       R55 R2 K68 ["isPriceValid"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R55
      223 JUMPIFNOT                        R20 ; [+3]
      224 GETTABLEKS                       R56 R2 K69 ["onPriceChange"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R56
      228 JUMPIFNOT                        R20 ; [+12]
      229 GETUPVAL                         R57 2
      230 GETTABLEKS                       R57 R57 K70 ["isReadyForSale"]
      232 MOVE                             R58 R48
      233 CALL                             R57 1 1
      234 JUMPIF                           R57 ; [+7]
      235 GETUPVAL                         R57 2
      236 GETTABLEKS                       R57 R57 K71 ["isBuyableMarketplaceAsset"]
      238 MOVE                             R58 R14
      239 CALL                             R57 1 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R57
      242 LOADNIL                          R58
      243 LOADNIL                          R59
      244 GETTABLEKS                       R60 R2 K72 ["Localization"]
      246 JUMPIF                           R17 ; [+3]
      247 GETUPVAL                         R61 6
      248 JUMPIFNOT                        R61 ; [+9]
      249 JUMPIFNOT                        R18 ; [+8]
      250 JUMPIF                           R15 ; [+7]
      251 JUMPIFNOT                        R10 ; [+6]
      252 LOADK                            R63 K73 ["AssetConfigCopy"]
      253 LOADK                            R64 K74 ["MustShare"]
      254 NAMECALL                         R61 R60 K75 ["getText"]
      256 CALL                             R61 3 1
      257 MOVE                             R58 R61
      258 JUMPIFNOT                        R19 ; [+6]
      259 LOADK                            R63 K76 ["AssetConfig"]
      260 LOADK                            R64 K77 ["ModelPublishWarning"]
      261 NAMECALL                         R61 R60 K75 ["getText"]
      263 CALL                             R61 3 1
      264 MOVE                             R59 R61
      265 GETUPVAL                         R61 7
      266 GETTABLEKS                       R61 R61 K78 ["new"]
      268 CALL                             R61 0 1
      269 GETTABLEKS                       R62 R1 K79 ["publishAsset"]
      271 LOADN                            R63 80
      272 JUMPIF                           R5 ; [+1]
      273 ADDK                             R63 R63 K80 [60]
      274 NEWTABLE                         R64 4 0
      276 SETTABLEKS                       R3 R64 K2 ["Size"]
      278 SETTABLEKS                       R4 R64 K3 ["LayoutOrder"]
      280 GETUPVAL                         R65 8
      281 GETTABLEKS                       R65 R65 K81 ["Ref"]
      283 GETTABLEKS                       R66 R0 K82 ["baseFrameRef"]
      285 SETTABLE                         R66 R64 R65
      286 LOADNIL                          R65
      287 GETTABLEKS                       R66 R2 K83 ["assetMediaMetadataArray"]
      289 JUMPIFNOT                        R66 ; [+3]
      290 GETTABLEKS                       R65 R2 K83 ["assetMediaMetadataArray"]
      292 JUMP                             ; [+11]
      293 GETTABLEKS                       R66 R2 K84 ["assetMediaIds"]
      295 JUMPIFEQKNIL                     R66 ; [+8]
      297 GETUPVAL                         R66 9
      298 GETTABLEKS                       R67 R2 K84 ["assetMediaIds"]
      300 DUPCLOSURE                       R68 K85 [PROTO_13]
      301 CAPTURE                          UPVAL U10
      302 CALL                             R66 2 1
      303 MOVE                             R65 R66
      304 JUMPIFNOT                        R20 ; [+7]
      305 MOVE                             R66 R57
      306 JUMPIFNOT                        R66 ; [+6]
      307 JUMPIFEQKNIL                     R34 ; [+2]
      309 LOADB                            R66 0 +1
      310 LOADB                            R66 1
      311 JUMP                             ; [+1]
      312 MOVE                             R66 R5
      313 LOADNIL                          R67
      314 LOADNIL                          R68
      315 LOADNIL                          R69
      316 LOADNIL                          R70
      317 GETUPVAL                         R71 2
      318 GETTABLEKS                       R71 R71 K86 ["isUGCBundleType"]
      320 MOVE                             R72 R14
      321 CALL                             R71 1 1
      322 MOVE                             R67 R71
      323 GETUPVAL                         R71 2
      324 GETTABLEKS                       R71 R71 K87 ["isUGCBodyBundleType"]
      326 MOVE                             R72 R14
      327 CALL                             R71 1 1
      328 JUMPIFNOT                        R71 ; [+7]
      329 LOADK                            R73 K88 ["General"]
      330 LOADK                            R74 K89 ["BodyValidation"]
      331 NAMECALL                         R71 R60 K75 ["getText"]
      333 CALL                             R71 3 1
      334 MOVE                             R68 R71
      335 JUMP                             ; [+22]
      336 GETUPVAL                         R71 11
      337 CALL                             R71 0 1
      338 JUMPIFNOT                        R71 ; [+13]
      339 GETUPVAL                         R71 2
      340 GETTABLEKS                       R71 R71 K90 ["isAnimationBundleType"]
      342 MOVE                             R72 R14
      343 CALL                             R71 1 1
      344 JUMPIFNOT                        R71 ; [+7]
      345 LOADK                            R73 K88 ["General"]
      346 LOADK                            R74 K91 ["AvatarAnimationsValidation"]
      347 NAMECALL                         R71 R60 K75 ["getText"]
      349 CALL                             R71 3 1
      350 MOVE                             R68 R71
      351 JUMP                             ; [+6]
      352 LOADK                            R73 K88 ["General"]
      353 LOADK                            R74 K92 ["ShoeValidation"]
      354 NAMECALL                         R71 R60 K75 ["getText"]
      356 CALL                             R71 3 1
      357 MOVE                             R68 R71
      358 GETTABLEKS                       R71 R2 K29 ["instances"]
      360 JUMPIFNOT                        R71 ; [+20]
      361 GETTABLEKS                       R74 R2 K29 ["instances"]
      363 GETTABLEN                        R73 R74 1
      364 GETTABLEKS                       R74 R2 K93 ["allowedBundleTypeSettings"]
      366 MOVE                             R75 R14
      367 MOVE                             R76 R1
      368 NAMECALL                         R71 R0 K94 ["getMissingOptionalPartsMessage"]
      370 CALL                             R71 5 1
      371 MOVE                             R69 R71
      372 GETTABLEKS                       R74 R2 K29 ["instances"]
      374 GETTABLEN                        R73 R74 1
      375 MOVE                             R74 R14
      376 MOVE                             R75 R1
      377 NAMECALL                         R71 R0 K95 ["getUnknownMeshPartMessage"]
      379 CALL                             R71 4 1
      380 MOVE                             R70 R71
      381 GETUPVAL                         R71 8
      382 GETTABLEKS                       R71 R71 K96 ["createElement"]
      384 GETUPVAL                         R72 12
      385 MOVE                             R73 R64
      386 DUPTABLE                         R74 K118 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "PublishToMarketplace", "DataSharingConsent", "SpecialAttribute", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      387 GETUPVAL                         R75 8
      388 GETTABLEKS                       R75 R75 K96 ["createElement"]
      390 LOADK                            R76 K119 ["UIPadding"]
      391 DUPTABLE                         R77 K124 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      392 GETIMPORT                        R78 K126 [UDim.new]
      394 LOADN                            R79 0
      395 LOADN                            R80 24
      396 CALL                             R78 2 1
      397 SETTABLEKS                       R78 R77 K120 ["PaddingTop"]
      399 GETIMPORT                        R78 K126 [UDim.new]
      401 LOADN                            R79 0
      402 LOADN                            R80 24
      403 CALL                             R78 2 1
      404 SETTABLEKS                       R78 R77 K121 ["PaddingBottom"]
      406 GETIMPORT                        R78 K126 [UDim.new]
      408 LOADN                            R79 0
      409 LOADN                            R80 24
      410 CALL                             R78 2 1
      411 SETTABLEKS                       R78 R77 K122 ["PaddingLeft"]
      413 GETIMPORT                        R78 K126 [UDim.new]
      415 LOADN                            R79 0
      416 LOADN                            R80 24
      417 CALL                             R78 2 1
      418 SETTABLEKS                       R78 R77 K123 ["PaddingRight"]
      420 CALL                             R75 2 1
      421 SETTABLEKS                       R75 R74 K97 ["Padding"]
      423 GETUPVAL                         R75 8
      424 GETTABLEKS                       R75 R75 K96 ["createElement"]
      426 LOADK                            R76 K98 ["UIListLayout"]
      427 NEWTABLE                         R77 8 0
      429 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
      431 SETTABLEKS                       R78 R77 K127 ["FillDirection"]
      433 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      435 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      437 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      439 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      441 GETIMPORT                        R78 K137 [Enum.SortOrder.LayoutOrder]
      443 SETTABLEKS                       R78 R77 K136 ["SortOrder"]
      445 GETIMPORT                        R78 K126 [UDim.new]
      447 LOADN                            R79 0
      448 LOADN                            R80 0
      449 CALL                             R78 2 1
      450 SETTABLEKS                       R78 R77 K97 ["Padding"]
      452 GETUPVAL                         R78 8
      453 GETTABLEKS                       R78 R78 K138 ["Change"]
      455 GETTABLEKS                       R78 R78 K139 ["AbsoluteContentSize"]
      457 GETTABLEKS                       R79 R0 K140 ["refreshCanvas"]
      459 JUMPIF                           R79 ; [+3]
      460 NEWCLOSURE                       R79 P1
      461 CAPTURE                          VAL R0
      462 CAPTURE                          VAL R3
      463 SETTABLE                         R79 R77 R78
      464 GETUPVAL                         R78 8
      465 GETTABLEKS                       R78 R78 K81 ["Ref"]
      467 GETTABLEKS                       R79 R0 K141 ["listLayoutRef"]
      469 SETTABLE                         R79 R77 R78
      470 CALL                             R75 2 1
      471 SETTABLEKS                       R75 R74 K98 ["UIListLayout"]
      473 JUMPIF                           R44 ; [+112]
      474 JUMPIFNOT                        R19 ; [+111]
      475 JUMPIFNOT                        R45 ; [+110]
      476 GETUPVAL                         R75 8
      477 GETTABLEKS                       R75 R75 K96 ["createElement"]
      479 GETUPVAL                         R76 13
      480 DUPTABLE                         R77 K145 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Padding"], ["Spacing"] = 5, ["VerticalAlignment"]}]
      481 GETIMPORT                        R78 K132 [Enum.HorizontalAlignment.Left]
      483 SETTABLEKS                       R78 R77 K130 ["HorizontalAlignment"]
      485 GETIMPORT                        R78 K147 [Enum.FillDirection.Horizontal]
      487 SETTABLEKS                       R78 R77 K142 ["Layout"]
      489 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      491 CALL                             R78 1 1
      492 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      494 GETIMPORT                        R78 K150 [UDim2.new]
      496 LOADN                            R79 1
      497 LOADN                            R80 0
      498 LOADN                            R81 0
      499 GETUPVAL                         R82 14
      500 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      502 CALL                             R78 4 1
      503 SETTABLEKS                       R78 R77 K2 ["Size"]
      505 DUPTABLE                         R78 K154 [{["Bottom"] = 30}]
      506 SETTABLEKS                       R78 R77 K97 ["Padding"]
      508 GETIMPORT                        R78 K135 [Enum.VerticalAlignment.Top]
      510 SETTABLEKS                       R78 R77 K133 ["VerticalAlignment"]
      512 DUPTABLE                         R78 K157 [{"Icon", "WarningText"}]
      513 GETUPVAL                         R79 8
      514 GETTABLEKS                       R79 R79 K96 ["createElement"]
      516 LOADK                            R80 K158 ["ImageLabel"]
      517 DUPTABLE                         R81 K163 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      518 GETUPVAL                         R82 15
      519 GETTABLEKS                       R82 R82 K164 ["WARNING_ICON"]
      521 SETTABLEKS                       R82 R81 K161 ["Image"]
      523 GETTABLEKS                       R82 R62 K165 ["warningIconColor"]
      525 SETTABLEKS                       R82 R81 K162 ["ImageColor3"]
      527 GETIMPORT                        R82 K167 [UDim2.fromOffset]
      529 LOADN                            R83 24
      530 LOADN                            R84 24
      531 CALL                             R82 2 1
      532 SETTABLEKS                       R82 R81 K2 ["Size"]
      534 CALL                             R79 2 1
      535 SETTABLEKS                       R79 R78 K155 ["Icon"]
      537 GETUPVAL                         R79 8
      538 GETTABLEKS                       R79 R79 K96 ["createElement"]
      540 LOADK                            R80 K168 ["TextLabel"]
      541 DUPTABLE                         R81 K179 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      542 GETIMPORT                        R82 K181 [Enum.AutomaticSize.XY]
      544 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      546 GETUPVAL                         R82 14
      547 GETTABLEKS                       R82 R82 K182 ["FONT"]
      549 SETTABLEKS                       R82 R81 K171 ["Font"]
      551 GETIMPORT                        R82 K150 [UDim2.new]
      553 LOADN                            R83 1
      554 LOADN                            R84 0
      555 LOADN                            R85 1
      556 LOADN                            R86 0
      557 CALL                             R82 4 1
      558 SETTABLEKS                       R82 R81 K2 ["Size"]
      560 SETTABLEKS                       R59 R81 K172 ["Text"]
      562 GETTABLEKS                       R82 R1 K183 ["assetConfig"]
      564 GETTABLEKS                       R82 R82 K184 ["warningColor"]
      566 SETTABLEKS                       R82 R81 K175 ["TextColor3"]
      568 GETIMPORT                        R82 K185 [Enum.TextXAlignment.Left]
      570 SETTABLEKS                       R82 R81 K176 ["TextXAlignment"]
      572 GETIMPORT                        R82 K187 [Enum.TextYAlignment.Center]
      574 SETTABLEKS                       R82 R81 K177 ["TextYAlignment"]
      576 GETUPVAL                         R82 14
      577 GETTABLEKS                       R82 R82 K151 ["FONT_SIZE_TITLE"]
      579 SETTABLEKS                       R82 R81 K178 ["TextSize"]
      581 CALL                             R79 2 1
      582 SETTABLEKS                       R79 R78 K156 ["WarningText"]
      584 CALL                             R75 3 1
      585 JUMP                             ; [+1]
      586 LOADNIL                          R75
      587 SETTABLEKS                       R75 R74 K99 ["ModelWarningFrame"]
      589 JUMPIFNOT                        R20 ; [+19]
      590 GETUPVAL                         R75 8
      591 GETTABLEKS                       R75 R75 K96 ["createElement"]
      593 GETUPVAL                         R76 16
      594 DUPTABLE                         R77 K188 [{"LayoutOrder", "Title"}]
      595 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      597 CALL                             R78 1 1
      598 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      600 LOADK                            R80 K76 ["AssetConfig"]
      601 LOADK                            R81 K189 ["PublishPluginHeader"]
      602 NAMECALL                         R78 R60 K75 ["getText"]
      604 CALL                             R78 3 1
      605 SETTABLEKS                       R78 R77 K101 ["Title"]
      607 CALL                             R75 2 1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R75
      610 SETTABLEKS                       R75 R74 K100 ["Header"]
      612 GETUPVAL                         R75 8
      613 GETTABLEKS                       R75 R75 K96 ["createElement"]
      615 GETUPVAL                         R76 17
      616 DUPTABLE                         R77 K197 [{["Title"], ["TotalHeight"] = 100, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      617 LOADK                            R80 K88 ["General"]
      618 LOADK                            R81 K101 ["Title"]
      619 NAMECALL                         R78 R60 K75 ["getText"]
      621 CALL                             R78 3 1
      622 SETTABLEKS                       R78 R77 K101 ["Title"]
      624 GETUPVAL                         R78 0
      625 GETTABLEKS                       R78 R78 K198 ["NAME_CHARACTER_LIMIT"]
      627 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      629 SETTABLEKS                       R25 R77 K193 ["TextChangeCallBack"]
      631 SETTABLEKS                       R7 R77 K194 ["TextContent"]
      633 GETUPVAL                         R79 18
      634 CALL                             R79 0 1
      635 JUMPIFNOT                        R79 ; [+3]
      636 GETTABLEKS                       R78 R2 K199 ["showNameRequiredError"]
      638 JUMP                             ; [+1]
      639 LOADNIL                          R78
      640 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      642 NEWCLOSURE                       R78 P2
      643 CAPTURE                          VAL R0
      644 CAPTURE                          UPVAL U0
      645 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      647 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      649 CALL                             R78 1 1
      650 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      652 CALL                             R75 2 1
      653 SETTABLEKS                       R75 R74 K101 ["Title"]
      655 GETUPVAL                         R75 8
      656 GETTABLEKS                       R75 R75 K96 ["createElement"]
      658 GETUPVAL                         R76 17
      659 DUPTABLE                         R77 K202 [{["BottomRightText"], ["Title"], ["TotalHeight"] = 180, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      660 LOADK                            R80 K203 ["AssetConfigDescription"]
      661 LOADK                            R81 K204 ["AddRobloxLinks"]
      662 NAMECALL                         R78 R60 K75 ["getText"]
      664 CALL                             R78 3 1
      665 SETTABLEKS                       R78 R77 K200 ["BottomRightText"]
      667 LOADK                            R80 K88 ["General"]
      668 LOADK                            R81 K102 ["Description"]
      669 NAMECALL                         R78 R60 K75 ["getText"]
      671 CALL                             R78 3 1
      672 SETTABLEKS                       R78 R77 K101 ["Title"]
      674 GETUPVAL                         R78 0
      675 GETTABLEKS                       R78 R78 K205 ["DESCRIPTION_CHARACTER_LIMIT"]
      677 SETTABLEKS                       R78 R77 K192 ["MaxCount"]
      679 SETTABLEKS                       R26 R77 K193 ["TextChangeCallBack"]
      681 SETTABLEKS                       R8 R77 K194 ["TextContent"]
      683 GETUPVAL                         R79 18
      684 CALL                             R79 0 1
      685 JUMPIFNOT                        R79 ; [+3]
      686 GETTABLEKS                       R78 R2 K206 ["showDescriptionRequiredError"]
      688 JUMP                             ; [+1]
      689 LOADNIL                          R78
      690 SETTABLEKS                       R78 R77 K195 ["showRequiredError"]
      692 NEWCLOSURE                       R78 P3
      693 CAPTURE                          VAL R0
      694 CAPTURE                          UPVAL U0
      695 SETTABLEKS                       R78 R77 K196 ["ErrorCallback"]
      697 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      699 CALL                             R78 1 1
      700 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      702 CALL                             R75 2 1
      703 SETTABLEKS                       R75 R74 K102 ["Description"]
      705 JUMPIFNOT                        R44 ; [+62]
      706 GETUPVAL                         R75 8
      707 GETTABLEKS                       R75 R75 K96 ["createElement"]
      709 GETUPVAL                         R76 19
      710 DUPTABLE                         R77 K217 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      711 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      713 CALL                             R78 1 1
      714 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      716 GETTABLEKS                       R78 R2 K207 ["dataSharingEnabled"]
      718 SETTABLEKS                       R78 R77 K207 ["dataSharingEnabled"]
      720 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
      722 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
      724 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
      726 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
      728 GETTABLEKS                       R78 R0 K218 ["state"]
      730 GETTABLEKS                       R78 R78 K210 ["validationState"]
      732 SETTABLEKS                       R78 R77 K210 ["validationState"]
      734 GETTABLEKS                       R78 R0 K218 ["state"]
      736 GETTABLEKS                       R78 R78 K211 ["validationFailureReasons"]
      738 SETTABLEKS                       R78 R77 K211 ["validationFailureReasons"]
      740 GETTABLEKS                       R78 R0 K212 ["setValidationState"]
      742 SETTABLEKS                       R78 R77 K212 ["setValidationState"]
      744 GETTABLEKS                       R78 R0 K213 ["setValidationFailureReasons"]
      746 SETTABLEKS                       R78 R77 K213 ["setValidationFailureReasons"]
      748 GETTABLEKS                       R78 R0 K218 ["state"]
      750 GETTABLEKS                       R78 R78 K214 ["ugcBundleValidationResults"]
      752 SETTABLEKS                       R78 R77 K214 ["ugcBundleValidationResults"]
      754 GETTABLEKS                       R78 R0 K215 ["setUGCBundleValidationResults"]
      756 SETTABLEKS                       R78 R77 K215 ["setUGCBundleValidationResults"]
      758 GETTABLEKS                       R78 R0 K216 ["setCurrentAssetType"]
      760 SETTABLEKS                       R78 R77 K216 ["setCurrentAssetType"]
      762 GETTABLEKS                       R78 R2 K29 ["instances"]
      764 SETTABLEKS                       R78 R77 K29 ["instances"]
      766 CALL                             R75 2 1
      767 JUMP                             ; [+1]
      768 LOADNIL                          R75
      769 SETTABLEKS                       R75 R74 K103 ["AssetTypeSelection"]
      771 JUMPIFNOT                        R44 ; [+33]
      772 JUMPIFNOT                        R39 ; [+32]
      773 GETUPVAL                         R75 8
      774 GETTABLEKS                       R75 R75 K96 ["createElement"]
      776 GETUPVAL                         R76 20
      777 DUPTABLE                         R77 K222 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      778 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      780 CALL                             R78 1 1
      781 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      783 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
      785 SETTABLEKS                       R9 R77 K8 ["owner"]
      787 GETUPVAL                         R79 21
      788 CALL                             R79 0 1
      789 JUMPIFNOT                        R79 ; [+3]
      790 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
      792 JUMP                             ; [+1]
      793 LOADNIL                          R78
      794 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
      796 LOADK                            R80 K88 ["General"]
      797 LOADK                            R81 K110 ["Ownership"]
      798 NAMECALL                         R78 R60 K75 ["getText"]
      800 CALL                             R78 3 1
      801 SETTABLEKS                       R78 R77 K101 ["Title"]
      803 CALL                             R75 2 1
      804 JUMP                             ; [+1]
      805 LOADNIL                          R75
      806 SETTABLEKS                       R75 R74 K104 ["Creator"]
      808 GETUPVAL                         R76 22
      809 CALL                             R76 0 1
      810 JUMPIFNOT                        R76 ; [+101]
      811 JUMPIFNOT                        R44 ; [+100]
      812 JUMPIFNOT                        R39 ; [+99]
      813 GETTABLEKS                       R76 R2 K223 ["showColorPicker"]
      815 JUMPIFNOT                        R76 ; [+96]
      816 GETUPVAL                         R75 8
      817 GETTABLEKS                       R75 R75 K96 ["createElement"]
      819 GETUPVAL                         R76 23
      820 GETTABLEKS                       R76 R76 K224 ["View"]
      822 DUPTABLE                         R77 K227 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      823 GETIMPORT                        R78 K150 [UDim2.new]
      825 LOADN                            R79 1
      826 LOADN                            R80 0
      827 LOADN                            R81 0
      828 LOADN                            R82 70
      829 CALL                             R78 4 1
      830 SETTABLEKS                       R78 R77 K2 ["Size"]
      832 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      834 CALL                             R78 1 1
      835 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      837 DUPTABLE                         R78 K229 [{"Title", "ColorPickerButton"}]
      838 GETUPVAL                         R79 24
      839 GETTABLEKS                       R79 R79 K96 ["createElement"]
      841 GETUPVAL                         R80 23
      842 GETTABLEKS                       R80 R80 K172 ["Text"]
      844 DUPTABLE                         R81 K230 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      845 NEWTABLE                         R82 4 0
      847 LOADB                            R83 1
      848 SETTABLEKS                       R83 R82 K231 ["text-align-x-left text-align-y-top"]
      850 GETUPVAL                         R83 25
      851 CALL                             R83 0 1
      852 SETTABLEKS                       R83 R82 K232 ["text-title-small content-emphasis"]
      854 GETUPVAL                         R84 25
      855 CALL                             R84 0 1
      856 NOT                              R83 R84
      857 SETTABLEKS                       R83 R82 K233 ["text-body-large"]
      859 SETTABLEKS                       R82 R81 K225 ["tag"]
      861 LOADK                            R84 K88 ["General"]
      862 LOADK                            R85 K234 ["ThumbnailSkinTone"]
      863 NAMECALL                         R82 R60 K75 ["getText"]
      865 CALL                             R82 3 1
      866 SETTABLEKS                       R82 R81 K172 ["Text"]
      868 GETIMPORT                        R82 K150 [UDim2.new]
      870 LOADN                            R83 0
      871 GETUPVAL                         R84 0
      872 GETTABLEKS                       R84 R84 K235 ["TITLE_GUTTER_WIDTH"]
      874 LOADN                            R85 1
      875 LOADN                            R86 0
      876 CALL                             R82 4 1
      877 SETTABLEKS                       R82 R81 K2 ["Size"]
      879 CALL                             R79 2 1
      880 SETTABLEKS                       R79 R78 K101 ["Title"]
      882 GETUPVAL                         R79 8
      883 GETTABLEKS                       R79 R79 K96 ["createElement"]
      885 GETUPVAL                         R80 26
      886 DUPTABLE                         R81 K239 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
      887 GETTABLEKS                       R82 R2 K236 ["selectedColor"]
      889 SETTABLEKS                       R82 R81 K236 ["selectedColor"]
      891 GETTABLEKS                       R82 R2 K237 ["setSelectedColor"]
      893 SETTABLEKS                       R82 R81 K237 ["setSelectedColor"]
      895 SETTABLEKS                       R60 R81 K72 ["Localization"]
      897 GETTABLEKS                       R82 R2 K240 ["showColorPickerRequiredError"]
      899 SETTABLEKS                       R82 R81 K195 ["showRequiredError"]
      901 GETTABLEKS                       R82 R1 K79 ["publishAsset"]
      903 GETTABLEKS                       R82 R82 K241 ["titleTextColor"]
      905 SETTABLEKS                       R82 R81 K238 ["textColor"]
      907 CALL                             R79 2 1
      908 SETTABLEKS                       R79 R78 K228 ["ColorPickerButton"]
      910 CALL                             R75 3 1
      911 JUMP                             ; [+1]
      912 LOADNIL                          R75
      913 SETTABLEKS                       R75 R74 K105 ["ColorPickerRow"]
      915 JUMPIFNOT                        R67 ; [+175]
      916 GETUPVAL                         R75 8
      917 GETTABLEKS                       R75 R75 K96 ["createElement"]
      919 GETUPVAL                         R76 27
      920 DUPTABLE                         R77 K242 [{"AutomaticSize", "LayoutOrder", "Title"}]
      921 GETIMPORT                        R78 K181 [Enum.AutomaticSize.XY]
      923 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
      925 NAMECALL                         R78 R61 K148 ["getNextOrder"]
      927 CALL                             R78 1 1
      928 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      930 SETTABLEKS                       R68 R77 K101 ["Title"]
      932 DUPTABLE                         R78 K244 [{"ValidationPane"}]
      933 GETUPVAL                         R79 8
      934 GETTABLEKS                       R79 R79 K96 ["createElement"]
      936 GETUPVAL                         R80 13
      937 DUPTABLE                         R81 K246 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
      938 GETIMPORT                        R82 K248 [Enum.AutomaticSize.Y]
      940 SETTABLEKS                       R82 R81 K169 ["AutomaticSize"]
      942 GETIMPORT                        R82 K129 [Enum.FillDirection.Vertical]
      944 SETTABLEKS                       R82 R81 K142 ["Layout"]
      946 GETIMPORT                        R82 K250 [UDim2.fromScale]
      948 LOADN                            R83 1
      949 LOADN                            R84 0
      950 CALL                             R82 2 1
      951 SETTABLEKS                       R82 R81 K2 ["Size"]
      953 DUPTABLE                         R82 K252 [{["Bottom"] = 24}]
      954 SETTABLEKS                       R82 R81 K97 ["Padding"]
      956 DUPTABLE                         R82 K256 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      957 GETUPVAL                         R83 8
      958 GETTABLEKS                       R83 R83 K96 ["createElement"]
      960 GETUPVAL                         R84 28
      961 DUPTABLE                         R85 K259 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["onAssetValidationResultChanged"]}]
      962 GETUPVAL                         R86 2
      963 GETTABLEKS                       R86 R86 K87 ["isUGCBodyBundleType"]
      965 MOVE                             R87 R14
      966 CALL                             R86 1 1
      967 SETTABLEKS                       R86 R85 K87 ["isUGCBodyBundleType"]
      969 GETUPVAL                         R87 11
      970 CALL                             R87 0 1
      971 JUMPIFNOT                        R87 ; [+6]
      972 GETUPVAL                         R86 2
      973 GETTABLEKS                       R86 R86 K90 ["isAnimationBundleType"]
      975 MOVE                             R87 R14
      976 CALL                             R86 1 1
      977 JUMP                             ; [+1]
      978 LOADNIL                          R86
      979 SETTABLEKS                       R86 R85 K90 ["isAnimationBundleType"]
      981 GETTABLEKS                       R86 R0 K218 ["state"]
      983 GETTABLEKS                       R86 R86 K210 ["validationState"]
      985 SETTABLEKS                       R86 R85 K210 ["validationState"]
      987 GETTABLEKS                       R86 R0 K212 ["setValidationState"]
      989 SETTABLEKS                       R86 R85 K212 ["setValidationState"]
      991 GETTABLEKS                       R86 R0 K218 ["state"]
      993 GETTABLEKS                       R86 R86 K211 ["validationFailureReasons"]
      995 SETTABLEKS                       R86 R85 K211 ["validationFailureReasons"]
      997 GETTABLEKS                       R86 R0 K213 ["setValidationFailureReasons"]
      999 SETTABLEKS                       R86 R85 K213 ["setValidationFailureReasons"]
     1001 GETTABLEKS                       R86 R0 K218 ["state"]
     1003 GETTABLEKS                       R86 R86 K214 ["ugcBundleValidationResults"]
     1005 SETTABLEKS                       R86 R85 K257 ["validationResults"]
     1007 GETTABLEKS                       R86 R0 K215 ["setUGCBundleValidationResults"]
     1009 SETTABLEKS                       R86 R85 K215 ["setUGCBundleValidationResults"]
     1011 GETTABLEKS                       R86 R0 K218 ["state"]
     1013 GETTABLEKS                       R86 R86 K260 ["currentAssetType"]
     1015 SETTABLEKS                       R86 R85 K13 ["assetTypeEnum"]
     1017 GETTABLEKS                       R86 R2 K29 ["instances"]
     1019 SETTABLEKS                       R86 R85 K29 ["instances"]
     1021 GETTABLEKS                       R86 R2 K93 ["allowedBundleTypeSettings"]
     1023 SETTABLEKS                       R86 R85 K93 ["allowedBundleTypeSettings"]
     1025 GETTABLEKS                       R86 R2 K258 ["onAssetValidationResultChanged"]
     1027 SETTABLEKS                       R86 R85 K258 ["onAssetValidationResultChanged"]
     1029 CALL                             R83 2 1
     1030 SETTABLEKS                       R83 R82 K253 ["UGCBundleValidation"]
     1032 JUMPIFNOT                        R69 ; [+23]
     1033 GETUPVAL                         R83 8
     1034 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1036 GETUPVAL                         R84 13
     1037 DUPTABLE                         R85 K261 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
     1038 GETIMPORT                        R86 K248 [Enum.AutomaticSize.Y]
     1040 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1042 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1044 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1046 GETIMPORT                        R86 K250 [UDim2.fromScale]
     1048 LOADN                            R87 1
     1049 LOADN                            R88 0
     1050 CALL                             R86 2 1
     1051 SETTABLEKS                       R86 R85 K2 ["Size"]
     1053 MOVE                             R86 R69
     1054 CALL                             R83 3 1
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R83
     1057 SETTABLEKS                       R83 R82 K254 ["MissingOptionalAccessoriesMsg"]
     1059 JUMPIFNOT                        R70 ; [+23]
     1060 GETUPVAL                         R83 8
     1061 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1063 GETUPVAL                         R84 13
     1064 DUPTABLE                         R85 K263 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
     1065 GETIMPORT                        R86 K248 [Enum.AutomaticSize.Y]
     1067 SETTABLEKS                       R86 R85 K169 ["AutomaticSize"]
     1069 GETIMPORT                        R86 K129 [Enum.FillDirection.Vertical]
     1071 SETTABLEKS                       R86 R85 K142 ["Layout"]
     1073 GETIMPORT                        R86 K250 [UDim2.fromScale]
     1075 LOADN                            R87 1
     1076 LOADN                            R88 0
     1077 CALL                             R86 2 1
     1078 SETTABLEKS                       R86 R85 K2 ["Size"]
     1080 MOVE                             R86 R70
     1081 CALL                             R83 3 1
     1082 JUMP                             ; [+1]
     1083 LOADNIL                          R83
     1084 SETTABLEKS                       R83 R82 K255 ["UnknownMeshPartsMsgChildren"]
     1086 CALL                             R79 3 1
     1087 SETTABLEKS                       R79 R78 K243 ["ValidationPane"]
     1089 CALL                             R75 3 1
     1090 JUMP                             ; [+1]
     1091 LOADNIL                          R75
     1092 SETTABLEKS                       R75 R74 K106 ["ContentTypeBodyValidation"]
     1094 GETUPVAL                         R76 29
     1095 CALL                             R76 0 1
     1096 JUMPIFNOT                        R76 ; [+51]
     1097 GETTABLEKS                       R76 R2 K264 ["publishOnApprovalEnabled"]
     1099 JUMPIFNOT                        R76 ; [+48]
     1100 GETUPVAL                         R76 2
     1101 GETTABLEKS                       R76 R76 K265 ["canAutoPublishAvatarAssetType"]
     1103 MOVE                             R77 R14
     1104 CALL                             R76 1 1
     1105 JUMPIFNOT                        R76 ; [+42]
     1106 GETUPVAL                         R75 8
     1107 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1109 GETUPVAL                         R76 30
     1110 DUPTABLE                         R77 K270 [{"LayoutOrder", "canOptIn", "publishingFee", "publishOnApprovalToggled", "onPublishOnApprovalToggleClick"}]
     1111 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1113 CALL                             R78 1 1
     1114 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1116 LOADB                            R78 0
     1117 GETTABLEKS                       R79 R2 K271 ["hasPublishingPreferences"]
     1119 JUMPIFNOTEQKB                    R79 TRUE ; [+7]
     1121 GETTABLEKS                       R79 R2 K272 ["hasPublishingFeePreview"]
     1123 JUMPIFEQKB                       R79 TRUE ; [+2]
     1125 LOADB                            R78 0 +1
     1126 LOADB                            R78 1
     1127 SETTABLEKS                       R78 R77 K266 ["canOptIn"]
     1129 GETTABLEKS                       R79 R2 K272 ["hasPublishingFeePreview"]
     1131 JUMPIFNOT                        R79 ; [+3]
     1132 GETTABLEKS                       R78 R2 K273 ["publishingFeePreview"]
     1134 JUMP                             ; [+1]
     1135 LOADNIL                          R78
     1136 SETTABLEKS                       R78 R77 K267 ["publishingFee"]
     1138 GETTABLEKS                       R78 R2 K268 ["publishOnApprovalToggled"]
     1140 SETTABLEKS                       R78 R77 K268 ["publishOnApprovalToggled"]
     1142 GETTABLEKS                       R78 R2 K274 ["onPublishToMarketplaceToggleClick"]
     1144 SETTABLEKS                       R78 R77 K269 ["onPublishOnApprovalToggleClick"]
     1146 CALL                             R75 2 1
     1147 JUMP                             ; [+1]
     1148 LOADNIL                          R75
     1149 SETTABLEKS                       R75 R74 K107 ["PublishToMarketplace"]
     1151 GETTABLEKS                       R76 R2 K207 ["dataSharingEnabled"]
     1153 JUMPIFNOT                        R76 ; [+32]
     1154 GETUPVAL                         R76 2
     1155 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1157 MOVE                             R77 R14
     1158 CALL                             R76 1 1
     1159 JUMPIF                           R76 ; [+6]
     1160 GETUPVAL                         R76 2
     1161 GETTABLEKS                       R76 R76 K275 ["isCatalogAsset"]
     1163 MOVE                             R77 R14
     1164 CALL                             R76 1 1
     1165 JUMPIFNOT                        R76 ; [+20]
     1166 GETUPVAL                         R75 8
     1167 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1169 GETUPVAL                         R76 31
     1170 DUPTABLE                         R77 K276 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1171 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1173 CALL                             R78 1 1
     1174 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1176 GETTABLEKS                       R78 R2 K208 ["dataSharingToggled"]
     1178 SETTABLEKS                       R78 R77 K208 ["dataSharingToggled"]
     1180 GETTABLEKS                       R78 R2 K209 ["onDataConsentToggleClick"]
     1182 SETTABLEKS                       R78 R77 K209 ["onDataConsentToggleClick"]
     1184 CALL                             R75 2 1
     1185 JUMP                             ; [+1]
     1186 LOADNIL                          R75
     1187 SETTABLEKS                       R75 R74 K108 ["DataSharingConsent"]
     1189 GETUPVAL                         R76 32
     1190 CALL                             R76 0 1
     1191 JUMPIFNOT                        R76 ; [+51]
     1192 GETTABLEKS                       R76 R2 K277 ["specialAttributes"]
     1194 JUMPIFNOT                        R76 ; [+48]
     1195 GETTABLEKS                       R77 R2 K277 ["specialAttributes"]
     1197 LENGTH                           R76 R77
     1198 LOADN                            R77 0
     1199 JUMPIFNOTLT                      R77 R76 ; [+43]
     1201 GETTABLEKS                       R76 R2 K278 ["hasMetadataPermission"]
     1203 JUMPIFNOT                        R76 ; [+39]
     1204 GETUPVAL                         R75 24
     1205 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1207 GETUPVAL                         R76 13
     1208 DUPTABLE                         R77 K279 [{"AutomaticSize", "LayoutOrder", "Size", "Padding"}]
     1209 GETIMPORT                        R78 K248 [Enum.AutomaticSize.Y]
     1211 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1213 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1215 CALL                             R78 1 1
     1216 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1218 GETIMPORT                        R78 K250 [UDim2.fromScale]
     1220 LOADN                            R79 1
     1221 LOADN                            R80 0
     1222 CALL                             R78 2 1
     1223 SETTABLEKS                       R78 R77 K2 ["Size"]
     1225 DUPTABLE                         R78 K280 [{["Top"] = 24}]
     1226 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1228 DUPTABLE                         R78 K282 [{"Content"}]
     1229 GETUPVAL                         R79 24
     1230 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1232 GETUPVAL                         R80 33
     1233 DUPTABLE                         R81 K283 [{"specialAttributes"}]
     1234 GETTABLEKS                       R82 R2 K277 ["specialAttributes"]
     1236 SETTABLEKS                       R82 R81 K277 ["specialAttributes"]
     1238 CALL                             R79 2 1
     1239 SETTABLEKS                       R79 R78 K281 ["Content"]
     1241 CALL                             R75 3 1
     1242 JUMP                             ; [+1]
     1243 LOADNIL                          R75
     1244 SETTABLEKS                       R75 R74 K109 ["SpecialAttribute"]
     1246 JUMPIF                           R44 ; [+33]
     1247 JUMPIFNOT                        R39 ; [+32]
     1248 GETUPVAL                         R75 8
     1249 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1251 GETUPVAL                         R76 20
     1252 DUPTABLE                         R77 K284 [{["Title"], ["owner"], ["TotalHeight"] = 70, ["onDropDownSelect"], ["preselectedGroupId"], ["LayoutOrder"]}]
     1253 LOADK                            R80 K88 ["General"]
     1254 LOADK                            R81 K110 ["Ownership"]
     1255 NAMECALL                         R78 R60 K75 ["getText"]
     1257 CALL                             R78 3 1
     1258 SETTABLEKS                       R78 R77 K101 ["Title"]
     1260 SETTABLEKS                       R9 R77 K8 ["owner"]
     1262 SETTABLEKS                       R27 R77 K219 ["onDropDownSelect"]
     1264 GETUPVAL                         R79 21
     1265 CALL                             R79 0 1
     1266 JUMPIFNOT                        R79 ; [+3]
     1267 GETTABLEKS                       R78 R2 K220 ["preselectedGroupId"]
     1269 JUMP                             ; [+1]
     1270 LOADNIL                          R78
     1271 SETTABLEKS                       R78 R77 K220 ["preselectedGroupId"]
     1273 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1275 CALL                             R78 1 1
     1276 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1278 CALL                             R75 2 1
     1279 JUMP                             ; [+1]
     1280 LOADNIL                          R75
     1281 SETTABLEKS                       R75 R74 K110 ["Ownership"]
     1283 MOVE                             R75 R23
     1284 JUMPIFNOT                        R75 ; [+55]
     1285 GETUPVAL                         R76 34
     1286 CALL                             R76 0 1
     1287 JUMPIFNOT                        R76 ; [+14]
     1288 GETUPVAL                         R75 24
     1289 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1291 GETUPVAL                         R76 23
     1292 GETTABLEKS                       R76 R76 K285 ["Divider"]
     1294 DUPTABLE                         R77 K286 [{"LayoutOrder"}]
     1295 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1297 CALL                             R78 1 1
     1298 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1300 CALL                             R75 2 1
     1301 JUMP                             ; [+38]
     1302 GETUPVAL                         R75 8
     1303 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1305 LOADK                            R76 K287 ["Frame"]
     1306 DUPTABLE                         R77 K288 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
     1307 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1309 CALL                             R78 1 1
     1310 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1312 GETIMPORT                        R78 K150 [UDim2.new]
     1314 LOADN                            R79 1
     1315 LOADN                            R80 0
     1316 LOADN                            R81 0
     1317 LOADN                            R82 20
     1318 CALL                             R78 4 1
     1319 SETTABLEKS                       R78 R77 K2 ["Size"]
     1321 DUPTABLE                         R78 K290 [{"Separator"}]
     1322 GETUPVAL                         R79 8
     1323 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1325 GETUPVAL                         R80 35
     1326 DUPTABLE                         R81 K292 [{"Position"}]
     1327 GETIMPORT                        R82 K150 [UDim2.new]
     1329 LOADK                            R83 K293 [0.5]
     1330 LOADN                            R84 0
     1331 LOADK                            R85 K293 [0.5]
     1332 LOADN                            R86 0
     1333 CALL                             R82 4 1
     1334 SETTABLEKS                       R82 R81 K291 ["Position"]
     1336 CALL                             R79 2 1
     1337 SETTABLEKS                       R79 R78 K289 ["Separator"]
     1339 CALL                             R75 3 1
     1340 SETTABLEKS                       R75 R74 K111 ["DividerBase"]
     1342 JUMPIFNOT                        R43 ; [+24]
     1343 GETUPVAL                         R75 8
     1344 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1346 GETUPVAL                         R76 36
     1347 DUPTABLE                         R77 K298 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1348 GETTABLEKS                       R78 R2 K33 ["assetId"]
     1350 SETTABLEKS                       R78 R77 K294 ["AssetId"]
     1352 SETTABLEKS                       R14 R77 K18 ["AssetType"]
     1354 SETTABLEKS                       R6 R77 K295 ["AllowSelectPrivate"]
     1356 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1358 CALL                             R78 1 1
     1359 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1361 SETTABLEKS                       R15 R77 K296 ["IsAssetPublic"]
     1363 SETTABLEKS                       R29 R77 K297 ["OnSelected"]
     1365 CALL                             R75 2 1
     1366 JUMP                             ; [+1]
     1367 LOADNIL                          R75
     1368 SETTABLEKS                       R75 R74 K112 ["Sharing"]
     1370 JUMPIFNOT                        R43 ; [+56]
     1371 GETUPVAL                         R76 34
     1372 CALL                             R76 0 1
     1373 JUMPIFNOT                        R76 ; [+14]
     1374 GETUPVAL                         R75 24
     1375 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1377 GETUPVAL                         R76 23
     1378 GETTABLEKS                       R76 R76 K285 ["Divider"]
     1380 DUPTABLE                         R77 K286 [{"LayoutOrder"}]
     1381 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1383 CALL                             R78 1 1
     1384 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1386 CALL                             R75 2 1
     1387 JUMP                             ; [+40]
     1388 GETUPVAL                         R75 8
     1389 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1391 LOADK                            R76 K287 ["Frame"]
     1392 DUPTABLE                         R77 K288 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
     1393 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1395 CALL                             R78 1 1
     1396 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1398 GETIMPORT                        R78 K150 [UDim2.new]
     1400 LOADN                            R79 1
     1401 LOADN                            R80 0
     1402 LOADN                            R81 0
     1403 LOADN                            R82 20
     1404 CALL                             R78 4 1
     1405 SETTABLEKS                       R78 R77 K2 ["Size"]
     1407 DUPTABLE                         R78 K290 [{"Separator"}]
     1408 GETUPVAL                         R79 8
     1409 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1411 GETUPVAL                         R80 35
     1412 DUPTABLE                         R81 K292 [{"Position"}]
     1413 GETIMPORT                        R82 K150 [UDim2.new]
     1415 LOADK                            R83 K293 [0.5]
     1416 LOADN                            R84 0
     1417 LOADK                            R85 K293 [0.5]
     1418 LOADN                            R86 0
     1419 CALL                             R82 4 1
     1420 SETTABLEKS                       R82 R81 K291 ["Position"]
     1422 CALL                             R79 2 1
     1423 SETTABLEKS                       R79 R78 K289 ["Separator"]
     1425 CALL                             R75 3 1
     1426 JUMP                             ; [+1]
     1427 LOADNIL                          R75
     1428 SETTABLEKS                       R75 R74 K113 ["SharingDivider"]
     1430 JUMPIFNOT                        R23 ; [+106]
     1431 GETUPVAL                         R75 8
     1432 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1434 GETUPVAL                         R76 13
     1435 DUPTABLE                         R77 K299 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1436 GETIMPORT                        R78 K248 [Enum.AutomaticSize.Y]
     1438 SETTABLEKS                       R78 R77 K169 ["AutomaticSize"]
     1440 GETIMPORT                        R78 K129 [Enum.FillDirection.Vertical]
     1442 SETTABLEKS                       R78 R77 K142 ["Layout"]
     1444 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1446 CALL                             R78 1 1
     1447 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1449 DUPTABLE                         R78 K301 [{["Top"] = 20}]
     1450 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1452 DUPTABLE                         R78 K304 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1453 GETUPVAL                         R79 8
     1454 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1456 GETUPVAL                         R80 37
     1457 DUPTABLE                         R81 K306 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1458 GETTABLEKS                       R82 R2 K72 ["Localization"]
     1460 LOADK                            R84 K307 ["AssetUploadResult"]
     1461 LOADK                            R85 K308 ["CreatorStoreConfigurationMessage"]
     1462 NAMECALL                         R82 R82 K75 ["getText"]
     1464 CALL                             R82 3 1
     1465 SETTABLEKS                       R82 R81 K172 ["Text"]
     1467 GETTABLEKS                       R82 R1 K309 ["uploadResult"]
     1469 GETTABLEKS                       R82 R82 K310 ["text"]
     1471 SETTABLEKS                       R82 R81 K305 ["TextColor"]
     1473 GETUPVAL                         R82 14
     1474 GETTABLEKS                       R82 R82 K311 ["FONT_SIZE_LARGE"]
     1476 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1478 GETIMPORT                        R82 K150 [UDim2.new]
     1480 LOADN                            R83 1
     1481 LOADN                            R84 0
     1482 LOADN                            R85 0
     1483 LOADN                            R86 24
     1484 CALL                             R82 4 1
     1485 SETTABLEKS                       R82 R81 K2 ["Size"]
     1487 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1489 CALL                             R82 1 1
     1490 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1492 CALL                             R79 2 1
     1493 SETTABLEKS                       R79 R78 K302 ["CreatorStoreConfigurationText"]
     1495 GETUPVAL                         R79 8
     1496 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1498 GETUPVAL                         R80 38
     1499 DUPTABLE                         R81 K313 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1500 SETTABLEKS                       R24 R81 K172 ["Text"]
     1502 GETTABLEKS                       R82 R1 K309 ["uploadResult"]
     1504 GETTABLEKS                       R82 R82 K314 ["link"]
     1506 SETTABLEKS                       R82 R81 K305 ["TextColor"]
     1508 GETUPVAL                         R82 14
     1509 GETTABLEKS                       R82 R82 K311 ["FONT_SIZE_LARGE"]
     1511 SETTABLEKS                       R82 R81 K178 ["TextSize"]
     1513 GETIMPORT                        R82 K150 [UDim2.new]
     1515 LOADN                            R83 1
     1516 LOADN                            R84 0
     1517 LOADN                            R85 0
     1518 LOADN                            R86 24
     1519 CALL                             R82 4 1
     1520 SETTABLEKS                       R82 R81 K2 ["Size"]
     1522 NAMECALL                         R82 R61 K148 ["getNextOrder"]
     1524 CALL                             R82 1 1
     1525 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1527 NEWCLOSURE                       R82 P4
     1528 CAPTURE                          UPVAL U39
     1529 CAPTURE                          VAL R24
     1530 SETTABLEKS                       R82 R81 K312 ["OnClick"]
     1532 CALL                             R79 2 1
     1533 SETTABLEKS                       R79 R78 K303 ["CreatorStoreConfigurationLink"]
     1535 CALL                             R75 3 1
     1536 JUMP                             ; [+1]
     1537 LOADNIL                          R75
     1538 SETTABLEKS                       R75 R74 K114 ["CreatorStoreConfigurationFrame"]
     1540 MOVE                             R75 R41
     1541 JUMPIFNOT                        R75 ; [+24]
     1542 GETUPVAL                         R75 8
     1543 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1545 GETUPVAL                         R76 40
     1546 DUPTABLE                         R77 K319 [{["Title"], ["TotalHeight"] = 80, ["CommentEnabled"], ["CommentOn"], ["ToggleCallback"], ["LayoutOrder"]}]
     1547 LOADK                            R80 K88 ["General"]
     1548 LOADK                            R81 K320 ["Comments"]
     1549 NAMECALL                         R78 R60 K75 ["getText"]
     1551 CALL                             R78 3 1
     1552 SETTABLEKS                       R78 R77 K101 ["Title"]
     1554 SETTABLEKS                       R11 R77 K316 ["CommentEnabled"]
     1556 SETTABLEKS                       R12 R77 K317 ["CommentOn"]
     1558 SETTABLEKS                       R31 R77 K318 ["ToggleCallback"]
     1560 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1562 CALL                             R78 1 1
     1563 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1565 CALL                             R75 2 1
     1566 SETTABLEKS                       R75 R74 K115 ["Comment"]
     1568 MOVE                             R75 R21
     1569 JUMPIFNOT                        R75 ; [+31]
     1570 GETUPVAL                         R75 8
     1571 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1573 GETUPVAL                         R76 41
     1574 DUPTABLE                         R77 K321 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1575 LOADK                            R80 K88 ["General"]
     1576 LOADK                            R81 K116 ["DeleteLocal"]
     1577 NAMECALL                         R78 R60 K75 ["getText"]
     1579 CALL                             R78 3 1
     1580 SETTABLEKS                       R78 R77 K101 ["Title"]
     1582 GETUPVAL                         R79 11
     1583 CALL                             R79 0 1
     1584 JUMPIFNOT                        R79 ; [+3]
     1585 JUMPIFNOT                        R21 ; [+2]
     1586 LOADN                            R78 120
     1587 JUMP                             ; [+1]
     1588 LOADN                            R78 80
     1589 SETTABLEKS                       R78 R77 K190 ["TotalHeight"]
     1591 SETTABLEKS                       R13 R77 K116 ["DeleteLocal"]
     1593 SETTABLEKS                       R32 R77 K318 ["ToggleCallback"]
     1595 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1597 CALL                             R78 1 1
     1598 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1600 CALL                             R75 2 1
     1601 SETTABLEKS                       R75 R74 K116 ["DeleteLocal"]
     1603 GETUPVAL                         R75 11
     1604 CALL                             R75 0 1
     1605 JUMPIFNOT                        R75 ; [+59]
     1606 MOVE                             R75 R22
     1607 JUMPIFNOT                        R75 ; [+57]
     1608 GETUPVAL                         R75 24
     1609 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1611 GETUPVAL                         R76 23
     1612 GETTABLEKS                       R76 R76 K224 ["View"]
     1614 DUPTABLE                         R77 K323 [{["tag"] = "col auto-xy padding-top-xlarge", ["LayoutOrder"]}]
     1615 NAMECALL                         R78 R61 K148 ["getNextOrder"]
     1617 CALL                             R78 1 1
     1618 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1620 DUPTABLE                         R78 K325 [{"Section"}]
     1621 GETUPVAL                         R79 24
     1622 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1624 GETUPVAL                         R80 27
     1625 DUPTABLE                         R81 K327 [{["LayoutOrder"] = 1, ["Title"], ["AutomaticContentHeight"] = True, ["Size"]}]
     1626 LOADK                            R84 K88 ["General"]
     1627 LOADK                            R85 K328 ["AnimationSectionTitle"]
     1628 NAMECALL                         R82 R60 K75 ["getText"]
     1630 CALL                             R82 3 1
     1631 SETTABLEKS                       R82 R81 K101 ["Title"]
     1633 GETIMPORT                        R82 K150 [UDim2.new]
     1635 LOADN                            R83 1
     1636 LOADN                            R84 0
     1637 LOADN                            R85 0
     1638 LOADN                            R86 0
     1639 CALL                             R82 4 1
     1640 SETTABLEKS                       R82 R81 K2 ["Size"]
     1642 DUPTABLE                         R82 K330 [{"AnimationCheckboxCol"}]
     1643 GETUPVAL                         R83 24
     1644 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1646 GETUPVAL                         R84 42
     1647 DUPTABLE                         R85 K333 [{["LayoutOrder"] = 1, ["Localization"], ["OnSelectionChanged"], ["OnSectionValidityChanged"]}]
     1648 SETTABLEKS                       R60 R85 K72 ["Localization"]
     1650 GETTABLEKS                       R86 R2 K334 ["onAnimationSelectionChanged"]
     1652 SETTABLEKS                       R86 R85 K331 ["OnSelectionChanged"]
     1654 GETTABLEKS                       R86 R2 K335 ["onanimationSectionValidityChanged"]
     1656 SETTABLEKS                       R86 R85 K332 ["OnSectionValidityChanged"]
     1658 CALL                             R83 2 1
     1659 SETTABLEKS                       R83 R82 K329 ["AnimationCheckboxCol"]
     1661 CALL                             R79 3 1
     1662 SETTABLEKS                       R79 R78 K324 ["Section"]
     1664 CALL                             R75 3 1
     1665 SETTABLEKS                       R75 R74 K117 ["AnimationPackProperties"]
     1667 CALL                             R71 3 -1
     1668 RETURN                           R71 -1

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
      228 GETTABLEKS                       R45 R37 K57 ["PublishToMarketplaceToggle"]
      230 CALL                             R44 1 1
      231 GETIMPORT                        R45 K11 [require]
      233 GETTABLEKS                       R46 R37 K58 ["ConfigComment"]
      235 CALL                             R45 1 1
      236 GETIMPORT                        R46 K11 [require]
      238 GETTABLEKS                       R47 R37 K59 ["ConfigSharing"]
      240 CALL                             R46 1 1
      241 GETIMPORT                        R47 K11 [require]
      243 GETTABLEKS                       R48 R37 K60 ["ConfigSectionWrapper"]
      245 CALL                             R47 1 1
      246 GETIMPORT                        R48 K11 [require]
      248 GETTABLEKS                       R49 R37 K61 ["Header"]
      250 CALL                             R48 1 1
      251 GETIMPORT                        R49 K11 [require]
      253 GETTABLEKS                       R50 R37 K62 ["AnimationCheckboxCol"]
      255 CALL                             R49 1 1
      256 GETIMPORT                        R50 K11 [require]
      258 GETTABLEKS                       R51 R37 K63 ["FiatPriceComponent"]
      260 CALL                             R50 1 1
      261 GETIMPORT                        R51 K11 [require]
      263 GETTABLEKS                       R52 R37 K64 ["DataConsentToggle"]
      265 CALL                             R51 1 1
      266 GETIMPORT                        R52 K11 [require]
      268 GETTABLEKS                       R53 R37 K65 ["SpecialAttributeSection"]
      270 CALL                             R52 1 1
      271 GETIMPORT                        R53 K11 [require]
      273 GETTABLEKS                       R54 R37 K66 ["UGCBundleValidation"]
      275 CALL                             R53 1 1
      276 GETIMPORT                        R54 K11 [require]
      278 GETTABLEKS                       R55 R1 K7 ["Src"]
      280 GETTABLEKS                       R55 R55 K8 ["Util"]
      282 GETTABLEKS                       R55 R55 K67 ["ColorPicker"]
      284 CALL                             R54 1 1
      285 GETIMPORT                        R55 K11 [require]
      287 GETTABLEKS                       R56 R1 K7 ["Src"]
      289 GETTABLEKS                       R56 R56 K68 ["Flags"]
      291 GETTABLEKS                       R56 R56 K69 ["getFFlagEnableUploadingMakeup"]
      293 CALL                             R55 1 1
      294 GETIMPORT                        R56 K11 [require]
      296 GETTABLEKS                       R57 R1 K7 ["Src"]
      298 GETTABLEKS                       R57 R57 K68 ["Flags"]
      300 GETTABLEKS                       R57 R57 K70 ["getFFlagToolboxPublishOnApproval"]
      302 CALL                             R56 1 1
      303 GETIMPORT                        R57 K11 [require]
      305 GETTABLEKS                       R58 R1 K7 ["Src"]
      307 GETTABLEKS                       R58 R58 K68 ["Flags"]
      309 GETTABLEKS                       R58 R58 K71 ["getFFlagToolboxAssetConfigGroupOwnership"]
      311 CALL                             R57 1 1
      312 GETIMPORT                        R58 K11 [require]
      314 GETTABLEKS                       R59 R1 K7 ["Src"]
      316 GETTABLEKS                       R59 R59 K68 ["Flags"]
      318 GETTABLEKS                       R59 R59 K72 ["getFFlagToolboxAssetConfigFoundationMigration"]
      320 CALL                             R58 1 1
      321 GETIMPORT                        R59 K11 [require]
      323 GETTABLEKS                       R60 R1 K7 ["Src"]
      325 GETTABLEKS                       R60 R60 K68 ["Flags"]
      327 GETTABLEKS                       R60 R60 K73 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      329 CALL                             R59 1 1
      330 GETIMPORT                        R60 K11 [require]
      332 GETTABLEKS                       R61 R1 K7 ["Src"]
      334 GETTABLEKS                       R61 R61 K68 ["Flags"]
      336 GETTABLEKS                       R61 R61 K74 ["getFFlagEnableUploadingAvatarAnimations"]
      338 CALL                             R60 1 1
      339 GETIMPORT                        R61 K11 [require]
      341 GETTABLEKS                       R62 R1 K7 ["Src"]
      343 GETTABLEKS                       R62 R62 K68 ["Flags"]
      345 GETTABLEKS                       R62 R62 K75 ["getFFlagDividerFoundationMigration"]
      347 CALL                             R61 1 1
      348 GETIMPORT                        R62 K11 [require]
      350 GETTABLEKS                       R63 R1 K7 ["Src"]
      352 GETTABLEKS                       R63 R63 K68 ["Flags"]
      354 GETTABLEKS                       R63 R63 K76 ["getFFlagToolboxAnimationPackCurveOnly"]
      356 CALL                             R62 1 1
      357 GETIMPORT                        R63 K11 [require]
      359 GETTABLEKS                       R64 R1 K7 ["Src"]
      361 GETTABLEKS                       R64 R64 K68 ["Flags"]
      363 GETTABLEKS                       R64 R64 K77 ["getFFlagToolboxDynamicUploadFee"]
      365 CALL                             R63 1 1
      366 GETIMPORT                        R64 K11 [require]
      368 GETTABLEKS                       R65 R1 K7 ["Src"]
      370 GETTABLEKS                       R65 R65 K78 ["Types"]
      372 GETTABLEKS                       R65 R65 K79 ["MarketplaceFiatServiceTypes"]
      374 CALL                             R64 1 1
      375 GETIMPORT                        R65 K11 [require]
      377 GETTABLEKS                       R66 R1 K7 ["Src"]
      379 GETTABLEKS                       R66 R66 K50 ["Actions"]
      381 GETTABLEKS                       R66 R66 K80 ["SetFieldError"]
      383 CALL                             R65 1 1
      384 GETIMPORT                        R66 K11 [require]
      386 GETTABLEKS                       R67 R1 K7 ["Src"]
      388 GETTABLEKS                       R67 R67 K8 ["Util"]
      390 GETTABLEKS                       R67 R67 K81 ["PageInfoHelper"]
      392 CALL                             R66 1 1
      393 GETTABLEKS                       R67 R12 K82 ["PureComponent"]
      395 LOADK                            R69 K83 ["PublishAsset"]
      396 NAMECALL                         R67 R67 K84 ["extend"]
      398 CALL                             R67 2 1
      399 DUPCLOSURE                       R68 K85 [PROTO_9]
      400 CAPTURE                          VAL R29
      401 CAPTURE                          VAL R12
      402 CAPTURE                          VAL R0
      403 CAPTURE                          VAL R34
      404 CAPTURE                          VAL R9
      405 SETTABLEKS                       R68 R67 K86 ["init"]
      407 DUPCLOSURE                       R68 K87 [PROTO_10]
      408 SETTABLEKS                       R68 R67 K88 ["bumpCanvas"]
      410 DUPCLOSURE                       R68 K89 [PROTO_11]
      411 CAPTURE                          VAL R30
      412 CAPTURE                          VAL R28
      413 CAPTURE                          VAL R58
      414 CAPTURE                          VAL R11
      415 CAPTURE                          VAL R6
      416 CAPTURE                          VAL R12
      417 CAPTURE                          VAL R18
      418 CAPTURE                          VAL R31
      419 CAPTURE                          VAL R33
      420 SETTABLEKS                       R68 R67 K90 ["getMissingOptionalPartsMessage"]
      422 DUPCLOSURE                       R68 K91 [PROTO_12]
      423 CAPTURE                          VAL R30
      424 CAPTURE                          VAL R28
      425 CAPTURE                          VAL R58
      426 CAPTURE                          VAL R11
      427 CAPTURE                          VAL R6
      428 CAPTURE                          VAL R12
      429 CAPTURE                          VAL R18
      430 CAPTURE                          VAL R31
      431 SETTABLEKS                       R68 R67 K92 ["getUnknownMeshPartMessage"]
      433 DUPCLOSURE                       R68 K93 [PROTO_18]
      434 CAPTURE                          VAL R29
      435 CAPTURE                          VAL R62
      436 CAPTURE                          VAL R30
      437 CAPTURE                          VAL R36
      438 CAPTURE                          VAL R34
      439 CAPTURE                          VAL R10
      440 CAPTURE                          VAL R7
      441 CAPTURE                          VAL R28
      442 CAPTURE                          VAL R12
      443 CAPTURE                          VAL R26
      444 CAPTURE                          VAL R27
      445 CAPTURE                          VAL R60
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R22
      448 CAPTURE                          VAL R31
      449 CAPTURE                          VAL R32
      450 CAPTURE                          VAL R48
      451 CAPTURE                          VAL R39
      452 CAPTURE                          VAL R59
      453 CAPTURE                          VAL R43
      454 CAPTURE                          VAL R40
      455 CAPTURE                          VAL R57
      456 CAPTURE                          VAL R55
      457 CAPTURE                          VAL R6
      458 CAPTURE                          VAL R11
      459 CAPTURE                          VAL R58
      460 CAPTURE                          VAL R54
      461 CAPTURE                          VAL R47
      462 CAPTURE                          VAL R53
      463 CAPTURE                          VAL R56
      464 CAPTURE                          VAL R44
      465 CAPTURE                          VAL R51
      466 CAPTURE                          VAL R63
      467 CAPTURE                          VAL R52
      468 CAPTURE                          VAL R61
      469 CAPTURE                          VAL R23
      470 CAPTURE                          VAL R46
      471 CAPTURE                          VAL R18
      472 CAPTURE                          VAL R21
      473 CAPTURE                          VAL R0
      474 CAPTURE                          VAL R45
      475 CAPTURE                          VAL R41
      476 CAPTURE                          VAL R49
      477 SETTABLEKS                       R68 R67 K94 ["render"]
      479 DUPCLOSURE                       R68 K95 [PROTO_19]
      480 CAPTURE                          VAL R9
      481 DUPCLOSURE                       R69 K96 [PROTO_22]
      482 CAPTURE                          VAL R65
      483 CAPTURE                          VAL R29
      484 CAPTURE                          VAL R38
      485 MOVE                             R70 R15
      486 DUPTABLE                         R71 K98 [{"Localization", "Stylizer"}]
      487 GETTABLEKS                       R72 R14 K44 ["Localization"]
      489 SETTABLEKS                       R72 R71 K44 ["Localization"]
      491 GETTABLEKS                       R72 R14 K97 ["Stylizer"]
      493 SETTABLEKS                       R72 R71 K97 ["Stylizer"]
      495 CALL                             R70 1 1
      496 MOVE                             R71 R67
      497 CALL                             R70 1 1
      498 MOVE                             R67 R70
      499 GETTABLEKS                       R70 R13 K99 ["connect"]
      501 MOVE                             R71 R68
      502 MOVE                             R72 R69
      503 CALL                             R70 2 1
      504 MOVE                             R71 R67
      505 CALL                             R70 1 -1
      506 RETURN                           R70 -1
