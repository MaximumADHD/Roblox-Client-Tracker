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
			Name = self:getText("Studio.GameSettings.General.PluginName"),
			Description = self:getText("Studio.GameSettings.General.PluginDescription"),
		},
		Category = {
			["Basic Info"] = self:getText("Studio.GameSettings.General.CategoryBasicInfo"),
			["Developer Subscriptions"] = self:getText("Studio.GameSettings.General.CategoryDeveloperSubscriptions"),
			Avatar = self:getText("Studio.GameSettings.General.CategoryAvatar"),
			Options = self:getText("Studio.GameSettings.General.CategoryOptions"),
			World = self:getText("Studio.GameSettings.General.CategoryWorld"),
			["Access Permissions"] = self:getText("Studio.GameSettings.General.CategoryAccessPermissions")
		},

		Footer = {
			Save = self:getText("Studio.GameSettings.General.ButtonSave"),
			Cancel = self:getText("Studio.GameSettings.General.ButtonCancel"),
		},

		Title = {
			Name = self:getText("Studio.GameSettings.General.TitleName"),
			Description = self:getText("Studio.GameSettings.General.TitleDescription"),
			Playability = self:getText("Studio.GameSettings.General.TitlePlayability"),
			GameIcon = self:getText("Studio.GameSettings.General.TitleGameIcon"),
			Thumbnails = self:getText("Studio.GameSettings.General.TitleThumbnails"),
			Genre = self:getText("Studio.GameSettings.General.TitleGenre"),
			Devices = self:getText("Studio.GameSettings.General.TitleDevices"),
			Http = self:getText("Studio.GameSettings.General.TitleHttp"),
			StudioApiServices = self:getText("Studio.GameSettings.General.TitleStudioApiServices"),
			GameOwner = self:getText("Studio.GameSettings.General.TitleGameOwner"),
			Collaborators = self:getText("Studio.GameSettings.General.TitleCollaborators"),
		},

		Playability = {
			Header = self:getText("Studio.GameSettings.General.PlayabilityHeader"),
			Public = {
				Title = self:getText("Studio.GameSettings.General.PlayabilityPublic"),
				Description = self:getText("Studio.GameSettings.General.PlayabilityPublicDesc"),
			},
			Group = {
				Title = self:getText("Studio.GameSettings.General.PlayabilityGroup"),
				Description = self:getFormatTextFunc("Studio.GameSettings.General.PlayabilityGroupDesc"),
			},
			Friends = {
				Title = self:getText("Studio.GameSettings.General.PlayabilityFriends"),
				Description = self:getText("Studio.GameSettings.General.PlayabilityFriendsDesc"),
			},
			Private = {
				Title = self:getText("Studio.GameSettings.General.PlayabilityPrivate"),
				Description = self:getText("Studio.GameSettings.General.PlayabilityPrivateDesc"),
			},
			PlayabilityWarning = self:getText("Studio.GameSettings.DraftGames.PlayabilityWarning")
		},

		GameIcon = {
			Hint = self:getFormatTextFunc("Studio.GameSettings.General.GameIconHint"),
			Moderation = self:getText("Studio.GameSettings.General.GameIconModeration"),
			Tutorial = self:getText("Studio.GameSettings.General.GameIconTutorial"),
			Change = self:getText("Studio.GameSettings.General.GameIconChange"),
			Preview = self:getText("Studio.GameSettings.General.ImagePreview"),
			Review = self:getText("Studio.GameSettings.General.ImageReview"),
		},

		Thumbnails = {
			Limit = self:getFormatTextFunc("Studio.GameSettings.General.ThumbnailsLimit"),
			Hint = self:getFormatTextFunc("Studio.GameSettings.General.ThumbnailsHint"),
			Moderation = self:getText("Studio.GameSettings.General.ThumbnailsModeration"),
			Count = self:getFormatTextFunc("Studio.GameSettings.General.ThumbnailsCount"),
		},

		Thumbnail = {
			Preview = self:getText("Studio.GameSettings.General.ImagePreview"),
			Review = self:getText("Studio.GameSettings.General.ImageReview"),
		},

		Genres = {
			{Id = "All", Title = self:getText("Studio.GameSettings.General.GenreAll")},
			{Id = "Adventure", Title = self:getText("Studio.GameSettings.General.GenreAdventure")},
			{Id = "Tutorial", Title = self:getText("Studio.GameSettings.General.GenreBuilding")},
			{Id = "Funny", Title = self:getText("Studio.GameSettings.General.GenreComedy")},
			{Id = "Ninja", Title = self:getText("Studio.GameSettings.General.GenreFighting")},
			{Id = "FPS", Title = self:getText("Studio.GameSettings.General.GenreFPS")},
			{Id = "Scary", Title = self:getText("Studio.GameSettings.General.GenreHorror")},
			{Id = "Fantasy", Title = self:getText("Studio.GameSettings.General.GenreMedieval")},
			{Id = "War", Title = self:getText("Studio.GameSettings.General.GenreMilitary")},
			{Id = "Pirate", Title = self:getText("Studio.GameSettings.General.GenreNaval")},
			{Id = "RPG", Title = self:getText("Studio.GameSettings.General.GenreRPG")},
			{Id = "SciFi", Title = self:getText("Studio.GameSettings.General.GenreSciFi")},
			{Id = "Sports", Title = self:getText("Studio.GameSettings.General.GenreSports")},
			{Id = "TownAndCity", Title = self:getText("Studio.GameSettings.General.GenreTownAndCity")},
			{Id = "WildWest", Title = self:getText("Studio.GameSettings.General.GenreWestern")},
		},

		Devices = {
			Computer = self:getText("Studio.GameSettings.General.DeviceComputer"),
			Phone = self:getText("Studio.GameSettings.General.DevicePhone"),
			Tablet = self:getText("Studio.GameSettings.General.DeviceTablet"),
			Console = self:getText("Studio.GameSettings.General.DeviceConsole"),
		},

		Http = {
			OnDescription = self:getText("Studio.GameSettings.General.HttpDesc"),
			On = self:getText("Studio.GameSettings.General.SettingOn"),
			Off = self:getText("Studio.GameSettings.General.SettingOff"),
		},

		StudioApiServices = {
			OnDescription = self:getText("Studio.GameSettings.General.StudioApiServicesDesc"),
			On = self:getText("Studio.GameSettings.General.SettingOn"),
			Off = self:getText("Studio.GameSettings.General.SettingOff"),
		},

		AvatarDialog = {
			Header = self:getText("Studio.GameSettings.General.AvatarDialogHeader"),
			Prompt = self:getText("Studio.GameSettings.General.AvatarDialogPrompt"),
			Body = self:getText("Studio.GameSettings.General.AvatarDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyNo"),
				self:getText("Studio.GameSettings.General.ReplyYes"),
			},
		},

		PrivateDialog = {
			Header = self:getText("Studio.GameSettings.General.PrivateDialogHeader"),
			Prompt = self:getText("Studio.GameSettings.General.PrivateDialogPrompt"),
			Body = self:getText("Studio.GameSettings.General.PrivateDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ButtonCancel"),
				self:getText("Studio.GameSettings.General.ButtonSave"),
			},
		},

		SingleImageDialog = {
			Header = self:getText("Studio.GameSettings.General.SingleImageDialogHeader"),
			Body = self:getText("Studio.GameSettings.General.SingleImageDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyOK"),
			},
		},

		MultiImageDialog = {
			Header = self:getText("Studio.GameSettings.General.MultiImageDialogHeader"),
			Body = self:getFormatTextFunc("Studio.GameSettings.General.MultiImageDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyOK"),
			},
		},

		ErrorsOnSaveDialog = {
			Header = self:getText("Studio.GameSettings.General.ErrorsOnSaveHeader"),
			Body = self:getText("Studio.GameSettings.General.ErrorsOnSaveBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyOK"),
			},
		},

		PreviewDialog = {
			Header = self:getText("Studio.GameSettings.General.PreviewDialogHeader"),
			Body = self:getText("Studio.GameSettings.General.PreviewDialogBody"),
			Link = self:getText("Studio.GameSettings.General.PreviewDialogLink"),
		},

		CancelDialog = {
			Header = self:getText("Studio.GameSettings.General.CancelDialogHeader"),
			Body = self:getText("Studio.GameSettings.General.CancelDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyNo"),
				self:getText("Studio.GameSettings.General.ReplyYes"),
			},
		},

		DeleteDialog = {
			Header = self:getText("Studio.GameSettings.General.DeleteDialogHeader"),
			Body = self:getText("Studio.GameSettings.General.DeleteDialogBody"),
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyNo"),
				self:getText("Studio.GameSettings.General.ReplyYes"),
			},
		},

		ContentDialog = {
			Header = self:getText("Studio.GameSettings.General.ContentDialogHeader"),
			Body = self:getText("Studio.GameSettings.General.ContentDialogBody"),
			Entries = {
				self:getText("Studio.GameSettings.General.ContentDialogItem1"),
				self:getText("Studio.GameSettings.General.ContentDialogItem2"),
				self:getText("Studio.GameSettings.General.ContentDialogItem3"),
				self:getText("Studio.GameSettings.General.ContentDialogItem4"),
				self:getText("Studio.GameSettings.General.ContentDialogItem5"),
			},
			Buttons = {
				self:getText("Studio.GameSettings.General.ReplyDisagree"),
				self:getText("Studio.GameSettings.General.ReplyAgree"),
			},
		},

		AddPrompts = {
			GameIcon = self:getText("Studio.GameSettings.General.GameIconPrompt"),
			Thumbnail = self:getText("Studio.GameSettings.General.ThumbnailPrompt"),
		},

		Errors = {
			ErrorDevSubFiltered = self:getFormatTextFunc("Studio.GameSettings.General.ErrorDevSubFiltered"),
			ErrorDevSubMaxPrice = self:getFormatTextFunc("Studio.GameSettings.General.ErrorDevSubMaxPrice"),
			ErrorDevSubInvalidPrice = self:getText("Studio.GameSettings.General.ErrorDevSubInvalidPrice"),
			ErrorNameModerated = self:getText("Studio.GameSettings.General.ErrorNameModerated"),
			ErrorNameEmpty = self:getText("Studio.GameSettings.General.ErrorNameEmpty"),
			ErrorDescModerated = self:getText("Studio.GameSettings.General.ErrorDescModerated"),
			ErrorImageLimit = self:getText("Studio.GameSettings.General.ErrorImageLimit"),
			ErrorImageNotRecognized = self:getText("Studio.GameSettings.General.ErrorImageNotRecognized"),
			ErrorImageRequired = self:getText("Studio.GameSettings.General.ErrorImageRequired"),
			ErrorNoDevices = self:getText("Studio.GameSettings.General.ErrorNoDevices"),
		},

		DevSubs = {
			EditHeader = self:getText("Studio.GameSettings.General.DevSubsEditHeader"),
			NewHeader = self:getText("Studio.GameSettings.General.DevSubsNewHeader"),
			DiscontinuedHeader = self:getText("Studio.GameSettings.General.DevSubsDiscontinuedHeader"),
			ListHeader = self:getText("Studio.GameSettings.General.DevSubsListHeader"),

			Name = self:getText("Studio.GameSettings.General.DevSubsName"),
			Description = self:getText("Studio.GameSettings.General.DevSubsDescription"),
			Image = self:getText("Studio.GameSettings.General.DevSubsImage"),
			Price = self:getText("Studio.GameSettings.General.DevSubsPrice"),
			Duration = self:getText("Studio.GameSettings.General.DevSubsDuration"),
			Id = self:getText("Studio.GameSettings.General.DevSubsId"),
			Subscribers = self:getText("Studio.GameSettings.General.DevSubsSubscribers"),
			Active = self:getText("Studio.GameSettings.General.DevSubsActive"),

			CreateAction = self:getText("Studio.GameSettings.General.DevSubsCreateAction"),
			DeleteAction = self:getText("Studio.GameSettings.General.DevSubsDeleteAction"),
			DiscontinueAction = self:getText("Studio.GameSettings.General.DevSubsDiscontinueAction"),

			Unsaved = self:getText("Studio.GameSettings.General.DevSubsUnsaved"),

			IsActive = self:getText("Studio.GameSettings.General.DevSubsIsActive"),
			IsNotActive = self:getText("Studio.GameSettings.General.DevSubsIsNotActive"),

			DiscontinueTitle = self:getText("Studio.GameSettings.General.DevSubsDiscontinueTitle"),
			DiscontinueHeader = self:getText("Studio.GameSettings.General.DevSubsDiscontinueHeader"),
			DiscontinueDescription = self:getText("Studio.GameSettings.General.DevSubsDiscontinueDescription"),
			DiscontinueConfirm = self:getText("Studio.GameSettings.General.DevSubsDiscontinueConfirm"),
			DiscontinueCancel = self:getText("Studio.GameSettings.General.ReplyNo"),
		},

		Morpher = {
			Title = {
				Presets = self:getText("Studio.GameSettings.General.TitlePresets"),
				AvatarType = self:getText("Studio.GameSettings.General.TitleAvatarType"),
				Animation = self:getText("Studio.GameSettings.General.TitleAnimation"),
				Collision = self:getText("Studio.GameSettings.General.TitleCollision"),
				Scale = self:getText("Studio.GameSettings.General.TitleScale"),
				TitleBodyParts = self:getText("Studio.GameSettings.General.TitleBodyParts"),
				TitleClothing = self:getText("Studio.GameSettings.General.TitleClothing"),
			},

			Scale = {
				Height = self:getText("Studio.GameSettings.General.ScaleHeight"),
				Width = self:getText("Studio.GameSettings.General.ScaleWidth"),
				Head = self:getText("Studio.GameSettings.General.ScaleHead"),
				BodyType = self:getText("Studio.GameSettings.General.ScaleBodyType"),
				Proportions = self:getText("Studio.GameSettings.General.ScaleProportions"),
			},

			Part = {
				Face = self:getText("Studio.GameSettings.General.PartFace"),
				Head = self:getText("Studio.GameSettings.General.PartHead"),
				Torso = self:getText("Studio.GameSettings.General.PartTorso"),
				LeftArm = self:getText("Studio.GameSettings.General.PartLeftArm"),
				RightArm = self:getText("Studio.GameSettings.General.PartRightArm"),
				LeftLeg = self:getText("Studio.GameSettings.General.PartLeftLeg"),
				RightLeg = self:getText("Studio.GameSettings.General.PartRightLeg"),
			},

			Clothing = {
				TShirt = self:getText("Studio.GameSettings.General.ClothingTShirt"),
				Shirt = self:getText("Studio.GameSettings.General.ClothingShirt"),
				Pants = self:getText("Studio.GameSettings.General.ClothingPants"),
			},

			Presets = {
				Default = self:getText("Studio.GameSettings.General.PresetDefault"),
				ClassicScale = self:getText("Studio.GameSettings.General.PresetClassicScale"),
				FullClassic = self:getText("Studio.GameSettings.General.PresetFullClassic"),
				Rthro = self:getText("Studio.GameSettings.General.PresetRthro"),
				PlayerChoice = self:getText("Studio.GameSettings.General.PresetPlayerChoice"),
			},

			AvatarType = {
				R6 = self:getText("Studio.GameSettings.General.AvatarTypeR6"),
				R15 = self:getText("Studio.GameSettings.General.AvatarTypeR15"),
				PlayerChoice = self:getText("Studio.GameSettings.General.AvatarTypePlayerChoice"),
				Warning = self:getText("Studio.GameSettings.General.AvatarTypeWarning"),
			},

			Animation = {
				Standard = self:getText("Studio.GameSettings.General.AnimationStandard"),
				PlayerChoice = self:getText("Studio.GameSettings.General.AnimationPlayerChoice"),
			},

			Collision = {
				InnerBox = self:getText("Studio.GameSettings.General.CollisionInnerBox"),
				OuterBox = self:getText("Studio.GameSettings.General.CollisionOuterBox"),
			},

			AvatarOverrides = {
				Prompt = self:getText("Studio.GameSettings.General.AvatarOverridePrompt"),
				Item = self:getText("Studio.GameSettings.General.AvatarOverrideItem"),
				Id = self:getText("Studio.GameSettings.General.AvatarOverrideId"),
				Empty = self:getText("Studio.GameSettings.General.ErrorOverrideEmpty"),
			},
		},

		PublishingIsRequired = {
			FormattableSentence = self:getFormatTextFunc("Studio.GameSettings.General.PublishIsRequiredSentence1"),
			HyperlinkText = self:getText("Studio.GameSettings.General.PublishIsRequiredHyperlink"),

			AddingCollaborators = self:getText("Studio.GameSettings.AccessPermissions.PublishRequiredForCollaborators"),
		},

		AccessPermissions = {
			ActionDropdown = {
				NoAccessLabel = self:getText("Studio.GameSettings.AccessPermissions.NoAccessLabel"),
				PlayLabel = self:getText("Studio.GameSettings.AccessPermissions.PlayLabel"),
				EditLabel = self:getText("Studio.GameSettings.AccessPermissions.EditLabel"),
				AdminLabel = self:getText("Studio.GameSettings.AccessPermissions.AdminLabel"),
				OwnerLabel = self:getText("Studio.GameSettings.AccessPermissions.OwnerLabel"),
				MultipleLabel = self:getText("Studio.GameSettings.AccessPermissions.MultipleLabel"),

				NoAccessDescription = self:getText("Studio.GameSettings.AccessPermissions.NoAccessDescription"),
				PlayDescription = self:getText("Studio.GameSettings.AccessPermissions.PlayDescription"),
				EditDescription = self:getText("Studio.GameSettings.AccessPermissions.EditDescription"),
				AdminDescription = self:getText("Studio.GameSettings.AccessPermissions.AdminDescription"),
			},

			Collaborators = {
				FriendsCollaboratorType = self:getText("Studio.GameSettings.AccessPermissions.FriendsCollaboratorType"),
				UsersCollaboratorType = self:getText("Studio.GameSettings.AccessPermissions.UsersCollaboratorType"),
				GroupsCollaboratorType = self:getText("Studio.GameSettings.AccessPermissions.GroupsCollaboratorType"),
				MyFriendsCollaborator = self:getText("Studio.GameSettings.AccessPermissions.MyFriendsCollaborator"),
			},

			Searchbar = {
				DefaultText = self:getText("Studio.GameSettings.AccessPermissions.CollaboratorSearchbarDefaultText"),
				TooManyCollaboratorsText = self:getFormatTextFunc("Studio.GameSettings.AccessPermissions.CollaboratorSearchbarTooManyText1"),
				NoResultsText = self:getText("Studio.GameSettings.AccessPermissions.CollaboratorSearchbarNoResultsText"),
			},

			TeamCreateWarning = self:getText("Studio.GameSettings.AccessPermissions.TeamCreateWarning"),
		}
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