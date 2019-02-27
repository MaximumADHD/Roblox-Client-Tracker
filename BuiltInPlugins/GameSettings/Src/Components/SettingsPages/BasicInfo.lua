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

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local FFlagGameSettingsImageUploadingEnabled = settings():GetFFlag("GameSettingsImageUploadingEnabled")
local FFlagGameSettingsEnforceMaxThumbnails = settings():GetFFlag("GameSettingsEnforceMaxThumbnails")
local FFlagStudioRenameLocalAssetToFile = settings():GetFFlag("StudioRenameLocalAssetToFile")

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

local TitledFrame = require(Plugin.Src.Components.TitledFrame)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)
local RoundTextBox = require(Plugin.Src.Components.RoundTextBox)
local Dropdown = require(Plugin.Src.Components.Dropdown)
local Separator = require(Plugin.Src.Components.Separator)
local ThumbnailController = require(Plugin.Src.Components.Thumbnails.ThumbnailController)
local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)

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

-- Deprecated, remove with FFlagStudioRenameLocalAssetToFile
local DEPRECATED_LocalAssetUtils = require(Plugin.Src.Util.LocalAssetUtils)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local errors = state.Settings.Errors
	local loadedProps = {
		Name = getValue("name"),
		IsActive = getValue("isActive"),
		IsFriendsOnly = getValue("isFriendsOnly"),
		Group = getValue("creatorType") == "Group" and getValue("creatorName"),
		Description = getValue("description"),
		Genre = getValue("genre"),
		Devices = getValue("playableDevices"),
		Thumbnails = getValue("thumbnails"),
		ThumbnailOrder = getValue("thumbnailOrder"),
		GameIcon = getValue("gameIcon"),
		RootPlaceId = getValue("rootPlaceId"),

		NameError = errors.name,
		DescriptionError = errors.description,
		DevicesError = errors.playableDevices,
	}

	if FFlagGameSettingsImageUploadingEnabled then
		loadedProps.ThumbnailsError = errors.thumbnails
		loadedProps.GameIconError = errors.gameIcon
	end

	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
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
		IsActiveChanged = function(button, willShutdown)
			if willShutdown then
				dispatch(AddWarning("isActive"))
			else
				dispatch(DiscardWarning("isActive"))
			end
			dispatch(AddChange("isActive", button.Id))
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

	if FFlagGameSettingsImageUploadingEnabled then
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

			if FFlagGameSettingsEnforceMaxThumbnails then
				if #order > Constants.MAX_THUMBNAILS then
					dispatch(AddErrors({thumbnails = "TooMany"}))
				end
			end
		end
	end

	if FFlagGameSettingsEnforceMaxThumbnails then
		dispatchFuncs.ThumbnailOrderChanged = function(order)
			dispatch(AddChange("thumbnailOrder", order))
			if #order > Constants.MAX_THUMBNAILS then
				dispatch(AddErrors({thumbnails = "TooMany"}))
			end
		end
	else
		dispatchFuncs.ThumbnailOrderChanged = setValue("thumbnailOrder")
	end

	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local devices = props.Devices

	return {
		Name = Roact.createElement(TitledFrame, {
			Title = localized.Title.Name,
			MaxHeight = 60,
			LayoutOrder = 1,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = props.Name ~= nil,
				ErrorMessage = localized.Errors[nameErrors[props.NameError]],
				MaxLength = MAX_NAME_LENGTH,
				Text = props.Name or "",

				SetText = props.NameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = localized.Title.Description,
			MaxHeight = 150,
			LayoutOrder = 2,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Height = 130,
				Multiline = true,

				Active = props.Description ~= nil,
				ErrorMessage = localized.Errors[descriptionErrors[props.DescriptionError]],
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = props.Description or "",

				SetText = props.DescriptionChanged,

				FocusChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
		}),

		Separator = Roact.createElement(Separator, {
			LayoutOrder = 3,
		}),

		Playability = Roact.createElement(RadioButtonSet, {
			Title = localized.Title.Playability,
			Description = localized.Playability.Header,
			LayoutOrder = 4,
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
					local willShutdown = props.IsActive and not button.Id
					props.IsActiveChanged(button, willShutdown)
				end
			end,
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Icon = Roact.createElement(GameIconWidget, {
			LayoutOrder = 6,
			Enabled = props.GameIcon ~= nil,
			Icon = props.GameIcon,
			AddIcon = function()
				if FFlagGameSettingsImageUploadingEnabled then
					local icon
					if FFlagStudioRenameLocalAssetToFile then
						icon = FileUtils.PromptForGameIcon(page)
					else
						icon = DEPRECATED_LocalAssetUtils.PromptForGameIcon(page)
					end

					if icon then
						props.GameIconChanged(icon)
					end
				else
					BrowserUtils.OpenPlaceSettings(props.RootPlaceId)
				end
			end,
			ErrorMessage = FFlagGameSettingsImageUploadingEnabled
				and localized.Errors[imageErrors[props.GameIconError]],
		}),

		Separator3 = Roact.createElement(Separator, {
			LayoutOrder = 7,
		}),

		Thumbnails = Roact.createElement(ThumbnailController, {
			LayoutOrder = 8,
			Enabled = props.Thumbnails ~= nil,
			Thumbnails = props.Thumbnails,
			Order = props.ThumbnailOrder,
			AddThumbnail = function()
				if FFlagGameSettingsImageUploadingEnabled then
					local newThumbnails
					if FFlagStudioRenameLocalAssetToFile then
						newThumbnails = FileUtils.PromptForThumbnails(page)
					else
						newThumbnails = DEPRECATED_LocalAssetUtils.PromptForThumbnails(page)
					end

					if newThumbnails then
						props.AddThumbnails(newThumbnails, props.Thumbnails, props.ThumbnailOrder)
					end
				else
					BrowserUtils.OpenPlaceSettings(props.RootPlaceId)
				end
			end,
			ErrorMessage = FFlagGameSettingsImageUploadingEnabled
				and localized.Errors[imageErrors[props.ThumbnailsError]],
			ThumbnailsChanged = props.ThumbnailsChanged,
			ThumbnailOrderChanged = props.ThumbnailOrderChanged,
		}),

		Separator4 = Roact.createElement(Separator, {
			LayoutOrder = 9,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localized.Title.Genre,
			MaxHeight = 38,
			LayoutOrder = 10,
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
			LayoutOrder = 11,
		}),

		Devices = Roact.createElement(CheckBoxSet, {
			Title = localized.Title.Devices,
			LayoutOrder = 12,
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

local SettingsPage = createSettingsPage("Basic Info", loadValuesToProps, dispatchChanges)

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