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
  DUPTABLE R5 K48 [{"ParentCameraName", "AvatarPreviewFolderName", "AvatarPreviewFolderTag", "CollisionBoxVisibleTransparency", "CollisionBoxInvisibleTransparency", "CollisionBoxVisibleColor", "CollisionBoxInvisibleColor", "BLOCKCAST_VERTICAL_PADDING", "AvatarSpacing", "MaxPreviewPlacementDistance", "DennisAvatar", "MagmaFiend", "LinLin", "JunkBot", "AvatarAccessoryRulesAssetIdPropertyTypes", "AvatarClothingRulesAssetIdPropertyTypes", "ClassicClothingTypes", "HumanoidDescriptionClothingTypes", "AccessoryTypeToAssetType", "AccessoryAssetTypes", "ClothingAssetTypes", "AvatarAnimationAssetIdPropertyToAnimationStringValue", "CollisionBoxPartNames", "HighlightProperties"}]
  LOADK R6 K49 ["AvatarPreviewContainer"]
  SETTABLEKS R6 R5 K24 ["ParentCameraName"]
  LOADK R6 K8 ["AvatarPreview"]
  SETTABLEKS R6 R5 K25 ["AvatarPreviewFolderName"]
  LOADK R6 K50 ["AvatarSettingsPreviewFolder"]
  SETTABLEKS R6 R5 K26 ["AvatarPreviewFolderTag"]
  LOADK R6 K51 [0.5]
  SETTABLEKS R6 R5 K27 ["CollisionBoxVisibleTransparency"]
  LOADN R6 1
  SETTABLEKS R6 R5 K28 ["CollisionBoxInvisibleTransparency"]
  GETIMPORT R6 K54 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 139
  LOADN R9 219
  CALL R6 3 1
  SETTABLEKS R6 R5 K29 ["CollisionBoxVisibleColor"]
  GETIMPORT R6 K54 [Color3.fromRGB]
  LOADN R7 163
  LOADN R8 162
  LOADN R9 165
  CALL R6 3 1
  SETTABLEKS R6 R5 K30 ["CollisionBoxInvisibleColor"]
  LOADK R6 K55 [0.001]
  SETTABLEKS R6 R5 K31 ["BLOCKCAST_VERTICAL_PADDING"]
  MOVE R6 R3
  CALL R6 0 1
  SETTABLEKS R6 R5 K32 ["AvatarSpacing"]
  LOADN R6 50
  SETTABLEKS R6 R5 K33 ["MaxPreviewPlacementDistance"]
  DUPTABLE R6 K62 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K34 ["DennisAvatar"]
  SETTABLEKS R7 R6 K56 ["name"]
  LOADN R7 93
  SETTABLEKS R7 R6 K57 ["bundleId"]
  LOADK R7 K63 [2219390889]
  SETTABLEKS R7 R6 K58 ["outfitId"]
  LOADN R7 3
  SETTABLEKS R7 R6 K59 ["insertionOrder"]
  GETIMPORT R7 K67 [Enum.HumanoidRigType.R6]
  SETTABLEKS R7 R6 K60 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 1
  NEWTABLE R8 4 0
  GETIMPORT R9 K69 [Enum.AccessoryType.Hair]
  SETTABLEKS R9 R8 K68 ["AccessoryType"]
  LOADK R9 K70 [9243987340]
  SETTABLEKS R9 R8 K71 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K72 ["IsLayered"]
  GETTABLEKS R9 R4 K18 ["Hair"]
  SETTABLEKS R9 R8 K73 ["Order"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K61 ["accessories"]
  SETTABLEKS R6 R5 K34 ["DennisAvatar"]
  DUPTABLE R6 K62 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
  LOADK R7 K35 ["MagmaFiend"]
  SETTABLEKS R7 R6 K56 ["name"]
  LOADN R7 173
  SETTABLEKS R7 R6 K57 ["bundleId"]
  LOADK R7 K74 [474312030]
  SETTABLEKS R7 R6 K58 ["outfitId"]
  LOADN R7 4
  SETTABLEKS R7 R6 K59 ["insertionOrder"]
  GETIMPORT R7 K76 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K60 ["defaultHumanoidRigType"]
  NEWTABLE R7 0 4
  NEWTABLE R8 2 0
  GETIMPORT R9 K78 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K68 ["AccessoryType"]
  LOADK R9 K79 [131851650016277]
  SETTABLEKS R9 R8 K71 ["AssetId"]
  NEWTABLE R9 2 0
  GETIMPORT R10 K78 [Enum.AccessoryType.Hat]
  SETTABLEKS R10 R9 K68 ["AccessoryType"]
  LOADK R10 K80 [100932329]
  SETTABLEKS R10 R9 K71 ["AssetId"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K82 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R11 R10 K68 ["AccessoryType"]
  LOADK R11 K83 [70960023800066]
  SETTABLEKS R11 R10 K71 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K72 ["IsLayered"]
  GETTABLEKS R11 R4 K19 ["Shoes"]
  SETTABLEKS R11 R10 K73 ["Order"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K85 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R12 R11 K68 ["AccessoryType"]
  LOADK R12 K86 [90757027592921]
  SETTABLEKS R12 R11 K71 ["AssetId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K72 ["IsLayered"]
  GETTABLEKS R12 R4 K19 ["Shoes"]
  SETTABLEKS R12 R11 K73 ["Order"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K61 ["accessories"]
  SETTABLEKS R6 R5 K35 ["MagmaFiend"]
  DUPTABLE R6 K89 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "keepDefaultAccessories", "scaleData", "accessories"}]
  LOADK R7 K36 ["LinLin"]
  SETTABLEKS R7 R6 K56 ["name"]
  LOADN R7 229
  SETTABLEKS R7 R6 K57 ["bundleId"]
  LOADK R7 K90 [4886052516]
  SETTABLEKS R7 R6 K58 ["outfitId"]
  LOADN R7 2
  SETTABLEKS R7 R6 K59 ["insertionOrder"]
  GETIMPORT R7 K76 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K60 ["defaultHumanoidRigType"]
  LOADB R7 1
  SETTABLEKS R7 R6 K87 ["keepDefaultAccessories"]
  DUPTABLE R7 K97 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K91 ["BodyTypeScale"]
  LOADK R8 K98 [0.85]
  SETTABLEKS R8 R7 K92 ["DepthScale"]
  LOADK R8 K99 [0.95]
  SETTABLEKS R8 R7 K93 ["HeadScale"]
  LOADK R8 K100 [0.9]
  SETTABLEKS R8 R7 K94 ["HeightScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K95 ["ProportionScale"]
  LOADK R8 K100 [0.9]
  SETTABLEKS R8 R7 K96 ["WidthScale"]
  SETTABLEKS R7 R6 K88 ["scaleData"]
  NEWTABLE R7 0 3
  NEWTABLE R8 4 0
  GETIMPORT R9 K102 [Enum.AccessoryType.Jacket]
  SETTABLEKS R9 R8 K68 ["AccessoryType"]
  LOADK R9 K103 [17259226347]
  SETTABLEKS R9 R8 K71 ["AssetId"]
  LOADB R9 1
  SETTABLEKS R9 R8 K72 ["IsLayered"]
  GETTABLEKS R9 R4 K22 ["Outerwear"]
  SETTABLEKS R9 R8 K73 ["Order"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K82 [Enum.AccessoryType.LeftShoe]
  SETTABLEKS R10 R9 K68 ["AccessoryType"]
  LOADK R10 K104 [9614836327]
  SETTABLEKS R10 R9 K71 ["AssetId"]
  LOADB R10 1
  SETTABLEKS R10 R9 K72 ["IsLayered"]
  GETTABLEKS R10 R4 K19 ["Shoes"]
  SETTABLEKS R10 R9 K73 ["Order"]
  NEWTABLE R10 4 0
  GETIMPORT R11 K85 [Enum.AccessoryType.RightShoe]
  SETTABLEKS R11 R10 K68 ["AccessoryType"]
  LOADK R11 K105 [9614841343]
  SETTABLEKS R11 R10 K71 ["AssetId"]
  LOADB R11 1
  SETTABLEKS R11 R10 K72 ["IsLayered"]
  GETTABLEKS R11 R4 K19 ["Shoes"]
  SETTABLEKS R11 R10 K73 ["Order"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K61 ["accessories"]
  SETTABLEKS R6 R5 K36 ["LinLin"]
  DUPTABLE R6 K106 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "scaleData", "accessories"}]
  LOADK R7 K37 ["JunkBot"]
  SETTABLEKS R7 R6 K56 ["name"]
  LOADN R7 77
  SETTABLEKS R7 R6 K57 ["bundleId"]
  LOADK R7 K107 [1704895554]
  SETTABLEKS R7 R6 K58 ["outfitId"]
  LOADN R7 1
  SETTABLEKS R7 R6 K59 ["insertionOrder"]
  GETIMPORT R7 K76 [Enum.HumanoidRigType.R15]
  SETTABLEKS R7 R6 K60 ["defaultHumanoidRigType"]
  DUPTABLE R7 K97 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K91 ["BodyTypeScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K92 ["DepthScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K93 ["HeadScale"]
  LOADK R8 K108 [1.05]
  SETTABLEKS R8 R7 K94 ["HeightScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K95 ["ProportionScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K96 ["WidthScale"]
  SETTABLEKS R7 R6 K88 ["scaleData"]
  NEWTABLE R7 0 2
  NEWTABLE R8 2 0
  GETIMPORT R9 K78 [Enum.AccessoryType.Hat]
  SETTABLEKS R9 R8 K68 ["AccessoryType"]
  LOADK R9 K109 [4381828509]
  SETTABLEKS R9 R8 K71 ["AssetId"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K111 [Enum.AccessoryType.Back]
  SETTABLEKS R10 R9 K68 ["AccessoryType"]
  LOADK R10 K112 [745788688]
  SETTABLEKS R10 R9 K71 ["AssetId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K72 ["IsLayered"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K61 ["accessories"]
  SETTABLEKS R6 R5 K37 ["JunkBot"]
  NEWTABLE R6 0 8
  DUPTABLE R7 K115 [{"property", "type"}]
  LOADK R8 K116 ["CustomHairAccessory"]
  SETTABLEKS R8 R7 K113 ["property"]
  GETIMPORT R8 K119 [Enum.AssetType.HairAccessory]
  SETTABLEKS R8 R7 K114 ["type"]
  DUPTABLE R8 K115 [{"property", "type"}]
  LOADK R9 K120 ["CustomHeadAccessory"]
  SETTABLEKS R9 R8 K113 ["property"]
  GETIMPORT R9 K121 [Enum.AssetType.Hat]
  SETTABLEKS R9 R8 K114 ["type"]
  DUPTABLE R9 K115 [{"property", "type"}]
  LOADK R10 K122 ["CustomFaceAccessory"]
  SETTABLEKS R10 R9 K113 ["property"]
  GETIMPORT R10 K124 [Enum.AssetType.FaceAccessory]
  SETTABLEKS R10 R9 K114 ["type"]
  DUPTABLE R10 K115 [{"property", "type"}]
  LOADK R11 K125 ["CustomNeckAccessory"]
  SETTABLEKS R11 R10 K113 ["property"]
  GETIMPORT R11 K127 [Enum.AssetType.NeckAccessory]
  SETTABLEKS R11 R10 K114 ["type"]
  DUPTABLE R11 K115 [{"property", "type"}]
  LOADK R12 K128 ["CustomShoulderAccessory"]
  SETTABLEKS R12 R11 K113 ["property"]
  GETIMPORT R12 K130 [Enum.AssetType.ShoulderAccessory]
  SETTABLEKS R12 R11 K114 ["type"]
  DUPTABLE R12 K115 [{"property", "type"}]
  LOADK R13 K131 ["CustomFrontAccessory"]
  SETTABLEKS R13 R12 K113 ["property"]
  GETIMPORT R13 K133 [Enum.AssetType.FrontAccessory]
  SETTABLEKS R13 R12 K114 ["type"]
  DUPTABLE R13 K115 [{"property", "type"}]
  LOADK R14 K134 ["CustomBackAccessory"]
  SETTABLEKS R14 R13 K113 ["property"]
  GETIMPORT R14 K136 [Enum.AssetType.BackAccessory]
  SETTABLEKS R14 R13 K114 ["type"]
  DUPTABLE R14 K115 [{"property", "type"}]
  LOADK R15 K137 ["CustomWaistAccessory"]
  SETTABLEKS R15 R14 K113 ["property"]
  GETIMPORT R15 K139 [Enum.AssetType.WaistAccessory]
  SETTABLEKS R15 R14 K114 ["type"]
  SETLIST R6 R7 8 [1]
  SETTABLEKS R6 R5 K38 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 12
  DUPTABLE R7 K115 [{"property", "type"}]
  LOADK R8 K140 ["CustomTShirtAccessory"]
  SETTABLEKS R8 R7 K113 ["property"]
  GETIMPORT R8 K142 [Enum.AssetType.TShirtAccessory]
  SETTABLEKS R8 R7 K114 ["type"]
  DUPTABLE R8 K115 [{"property", "type"}]
  LOADK R9 K143 ["CustomShirtAccessory"]
  SETTABLEKS R9 R8 K113 ["property"]
  GETIMPORT R9 K145 [Enum.AssetType.ShirtAccessory]
  SETTABLEKS R9 R8 K114 ["type"]
  DUPTABLE R9 K115 [{"property", "type"}]
  LOADK R10 K146 ["CustomJacketAccessory"]
  SETTABLEKS R10 R9 K113 ["property"]
  GETIMPORT R10 K148 [Enum.AssetType.JacketAccessory]
  SETTABLEKS R10 R9 K114 ["type"]
  DUPTABLE R10 K115 [{"property", "type"}]
  LOADK R11 K149 ["CustomSweaterAccessory"]
  SETTABLEKS R11 R10 K113 ["property"]
  GETIMPORT R11 K151 [Enum.AssetType.SweaterAccessory]
  SETTABLEKS R11 R10 K114 ["type"]
  DUPTABLE R11 K115 [{"property", "type"}]
  LOADK R12 K152 ["CustomPantsAccessory"]
  SETTABLEKS R12 R11 K113 ["property"]
  GETIMPORT R12 K154 [Enum.AssetType.PantsAccessory]
  SETTABLEKS R12 R11 K114 ["type"]
  DUPTABLE R12 K115 [{"property", "type"}]
  LOADK R13 K155 ["CustomShortsAccessory"]
  SETTABLEKS R13 R12 K113 ["property"]
  GETIMPORT R13 K157 [Enum.AssetType.ShortsAccessory]
  SETTABLEKS R13 R12 K114 ["type"]
  DUPTABLE R13 K115 [{"property", "type"}]
  LOADK R14 K158 ["CustomDressSkirtAccessory"]
  SETTABLEKS R14 R13 K113 ["property"]
  GETIMPORT R14 K160 [Enum.AssetType.DressSkirtAccessory]
  SETTABLEKS R14 R13 K114 ["type"]
  DUPTABLE R14 K115 [{"property", "type"}]
  LOADK R15 K161 ["CustomLeftShoesAccessory"]
  SETTABLEKS R15 R14 K113 ["property"]
  GETIMPORT R15 K163 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R15 R14 K114 ["type"]
  DUPTABLE R15 K115 [{"property", "type"}]
  LOADK R16 K164 ["CustomRightShoesAccessory"]
  SETTABLEKS R16 R15 K113 ["property"]
  GETIMPORT R16 K166 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R16 R15 K114 ["type"]
  DUPTABLE R16 K115 [{"property", "type"}]
  LOADK R17 K167 ["CustomClassicShirtsAccessory"]
  SETTABLEKS R17 R16 K113 ["property"]
  GETIMPORT R17 K169 [Enum.AssetType.Shirt]
  SETTABLEKS R17 R16 K114 ["type"]
  DUPTABLE R17 K115 [{"property", "type"}]
  LOADK R18 K170 ["CustomClassicTShirtsAccessory"]
  SETTABLEKS R18 R17 K113 ["property"]
  GETIMPORT R18 K172 [Enum.AssetType.TShirt]
  SETTABLEKS R18 R17 K114 ["type"]
  DUPTABLE R18 K115 [{"property", "type"}]
  LOADK R19 K173 ["CustomClassicPantsAccessory"]
  SETTABLEKS R19 R18 K113 ["property"]
  GETIMPORT R19 K175 [Enum.AssetType.Pants]
  SETTABLEKS R19 R18 K114 ["type"]
  SETLIST R6 R7 12 [1]
  SETTABLEKS R6 R5 K39 ["AvatarClothingRulesAssetIdPropertyTypes"]
  NEWTABLE R6 0 3
  GETIMPORT R8 K172 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K176 ["Name"]
  GETIMPORT R9 K169 [Enum.AssetType.Shirt]
  GETTABLEKS R8 R9 K176 ["Name"]
  GETIMPORT R10 K175 [Enum.AssetType.Pants]
  GETTABLEKS R9 R10 K176 ["Name"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K40 ["ClassicClothingTypes"]
  NEWTABLE R6 4 0
  GETIMPORT R8 K172 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADK R8 K177 ["GraphicTShirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K169 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADK R8 K168 ["Shirt"]
  SETTABLE R8 R6 R7
  GETIMPORT R8 K175 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADK R8 K174 ["Pants"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K41 ["HumanoidDescriptionClothingTypes"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K78 [Enum.AccessoryType.Hat]
  GETIMPORT R9 K121 [Enum.AssetType.Hat]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K69 [Enum.AccessoryType.Hair]
  GETIMPORT R9 K119 [Enum.AssetType.HairAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K178 [Enum.AccessoryType.Face]
  GETIMPORT R9 K124 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K180 [Enum.AccessoryType.Neck]
  GETIMPORT R9 K127 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K182 [Enum.AccessoryType.Shoulder]
  GETIMPORT R9 K130 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K184 [Enum.AccessoryType.Front]
  GETIMPORT R9 K133 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K111 [Enum.AccessoryType.Back]
  GETIMPORT R9 K136 [Enum.AssetType.BackAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K186 [Enum.AccessoryType.Waist]
  GETIMPORT R9 K139 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K187 [Enum.AccessoryType.TShirt]
  GETIMPORT R9 K142 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K188 [Enum.AccessoryType.Shirt]
  GETIMPORT R9 K145 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K102 [Enum.AccessoryType.Jacket]
  GETIMPORT R9 K148 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K190 [Enum.AccessoryType.Sweater]
  GETIMPORT R9 K151 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K191 [Enum.AccessoryType.Pants]
  GETIMPORT R9 K154 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K193 [Enum.AccessoryType.Shorts]
  GETIMPORT R9 K157 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K195 [Enum.AccessoryType.DressSkirt]
  GETIMPORT R9 K160 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K82 [Enum.AccessoryType.LeftShoe]
  GETIMPORT R9 K163 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K85 [Enum.AccessoryType.RightShoe]
  GETIMPORT R9 K166 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R8 R9 K176 ["Name"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K42 ["AccessoryTypeToAssetType"]
  NEWTABLE R6 8 0
  GETIMPORT R8 K121 [Enum.AssetType.Hat]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K119 [Enum.AssetType.HairAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K124 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K127 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K130 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K133 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K136 [Enum.AssetType.BackAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K139 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K43 ["AccessoryAssetTypes"]
  NEWTABLE R6 16 0
  GETIMPORT R8 K142 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K145 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K148 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K151 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K154 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K157 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K160 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K163 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K166 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K172 [Enum.AssetType.TShirt]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K169 [Enum.AssetType.Shirt]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETIMPORT R8 K175 [Enum.AssetType.Pants]
  GETTABLEKS R7 R8 K176 ["Name"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K44 ["ClothingAssetTypes"]
  NEWTABLE R6 16 0
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K199 ["run"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K200 ["RunAnim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K201 ["CustomRunAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K202 ["walk"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K203 ["WalkAnim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K204 ["CustomWalkAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K205 ["fall"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K206 ["FallAnim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K207 ["CustomFallAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K208 ["jump"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K209 ["JumpAnim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K210 ["CustomJumpAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K211 ["idle"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K212 ["Animation1"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K213 ["CustomIdleAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K211 ["idle"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K214 ["Animation2"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K215 ["CustomIdleAlt1Animation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K211 ["idle"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K216 ["Animation3"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K217 ["CustomIdleAlt2Animation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K218 ["swim"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K219 ["Swim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K220 ["CustomSwimAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K221 ["swimidle"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K222 ["SwimIdle"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K223 ["CustomSwimIdleAnimation"]
  DUPTABLE R7 K198 [{"stringValueInstanceName", "animationInstanceName"}]
  LOADK R8 K224 ["climb"]
  SETTABLEKS R8 R7 K196 ["stringValueInstanceName"]
  LOADK R8 K225 ["ClimbAnim"]
  SETTABLEKS R8 R7 K197 ["animationInstanceName"]
  SETTABLEKS R7 R6 K226 ["CustomClimbAnimation"]
  SETTABLEKS R6 R5 K45 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
  NEWTABLE R6 0 7
  LOADK R7 K227 ["CollisionPart"]
  LOADK R8 K228 ["CollisionHead"]
  LOADK R9 K229 ["CollisionTorso"]
  LOADK R10 K230 ["CollisionLeftLeg"]
  LOADK R11 K231 ["CollisionRightLeg"]
  LOADK R12 K232 ["CollisionLeftArm"]
  LOADK R13 K233 ["CollisionRightArm"]
  SETLIST R6 R7 7 [1]
  SETTABLEKS R6 R5 K46 ["CollisionBoxPartNames"]
  DUPTABLE R6 K239 [{"HighlightName", "FillColor", "OutlineColor", "FillTransparency", "OutlineTransparency"}]
  LOADK R7 K240 ["AccessoryHighlight"]
  SETTABLEKS R7 R6 K234 ["HighlightName"]
  GETIMPORT R7 K54 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  SETTABLEKS R7 R6 K235 ["FillColor"]
  GETIMPORT R7 K54 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K236 ["OutlineColor"]
  LOADK R7 K241 [0.15]
  SETTABLEKS R7 R6 K237 ["FillTransparency"]
  LOADK R7 K51 [0.5]
  SETTABLEKS R7 R6 K238 ["OutlineTransparency"]
  SETTABLEKS R6 R5 K47 ["HighlightProperties"]
  RETURN R5 1
