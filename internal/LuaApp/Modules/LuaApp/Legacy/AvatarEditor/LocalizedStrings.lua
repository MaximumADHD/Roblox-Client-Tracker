local LocalizationService = game:GetService("LocalizationService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService('CoreGui')

local Modules = CoreGui:FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local LoadAvatarEditorTranslations = Flags:GetFlag("LoadAvatarEditorTranslations")
local FFlagClientAppsUseRobloxLocale = Flags:GetFlag('ClientAppsUseRobloxLocale')

local this = {}

local function createLocalizationTable(contents)
	local localTable = Instance.new("LocalizationTable")
	localTable.SourceLocaleId = "en-us"
	localTable:SetContents(HttpService:JSONEncode(contents))
	return localTable
end

local AvatarEditorStringsTable = createLocalizationTable({
	{
		key = "FullViewWord"; -- The 'expressionKey' to be used with GetString
		values =
		{	-- A dictionary of keys corresponding to IETF language tags, and their translations.
			["en-us"] = "Full View";
			["es"] = "Vista completa";
		}
	},
	{
		key = "ReturnToEditWord";
		values =
		{
			["en-us"] = "Return to edit";
			["es"] = "Volver a edici?n";
		}
	},
	{
		key = "SwitchToR6Word";
		values =
		{
			["en-us"] = "Switch to R6";
			["es"] = "Cambiar a R6";
		}
	},
	{
		key = "SwitchToR15Word";
		values =
		{
			["en-us"] = "Switch to R15";
			["es"] = "Cambiar a R15";
		}
	},
	{
		key = "RecentCategoryTitle";
		values =
		{
			["en-us"] = "Recent";
			["es"] = "Recientes";
		}
	},
	{
		key = "ClothingCategoryTitle";
		values =
		{
			["en-us"] = "Clothing";
			["es"] = "Ropa";
		}
	},
	{
		key = "BodyCategoryTitle";
		values =
		{
			["en-us"] = "Body";
			["es"] = "Cuerpo";
		}
	},
	{
		key = "AnimationCategoryTitle";
		values =
		{
			["en-us"] = "Animation";
			["es"] = "Animaci?n";
		}
	},
	{
		key = "AnimationCategoryLandscapeTitle";
		values =
		{
			["en-us"] = "Animations";
			["es"] = "Animaciones";
		}
	},
	{
		key = "OutfitsCategoryTitle";
		values =
		{
			["en-us"] = "Outfits";
			["es"] = "Conjuntos";
		}
	},
	{
		key = "RecentAllTitle";
		values =
		{
			["en-us"] = "Recent All";
			["es"] = "Todos los recientes";
		}
	},
	{
		key = "RecentAllLandscapeTitle";
		values =
		{
			["en-us"] = "All";
			["es"] = "Todos";
		}
	},
	{
		key = "RecentClothingTitle";
		values =
		{
			["en-us"] = "Recent Clothing";
			["es"] = "Ropa reciente";
		}
	},
	{
		key = "RecentClothingLandscapeTitle";
		values =
		{
			["en-us"] = "Clothing";
			["es"] = "Ropa";
		}
	},
	{
		key = "RecentBodyTitle";
		values =
		{
			["en-us"] = "Recent Body";
			["es"] = "Cuerpos recientes";
		}
	},
	{
		key = "RecentBodyLandscapeTitle";
		values =
		{
			["en-us"] = "Body";
			["es"] = "Cuerpo";
		}
	},
	{
		key = "RecentAnimationsTitle";
		values =
		{
			["en-us"] = "Recent Animations";
			["es"] = "Animaciones recientes";
		}
	},
	{
		key = "RecentAnimationsLandscapeTitle";
		values =
		{
			["en-us"] = "Animations";
			["es"] = "Animaciones";
		}
	},
	{
		key = "RecentOutfitsTitle";
		values =
		{
			["en-us"] = "Recent Outfits";
			["es"] = "Conjuntos recientes";
		}
	},
	{
		key = "RecentOutfitsLandscapeTitle";
		values =
		{
			["en-us"] = "Outfits";
			["es"] = "Conjuntos";
		}
	},
	{
		key = "OutfitsTabTitle";
		values =
		{
			["en-us"] = "Outfits";
			["es"] = "Conjuntos";
		}
	},
	{
		key = "OutfitsTabLandscapeTitle";
		values =
		{
			["en-us"] = "All";
			["es"] = "Todos";
		}
	},
	{
		key = "HatsTitle";
		values =
		{
			["en-us"] = "Hats";
			["es"] = "Sombreros";
		}
	},
	{
		key = "HatsLandscapeTitle";
		values =
		{
			["en-us"] = "Hat";
			["es"] = "Sombrero";
		}
	},
	{
		key = "HairTitle";
		values =
		{
			["en-us"] = "Hair";
			["es"] = "Pelo";
		}
	},
	{
		key = "FaceAccessoryTitle";
		values =
		{
			["en-us"] = "Face Accessories";
			["es"] = "Accesorios para la cara";
		}
	},
	{
		key = "FaceAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Face";
			["es"] = "Cara";
		}
	},
	{
		key = "NeckAccessoryTitle";
		values =
		{
			["en-us"] = "Neck Accessories";
			["es"] = "Accesorios para el cuello";
		}
	},
	{
		key = "NeckAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Neck";
			["es"] = "Cuello";
		}
	},
	{
		key = "ShoulderAccessoryTitle";
		values =
		{
			["en-us"] = "Shoulder Accessories";
			["es"] = "Accesorios para el hombro";
		}
	},
	{
		key = "ShoulderAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Shoulder";
			["es"] = "Hombro";
		}
	},
	{
		key = "FrontAccessoryTitle";
		values =
		{
			["en-us"] = "Front Accessories";
			["es"] = "Accesorios frontales";
		}
	},
	{
		key = "FrontAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Front";
			["es"] = "Frontal";
		}
	},
	{
		key = "BackAccessoryTitle";
		values =
		{
			["en-us"] = "Back Accessories";
			["es"] = "Accesorios traseros";
		}
	},
	{
		key = "BackAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Back";
			["es"] = "Trasero";
		}
	},
	{
		key = "WaistAccessoryTitle";
		values =
		{
			["en-us"] = "Waist Accessories";
			["es"] = "Accesorios para la cintura";
		}
	},
	{
		key = "WaistAccessoryLandscapeTitle";
		values =
		{
			["en-us"] = "Waist";
			["es"] = "Cintura";
		}
	},
	{
		key = "ShirtsTitle";
		values =
		{
			["en-us"] = "Shirts";
			["es"] = "Camisas";
		}
	},
	{
		key = "ShirtsLandscapeTitle";
		values =
		{
			["en-us"] = "Shirt";
			["es"] = "Camisa";
		}
	},
	{
		key = "PantsTitle";
		values =
		{
			["en-us"] = "Pants";
			["es"] = "Pantalones";
		}
	},
	{
		key = "FacesTitle";
		values =
		{
			["en-us"] = "Faces";
			["es"] = "Caras";
		}
	},
	{
		key = "FacesLandscapeTitle";
		values =
		{
			["en-us"] = "Face";
			["es"] = "Cara";
		}
	},
	{
		key = "HeadsTitle";
		values =
		{
			["en-us"] = "Heads";
			["es"] = "Cabezas";
		}
	},
	{
		key = "HeadsLandscapeTitle";
		values =
		{
			["en-us"] = "Head";
			["es"] = "Cabeza";
		}
	},
	{
		key = "TorsosTitle";
		values =
		{
			["en-us"] = "Torsos";
			["es"] = "Torsos";
		}
	},
	{
		key = "TorsosLandscapeTitle";
		values =
		{
			["en-us"] = "Torso";
			["es"] = "Torso";
		}
	},
	{
		key = "RightArmsTitle";
		values =
		{
			["en-us"] = "Right Arms";
			["es"] = "Brazos derechos";
		}
	},
	{
		key = "LeftArmsTitle";
		values =
		{
			["en-us"] = "Left Arms";
			["es"] = "Brazos izquierdos";
		}
	},
	{
		key = "RightLegsTitle";
		values =
		{
			["en-us"] = "Right Legs";
			["es"] = "Piernas derechas";
		}
	},
	{
		key = "LeftLegsTitle";
		values =
		{
			["en-us"] = "Left Legs";
			["es"] = "Piernas izquierdas";
		}
	},
	{
		key = "GearTitle";
		values =
		{
			["en-us"] = "Gear";
			["es"] = "Equipamiento";
		}
	},
	{
		key = "SkinToneTitle";
		values =
		{
			["en-us"] = "Skin Tone";
			["es"] = "Tono de piel";
		}
	},
	{
		key = "ScaleTitle";
		values =
		{
			["en-us"] = "Scale";
			["es"] = "Escala";
		}
	},
	{
		key = "ScaleHeightTitle";
		values =
		{
			["en-us"] = "Height";
			["es"] = "Altura";
		}
	},
	{
		key = "ScaleWidthTitle";
		values =
		{
			["en-us"] = "Width";
			["es"] = "Anchura";
		}
	},
	{
		key = "ScaleHeadTitle";
		values =
		{
			["en-us"] = "Head";
			["es"] = "Cabeza";
		}
	},
	{
		key = "ScaleBodyTypeTitle";
		values =
		{
			["en-us"] = "Body Type";
			["es"] = "Tipo de cuerpo";
		}
	},
	{
		key = "ScaleProportionTitle";
		values =
		{
			["en-us"] = "Proportions";
			["es"] = "Proporciones";
		}
	},
	{
		key = "ClimbAnimationsWord";
		values =
		{
			["en-us"] = "Climb Animations";
			["es"] = "Animaciones de escalada";
		}
	},
	{
		key = "JumpAnimationsWord";
		values =
		{
			["en-us"] = "Jump Animations";
			["es"] = "Animaciones de salto";
		}
	},
	{
		key = "FallAnimationsWord";
		values =
		{
			["en-us"] = "Fall Animations";
			["es"] = "Animaciones de ca?da";
		}
	},
	{
		key = "IdleAnimationsWord";
		values =
		{
			["en-us"] = "Idle Animations";
			["es"] = "Animaciones de inactividad";
		}
	},
	{
		key = "WalkAnimationsWord";
		values =
		{
			["en-us"] = "Walk Animations";
			["es"] = "Animaciones de marcha";
		}
	},
	{
		key = "RunAnimationsWord";
		values =
		{
			["en-us"] = "Run Animations";
			["es"] = "Animaciones de carrera";
		}
	},
	{
		key = "SwimAnimationsWord";
		values =
		{
			["en-us"] = "Swim Animations";
			["es"] = "Animaciones de nado";
		}
	},
	{
		key = "ClimbWord";
		values =
		{
			["en-us"] = "Climb";
			["es"] = "Escalada";
		}
	},
	{
		key = "JumpWord";
		values =
		{
			["en-us"] = "Jump";
			["es"] = "Salto";
		}
	},
	{
		key = "FallWord";
		values =
		{
			["en-us"] = "Fall";
			["es"] = "Ca?da";
		}
	},
	{
		key = "IdleWord";
		values =
		{
			["en-us"] = "Idle";
			["es"] = "Inactividad";
		}
	},
	{
		key = "WalkWord";
		values =
		{
			["en-us"] = "Walk";
			["es"] = "Marcha";
		}
	},
	{
		key = "RunWord";
		values =
		{
			["en-us"] = "Run";
			["es"] = "Carrera";
		}
	},
	{
		key = "SwimWord";
		values =
		{
			["en-us"] = "Swim";
			["es"] = "Nado";
		}
	},
	{
		key = "NoAssetsPhrase";
		values =
		{
			["en-us"] = "You don't have any %s";
			["es"] = "No tienes %s";
		}
	},
	{
		key = "RecentItemsWord";
		values =
		{
			["en-us"] = "recent items";
			["es"] = "objetos recientes";
		}
	},
	{
		key = "RecommendedWord";
		values =
		{
			["en-us"] = "Recommended";
			["es"] = "Recomendado";
		}
	},
	{
		key = "WearWord";
		values =
		{
			["en-us"] = "Wear";
			["es"] = "Vestir";
		}
	},
	{
		key = "TakeOffWord";
		values =
		{
			["en-us"] = "Take Off";
			["es"] = "Quitar";
		}
	},
	{
		key = "CancelWord";
		values =
		{
			["en-us"] = "Cancel";
			["es"] = "Cancelar";
		}
	},
	{
		key = "ViewDetailsWord";
		values =
		{
			["en-us"] = "View details";
			["es"] = "Ver detalles";
		}
	},
	{
		key = "ScalingForR15Phrase";
		values =
		{
			["en-us"] = "Scaling only works\nfor R15 avatars";
			["es"] = "El escalado solo funciona\ncon avatares R15";
		}
	},
	{
		key = "ScalingForR15ConsolePhrase";
		values =
		{
			["en-us"] = "Scaling only works for R15 avatars";
			["es"] = "El escalado solo funciona con avatares R15";
		}
	},
	{
		key = "AnimationsForR15Phrase";
		values =
		{
			["en-us"] = "Animations only work\nfor R15 avatars";
			["es"] = "Las animaciones solo funcionan\ncon avatares R15";
		}
	},
	{
		key = "AnimationsForR15ConsolePhrase";
		values =
		{
			["en-us"] = "Animations only work for R15 avatars";
			["es"] = "Las animaciones solo funcionan con avatares R15";
		}
	},
	{
		key = "R15OnlyPhrase";
		values =
		{
			["en-us"] = "This feature is only available for R15";
			["es"] = "Esta funci?n solo est? disponible con R15";
		}
	},
	{
		key = "DefaultClothingAppliedPhrase";
		values =
		{
			["en-us"] = "Default clothing has been applied to your avatar - wear something from your wardrobe";
			["es"] = "Se le ha aplicado la ropa predeterminada a tu avatar. Viste algo de tu guardarropa";
		}
	},
	{
		key = "ShopNowWord";
		values =
		{
			["en-us"] = "Shop Now";
			["es"] = "Comprar";
		}
	},
})

function this:GetLocale()
	if LoadAvatarEditorTranslations then
		if FFlagClientAppsUseRobloxLocale then
			return game:GetService("LocalizationService").RobloxLocaleId
		else
			return game:GetService("LocalizationService").SystemLocaleId
		end
	end
	return "en-us"
end

function this:GetAvatarEditorString(locale, stringKey)
	local success, result = pcall(function()
		return AvatarEditorStringsTable:GetString(locale, stringKey)
	end)

	if success and result then
		return result
	end

	return nil
end

function this:LocalizedString(stringKey)
	local locale = self:GetLocale()
	local localeLanguage = locale and string.sub(locale, 1, 2)
	local result = locale and self:GetAvatarEditorString(locale, stringKey) or
		self:GetAvatarEditorString(localeLanguage, stringKey)
	if not result then
		if UserSettings().GameSettings:InStudioMode() then
			print("LocalizedString: Could not find string for:" , stringKey , "using locale:" , locale)
		end
		result = self:GetAvatarEditorString("en-us", stringKey) or stringKey
	end
	return result
end

return this
