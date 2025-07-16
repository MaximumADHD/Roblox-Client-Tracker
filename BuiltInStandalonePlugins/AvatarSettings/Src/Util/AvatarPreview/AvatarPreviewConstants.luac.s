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
  DUPTABLE R6 K90 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "keepDefaultAccessories", "scaleData", "accessories"}]
  LOADK R7 K36 ["Roxie"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 220
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K91 [12092458560]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 2
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K77 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  LOADB R7 1
  SETTABLEKS R7 R6 K88 ["keepDefaultAccessories"]
  DUPTABLE R7 K98 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K92 ["BodyTypeScale"]
  LOADK R8 K99 [0.85]
  SETTABLEKS R8 R7 K93 ["DepthScale"]
  LOADK R8 K100 [0.95]
  SETTABLEKS R8 R7 K94 ["HeadScale"]
  LOADK R8 K101 [0.9]
  SETTABLEKS R8 R7 K95 ["HeightScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K96 ["ProportionScale"]
  LOADK R8 K101 [0.9]
  SETTABLEKS R8 R7 K97 ["WidthScale"]
  SETTABLEKS R7 R6 K89 ["scaleData"]
  NEWTABLE R7 0 5
  NEWTABLE R8 4 0
  GETIMPORT R9 K103 [Enum.AccessoryType.TShirt]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K104 [11625089378]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K73 ["IsLayered"]
  GETTABLEKS R9 R4 K21 ["Tops"]
  SETTABLEKS R9 R8 K74 ["Order"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K106 [Enum.AccessoryType.Shorts]
  SETTABLEKS R10 R9 K69 ["AccessoryType"]
  LOADK R10 K107 [7192687500]
  SETTABLEKS R10 R9 K72 ["AssetId"]
  LOADB R10 1
  SETTABLEKS R10 R9 K73 ["IsLayered"]
  GETTABLEKS R10 R4 K20 ["Bottoms"]
  SETTABLEKS R10 R9 K74 ["Order"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K109 [Enum.AccessoryType.Jacket]
  SETTABLEKS R11 R10 K69 ["AccessoryType"]
  LOADK R11 K110 [17259226347]
  SETTABLEKS R11 R10 K72 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K73 ["IsLayered"]
  GETTABLEKS R11 R4 K22 ["Outerwear"]
  SETTABLEKS R11 R10 K74 ["Order"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K83 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R12 R11 K69 ["AccessoryType"]
  LOADK R12 K111 [9614836327]
  SETTABLEKS R12 R11 K72 ["AssetId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["IsLayered"]
  GETTABLEKS R12 R4 K19 ["Shoes"]
  SETTABLEKS R12 R11 K74 ["Order"]
  NEWTABLE R12 4 0
  GETIMPORT R13 K86 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R13 R12 K69 ["AccessoryType"]
  LOADK R13 K112 [9614841343]
  SETTABLEKS R13 R12 K72 ["AssetId"]
  LOADB R13 1
  SETTABLEKS R13 R12 K73 ["IsLayered"]
  GETTABLEKS R13 R4 K19 ["Shoes"]
  SETTABLEKS R13 R12 K74 ["Order"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  SETTABLEKS R6 R5 K36 ["Roxie"]
  DUPTABLE R6 K113 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "scaleData", "accessories"}]
  LOADK R7 K37 ["JunkBot"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADN R7 77
  SETTABLEKS R7 R6 K58 ["bundleId"]
  LOADK R7 K114 [1704895554]
  SETTABLEKS R7 R6 K59 ["outfitId"]
  LOADN R7 1
  SETTABLEKS R7 R6 K60 ["insertionOrder"]
  GETIMPORT R7 K77 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K61 ["defaultHumanoidRigType"]
  DUPTABLE R7 K98 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K92 ["BodyTypeScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K93 ["DepthScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K94 ["HeadScale"]
  LOADK R8 K115 [1.05]
  SETTABLEKS R8 R7 K95 ["HeightScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K96 ["ProportionScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K97 ["WidthScale"]
  SETTABLEKS R7 R6 K89 ["scaleData"]
  NEWTABLE R7 0 2
  NEWTABLE R8 2 0
  GETIMPORT R9 K79 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K69 ["AccessoryType"]
  LOADK R9 K116 [4381828509]
  SETTABLEKS R9 R8 K72 ["AssetId"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K118 [Enum.AccessoryType.Back]
  SETTABLEKS R10 R9 K69 ["AccessoryType"]
  LOADK R10 K119 [745788688]
  SETTABLEKS R10 R9 K72 ["AssetId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K73 ["IsLayered"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K62 ["accessories"]
  SETTABLEKS R6 R5 K37 ["JunkBot"]
  NEWTABLE R6 0 8
  DUPTABLE R7 K122 [{"property", "type"}]
  LOADK R8 K123 ["CustomHairAccessory"]
  SETTABLEKS R8 R7 K120 ["property"]
  GETIMPORT R8 K126 [Enum.AssetType.HairAccessory]
  SETTABLEKS R8 R7 K121 ["type"]
  DUPTABLE R8 K122 [{"property", "type"}]
  LOADK R9 K127 ["CustomHeadAccessory"]
  SETTABLEKS R9 R8 K120 ["property"]
  GETIMPORT R9 K128 [Enum.AssetType.Hat]
  SETTABLEKS R9 R8 K121 ["type"]
  DUPTABLE R9 K122 [{"property", "type"}]
  LOADK R10 K129 ["CustomFaceAccessory"]
  SETTABLEKS R10 R9 K120 ["property"]
  GETIMPORT R10 K131 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R10 R9 K121 ["type"]
  DUPTABLE R10 K122 [{"property", "type"}]
  LOADK R11 K132 ["CustomNeckAccessory"]
  SETTABLEKS R11 R10 K120 ["property"]
  GETIMPORT R11 K134 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R11 R10 K121 ["type"]
  DUPTABLE R11 K122 [{"property", "type"}]
  LOADK R12 K135 ["CustomShoulderAccessory"]
  SETTABLEKS R12 R11 K120 ["property"]
  GETIMPORT R12 K137 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R12 R11 K121 ["type"]
  DUPTABLE R12 K122 [{"property", "type"}]
  LOADK R13 K138 ["CustomFrontAccessory"]
  SETTABLEKS R13 R12 K120 ["property"]
  GETIMPORT R13 K140 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R13 R12 K121 ["type"]
  DUPTABLE R13 K122 [{"property", "type"}]
  LOADK R14 K141 ["CustomBackAccessory"]
  SETTABLEKS R14 R13 K120 ["property"]
  GETIMPORT R14 K143 [Enum.AssetType.BackAccessory]
  SETTABLEKS R14 R13 K121 ["type"]
  DUPTABLE R14 K122 [{"property", "type"}]
  LOADK R15 K144 ["CustomWaistAccessory"]
  SETTABLEKS R15 R14 K120 ["property"]
  GETIMPORT R15 K146 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R15 R14 K121 ["type"]
  SETLIST R6 R7 8 [1]
  SETTABLEKS R6 R5 K38 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 12
  DUPTABLE R7 K122 [{"property", "type"}]
  LOADK R8 K147 ["CustomTShirtAccessory"]
  SETTABLEKS R8 R7 K120 ["property"]
  GETIMPORT R8 K149 [Enum.AssetType.TShirtAccessory]
  SETTABLEKS R8 R7 K121 ["type"]
  DUPTABLE R8 K122 [{"property", "type"}]
  LOADK R9 K150 ["CustomShirtAccessory"]
  SETTABLEKS R9 R8 K120 ["property"]
  GETIMPORT R9 K152 [Enum.AssetType.ShirtAccessory]
  SETTABLEKS R9 R8 K121 ["type"]
  DUPTABLE R9 K122 [{"property", "type"}]
  LOADK R10 K153 ["CustomJacketAccessory"]
  SETTABLEKS R10 R9 K120 ["property"]
  GETIMPORT R10 K155 [Enum.AssetType.JacketAccessory]
  SETTABLEKS R10 R9 K121 ["type"]
  DUPTABLE R10 K122 [{"property", "type"}]
  LOADK R11 K156 ["CustomSweaterAccessory"]
  SETTABLEKS R11 R10 K120 ["property"]
  GETIMPORT R11 K158 [Enum.AssetType.SweaterAccessory]
  SETTABLEKS R11 R10 K121 ["type"]
  DUPTABLE R11 K122 [{"property", "type"}]
  LOADK R12 K159 ["CustomPantsAccessory"]
  SETTABLEKS R12 R11 K120 ["property"]
  GETIMPORT R12 K161 [Enum.AssetType.PantsAccessory]
  SETTABLEKS R12 R11 K121 ["type"]
  DUPTABLE R12 K122 [{"property", "type"}]
  LOADK R13 K162 ["CustomShortsAccessory"]
  SETTABLEKS R13 R12 K120 ["property"]
  GETIMPORT R13 K164 [Enum.AssetType.ShortsAccessory]
  SETTABLEKS R13 R12 K121 ["type"]
  DUPTABLE R13 K122 [{"property", "type"}]
  LOADK R14 K165 ["CustomDressSkirtAccessory"]
  SETTABLEKS R14 R13 K120 ["property"]
  GETIMPORT R14 K167 [Enum.AssetType.DressSkirtAccessory]
  SETTABLEKS R14 R13 K121 ["type"]
  DUPTABLE R14 K122 [{"property", "type"}]
  LOADK R15 K168 ["CustomLeftShoesAccessory"]
  SETTABLEKS R15 R14 K120 ["property"]
  GETIMPORT R15 K170 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R15 R14 K121 ["type"]
  DUPTABLE R15 K122 [{"property", "type"}]
  LOADK R16 K171 ["CustomRightShoesAccessory"]
  SETTABLEKS R16 R15 K120 ["property"]
  GETIMPORT R16 K173 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R16 R15 K121 ["type"]
  DUPTABLE R16 K122 [{"property", "type"}]
  LOADK R17 K174 ["CustomClassicShirtsAccessory"]
  SETTABLEKS R17 R16 K120 ["property"]
  GETIMPORT R17 K176 [Enum.AssetType.Shirt]
  SETTABLEKS R17 R16 K121 ["type"]
  DUPTABLE R17 K122 [{"property", "type"}]
  LOADK R18 K177 ["CustomClassicTShirtsAccessory"]
  SETTABLEKS R18 R17 K120 ["property"]
  GETIMPORT R18 K178 [Enum.AssetType.TShirt]
  SETTABLEKS R18 R17 K121 ["type"]
  DUPTABLE R18 K122 [{"property", "type"}]
  LOADK R19 K179 ["CustomClassicPantsAccessory"]
  SETTABLEKS R19 R18 K120 ["property"]
  GETIMPORT R19 K181 [Enum.AssetType.Pants]
  SETTABLEKS R19 R18 K121 ["type"]
  SETLIST R6 R7 12 [1]
  SETTABLEKS R6 R5 K39 ["AvatarClothingRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 3
  GETIMPORT R8 K178 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K182 ["Name"]
  GETIMPORT R9 K176 [Enum.AssetType.Shirt]
  GETTABLEKS R8 R9 K182 ["Name"]
  GETIMPORT R10 K181 [Enum.AssetType.Pants]
  GETTABLEKS R9 R10 K182 ["Name"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K40 ["ClassicClothingTypes"]
  NEWTABLE R6 4 0
  GETIMPORT R8 K178 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADK R8 K183 ["GraphicTShirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K176 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADK R8 K175 ["Shirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K181 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADK R8 K180 ["Pants"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K41 ["HumanoidDescriptionClothingTypes"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K79 [Enum.AccessoryType.Hat]
  GETIMPORT R9 K128 [Enum.AssetType.Hat]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K70 [Enum.AccessoryType.Hair]
  GETIMPORT R9 K126 [Enum.AssetType.HairAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K184 [Enum.AccessoryType.Face]
  GETIMPORT R9 K131 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K186 [Enum.AccessoryType.Neck]
  GETIMPORT R9 K134 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K188 [Enum.AccessoryType.Shoulder]
  GETIMPORT R9 K137 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K190 [Enum.AccessoryType.Front]
  GETIMPORT R9 K140 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K118 [Enum.AccessoryType.Back]
  GETIMPORT R9 K143 [Enum.AssetType.BackAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K192 [Enum.AccessoryType.Waist]
  GETIMPORT R9 K146 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K103 [Enum.AccessoryType.TShirt]
  GETIMPORT R9 K149 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K193 [Enum.AccessoryType.Shirt]
  GETIMPORT R9 K152 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K109 [Enum.AccessoryType.Jacket]
  GETIMPORT R9 K155 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K195 [Enum.AccessoryType.Sweater]
  GETIMPORT R9 K158 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K196 [Enum.AccessoryType.Pants]
  GETIMPORT R9 K161 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K106 [Enum.AccessoryType.Shorts]
  GETIMPORT R9 K164 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K198 [Enum.AccessoryType.DressSkirt]
  GETIMPORT R9 K167 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K83 [Enum.AccessoryType.LeftShoe]
  GETIMPORT R9 K170 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K86 [Enum.AccessoryType.RightShoe]
  GETIMPORT R9 K173 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R8 R9 K182 ["Name"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K42 ["AccessoryTypeToAssetType"]
  NEWTABLE R6 8 0
  GETIMPORT R8 K128 [Enum.AssetType.Hat]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K126 [Enum.AssetType.HairAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K131 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K134 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K137 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K140 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K143 [Enum.AssetType.BackAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K146 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K43 ["AccessoryAssetTypes"]
  NEWTABLE R6 16 0
  GETIMPORT R8 K149 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K152 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K155 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K158 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K161 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K164 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K167 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K170 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K173 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K178 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K176 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K181 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K182 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K44 ["ClothingAssetTypes"]
  NEWTABLE R6 16 0
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K202 ["run"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K203 ["RunAnim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K204 ["CustomRunAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K205 ["walk"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K206 ["WalkAnim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K207 ["CustomWalkAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K208 ["fall"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K209 ["FallAnim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K210 ["CustomFallAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K211 ["jump"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K212 ["JumpAnim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K213 ["CustomJumpAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K214 ["idle"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K215 ["Animation1"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K216 ["CustomIdleAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K214 ["idle"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K217 ["Animation2"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K218 ["CustomIdleAlt1Animation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K214 ["idle"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K219 ["Animation3"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K220 ["CustomIdleAlt2Animation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K221 ["swim"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K222 ["Swim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K223 ["CustomSwimAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K224 ["swimidle"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K225 ["SwimIdle"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K226 ["CustomSwimIdleAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K227 ["climb"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K228 ["ClimbAnim"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K229 ["CustomClimbAnimation"]
  DUPTABLE R7 K201 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K230 ["mood"]
  SETTABLEKS R8 R7 K199 ["stringValueInstanceName"]
  LOADK R8 K215 ["Animation1"]
  SETTABLEKS R8 R7 K200 ["animationInstanceName"]
  SETTABLEKS R7 R6 K231 ["CustomMoodAnimation"]
  SETTABLEKS R6 R5 K45 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
  NEWTABLE R6 0 7
  LOADK R7 K232 ["CollisionPart"]
  LOADK R8 K233 ["CollisionHead"]
  LOADK R9 K234 ["CollisionTorso"]
  LOADK R10 K235 ["CollisionLeftLeg"]
  LOADK R11 K236 ["CollisionRightLeg"]
  LOADK R12 K237 ["CollisionLeftArm"]
  LOADK R13 K238 ["CollisionRightArm"]
  SETLIST R6 R7 7 [1]
  SETTABLEKS R6 R5 K46 ["CollisionBoxPartNames"]
  DUPTABLE R6 K244 [{"HighlightName", "FillColor", "OutlineColor", "FillTransparency", "OutlineTransparency"}]
  LOADK R7 K245 ["AccessoryHighlight"]
  SETTABLEKS R7 R6 K239 ["HighlightName"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K240 ["FillColor"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K241 ["OutlineColor"]
  LOADK R7 K246 [0.15]
  SETTABLEKS R7 R6 K242 ["FillTransparency"]
  LOADK R7 K52 [0.5]
  SETTABLEKS R7 R6 K243 ["OutlineTransparency"]
  SETTABLEKS R6 R5 K47 ["HighlightProperties"]
  DUPTABLE R6 K251 [{"name", "tag", "color", "transparency", "material"}]
  LOADK R7 K252 ["BoundingBoxPart"]
  SETTABLEKS R7 R6 K57 ["name"]
  LOADK R7 K253 ["AvatarPreviewBoundingBox"]
  SETTABLEKS R7 R6 K247 ["tag"]
  GETIMPORT R7 K55 [Color3.fromRGB]
  LOADN R8 0
  LOADN R9 139
  LOADN R10 219
  CALL R7 3 1
  SETTABLEKS R7 R6 K248 ["color"]
  LOADK R7 K254 [0.7]
  SETTABLEKS R7 R6 K249 ["transparency"]
  GETIMPORT R7 K257 [Enum.Material.SmoothPlastic]
  SETTABLEKS R7 R6 K250 ["material"]
  SETTABLEKS R6 R5 K48 ["boundingBoxProps"]
  RETURN R5 1
