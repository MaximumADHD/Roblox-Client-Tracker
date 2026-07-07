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
      323 GETUPVAL                         R71 11
      324 CALL                             R71 0 1
      325 JUMPIFNOT                        R71 ; [+36]
      326 GETUPVAL                         R71 2
      327 GETTABLEKS                       R71 R71 K87 ["isUGCBodyBundleType"]
      329 MOVE                             R72 R14
      330 CALL                             R71 1 1
      331 JUMPIFNOT                        R71 ; [+7]
      332 LOADK                            R73 K88 ["General"]
      333 LOADK                            R74 K89 ["BodyValidation"]
      334 NAMECALL                         R71 R60 K75 ["getText"]
      336 CALL                             R71 3 1
      337 MOVE                             R68 R71
      338 JUMP                             ; [+29]
      339 GETUPVAL                         R71 12
      340 CALL                             R71 0 1
      341 JUMPIFNOT                        R71 ; [+13]
      342 GETUPVAL                         R71 2
      343 GETTABLEKS                       R71 R71 K90 ["isAnimationBundleType"]
      345 MOVE                             R72 R14
      346 CALL                             R71 1 1
      347 JUMPIFNOT                        R71 ; [+7]
      348 LOADK                            R73 K88 ["General"]
      349 LOADK                            R74 K91 ["AvatarAnimationsValidation"]
      350 NAMECALL                         R71 R60 K75 ["getText"]
      352 CALL                             R71 3 1
      353 MOVE                             R68 R71
      354 JUMP                             ; [+13]
      355 LOADK                            R73 K88 ["General"]
      356 LOADK                            R74 K92 ["ShoeValidation"]
      357 NAMECALL                         R71 R60 K75 ["getText"]
      359 CALL                             R71 3 1
      360 MOVE                             R68 R71
      361 JUMP                             ; [+6]
      362 LOADK                            R73 K88 ["General"]
      363 LOADK                            R74 K89 ["BodyValidation"]
      364 NAMECALL                         R71 R60 K75 ["getText"]
      366 CALL                             R71 3 1
      367 MOVE                             R68 R71
      368 GETTABLEKS                       R71 R2 K29 ["instances"]
      370 JUMPIFNOT                        R71 ; [+20]
      371 GETTABLEKS                       R74 R2 K29 ["instances"]
      373 GETTABLEN                        R73 R74 1
      374 GETTABLEKS                       R74 R2 K93 ["allowedBundleTypeSettings"]
      376 MOVE                             R75 R14
      377 MOVE                             R76 R1
      378 NAMECALL                         R71 R0 K94 ["getMissingOptionalPartsMessage"]
      380 CALL                             R71 5 1
      381 MOVE                             R69 R71
      382 GETTABLEKS                       R74 R2 K29 ["instances"]
      384 GETTABLEN                        R73 R74 1
      385 MOVE                             R74 R14
      386 MOVE                             R75 R1
      387 NAMECALL                         R71 R0 K95 ["getUnknownMeshPartMessage"]
      389 CALL                             R71 4 1
      390 MOVE                             R70 R71
      391 GETUPVAL                         R71 8
      392 GETTABLEKS                       R71 R71 K96 ["createElement"]
      394 GETUPVAL                         R72 13
      395 MOVE                             R73 R64
      396 DUPTABLE                         R74 K116 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ColorPickerRow", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal", "AnimationPackProperties"}]
      397 GETUPVAL                         R75 8
      398 GETTABLEKS                       R75 R75 K96 ["createElement"]
      400 LOADK                            R76 K117 ["UIPadding"]
      401 DUPTABLE                         R77 K122 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      402 GETIMPORT                        R78 K124 [UDim.new]
      404 LOADN                            R79 0
      405 LOADN                            R80 24
      406 CALL                             R78 2 1
      407 SETTABLEKS                       R78 R77 K118 ["PaddingTop"]
      409 GETIMPORT                        R78 K124 [UDim.new]
      411 LOADN                            R79 0
      412 LOADN                            R80 24
      413 CALL                             R78 2 1
      414 SETTABLEKS                       R78 R77 K119 ["PaddingBottom"]
      416 GETIMPORT                        R78 K124 [UDim.new]
      418 LOADN                            R79 0
      419 LOADN                            R80 24
      420 CALL                             R78 2 1
      421 SETTABLEKS                       R78 R77 K120 ["PaddingLeft"]
      423 GETIMPORT                        R78 K124 [UDim.new]
      425 LOADN                            R79 0
      426 LOADN                            R80 24
      427 CALL                             R78 2 1
      428 SETTABLEKS                       R78 R77 K121 ["PaddingRight"]
      430 CALL                             R75 2 1
      431 SETTABLEKS                       R75 R74 K97 ["Padding"]
      433 GETUPVAL                         R75 8
      434 GETTABLEKS                       R75 R75 K96 ["createElement"]
      436 LOADK                            R76 K98 ["UIListLayout"]
      437 NEWTABLE                         R77 8 0
      439 GETIMPORT                        R78 K127 [Enum.FillDirection.Vertical]
      441 SETTABLEKS                       R78 R77 K125 ["FillDirection"]
      443 GETIMPORT                        R78 K130 [Enum.HorizontalAlignment.Left]
      445 SETTABLEKS                       R78 R77 K128 ["HorizontalAlignment"]
      447 GETIMPORT                        R78 K133 [Enum.VerticalAlignment.Top]
      449 SETTABLEKS                       R78 R77 K131 ["VerticalAlignment"]
      451 GETIMPORT                        R78 K135 [Enum.SortOrder.LayoutOrder]
      453 SETTABLEKS                       R78 R77 K134 ["SortOrder"]
      455 GETIMPORT                        R78 K124 [UDim.new]
      457 LOADN                            R79 0
      458 LOADN                            R80 0
      459 CALL                             R78 2 1
      460 SETTABLEKS                       R78 R77 K97 ["Padding"]
      462 GETUPVAL                         R78 8
      463 GETTABLEKS                       R78 R78 K136 ["Change"]
      465 GETTABLEKS                       R78 R78 K137 ["AbsoluteContentSize"]
      467 GETTABLEKS                       R79 R0 K138 ["refreshCanvas"]
      469 JUMPIF                           R79 ; [+3]
      470 NEWCLOSURE                       R79 P1
      471 CAPTURE                          VAL R0
      472 CAPTURE                          VAL R3
      473 SETTABLE                         R79 R77 R78
      474 GETUPVAL                         R78 8
      475 GETTABLEKS                       R78 R78 K81 ["Ref"]
      477 GETTABLEKS                       R79 R0 K139 ["listLayoutRef"]
      479 SETTABLE                         R79 R77 R78
      480 CALL                             R75 2 1
      481 SETTABLEKS                       R75 R74 K98 ["UIListLayout"]
      483 JUMPIF                           R44 ; [+112]
      484 JUMPIFNOT                        R19 ; [+111]
      485 JUMPIFNOT                        R45 ; [+110]
      486 GETUPVAL                         R75 8
      487 GETTABLEKS                       R75 R75 K96 ["createElement"]
      489 GETUPVAL                         R76 14
      490 DUPTABLE                         R77 K143 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Padding"], ["Spacing"] = 5, ["VerticalAlignment"]}]
      491 GETIMPORT                        R78 K130 [Enum.HorizontalAlignment.Left]
      493 SETTABLEKS                       R78 R77 K128 ["HorizontalAlignment"]
      495 GETIMPORT                        R78 K145 [Enum.FillDirection.Horizontal]
      497 SETTABLEKS                       R78 R77 K140 ["Layout"]
      499 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      501 CALL                             R78 1 1
      502 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      504 GETIMPORT                        R78 K148 [UDim2.new]
      506 LOADN                            R79 1
      507 LOADN                            R80 0
      508 LOADN                            R81 0
      509 GETUPVAL                         R82 15
      510 GETTABLEKS                       R82 R82 K149 ["FONT_SIZE_TITLE"]
      512 CALL                             R78 4 1
      513 SETTABLEKS                       R78 R77 K2 ["Size"]
      515 DUPTABLE                         R78 K152 [{["Bottom"] = 30}]
      516 SETTABLEKS                       R78 R77 K97 ["Padding"]
      518 GETIMPORT                        R78 K133 [Enum.VerticalAlignment.Top]
      520 SETTABLEKS                       R78 R77 K131 ["VerticalAlignment"]
      522 DUPTABLE                         R78 K155 [{"Icon", "WarningText"}]
      523 GETUPVAL                         R79 8
      524 GETTABLEKS                       R79 R79 K96 ["createElement"]
      526 LOADK                            R80 K156 ["ImageLabel"]
      527 DUPTABLE                         R81 K161 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      528 GETUPVAL                         R82 16
      529 GETTABLEKS                       R82 R82 K162 ["WARNING_ICON"]
      531 SETTABLEKS                       R82 R81 K159 ["Image"]
      533 GETTABLEKS                       R82 R62 K163 ["warningIconColor"]
      535 SETTABLEKS                       R82 R81 K160 ["ImageColor3"]
      537 GETIMPORT                        R82 K165 [UDim2.fromOffset]
      539 LOADN                            R83 24
      540 LOADN                            R84 24
      541 CALL                             R82 2 1
      542 SETTABLEKS                       R82 R81 K2 ["Size"]
      544 CALL                             R79 2 1
      545 SETTABLEKS                       R79 R78 K153 ["Icon"]
      547 GETUPVAL                         R79 8
      548 GETTABLEKS                       R79 R79 K96 ["createElement"]
      550 LOADK                            R80 K166 ["TextLabel"]
      551 DUPTABLE                         R81 K177 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      552 GETIMPORT                        R82 K179 [Enum.AutomaticSize.XY]
      554 SETTABLEKS                       R82 R81 K167 ["AutomaticSize"]
      556 GETUPVAL                         R82 15
      557 GETTABLEKS                       R82 R82 K180 ["FONT"]
      559 SETTABLEKS                       R82 R81 K169 ["Font"]
      561 GETIMPORT                        R82 K148 [UDim2.new]
      563 LOADN                            R83 1
      564 LOADN                            R84 0
      565 LOADN                            R85 1
      566 LOADN                            R86 0
      567 CALL                             R82 4 1
      568 SETTABLEKS                       R82 R81 K2 ["Size"]
      570 SETTABLEKS                       R59 R81 K170 ["Text"]
      572 GETTABLEKS                       R82 R1 K181 ["assetConfig"]
      574 GETTABLEKS                       R82 R82 K182 ["warningColor"]
      576 SETTABLEKS                       R82 R81 K173 ["TextColor3"]
      578 GETIMPORT                        R82 K183 [Enum.TextXAlignment.Left]
      580 SETTABLEKS                       R82 R81 K174 ["TextXAlignment"]
      582 GETIMPORT                        R82 K185 [Enum.TextYAlignment.Center]
      584 SETTABLEKS                       R82 R81 K175 ["TextYAlignment"]
      586 GETUPVAL                         R82 15
      587 GETTABLEKS                       R82 R82 K149 ["FONT_SIZE_TITLE"]
      589 SETTABLEKS                       R82 R81 K176 ["TextSize"]
      591 CALL                             R79 2 1
      592 SETTABLEKS                       R79 R78 K154 ["WarningText"]
      594 CALL                             R75 3 1
      595 JUMP                             ; [+1]
      596 LOADNIL                          R75
      597 SETTABLEKS                       R75 R74 K99 ["ModelWarningFrame"]
      599 JUMPIFNOT                        R20 ; [+19]
      600 GETUPVAL                         R75 8
      601 GETTABLEKS                       R75 R75 K96 ["createElement"]
      603 GETUPVAL                         R76 17
      604 DUPTABLE                         R77 K186 [{"LayoutOrder", "Title"}]
      605 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      607 CALL                             R78 1 1
      608 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      610 LOADK                            R80 K76 ["AssetConfig"]
      611 LOADK                            R81 K187 ["PublishPluginHeader"]
      612 NAMECALL                         R78 R60 K75 ["getText"]
      614 CALL                             R78 3 1
      615 SETTABLEKS                       R78 R77 K101 ["Title"]
      617 CALL                             R75 2 1
      618 JUMP                             ; [+1]
      619 LOADNIL                          R75
      620 SETTABLEKS                       R75 R74 K100 ["Header"]
      622 GETUPVAL                         R75 8
      623 GETTABLEKS                       R75 R75 K96 ["createElement"]
      625 GETUPVAL                         R76 18
      626 DUPTABLE                         R77 K195 [{["Title"], ["TotalHeight"] = 100, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      627 LOADK                            R80 K88 ["General"]
      628 LOADK                            R81 K101 ["Title"]
      629 NAMECALL                         R78 R60 K75 ["getText"]
      631 CALL                             R78 3 1
      632 SETTABLEKS                       R78 R77 K101 ["Title"]
      634 GETUPVAL                         R78 0
      635 GETTABLEKS                       R78 R78 K196 ["NAME_CHARACTER_LIMIT"]
      637 SETTABLEKS                       R78 R77 K190 ["MaxCount"]
      639 SETTABLEKS                       R25 R77 K191 ["TextChangeCallBack"]
      641 SETTABLEKS                       R7 R77 K192 ["TextContent"]
      643 GETUPVAL                         R79 19
      644 CALL                             R79 0 1
      645 JUMPIFNOT                        R79 ; [+3]
      646 GETTABLEKS                       R78 R2 K197 ["showNameRequiredError"]
      648 JUMP                             ; [+1]
      649 LOADNIL                          R78
      650 SETTABLEKS                       R78 R77 K193 ["showRequiredError"]
      652 NEWCLOSURE                       R78 P2
      653 CAPTURE                          VAL R0
      654 CAPTURE                          UPVAL U0
      655 SETTABLEKS                       R78 R77 K194 ["ErrorCallback"]
      657 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      659 CALL                             R78 1 1
      660 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      662 CALL                             R75 2 1
      663 SETTABLEKS                       R75 R74 K101 ["Title"]
      665 GETUPVAL                         R75 8
      666 GETTABLEKS                       R75 R75 K96 ["createElement"]
      668 GETUPVAL                         R76 18
      669 DUPTABLE                         R77 K200 [{["BottomRightText"], ["Title"], ["TotalHeight"] = 180, ["MaxCount"], ["TextChangeCallBack"], ["TextContent"], ["showRequiredError"], ["ErrorCallback"], ["LayoutOrder"]}]
      670 LOADK                            R80 K201 ["AssetConfigDescription"]
      671 LOADK                            R81 K202 ["AddRobloxLinks"]
      672 NAMECALL                         R78 R60 K75 ["getText"]
      674 CALL                             R78 3 1
      675 SETTABLEKS                       R78 R77 K198 ["BottomRightText"]
      677 LOADK                            R80 K88 ["General"]
      678 LOADK                            R81 K102 ["Description"]
      679 NAMECALL                         R78 R60 K75 ["getText"]
      681 CALL                             R78 3 1
      682 SETTABLEKS                       R78 R77 K101 ["Title"]
      684 GETUPVAL                         R78 0
      685 GETTABLEKS                       R78 R78 K203 ["DESCRIPTION_CHARACTER_LIMIT"]
      687 SETTABLEKS                       R78 R77 K190 ["MaxCount"]
      689 SETTABLEKS                       R26 R77 K191 ["TextChangeCallBack"]
      691 SETTABLEKS                       R8 R77 K192 ["TextContent"]
      693 GETUPVAL                         R79 19
      694 CALL                             R79 0 1
      695 JUMPIFNOT                        R79 ; [+3]
      696 GETTABLEKS                       R78 R2 K204 ["showDescriptionRequiredError"]
      698 JUMP                             ; [+1]
      699 LOADNIL                          R78
      700 SETTABLEKS                       R78 R77 K193 ["showRequiredError"]
      702 NEWCLOSURE                       R78 P3
      703 CAPTURE                          VAL R0
      704 CAPTURE                          UPVAL U0
      705 SETTABLEKS                       R78 R77 K194 ["ErrorCallback"]
      707 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      709 CALL                             R78 1 1
      710 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      712 CALL                             R75 2 1
      713 SETTABLEKS                       R75 R74 K102 ["Description"]
      715 JUMPIFNOT                        R44 ; [+62]
      716 GETUPVAL                         R75 8
      717 GETTABLEKS                       R75 R75 K96 ["createElement"]
      719 GETUPVAL                         R76 20
      720 DUPTABLE                         R77 K215 [{"LayoutOrder", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
      721 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      723 CALL                             R78 1 1
      724 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      726 GETTABLEKS                       R78 R2 K205 ["dataSharingEnabled"]
      728 SETTABLEKS                       R78 R77 K205 ["dataSharingEnabled"]
      730 GETTABLEKS                       R78 R2 K206 ["dataSharingToggled"]
      732 SETTABLEKS                       R78 R77 K206 ["dataSharingToggled"]
      734 GETTABLEKS                       R78 R2 K207 ["onDataConsentToggleClick"]
      736 SETTABLEKS                       R78 R77 K207 ["onDataConsentToggleClick"]
      738 GETTABLEKS                       R78 R0 K216 ["state"]
      740 GETTABLEKS                       R78 R78 K208 ["validationState"]
      742 SETTABLEKS                       R78 R77 K208 ["validationState"]
      744 GETTABLEKS                       R78 R0 K216 ["state"]
      746 GETTABLEKS                       R78 R78 K209 ["validationFailureReasons"]
      748 SETTABLEKS                       R78 R77 K209 ["validationFailureReasons"]
      750 GETTABLEKS                       R78 R0 K210 ["setValidationState"]
      752 SETTABLEKS                       R78 R77 K210 ["setValidationState"]
      754 GETTABLEKS                       R78 R0 K211 ["setValidationFailureReasons"]
      756 SETTABLEKS                       R78 R77 K211 ["setValidationFailureReasons"]
      758 GETTABLEKS                       R78 R0 K216 ["state"]
      760 GETTABLEKS                       R78 R78 K212 ["ugcBundleValidationResults"]
      762 SETTABLEKS                       R78 R77 K212 ["ugcBundleValidationResults"]
      764 GETTABLEKS                       R78 R0 K213 ["setUGCBundleValidationResults"]
      766 SETTABLEKS                       R78 R77 K213 ["setUGCBundleValidationResults"]
      768 GETTABLEKS                       R78 R0 K214 ["setCurrentAssetType"]
      770 SETTABLEKS                       R78 R77 K214 ["setCurrentAssetType"]
      772 GETTABLEKS                       R78 R2 K29 ["instances"]
      774 SETTABLEKS                       R78 R77 K29 ["instances"]
      776 CALL                             R75 2 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R75
      779 SETTABLEKS                       R75 R74 K103 ["AssetTypeSelection"]
      781 JUMPIFNOT                        R44 ; [+33]
      782 JUMPIFNOT                        R39 ; [+32]
      783 GETUPVAL                         R75 8
      784 GETTABLEKS                       R75 R75 K96 ["createElement"]
      786 GETUPVAL                         R76 21
      787 DUPTABLE                         R77 K220 [{["LayoutOrder"], ["onDropDownSelect"], ["owner"], ["preselectedGroupId"], ["Title"], ["TotalHeight"] = 70}]
      788 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      790 CALL                             R78 1 1
      791 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      793 SETTABLEKS                       R27 R77 K217 ["onDropDownSelect"]
      795 SETTABLEKS                       R9 R77 K8 ["owner"]
      797 GETUPVAL                         R79 22
      798 CALL                             R79 0 1
      799 JUMPIFNOT                        R79 ; [+3]
      800 GETTABLEKS                       R78 R2 K218 ["preselectedGroupId"]
      802 JUMP                             ; [+1]
      803 LOADNIL                          R78
      804 SETTABLEKS                       R78 R77 K218 ["preselectedGroupId"]
      806 LOADK                            R80 K88 ["General"]
      807 LOADK                            R81 K108 ["Ownership"]
      808 NAMECALL                         R78 R60 K75 ["getText"]
      810 CALL                             R78 3 1
      811 SETTABLEKS                       R78 R77 K101 ["Title"]
      813 CALL                             R75 2 1
      814 JUMP                             ; [+1]
      815 LOADNIL                          R75
      816 SETTABLEKS                       R75 R74 K104 ["Creator"]
      818 GETUPVAL                         R76 23
      819 CALL                             R76 0 1
      820 JUMPIFNOT                        R76 ; [+101]
      821 JUMPIFNOT                        R44 ; [+100]
      822 JUMPIFNOT                        R39 ; [+99]
      823 GETTABLEKS                       R76 R2 K221 ["showColorPicker"]
      825 JUMPIFNOT                        R76 ; [+96]
      826 GETUPVAL                         R75 8
      827 GETTABLEKS                       R75 R75 K96 ["createElement"]
      829 GETUPVAL                         R76 24
      830 GETTABLEKS                       R76 R76 K222 ["View"]
      832 DUPTABLE                         R77 K225 [{["tag"] = "row align-x-left align-y-top", ["Size"], ["LayoutOrder"]}]
      833 GETIMPORT                        R78 K148 [UDim2.new]
      835 LOADN                            R79 1
      836 LOADN                            R80 0
      837 LOADN                            R81 0
      838 LOADN                            R82 70
      839 CALL                             R78 4 1
      840 SETTABLEKS                       R78 R77 K2 ["Size"]
      842 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      844 CALL                             R78 1 1
      845 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      847 DUPTABLE                         R78 K227 [{"Title", "ColorPickerButton"}]
      848 GETUPVAL                         R79 25
      849 GETTABLEKS                       R79 R79 K96 ["createElement"]
      851 GETUPVAL                         R80 24
      852 GETTABLEKS                       R80 R80 K170 ["Text"]
      854 DUPTABLE                         R81 K228 [{["tag"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      855 NEWTABLE                         R82 4 0
      857 LOADB                            R83 1
      858 SETTABLEKS                       R83 R82 K229 ["text-align-x-left text-align-y-top"]
      860 GETUPVAL                         R83 26
      861 CALL                             R83 0 1
      862 SETTABLEKS                       R83 R82 K230 ["text-title-small content-emphasis"]
      864 GETUPVAL                         R84 26
      865 CALL                             R84 0 1
      866 NOT                              R83 R84
      867 SETTABLEKS                       R83 R82 K231 ["text-body-large"]
      869 SETTABLEKS                       R82 R81 K223 ["tag"]
      871 LOADK                            R84 K88 ["General"]
      872 LOADK                            R85 K232 ["ThumbnailSkinTone"]
      873 NAMECALL                         R82 R60 K75 ["getText"]
      875 CALL                             R82 3 1
      876 SETTABLEKS                       R82 R81 K170 ["Text"]
      878 GETIMPORT                        R82 K148 [UDim2.new]
      880 LOADN                            R83 0
      881 GETUPVAL                         R84 0
      882 GETTABLEKS                       R84 R84 K233 ["TITLE_GUTTER_WIDTH"]
      884 LOADN                            R85 1
      885 LOADN                            R86 0
      886 CALL                             R82 4 1
      887 SETTABLEKS                       R82 R81 K2 ["Size"]
      889 CALL                             R79 2 1
      890 SETTABLEKS                       R79 R78 K101 ["Title"]
      892 GETUPVAL                         R79 8
      893 GETTABLEKS                       R79 R79 K96 ["createElement"]
      895 GETUPVAL                         R80 27
      896 DUPTABLE                         R81 K237 [{["selectedColor"], ["setSelectedColor"], ["Localization"], ["showRequiredError"], ["LayoutOrder"] = 2, ["textColor"]}]
      897 GETTABLEKS                       R82 R2 K234 ["selectedColor"]
      899 SETTABLEKS                       R82 R81 K234 ["selectedColor"]
      901 GETTABLEKS                       R82 R2 K235 ["setSelectedColor"]
      903 SETTABLEKS                       R82 R81 K235 ["setSelectedColor"]
      905 SETTABLEKS                       R60 R81 K72 ["Localization"]
      907 GETTABLEKS                       R82 R2 K238 ["showColorPickerRequiredError"]
      909 SETTABLEKS                       R82 R81 K193 ["showRequiredError"]
      911 GETTABLEKS                       R82 R1 K79 ["publishAsset"]
      913 GETTABLEKS                       R82 R82 K239 ["titleTextColor"]
      915 SETTABLEKS                       R82 R81 K236 ["textColor"]
      917 CALL                             R79 2 1
      918 SETTABLEKS                       R79 R78 K226 ["ColorPickerButton"]
      920 CALL                             R75 3 1
      921 JUMP                             ; [+1]
      922 LOADNIL                          R75
      923 SETTABLEKS                       R75 R74 K105 ["ColorPickerRow"]
      925 JUMPIFNOT                        R67 ; [+175]
      926 GETUPVAL                         R75 8
      927 GETTABLEKS                       R75 R75 K96 ["createElement"]
      929 GETUPVAL                         R76 28
      930 DUPTABLE                         R77 K240 [{"AutomaticSize", "LayoutOrder", "Title"}]
      931 GETIMPORT                        R78 K179 [Enum.AutomaticSize.XY]
      933 SETTABLEKS                       R78 R77 K167 ["AutomaticSize"]
      935 NAMECALL                         R78 R61 K146 ["getNextOrder"]
      937 CALL                             R78 1 1
      938 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
      940 SETTABLEKS                       R68 R77 K101 ["Title"]
      942 DUPTABLE                         R78 K242 [{"ValidationPane"}]
      943 GETUPVAL                         R79 8
      944 GETTABLEKS                       R79 R79 K96 ["createElement"]
      946 GETUPVAL                         R80 14
      947 DUPTABLE                         R81 K244 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Spacing"] = 18, ["Padding"]}]
      948 GETIMPORT                        R82 K246 [Enum.AutomaticSize.Y]
      950 SETTABLEKS                       R82 R81 K167 ["AutomaticSize"]
      952 GETIMPORT                        R82 K127 [Enum.FillDirection.Vertical]
      954 SETTABLEKS                       R82 R81 K140 ["Layout"]
      956 GETIMPORT                        R82 K248 [UDim2.fromScale]
      958 LOADN                            R83 1
      959 LOADN                            R84 0
      960 CALL                             R82 2 1
      961 SETTABLEKS                       R82 R81 K2 ["Size"]
      963 DUPTABLE                         R82 K250 [{["Bottom"] = 24}]
      964 SETTABLEKS                       R82 R81 K97 ["Padding"]
      966 DUPTABLE                         R82 K254 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
      967 GETUPVAL                         R83 8
      968 GETTABLEKS                       R83 R83 K96 ["createElement"]
      970 GETUPVAL                         R84 29
      971 DUPTABLE                         R85 K257 [{["LayoutOrder"] = 1, ["isUGCBodyBundleType"], ["isAnimationBundleType"], ["validationState"], ["setValidationState"], ["validationFailureReasons"], ["setValidationFailureReasons"], ["validationResults"], ["setUGCBundleValidationResults"], ["assetTypeEnum"], ["instances"], ["allowedBundleTypeSettings"], ["onAssetValidationResultChanged"]}]
      972 GETUPVAL                         R86 2
      973 GETTABLEKS                       R86 R86 K87 ["isUGCBodyBundleType"]
      975 MOVE                             R87 R14
      976 CALL                             R86 1 1
      977 SETTABLEKS                       R86 R85 K87 ["isUGCBodyBundleType"]
      979 GETUPVAL                         R87 12
      980 CALL                             R87 0 1
      981 JUMPIFNOT                        R87 ; [+6]
      982 GETUPVAL                         R86 2
      983 GETTABLEKS                       R86 R86 K90 ["isAnimationBundleType"]
      985 MOVE                             R87 R14
      986 CALL                             R86 1 1
      987 JUMP                             ; [+1]
      988 LOADNIL                          R86
      989 SETTABLEKS                       R86 R85 K90 ["isAnimationBundleType"]
      991 GETTABLEKS                       R86 R0 K216 ["state"]
      993 GETTABLEKS                       R86 R86 K208 ["validationState"]
      995 SETTABLEKS                       R86 R85 K208 ["validationState"]
      997 GETTABLEKS                       R86 R0 K210 ["setValidationState"]
      999 SETTABLEKS                       R86 R85 K210 ["setValidationState"]
     1001 GETTABLEKS                       R86 R0 K216 ["state"]
     1003 GETTABLEKS                       R86 R86 K209 ["validationFailureReasons"]
     1005 SETTABLEKS                       R86 R85 K209 ["validationFailureReasons"]
     1007 GETTABLEKS                       R86 R0 K211 ["setValidationFailureReasons"]
     1009 SETTABLEKS                       R86 R85 K211 ["setValidationFailureReasons"]
     1011 GETTABLEKS                       R86 R0 K216 ["state"]
     1013 GETTABLEKS                       R86 R86 K212 ["ugcBundleValidationResults"]
     1015 SETTABLEKS                       R86 R85 K255 ["validationResults"]
     1017 GETTABLEKS                       R86 R0 K213 ["setUGCBundleValidationResults"]
     1019 SETTABLEKS                       R86 R85 K213 ["setUGCBundleValidationResults"]
     1021 GETTABLEKS                       R86 R0 K216 ["state"]
     1023 GETTABLEKS                       R86 R86 K258 ["currentAssetType"]
     1025 SETTABLEKS                       R86 R85 K13 ["assetTypeEnum"]
     1027 GETTABLEKS                       R86 R2 K29 ["instances"]
     1029 SETTABLEKS                       R86 R85 K29 ["instances"]
     1031 GETTABLEKS                       R86 R2 K93 ["allowedBundleTypeSettings"]
     1033 SETTABLEKS                       R86 R85 K93 ["allowedBundleTypeSettings"]
     1035 GETTABLEKS                       R86 R2 K256 ["onAssetValidationResultChanged"]
     1037 SETTABLEKS                       R86 R85 K256 ["onAssetValidationResultChanged"]
     1039 CALL                             R83 2 1
     1040 SETTABLEKS                       R83 R82 K251 ["UGCBundleValidation"]
     1042 JUMPIFNOT                        R69 ; [+23]
     1043 GETUPVAL                         R83 8
     1044 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1046 GETUPVAL                         R84 14
     1047 DUPTABLE                         R85 K259 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["Size"]}]
     1048 GETIMPORT                        R86 K246 [Enum.AutomaticSize.Y]
     1050 SETTABLEKS                       R86 R85 K167 ["AutomaticSize"]
     1052 GETIMPORT                        R86 K127 [Enum.FillDirection.Vertical]
     1054 SETTABLEKS                       R86 R85 K140 ["Layout"]
     1056 GETIMPORT                        R86 K248 [UDim2.fromScale]
     1058 LOADN                            R87 1
     1059 LOADN                            R88 0
     1060 CALL                             R86 2 1
     1061 SETTABLEKS                       R86 R85 K2 ["Size"]
     1063 MOVE                             R86 R69
     1064 CALL                             R83 3 1
     1065 JUMP                             ; [+1]
     1066 LOADNIL                          R83
     1067 SETTABLEKS                       R83 R82 K252 ["MissingOptionalAccessoriesMsg"]
     1069 JUMPIFNOT                        R70 ; [+23]
     1070 GETUPVAL                         R83 8
     1071 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1073 GETUPVAL                         R84 14
     1074 DUPTABLE                         R85 K261 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 3, ["Size"]}]
     1075 GETIMPORT                        R86 K246 [Enum.AutomaticSize.Y]
     1077 SETTABLEKS                       R86 R85 K167 ["AutomaticSize"]
     1079 GETIMPORT                        R86 K127 [Enum.FillDirection.Vertical]
     1081 SETTABLEKS                       R86 R85 K140 ["Layout"]
     1083 GETIMPORT                        R86 K248 [UDim2.fromScale]
     1085 LOADN                            R87 1
     1086 LOADN                            R88 0
     1087 CALL                             R86 2 1
     1088 SETTABLEKS                       R86 R85 K2 ["Size"]
     1090 MOVE                             R86 R70
     1091 CALL                             R83 3 1
     1092 JUMP                             ; [+1]
     1093 LOADNIL                          R83
     1094 SETTABLEKS                       R83 R82 K253 ["UnknownMeshPartsMsgChildren"]
     1096 CALL                             R79 3 1
     1097 SETTABLEKS                       R79 R78 K241 ["ValidationPane"]
     1099 CALL                             R75 3 1
     1100 JUMP                             ; [+1]
     1101 LOADNIL                          R75
     1102 SETTABLEKS                       R75 R74 K106 ["ContentTypeBodyValidation"]
     1104 GETTABLEKS                       R76 R2 K205 ["dataSharingEnabled"]
     1106 JUMPIFNOT                        R76 ; [+32]
     1107 GETUPVAL                         R76 2
     1108 GETTABLEKS                       R76 R76 K86 ["isUGCBundleType"]
     1110 MOVE                             R77 R14
     1111 CALL                             R76 1 1
     1112 JUMPIF                           R76 ; [+6]
     1113 GETUPVAL                         R76 2
     1114 GETTABLEKS                       R76 R76 K262 ["isCatalogAsset"]
     1116 MOVE                             R77 R14
     1117 CALL                             R76 1 1
     1118 JUMPIFNOT                        R76 ; [+20]
     1119 GETUPVAL                         R75 8
     1120 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1122 GETUPVAL                         R76 30
     1123 DUPTABLE                         R77 K263 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
     1124 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1126 CALL                             R78 1 1
     1127 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1129 GETTABLEKS                       R78 R2 K206 ["dataSharingToggled"]
     1131 SETTABLEKS                       R78 R77 K206 ["dataSharingToggled"]
     1133 GETTABLEKS                       R78 R2 K207 ["onDataConsentToggleClick"]
     1135 SETTABLEKS                       R78 R77 K207 ["onDataConsentToggleClick"]
     1137 CALL                             R75 2 1
     1138 JUMP                             ; [+1]
     1139 LOADNIL                          R75
     1140 SETTABLEKS                       R75 R74 K107 ["DataSharingConsent"]
     1142 JUMPIF                           R44 ; [+33]
     1143 JUMPIFNOT                        R39 ; [+32]
     1144 GETUPVAL                         R75 8
     1145 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1147 GETUPVAL                         R76 21
     1148 DUPTABLE                         R77 K264 [{["Title"], ["owner"], ["TotalHeight"] = 70, ["onDropDownSelect"], ["preselectedGroupId"], ["LayoutOrder"]}]
     1149 LOADK                            R80 K88 ["General"]
     1150 LOADK                            R81 K108 ["Ownership"]
     1151 NAMECALL                         R78 R60 K75 ["getText"]
     1153 CALL                             R78 3 1
     1154 SETTABLEKS                       R78 R77 K101 ["Title"]
     1156 SETTABLEKS                       R9 R77 K8 ["owner"]
     1158 SETTABLEKS                       R27 R77 K217 ["onDropDownSelect"]
     1160 GETUPVAL                         R79 22
     1161 CALL                             R79 0 1
     1162 JUMPIFNOT                        R79 ; [+3]
     1163 GETTABLEKS                       R78 R2 K218 ["preselectedGroupId"]
     1165 JUMP                             ; [+1]
     1166 LOADNIL                          R78
     1167 SETTABLEKS                       R78 R77 K218 ["preselectedGroupId"]
     1169 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1171 CALL                             R78 1 1
     1172 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1174 CALL                             R75 2 1
     1175 JUMP                             ; [+1]
     1176 LOADNIL                          R75
     1177 SETTABLEKS                       R75 R74 K108 ["Ownership"]
     1179 MOVE                             R75 R23
     1180 JUMPIFNOT                        R75 ; [+55]
     1181 GETUPVAL                         R76 31
     1182 CALL                             R76 0 1
     1183 JUMPIFNOT                        R76 ; [+14]
     1184 GETUPVAL                         R75 25
     1185 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1187 GETUPVAL                         R76 24
     1188 GETTABLEKS                       R76 R76 K265 ["Divider"]
     1190 DUPTABLE                         R77 K266 [{"LayoutOrder"}]
     1191 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1193 CALL                             R78 1 1
     1194 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1196 CALL                             R75 2 1
     1197 JUMP                             ; [+38]
     1198 GETUPVAL                         R75 8
     1199 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1201 LOADK                            R76 K267 ["Frame"]
     1202 DUPTABLE                         R77 K268 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
     1203 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1205 CALL                             R78 1 1
     1206 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1208 GETIMPORT                        R78 K148 [UDim2.new]
     1210 LOADN                            R79 1
     1211 LOADN                            R80 0
     1212 LOADN                            R81 0
     1213 LOADN                            R82 20
     1214 CALL                             R78 4 1
     1215 SETTABLEKS                       R78 R77 K2 ["Size"]
     1217 DUPTABLE                         R78 K270 [{"Separator"}]
     1218 GETUPVAL                         R79 8
     1219 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1221 GETUPVAL                         R80 32
     1222 DUPTABLE                         R81 K272 [{"Position"}]
     1223 GETIMPORT                        R82 K148 [UDim2.new]
     1225 LOADK                            R83 K273 [0.5]
     1226 LOADN                            R84 0
     1227 LOADK                            R85 K273 [0.5]
     1228 LOADN                            R86 0
     1229 CALL                             R82 4 1
     1230 SETTABLEKS                       R82 R81 K271 ["Position"]
     1232 CALL                             R79 2 1
     1233 SETTABLEKS                       R79 R78 K269 ["Separator"]
     1235 CALL                             R75 3 1
     1236 SETTABLEKS                       R75 R74 K109 ["DividerBase"]
     1238 JUMPIFNOT                        R43 ; [+24]
     1239 GETUPVAL                         R75 8
     1240 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1242 GETUPVAL                         R76 33
     1243 DUPTABLE                         R77 K278 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
     1244 GETTABLEKS                       R78 R2 K33 ["assetId"]
     1246 SETTABLEKS                       R78 R77 K274 ["AssetId"]
     1248 SETTABLEKS                       R14 R77 K18 ["AssetType"]
     1250 SETTABLEKS                       R6 R77 K275 ["AllowSelectPrivate"]
     1252 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1254 CALL                             R78 1 1
     1255 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1257 SETTABLEKS                       R15 R77 K276 ["IsAssetPublic"]
     1259 SETTABLEKS                       R29 R77 K277 ["OnSelected"]
     1261 CALL                             R75 2 1
     1262 JUMP                             ; [+1]
     1263 LOADNIL                          R75
     1264 SETTABLEKS                       R75 R74 K110 ["Sharing"]
     1266 JUMPIFNOT                        R43 ; [+56]
     1267 GETUPVAL                         R76 31
     1268 CALL                             R76 0 1
     1269 JUMPIFNOT                        R76 ; [+14]
     1270 GETUPVAL                         R75 25
     1271 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1273 GETUPVAL                         R76 24
     1274 GETTABLEKS                       R76 R76 K265 ["Divider"]
     1276 DUPTABLE                         R77 K266 [{"LayoutOrder"}]
     1277 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1279 CALL                             R78 1 1
     1280 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1282 CALL                             R75 2 1
     1283 JUMP                             ; [+40]
     1284 GETUPVAL                         R75 8
     1285 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1287 LOADK                            R76 K267 ["Frame"]
     1288 DUPTABLE                         R77 K268 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
     1289 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1291 CALL                             R78 1 1
     1292 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1294 GETIMPORT                        R78 K148 [UDim2.new]
     1296 LOADN                            R79 1
     1297 LOADN                            R80 0
     1298 LOADN                            R81 0
     1299 LOADN                            R82 20
     1300 CALL                             R78 4 1
     1301 SETTABLEKS                       R78 R77 K2 ["Size"]
     1303 DUPTABLE                         R78 K270 [{"Separator"}]
     1304 GETUPVAL                         R79 8
     1305 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1307 GETUPVAL                         R80 32
     1308 DUPTABLE                         R81 K272 [{"Position"}]
     1309 GETIMPORT                        R82 K148 [UDim2.new]
     1311 LOADK                            R83 K273 [0.5]
     1312 LOADN                            R84 0
     1313 LOADK                            R85 K273 [0.5]
     1314 LOADN                            R86 0
     1315 CALL                             R82 4 1
     1316 SETTABLEKS                       R82 R81 K271 ["Position"]
     1318 CALL                             R79 2 1
     1319 SETTABLEKS                       R79 R78 K269 ["Separator"]
     1321 CALL                             R75 3 1
     1322 JUMP                             ; [+1]
     1323 LOADNIL                          R75
     1324 SETTABLEKS                       R75 R74 K111 ["SharingDivider"]
     1326 JUMPIFNOT                        R23 ; [+106]
     1327 GETUPVAL                         R75 8
     1328 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1330 GETUPVAL                         R76 14
     1331 DUPTABLE                         R77 K279 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
     1332 GETIMPORT                        R78 K246 [Enum.AutomaticSize.Y]
     1334 SETTABLEKS                       R78 R77 K167 ["AutomaticSize"]
     1336 GETIMPORT                        R78 K127 [Enum.FillDirection.Vertical]
     1338 SETTABLEKS                       R78 R77 K140 ["Layout"]
     1340 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1342 CALL                             R78 1 1
     1343 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1345 DUPTABLE                         R78 K281 [{["Top"] = 20}]
     1346 SETTABLEKS                       R78 R77 K97 ["Padding"]
     1348 DUPTABLE                         R78 K284 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
     1349 GETUPVAL                         R79 8
     1350 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1352 GETUPVAL                         R80 34
     1353 DUPTABLE                         R81 K286 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder"}]
     1354 GETTABLEKS                       R82 R2 K72 ["Localization"]
     1356 LOADK                            R84 K287 ["AssetUploadResult"]
     1357 LOADK                            R85 K288 ["CreatorStoreConfigurationMessage"]
     1358 NAMECALL                         R82 R82 K75 ["getText"]
     1360 CALL                             R82 3 1
     1361 SETTABLEKS                       R82 R81 K170 ["Text"]
     1363 GETTABLEKS                       R82 R1 K289 ["uploadResult"]
     1365 GETTABLEKS                       R82 R82 K290 ["text"]
     1367 SETTABLEKS                       R82 R81 K285 ["TextColor"]
     1369 GETUPVAL                         R82 15
     1370 GETTABLEKS                       R82 R82 K291 ["FONT_SIZE_LARGE"]
     1372 SETTABLEKS                       R82 R81 K176 ["TextSize"]
     1374 GETIMPORT                        R82 K148 [UDim2.new]
     1376 LOADN                            R83 1
     1377 LOADN                            R84 0
     1378 LOADN                            R85 0
     1379 LOADN                            R86 24
     1380 CALL                             R82 4 1
     1381 SETTABLEKS                       R82 R81 K2 ["Size"]
     1383 NAMECALL                         R82 R61 K146 ["getNextOrder"]
     1385 CALL                             R82 1 1
     1386 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1388 CALL                             R79 2 1
     1389 SETTABLEKS                       R79 R78 K282 ["CreatorStoreConfigurationText"]
     1391 GETUPVAL                         R79 8
     1392 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1394 GETUPVAL                         R80 35
     1395 DUPTABLE                         R81 K293 [{"Text", "TextColor", "TextSize", "Size", "LayoutOrder", "OnClick"}]
     1396 SETTABLEKS                       R24 R81 K170 ["Text"]
     1398 GETTABLEKS                       R82 R1 K289 ["uploadResult"]
     1400 GETTABLEKS                       R82 R82 K294 ["link"]
     1402 SETTABLEKS                       R82 R81 K285 ["TextColor"]
     1404 GETUPVAL                         R82 15
     1405 GETTABLEKS                       R82 R82 K291 ["FONT_SIZE_LARGE"]
     1407 SETTABLEKS                       R82 R81 K176 ["TextSize"]
     1409 GETIMPORT                        R82 K148 [UDim2.new]
     1411 LOADN                            R83 1
     1412 LOADN                            R84 0
     1413 LOADN                            R85 0
     1414 LOADN                            R86 24
     1415 CALL                             R82 4 1
     1416 SETTABLEKS                       R82 R81 K2 ["Size"]
     1418 NAMECALL                         R82 R61 K146 ["getNextOrder"]
     1420 CALL                             R82 1 1
     1421 SETTABLEKS                       R82 R81 K3 ["LayoutOrder"]
     1423 NEWCLOSURE                       R82 P4
     1424 CAPTURE                          UPVAL U36
     1425 CAPTURE                          VAL R24
     1426 SETTABLEKS                       R82 R81 K292 ["OnClick"]
     1428 CALL                             R79 2 1
     1429 SETTABLEKS                       R79 R78 K283 ["CreatorStoreConfigurationLink"]
     1431 CALL                             R75 3 1
     1432 JUMP                             ; [+1]
     1433 LOADNIL                          R75
     1434 SETTABLEKS                       R75 R74 K112 ["CreatorStoreConfigurationFrame"]
     1436 MOVE                             R75 R41
     1437 JUMPIFNOT                        R75 ; [+24]
     1438 GETUPVAL                         R75 8
     1439 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1441 GETUPVAL                         R76 37
     1442 DUPTABLE                         R77 K299 [{["Title"], ["TotalHeight"] = 80, ["CommentEnabled"], ["CommentOn"], ["ToggleCallback"], ["LayoutOrder"]}]
     1443 LOADK                            R80 K88 ["General"]
     1444 LOADK                            R81 K300 ["Comments"]
     1445 NAMECALL                         R78 R60 K75 ["getText"]
     1447 CALL                             R78 3 1
     1448 SETTABLEKS                       R78 R77 K101 ["Title"]
     1450 SETTABLEKS                       R11 R77 K296 ["CommentEnabled"]
     1452 SETTABLEKS                       R12 R77 K297 ["CommentOn"]
     1454 SETTABLEKS                       R31 R77 K298 ["ToggleCallback"]
     1456 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1458 CALL                             R78 1 1
     1459 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1461 CALL                             R75 2 1
     1462 SETTABLEKS                       R75 R74 K113 ["Comment"]
     1464 MOVE                             R75 R21
     1465 JUMPIFNOT                        R75 ; [+31]
     1466 GETUPVAL                         R75 8
     1467 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1469 GETUPVAL                         R76 38
     1470 DUPTABLE                         R77 K301 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
     1471 LOADK                            R80 K88 ["General"]
     1472 LOADK                            R81 K114 ["DeleteLocal"]
     1473 NAMECALL                         R78 R60 K75 ["getText"]
     1475 CALL                             R78 3 1
     1476 SETTABLEKS                       R78 R77 K101 ["Title"]
     1478 GETUPVAL                         R79 12
     1479 CALL                             R79 0 1
     1480 JUMPIFNOT                        R79 ; [+3]
     1481 JUMPIFNOT                        R21 ; [+2]
     1482 LOADN                            R78 120
     1483 JUMP                             ; [+1]
     1484 LOADN                            R78 80
     1485 SETTABLEKS                       R78 R77 K188 ["TotalHeight"]
     1487 SETTABLEKS                       R13 R77 K114 ["DeleteLocal"]
     1489 SETTABLEKS                       R32 R77 K298 ["ToggleCallback"]
     1491 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1493 CALL                             R78 1 1
     1494 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1496 CALL                             R75 2 1
     1497 SETTABLEKS                       R75 R74 K114 ["DeleteLocal"]
     1499 GETUPVAL                         R75 12
     1500 CALL                             R75 0 1
     1501 JUMPIFNOT                        R75 ; [+59]
     1502 MOVE                             R75 R22
     1503 JUMPIFNOT                        R75 ; [+57]
     1504 GETUPVAL                         R75 25
     1505 GETTABLEKS                       R75 R75 K96 ["createElement"]
     1507 GETUPVAL                         R76 24
     1508 GETTABLEKS                       R76 R76 K222 ["View"]
     1510 DUPTABLE                         R77 K303 [{["tag"] = "col auto-xy padding-top-xlarge", ["LayoutOrder"]}]
     1511 NAMECALL                         R78 R61 K146 ["getNextOrder"]
     1513 CALL                             R78 1 1
     1514 SETTABLEKS                       R78 R77 K3 ["LayoutOrder"]
     1516 DUPTABLE                         R78 K305 [{"Section"}]
     1517 GETUPVAL                         R79 25
     1518 GETTABLEKS                       R79 R79 K96 ["createElement"]
     1520 GETUPVAL                         R80 28
     1521 DUPTABLE                         R81 K307 [{["LayoutOrder"] = 1, ["Title"], ["AutomaticContentHeight"] = True, ["Size"]}]
     1522 LOADK                            R84 K88 ["General"]
     1523 LOADK                            R85 K308 ["AnimationSectionTitle"]
     1524 NAMECALL                         R82 R60 K75 ["getText"]
     1526 CALL                             R82 3 1
     1527 SETTABLEKS                       R82 R81 K101 ["Title"]
     1529 GETIMPORT                        R82 K148 [UDim2.new]
     1531 LOADN                            R83 1
     1532 LOADN                            R84 0
     1533 LOADN                            R85 0
     1534 LOADN                            R86 0
     1535 CALL                             R82 4 1
     1536 SETTABLEKS                       R82 R81 K2 ["Size"]
     1538 DUPTABLE                         R82 K310 [{"AnimationCheckboxCol"}]
     1539 GETUPVAL                         R83 25
     1540 GETTABLEKS                       R83 R83 K96 ["createElement"]
     1542 GETUPVAL                         R84 39
     1543 DUPTABLE                         R85 K313 [{["LayoutOrder"] = 1, ["Localization"], ["OnSelectionChanged"], ["OnSectionValidityChanged"]}]
     1544 SETTABLEKS                       R60 R85 K72 ["Localization"]
     1546 GETTABLEKS                       R86 R2 K314 ["onAnimationSelectionChanged"]
     1548 SETTABLEKS                       R86 R85 K311 ["OnSelectionChanged"]
     1550 GETTABLEKS                       R86 R2 K315 ["onanimationSectionValidityChanged"]
     1552 SETTABLEKS                       R86 R85 K312 ["OnSectionValidityChanged"]
     1554 CALL                             R83 2 1
     1555 SETTABLEKS                       R83 R82 K309 ["AnimationCheckboxCol"]
     1557 CALL                             R79 3 1
     1558 SETTABLEKS                       R79 R78 K304 ["Section"]
     1560 CALL                             R75 3 1
     1561 SETTABLEKS                       R75 R74 K115 ["AnimationPackProperties"]
     1563 CALL                             R71 3 -1
     1564 RETURN                           R71 -1

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
      342 GETTABLEKS                       R61 R61 K66 ["Flags"]
      344 GETTABLEKS                       R61 R61 K74 ["getFFlagToolboxAnimationPackCurveOnly"]
      346 CALL                             R60 1 1
      347 GETIMPORT                        R61 K11 [require]
      349 GETTABLEKS                       R62 R1 K7 ["Src"]
      351 GETTABLEKS                       R62 R62 K75 ["Types"]
      353 GETTABLEKS                       R62 R62 K76 ["MarketplaceFiatServiceTypes"]
      355 CALL                             R61 1 1
      356 GETIMPORT                        R62 K11 [require]
      358 GETTABLEKS                       R63 R1 K7 ["Src"]
      360 GETTABLEKS                       R63 R63 K50 ["Actions"]
      362 GETTABLEKS                       R63 R63 K77 ["SetFieldError"]
      364 CALL                             R62 1 1
      365 GETIMPORT                        R63 K11 [require]
      367 GETTABLEKS                       R64 R1 K7 ["Src"]
      369 GETTABLEKS                       R64 R64 K8 ["Util"]
      371 GETTABLEKS                       R64 R64 K78 ["PageInfoHelper"]
      373 CALL                             R63 1 1
      374 GETTABLEKS                       R64 R12 K79 ["PureComponent"]
      376 LOADK                            R66 K80 ["PublishAsset"]
      377 NAMECALL                         R64 R64 K81 ["extend"]
      379 CALL                             R64 2 1
      380 DUPCLOSURE                       R65 K82 [PROTO_9]
      381 CAPTURE                          VAL R29
      382 CAPTURE                          VAL R12
      383 CAPTURE                          VAL R0
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R9
      386 SETTABLEKS                       R65 R64 K83 ["init"]
      388 DUPCLOSURE                       R65 K84 [PROTO_10]
      389 SETTABLEKS                       R65 R64 K85 ["bumpCanvas"]
      391 DUPCLOSURE                       R65 K86 [PROTO_11]
      392 CAPTURE                          VAL R30
      393 CAPTURE                          VAL R28
      394 CAPTURE                          VAL R55
      395 CAPTURE                          VAL R11
      396 CAPTURE                          VAL R6
      397 CAPTURE                          VAL R12
      398 CAPTURE                          VAL R18
      399 CAPTURE                          VAL R31
      400 CAPTURE                          VAL R33
      401 SETTABLEKS                       R65 R64 K87 ["getMissingOptionalPartsMessage"]
      403 DUPCLOSURE                       R65 K88 [PROTO_12]
      404 CAPTURE                          VAL R30
      405 CAPTURE                          VAL R28
      406 CAPTURE                          VAL R55
      407 CAPTURE                          VAL R11
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R12
      410 CAPTURE                          VAL R18
      411 CAPTURE                          VAL R31
      412 SETTABLEKS                       R65 R64 K89 ["getUnknownMeshPartMessage"]
      414 DUPCLOSURE                       R65 K90 [PROTO_18]
      415 CAPTURE                          VAL R29
      416 CAPTURE                          VAL R60
      417 CAPTURE                          VAL R30
      418 CAPTURE                          VAL R36
      419 CAPTURE                          VAL R34
      420 CAPTURE                          VAL R10
      421 CAPTURE                          VAL R7
      422 CAPTURE                          VAL R28
      423 CAPTURE                          VAL R12
      424 CAPTURE                          VAL R26
      425 CAPTURE                          VAL R27
      426 CAPTURE                          VAL R58
      427 CAPTURE                          VAL R57
      428 CAPTURE                          VAL R24
      429 CAPTURE                          VAL R22
      430 CAPTURE                          VAL R31
      431 CAPTURE                          VAL R32
      432 CAPTURE                          VAL R47
      433 CAPTURE                          VAL R39
      434 CAPTURE                          VAL R56
      435 CAPTURE                          VAL R43
      436 CAPTURE                          VAL R40
      437 CAPTURE                          VAL R54
      438 CAPTURE                          VAL R53
      439 CAPTURE                          VAL R6
      440 CAPTURE                          VAL R11
      441 CAPTURE                          VAL R55
      442 CAPTURE                          VAL R52
      443 CAPTURE                          VAL R46
      444 CAPTURE                          VAL R51
      445 CAPTURE                          VAL R50
      446 CAPTURE                          VAL R59
      447 CAPTURE                          VAL R23
      448 CAPTURE                          VAL R45
      449 CAPTURE                          VAL R18
      450 CAPTURE                          VAL R21
      451 CAPTURE                          VAL R0
      452 CAPTURE                          VAL R44
      453 CAPTURE                          VAL R41
      454 CAPTURE                          VAL R48
      455 SETTABLEKS                       R65 R64 K91 ["render"]
      457 DUPCLOSURE                       R65 K92 [PROTO_19]
      458 CAPTURE                          VAL R9
      459 DUPCLOSURE                       R66 K93 [PROTO_22]
      460 CAPTURE                          VAL R62
      461 CAPTURE                          VAL R29
      462 CAPTURE                          VAL R38
      463 MOVE                             R67 R15
      464 DUPTABLE                         R68 K95 [{"Localization", "Stylizer"}]
      465 GETTABLEKS                       R69 R14 K44 ["Localization"]
      467 SETTABLEKS                       R69 R68 K44 ["Localization"]
      469 GETTABLEKS                       R69 R14 K94 ["Stylizer"]
      471 SETTABLEKS                       R69 R68 K94 ["Stylizer"]
      473 CALL                             R67 1 1
      474 MOVE                             R68 R64
      475 CALL                             R67 1 1
      476 MOVE                             R64 R67
      477 GETTABLEKS                       R67 R13 K96 ["connect"]
      479 MOVE                             R68 R65
      480 MOVE                             R69 R66
      481 CALL                             R67 2 1
      482 MOVE                             R68 R64
      483 CALL                             R67 1 -1
      484 RETURN                           R67 -1
