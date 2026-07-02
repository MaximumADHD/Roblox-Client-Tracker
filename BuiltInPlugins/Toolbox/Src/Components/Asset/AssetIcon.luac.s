PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R2 1
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K2 [table.insert]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K3 ["constructAssetThumbnailUrl"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 1
       22 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       24 MOVE                             R4 R1
       25 GETIMPORT                        R2 K2 [table.insert]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 OR                               R3 R4 R2
        3 LOADNIL                          R4
        4 GETTABLEKS                       R5 R3 K1 ["assetMediaIds"]
        6 FASTCALL1                        TYPE R5 ; [+3]
        7 MOVE                             R7 R5
        8 GETIMPORT                        R6 K3 [type]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+31]
       13 LENGTH                           R6 R5
       14 LOADN                            R7 0
       15 JUMPIFNOTLT                      R7 R6 ; [+27]
       17 JUMPIFNOT                        R1 ; [+8]
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R3 K5 ["assetId"]
       22 SETLIST                          R6 R7 1 [1]
       24 MOVE                             R4 R6
       25 JUMP                             ; [+7]
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K6 ["thumbnailUrl"]
       30 SETLIST                          R6 R7 1 [1]
       32 MOVE                             R4 R6
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K7 ["forEach"]
       36 MOVE                             R7 R5
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          REF R4
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CALL                             R6 2 0
       43 CLOSEUPVALS                      R4
       44 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["Modal"]
        8 GETTABLEKS                       R1 R0 K5 ["onTooltipTriggered"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K6 ["assetId"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K7 ["TOOLTIP_TYPE"]
       16 GETTABLEKS                       R3 R3 K8 ["ASSET_ICON"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onAssetPreviewButtonClicked"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assetTileLocation"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["ASSET_TILE_LOCATION"]
        6 GETTABLEKS                       R4 R4 K2 ["MORE_FROM"]
        8 JUMPIFEQ                         R2 R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["assetMediaLogged"]
       15 GETTABLE                         R4 R5 R0
       16 JUMPIFNOT                        R4 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["assetMediaLogged"]
       21 LOADB                            R5 1
       22 SETTABLE                         R5 R4 R0
       23 JUMPIFNOT                        R3 ; [+6]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
       27 GETTABLEKS                       R4 R4 K5 ["ON_HOVER_MORE_FROM"]
       29 JUMP                             ; [+14]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K1 ["ASSET_TILE_LOCATION"]
       33 GETTABLEKS                       R5 R5 K6 ["BROWSE"]
       35 JUMPIFNOTEQ                      R2 R5 ; [+7]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K4 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
       40 GETTABLEKS                       R4 R4 K7 ["ON_HOVER_BROWSE"]
       42 JUMP                             ; [+1]
       43 LOADK                            R4 K8 [""]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K9 ["props"]
       47 GETTABLEKS                       R5 R5 K10 ["AssetAnalytics"]
       49 NAMECALL                         R5 R5 K11 ["get"]
       51 CALL                             R5 1 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K9 ["props"]
       55 GETTABLEKS                       R7 R7 K12 ["assetData"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K13 ["state"]
       60 GETTABLEKS                       R9 R9 K14 ["imageIdsForCarousel"]
       62 GETTABLE                         R8 R9 R0
       63 MOVE                             R9 R0
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K9 ["props"]
       67 GETTABLEKS                       R10 R10 K15 ["searchId"]
       69 MOVE                             R11 R4
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R12 R12 K9 ["props"]
       74 GETTABLEKS                       R12 R12 K16 ["originalAssetId"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R12
       78 NAMECALL                         R5 R5 K17 ["logAssetMediaImpression"]
       80 CALL                             R5 7 0
       81 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LogAssetMediaImpression"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LogAssetMediaImpression"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetThumbnailUrl"]
        3 GETTABLEKS                       R3 R1 K1 ["assetId"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K2 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R0 K3 ["thumbnailUrl"]
       14 DUPTABLE                         R3 K8 [{["isHovered"] = False, ["imageUrlsForCarousel"], ["imageIdsForCarousel"]}]
       15 LOADB                            R6 0
       16 MOVE                             R7 R1
       17 NAMECALL                         R4 R0 K9 ["_createImageDataForCarousel"]
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K6 ["imageUrlsForCarousel"]
       22 LOADB                            R6 1
       23 MOVE                             R7 R1
       24 NAMECALL                         R4 R0 K9 ["_createImageDataForCarousel"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K7 ["imageIdsForCarousel"]
       29 SETTABLEKS                       R3 R0 K10 ["state"]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R3 R0 K11 ["onMouseEnter"]
       37 NEWCLOSURE                       R3 P1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R3 R0 K12 ["onMouseLeave"]
       41 NEWCLOSURE                       R3 P2
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R3 R0 K13 ["onAssetPreviewButtonClicked"]
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R0 K14 ["assetMediaLogged"]
       49 NEWCLOSURE                       R3 P3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R3 R0 K15 ["LogAssetMediaImpression"]
       55 NEWCLOSURE                       R3 P4
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R0 K16 ["OnImageCarouselChange"]
       59 NEWCLOSURE                       R3 P5
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R3 R0 K17 ["OnSetImageCarouselImages"]
       63 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["assetId"]
        4 GETTABLEKS                       R4 R2 K1 ["assetId"]
        6 JUMPIFEQ                         R3 R4 ; [+15]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["constructAssetThumbnailUrl"]
       11 GETTABLEKS                       R4 R2 K1 ["assetId"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K3 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       19 CALL                             R3 3 1
       20 SETTABLEKS                       R3 R0 K4 ["thumbnailUrl"]
       22 GETTABLEKS                       R3 R1 K5 ["assetMediaIds"]
       24 GETTABLEKS                       R4 R2 K5 ["assetMediaIds"]
       26 JUMPIFEQ                         R3 R4 ; [+19]
       28 DUPTABLE                         R5 K8 [{"imageUrlsForCarousel", "imageIdsForCarousel"}]
       29 LOADB                            R8 0
       30 LOADNIL                          R9
       31 NAMECALL                         R6 R0 K9 ["_createImageDataForCarousel"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K6 ["imageUrlsForCarousel"]
       36 LOADB                            R8 1
       37 LOADNIL                          R9
       38 NAMECALL                         R6 R0 K9 ["_createImageDataForCarousel"]
       40 CALL                             R6 3 1
       41 SETTABLEKS                       R6 R5 K7 ["imageIdsForCarousel"]
       43 NAMECALL                         R3 R0 K10 ["setState"]
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["assetId"]
        4 GETTABLEKS                       R3 R1 K2 ["assetName"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["backgroundIndex"]
       11 GETTABLEKS                       R6 R1 K6 ["isEndorsed"]
       13 GETTABLEKS                       R7 R1 K7 ["typeId"]
       15 GETTABLEKS                       R8 R1 K8 ["isPackage"]
       17 GETTABLEKS                       R9 R1 K9 ["currentSoundId"]
       19 GETTABLEKS                       R10 R1 K10 ["isLoading"]
       21 GETTABLEKS                       R11 R0 K11 ["onMouseEnter"]
       23 GETTABLEKS                       R12 R0 K12 ["onMouseLeave"]
       25 GETTABLEKS                       R13 R0 K13 ["state"]
       27 GETTABLEKS                       R13 R13 K14 ["isHovered"]
       29 GETTABLEKS                       R14 R1 K14 ["isHovered"]
       31 GETTABLEKS                       R15 R1 K15 ["status"]
       33 GETTABLEKS                       R16 R0 K16 ["thumbnailUrl"]
       35 GETTABLEKS                       R17 R1 K17 ["Modal"]
       37 GETTABLEKS                       R17 R17 K18 ["modalStatus"]
       39 MOVE                             R20 R2
       40 GETUPVAL                         R21 0
       41 GETTABLEKS                       R21 R21 K19 ["TOOLTIP_TYPE"]
       43 GETTABLEKS                       R21 R21 K20 ["ASSET_ICON"]
       45 NAMECALL                         R18 R17 K21 ["canShowCurrentTooltip"]
       47 CALL                             R18 3 1
       48 GETIMPORT                        R20 K25 [Enum.AssetType.Audio]
       50 GETTABLEKS                       R20 R20 K26 ["Value"]
       52 JUMPIFEQ                         R7 R20 ; [+2]
       54 LOADB                            R19 0 +1
       55 LOADB                            R19 1
       56 MOVE                             R20 R15
       57 JUMPIFNOT                        R20 ; [+4]
       58 GETUPVAL                         R21 1
       59 GETTABLEKS                       R21 R21 K27 ["AssetStatus"]
       61 GETTABLE                         R20 R21 R15
       62 GETUPVAL                         R22 2
       63 GETTABLEKS                       R22 R22 K28 ["getTabForCategoryName"]
       65 GETTABLEKS                       R23 R1 K29 ["categoryName"]
       67 CALL                             R22 1 1
       68 GETUPVAL                         R23 2
       69 GETTABLEKS                       R23 R23 K30 ["CREATIONS"]
       71 JUMPIFEQ                         R22 R23 ; [+2]
       73 LOADB                            R21 0 +1
       74 LOADB                            R21 1
       75 DUPTABLE                         R22 K38 [{"UICorner", "AssetImage", "Badge", "PreviewAudioButton", "AudioProgressBar", "AssetPreviewTriggerButton", "AssetStatus", "TooltipWrapper"}]
       76 GETUPVAL                         R23 3
       77 GETTABLEKS                       R23 R23 K39 ["createElement"]
       79 LOADK                            R24 K31 ["UICorner"]
       80 DUPTABLE                         R25 K41 [{"CornerRadius"}]
       81 GETIMPORT                        R26 K44 [UDim.new]
       83 LOADN                            R27 0
       84 GETUPVAL                         R28 0
       85 GETTABLEKS                       R28 R28 K45 ["ASSET_CORNER_RADIUS"]
       87 CALL                             R26 2 1
       88 SETTABLEKS                       R26 R25 K40 ["CornerRadius"]
       90 CALL                             R23 2 1
       91 SETTABLEKS                       R23 R22 K31 ["UICorner"]
       93 GETTABLEKS                       R24 R0 K13 ["state"]
       95 GETTABLEKS                       R24 R24 K46 ["imageUrlsForCarousel"]
       97 JUMPIFEQKNIL                     R24 ; [+57]
       99 GETUPVAL                         R23 3
      100 GETTABLEKS                       R23 R23 K39 ["createElement"]
      102 GETUPVAL                         R24 4
      103 DUPTABLE                         R25 K58 [{["AutoAdvanceTimer"], ["ImageScaleType"], ["ImageCornerRadius"], ["ImageStrings"], ["OnImageChange"], ["OnImageChangeTransparencyThreshold"], ["OnSetImages"], ["ResetWhenHoveredOff"] = True, ["Size"], ["DisableAnimations"]}]
      104 GETUPVAL                         R26 0
      105 GETTABLEKS                       R26 R26 K59 ["ASSET_TILE_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      107 SETTABLEKS                       R26 R25 K47 ["AutoAdvanceTimer"]
      109 GETIMPORT                        R26 K62 [Enum.ScaleType.Crop]
      111 SETTABLEKS                       R26 R25 K48 ["ImageScaleType"]
      113 GETUPVAL                         R26 0
      114 GETTABLEKS                       R26 R26 K45 ["ASSET_CORNER_RADIUS"]
      116 SETTABLEKS                       R26 R25 K49 ["ImageCornerRadius"]
      118 GETTABLEKS                       R26 R0 K13 ["state"]
      120 GETTABLEKS                       R26 R26 K46 ["imageUrlsForCarousel"]
      122 SETTABLEKS                       R26 R25 K50 ["ImageStrings"]
      124 GETTABLEKS                       R26 R0 K63 ["OnImageCarouselChange"]
      126 SETTABLEKS                       R26 R25 K51 ["OnImageChange"]
      128 GETUPVAL                         R26 0
      129 GETTABLEKS                       R26 R26 K64 ["IMAGE_CAROUSEL_ON_IMAGE_CHANGE_TRANSPARENCY_THRESHOLD"]
      131 SETTABLEKS                       R26 R25 K52 ["OnImageChangeTransparencyThreshold"]
      133 GETTABLEKS                       R26 R0 K65 ["OnSetImageCarouselImages"]
      135 SETTABLEKS                       R26 R25 K53 ["OnSetImages"]
      137 GETIMPORT                        R26 K67 [UDim2.new]
      139 LOADN                            R27 1
      140 LOADN                            R28 0
      141 LOADN                            R29 1
      142 LOADN                            R30 0
      143 CALL                             R26 4 1
      144 SETTABLEKS                       R26 R25 K56 ["Size"]
      146 GETUPVAL                         R27 5
      147 JUMPIFNOT                        R27 ; [+2]
      148 LOADB                            R26 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R26
      151 SETTABLEKS                       R26 R25 K57 ["DisableAnimations"]
      153 CALL                             R23 2 1
      154 JUMP                             ; [+35]
      155 GETUPVAL                         R23 3
      156 GETTABLEKS                       R23 R23 K39 ["createElement"]
      158 GETUPVAL                         R24 6
      159 DUPTABLE                         R25 K73 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["defaultImage"] = ""}]
      160 GETIMPORT                        R26 K67 [UDim2.new]
      162 LOADN                            R27 1
      163 LOADN                            R28 0
      164 LOADN                            R29 1
      165 LOADN                            R30 0
      166 CALL                             R26 4 1
      167 SETTABLEKS                       R26 R25 K56 ["Size"]
      169 SETTABLEKS                       R16 R25 K70 ["Image"]
      171 DUPTABLE                         R26 K74 [{"UICorner"}]
      172 GETUPVAL                         R27 3
      173 GETTABLEKS                       R27 R27 K39 ["createElement"]
      175 LOADK                            R28 K31 ["UICorner"]
      176 DUPTABLE                         R29 K41 [{"CornerRadius"}]
      177 GETIMPORT                        R30 K44 [UDim.new]
      179 LOADN                            R31 0
      180 GETUPVAL                         R32 0
      181 GETTABLEKS                       R32 R32 K45 ["ASSET_CORNER_RADIUS"]
      183 CALL                             R30 2 1
      184 SETTABLEKS                       R30 R29 K40 ["CornerRadius"]
      186 CALL                             R27 2 1
      187 SETTABLEKS                       R27 R26 K31 ["UICorner"]
      189 CALL                             R23 3 1
      190 SETTABLEKS                       R23 R22 K32 ["AssetImage"]
      192 JUMPIF                           R6 ; [+1]
      193 JUMPIFNOT                        R8 ; [+13]
      194 GETUPVAL                         R23 3
      195 GETTABLEKS                       R23 R23 K39 ["createElement"]
      197 GETUPVAL                         R24 7
      198 DUPTABLE                         R25 K76 [{"assetId", "isPackage", "floatLeft"}]
      199 SETTABLEKS                       R2 R25 K1 ["assetId"]
      201 SETTABLEKS                       R8 R25 K8 ["isPackage"]
      203 SETTABLEKS                       R19 R25 K75 ["floatLeft"]
      205 CALL                             R23 2 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R23
      208 SETTABLEKS                       R23 R22 K33 ["Badge"]
      210 MOVE                             R23 R19
      211 JUMPIFNOT                        R23 ; [+12]
      212 GETUPVAL                         R23 3
      213 GETTABLEKS                       R23 R23 K39 ["createElement"]
      215 GETUPVAL                         R24 8
      216 DUPTABLE                         R25 K79 [{["ZIndex"] = 3, ["assetId"], ["currentSoundId"], ["isLoading"]}]
      217 SETTABLEKS                       R2 R25 K1 ["assetId"]
      219 SETTABLEKS                       R9 R25 K9 ["currentSoundId"]
      221 SETTABLEKS                       R10 R25 K10 ["isLoading"]
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K34 ["PreviewAudioButton"]
      226 MOVE                             R23 R19
      227 JUMPIFNOT                        R23 ; [+35]
      228 GETUPVAL                         R23 3
      229 GETTABLEKS                       R23 R23 K39 ["createElement"]
      231 GETUPVAL                         R24 9
      232 DUPTABLE                         R25 K82 [{["AnchorPoint"], ["assetId"], ["currentSoundId"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      233 GETIMPORT                        R26 K84 [Vector2.new]
      235 LOADN                            R27 0
      236 LOADN                            R28 1
      237 CALL                             R26 2 1
      238 SETTABLEKS                       R26 R25 K80 ["AnchorPoint"]
      240 SETTABLEKS                       R2 R25 K1 ["assetId"]
      242 SETTABLEKS                       R9 R25 K9 ["currentSoundId"]
      244 GETIMPORT                        R26 K67 [UDim2.new]
      246 LOADN                            R27 0
      247 LOADN                            R28 0
      248 LOADN                            R29 1
      249 LOADN                            R30 0
      250 CALL                             R26 4 1
      251 SETTABLEKS                       R26 R25 K81 ["Position"]
      253 GETIMPORT                        R26 K67 [UDim2.new]
      255 LOADN                            R27 1
      256 LOADN                            R28 0
      257 LOADN                            R29 0
      258 LOADN                            R30 2
      259 CALL                             R26 4 1
      260 SETTABLEKS                       R26 R25 K56 ["Size"]
      262 CALL                             R23 2 1
      263 SETTABLEKS                       R23 R22 K35 ["AudioProgressBar"]
      265 NOT                              R23 R21
      266 JUMPIFNOT                        R23 ; [+15]
      267 GETUPVAL                         R23 3
      268 GETTABLEKS                       R23 R23 K39 ["createElement"]
      270 GETUPVAL                         R24 10
      271 DUPTABLE                         R25 K89 [{["position"], ["ShowIcon"], ["onClick"], ["ZIndex"] = 2}]
      272 GETUPVAL                         R26 11
      273 SETTABLEKS                       R26 R25 K85 ["position"]
      275 SETTABLEKS                       R14 R25 K86 ["ShowIcon"]
      277 GETTABLEKS                       R26 R0 K90 ["onAssetPreviewButtonClicked"]
      279 SETTABLEKS                       R26 R25 K87 ["onClick"]
      281 CALL                             R23 2 1
      282 SETTABLEKS                       R23 R22 K36 ["AssetPreviewTriggerButton"]
      284 MOVE                             R23 R14
      285 JUMPIFNOT                        R23 ; [+23]
      286 MOVE                             R23 R20
      287 JUMPIFNOT                        R23 ; [+21]
      288 GETUPVAL                         R23 3
      289 GETTABLEKS                       R23 R23 K39 ["createElement"]
      291 LOADK                            R24 K91 ["ImageLabel"]
      292 DUPTABLE                         R25 K92 [{["Position"], ["AnchorPoint"], ["Size"], ["Image"], ["BackgroundTransparency"] = 1}]
      293 GETUPVAL                         R26 12
      294 SETTABLEKS                       R26 R25 K81 ["Position"]
      296 GETIMPORT                        R26 K84 [Vector2.new]
      298 LOADK                            R27 K93 [0.5]
      299 LOADK                            R28 K93 [0.5]
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K80 ["AnchorPoint"]
      303 GETUPVAL                         R26 13
      304 SETTABLEKS                       R26 R25 K56 ["Size"]
      306 SETTABLEKS                       R20 R25 K70 ["Image"]
      308 CALL                             R23 2 1
      309 SETTABLEKS                       R23 R22 K27 ["AssetStatus"]
      311 MOVE                             R23 R13
      312 JUMPIFNOT                        R23 ; [+12]
      313 GETUPVAL                         R23 3
      314 GETTABLEKS                       R23 R23 K39 ["createElement"]
      316 GETUPVAL                         R24 14
      317 DUPTABLE                         R25 K95 [{"Text", "canShowCurrentTooltip", "isHovered"}]
      318 SETTABLEKS                       R3 R25 K94 ["Text"]
      320 SETTABLEKS                       R18 R25 K21 ["canShowCurrentTooltip"]
      322 SETTABLEKS                       R13 R25 K14 ["isHovered"]
      324 CALL                             R23 2 1
      325 SETTABLEKS                       R23 R22 K37 ["TooltipWrapper"]
      327 GETUPVAL                         R23 3
      328 GETTABLEKS                       R23 R23 K39 ["createElement"]
      330 GETUPVAL                         R24 15
      331 NEWTABLE                         R25 8 0
      333 SETTABLEKS                       R5 R25 K5 ["backgroundIndex"]
      335 GETIMPORT                        R26 K67 [UDim2.new]
      337 LOADN                            R27 1
      338 LOADN                            R28 0
      339 LOADN                            R29 1
      340 LOADN                            R30 0
      341 CALL                             R26 4 1
      342 SETTABLEKS                       R26 R25 K56 ["Size"]
      344 GETIMPORT                        R26 K98 [Enum.SizeConstraint.RelativeXX]
      346 SETTABLEKS                       R26 R25 K96 ["SizeConstraint"]
      348 LOADN                            R26 1
      349 SETTABLEKS                       R26 R25 K77 ["ZIndex"]
      351 SETTABLEKS                       R4 R25 K4 ["LayoutOrder"]
      353 GETUPVAL                         R26 3
      354 GETTABLEKS                       R26 R26 K99 ["Event"]
      356 GETTABLEKS                       R26 R26 K100 ["MouseEnter"]
      358 SETTABLE                         R11 R25 R26
      359 GETUPVAL                         R26 3
      360 GETTABLEKS                       R26 R26 K99 ["Event"]
      362 GETTABLEKS                       R26 R26 K101 ["MouseLeave"]
      364 SETTABLE                         R12 R25 R26
      365 MOVE                             R26 R22
      366 CALL                             R23 3 -1
      367 RETURN                           R23 -1

PROTO_11:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R0 K0 ["assets"]
        7 GETTABLEKS                       R3 R3 K1 ["idToAssetMap"]
        9 JUMPIFEQKNIL                     R3 ; [+9]
       11 GETTABLEKS                       R3 R0 K0 ["assets"]
       13 GETTABLEKS                       R3 R3 K1 ["idToAssetMap"]
       15 GETTABLEKS                       R4 R1 K2 ["assetId"]
       17 GETTABLE                         R2 R3 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 GETTABLEKS                       R3 R0 K3 ["sound"]
       22 JUMPIF                           R3 ; [+2]
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R0 K4 ["pageInfo"]
       27 JUMPIF                           R4 ; [+2]
       28 NEWTABLE                         R4 0 0
       30 GETTABLEKS                       R6 R4 K6 ["selectedBackgroundIndex"]
       32 ORK                              R5 R6 K5 [1]
       33 GETTABLEKS                       R7 R4 K8 ["hoveredBackgroundIndex"]
       35 ORK                              R6 R7 K7 [0]
       36 GETTABLEKS                       R7 R4 K9 ["categoryName"]
       38 JUMPIF                           R7 ; [+5]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K10 ["DEFAULT"]
       42 GETTABLEKS                       R7 R7 K11 ["name"]
       44 DUPTABLE                         R8 K18 [{"assetData", "assetMediaIds", "backgroundIndex", "categoryName", "elapsedTime", "searchId", "totalTime"}]
       45 SETTABLEKS                       R2 R8 K12 ["assetData"]
       47 JUMPIFNOT                        R2 ; [+8]
       48 GETTABLEKS                       R10 R2 K19 ["Asset"]
       50 JUMPIFNOT                        R10 ; [+5]
       51 GETTABLEKS                       R9 R2 K19 ["Asset"]
       53 GETTABLEKS                       R9 R9 K20 ["AssetMediaIds"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R9
       57 SETTABLEKS                       R9 R8 K13 ["assetMediaIds"]
       59 JUMPIFEQKN                       R6 K7 [0] ; [+3]
       61 MOVE                             R9 R6
       62 JUMPIF                           R9 ; [+1]
       63 MOVE                             R9 R5
       64 SETTABLEKS                       R9 R8 K14 ["backgroundIndex"]
       66 SETTABLEKS                       R7 R8 K9 ["categoryName"]
       68 GETTABLEKS                       R10 R3 K15 ["elapsedTime"]
       70 ORK                              R9 R10 K7 [0]
       71 SETTABLEKS                       R9 R8 K15 ["elapsedTime"]
       73 GETTABLEKS                       R9 R4 K16 ["searchId"]
       75 SETTABLEKS                       R9 R8 K16 ["searchId"]
       77 GETTABLEKS                       R10 R3 K17 ["totalTime"]
       79 ORK                              R9 R10 K7 [0]
       80 SETTABLEKS                       R9 R8 K17 ["totalTime"]
       82 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Dash"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R6 K11 ["Util"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R6 K12 ["Analytics"]
       41 GETTABLEKS                       R8 R8 K13 ["AssetAnalyticsContextItem"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R6 K14 ["Constants"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R6 K15 ["Images"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R6 K16 ["Urls"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R11 K17 ["Types"]
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R11 K18 ["Category"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R0 K10 ["Src"]
       72 GETTABLEKS                       R14 R14 K19 ["Components"]
       74 GETTABLEKS                       R14 R14 K20 ["Asset"]
       76 GETTABLEKS                       R14 R14 K21 ["AssetIconBadge"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R0 K10 ["Src"]
       83 GETTABLEKS                       R15 R15 K19 ["Components"]
       85 GETTABLEKS                       R15 R15 K20 ["Asset"]
       87 GETTABLEKS                       R15 R15 K22 ["AssetBackground"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K10 ["Src"]
       94 GETTABLEKS                       R16 R16 K19 ["Components"]
       96 GETTABLEKS                       R16 R16 K23 ["Audio"]
       98 GETTABLEKS                       R16 R16 K24 ["AudioPreviewButton"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETTABLEKS                       R17 R0 K10 ["Src"]
      105 GETTABLEKS                       R17 R17 K19 ["Components"]
      107 GETTABLEKS                       R17 R17 K23 ["Audio"]
      109 GETTABLEKS                       R17 R17 K25 ["AudioProgressBar"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K5 [require]
      114 GETTABLEKS                       R18 R0 K10 ["Src"]
      116 GETTABLEKS                       R18 R18 K19 ["Components"]
      118 GETTABLEKS                       R18 R18 K26 ["ImageWithDefault"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K10 ["Src"]
      125 GETTABLEKS                       R19 R19 K19 ["Components"]
      127 GETTABLEKS                       R19 R19 K27 ["TooltipWrapper"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K10 ["Src"]
      134 GETTABLEKS                       R20 R20 K19 ["Components"]
      136 GETTABLEKS                       R20 R20 K20 ["Asset"]
      138 GETTABLEKS                       R20 R20 K28 ["Preview"]
      140 GETTABLEKS                       R20 R20 K29 ["PopUpWrapperButton"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R0 K10 ["Src"]
      147 GETTABLEKS                       R21 R21 K30 ["ContextServices"]
      149 GETTABLEKS                       R21 R21 K31 ["ModalContext"]
      151 CALL                             R20 1 1
      152 GETTABLEKS                       R21 R4 K32 ["UI"]
      154 GETTABLEKS                       R21 R21 K33 ["ImageCarousel"]
      156 GETTABLEKS                       R22 R4 K30 ["ContextServices"]
      158 GETTABLEKS                       R23 R22 K34 ["withContext"]
      160 GETTABLEKS                       R24 R2 K35 ["PureComponent"]
      162 LOADK                            R26 K36 ["AssetIcon"]
      163 NAMECALL                         R24 R24 K37 ["extend"]
      165 CALL                             R24 2 1
      166 GETIMPORT                        R25 K40 [UDim2.new]
      168 LOADN                            R26 1
      169 LOADN                            R27 -14
      170 LOADN                            R28 0
      171 LOADN                            R29 14
      172 CALL                             R25 4 1
      173 GETIMPORT                        R26 K40 [UDim2.new]
      175 LOADN                            R27 0
      176 LOADN                            R28 14
      177 LOADN                            R29 0
      178 LOADN                            R30 14
      179 CALL                             R26 4 1
      180 GETIMPORT                        R27 K40 [UDim2.new]
      182 LOADN                            R28 0
      183 LOADN                            R29 16
      184 LOADN                            R30 0
      185 LOADN                            R31 16
      186 CALL                             R27 4 1
      187 GETIMPORT                        R28 K42 [game]
      189 LOADK                            R30 K43 ["ToolboxDisableImageCarouselAnimation"]
      190 NAMECALL                         R28 R28 K44 ["GetFastFlag"]
      192 CALL                             R28 2 1
      193 DUPCLOSURE                       R29 K45 [PROTO_1]
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R8
      197 SETTABLEKS                       R29 R24 K46 ["_createImageDataForCarousel"]
      199 DUPCLOSURE                       R29 K47 [PROTO_8]
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R8
      202 SETTABLEKS                       R29 R24 K48 ["init"]
      204 DUPCLOSURE                       R29 K49 [PROTO_9]
      205 CAPTURE                          VAL R10
      206 CAPTURE                          VAL R8
      207 SETTABLEKS                       R29 R24 K50 ["didUpdate"]
      209 DUPCLOSURE                       R29 K51 [PROTO_10]
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R14
      226 SETTABLEKS                       R29 R24 K52 ["render"]
      228 MOVE                             R29 R23
      229 DUPTABLE                         R30 K56 [{"AssetAnalytics", "Stylizer", "Modal"}]
      230 SETTABLEKS                       R7 R30 K53 ["AssetAnalytics"]
      232 GETTABLEKS                       R31 R22 K54 ["Stylizer"]
      234 SETTABLEKS                       R31 R30 K54 ["Stylizer"]
      236 SETTABLEKS                       R20 R30 K55 ["Modal"]
      238 CALL                             R29 1 1
      239 MOVE                             R30 R24
      240 CALL                             R29 1 1
      241 MOVE                             R24 R29
      242 DUPCLOSURE                       R29 K57 [PROTO_11]
      243 CAPTURE                          VAL R12
      244 GETTABLEKS                       R30 R3 K58 ["connect"]
      246 MOVE                             R31 R29
      247 LOADNIL                          R32
      248 CALL                             R30 2 1
      249 MOVE                             R31 R24
      250 CALL                             R30 1 -1
      251 RETURN                           R30 -1
