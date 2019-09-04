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

local PageName = "Basic Info"

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")
local FFlagStudioGameSettingsAccessPermissions = settings():GetFFlag("StudioGameSettingsAccessPermissions")
local FFlagStudioGameSettingsDisablePlayabilityForDrafts = game:DefineFastFlag("StudioGameSettingsDisablePlayabilityForDrafts", false)

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

local showDialog = require(Plugin.Src.Consumers.showDialog)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local TitledFrame = require(Plugin.UILibrary.Components.TitledFrame)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)
local RoundTextBox = require(Plugin.UILibrary.Components.RoundTextBox)
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
local Constants = require(Plugin.Src.Util.Constants)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

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

	if not FFlagStudioGameSettingsAccessPermissions then
		loadedProps.IsActive = getValue("isActive")
		loadedProps.IsFriendsOnly = getValue("isFriendsOnly")
	end

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
	
	if not FFlagStudioGameSettingsAccessPermissions then
		dispatchFuncs.IsFriendsOnlyChanged = setValue("isFriendsOnly")
		dispatchFuncs.IsActiveChanged = function(button, willShutdown)
			if willShutdown then
				dispatch(AddWarning("isActive"))
			else
				dispatch(DiscardWarning("isActive"))
			end
			dispatch(AddChange("isActive", button.Id))
		end
	end

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

		if #order > Constants.MAX_THUMBNAILS then
			dispatch(AddErrors({thumbnails = "TooMany"}))
		end
	end

	dispatchFuncs.ThumbnailOrderChanged = function(order)
		dispatch(AddChange("thumbnailOrder", order))
		if #order > Constants.MAX_THUMBNAILS then
			dispatch(AddErrors({thumbnails = "TooMany"}))
		end
	end
	
	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local devices = props.Devices

	return {
		Header = FFlagGameSettingsReorganizeHeaders and
		Roact.createElement(Header, {
			Title = localized.Category[PageName],
			LayoutOrder = 0,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localized.Title.Name,
			MaxHeight = 60,
			LayoutOrder = 10,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = props.Name ~= nil,
				ErrorMessage = localized.Errors[nameErrors[props.NameError]],
				MaxLength = MAX_NAME_LENGTH,
				Text = props.Name or "",
				TextSize = Constants.TEXT_SIZE,

				SetText = props.NameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = localized.Title.Description,
			MaxHeight = 150,
			LayoutOrder = 20,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Height = 130,
				Multiline = true,

				Active = props.Description ~= nil,
				ErrorMessage = localized.Errors[descriptionErrors[props.DescriptionError]],
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = props.Description or "",
				TextSize = Constants.TEXT_SIZE,

				SetText = props.DescriptionChanged,

				FocusChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
		}),

		Separator = Roact.createElement(Separator, {
			LayoutOrder = 30,
		}),

		Playability = (not FFlagStudioGameSettingsAccessPermissions and FFlagStudioGameSettingsDisablePlayabilityForDrafts) and Roact.createElement(PlayabilityWidget, {
			LayoutOrder = 40,
			Group = props.Group,
			Enabled = (props.PrivacyType ~= nil and props.PrivacyType ~= "Draft"),
			Selected = props.IsFriendsOnly and "Friends" or props.IsActive,
			SelectionChanged = function(button)
				if button.Id == "Friends" then
					props.IsFriendsOnlyChanged(true)
					props.IsActiveChanged({Id = true})
				else
					props.IsFriendsOnlyChanged(false)
					local willShutdown = (function()
						return props.IsCurrentlyActive and not button.Id
					end)()
					props.IsActiveChanged(button, willShutdown)
				end
			end,
		}),

		DEPRECATED_Playability = (not FFlagStudioGameSettingsAccessPermissions and not FFlagStudioGameSettingsDisablePlayabilityForDrafts) and Roact.createElement(RadioButtonSet, {
			Title = localized.Title.Playability,
			Description = localized.Playability.Header,
			LayoutOrder = 40,
			Buttons = {{
					Id = true,
					Title = localized.Playability.Public.Title,
					Description = localized.Playability.Public.Description,
				}, {
					Id = "Friends",
					Title = props.Group and localized.Playability.Group.Title or localized.Playability.Friends.Title,
					Description = props.Group and localized.Playability.Group.Description({group = props.Group})
						or localized.Playability.Friends.Description,
				}, {
					Id = false,
					Title = localized.Playability.Private.Title,
					Description = localized.Playability.Private.Description,
				},
			},
			Enabled = props.IsActive ~= nil,
			--Functionality
			Selected = props.IsFriendsOnly and "Friends" or props.IsActive,
			SelectionChanged = function(button)
				if button.Id == "Friends" then
					props.IsFriendsOnlyChanged(true)
					props.IsActiveChanged({Id = true})
				else
					props.IsFriendsOnlyChanged(false)
					local willShutdown = (function()
						return props.IsCurrentlyActive and not button.Id
					end)()
					props.IsActiveChanged(button, willShutdown)
				end
			end,
		}),

		Separator2 = (not FFlagStudioGameSettingsAccessPermissions) and Roact.createElement(Separator, {
			LayoutOrder = 50,
		}),

		Icon = Roact.createElement(GameIconWidget, {
			Title = localized.Title.GameIcon,
			LayoutOrder = 60,
			Enabled = props.GameIcon ~= nil,
			Icon = props.GameIcon,
			TutorialEnabled = true,
			AddIcon = function()
				local icon
				icon = FileUtils.PromptForGameIcon(page)

				if icon then
					props.GameIconChanged(icon)
				end
			end,
			ErrorMessage = localized.Errors[imageErrors[props.GameIconError]],
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
				newThumbnails = FileUtils.PromptForThumbnails(page)

				if newThumbnails then
					props.AddThumbnails(newThumbnails, props.Thumbnails, props.ThumbnailOrder)
				end
			end,
			ErrorMessage = localized.Errors[imageErrors[props.ThumbnailsError]],
			ThumbnailsChanged = props.ThumbnailsChanged,
			ThumbnailOrderChanged = props.ThumbnailOrderChanged,
		}),

		Separator4 = Roact.createElement(Separator, {
			LayoutOrder = 90,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localized.Title.Genre,
			MaxHeight = 38,
			LayoutOrder = 100,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 3,
		}, {
			Selector = Roact.createElement(Dropdown, {
				Entries = localized.Genres,
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
			Title = localized.Title.Devices,
			LayoutOrder = 120,
			Boxes = {{
					Id = "Computer",
					Title = localized.Devices.Computer,
					Selected = devices and devices.Computer or false
				}, {
					Id = "Phone",
					Title = localized.Devices.Phone,
					Selected = devices and devices.Phone or false
				}, {
					Id = "Tablet",
					Title = localized.Devices.Tablet,
					Selected = devices and devices.Tablet or false
				}, {
					Id = "Console",
					Title = localized.Devices.Console,
					Selected = devices and devices.Console or false
				},
			},
			Enabled = devices ~= nil,
			ErrorMessage = (props.DevicesError and localized.Errors.ErrorNoDevices) or nil,
			--Functionality
			EntryClicked = function(box)
				if box.Id == "Console" and not box.Selected then
					local dialogProps = {
						Size = Vector2.new(460, 308),
						Title = localized.ContentDialog.Header,
						Header = localized.ContentDialog.Body,
						Entries = localized.ContentDialog.Entries,
						Buttons = localized.ContentDialog.Buttons,
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
