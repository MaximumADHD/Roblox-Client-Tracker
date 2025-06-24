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
  DUPTABLE R5 K46 [{"ParentCameraName", "AvatarPreviewFolderName", "AvatarPreviewFolderTag", "CollisionBoxVisibleTransparency", "CollisionBoxInvisibleTransparency", "CollisionBoxVisibleColor", "CollisionBoxInvisibleColor", "AvatarSpacing", "MaxPreviewPlacementDistance", "DennisAvatar", "MagmaFiend", "LinLin", "JunkBot", "AvatarAccessoryRulesAssetIdPropertyTypes", "AvatarClothingRulesAssetIdPropertyTypes", "ClassicClothingTypes", "HumanoidDescriptionClothingTypes", "AccessoryTypeToAssetType", "AccessoryAssetTypes", "ClothingAssetTypes", "AvatarAnimationAssetIdPropertyToAnimationStringValue", "CollisionBoxPartNames"}]
  LOADK R6 K47 ["AvatarPreviewContainer"]
  SETTABLEKS R6 R5 K24 ["ParentCameraName"]
  LOADK R6 K8 ["AvatarPreview"]
  SETTABLEKS R6 R5 K25 ["AvatarPreviewFolderName"]
  LOADK R6 K48 ["AvatarSettingsPreviewFolder"]
  SETTABLEKS R6 R5 K26 ["AvatarPreviewFolderTag"]
  LOADK R6 K49 [0.5]
  SETTABLEKS R6 R5 K27 ["CollisionBoxVisibleTransparency"]
  LOADN R6 1
  SETTABLEKS R6 R5 K28 ["CollisionBoxInvisibleTransparency"]
  GETIMPORT R6 K52 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 139
  LOADN R9 219
  CALL R6 3 1
  SETTABLEKS R6 R5 K29 ["CollisionBoxVisibleColor"]
  GETIMPORT R6 K52 [Color3.fromRGB]
  LOADN R7 163
  LOADN R8 162
  LOADN R9 165
  CALL R6 3 1
  SETTABLEKS R6 R5 K30 ["CollisionBoxInvisibleColor"]
  MOVE R6 R3
  CALL R6 0 1
  SETTABLEKS R6 R5 K31 ["AvatarSpacing"]
  LOADN R6 50
  SETTABLEKS R6 R5 K32 ["MaxPreviewPlacementDistance"]
  DUPTABLE R6 K59 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K33 ["DennisAvatar"]
  SETTABLEKS R7 R6 K53 ["name"]
  LOADN R7 93
  SETTABLEKS R7 R6 K54 ["bundleId"]
  LOADK R7 K60 [2219390889]
  SETTABLEKS R7 R6 K55 ["outfitId"]
  LOADN R7 3
  SETTABLEKS R7 R6 K56 ["insertionOrder"]
  GETIMPORT R7 K64 [Enum.HumanoidRigType.R6]
  SETTABLEKS R7 R6 K57 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 1
  NEWTABLE R8 4 0
  GETIMPORT R9 K66 [Enum.AccessoryType.Hair]
  SETTABLEKS R9 R8 K65 ["AccessoryType"]
  LOADK R9 K67 [9243987340]
  SETTABLEKS R9 R8 K68 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["IsLayered"]
  GETTABLEKS R9 R4 K18 ["Hair"]
  SETTABLEKS R9 R8 K70 ["Order"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K58 ["accessories"]
  SETTABLEKS R6 R5 K33 ["DennisAvatar"]
  DUPTABLE R6 K59 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K34 ["MagmaFiend"]
  SETTABLEKS R7 R6 K53 ["name"]
  LOADN R7 173
  SETTABLEKS R7 R6 K54 ["bundleId"]
  LOADK R7 K71 [474312030]
  SETTABLEKS R7 R6 K55 ["outfitId"]
  LOADN R7 4
  SETTABLEKS R7 R6 K56 ["insertionOrder"]
  GETIMPORT R7 K73 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K57 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 4
  NEWTABLE R8 2 0
  GETIMPORT R9 K75 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K65 ["AccessoryType"]
  LOADK R9 K76 [131851650016277]
  SETTABLEKS R9 R8 K68 ["AssetId"]
  NEWTABLE R9 2 0
  GETIMPORT R10 K75 [Enum.AccessoryType.Hat]
  SETTABLEKS R10 R9 K65 ["AccessoryType"]
  LOADK R10 K77 [100932329]
  SETTABLEKS R10 R9 K68 ["AssetId"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K79 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R11 R10 K65 ["AccessoryType"]
  LOADK R11 K80 [70960023800066]
  SETTABLEKS R11 R10 K68 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K69 ["IsLayered"]
  GETTABLEKS R11 R4 K19 ["Shoes"]
  SETTABLEKS R11 R10 K70 ["Order"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K82 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R12 R11 K65 ["AccessoryType"]
  LOADK R12 K83 [90757027592921]
  SETTABLEKS R12 R11 K68 ["AssetId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K69 ["IsLayered"]
  GETTABLEKS R12 R4 K19 ["Shoes"]
  SETTABLEKS R12 R11 K70 ["Order"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K58 ["accessories"]
  SETTABLEKS R6 R5 K34 ["MagmaFiend"]
  DUPTABLE R6 K86 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "keepDefaultAccessories", "scaleData", "accessories"}]
  LOADK R7 K35 ["LinLin"]
  SETTABLEKS R7 R6 K53 ["name"]
  LOADN R7 229
  SETTABLEKS R7 R6 K54 ["bundleId"]
  LOADK R7 K87 [4886052516]
  SETTABLEKS R7 R6 K55 ["outfitId"]
  LOADN R7 2
  SETTABLEKS R7 R6 K56 ["insertionOrder"]
  GETIMPORT R7 K73 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K57 ["defaultHumanoidRigType"]
  LOADB R7 1
  SETTABLEKS R7 R6 K84 ["keepDefaultAccessories"]
  DUPTABLE R7 K94 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K88 ["BodyTypeScale"]
  LOADK R8 K95 [0.85]
  SETTABLEKS R8 R7 K89 ["DepthScale"]
  LOADK R8 K96 [0.95]
  SETTABLEKS R8 R7 K90 ["HeadScale"]
  LOADK R8 K97 [0.9]
  SETTABLEKS R8 R7 K91 ["HeightScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K92 ["ProportionScale"]
  LOADK R8 K97 [0.9]
  SETTABLEKS R8 R7 K93 ["WidthScale"]
  SETTABLEKS R7 R6 K85 ["scaleData"]
  NEWTABLE R7 0 3
  NEWTABLE R8 4 0
  GETIMPORT R9 K99 [Enum.AccessoryType.Jacket]
  SETTABLEKS R9 R8 K65 ["AccessoryType"]
  LOADK R9 K100 [17259226347]
  SETTABLEKS R9 R8 K68 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["IsLayered"]
  GETTABLEKS R9 R4 K22 ["Outerwear"]
  SETTABLEKS R9 R8 K70 ["Order"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K79 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R10 R9 K65 ["AccessoryType"]
  LOADK R10 K101 [9614836327]
  SETTABLEKS R10 R9 K68 ["AssetId"]
  LOADB R10 1
  SETTABLEKS R10 R9 K69 ["IsLayered"]
  GETTABLEKS R10 R4 K19 ["Shoes"]
  SETTABLEKS R10 R9 K70 ["Order"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K82 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R11 R10 K65 ["AccessoryType"]
  LOADK R11 K102 [9614841343]
  SETTABLEKS R11 R10 K68 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K69 ["IsLayered"]
  GETTABLEKS R11 R4 K19 ["Shoes"]
  SETTABLEKS R11 R10 K70 ["Order"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K58 ["accessories"]
  SETTABLEKS R6 R5 K35 ["LinLin"]
  DUPTABLE R6 K103 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "scaleData", "accessories"}]
  LOADK R7 K36 ["JunkBot"]
  SETTABLEKS R7 R6 K53 ["name"]
  LOADN R7 77
  SETTABLEKS R7 R6 K54 ["bundleId"]
  LOADK R7 K104 [1704895554]
  SETTABLEKS R7 R6 K55 ["outfitId"]
  LOADN R7 1
  SETTABLEKS R7 R6 K56 ["insertionOrder"]
  GETIMPORT R7 K73 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K57 ["defaultHumanoidRigType"]
  DUPTABLE R7 K94 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K88 ["BodyTypeScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K89 ["DepthScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K90 ["HeadScale"]
  LOADK R8 K105 [1.05]
  SETTABLEKS R8 R7 K91 ["HeightScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K92 ["ProportionScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K93 ["WidthScale"]
  SETTABLEKS R7 R6 K85 ["scaleData"]
  NEWTABLE R7 0 2
  NEWTABLE R8 2 0
  GETIMPORT R9 K75 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K65 ["AccessoryType"]
  LOADK R9 K106 [4381828509]
  SETTABLEKS R9 R8 K68 ["AssetId"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K108 [Enum.AccessoryType.Back]
  SETTABLEKS R10 R9 K65 ["AccessoryType"]
  LOADK R10 K109 [745788688]
  SETTABLEKS R10 R9 K68 ["AssetId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K69 ["IsLayered"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K58 ["accessories"]
  SETTABLEKS R6 R5 K36 ["JunkBot"]
  NEWTABLE R6 0 8
  DUPTABLE R7 K112 [{"property", "type"}]
  LOADK R8 K113 ["CustomHairAccessory"]
  SETTABLEKS R8 R7 K110 ["property"]
  GETIMPORT R8 K116 [Enum.AssetType.HairAccessory]
  SETTABLEKS R8 R7 K111 ["type"]
  DUPTABLE R8 K112 [{"property", "type"}]
  LOADK R9 K117 ["CustomHeadAccessory"]
  SETTABLEKS R9 R8 K110 ["property"]
  GETIMPORT R9 K118 [Enum.AssetType.Hat]
  SETTABLEKS R9 R8 K111 ["type"]
  DUPTABLE R9 K112 [{"property", "type"}]
  LOADK R10 K119 ["CustomFaceAccessory"]
  SETTABLEKS R10 R9 K110 ["property"]
  GETIMPORT R10 K121 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R10 R9 K111 ["type"]
  DUPTABLE R10 K112 [{"property", "type"}]
  LOADK R11 K122 ["CustomNeckAccessory"]
  SETTABLEKS R11 R10 K110 ["property"]
  GETIMPORT R11 K124 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R11 R10 K111 ["type"]
  DUPTABLE R11 K112 [{"property", "type"}]
  LOADK R12 K125 ["CustomShoulderAccessory"]
  SETTABLEKS R12 R11 K110 ["property"]
  GETIMPORT R12 K127 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R12 R11 K111 ["type"]
  DUPTABLE R12 K112 [{"property", "type"}]
  LOADK R13 K128 ["CustomFrontAccessory"]
  SETTABLEKS R13 R12 K110 ["property"]
  GETIMPORT R13 K130 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R13 R12 K111 ["type"]
  DUPTABLE R13 K112 [{"property", "type"}]
  LOADK R14 K131 ["CustomBackAccessory"]
  SETTABLEKS R14 R13 K110 ["property"]
  GETIMPORT R14 K133 [Enum.AssetType.BackAccessory]
  SETTABLEKS R14 R13 K111 ["type"]
  DUPTABLE R14 K112 [{"property", "type"}]
  LOADK R15 K134 ["CustomWaistAccessory"]
  SETTABLEKS R15 R14 K110 ["property"]
  GETIMPORT R15 K136 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R15 R14 K111 ["type"]
  SETLIST R6 R7 8 [1]
  SETTABLEKS R6 R5 K37 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 12
  DUPTABLE R7 K112 [{"property", "type"}]
  LOADK R8 K137 ["CustomTShirtAccessory"]
  SETTABLEKS R8 R7 K110 ["property"]
  GETIMPORT R8 K139 [Enum.AssetType.TShirtAccessory]
  SETTABLEKS R8 R7 K111 ["type"]
  DUPTABLE R8 K112 [{"property", "type"}]
  LOADK R9 K140 ["CustomShirtAccessory"]
  SETTABLEKS R9 R8 K110 ["property"]
  GETIMPORT R9 K142 [Enum.AssetType.ShirtAccessory]
  SETTABLEKS R9 R8 K111 ["type"]
  DUPTABLE R9 K112 [{"property", "type"}]
  LOADK R10 K143 ["CustomJacketAccessory"]
  SETTABLEKS R10 R9 K110 ["property"]
  GETIMPORT R10 K145 [Enum.AssetType.JacketAccessory]
  SETTABLEKS R10 R9 K111 ["type"]
  DUPTABLE R10 K112 [{"property", "type"}]
  LOADK R11 K146 ["CustomSweaterAccessory"]
  SETTABLEKS R11 R10 K110 ["property"]
  GETIMPORT R11 K148 [Enum.AssetType.SweaterAccessory]
  SETTABLEKS R11 R10 K111 ["type"]
  DUPTABLE R11 K112 [{"property", "type"}]
  LOADK R12 K149 ["CustomPantsAccessory"]
  SETTABLEKS R12 R11 K110 ["property"]
  GETIMPORT R12 K151 [Enum.AssetType.PantsAccessory]
  SETTABLEKS R12 R11 K111 ["type"]
  DUPTABLE R12 K112 [{"property", "type"}]
  LOADK R13 K152 ["CustomShortsAccessory"]
  SETTABLEKS R13 R12 K110 ["property"]
  GETIMPORT R13 K154 [Enum.AssetType.ShortsAccessory]
  SETTABLEKS R13 R12 K111 ["type"]
  DUPTABLE R13 K112 [{"property", "type"}]
  LOADK R14 K155 ["CustomDressSkirtAccessory"]
  SETTABLEKS R14 R13 K110 ["property"]
  GETIMPORT R14 K157 [Enum.AssetType.DressSkirtAccessory]
  SETTABLEKS R14 R13 K111 ["type"]
  DUPTABLE R14 K112 [{"property", "type"}]
  LOADK R15 K158 ["CustomLeftShoesAccessory"]
  SETTABLEKS R15 R14 K110 ["property"]
  GETIMPORT R15 K160 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R15 R14 K111 ["type"]
  DUPTABLE R15 K112 [{"property", "type"}]
  LOADK R16 K161 ["CustomRightShoesAccessory"]
  SETTABLEKS R16 R15 K110 ["property"]
  GETIMPORT R16 K163 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R16 R15 K111 ["type"]
  DUPTABLE R16 K112 [{"property", "type"}]
  LOADK R17 K164 ["CustomClassicShirtsAccessory"]
  SETTABLEKS R17 R16 K110 ["property"]
  GETIMPORT R17 K166 [Enum.AssetType.Shirt]
  SETTABLEKS R17 R16 K111 ["type"]
  DUPTABLE R17 K112 [{"property", "type"}]
  LOADK R18 K167 ["CustomClassicTShirtsAccessory"]
  SETTABLEKS R18 R17 K110 ["property"]
  GETIMPORT R18 K169 [Enum.AssetType.TShirt]
  SETTABLEKS R18 R17 K111 ["type"]
  DUPTABLE R18 K112 [{"property", "type"}]
  LOADK R19 K170 ["CustomClassicPantsAccessory"]
  SETTABLEKS R19 R18 K110 ["property"]
  GETIMPORT R19 K172 [Enum.AssetType.Pants]
  SETTABLEKS R19 R18 K111 ["type"]
  SETLIST R6 R7 12 [1]
  SETTABLEKS R6 R5 K38 ["AvatarClothingRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 3
  GETIMPORT R8 K169 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K173 ["Name"]
  GETIMPORT R9 K166 [Enum.AssetType.Shirt]
  GETTABLEKS R8 R9 K173 ["Name"]
  GETIMPORT R10 K172 [Enum.AssetType.Pants]
  GETTABLEKS R9 R10 K173 ["Name"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K39 ["ClassicClothingTypes"]
  NEWTABLE R6 4 0
  GETIMPORT R8 K169 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADK R8 K174 ["GraphicTShirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K166 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADK R8 K165 ["Shirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K172 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADK R8 K171 ["Pants"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K40 ["HumanoidDescriptionClothingTypes"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K75 [Enum.AccessoryType.Hat]
  GETIMPORT R9 K118 [Enum.AssetType.Hat]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K66 [Enum.AccessoryType.Hair]
  GETIMPORT R9 K116 [Enum.AssetType.HairAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K175 [Enum.AccessoryType.Face]
  GETIMPORT R9 K121 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K177 [Enum.AccessoryType.Neck]
  GETIMPORT R9 K124 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K179 [Enum.AccessoryType.Shoulder]
  GETIMPORT R9 K127 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K181 [Enum.AccessoryType.Front]
  GETIMPORT R9 K130 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K108 [Enum.AccessoryType.Back]
  GETIMPORT R9 K133 [Enum.AssetType.BackAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K183 [Enum.AccessoryType.Waist]
  GETIMPORT R9 K136 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K184 [Enum.AccessoryType.TShirt]
  GETIMPORT R9 K139 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K185 [Enum.AccessoryType.Shirt]
  GETIMPORT R9 K142 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K99 [Enum.AccessoryType.Jacket]
  GETIMPORT R9 K145 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K187 [Enum.AccessoryType.Sweater]
  GETIMPORT R9 K148 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K188 [Enum.AccessoryType.Pants]
  GETIMPORT R9 K151 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K190 [Enum.AccessoryType.Shorts]
  GETIMPORT R9 K154 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K192 [Enum.AccessoryType.DressSkirt]
  GETIMPORT R9 K157 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K79 [Enum.AccessoryType.LeftShoe]
  GETIMPORT R9 K160 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K82 [Enum.AccessoryType.RightShoe]
  GETIMPORT R9 K163 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R8 R9 K173 ["Name"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K41 ["AccessoryTypeToAssetType"]
  NEWTABLE R6 8 0
  GETIMPORT R8 K118 [Enum.AssetType.Hat]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K116 [Enum.AssetType.HairAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K121 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K124 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K127 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K130 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K133 [Enum.AssetType.BackAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K136 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K42 ["AccessoryAssetTypes"]
  NEWTABLE R6 16 0
  GETIMPORT R8 K139 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K142 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K145 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K148 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K151 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K154 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K157 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K160 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K163 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K169 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K166 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K172 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K173 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K43 ["ClothingAssetTypes"]
  NEWTABLE R6 16 0
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K196 ["run"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K197 ["RunAnim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K198 ["CustomRunAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K199 ["walk"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K200 ["WalkAnim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K201 ["CustomWalkAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K202 ["fall"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K203 ["FallAnim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K204 ["CustomFallAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K205 ["jump"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K206 ["JumpAnim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K207 ["CustomJumpAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K208 ["idle"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K209 ["Animation1"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K210 ["CustomIdleAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K208 ["idle"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K211 ["Animation2"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K212 ["CustomIdleAlt1Animation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K208 ["idle"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K213 ["Animation3"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K214 ["CustomIdleAlt2Animation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K215 ["swim"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K216 ["Swim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K217 ["CustomSwimAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K218 ["swimidle"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K219 ["SwimIdle"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K220 ["CustomSwimIdleAnimation"]
  DUPTABLE R7 K195 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K221 ["climb"]
  SETTABLEKS R8 R7 K193 ["stringValueInstanceName"]
  LOADK R8 K222 ["ClimbAnim"]
  SETTABLEKS R8 R7 K194 ["animationInstanceName"]
  SETTABLEKS R7 R6 K223 ["CustomClimbAnimation"]
  SETTABLEKS R6 R5 K44 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
  NEWTABLE R6 0 7
  LOADK R7 K224 ["CollisionBox"]
  LOADK R8 K225 ["CollisionHead"]
  LOADK R9 K226 ["CollisionTorso"]
  LOADK R10 K227 ["CollisionLeftLeg"]
  LOADK R11 K228 ["CollisionRightLeg"]
  LOADK R12 K229 ["CollisionLeftArm"]
  LOADK R13 K230 ["CollisionRightArm"]
  SETLIST R6 R7 7 [1]
  SETTABLEKS R6 R5 K45 ["CollisionBoxPartNames"]
  RETURN R5 1
