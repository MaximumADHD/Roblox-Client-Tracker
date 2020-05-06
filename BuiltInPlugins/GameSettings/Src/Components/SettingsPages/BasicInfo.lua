--[[
	Settings page for Basic Info settings.
		- Game name and description
		- Game privacy settings (who is allowed to play the game)
		- Playable Devices (which devices can run this game)
		- Genre
		- Thumbnails (Screenshots and Video)
		- Game Icon

	Settings:
		string Name - The game name
		bool IsActive - Whether the game is public or private
		bool IsFriendsOnly - Whether the game is open to everyone or only friends/group members
		string Group - The name of the group that owns this game, if one does
		string Description - The game description
		string Genre - The genre of this game
		table Devices - A table of which devices are playable
		table Thumbnails - A table of this game's thumbnails
		list Order - The order in which this game's thumbnails display
		string GameIcon - The rbxassetid url of the game's icon, or "None" if no icon exists.

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local PageName = FFlagStudioConvertGameSettingsToDevFramework and "BasicInfo" or "Basic Info"

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local FFlagStudioGameSettingsDisablePlayabilityForDrafts = settings():GetFFlag("StudioGameSettingsDisablePlayabilityForDrafts")

local nameErrors = {
	Moderated = "ErrorNameModerated",
	Empty = "ErrorNameEmpty",
}

local descriptionErrors = {
	Moderated = "ErrorDescModerated",
}

local imageErrors = {
	UploadingTooQuickly = "ErrorImageLimit",
	ImageNotRecognized = "ErrorImageNotRecognized",
}

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)

local showDialog = require(Plugin.Src.Consumers.showDialog)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local TitledFrame = UILibrary.Component.TitledFrame
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)
local RoundTextBox = UILibrary.Component.RoundTextBox
local Dropdown = require(Plugin.Src.Components.Dropdown)
local Separator = require(Plugin.Src.Components.Separator)
local ThumbnailController = require(Plugin.Src.Components.Thumbnails.ThumbnailController)
local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)
local Header = require(Plugin.Src.Components.Header)
local PlayabilityWidget = require(Plugin.Src.Components.PlayabilityWidget)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)
local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local BrowserUtils = require(Plugin.Src.Util.BrowserUtils)
local FileUtils = require(Plugin.Src.Util.FileUtils)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local errors = state.Settings.Errors
	local loadedProps = {
		Name = getValue("name"),
		Group = getValue("creatorType") == "Group" and getValue("creatorName"),
		Description = getValue("description"),
		Genre = getValue("genre"),
		Devices = getValue("playableDevices"),
		Thumbnails = getValue("thumbnails"),
		ThumbnailOrder = getValue("thumbnailOrder"),
		GameIcon = getValue("gameIcon"),
		RootPlaceId = getValue("rootPlaceId"),
		PrivacyType = getValue("privacyType"),

		NameError = errors.name,
		DescriptionError = errors.description,
		DevicesError = errors.playableDevices,

		IsCurrentlyActive =  state.Settings.Current.isActive,
	}

	loadedProps.ThumbnailsError = errors.thumbnails
	loadedProps.GameIconError = errors.gameIcon

	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		ThumbnailsChanged = setValue("thumbnails"),
		GenreChanged = setValue("genre"),

		NameChanged = function(text)
			dispatch(AddChange("name", text))
			local nameLength = string.len(text)
			if nameLength == 0 or string.len(string.gsub(text, " ", "")) == 0 then
				dispatch(AddErrors({name = "Empty"}))
			elseif nameLength > MAX_NAME_LENGTH then
				dispatch(AddErrors({name = "TooLong"}))
			end
		end,
		DescriptionChanged = function(text)
			dispatch(AddChange("description", text))
			local descriptionLength = string.len(text)
			if descriptionLength > MAX_DESCRIPTION_LENGTH then
				dispatch(AddErrors({description = "TooLong"}))
			end
		end,
		DevicesChanged = function(devices)
			dispatch(AddChange("playableDevices", devices))
			for _, value in pairs(devices) do
				if value then
					return
				end
			end
			dispatch(AddErrors({playableDevices = "NoDevices"}))
		end,
	}

	dispatchFuncs.GameIconChanged = setValue("gameIcon")
	dispatchFuncs.AddThumbnails = function(newThumbnails, oldThumbnails, oldOrder)
		local thumbnails = Cryo.Dictionary.join(oldThumbnails, {})
		local order = Cryo.List.join(oldOrder, {})
		for _, thumbnail in pairs(newThumbnails) do
			local id = thumbnail:GetTemporaryId()
			table.insert(order, id)
			thumbnails[id] = {
				asset = thumbnail,
				tempId = id,
			}
		end
		dispatch(AddChange("thumbnails", thumbnails))
		dispatch(AddChange("thumbnailOrder", order))

		if #order > DEPRECATED_Constants.MAX_THUMBNAILS then
			dispatch(AddErrors({thumbnails = "TooMany"}))
		end
	end

	dispatchFuncs.ThumbnailOrderChanged = function(order)
		dispatch(AddChange("thumbnailOrder", order))
		if #order > DEPRECATED_Constants.MAX_THUMBNAILS then
			dispatch(AddErrors({thumbnails = "TooMany"}))
		end
	end

	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local devices = props.Devices

	local localizedGenreList
	if FFlagStudioConvertGameSettingsToDevFramework then
		localizedGenreList = {
			{Id = "All", Title = localized:getText("General", "GenreAll")},
			{Id = "Adventure", Title = localized:getText("General", "GenreAdventure")},
			{Id = "Tutorial", Title = localized:getText("General", "GenreBuilding")},
			{Id = "Funny", Title = localized:getText("General", "GenreComedy")},
			{Id = "Ninja", Title = localized:getText("General", "GenreFighting")},
			{Id = "FPS", Title = localized:getText("General", "GenreFPS")},
			{Id = "Scary", Title = localized:getText("General", "GenreHorror")},
			{Id = "Fantasy", Title = localized:getText("General", "GenreMedieval")},
			{Id = "War", Title = localized:getText("General", "GenreMilitary")},
			{Id = "Pirate", Title = localized:getText("General", "GenreNaval")},
			{Id = "RPG", Title = localized:getText("General", "GenreRPG")},
			{Id = "SciFi", Title = localized:getText("General", "GenreSciFi")},
			{Id = "Sports", Title = localized:getText("General", "GenreSports")},
			{Id = "TownAndCity", Title = localized:getText("General", "GenreTownAndCity")},
			{Id = "WildWest", Title = localized:getText("General", "GenreWestern")},
		}
	end

	local nameError
	if FFlagStudioConvertGameSettingsToDevFramework then
		if props.NameError then
			nameError = localized:getText("General", nameErrors[props.NameError])
		else
			nameError = nil
		end
	else
		nameError = localized.Errors[nameErrors[props.NameError]]
	end

	local descriptionError
	if FFlagStudioConvertGameSettingsToDevFramework then
		if props.DescriptionError then
			descriptionError = localized:getText("General", descriptionErrors[props.DescriptionError])
		else
			descriptionError = nil
		end
	else
		descriptionError = localized.Errors[descriptionErrors[props.DescriptionError]]
	end

	local gameIconError
	if FFlagStudioConvertGameSettingsToDevFramework then
		if props.GameIconError then
			gameIconError = localized:getText("General", imageErrors[props.GameIconError])
		else
			gameIconError = nil
		end
	else
		gameIconError = localized.Errors[imageErrors[props.GameIconError]]
	end

	local thumbnailError
	if FFlagStudioConvertGameSettingsToDevFramework then
		if props.ThumbnailsError then
			thumbnailError = localized:getText("General", imageErrors[props.ThumbnailsError])
		else
			thumbnailError = nil
		end
	else
		thumbnailError = localized.Errors[imageErrors[props.ThumbnailsError]]
	end

	local devicesError = nil
	if FFlagStudioConvertGameSettingsToDevFramework then
		if props.DevicesError then
			devicesError = localized:getText("General", "ErrorNoDevices")
		end
	else
		if props.DevicesError then
			devicesError = localized.Errors.ErrorNoDevices
		end
	end

	return {
		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category"..PageName) or localized.Category[PageName],
			LayoutOrder = 0,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleName") or localized.Title.Name,
			MaxHeight = 60,
			LayoutOrder = 10,
			TextSize = DEPRECATED_Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = props.Name ~= nil,
				ErrorMessage = nameError,
				MaxLength = MAX_NAME_LENGTH,
				Text = props.Name or "",
				TextSize = DEPRECATED_Constants.TEXT_SIZE,

				SetText = props.NameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleDescription") or localized.Title.Description,
			MaxHeight = 150,
			LayoutOrder = 20,
			TextSize = DEPRECATED_Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Height = 130,
				Multiline = true,

				Active = props.Description ~= nil,
				ErrorMessage = descriptionError,
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = props.Description or "",
				TextSize = DEPRECATED_Constants.TEXT_SIZE,

				SetText = props.DescriptionChanged,

				FocusChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
		}),

		Separator = Roact.createElement(Separator, {
			LayoutOrder = 30,
		}),

		Icon = Roact.createElement(GameIconWidget, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleGameIcon") or localized.Title.GameIcon,
			LayoutOrder = 60,
			Enabled = props.GameIcon ~= nil,
			Icon = props.GameIcon,
			TutorialEnabled = true,
			AddIcon = function()
				local icon
				if FFlagStudioConvertGameSettingsToDevFramework then
					icon = FileUtils.PromptForGameIcon(page, localized)
				else
					icon = FileUtils.PromptForGameIcon(page)
				end

				if icon then
					props.GameIconChanged(icon)
				end
			end,
			ErrorMessage = gameIconError,
		}),

		Separator3 = Roact.createElement(Separator, {
			LayoutOrder = 70,
		}),

		Thumbnails = Roact.createElement(ThumbnailController, {
			LayoutOrder = 80,
			Enabled = props.Thumbnails ~= nil,
			Thumbnails = props.Thumbnails,
			Order = props.ThumbnailOrder,
			AddThumbnail = function()
				local newThumbnails
				if FFlagStudioConvertGameSettingsToDevFramework then
					newThumbnails = FileUtils.PromptForThumbnails(page, localized)
				else
					newThumbnails = FileUtils.PromptForThumbnails(page)
				end

				if newThumbnails then
					props.AddThumbnails(newThumbnails, props.Thumbnails, props.ThumbnailOrder)
				end
			end,
			ErrorMessage = thumbnailError,
			ThumbnailsChanged = props.ThumbnailsChanged,
			ThumbnailOrderChanged = props.ThumbnailOrderChanged,
		}),

		Separator4 = Roact.createElement(Separator, {
			LayoutOrder = 90,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleGenre") or localized.Title.Genre,
			MaxHeight = 38,
			LayoutOrder = 100,
			TextSize = DEPRECATED_Constants.TEXT_SIZE,
			ZIndex = 3,
		}, {
			Selector = Roact.createElement(Dropdown, {
				Entries = FFlagStudioConvertGameSettingsToDevFramework and localizedGenreList or localized.Genres,
				Enabled = props.Genre ~= nil,
				Current = props.Genre,
				CurrentChanged = props.GenreChanged,

				OpenChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
		}),

		Separator5 = Roact.createElement(Separator, {
			LayoutOrder = 110,
		}),

		Devices = Roact.createElement(CheckBoxSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleDevices") or localized.Title.Devices,
			LayoutOrder = 120,
			Boxes = {{
					Id = "Computer",
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "DeviceComputer") or localized.Devices.Computer,
					Selected = devices and devices.Computer or false
				}, {
					Id = "Phone",
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "DevicePhone") or localized.Devices.Phone,
					Selected = devices and devices.Phone or false
				}, {
					Id = "Tablet",
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "DeviceTablet") or localized.Devices.Tablet,
					Selected = devices and devices.Tablet or false
				}, {
					Id = "Console",
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "DeviceConsole") or localized.Devices.Console,
					Selected = devices and devices.Console or false
				},
			},
			Enabled = devices ~= nil,
			ErrorMessage = devicesError,
			--Functionality
			EntryClicked = function(box)
				if box.Id == "Console" and not box.Selected then
					local dialogProps = {
						Size = Vector2.new(460, 308),
						Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "ContentDialogHeader") or localized.ContentDialog.Header,
						Header = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "ContentDialogBody") or localized.ContentDialog.Body,
						Entries = FFlagStudioConvertGameSettingsToDevFramework and {
							localized:getText("General", "ContentDialogItem1"),
							localized:getText("General", "ContentDialogItem2"),
							localized:getText("General", "ContentDialogItem3"),
							localized:getText("General", "ContentDialogItem4"),
						} or localized.ContentDialog.Entries,
						Buttons = FFlagStudioConvertGameSettingsToDevFramework and {
							localized:getText("General", "ReplyDisagree"),
							localized:getText("General", "ReplyAgree")
						} or localized.ContentDialog.Buttons,
					}
					if not showDialog(page, ListDialog, dialogProps):await() then
						return
					end
				end
				local newDevices = Cryo.Dictionary.join(devices, {
					[box.Id] = not box.Selected,
				})
				props.DevicesChanged(newDevices)
			end,
		}),
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function BasicInfo(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return BasicInfo
