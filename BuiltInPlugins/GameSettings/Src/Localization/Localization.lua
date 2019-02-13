local Plugin = script.Parent.Parent.Parent

local FALLBACK_LOCALE = "en-us"

local createSignal = require(Plugin.Src.Util.createSignal)
local Cryo = require(Plugin.Cryo)

local Localization = {}

function Localization.new(props)
	local self = {
		signal = createSignal(),

		getLocale = props.getLocale,
		localizationTable = props.localizationTable,
		externalLocaleChangedSignal = props.localeChanged,

		externalLocaleChangedConnection = nil,

		values = {},
	}

	setmetatable(self, {
		__index = Localization
	})

	if self.externalLocaleChangedSignal then
		self.externalLocaleChangedConnection = self.externalLocaleChangedSignal:Connect(function()
			self:recalculateContent()
		end)
	end

	self:recalculateContent()

	return self
end

function Localization:subscribe(...)
	return self.signal:subscribe(...)
end

function Localization:destroy()
	if self.externalLocaleChangedConnection then
		self.externalLocaleChangedConnection:Disconnect()
	end
end

function Localization:update(changedValues)
	self.values = Cryo.Dictionary.join(self.values, changedValues)
	self.signal:fire(self.values)
end

function Localization:recalculateLocale()
	if self.getLocale then
		self.locale = self.getLocale()
	else
		self.locale = FALLBACK_LOCALE
	end

	if self.localizationTable then
		self.translator = self.localizationTable:GetTranslator(self.locale)
		self.fallbackTranslator = self.localizationTable:GetTranslator(FALLBACK_LOCALE)
	end
end

function Localization:getText(key, args)
	local translated
	if self.translator then
		local success = pcall(function()
			translated = self.translator:FormatByKey(key, args)
		end)
		if success then
			return translated
		elseif self.fallbackTranslator then
			-- If no translation exists for this locale id, fall back to default (English)
			local success = pcall(function()
				translated = self.fallbackTranslator:FormatByKey(key, args)
			end)
			if success then
				return translated
			end
		end
	end
	-- Fall back to the given key if there is no translator for this value
	-- Useful for finding misspelled or missing keys
	return key
end

function Localization:getFormatTextFunc(key)
	return function(args)
		return self:getText(key, args)
	end
end

