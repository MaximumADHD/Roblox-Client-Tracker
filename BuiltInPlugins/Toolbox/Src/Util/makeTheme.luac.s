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
  GETTABLEKS R6 R7 K31 ["Toolbox_AlertIcon"]
  GETUPVAL R8 6
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADK R7 K32 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/Alert.png"]
  JUMP [+1]
  LOADNIL R7
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K33 ["Toolbox_ItemRowBackgroundColorEven"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K34 ["#222222"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K36 ["#2C2C2C"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K37 ["Toolbox_ItemRowBorderColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K38 ["#024897"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K39 ["Toolbox_ItemRowHeaderTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K40 ["#989898"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K41 ["Toolbox_ItemRowTitleTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K42 ["#52ADF4"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K43 ["Toolbox_ItemRowTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K45 ["Toolbox_AudioPlayerBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K46 ["#171717"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K47 ["Toolbox_AudioPlayerProgressBarColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K48 ["#0077D6"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K49 ["Toolbox_AudioPlayerIndicatorColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K50 ["#555555"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K50 ["#555555"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K52 ["Toolbox_AudioTabSelectedTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K53 ["Toolbox_DeleteIconColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 136
  LOADN R9 136
  LOADN R10 136
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K54 ["Toolbox_DropdownItemSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K55 ["Blue_Dark"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K56 ["Toolbox_DropdownIconColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K57 ["Toolbox_FontTileBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K58 ["#292929"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K60 ["Toolbox_FontTileTextFillColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K61 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K62 ["Toolbox_HorizontalLineColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 34
  LOADN R9 34
  LOADN R10 34
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K63 ["Toolbox_NavigationLinkTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K64 ["Toolbox_NavigationLinkTextColorHover"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K65 ["#AAAAAA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K66 ["Toolbox_PackageBackgroundColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K67 ["Black"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K68 ["Toolbox_PackageBackgroundTransparency"]
  LOADK R7 K69 [0.5]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K70 ["Toolbox_PackageImage"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K71 ["PACKAGE_DARK"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K72 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 41
  LOADN R9 41
  LOADN R10 41
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K73 ["ScrollingFrameImageColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 85
  LOADN R9 85
  LOADN R10 85
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K74 ["Toolbox_SearchTagBackgroundColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 56
  LOADN R9 56
  LOADN R10 56
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K75 ["Toolbox_SearchPillTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K25 ["#FAFAFA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K76 ["Toolbox_SearchPillBackgroundColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K8 ["#3B3B3B"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K78 ["#565656"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K79 ["Toolbox_TabTopBorderColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K80 ["Blue"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K81 ["Toolbox_TabSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K82 ["Toolbox_IconTileGradientColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K67 ["Black"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K83 ["Toolbox_HomeviewBackgroundColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K3 ["Slate"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K84 ["Toolbox_SearchOptionButtonHover"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K85 ["Toolbox_RateTextColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K86 ["#BDBEBE"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K87 ["Toolbox_VoteCountColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K65 ["#AAAAAA"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K88 ["Toolbox_LowConfidencePercentageColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K89 ["#CCCCCC"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  GETIMPORT R7 K7 [Color3.fromHex]
  LOADK R8 K61 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K91 ["Toolbox_VotingButtonImage"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K92 ["THUMB_UP_WHITE"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K93 ["Toolbox_SearchIconColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 225
  LOADN R9 225
  LOADN R10 225
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K94 ["Toolbox_ClearButtonColor"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K95 ["SecondaryMain"]
  GETTABLEKS R7 R8 K96 ["Dark"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K97 ["AssetConfig_DividerHorizontalLineColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K98 ["Carbon"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K99 ["AssetConfig_PreviewSelectedColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K100 ["AssetConfig_SidetabSelectedBarColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 11
  LOADN R9 90
  LOADN R10 175
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
  LOADN R7 0
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
  LOADN R7 255
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
  LOADN R7 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K104 ["AssetConfig_UploadResultButtonColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 136
  LOADN R9 136
  LOADN R10 136
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
  GETIMPORT R7 K14 [Color3.fromRGB]
  LOADN R8 102
  LOADN R9 102
  LOADN R10 102
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K106 ["AssetConfig_DistributionQuotaTextColor"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K44 ["White"]
  SETTABLE R7 R5 R6
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  GETUPVAL R5 8
  NEWTABLE R6 128 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["Toolbox_PublishAssetBackground"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K3 ["Slate"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["Toolbox_AssetOutlineBackground"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K44 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Toolbox_AssetOutlineBoarderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K40 ["#989898"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["Toolbox_AssetOutlineTransparency"]
  LOADK R8 K107 [0.08]
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
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K108 ["NO_BACKGROUND_ICON"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K20 ["Toolbox_AssetNameColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K109 ["#0B5AAF"]
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
  LOADK R9 K110 ["#BC6600"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K45 ["Toolbox_AudioPlayerBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K111 ["#E1E1E1"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K47 ["Toolbox_AudioPlayerProgressBarColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K48 ["#0077D6"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["Toolbox_AudioPlayerIndicatorColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K112 ["#CBCBCB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K34 ["#222222"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K29 ["Toolbox_DialogErrorIcon"]
  LOADK R8 K113 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/DialogError.png"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K31 ["Toolbox_AlertIcon"]
  GETUPVAL R9 6
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADK R8 K114 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/Alert.png"]
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K24 ["Toolbox_CreatorLabelTextColor"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K115 ["#191919"]
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
  LOADK R9 K112 ["#CBCBCB"]
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
  LOADK R9 K111 ["#E1E1E1"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K33 ["Toolbox_ItemRowBackgroundColorEven"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K116 ["#EDEDED"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K25 ["#FAFAFA"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K37 ["Toolbox_ItemRowBorderColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K117 ["#3DB3FF"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K39 ["Toolbox_ItemRowHeaderTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K8 ["#3B3B3B"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K41 ["Toolbox_ItemRowTitleTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K118 ["#0055AC"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K43 ["Toolbox_ItemRowTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K46 ["#171717"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K52 ["Toolbox_AudioTabSelectedTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K25 ["#FAFAFA"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K53 ["Toolbox_DeleteIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 184
  LOADN R10 184
  LOADN R11 184
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K54 ["Toolbox_DropdownItemSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K119 ["Blue_Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K56 ["Toolbox_DropdownIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 25
  LOADN R10 25
  LOADN R11 25
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K57 ["Toolbox_FontTileBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K61 ["#FFFFFF"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K120 ["#E3F0FB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K60 ["Toolbox_FontTileTextFillColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K121 ["#393B3D"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K62 ["Toolbox_HorizontalLineColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 227
  LOADN R10 227
  LOADN R11 227
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K63 ["Toolbox_NavigationLinkTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K10 ["#121212"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K64 ["Toolbox_NavigationLinkTextColorHover"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K122 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K66 ["Toolbox_PackageBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K44 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K68 ["Toolbox_PackageBackgroundTransparency"]
  LOADK R8 K123 [0.25]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K70 ["Toolbox_PackageImage"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K124 ["PACKAGE_LIGHT"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K72 ["ScrollingFrameBackgroundColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 245
  LOADN R10 245
  LOADN R11 245
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K73 ["ScrollingFrameImageColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 245
  LOADN R10 245
  LOADN R11 245
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K74 ["Toolbox_SearchTagBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K125 ["Gray_Lighter"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K75 ["Toolbox_SearchPillTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K115 ["#191919"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K76 ["Toolbox_SearchPillBackgroundColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K111 ["#E1E1E1"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K112 ["#CBCBCB"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K79 ["Toolbox_TabTopBorderColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 182
  LOADN R10 182
  LOADN R11 182
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K81 ["Toolbox_TabSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K80 ["Blue"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K82 ["Toolbox_IconTileGradientColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K126 ["Gray_Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K83 ["Toolbox_HomeviewBackgroundColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K44 ["White"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K84 ["Toolbox_SearchOptionButtonHover"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K67 ["Black"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K85 ["Toolbox_RateTextColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K8 ["#3B3B3B"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K87 ["Toolbox_VoteCountColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K122 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K88 ["Toolbox_LowConfidencePercentageColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K122 ["#666666"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  GETIMPORT R8 K7 [Color3.fromHex]
  LOADK R9 K127 ["#000000"]
  CALL R8 1 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K91 ["Toolbox_VotingButtonImage"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K128 ["THUMB_UP_DARK_GRAY"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K93 ["Toolbox_SearchIconColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 94
  LOADN R10 94
  LOADN R11 94
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K94 ["Toolbox_ClearButtonColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K95 ["SecondaryMain"]
  GETTABLEKS R8 R9 K129 ["Light"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K97 ["AssetConfig_DividerHorizontalLineColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 227
  LOADN R10 227
  LOADN R11 227
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K99 ["AssetConfig_PreviewSelectedColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K80 ["Blue"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K100 ["AssetConfig_SidetabSelectedBarColor"]
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K130 ["GRAY_1"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
  LOADK R8 K131 [0.9]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
  LOADN R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K104 ["AssetConfig_UploadResultButtonColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K67 ["Black"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
  GETIMPORT R8 K14 [Color3.fromRGB]
  LOADN R9 151
  LOADN R10 151
  LOADN R11 151
  CALL R8 3 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K106 ["AssetConfig_DistributionQuotaTextColor"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K67 ["Black"]
  SETTABLE R8 R6 R7
  CALL R4 2 1
  GETUPVAL R5 10
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K132 ["mock"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  MOVE R2 R5
  JUMP [+6]
  GETTABLEKS R5 R1 K133 ["new"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  MOVE R2 R5
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K22 ["Toolbox_AssetWarningIcon"]
  NEWTABLE R8 64 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K134 ["InputFieldBackground"]
  SETTABLEKS R9 R8 K135 ["backgroundColor"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R9 R8 K137 ["progressBarColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K62 ["Toolbox_HorizontalLineColor"]
  SETTABLEKS R9 R8 K138 ["horizontalLineColor"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K139 ["LinkText"]
  SETTABLEKS R9 R8 K140 ["link"]
  GETIMPORT R9 K14 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 68
  LOADN R12 68
  CALL R9 3 1
  SETTABLEKS R9 R8 K141 ["redText"]
  LOADN R9 10
  SETTABLEKS R9 R8 K142 ["spacingUnit"]
  DUPTABLE R9 K148 [{"backgroundColor", "closeIconColor", "descriptionColor", "headerTextColor", "overlayColor", "overlayTransparency"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K149 ["MainBackground"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K44 ["White"]
  SETTABLEKS R10 R9 K143 ["closeIconColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K150 ["TextPrimary"]
  SETTABLEKS R10 R9 K144 ["descriptionColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K151 ["BrightText"]
  SETTABLEKS R10 R9 K145 ["headerTextColor"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K67 ["Black"]
  SETTABLEKS R10 R9 K146 ["overlayColor"]
  LOADK R10 K152 [0.4]
  SETTABLEKS R10 R9 K147 ["overlayTransparency"]
  SETTABLEKS R9 R8 K153 ["announcementDialog"]
  DUPTABLE R9 K164 [{"assetName", "background", "dropShadowSize", "icon", "outline", "textColor", "strokeThickness", "strokeColor", "voting", "packages"}]
  DUPTABLE R10 K165 [{"textColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K20 ["Toolbox_AssetNameColor"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  SETTABLEKS R10 R9 K154 ["assetName"]
  DUPTABLE R10 K169 [{"color", "borderSize", "image"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["Toolbox_AssetBackgroundColor"]
  SETTABLEKS R11 R10 K166 ["color"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["Toolbox_AssetBorderSize"]
  SETTABLEKS R11 R10 K167 ["borderSize"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K18 ["Toolbox_AssetBackgroundImage"]
  SETTABLEKS R11 R10 K168 ["image"]
  SETTABLEKS R10 R9 K155 ["background"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["Toolbox_AssetDropdownSize"]
  SETTABLEKS R10 R9 K156 ["dropShadowSize"]
  DUPTABLE R10 K173 [{"borderColor", "buttonColor", "warningColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K174 ["ItemHovered"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K21 ["Toolbox_AssetIconColor"]
  SETTABLEKS R11 R10 K171 ["buttonColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K22 ["Toolbox_AssetWarningIcon"]
  SETTABLEKS R11 R10 K172 ["warningColor"]
  SETTABLEKS R10 R9 K157 ["icon"]
  DUPTABLE R10 K177 [{"backgroundColor", "verifiedBackgroundColor", "borderColor", "transparency"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K4 ["Toolbox_AssetOutlineBackground"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
  SETTABLEKS R11 R10 K175 ["verifiedBackgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["Toolbox_AssetOutlineBoarderColor"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K11 ["Toolbox_AssetOutlineTransparency"]
  SETTABLEKS R11 R10 K176 ["transparency"]
  SETTABLEKS R10 R9 K158 ["outline"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  LOADN R10 3
  SETTABLEKS R10 R9 K160 ["strokeThickness"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K161 ["strokeColor"]
  DUPTABLE R10 K189 [{"downVotes", "upVotes", "textColor", "votedDownThumb", "votedUpThumb", "voteThumb", "rateTextColor", "voteCountColor", "lowConfidencePercentageColor", "votingButtonsBackgroundBoxColor", "votingButtonImage"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 206
  LOADN R13 100
  LOADN R14 91
  CALL R11 3 1
  SETTABLEKS R11 R10 K179 ["downVotes"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 82
  LOADN R13 168
  LOADN R14 70
  CALL R11 3 1
  SETTABLEKS R11 R10 K180 ["upVotes"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K190 ["SubText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 216
  LOADN R13 104
  LOADN R14 104
  CALL R11 3 1
  SETTABLEKS R11 R10 K181 ["votedDownThumb"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 178
  LOADN R14 89
  CALL R11 3 1
  SETTABLEKS R11 R10 K182 ["votedUpThumb"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 117
  LOADN R13 117
  LOADN R14 117
  CALL R11 3 1
  SETTABLEKS R11 R10 K183 ["voteThumb"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K85 ["Toolbox_RateTextColor"]
  SETTABLEKS R11 R10 K184 ["rateTextColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K87 ["Toolbox_VoteCountColor"]
  SETTABLEKS R11 R10 K185 ["voteCountColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K88 ["Toolbox_LowConfidencePercentageColor"]
  SETTABLEKS R11 R10 K186 ["lowConfidencePercentageColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
  SETTABLEKS R11 R10 K187 ["votingButtonsBackgroundBoxColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K91 ["Toolbox_VotingButtonImage"]
  SETTABLEKS R11 R10 K188 ["votingButtonImage"]
  SETTABLEKS R10 R9 K162 ["voting"]
  DUPTABLE R10 K193 [{"backgroundColor", "backgroundTransparency", "packageImage"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K66 ["Toolbox_PackageBackgroundColor"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K68 ["Toolbox_PackageBackgroundTransparency"]
  SETTABLEKS R11 R10 K191 ["backgroundTransparency"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K70 ["Toolbox_PackageImage"]
  SETTABLEKS R11 R10 K192 ["packageImage"]
  SETTABLEKS R10 R9 K163 ["packages"]
  SETTABLEKS R9 R8 K194 ["asset"]
  DUPTABLE R9 K196 [{"labelTextColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K197 ["DimmedText"]
  SETTABLEKS R10 R9 K195 ["labelTextColor"]
  SETTABLEKS R9 R8 K198 ["assetConfig"]
  DUPTABLE R9 K201 [{"backgroundColor", "progressBarColor", "indicatorColor", "indicatorBorderColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K47 ["Toolbox_AudioPlayerProgressBarColor"]
  SETTABLEKS R10 R9 K137 ["progressBarColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K49 ["Toolbox_AudioPlayerIndicatorColor"]
  SETTABLEKS R10 R9 K199 ["indicatorColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
  SETTABLEKS R10 R9 K200 ["indicatorBorderColor"]
  SETTABLEKS R9 R8 K202 ["audioPlayer"]
  DUPTABLE R9 K206 [{"backgroundButtonColor", "selectedButtonColor", "selectedTextColor", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
  SETTABLEKS R10 R9 K203 ["backgroundButtonColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K48 ["#0077D6"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K204 ["selectedButtonColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K52 ["Toolbox_AudioTabSelectedTextColor"]
  SETTABLEKS R10 R9 K205 ["selectedTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K207 ["TextSecondary"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  SETTABLEKS R9 R8 K208 ["audioTabs"]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  DUPTABLE R9 K212 [{"spacingUnit", "textSize", "font", "thumbnailBackgroundColor", "textColor"}]
  LOADN R10 10
  SETTABLEKS R10 R9 K142 ["spacingUnit"]
  LOADN R10 18
  SETTABLEKS R10 R9 K209 ["textSize"]
  GETIMPORT R10 K216 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K210 ["font"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
  SETTABLEKS R10 R9 K211 ["thumbnailBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K24 ["Toolbox_CreatorLabelTextColor"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K217 ["creatorLabel"]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+10]
  DUPTABLE R9 K218 [{"spacingUnit", "backgroundColor"}]
  LOADN R10 10
  SETTABLEKS R10 R9 K142 ["spacingUnit"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K28 ["Toolbox_CreatorPillBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K219 ["creatorPill"]
  DUPTABLE R9 K165 [{"textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  SETTABLEKS R9 R8 K220 ["creatorName"]
  DUPTABLE R9 K223 [{"errorIcon", "alertIcon"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K29 ["Toolbox_DialogErrorIcon"]
  SETTABLEKS R10 R9 K221 ["errorIcon"]
  GETUPVAL R11 6
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K31 ["Toolbox_AlertIcon"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K222 ["alertIcon"]
  SETTABLEKS R9 R8 K224 ["dialog"]
  DUPTABLE R9 K229 [{"dropdownIconColor", "currentSelection", "item", "dropdownFrame"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K56 ["Toolbox_DropdownIconColor"]
  SETTABLEKS R10 R9 K225 ["dropdownIconColor"]
  DUPTABLE R10 K234 [{"backgroundColor", "backgroundSelectedColor", "backgroundDisabledColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K235 ["Dropdown"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K230 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K231 ["backgroundDisabledColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K232 ["borderSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K238 ["MainTextSelected"]
  SETTABLEKS R11 R10 K233 ["textSelectedColor"]
  SETTABLEKS R10 R9 K226 ["currentSelection"]
  DUPTABLE R10 K240 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K241 ["Item"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K54 ["Toolbox_DropdownItemSelectedColor"]
  SETTABLEKS R11 R10 K230 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K239 ["selectedBarColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K197 ["DimmedText"]
  SETTABLEKS R11 R10 K195 ["labelTextColor"]
  SETTABLEKS R10 R9 K227 ["item"]
  DUPTABLE R10 K242 [{"borderColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  SETTABLEKS R10 R9 K228 ["dropdownFrame"]
  SETTABLEKS R9 R8 K243 ["dropdownMenu"]
  DUPTABLE R9 K246 [{"backgroundColor", "hoveredBackgroundColor", "textFillColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K57 ["Toolbox_FontTileBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
  SETTABLEKS R10 R9 K244 ["hoveredBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K60 ["Toolbox_FontTileTextFillColor"]
  SETTABLEKS R10 R9 K245 ["textFillColor"]
  SETTABLEKS R9 R8 K247 ["fontTile"]
  DUPTABLE R9 K249 [{"backgroundColor", "borderColor", "labelTextColor", "button"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K250 ["Titlebar"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K195 ["labelTextColor"]
  DUPTABLE R10 K251 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K235 ["Dropdown"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K230 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K232 ["borderSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K238 ["MainTextSelected"]
  SETTABLEKS R11 R10 K233 ["textSelectedColor"]
  SETTABLEKS R10 R9 K248 ["button"]
  SETTABLEKS R9 R8 K252 ["footer"]
  DUPTABLE R9 K254 [{"backgroundColor", "borderColor", "iconColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K250 ["Titlebar"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 11
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K255 ["GRAY_2"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K253 ["iconColor"]
  SETTABLEKS R9 R8 K256 ["header"]
  DUPTABLE R9 K257 [{"backgroundColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K83 ["Toolbox_HomeviewBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  SETTABLEKS R9 R8 K258 ["homeView"]
  DUPTABLE R9 K263 [{"font", "gradientColor", "overlayColor", "overlayTransparency", "padding", "spacing", "textColor", "textColorHovered", "textSize"}]
  GETIMPORT R10 K265 [Enum.Font.SourceSansBold]
  SETTABLEKS R10 R9 K210 ["font"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K82 ["Toolbox_IconTileGradientColor"]
  SETTABLEKS R10 R9 K259 ["gradientColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K10 ["#121212"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K146 ["overlayColor"]
  LOADK R10 K11 ["Toolbox_AssetOutlineTransparency"]
  SETTABLEKS R10 R9 K147 ["overlayTransparency"]
  LOADN R10 8
  SETTABLEKS R10 R9 K260 ["padding"]
  LOADN R10 16
  SETTABLEKS R10 R9 K261 ["spacing"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K111 ["#E1E1E1"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K159 ["textColor"]
  LOADNIL R10
  SETTABLEKS R10 R9 K262 ["textColorHovered"]
  LOADN R10 16
  SETTABLEKS R10 R9 K209 ["textSize"]
  SETTABLEKS R9 R8 K268 ["iconTile"]
  DUPTABLE R9 K269 [{"backgroundColor", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K250 ["Titlebar"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  SETTABLEKS R9 R8 K270 ["infoBanner"]
  DUPTABLE R9 K279 [{"backgroundColorEven", "backgroundColorOdd", "borderColor", "headerTextColor", "titleTextColor", "primaryIconColor", "textColor", "textSize", "playButtonColor", "pauseButtonColor", "insertButtonColor", "insertButtonTextColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K33 ["Toolbox_ItemRowBackgroundColorEven"]
  SETTABLEKS R10 R9 K271 ["backgroundColorEven"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
  SETTABLEKS R10 R9 K272 ["backgroundColorOdd"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K37 ["Toolbox_ItemRowBorderColor"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K39 ["Toolbox_ItemRowHeaderTextColor"]
  SETTABLEKS R10 R9 K145 ["headerTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K41 ["Toolbox_ItemRowTitleTextColor"]
  SETTABLEKS R10 R9 K273 ["titleTextColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K24 ["Toolbox_CreatorLabelTextColor"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K274 ["primaryIconColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  LOADN R10 16
  SETTABLEKS R10 R9 K209 ["textSize"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K281 ["BLACK"]
  SETTABLEKS R10 R9 K275 ["playButtonColor"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K276 ["pauseButtonColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K48 ["#0077D6"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K277 ["insertButtonColor"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K282 ["WHITE"]
  SETTABLEKS R10 R9 K278 ["insertButtonTextColor"]
  SETTABLEKS R9 R8 K283 ["itemRow"]
  DUPTABLE R9 K165 [{"textColor"}]
  GETIMPORT R10 K14 [Color3.fromRGB]
  LOADN R11 0
  LOADN R12 162
  LOADN R13 255
  CALL R10 3 1
  SETTABLEKS R10 R9 K159 ["textColor"]
  SETTABLEKS R9 R8 K284 ["linkButton"]
  DUPTABLE R9 K286 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K149 ["MainBackground"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K285 ["informativeTextColor"]
  DUPTABLE R10 K287 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K238 ["MainTextSelected"]
  SETTABLEKS R11 R10 K233 ["textSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K149 ["MainBackground"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K230 ["backgroundSelectedColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K236 ["CurrentMarker"]
  SETTABLEKS R11 R10 K232 ["borderSelectedColor"]
  SETTABLEKS R10 R9 K248 ["button"]
  SETTABLEKS R9 R8 K288 ["messageBox"]
  DUPTABLE R9 K291 [{"promptText", "balanceText"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K289 ["promptText"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K197 ["DimmedText"]
  SETTABLEKS R10 R9 K290 ["balanceText"]
  SETTABLEKS R9 R8 K292 ["purchaseDialog"]
  DUPTABLE R9 K298 [{"backgroundColor", "distributionQuotaTextColor", "titleTextColor", "textColor", "quotaTextColor", "verifyTextColor", "warningIconColor", "additionalImagesThumbnailSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K2 ["Toolbox_PublishAssetBackground"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K106 ["AssetConfig_DistributionQuotaTextColor"]
  SETTABLEKS R10 R9 K293 ["distributionQuotaTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K273 ["titleTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K151 ["BrightText"]
  SETTABLEKS R10 R9 K294 ["quotaTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K207 ["TextSecondary"]
  SETTABLEKS R10 R9 K295 ["verifyTextColor"]
  GETIMPORT R10 K7 [Color3.fromHex]
  LOADK R11 K43 ["Toolbox_ItemRowTextColor"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K296 ["warningIconColor"]
  GETIMPORT R10 K301 [UDim2.new]
  LOADN R11 0
  LOADN R12 185
  LOADN R13 0
  LOADN R14 104
  CALL R10 4 1
  SETTABLEKS R10 R9 K297 ["additionalImagesThumbnailSize"]
  SETTABLEKS R9 R8 K302 ["publishAsset"]
  DUPTABLE R9 K309 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K235 ["Dropdown"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K134 ["InputFieldBackground"]
  SETTABLEKS R10 R9 K303 ["liveBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K236 ["CurrentMarker"]
  SETTABLEKS R10 R9 K304 ["borderHoveredColor"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K232 ["borderSelectedColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K197 ["DimmedText"]
  SETTABLEKS R10 R9 K305 ["placeholderTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K306 ["divideLineColor"]
  DUPTABLE R10 K312 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K310 ["imageColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K311 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K307 ["searchButton"]
  DUPTABLE R10 K312 [{"imageColor", "imageSelectedColor"}]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 184
  LOADN R13 184
  LOADN R14 184
  CALL R11 3 1
  SETTABLEKS R11 R10 K310 ["imageColor"]
  GETIMPORT R11 K14 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K311 ["imageSelectedColor"]
  SETTABLEKS R10 R9 K308 ["clearButton"]
  SETTABLEKS R9 R8 K313 ["searchBar"]
  DUPTABLE R9 K316 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K72 ["ScrollingFrameBackgroundColor"]
  SETTABLEKS R10 R9 K314 ["scrollbarBackgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K73 ["ScrollingFrameImageColor"]
  SETTABLEKS R10 R9 K315 ["scrollbarImageColor"]
  SETTABLEKS R9 R8 K317 ["scrollingFrame"]
  DUPTABLE R9 K320 [{"labelTextColor", "textColor", "textHoveredColor", "underlineColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K195 ["labelTextColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K190 ["SubText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K139 ["LinkText"]
  SETTABLEKS R10 R9 K318 ["textHoveredColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K139 ["LinkText"]
  SETTABLEKS R10 R9 K319 ["underlineColor"]
  SETTABLEKS R9 R8 K321 ["suggestionsComponent"]
  DUPTABLE R9 K328 [{"background", "border", "headerTextColor", "imageColor", "imageHoveredColor", "imageSelectedColor", "warningIconColor", "audioSearch", "timeTextBox", "applyButton", "cancelButton"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K149 ["MainBackground"]
  SETTABLEKS R10 R9 K155 ["background"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K322 ["border"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K178 ["MainText"]
  SETTABLEKS R10 R9 K145 ["headerTextColor"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K255 ["GRAY_2"]
  SETTABLEKS R10 R9 K310 ["imageColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K84 ["Toolbox_SearchOptionButtonHover"]
  SETTABLEKS R10 R9 K323 ["imageHoveredColor"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R10 R9 K311 ["imageSelectedColor"]
  SETTABLEKS R5 R9 K296 ["warningIconColor"]
  DUPTABLE R10 K165 [{"textColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  SETTABLEKS R10 R9 K324 ["audioSearch"]
  DUPTABLE R10 K330 [{"borderColor", "backgroundColor", "selectedBorderColor", "textColor", "placeholderTextColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K134 ["InputFieldBackground"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R11 R10 K329 ["selectedBorderColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K197 ["DimmedText"]
  SETTABLEKS R11 R10 K305 ["placeholderTextColor"]
  SETTABLEKS R10 R9 K325 ["timeTextBox"]
  GETUPVAL R11 12
  CALL R11 0 1
  JUMPIF R11 [+17]
  DUPTABLE R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K282 ["WHITE"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K136 ["BLUE_PRIMARY"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K149 ["MainBackground"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K326 ["applyButton"]
  GETUPVAL R11 12
  CALL R11 0 1
  JUMPIF R11 [+17]
  DUPTABLE R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K178 ["MainText"]
  SETTABLEKS R11 R10 K159 ["textColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K332 ["Button"]
  SETTABLEKS R11 R10 K135 ["backgroundColor"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K237 ["Border"]
  SETTABLEKS R11 R10 K170 ["borderColor"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K327 ["cancelButton"]
  SETTABLEKS R9 R8 K333 ["searchOptions"]
  DUPTABLE R9 K335 [{"buttonSpacing"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K334 ["buttonSpacing"]
  SETTABLEKS R9 R8 K336 ["searchList"]
  DUPTABLE R9 K338 [{"backgroundColor", "backgroundColorHovered", "font", "padding", "textSize", "textColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K76 ["Toolbox_SearchPillBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
  SETTABLEKS R10 R9 K337 ["backgroundColorHovered"]
  GETIMPORT R10 K216 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K210 ["font"]
  DUPTABLE R10 K343 [{"top", "bottom", "left", "right"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K339 ["top"]
  LOADN R11 6
  SETTABLEKS R11 R10 K340 ["bottom"]
  LOADN R11 10
  SETTABLEKS R11 R10 K341 ["left"]
  LOADN R11 10
  SETTABLEKS R11 R10 K342 ["right"]
  SETTABLEKS R10 R9 K260 ["padding"]
  LOADN R10 18
  SETTABLEKS R10 R9 K209 ["textSize"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K75 ["Toolbox_SearchPillTextColor"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  SETTABLEKS R9 R8 K344 ["searchPill"]
  DUPTABLE R9 K346 [{"backgroundColor", "borderColor", "textColor", "clearAllText"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K74 ["Toolbox_SearchTagBackgroundColor"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K151 ["BrightText"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K139 ["LinkText"]
  SETTABLEKS R10 R9 K345 ["clearAllText"]
  SETTABLEKS R9 R8 K347 ["searchTag"]
  DUPTABLE R9 K348 [{"textColor", "font", "textSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETIMPORT R10 K265 [Enum.Font.SourceSansBold]
  SETTABLEKS R10 R9 K210 ["font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K209 ["textSize"]
  SETTABLEKS R9 R8 K349 ["sectionHeader"]
  DUPTABLE R9 K351 [{"textColor", "hoverTextColor", "font", "textSize"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
  SETTABLEKS R10 R9 K159 ["textColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K64 ["Toolbox_NavigationLinkTextColorHover"]
  SETTABLEKS R10 R9 K350 ["hoverTextColor"]
  GETIMPORT R10 K216 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K210 ["font"]
  LOADN R10 16
  SETTABLEKS R10 R9 K209 ["textSize"]
  SETTABLEKS R9 R8 K352 ["sectionHeaderNavLink"]
  DUPTABLE R9 K358 [{"backgroundColor", "borderColor", "topBorderColor", "tabBackground", "disabledColor", "contentColor", "selectedColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K149 ["MainBackground"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K170 ["borderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K79 ["Toolbox_TabTopBorderColor"]
  SETTABLEKS R10 R9 K353 ["topBorderColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K250 ["Titlebar"]
  SETTABLEKS R10 R9 K354 ["tabBackground"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K237 ["Border"]
  SETTABLEKS R10 R9 K355 ["disabledColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K359 ["TitlebarText"]
  SETTABLEKS R10 R9 K356 ["contentColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K81 ["Toolbox_TabSelectedColor"]
  SETTABLEKS R10 R9 K357 ["selectedColor"]
  SETTABLEKS R9 R8 K360 ["tabSet"]
  DUPTABLE R9 K365 [{"buttonHeight", "buttonWidth", "verticalTextSpacing", "verticalListPadding"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K361 ["buttonHeight"]
  LOADN R10 40
  SETTABLEKS R10 R9 K362 ["buttonWidth"]
  LOADN R10 4
  SETTABLEKS R10 R9 K363 ["verticalTextSpacing"]
  LOADN R10 16
  SETTABLEKS R10 R9 K364 ["verticalListPadding"]
  SETTABLEKS R9 R8 K366 ["toggle"]
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K139 ["LinkText"]
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K139 ["LinkText"]
  CALL R11 1 1
  NEWTABLE R12 4 0
  DUPTABLE R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K367 ["TextSize"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K190 ["SubText"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K369 ["ShowUnderline"]
  SETTABLEKS R13 R12 K371 ["&ToolboxItemRowLink"]
  DUPTABLE R13 K372 [{"TextColor", "ShowUnderline"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K43 ["Toolbox_ItemRowTextColor"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K369 ["ShowUnderline"]
  SETTABLEKS R13 R12 K373 ["&ToolboxItemRowInnerLink"]
  DUPTABLE R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K367 ["TextSize"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K41 ["Toolbox_ItemRowTitleTextColor"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  LOADB R14 1
  SETTABLEKS R14 R13 K369 ["ShowUnderline"]
  SETTABLEKS R13 R12 K374 ["&ToolboxItemRowTitle"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K375 ["SearchBar"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K119 ["Blue_Light"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K382 [{"Padding", "SearchIcon", "IconColor", "IconWidth", "IconOffset", "Buttons"}]
  DUPTABLE R14 K387 [{"Top", "Left", "Bottom", "Right"}]
  LOADN R15 255
  SETTABLEKS R15 R14 K383 ["Top"]
  LOADN R15 0
  SETTABLEKS R15 R14 K384 ["Left"]
  LOADN R15 0
  SETTABLEKS R15 R14 K385 ["Bottom"]
  LOADN R15 0
  SETTABLEKS R15 R14 K386 ["Right"]
  SETTABLEKS R14 R13 K376 ["Padding"]
  LOADK R14 K132 ["mock"]
  SETTABLEKS R14 R13 K377 ["SearchIcon"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K93 ["Toolbox_SearchIconColor"]
  SETTABLEKS R14 R13 K378 ["IconColor"]
  LOADN R14 16
  SETTABLEKS R14 R13 K379 ["IconWidth"]
  LOADN R14 8
  SETTABLEKS R14 R13 K380 ["IconOffset"]
  DUPTABLE R14 K392 [{"Clear", "Filter", "FilterHighlighted"}]
  GETUPVAL R15 16
  LOADK R16 K137 ["progressBarColor"]
  LOADK R17 K138 ["horizontalLineColor"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K95 ["SecondaryMain"]
  GETIMPORT R19 K396 [UDim2.fromOffset]
  LOADN R20 11
  LOADN R21 11
  CALL R19 2 1
  LOADNIL R20
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K397 ["SecondaryContrast"]
  CALL R15 6 1
  SETTABLEKS R15 R14 K389 ["Clear"]
  GETUPVAL R15 16
  LOADK R16 K142 ["spacingUnit"]
  LOADNIL R17
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K93 ["Toolbox_SearchIconColor"]
  GETIMPORT R19 K396 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K390 ["Filter"]
  GETUPVAL R15 16
  LOADK R16 K142 ["spacingUnit"]
  LOADNIL R17
  GETIMPORT R18 K14 [Color3.fromRGB]
  LOADN R19 0
  LOADN R20 162
  LOADN R21 255
  CALL R18 3 1
  GETIMPORT R19 K396 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K391 ["FilterHighlighted"]
  SETTABLEKS R14 R13 K381 ["Buttons"]
  SETTABLEKS R13 R12 K399 ["&ToolboxSearchBar"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 17
  CALL R10 0 1
  JUMPIFNOT R10 [+12]
  DUPTABLE R9 K401 [{"backgroundColor", "hoverColor"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K95 ["SecondaryMain"]
  SETTABLEKS R10 R9 K135 ["backgroundColor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K397 ["SecondaryContrast"]
  SETTABLEKS R10 R9 K400 ["hoverColor"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K402 ["recentSearchesCloseButton"]
  DUPTABLE R9 K403 [{"Top", "Bottom", "Right", "Left"}]
  LOADN R10 8
  SETTABLEKS R10 R9 K383 ["Top"]
  LOADN R10 0
  SETTABLEKS R10 R9 K385 ["Bottom"]
  LOADN R10 8
  SETTABLEKS R10 R9 K386 ["Right"]
  LOADN R10 8
  SETTABLEKS R10 R9 K384 ["Left"]
  SETTABLEKS R9 R8 K404 ["wideIconButtonPadding"]
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K332 ["Button"]
  GETUPVAL R11 17
  CALL R11 0 1
  JUMPIFNOT R11 [+37]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K76 ["Toolbox_SearchPillBackgroundColor"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  NEWTABLE R13 2 0
  DUPTABLE R14 K406 [{"Color"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K407 ["ForegroundMain"]
  SETTABLEKS R15 R14 K405 ["Color"]
  SETTABLEKS R14 R13 K408 ["BackgroundStyle"]
  GETUPVAL R15 18
  GETTABLEKS R14 R15 K409 ["Hover"]
  DUPTABLE R15 K410 [{"BackgroundStyle"}]
  DUPTABLE R16 K406 [{"Color"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K411 ["ActionHover"]
  SETTABLEKS R17 R16 K405 ["Color"]
  SETTABLEKS R16 R15 K408 ["BackgroundStyle"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K412 ["&ToolboxRecentSearchesButton"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLE R10 R8 R9
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K413 ["TextLabel"]
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K157 ["icon"]
  CALL R11 1 1
  NEWTABLE R12 2 0
  DUPTABLE R13 K414 [{"TextColor", "TextSize"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K190 ["SubText"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  LOADN R14 16
  SETTABLEKS R14 R13 K367 ["TextSize"]
  SETTABLEKS R13 R12 K415 ["&ToolboxItemRowText"]
  DUPTABLE R13 K414 [{"TextColor", "TextSize"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K39 ["Toolbox_ItemRowHeaderTextColor"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  LOADN R14 14
  SETTABLEKS R14 R13 K367 ["TextSize"]
  SETTABLEKS R13 R12 K416 ["&ToolboxItemRowHeader"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K417 ["TextLabelWithRobloxLinks"]
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K161 ["strokeColor"]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K418 [{"TextColor"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K43 ["Toolbox_ItemRowTextColor"]
  SETTABLEKS R14 R13 K368 ["TextColor"]
  SETTABLEKS R13 R12 K419 ["&ToolboxItemRowInnerText"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  NAMECALL R6 R2 K420 ["extend"]
  CALL R6 2 0
  JUMPIFNOT R0 [+4]
  MOVE R8 R0
  NAMECALL R6 R2 K420 ["extend"]
  CALL R6 2 0
  NEWTABLE R8 1 0
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K421 ["DropdownMenu"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  GETUPVAL R11 15
  LOADK R12 K165 [{"textColor"}]
  CALL R11 1 1
  NEWTABLE R12 1 0
  DUPTABLE R13 K423 [{"Offset"}]
  GETIMPORT R14 K425 [Vector2.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K422 ["Offset"]
  SETTABLEKS R13 R12 K426 ["&ToolboxSearchBarDropdown"]
  CALL R10 2 1
  SETTABLE R10 R8 R9
  NAMECALL R6 R2 K420 ["extend"]
  CALL R6 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R6 R0 K4 ["Src"]
  GETTABLEKS R5 R6 K5 ["Util"]
  GETTABLEKS R4 R5 K8 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagToolboxAddRecentSearchesToAutoComplete"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R7 R0 K4 ["Src"]
  GETTABLEKS R6 R7 K5 ["Util"]
  GETTABLEKS R5 R6 K8 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxEnableAssetRows"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K5 ["Util"]
  GETTABLEKS R6 R7 K8 ["SharedFlags"]
  GETTABLEKS R5 R6 K11 ["getFFlagToolboxPillsForCreators"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R9 R0 K4 ["Src"]
  GETTABLEKS R8 R9 K5 ["Util"]
  GETTABLEKS R7 R8 K8 ["SharedFlags"]
  GETTABLEKS R6 R7 K12 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R9 R0 K4 ["Src"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagUpdateAlertIcon"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K4 ["Src"]
  GETTABLEKS R9 R10 K5 ["Util"]
  GETTABLEKS R8 R9 K15 ["Images"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K16 ["Packages"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R8 K17 ["Framework"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R8 K18 ["Cryo"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R8 K19 ["Dash"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R13 R1 K20 ["Colors"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R14 R1 K21 ["isCli"]
  CALL R13 1 1
  GETTABLEKS R16 R9 K22 ["Style"]
  GETTABLEKS R15 R16 K23 ["Themes"]
  GETTABLEKS R14 R15 K24 ["DarkTheme"]
  GETTABLEKS R16 R9 K22 ["Style"]
  GETTABLEKS R15 R16 K25 ["getRawComponentStyle"]
  GETTABLEKS R18 R9 K22 ["Style"]
  GETTABLEKS R17 R18 K23 ["Themes"]
  GETTABLEKS R16 R17 K26 ["LightTheme"]
  GETTABLEKS R19 R9 K22 ["Style"]
  GETTABLEKS R18 R19 K23 ["Themes"]
  GETTABLEKS R17 R18 K27 ["StudioTheme"]
  GETTABLEKS R19 R9 K22 ["Style"]
  GETTABLEKS R18 R19 K20 ["Colors"]
  GETTABLEKS R20 R9 K22 ["Style"]
  GETTABLEKS R19 R20 K28 ["StyleKey"]
  GETTABLEKS R21 R9 K22 ["Style"]
  GETTABLEKS R20 R21 K29 ["ComponentSymbols"]
  GETTABLEKS R22 R9 K5 ["Util"]
  GETTABLEKS R21 R22 K30 ["StyleModifier"]
  GETTABLEKS R23 R9 K31 ["UI"]
  GETTABLEKS R22 R23 K32 ["Image"]
  DUPCLOSURE R23 K33 [PROTO_0]
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R10
  MOVE R25 R2
  CALL R25 0 1
  JUMPIFNOT R25 [+5]
  GETTABLEKS R25 R9 K5 ["Util"]
  GETTABLEKS R24 R25 K30 ["StyleModifier"]
  JUMP [+1]
  LOADNIL R24
  DUPCLOSURE R25 K34 [PROTO_1]
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R23
  CAPTURE VAL R2
  CAPTURE VAL R24
  RETURN R25 1
