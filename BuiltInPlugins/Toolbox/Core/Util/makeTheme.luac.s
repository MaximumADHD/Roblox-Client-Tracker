PROTO_0:
  MOVE R6 R5
  JUMPIF R6 [+3]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["DialogMainButton"]
  DUPTABLE R7 K7 [{"AnchorPoint", "Position", "Color", "Image", "Size", "ScaleType"}]
  GETIMPORT R8 K10 [Vector2.new]
  LOADK R9 K11 [0.5]
  LOADK R10 K11 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K1 ["AnchorPoint"]
  MOVE R8 R4
  JUMPIF R8 [+7]
  GETIMPORT R8 K13 [UDim2.new]
  LOADK R9 K11 [0.5]
  LOADN R10 0
  LOADK R11 K11 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Position"]
  MOVE R8 R2
  JUMPIF R8 [+6]
  GETIMPORT R8 K16 [Color3.fromRGB]
  LOADN R9 184
  LOADN R10 184
  LOADN R11 184
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Color"]
  SETTABLEKS R0 R7 K4 ["Image"]
  MOVE R8 R3
  JUMPIF R8 [+7]
  GETIMPORT R8 K13 [UDim2.new]
  LOADK R9 K17 [0.6]
  LOADN R10 0
  LOADK R11 K17 [0.6]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K5 ["Size"]
  GETIMPORT R8 K20 [Enum.ScaleType.Fit]
  SETTABLEKS R8 R7 K6 ["ScaleType"]
  NEWTABLE R8 4 0
  GETUPVAL R9 1
  SETTABLEKS R9 R8 K21 ["Foreground"]
  SETTABLEKS R7 R8 K22 ["ForegroundStyle"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K23 ["Hover"]
  DUPTABLE R10 K24 [{"ForegroundStyle"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K25 ["Dictionary"]
  GETTABLEKS R11 R12 K26 ["join"]
  MOVE R12 R7
  DUPTABLE R13 K27 [{"Image", "Color"}]
  SETTABLEKS R1 R13 K4 ["Image"]
  SETTABLEKS R6 R13 K3 ["Color"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["ForegroundStyle"]
  SETTABLE R10 R8 R9
  RETURN R8 1

PROTO_1:
  MOVE R2 R1
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  MOVE R1 R2
  LOADNIL R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["join"]
  GETUPVAL R4 2
  NEWTABLE R5 128 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["Toolbox_PublishAssetBackground"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K3 ["Slate"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["Toolbox_AssetOutlineBackground"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["Toolbox_AssetOutlineBoarderColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K10 ["#121212"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K11 ["Toolbox_AssetOutlineTransparency"]
  LOADN R7 0
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 12
  LOADN R9 43
  LOADN R10 89
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["Toolbox_AssetDropdownSize"]
  LOADN R7 8
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K16 ["Toolbox_AssetBorderSize"]
  LOADN R7 0
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K17 ["Toolbox_AssetBackgroundColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 41
  LOADN R9 41
  LOADN R10 41
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K18 ["Toolbox_AssetBackgroundImage"]
  LOADK R7 K19 [""]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K20 ["Toolbox_AssetNameColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 60
  LOADN R9 180
  LOADN R10 255
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K21 ["Toolbox_AssetIconColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 178
  LOADN R9 178
  LOADN R10 178
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K22 ["Toolbox_AssetWarningIcon"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K23 ["#F8A544"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K24 ["Toolbox_CreatorLabelTextColor"]
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K25 ["#FAFAFA"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K27 ["#D9D9D9"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K28 ["Toolbox_CreatorPillBackgroundColor"]
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K29 ["Toolbox_DialogErrorIcon"]
  LOADK R7 K30 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/DialogError.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K31 ["Toolbox_ItemRowBackgroundColorEven"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K32 ["#222222"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K33 ["Toolbox_ItemRowBackgroundColorOdd"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K34 ["#2C2C2C"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K35 ["Toolbox_ItemRowBorderColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K36 ["#024897"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K37 ["Toolbox_ItemRowHeaderTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K38 ["#989898"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K39 ["Toolbox_ItemRowTitleTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K40 ["#52ADF4"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K41 ["Toolbox_ItemRowTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K43 ["Toolbox_AudioPlayerBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K44 ["#171717"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K45 ["Toolbox_AudioPlayerProgressBarColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K46 ["#0077D6"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K47 ["Toolbox_AudioPlayerIndicatorColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K48 ["#555555"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K49 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K48 ["#555555"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K50 ["Toolbox_AudioTabSelectedTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K51 ["Toolbox_DeleteIconColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 136
  LOADN R9 136
  LOADN R10 136
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K52 ["Toolbox_DropdownItemSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K53 ["Blue_Dark"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K54 ["Toolbox_DropdownIconColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K55 ["Toolbox_FontTileBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K56 ["#292929"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K57 ["Toolbox_FontTileHoveredBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K58 ["Toolbox_FontTileTextFillColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K59 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K60 ["Toolbox_HorizontalLineColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 34
  LOADN R9 34
  LOADN R10 34
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K61 ["Toolbox_NavigationLinkTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K62 ["Toolbox_NavigationLinkTextColorHover"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K63 ["#AAAAAA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K64 ["Toolbox_PackageBackgroundColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K65 ["Black"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K66 ["Toolbox_PackageBackgroundTransparency"]
  LOADK R7 K67 [0.5]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K68 ["Toolbox_PackageImage"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K69 ["PACKAGE_DARK"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K70 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 41
  LOADN R9 41
  LOADN R10 41
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K71 ["ScrollingFrameImageColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 85
  LOADN R9 85
  LOADN R10 85
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K72 ["Toolbox_SearchTagBackgroundColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 56
  LOADN R9 56
  LOADN R10 56
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K73 ["Toolbox_SearchPillTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K25 ["#FAFAFA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K74 ["Toolbox_SearchPillBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K75 ["Toolbox_SearchPillBackgroundColorHovered"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K76 ["#565656"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K77 ["Toolbox_TabTopBorderColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K78 ["Blue"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K79 ["Toolbox_TabSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K80 ["Toolbox_IconTileGradientColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K65 ["Black"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K81 ["Toolbox_HomeviewBackgroundColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K3 ["Slate"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K82 ["Toolbox_SearchOptionButtonHover"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K83 ["Toolbox_RateTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K84 ["#BDBEBE"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K85 ["Toolbox_VoteCountColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K63 ["#AAAAAA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K86 ["Toolbox_LowConfidencePercentageColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K87 ["#CCCCCC"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K88 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K59 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K89 ["Toolbox_VotingButtonImage"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K90 ["THUMB_UP_WHITE"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K91 ["Toolbox_SearchIconColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 225
  LOADN R9 225
  LOADN R10 225
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K92 ["Toolbox_ClearButtonColor"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K93 ["SecondaryMain"]
  GETTABLEKS R7 R8 K94 ["Dark"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K95 ["AssetConfig_DividerHorizontalLineColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K96 ["Carbon"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K97 ["AssetConfig_PreviewSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K98 ["AssetConfig_SidetabSelectedBarColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 11
  LOADN R9 90
  LOADN R10 175
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K99 ["AssetConfig_SidetabSelectedBarTransparency"]
  LOADN R7 0
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K100 ["AssetConfig_SidetabSelectedBarZIndex"]
  LOADN R7 255
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K101 ["AssetConfig_SidetabSelectedIndicatorZindex"]
  LOADN R7 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K102 ["AssetConfig_UploadResultButtonColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 136
  LOADN R9 136
  LOADN R10 136
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K103 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 102
  LOADN R9 102
  LOADN R10 102
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K104 ["AssetConfig_DistributionQuotaTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["White"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  GETUPVAL R5 7
  NEWTABLE R6 128 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["Toolbox_PublishAssetBackground"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["Slate"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["Toolbox_AssetOutlineBackground"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K42 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Toolbox_AssetOutlineBoarderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K38 ["#989898"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["Toolbox_AssetOutlineTransparency"]
  LOADK R8 K105 [0.08]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 229
  LOADN R10 243
  LOADN R11 255
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K15 ["Toolbox_AssetDropdownSize"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K16 ["Toolbox_AssetBorderSize"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K17 ["Toolbox_AssetBackgroundColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 225
  LOADN R10 225
  LOADN R11 225
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["Toolbox_AssetBackgroundImage"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K106 ["NO_BACKGROUND_ICON"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K20 ["Toolbox_AssetNameColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K107 ["#0B5AAF"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K21 ["Toolbox_AssetIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 170
  LOADN R10 170
  LOADN R11 170
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K22 ["Toolbox_AssetWarningIcon"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K108 ["#BC6600"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K43 ["Toolbox_AudioPlayerBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K109 ["#E1E1E1"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K45 ["Toolbox_AudioPlayerProgressBarColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K46 ["#0077D6"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K47 ["Toolbox_AudioPlayerIndicatorColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K110 ["#CBCBCB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K32 ["#222222"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K29 ["Toolbox_DialogErrorIcon"]
  LOADK R8 K111 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/DialogError.png"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K24 ["Toolbox_CreatorLabelTextColor"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K112 ["#191919"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K110 ["#CBCBCB"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K28 ["Toolbox_CreatorPillBackgroundColor"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K109 ["#E1E1E1"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K31 ["Toolbox_ItemRowBackgroundColorEven"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K113 ["#EDEDED"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K33 ["Toolbox_ItemRowBackgroundColorOdd"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K25 ["#FAFAFA"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K35 ["Toolbox_ItemRowBorderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K114 ["#3DB3FF"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K37 ["Toolbox_ItemRowHeaderTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K8 ["#3B3B3B"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K39 ["Toolbox_ItemRowTitleTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K115 ["#0055AC"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K41 ["Toolbox_ItemRowTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K44 ["#171717"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K50 ["Toolbox_AudioTabSelectedTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K25 ["#FAFAFA"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K51 ["Toolbox_DeleteIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 184
  LOADN R10 184
  LOADN R11 184
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K52 ["Toolbox_DropdownItemSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K116 ["Blue_Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K54 ["Toolbox_DropdownIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 25
  LOADN R10 25
  LOADN R11 25
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K55 ["Toolbox_FontTileBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K59 ["#FFFFFF"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K57 ["Toolbox_FontTileHoveredBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K117 ["#E3F0FB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K58 ["Toolbox_FontTileTextFillColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K118 ["#393B3D"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K60 ["Toolbox_HorizontalLineColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 227
  LOADN R10 227
  LOADN R11 227
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K61 ["Toolbox_NavigationLinkTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K10 ["#121212"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K62 ["Toolbox_NavigationLinkTextColorHover"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K119 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K64 ["Toolbox_PackageBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K42 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K66 ["Toolbox_PackageBackgroundTransparency"]
  LOADK R8 K120 [0.25]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K68 ["Toolbox_PackageImage"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K121 ["PACKAGE_LIGHT"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K70 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 245
  LOADN R10 245
  LOADN R11 245
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K71 ["ScrollingFrameImageColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 245
  LOADN R10 245
  LOADN R11 245
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K72 ["Toolbox_SearchTagBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K122 ["Gray_Lighter"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K73 ["Toolbox_SearchPillTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K112 ["#191919"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K74 ["Toolbox_SearchPillBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K109 ["#E1E1E1"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K75 ["Toolbox_SearchPillBackgroundColorHovered"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K110 ["#CBCBCB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K77 ["Toolbox_TabTopBorderColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 182
  LOADN R10 182
  LOADN R11 182
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K79 ["Toolbox_TabSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K78 ["Blue"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K80 ["Toolbox_IconTileGradientColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K123 ["Gray_Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K81 ["Toolbox_HomeviewBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K42 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K82 ["Toolbox_SearchOptionButtonHover"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K65 ["Black"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K83 ["Toolbox_RateTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K8 ["#3B3B3B"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K85 ["Toolbox_VoteCountColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K119 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K86 ["Toolbox_LowConfidencePercentageColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K119 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K88 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K124 ["#000000"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K89 ["Toolbox_VotingButtonImage"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K125 ["THUMB_UP_DARK_GRAY"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K91 ["Toolbox_SearchIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 94
  LOADN R10 94
  LOADN R11 94
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K92 ["Toolbox_ClearButtonColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K93 ["SecondaryMain"]
  GETTABLEKS R8 R9 K126 ["Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K95 ["AssetConfig_DividerHorizontalLineColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 227
  LOADN R10 227
  LOADN R11 227
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K97 ["AssetConfig_PreviewSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K78 ["Blue"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K98 ["AssetConfig_SidetabSelectedBarColor"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K127 ["GRAY_1"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K99 ["AssetConfig_SidetabSelectedBarTransparency"]
  LOADK R8 K128 [0.9]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K100 ["AssetConfig_SidetabSelectedBarZIndex"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K101 ["AssetConfig_SidetabSelectedIndicatorZindex"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K102 ["AssetConfig_UploadResultButtonColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K65 ["Black"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K103 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 151
  LOADN R10 151
  LOADN R11 151
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K104 ["AssetConfig_DistributionQuotaTextColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K65 ["Black"]
  SETTABLE R8 R6 R7
  CALL R4 2 1
  GETUPVAL R5 9
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K129 ["mock"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  MOVE R2 R5
  JUMP [+6]
  GETTABLEKS R5 R1 K130 ["new"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  MOVE R2 R5
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K22 ["Toolbox_AssetWarningIcon"]
  NEWTABLE R8 64 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K131 ["InputFieldBackground"]
  SETTABLEKS R9 R8 K132 ["backgroundColor"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R9 R8 K134 ["progressBarColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K60 ["Toolbox_HorizontalLineColor"]
  SETTABLEKS R9 R8 K135 ["horizontalLineColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K136 ["LinkText"]
  SETTABLEKS R9 R8 K137 ["link"]
  GETIMPORT R9 K14 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 68
  LOADN R12 68
  CALL R9 3 1
  SETTABLEKS R9 R8 K138 ["redText"]
  LOADN R9 10
  SETTABLEKS R9 R8 K139 ["spacingUnit"]
  DUPTABLE R9 K145 [{"backgroundColor", "closeIconColor", "descriptionColor", "headerTextColor", "overlayColor", "overlayTransparency"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K146 ["MainBackground"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K42 ["White"]
  SETTABLEKS R10 R9 K140 ["closeIconColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K147 ["TextPrimary"]
  SETTABLEKS R10 R9 K141 ["descriptionColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K148 ["BrightText"]
  SETTABLEKS R10 R9 K142 ["headerTextColor"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K65 ["Black"]
  SETTABLEKS R10 R9 K143 ["overlayColor"]
  LOADK R10 K149 [0.4]
  SETTABLEKS R10 R9 K144 ["overlayTransparency"]
  SETTABLEKS R9 R8 K150 ["announcementDialog"]
  DUPTABLE R9 K161 [{"assetName", "background", "dropShadowSize", "icon", "outline", "textColor", "strokeThickness", "strokeColor", "voting", "packages"}]
  DUPTABLE R10 K162 [{"textColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K20 ["Toolbox_AssetNameColor"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  SETTABLEKS R10 R9 K151 ["assetName"]
  DUPTABLE R10 K166 [{"color", "borderSize", "image"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["Toolbox_AssetBackgroundColor"]
  SETTABLEKS R11 R10 K163 ["color"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["Toolbox_AssetBorderSize"]
  SETTABLEKS R11 R10 K164 ["borderSize"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K18 ["Toolbox_AssetBackgroundImage"]
  SETTABLEKS R11 R10 K165 ["image"]
  SETTABLEKS R10 R9 K152 ["background"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["Toolbox_AssetDropdownSize"]
  SETTABLEKS R10 R9 K153 ["dropShadowSize"]
  DUPTABLE R10 K170 [{"borderColor", "buttonColor", "warningColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K171 ["ItemHovered"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K21 ["Toolbox_AssetIconColor"]
  SETTABLEKS R11 R10 K168 ["buttonColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K22 ["Toolbox_AssetWarningIcon"]
  SETTABLEKS R11 R10 K169 ["warningColor"]
  SETTABLEKS R10 R9 K154 ["icon"]
  DUPTABLE R10 K174 [{"backgroundColor", "verifiedBackgroundColor", "borderColor", "transparency"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K4 ["Toolbox_AssetOutlineBackground"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
  SETTABLEKS R11 R10 K172 ["verifiedBackgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["Toolbox_AssetOutlineBoarderColor"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K11 ["Toolbox_AssetOutlineTransparency"]
  SETTABLEKS R11 R10 K173 ["transparency"]
  SETTABLEKS R10 R9 K155 ["outline"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  LOADN R10 3
  SETTABLEKS R10 R9 K157 ["strokeThickness"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K158 ["strokeColor"]
  DUPTABLE R10 K186 [{"downVotes", "upVotes", "textColor", "votedDownThumb", "votedUpThumb", "voteThumb", "rateTextColor", "voteCountColor", "lowConfidencePercentageColor", "votingButtonsBackgroundBoxColor", "votingButtonImage"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 206
  LOADN R13 100
  LOADN R14 91
  CALL R11 3 1
  SETTABLEKS R11 R10 K176 ["downVotes"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 82
  LOADN R13 168
  LOADN R14 70
  CALL R11 3 1
  SETTABLEKS R11 R10 K177 ["upVotes"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K187 ["SubText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 216
  LOADN R13 104
  LOADN R14 104
  CALL R11 3 1
  SETTABLEKS R11 R10 K178 ["votedDownThumb"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 178
  LOADN R14 89
  CALL R11 3 1
  SETTABLEKS R11 R10 K179 ["votedUpThumb"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 117
  LOADN R13 117
  LOADN R14 117
  CALL R11 3 1
  SETTABLEKS R11 R10 K180 ["voteThumb"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K83 ["Toolbox_RateTextColor"]
  SETTABLEKS R11 R10 K181 ["rateTextColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K85 ["Toolbox_VoteCountColor"]
  SETTABLEKS R11 R10 K182 ["voteCountColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K86 ["Toolbox_LowConfidencePercentageColor"]
  SETTABLEKS R11 R10 K183 ["lowConfidencePercentageColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K88 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  SETTABLEKS R11 R10 K184 ["votingButtonsBackgroundBoxColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K89 ["Toolbox_VotingButtonImage"]
  SETTABLEKS R11 R10 K185 ["votingButtonImage"]
  SETTABLEKS R10 R9 K159 ["voting"]
  DUPTABLE R10 K190 [{"backgroundColor", "backgroundTransparency", "packageImage"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K64 ["Toolbox_PackageBackgroundColor"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K66 ["Toolbox_PackageBackgroundTransparency"]
  SETTABLEKS R11 R10 K188 ["backgroundTransparency"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K68 ["Toolbox_PackageImage"]
  SETTABLEKS R11 R10 K189 ["packageImage"]
  SETTABLEKS R10 R9 K160 ["packages"]
  SETTABLEKS R9 R8 K191 ["asset"]
  DUPTABLE R9 K193 [{"labelTextColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K194 ["DimmedText"]
  SETTABLEKS R10 R9 K192 ["labelTextColor"]
  SETTABLEKS R9 R8 K195 ["assetConfig"]
  DUPTABLE R9 K198 [{"backgroundColor", "progressBarColor", "indicatorColor", "indicatorBorderColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K43 ["Toolbox_AudioPlayerBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K45 ["Toolbox_AudioPlayerProgressBarColor"]
  SETTABLEKS R10 R9 K134 ["progressBarColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K47 ["Toolbox_AudioPlayerIndicatorColor"]
  SETTABLEKS R10 R9 K196 ["indicatorColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K49 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  SETTABLEKS R10 R9 K197 ["indicatorBorderColor"]
  SETTABLEKS R9 R8 K199 ["audioPlayer"]
  DUPTABLE R9 K203 [{"backgroundButtonColor", "selectedButtonColor", "selectedTextColor", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K43 ["Toolbox_AudioPlayerBackgroundColor"]
  SETTABLEKS R10 R9 K200 ["backgroundButtonColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K46 ["#0077D6"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K201 ["selectedButtonColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K50 ["Toolbox_AudioTabSelectedTextColor"]
  SETTABLEKS R10 R9 K202 ["selectedTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K204 ["TextSecondary"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  SETTABLEKS R9 R8 K205 ["audioTabs"]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  DUPTABLE R9 K209 [{"spacingUnit", "textSize", "font", "thumbnailBackgroundColor", "textColor"}]
  LOADN R10 10
  SETTABLEKS R10 R9 K139 ["spacingUnit"]
  LOADN R10 18
  SETTABLEKS R10 R9 K206 ["textSize"]
  GETIMPORT R10 K213 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K207 ["font"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
  SETTABLEKS R10 R9 K208 ["thumbnailBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K24 ["Toolbox_CreatorLabelTextColor"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K214 ["creatorLabel"]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+10]
  DUPTABLE R9 K215 [{"spacingUnit", "backgroundColor"}]
  LOADN R10 10
  SETTABLEKS R10 R9 K139 ["spacingUnit"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K28 ["Toolbox_CreatorPillBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K216 ["creatorPill"]
  DUPTABLE R9 K162 [{"textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  SETTABLEKS R9 R8 K217 ["creatorName"]
  DUPTABLE R9 K219 [{"errorIcon"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K29 ["Toolbox_DialogErrorIcon"]
  SETTABLEKS R10 R9 K218 ["errorIcon"]
  SETTABLEKS R9 R8 K220 ["dialog"]
  DUPTABLE R9 K225 [{"dropdownIconColor", "currentSelection", "item", "dropdownFrame"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K54 ["Toolbox_DropdownIconColor"]
  SETTABLEKS R10 R9 K221 ["dropdownIconColor"]
  DUPTABLE R10 K230 [{"backgroundColor", "backgroundSelectedColor", "backgroundDisabledColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K231 ["Dropdown"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K226 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K227 ["backgroundDisabledColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K228 ["borderSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K234 ["MainTextSelected"]
  SETTABLEKS R11 R10 K229 ["textSelectedColor"]
  SETTABLEKS R10 R9 K222 ["currentSelection"]
  DUPTABLE R10 K236 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Item"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K52 ["Toolbox_DropdownItemSelectedColor"]
  SETTABLEKS R11 R10 K226 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K235 ["selectedBarColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K194 ["DimmedText"]
  SETTABLEKS R11 R10 K192 ["labelTextColor"]
  SETTABLEKS R10 R9 K223 ["item"]
  DUPTABLE R10 K238 [{"borderColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  SETTABLEKS R10 R9 K224 ["dropdownFrame"]
  SETTABLEKS R9 R8 K239 ["dropdownMenu"]
  DUPTABLE R9 K242 [{"backgroundColor", "hoveredBackgroundColor", "textFillColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K55 ["Toolbox_FontTileBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K57 ["Toolbox_FontTileHoveredBackgroundColor"]
  SETTABLEKS R10 R9 K240 ["hoveredBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K58 ["Toolbox_FontTileTextFillColor"]
  SETTABLEKS R10 R9 K241 ["textFillColor"]
  SETTABLEKS R9 R8 K243 ["fontTile"]
  DUPTABLE R9 K245 [{"backgroundColor", "borderColor", "labelTextColor", "button"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K246 ["Titlebar"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K192 ["labelTextColor"]
  DUPTABLE R10 K247 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K231 ["Dropdown"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K226 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K228 ["borderSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K234 ["MainTextSelected"]
  SETTABLEKS R11 R10 K229 ["textSelectedColor"]
  SETTABLEKS R10 R9 K244 ["button"]
  SETTABLEKS R9 R8 K248 ["footer"]
  DUPTABLE R9 K250 [{"backgroundColor", "borderColor", "iconColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K246 ["Titlebar"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 10
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K251 ["GRAY_2"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K249 ["iconColor"]
  SETTABLEKS R9 R8 K252 ["header"]
  DUPTABLE R9 K253 [{"backgroundColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K81 ["Toolbox_HomeviewBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  SETTABLEKS R9 R8 K254 ["homeView"]
  DUPTABLE R9 K259 [{"font", "gradientColor", "overlayColor", "overlayTransparency", "padding", "spacing", "textColor", "textColorHovered", "textSize"}]
  GETIMPORT R10 K261 [Enum.Font.SourceSansBold]
  SETTABLEKS R10 R9 K207 ["font"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K80 ["Toolbox_IconTileGradientColor"]
  SETTABLEKS R10 R9 K255 ["gradientColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K6 ["fromHex"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K143 ["overlayColor"]
  LOADK R10 K7 [Color3.fromHex]
  SETTABLEKS R10 R9 K144 ["overlayTransparency"]
  LOADN R10 8
  SETTABLEKS R10 R9 K256 ["padding"]
  LOADN R10 16
  SETTABLEKS R10 R9 K257 ["spacing"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K109 ["#E1E1E1"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K156 ["textColor"]
  LOADNIL R10
  SETTABLEKS R10 R9 K258 ["textColorHovered"]
  LOADN R10 16
  SETTABLEKS R10 R9 K206 ["textSize"]
  SETTABLEKS R9 R8 K264 ["iconTile"]
  DUPTABLE R9 K265 [{"backgroundColor", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K246 ["Titlebar"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  SETTABLEKS R9 R8 K266 ["infoBanner"]
  DUPTABLE R9 K275 [{"backgroundColorEven", "backgroundColorOdd", "borderColor", "headerTextColor", "titleTextColor", "primaryIconColor", "textColor", "textSize", "playButtonColor", "pauseButtonColor", "insertButtonColor", "insertButtonTextColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K31 ["Toolbox_ItemRowBackgroundColorEven"]
  SETTABLEKS R10 R9 K267 ["backgroundColorEven"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K33 ["Toolbox_ItemRowBackgroundColorOdd"]
  SETTABLEKS R10 R9 K268 ["backgroundColorOdd"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K35 ["Toolbox_ItemRowBorderColor"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K37 ["Toolbox_ItemRowHeaderTextColor"]
  SETTABLEKS R10 R9 K142 ["headerTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K39 ["Toolbox_ItemRowTitleTextColor"]
  SETTABLEKS R10 R9 K269 ["titleTextColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K20 ["Toolbox_AssetNameColor"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K270 ["primaryIconColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  LOADN R10 16
  SETTABLEKS R10 R9 K206 ["textSize"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K277 ["BLACK"]
  SETTABLEKS R10 R9 K271 ["playButtonColor"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K272 ["pauseButtonColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K46 ["#0077D6"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K273 ["insertButtonColor"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K278 ["WHITE"]
  SETTABLEKS R10 R9 K274 ["insertButtonTextColor"]
  SETTABLEKS R9 R8 K279 ["itemRow"]
  DUPTABLE R9 K162 [{"textColor"}]
  GETIMPORT R10 K14 [Color3.fromRGB]
  LOADN R11 0
  LOADN R12 162
  LOADN R13 255
  CALL R10 3 1
  SETTABLEKS R10 R9 K156 ["textColor"]
  SETTABLEKS R9 R8 K280 ["linkButton"]
  DUPTABLE R9 K282 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K146 ["MainBackground"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K281 ["informativeTextColor"]
  DUPTABLE R10 K283 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K234 ["MainTextSelected"]
  SETTABLEKS R11 R10 K229 ["textSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K146 ["MainBackground"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K226 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K232 ["CurrentMarker"]
  SETTABLEKS R11 R10 K228 ["borderSelectedColor"]
  SETTABLEKS R10 R9 K244 ["button"]
  SETTABLEKS R9 R8 K284 ["messageBox"]
  DUPTABLE R9 K287 [{"promptText", "balanceText"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K285 ["promptText"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K194 ["DimmedText"]
  SETTABLEKS R10 R9 K286 ["balanceText"]
  SETTABLEKS R9 R8 K288 ["purchaseDialog"]
  DUPTABLE R9 K294 [{"backgroundColor", "distributionQuotaTextColor", "titleTextColor", "textColor", "quotaTextColor", "verifyTextColor", "warningIconColor", "additionalImagesThumbnailSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K2 ["Toolbox_PublishAssetBackground"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K104 ["AssetConfig_DistributionQuotaTextColor"]
  SETTABLEKS R10 R9 K289 ["distributionQuotaTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K269 ["titleTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K148 ["BrightText"]
  SETTABLEKS R10 R9 K290 ["quotaTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K204 ["TextSecondary"]
  SETTABLEKS R10 R9 K291 ["verifyTextColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K39 ["Toolbox_ItemRowTitleTextColor"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K292 ["warningIconColor"]
  GETIMPORT R10 K297 [UDim2.new]
  LOADN R11 0
  LOADN R12 185
  LOADN R13 0
  LOADN R14 104
  CALL R10 4 1
  SETTABLEKS R10 R9 K293 ["additionalImagesThumbnailSize"]
  SETTABLEKS R9 R8 K298 ["publishAsset"]
  DUPTABLE R9 K305 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K231 ["Dropdown"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K131 ["InputFieldBackground"]
  SETTABLEKS R10 R9 K299 ["liveBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K232 ["CurrentMarker"]
  SETTABLEKS R10 R9 K300 ["borderHoveredColor"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K228 ["borderSelectedColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K194 ["DimmedText"]
  SETTABLEKS R10 R9 K301 ["placeholderTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K302 ["divideLineColor"]
  DUPTABLE R10 K308 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K306 ["imageColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K307 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K303 ["searchButton"]
  DUPTABLE R10 K308 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K306 ["imageColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K307 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K304 ["clearButton"]
  SETTABLEKS R9 R8 K309 ["searchBar"]
  DUPTABLE R9 K312 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K70 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R10 R9 K310 ["scrollbarBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K71 ["ScrollingFrameImageColor"]
  SETTABLEKS R10 R9 K311 ["scrollbarImageColor"]
  SETTABLEKS R9 R8 K313 ["scrollingFrame"]
  DUPTABLE R9 K316 [{"labelTextColor", "textColor", "textHoveredColor", "underlineColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K192 ["labelTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K187 ["SubText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K136 ["LinkText"]
  SETTABLEKS R10 R9 K314 ["textHoveredColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K136 ["LinkText"]
  SETTABLEKS R10 R9 K315 ["underlineColor"]
  SETTABLEKS R9 R8 K317 ["suggestionsComponent"]
  DUPTABLE R9 K324 [{"background", "border", "headerTextColor", "imageColor", "imageHoveredColor", "imageSelectedColor", "warningIconColor", "audioSearch", "timeTextBox", "applyButton", "cancelButton"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K146 ["MainBackground"]
  SETTABLEKS R10 R9 K152 ["background"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K318 ["border"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K175 ["MainText"]
  SETTABLEKS R10 R9 K142 ["headerTextColor"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K251 ["GRAY_2"]
  SETTABLEKS R10 R9 K306 ["imageColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K82 ["Toolbox_SearchOptionButtonHover"]
  SETTABLEKS R10 R9 K319 ["imageHoveredColor"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K307 ["imageSelectedColor"]
  SETTABLEKS R5 R9 K292 ["warningIconColor"]
  DUPTABLE R10 K162 [{"textColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  SETTABLEKS R10 R9 K320 ["audioSearch"]
  DUPTABLE R10 K326 [{"borderColor", "backgroundColor", "selectedBorderColor", "textColor", "placeholderTextColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K131 ["InputFieldBackground"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 8
  GETTABLEKS R11 R12 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R11 R10 K325 ["selectedBorderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K194 ["DimmedText"]
  SETTABLEKS R11 R10 K301 ["placeholderTextColor"]
  SETTABLEKS R10 R9 K321 ["timeTextBox"]
  GETUPVAL R11 11
  CALL R11 0 1
  JUMPIF R11 [+17]
  DUPTABLE R10 K327 [{"textColor", "backgroundColor", "borderColor"}]
  GETUPVAL R12 8
  GETTABLEKS R11 R12 K278 ["WHITE"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 8
  GETTABLEKS R11 R12 K133 ["BLUE_PRIMARY"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K146 ["MainBackground"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K322 ["applyButton"]
  GETUPVAL R11 11
  CALL R11 0 1
  JUMPIF R11 [+17]
  DUPTABLE R10 K327 [{"textColor", "backgroundColor", "borderColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K175 ["MainText"]
  SETTABLEKS R11 R10 K156 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K328 ["Button"]
  SETTABLEKS R11 R10 K132 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K233 ["Border"]
  SETTABLEKS R11 R10 K167 ["borderColor"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K323 ["cancelButton"]
  SETTABLEKS R9 R8 K329 ["searchOptions"]
  DUPTABLE R9 K331 [{"buttonSpacing"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K330 ["buttonSpacing"]
  SETTABLEKS R9 R8 K332 ["searchList"]
  DUPTABLE R9 K334 [{"backgroundColor", "backgroundColorHovered", "font", "padding", "textSize", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K74 ["Toolbox_SearchPillBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K75 ["Toolbox_SearchPillBackgroundColorHovered"]
  SETTABLEKS R10 R9 K333 ["backgroundColorHovered"]
  GETIMPORT R10 K213 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K207 ["font"]
  DUPTABLE R10 K339 [{"top", "bottom", "left", "right"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K335 ["top"]
  LOADN R11 6
  SETTABLEKS R11 R10 K336 ["bottom"]
  LOADN R11 10
  SETTABLEKS R11 R10 K337 ["left"]
  LOADN R11 10
  SETTABLEKS R11 R10 K338 ["right"]
  SETTABLEKS R10 R9 K256 ["padding"]
  LOADN R10 18
  SETTABLEKS R10 R9 K206 ["textSize"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K73 ["Toolbox_SearchPillTextColor"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  SETTABLEKS R9 R8 K340 ["searchPill"]
  DUPTABLE R9 K342 [{"backgroundColor", "borderColor", "textColor", "clearAllText"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K72 ["Toolbox_SearchTagBackgroundColor"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K148 ["BrightText"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K136 ["LinkText"]
  SETTABLEKS R10 R9 K341 ["clearAllText"]
  SETTABLEKS R9 R8 K343 ["searchTag"]
  DUPTABLE R9 K344 [{"textColor", "font", "textSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K61 ["Toolbox_NavigationLinkTextColor"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETIMPORT R10 K261 [Enum.Font.SourceSansBold]
  SETTABLEKS R10 R9 K207 ["font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K206 ["textSize"]
  SETTABLEKS R9 R8 K345 ["sectionHeader"]
  DUPTABLE R9 K347 [{"textColor", "hoverTextColor", "font", "textSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K61 ["Toolbox_NavigationLinkTextColor"]
  SETTABLEKS R10 R9 K156 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K62 ["Toolbox_NavigationLinkTextColorHover"]
  SETTABLEKS R10 R9 K346 ["hoverTextColor"]
  GETIMPORT R10 K213 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K207 ["font"]
  LOADN R10 16
  SETTABLEKS R10 R9 K206 ["textSize"]
  SETTABLEKS R9 R8 K348 ["sectionHeaderNavLink"]
  DUPTABLE R9 K354 [{"backgroundColor", "borderColor", "topBorderColor", "tabBackground", "disabledColor", "contentColor", "selectedColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K146 ["MainBackground"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K167 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K77 ["Toolbox_TabTopBorderColor"]
  SETTABLEKS R10 R9 K349 ["topBorderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K246 ["Titlebar"]
  SETTABLEKS R10 R9 K350 ["tabBackground"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K233 ["Border"]
  SETTABLEKS R10 R9 K351 ["disabledColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K355 ["TitlebarText"]
  SETTABLEKS R10 R9 K352 ["contentColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K79 ["Toolbox_TabSelectedColor"]
  SETTABLEKS R10 R9 K353 ["selectedColor"]
  SETTABLEKS R9 R8 K356 ["tabSet"]
  DUPTABLE R9 K361 [{"buttonHeight", "buttonWidth", "verticalTextSpacing", "verticalListPadding"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K357 ["buttonHeight"]
  LOADN R10 40
  SETTABLEKS R10 R9 K358 ["buttonWidth"]
  LOADN R10 4
  SETTABLEKS R10 R9 K359 ["verticalTextSpacing"]
  LOADN R10 16
  SETTABLEKS R10 R9 K360 ["verticalListPadding"]
  SETTABLEKS R9 R8 K362 ["toggle"]
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K136 ["LinkText"]
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K136 ["LinkText"]
  CALL R11 1 1
  NEWTABLE R12 4 0
  DUPTABLE R13 K366 [{"TextSize", "TextColor", "ShowUnderline"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K363 ["TextSize"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K187 ["SubText"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K365 ["ShowUnderline"]
  SETTABLEKS R13 R12 K367 ["&ToolboxItemRowLink"]
  DUPTABLE R13 K368 [{"TextColor", "ShowUnderline"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K41 ["Toolbox_ItemRowTextColor"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K365 ["ShowUnderline"]
  SETTABLEKS R13 R12 K369 ["&ToolboxItemRowInnerLink"]
  DUPTABLE R13 K366 [{"TextSize", "TextColor", "ShowUnderline"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K363 ["TextSize"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K39 ["Toolbox_ItemRowTitleTextColor"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K365 ["ShowUnderline"]
  SETTABLEKS R13 R12 K370 ["&ToolboxItemRowTitle"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K371 ["SearchBar"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K115 ["#0055AC"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K378 [{"Padding", "SearchIcon", "IconColor", "IconWidth", "IconOffset", "Buttons"}]
  DUPTABLE R14 K383 [{"Top", "Left", "Bottom", "Right"}]
  LOADN R15 255
  SETTABLEKS R15 R14 K379 ["Top"]
  LOADN R15 0
  SETTABLEKS R15 R14 K380 ["Left"]
  LOADN R15 0
  SETTABLEKS R15 R14 K381 ["Bottom"]
  LOADN R15 0
  SETTABLEKS R15 R14 K382 ["Right"]
  SETTABLEKS R14 R13 K372 ["Padding"]
  LOADK R14 K128 [0.9]
  SETTABLEKS R14 R13 K373 ["SearchIcon"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K91 ["Toolbox_SearchIconColor"]
  SETTABLEKS R14 R13 K374 ["IconColor"]
  LOADN R14 16
  SETTABLEKS R14 R13 K375 ["IconWidth"]
  LOADN R14 8
  SETTABLEKS R14 R13 K376 ["IconOffset"]
  DUPTABLE R14 K388 [{"Clear", "Filter", "FilterHighlighted"}]
  GETUPVAL R15 15
  LOADK R16 K133 ["BLUE_PRIMARY"]
  LOADK R17 K134 ["progressBarColor"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K93 ["SecondaryMain"]
  GETIMPORT R19 K392 [UDim2.fromOffset]
  LOADN R20 11
  LOADN R21 11
  CALL R19 2 1
  LOADNIL R20
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K393 ["SecondaryContrast"]
  CALL R15 6 1
  SETTABLEKS R15 R14 K385 ["Clear"]
  GETUPVAL R15 15
  LOADK R16 K138 ["redText"]
  LOADNIL R17
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K91 ["Toolbox_SearchIconColor"]
  GETIMPORT R19 K392 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K386 ["Filter"]
  GETUPVAL R15 15
  LOADK R16 K138 ["redText"]
  LOADNIL R17
  GETIMPORT R18 K14 [Color3.fromRGB]
  LOADN R19 0
  LOADN R20 162
  LOADN R21 255
  CALL R18 3 1
  GETIMPORT R19 K392 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K387 ["FilterHighlighted"]
  SETTABLEKS R14 R13 K377 ["Buttons"]
  SETTABLEKS R13 R12 K395 ["&ToolboxSearchBar"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 16
  CALL R10 0 1
  JUMPIFNOT R10 [+12]
  DUPTABLE R9 K397 [{"backgroundColor", "hoverColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K93 ["SecondaryMain"]
  SETTABLEKS R10 R9 K132 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K393 ["SecondaryContrast"]
  SETTABLEKS R10 R9 K396 ["hoverColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K398 ["recentSearchesCloseButton"]
  DUPTABLE R9 K399 [{"Top", "Bottom", "Right", "Left"}]
  LOADN R10 8
  SETTABLEKS R10 R9 K379 ["Top"]
  LOADN R10 0
  SETTABLEKS R10 R9 K381 ["Bottom"]
  LOADN R10 8
  SETTABLEKS R10 R9 K382 ["Right"]
  LOADN R10 8
  SETTABLEKS R10 R9 K380 ["Left"]
  SETTABLEKS R9 R8 K400 ["wideIconButtonPadding"]
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K328 ["Button"]
  GETUPVAL R11 16
  CALL R11 0 1
  JUMPIFNOT R11 [+37]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K72 ["Toolbox_SearchTagBackgroundColor"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  NEWTABLE R13 2 0
  DUPTABLE R14 K402 [{"Color"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K403 ["ForegroundMain"]
  SETTABLEKS R15 R14 K401 ["Color"]
  SETTABLEKS R14 R13 K404 ["BackgroundStyle"]
  GETUPVAL R15 17
  GETTABLEKS R14 R15 K405 ["Hover"]
  DUPTABLE R15 K406 [{"BackgroundStyle"}]
  DUPTABLE R16 K402 [{"Color"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K407 ["ActionHover"]
  SETTABLEKS R17 R16 K401 ["Color"]
  SETTABLEKS R16 R15 K404 ["BackgroundStyle"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K408 ["&ToolboxRecentSearchesButton"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLE R10 R8 R9
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K409 ["TextLabel"]
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K153 ["dropShadowSize"]
  CALL R11 1 1
  NEWTABLE R12 2 0
  DUPTABLE R13 K410 [{"TextColor", "TextSize"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K187 ["SubText"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  LOADN R14 16
  SETTABLEKS R14 R13 K363 ["TextSize"]
  SETTABLEKS R13 R12 K411 ["&ToolboxItemRowText"]
  DUPTABLE R13 K410 [{"TextColor", "TextSize"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K37 ["Toolbox_ItemRowHeaderTextColor"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  LOADN R14 14
  SETTABLEKS R14 R13 K363 ["TextSize"]
  SETTABLEKS R13 R12 K412 ["&ToolboxItemRowHeader"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K413 ["TextLabelWithRobloxLinks"]
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K157 ["strokeThickness"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K414 [{"TextColor"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K41 ["Toolbox_ItemRowTextColor"]
  SETTABLEKS R14 R13 K364 ["TextColor"]
  SETTABLEKS R13 R12 K415 ["&ToolboxItemRowInnerText"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  NAMECALL R6 R2 K416 ["extend"]
  CALL R6 2 0
  JUMPIFNOT R0 [+4]
  MOVE R8 R0
  NAMECALL R6 R2 K416 ["extend"]
  CALL R6 2 0
  NEWTABLE R8 1 0
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K417 ["DropdownMenu"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 14
  LOADK R12 K161 [{"assetName", "background", "dropShadowSize", "icon", "outline", "textColor", "strokeThickness", "strokeColor", "voting", "packages"}]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K419 [{"Offset"}]
  GETIMPORT R14 K421 [Vector2.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K418 ["Offset"]
  SETTABLEKS R13 R12 K422 ["&ToolboxSearchBarDropdown"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  NAMECALL R6 R2 K416 ["extend"]
  CALL R6 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R6 R0 K4 ["Core"]
  GETTABLEKS R5 R6 K5 ["Util"]
  GETTABLEKS R4 R5 K8 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxAddRecentSearchesToAutoComplete"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R7 R0 K4 ["Core"]
  GETTABLEKS R6 R7 K5 ["Util"]
  GETTABLEKS R5 R6 K8 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxEnableAssetRows"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R8 R0 K4 ["Core"]
  GETTABLEKS R7 R8 K5 ["Util"]
  GETTABLEKS R6 R7 K8 ["SharedFlags"]
  GETTABLEKS R5 R6 K11 ["getFFlagToolboxPillsForCreators"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R9 R0 K4 ["Core"]
  GETTABLEKS R8 R9 K5 ["Util"]
  GETTABLEKS R7 R8 K8 ["SharedFlags"]
  GETTABLEKS R6 R7 K12 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R9 R0 K4 ["Core"]
  GETTABLEKS R8 R9 K5 ["Util"]
  GETTABLEKS R7 R8 K13 ["Images"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K14 ["Packages"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R7 K15 ["Framework"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R7 K16 ["Cryo"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R7 K17 ["Dash"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R1 K18 ["Colors"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R13 R1 K19 ["isCli"]
  CALL R12 1 1
  GETTABLEKS R15 R8 K20 ["Style"]
  GETTABLEKS R14 R15 K21 ["Themes"]
  GETTABLEKS R13 R14 K22 ["DarkTheme"]
  GETTABLEKS R15 R8 K20 ["Style"]
  GETTABLEKS R14 R15 K23 ["getRawComponentStyle"]
  GETTABLEKS R17 R8 K20 ["Style"]
  GETTABLEKS R16 R17 K21 ["Themes"]
  GETTABLEKS R15 R16 K24 ["LightTheme"]
  GETTABLEKS R18 R8 K20 ["Style"]
  GETTABLEKS R17 R18 K21 ["Themes"]
  GETTABLEKS R16 R17 K25 ["StudioTheme"]
  GETTABLEKS R18 R8 K20 ["Style"]
  GETTABLEKS R17 R18 K18 ["Colors"]
  GETTABLEKS R19 R8 K20 ["Style"]
  GETTABLEKS R18 R19 K26 ["StyleKey"]
  GETTABLEKS R20 R8 K20 ["Style"]
  GETTABLEKS R19 R20 K27 ["ComponentSymbols"]
  GETTABLEKS R21 R8 K5 ["Util"]
  GETTABLEKS R20 R21 K28 ["StyleModifier"]
  GETTABLEKS R22 R8 K29 ["UI"]
  GETTABLEKS R21 R22 K30 ["Image"]
  DUPCLOSURE R22 K31 [PROTO_0]
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R9
  MOVE R24 R2
  CALL R24 0 1
  JUMPIFNOT R24 [+5]
  GETTABLEKS R24 R8 K5 ["Util"]
  GETTABLEKS R23 R24 K28 ["StyleModifier"]
  JUMP [+1]
  LOADNIL R23
  DUPCLOSURE R24 K32 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R22
  CAPTURE VAL R2
  CAPTURE VAL R23
  RETURN R24 1