function Localization:recalculateContent()
	self:recalculateLocale()
	self:update({
		Plugin = {
			Name = self:getText("PluginName"),
			Description = self:getText("PluginDescription"),
		},
		Category = {
			["Basic Info"] = self:getText("CategoryBasicInfo"),
			Avatar = self:getText("CategoryAvatar"),
			Options = self:getText("CategoryOptions"),
		},

		Footer = {
			Save = self:getText("ButtonSave"),
			Cancel = self:getText("ButtonCancel"),
		},

		Title = {
			Name = self:getText("TitleName"),
			Description = self:getText("TitleDescription"),
			Playability = self:getText("TitlePlayability"),
			GameIcon = self:getText("TitleGameIcon"),
			Thumbnails = self:getText("TitleThumbnails"),
			Genre = self:getText("TitleGenre"),
			Devices = self:getText("TitleDevices"),
			Http = self:getText("TitleHttp"),
		},

		Playability = {
			Header = self:getText("PlayabilityHeader"),
			Public = {
				Title = self:getText("PlayabilityPublic"),
				Description = self:getText("PlayabilityPublicDesc"),
			},
			Group = {
				Title = self:getText("PlayabilityGroup"),
				Description = self:getFormatTextFunc("PlayabilityGroupDesc"),
			},
			Friends = {
				Title = self:getText("PlayabilityFriends"),
				Description = self:getText("PlayabilityFriendsDesc"),
			},
			Private = {
				Title = self:getText("PlayabilityPrivate"),
				Description = self:getText("PlayabilityPrivateDesc"),
			},
		},

		GameIcon = {
			Hint = self:getFormatTextFunc("GameIconHint"),
			Moderation = self:getText("GameIconModeration"),
			Tutorial = self:getText("GameIconTutorial"),
			Change = self:getText("GameIconChange"),
			Preview = self:getText("ImagePreview"),
			Review = self:getText("ImageReview"),
		},

		Thumbnails = {
			Limit = self:getFormatTextFunc("ThumbnailsLimit"),
			Hint = self:getFormatTextFunc("ThumbnailsHint"),
			Moderation = self:getText("ThumbnailsModeration"),
			Count = self:getFormatTextFunc("ThumbnailsCount"),
		},

		Thumbnail = {
			Preview = self:getText("ImagePreview"),
			Review = self:getText("ImageReview"),
		},

		Genres = {
			{Id = "All", Title = self:getText("GenreAll")},
			{Id = "Adventure", Title = self:getText("GenreAdventure")},
			{Id = "Tutorial", Title = self:getText("GenreBuilding")},
			{Id = "Funny", Title = self:getText("GenreComedy")},
			{Id = "Ninja", Title = self:getText("GenreFighting")},
			{Id = "FPS", Title = self:getText("GenreFPS")},
			{Id = "Scary", Title = self:getText("GenreHorror")},
			{Id = "Fantasy", Title = self:getText("GenreMedieval")},
			{Id = "War", Title = self:getText("GenreMilitary")},
			{Id = "Pirate", Title = self:getText("GenreNaval")},
			{Id = "RPG", Title = self:getText("GenreRPG")},
			{Id = "SciFi", Title = self:getText("GenreSciFi")},
			{Id = "Sports", Title = self:getText("GenreSports")},
			{Id = "TownAndCity", Title = self:getText("GenreTownAndCity")},
			{Id = "WildWest", Title = self:getText("GenreWestern")},
		},

		Devices = {
			Computer = self:getText("DeviceComputer"),
			Phone = self:getText("DevicePhone"),
			Tablet = self:getText("DeviceTablet"),
			Console = self:getText("DeviceConsole"),
		},

		Http = {
			OnDescription = self:getText("HttpDesc"),
			On = self:getText("SettingOn"),
			Off = self:getText("SettingOff"),
		},

		AvatarDialog = {
			Header = self:getText("AvatarDialogHeader"),
			Prompt = self:getText("AvatarDialogPrompt"),
			Body = self:getText("AvatarDialogBody"),
			Buttons = {
				self:getText("ReplyNo"),
				self:getText("ReplyYes"),
			},
		},

		PrivateDialog = {
			Header = self:getText("PrivateDialogHeader"),
			Prompt = self:getText("PrivateDialogPrompt"),
			Body = self:getText("PrivateDialogBody"),
			Buttons = {
				self:getText("ReplyNo"),
				self:getText("ReplyYes"),
			},
		},

		ImageDialog = {
			Header = self:getText("ImageDialogHeader"),
			Body = self:getText("ImageDialogBody"),
			Buttons = {
				self:getText("ReplyOK"),
			},
		},

		PreviewDialog = {
			Header = self:getText("PreviewDialogHeader"),
			Body = self:getText("PreviewDialogBody"),
			Link = self:getText("PreviewDialogLink"),
		},

		CancelDialog = {
			Header = self:getText("CancelDialogHeader"),
			Body = self:getText("CancelDialogBody"),
			Buttons = {
				self:getText("ReplyNo"),
				self:getText("ReplyYes"),
			},
		},

		DeleteDialog = {
			Header = self:getText("DeleteDialogHeader"),
			Body = self:getText("DeleteDialogBody"),
			Buttons = {
				self:getText("ReplyNo"),
				self:getText("ReplyYes"),
			},
		},

		ContentDialog = {
			Header = self:getText("ContentDialogHeader"),
			Body = self:getText("ContentDialogBody"),
			Entries = {
				self:getText("ContentDialogItem1"),
				self:getText("ContentDialogItem2"),
				self:getText("ContentDialogItem3"),
				self:getText("ContentDialogItem4"),
				self:getText("ContentDialogItem5"),
			},
			Buttons = {
				self:getText("ReplyDisagree"),
				self:getText("ReplyAgree"),
			},
		},

		AddPrompts = {
			GameIcon = self:getText("GameIconPrompt"),
			Thumbnail = self:getText("ThumbnailPrompt"),
		},

		Errors = {
			ErrorNameModerated = self:getText("ErrorNameModerated"),
			ErrorNameEmpty = self:getText("ErrorNameEmpty"),
			ErrorDescModerated = self:getText("ErrorDescModerated"),
			ErrorImageLimit = self:getText("ErrorImageLimit"),
			ErrorImageNotRecognized = self:getText("ErrorImageNotRecognized"),
			ErrorNoDevices = self:getText("ErrorNoDevices"),
		},

		Morpher = {
			Title = {
				Presets = self:getText("TitlePresets"),
				AvatarType = self:getText("TitleAvatarType"),
				Animation = self:getText("TitleAnimation"),
				Collision = self:getText("TitleCollision"),
				Scale = self:getText("TitleScale"),
				TitleBodyParts = self:getText("TitleBodyParts"),
				TitleClothing = self:getText("TitleClothing"),
			},

			Scale = {
				Height = self:getText("ScaleHeight"),
				Width = self:getText("ScaleWidth"),
				Head = self:getText("ScaleHead"),
				BodyType = self:getText("ScaleBodyType"),
				Proportions = self:getText("ScaleProportions"),
			},

			Part = {
				Face = self:getText("PartFace"),
				Head = self:getText("PartHead"),
				Torso = self:getText("PartTorso"),
				LeftArm = self:getText("PartLeftArm"),
				RightArm = self:getText("PartRightArm"),
				LeftLeg = self:getText("PartLeftLeg"),
				RightLeg = self:getText("PartRightLeg"),
			},

			Clothing = {
				TShirt = self:getText("ClothingTShirt"),
				Shirt = self:getText("ClothingShirt"),
				Pants = self:getText("ClothingPants"),
			},

			Presets = {
				Default = self:getText("PresetDefault"),
				ClassicScale = self:getText("PresetClassicScale"),
				FullClassic = self:getText("PresetFullClassic"),
				Rthro = self:getText("PresetRthro"),
				PlayerChoice = self:getText("PresetPlayerChoice"),
			},

			AvatarType = {
				R6 = self:getText("AvatarTypeR6"),
				R15 = self:getText("AvatarTypeR15"),
				PlayerChoice = self:getText("AvatarTypePlayerChoice"),
				Warning = self:getText("AvatarTypeWarning"),
			},

			Animation = {
				Standard = self:getText("AnimationStandard"),
				PlayerChoice = self:getText("AnimationPlayerChoice"),
			},

			Collision = {
				InnerBox = self:getText("CollisionInnerBox"),
				OuterBox = self:getText("CollisionOuterBox"),
			},

			AvatarOverrides = {
				Prompt = self:getText("AvatarOverridePrompt"),
				Item = self:getText("AvatarOverrideItem"),
				Id = self:getText("AvatarOverrideId"),
				Empty = self:getText("ErrorOverrideEmpty"),
			},
		},
	})
end

function Localization.newDummyLocalization()
	return Localization.new({
		locale = "en-us",
		translator = {
			FormatByKey = function(self, key, args)
				local ret = "TEST_" .. key
				if args and type(args) == "table" then
					for k, v in pairs(args) do
						ret = ret .. "_" .. k .. "=" .. v
					end
				end
				return ret
			end,
		}
	})
end

return Localization