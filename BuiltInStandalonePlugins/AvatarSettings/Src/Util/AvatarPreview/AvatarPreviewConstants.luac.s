MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["AvatarPreview"]
  GETTABLEKS R2 R3 K9 ["AvatarPreviewTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K10 ["BridgingFiles"]
  GETTABLEKS R4 R5 K11 ["AssetDmFiles"]
  GETTABLEKS R3 R4 K12 ["assetDmTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K13 ["Flags"]
  GETTABLEKS R4 R5 K14 ["getFIntAvatarSettingsPreviewSpacing"]
  CALL R3 1 1
  DUPTABLE R4 K23 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K15 ["Eyelashes"]
  LOADN R5 2
  SETTABLEKS R5 R4 K16 ["Eyebrows"]
  LOADN R5 3
  SETTABLEKS R5 R4 K17 ["Face"]
  LOADN R5 4
  SETTABLEKS R5 R4 K18 ["Hair"]
  LOADN R5 5
  SETTABLEKS R5 R4 K19 ["Shoes"]
  LOADN R5 6
  SETTABLEKS R5 R4 K20 ["Bottoms"]
  LOADN R5 7
  SETTABLEKS R5 R4 K21 ["Tops"]
  LOADN R5 8
  SETTABLEKS R5 R4 K22 ["Outerwear"]
  DUPTABLE R5 K49 [{"ParentCameraName", "AvatarPreviewFolderName", "AvatarPreviewFolderTag", "CollisionBoxVisibleTransparency", "CollisionBoxInvisibleTransparency", "CollisionBoxVisibleColor", "CollisionBoxInvisibleColor", "BLOCKCAST_VERTICAL_PADDING", "AvatarSpacing", "MaxPreviewPlacementDistance", "DennisAvatar", "MagmaFiend", "Roxie", "JunkBot", "AvatarAccessoryRulesAssetIdPropertyTypes", "AvatarClothingRulesAssetIdPropertyTypes", "ClassicClothingTypes", "HumanoidDescriptionClothingTypes", "AccessoryTypeToAssetType", "AccessoryAssetTypes", "ClothingAssetTypes", "AvatarAnimationAssetIdPropertyToAnimationStringValue", "CollisionBoxPartNames", "HighlightProperties", "boundingBoxProps"}]
  LOADK R6 K50 ["AvatarPreviewContainer"]
  SETTABLEKS R6 R5 K24 ["ParentCameraName"]
  LOADK R6 K8 ["AvatarPreview"]
  SETTABLEKS R6 R5 K25 ["AvatarPreviewFolderName"]
  LOADK R6 K51 ["AvatarSettingsPreviewFolder"]
  SETTABLEKS R6 R5 K26 ["AvatarPreviewFolderTag"]
  LOADK R6 K52 [0.5]
  SETTABLEKS R6 R5 K27 ["CollisionBoxVisibleTransparency"]
  LOADN R6 1
  SETTABLEKS R6 R5 K28 ["CollisionBoxInvisibleTransparency"]
  GETIMPORT R6 K55 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 139
  LOADN R9 219
  CALL R6 3 1
  SETTABLEKS R6 R5 K29 ["CollisionBoxVisibleColor"]
  GETIMPORT R6 K55 [Color3.fromRGB]
  LOADN R7 163
  LOADN R8 162
  LOADN R9 165
  CALL R6 3 1
  SETTABLEKS R6 R5 K30 ["CollisionBoxInvisibleColor"]
  LOADK R6 K56 [0.001]
  SETTABLEKS R6 R5 K31 ["BLOCKCAST_VERTICAL_PADDING"]
  MOVE R6 R3
  CALL R6 0 1
  SETTABLEKS R6 R5 K32 ["AvatarSpacing"]
  LOADN R6 50
  SETTABLEKS R6 R5 K33 ["MaxPreviewPlacementDistance"]
  DUPTABLE R6 K63 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K34 ["DennisAvatar"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 93
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K64 [2219390889]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 3
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K68 [Enum.HumanoidRigType.R6]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 1
  NEWTABLE R8 4 0
  GETIMPORT R9 K70 [Enum.AccessoryType.Hair]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K71 [4637254498]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K73 ["IsLayered"]
  GETTABLEKS R9 R4 K18 ["Hair"]
  SETTABLEKS R9 R8 K74 ["Order"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  SETTABLEKS R6 R5 K34 ["DennisAvatar"]
  DUPTABLE R6 K63 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K35 ["MagmaFiend"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 173
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K75 [474312030]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 4
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K77 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 4
  NEWTABLE R8 2 0
  GETIMPORT R9 K79 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K80 [131851650016277]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  NEWTABLE R9 2 0
  GETIMPORT R10 K79 [Enum.AccessoryType.Hat]
  SETTABLEKS R10 R9 K69 ["AccessoryType"]
  LOADK R10 K81 [100932329]
  SETTABLEKS R10 R9 K72 ["AssetId"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K83 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R11 R10 K69 ["AccessoryType"]
  LOADK R11 K84 [70960023800066]
  SETTABLEKS R11 R10 K72 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K73 ["IsLayered"]
  GETTABLEKS R11 R4 K19 ["Shoes"]
  SETTABLEKS R11 R10 K74 ["Order"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K86 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R12 R11 K69 ["AccessoryType"]
  LOADK R12 K87 [90757027592921]
  SETTABLEKS R12 R11 K72 ["AssetId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["IsLayered"]
  GETTABLEKS R12 R4 K19 ["Shoes"]
  SETTABLEKS R12 R11 K74 ["Order"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  SETTABLEKS R6 R5 K35 ["MagmaFiend"]
  DUPTABLE R6 K92 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "keepDefaultAccessories", "scaleData", "accessories", "shirtId", "pantsId"}]
  LOADK R7 K36 ["Roxie"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 220
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K93 [12092458560]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 2
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K77 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  LOADB R7 1
  SETTABLEKS R7 R6 K88 ["keepDefaultAccessories"]
  DUPTABLE R7 K100 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K94 ["BodyTypeScale"]
  LOADK R8 K101 [0.85]
  SETTABLEKS R8 R7 K95 ["DepthScale"]
  LOADK R8 K102 [0.95]
  SETTABLEKS R8 R7 K96 ["HeadScale"]
  LOADK R8 K103 [0.9]
  SETTABLEKS R8 R7 K97 ["HeightScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K98 ["ProportionScale"]
  LOADK R8 K103 [0.9]
  SETTABLEKS R8 R7 K99 ["WidthScale"]
  SETTABLEKS R7 R6 K89 ["scaleData"]
  NEWTABLE R7 0 5
  NEWTABLE R8 4 0
  GETIMPORT R9 K105 [Enum.AccessoryType.TShirt]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K106 [11625089378]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K73 ["IsLayered"]
  GETTABLEKS R9 R4 K21 ["Tops"]
  SETTABLEKS R9 R8 K74 ["Order"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K108 [Enum.AccessoryType.Shorts]
  SETTABLEKS R10 R9 K69 ["AccessoryType"]
  LOADK R10 K109 [7192687500]
  SETTABLEKS R10 R9 K72 ["AssetId"]
  LOADB R10 1
  SETTABLEKS R10 R9 K73 ["IsLayered"]
  GETTABLEKS R10 R4 K20 ["Bottoms"]
  SETTABLEKS R10 R9 K74 ["Order"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K111 [Enum.AccessoryType.Jacket]
  SETTABLEKS R11 R10 K69 ["AccessoryType"]
  LOADK R11 K112 [17259226347]
  SETTABLEKS R11 R10 K72 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K73 ["IsLayered"]
  GETTABLEKS R11 R4 K22 ["Outerwear"]
  SETTABLEKS R11 R10 K74 ["Order"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K83 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R12 R11 K69 ["AccessoryType"]
  LOADK R12 K113 [9614836327]
  SETTABLEKS R12 R11 K72 ["AssetId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["IsLayered"]
  GETTABLEKS R12 R4 K19 ["Shoes"]
  SETTABLEKS R12 R11 K74 ["Order"]
  NEWTABLE R12 4 0
  GETIMPORT R13 K86 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R13 R12 K69 ["AccessoryType"]
  LOADK R13 K114 [9614841343]
  SETTABLEKS R13 R12 K72 ["AssetId"]
  LOADB R13 1
  SETTABLEKS R13 R12 K73 ["IsLayered"]
  GETTABLEKS R13 R4 K19 ["Shoes"]
  SETTABLEKS R13 R12 K74 ["Order"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  LOADK R7 K115 [855766176]
  SETTABLEKS R7 R6 K90 ["shirtId"]
  LOADK R7 K116 [855781078]
  SETTABLEKS R7 R6 K91 ["pantsId"]
  SETTABLEKS R6 R5 K36 ["Roxie"]
  DUPTABLE R6 K117 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "scaleData", "accessories"}]
  LOADK R7 K37 ["JunkBot"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 77
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K118 [1704895554]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 1
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K77 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  DUPTABLE R7 K100 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K94 ["BodyTypeScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K95 ["DepthScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K96 ["HeadScale"]
  LOADK R8 K119 [1.05]
  SETTABLEKS R8 R7 K97 ["HeightScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K98 ["ProportionScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K99 ["WidthScale"]
  SETTABLEKS R7 R6 K89 ["scaleData"]
  NEWTABLE R7 0 2
  NEWTABLE R8 2 0
  GETIMPORT R9 K79 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K120 [4381828509]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K122 [Enum.AccessoryType.Back]
  SETTABLEKS R10 R9 K69 ["AccessoryType"]
  LOADK R10 K123 [745788688]
  SETTABLEKS R10 R9 K72 ["AssetId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K73 ["IsLayered"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  SETTABLEKS R6 R5 K37 ["JunkBot"]
  NEWTABLE R6 0 8
  DUPTABLE R7 K126 [{"property", "type"}]
  LOADK R8 K127 ["CustomHairAccessory"]
  SETTABLEKS R8 R7 K124 ["property"]
  GETIMPORT R8 K130 [Enum.AssetType.HairAccessory]
  SETTABLEKS R8 R7 K125 ["type"]
  DUPTABLE R8 K126 [{"property", "type"}]
  LOADK R9 K131 ["CustomHeadAccessory"]
  SETTABLEKS R9 R8 K124 ["property"]
  GETIMPORT R9 K132 [Enum.AssetType.Hat]
  SETTABLEKS R9 R8 K125 ["type"]
  DUPTABLE R9 K126 [{"property", "type"}]
  LOADK R10 K133 ["CustomFaceAccessory"]
  SETTABLEKS R10 R9 K124 ["property"]
  GETIMPORT R10 K135 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R10 R9 K125 ["type"]
  DUPTABLE R10 K126 [{"property", "type"}]
  LOADK R11 K136 ["CustomNeckAccessory"]
  SETTABLEKS R11 R10 K124 ["property"]
  GETIMPORT R11 K138 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R11 R10 K125 ["type"]
  DUPTABLE R11 K126 [{"property", "type"}]
  LOADK R12 K139 ["CustomShoulderAccessory"]
  SETTABLEKS R12 R11 K124 ["property"]
  GETIMPORT R12 K141 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R12 R11 K125 ["type"]
  DUPTABLE R12 K126 [{"property", "type"}]
  LOADK R13 K142 ["CustomFrontAccessory"]
  SETTABLEKS R13 R12 K124 ["property"]
  GETIMPORT R13 K144 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R13 R12 K125 ["type"]
  DUPTABLE R13 K126 [{"property", "type"}]
  LOADK R14 K145 ["CustomBackAccessory"]
  SETTABLEKS R14 R13 K124 ["property"]
  GETIMPORT R14 K147 [Enum.AssetType.BackAccessory]
  SETTABLEKS R14 R13 K125 ["type"]
  DUPTABLE R14 K126 [{"property", "type"}]
  LOADK R15 K148 ["CustomWaistAccessory"]
  SETTABLEKS R15 R14 K124 ["property"]
  GETIMPORT R15 K150 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R15 R14 K125 ["type"]
  SETLIST R6 R7 8 [1]
  SETTABLEKS R6 R5 K38 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 12
  DUPTABLE R7 K126 [{"property", "type"}]
  LOADK R8 K151 ["CustomTShirtAccessory"]
  SETTABLEKS R8 R7 K124 ["property"]
  GETIMPORT R8 K153 [Enum.AssetType.TShirtAccessory]
  SETTABLEKS R8 R7 K125 ["type"]
  DUPTABLE R8 K126 [{"property", "type"}]
  LOADK R9 K154 ["CustomShirtAccessory"]
  SETTABLEKS R9 R8 K124 ["property"]
  GETIMPORT R9 K156 [Enum.AssetType.ShirtAccessory]
  SETTABLEKS R9 R8 K125 ["type"]
  DUPTABLE R9 K126 [{"property", "type"}]
  LOADK R10 K157 ["CustomJacketAccessory"]
  SETTABLEKS R10 R9 K124 ["property"]
  GETIMPORT R10 K159 [Enum.AssetType.JacketAccessory]
  SETTABLEKS R10 R9 K125 ["type"]
  DUPTABLE R10 K126 [{"property", "type"}]
  LOADK R11 K160 ["CustomSweaterAccessory"]
  SETTABLEKS R11 R10 K124 ["property"]
  GETIMPORT R11 K162 [Enum.AssetType.SweaterAccessory]
  SETTABLEKS R11 R10 K125 ["type"]
  DUPTABLE R11 K126 [{"property", "type"}]
  LOADK R12 K163 ["CustomPantsAccessory"]
  SETTABLEKS R12 R11 K124 ["property"]
  GETIMPORT R12 K165 [Enum.AssetType.PantsAccessory]
  SETTABLEKS R12 R11 K125 ["type"]
  DUPTABLE R12 K126 [{"property", "type"}]
  LOADK R13 K166 ["CustomShortsAccessory"]
  SETTABLEKS R13 R12 K124 ["property"]
  GETIMPORT R13 K168 [Enum.AssetType.ShortsAccessory]
  SETTABLEKS R13 R12 K125 ["type"]
  DUPTABLE R13 K126 [{"property", "type"}]
  LOADK R14 K169 ["CustomDressSkirtAccessory"]
  SETTABLEKS R14 R13 K124 ["property"]
  GETIMPORT R14 K171 [Enum.AssetType.DressSkirtAccessory]
  SETTABLEKS R14 R13 K125 ["type"]
  DUPTABLE R14 K126 [{"property", "type"}]
  LOADK R15 K172 ["CustomLeftShoesAccessory"]
  SETTABLEKS R15 R14 K124 ["property"]
  GETIMPORT R15 K174 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R15 R14 K125 ["type"]
  DUPTABLE R15 K126 [{"property", "type"}]
  LOADK R16 K175 ["CustomRightShoesAccessory"]
  SETTABLEKS R16 R15 K124 ["property"]
  GETIMPORT R16 K177 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R16 R15 K125 ["type"]
  DUPTABLE R16 K126 [{"property", "type"}]
  LOADK R17 K178 ["CustomClassicShirtsAccessory"]
  SETTABLEKS R17 R16 K124 ["property"]
  GETIMPORT R17 K180 [Enum.AssetType.Shirt]
  SETTABLEKS R17 R16 K125 ["type"]
  DUPTABLE R17 K126 [{"property", "type"}]
  LOADK R18 K181 ["CustomClassicTShirtsAccessory"]
  SETTABLEKS R18 R17 K124 ["property"]
  GETIMPORT R18 K182 [Enum.AssetType.TShirt]
  SETTABLEKS R18 R17 K125 ["type"]
  DUPTABLE R18 K126 [{"property", "type"}]
  LOADK R19 K183 ["CustomClassicPantsAccessory"]
  SETTABLEKS R19 R18 K124 ["property"]
  GETIMPORT R19 K185 [Enum.AssetType.Pants]
  SETTABLEKS R19 R18 K125 ["type"]
  SETLIST R6 R7 12 [1]
  SETTABLEKS R6 R5 K39 ["AvatarClothingRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 3
  GETIMPORT R8 K182 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K186 ["Name"]
  GETIMPORT R9 K180 [Enum.AssetType.Shirt]
  GETTABLEKS R8 R9 K186 ["Name"]
  GETIMPORT R10 K185 [Enum.AssetType.Pants]
  GETTABLEKS R9 R10 K186 ["Name"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K40 ["ClassicClothingTypes"]
  NEWTABLE R6 4 0
  GETIMPORT R8 K182 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADK R8 K187 ["GraphicTShirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K180 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADK R8 K179 ["Shirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K185 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADK R8 K184 ["Pants"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K41 ["HumanoidDescriptionClothingTypes"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K79 [Enum.AccessoryType.Hat]
  GETIMPORT R9 K132 [Enum.AssetType.Hat]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K70 [Enum.AccessoryType.Hair]
  GETIMPORT R9 K130 [Enum.AssetType.HairAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K188 [Enum.AccessoryType.Face]
  GETIMPORT R9 K135 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K190 [Enum.AccessoryType.Neck]
  GETIMPORT R9 K138 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K192 [Enum.AccessoryType.Shoulder]
  GETIMPORT R9 K141 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K194 [Enum.AccessoryType.Front]
  GETIMPORT R9 K144 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K122 [Enum.AccessoryType.Back]
  GETIMPORT R9 K147 [Enum.AssetType.BackAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K196 [Enum.AccessoryType.Waist]
  GETIMPORT R9 K150 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K105 [Enum.AccessoryType.TShirt]
  GETIMPORT R9 K153 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K197 [Enum.AccessoryType.Shirt]
  GETIMPORT R9 K156 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K111 [Enum.AccessoryType.Jacket]
  GETIMPORT R9 K159 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K199 [Enum.AccessoryType.Sweater]
  GETIMPORT R9 K162 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K200 [Enum.AccessoryType.Pants]
  GETIMPORT R9 K165 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K108 [Enum.AccessoryType.Shorts]
  GETIMPORT R9 K168 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K202 [Enum.AccessoryType.DressSkirt]
  GETIMPORT R9 K171 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K83 [Enum.AccessoryType.LeftShoe]
  GETIMPORT R9 K174 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K86 [Enum.AccessoryType.RightShoe]
  GETIMPORT R9 K177 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R8 R9 K186 ["Name"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K42 ["AccessoryTypeToAssetType"]
  NEWTABLE R6 8 0
  GETIMPORT R8 K132 [Enum.AssetType.Hat]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K130 [Enum.AssetType.HairAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K135 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K138 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K141 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K144 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K147 [Enum.AssetType.BackAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K150 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K43 ["AccessoryAssetTypes"]
  NEWTABLE R6 16 0
  GETIMPORT R8 K153 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K156 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K159 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K162 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K165 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K168 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K171 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K174 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K177 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K182 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K180 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K185 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K186 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K44 ["ClothingAssetTypes"]
  NEWTABLE R6 16 0
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K206 ["run"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K207 ["RunAnim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K208 ["CustomRunAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K209 ["walk"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K210 ["WalkAnim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K211 ["CustomWalkAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K212 ["fall"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K213 ["FallAnim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K214 ["CustomFallAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K215 ["jump"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K216 ["JumpAnim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K217 ["CustomJumpAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K218 ["idle"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K219 ["Animation1"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K220 ["CustomIdleAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K218 ["idle"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K221 ["Animation2"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K222 ["CustomIdleAlt1Animation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K218 ["idle"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K223 ["Animation3"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K224 ["CustomIdleAlt2Animation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K225 ["swim"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K226 ["Swim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K227 ["CustomSwimAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K228 ["swimidle"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K229 ["SwimIdle"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K230 ["CustomSwimIdleAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K231 ["climb"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K232 ["ClimbAnim"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K233 ["CustomClimbAnimation"]
  DUPTABLE R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K234 ["mood"]
  SETTABLEKS R8 R7 K203 ["stringValueInstanceName"]
  LOADK R8 K219 ["Animation1"]
  SETTABLEKS R8 R7 K204 ["animationInstanceName"]
  SETTABLEKS R7 R6 K235 ["CustomMoodAnimation"]
  SETTABLEKS R6 R5 K45 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
  NEWTABLE R6 0 7
  LOADK R7 K236 ["CollisionPart"]
  LOADK R8 K237 ["CollisionHead"]
  LOADK R9 K238 ["CollisionTorso"]
  LOADK R10 K239 ["CollisionLeftLeg"]
  LOADK R11 K240 ["CollisionRightLeg"]
  LOADK R12 K241 ["CollisionLeftArm"]
  LOADK R13 K242 ["CollisionRightArm"]
  SETLIST R6 R7 7 [1]
  SETTABLEKS R6 R5 K46 ["CollisionBoxPartNames"]
  DUPTABLE R6 K248 [{"HighlightName", "FillColor", "OutlineColor", "FillTransparency", "OutlineTransparency"}]
  LOADK R7 K249 ["AccessoryHighlight"]
  SETTABLEKS R7 R6 K243 ["HighlightName"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K244 ["FillColor"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K245 ["OutlineColor"]
  LOADK R7 K250 [0.15]
  SETTABLEKS R7 R6 K246 ["FillTransparency"]
  LOADK R7 K52 [0.5]
  SETTABLEKS R7 R6 K247 ["OutlineTransparency"]
  SETTABLEKS R6 R5 K47 ["HighlightProperties"]
  DUPTABLE R6 K255 [{"name", "tag", "color", "transparency", "material"}]
  LOADK R7 K0 ["script"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADK R7 K1 [script]
  SETTABLEKS R7 R6 K251 ["tag"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 0
  LOADN R9 139
  LOADN R10 219
  CALL R7 3 1
  SETTABLEKS R7 R6 K252 ["color"]
  LOADK R7 K2 ["AvatarSettings"]
  SETTABLEKS R7 R6 K253 ["transparency"]
  GETIMPORT R7 K261 [Enum.Material.SmoothPlastic]
  SETTABLEKS R7 R6 K254 ["material"]
  SETTABLEKS R6 R5 K48 ["boundingBoxProps"]
  RETURN R5 1
