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

local FFlagStudioLuaGameSettingsDialog3 = settings():GetFFlag("StudioLuaGameSettingsDialog3")
local FFlagGameSettingsShowWarningsOnSave = settings():GetFFlag("GameSettingsShowWarningsOnSave")

local nameErrors = {
	Moderated = "The name didn't go through our moderation. Please revise it and try again.",
	Empty = "Name cannot be empty.",
}

local descriptionErrors = {
	Moderated = "The description didn't go through our moderation. Please revise it and try again.",
}

local genreEntries = {
	{Id = "All", Title = "All"},
	{Id = "Adventure", Title = "Adventure"},
	{Id = "Tutorial", Title = "Building"},
	{Id = "Funny", Title = "Comedy"},
	{Id = "Ninja", Title = "Fighting"},
	{Id = "FPS", Title = "FPS"},
	{Id = "Scary", Title = "Horror"},
	{Id = "Fantasy", Title = "Medieval"},
	{Id = "War", Title = "Military"},
	{Id = "Pirate", Title = "Naval"},
	{Id = "RPG", Title = "RPG"},
	{Id = "SciFi", Title = "Sci-Fi"},
	{Id = "Sports", Title = "Sports"},
	{Id = "TownAndCity", Title = "Town and City"},
	{Id = "WildWest", Title = "Western"},
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

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local errors = state.Settings.Errors
	return {
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
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	return {
		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
		ThumbnailsChanged = setValue("thumbnails"),
		ThumbnailOrderChanged = setValue("thumbnailOrder"),
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
			if FFlagGameSettingsShowWarningsOnSave then
				if willShutdown then
					dispatch(AddWarning("isActive"))
				else
					dispatch(DiscardWarning("isActive"))
				end
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
end

--Uses props to display current settings values
local function displayContents(page)
	local props = page.props
	local devices = props.Devices

	return {
		Name = Roact.createElement(TitledFrame, {
			Title = "Name",
			MaxHeight = 60,
			LayoutOrder = 1,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = props.Name ~= nil,
				ErrorMessage = nameErrors[props.NameError],
				MaxLength = MAX_NAME_LENGTH,
				Text = props.Name or "",

				SetText = props.NameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = "Description",
			MaxHeight = 150,
			LayoutOrder = 2,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Height = 130,
				Multiline = true,

				Active = props.Description ~= nil,
				ErrorMessage = descriptionErrors[props.DescriptionError],
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
			Title = "Playability",
			Description = "Who can play this game?",
			LayoutOrder = 4,
			Buttons = {{
					Id = true,
					Title = "Public",
					Description = "Anyone on Roblox"
				}, {
					Id = "Friends",
					Title = props.Group and "Group Members" or "Friends",
					Description = props.Group and ("Members of " .. props.Group) or "Friends on Roblox"
				}, {
					Id = false,
					Title = "Private",
					Description = "Only developers of this game"
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
					if FFlagGameSettingsShowWarningsOnSave then
						props.IsFriendsOnlyChanged(false)
						local willShutdown = props.IsActive and not button.Id
						props.IsActiveChanged(button, willShutdown)
					else
						if button.Id == false then
							local dialogProps = {
								Title = "Make Private",
								Header = "Would you like to make it private?",
								Description = "Making a game private will shut down any running games.",
								Buttons = {"No", "Yes"},
							}
							if not showDialog(page, WarningDialog, dialogProps):await() then
								return
							end
						end
						props.IsFriendsOnlyChanged(false)
						props.IsActiveChanged(button)
					end
				end
			end,
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Icon = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(GameIconWidget, {
			LayoutOrder = 6,
			Enabled = props.GameIcon ~= nil,
			Icon = props.GameIcon,
			AddIcon = function()
				-- TODO: Replace this with an actual solution when able to upload images
				BrowserUtils.OpenPlaceSettings(props.RootPlaceId)
			end,
		}),

		Separator3 = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(Separator, {
			LayoutOrder = 7,
		}),

		Thumbnails = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(ThumbnailController, {
			LayoutOrder = 8,
			Enabled = props.Thumbnails ~= nil,
			Thumbnails = props.Thumbnails,
			Order = props.ThumbnailOrder,
			AddThumbnail = function()
				-- TODO: Replace this with an actual solution when able to upload images
				BrowserUtils.OpenPlaceSettings(props.RootPlaceId)
			end,
			ThumbnailsChanged = props.ThumbnailsChanged,
			ThumbnailOrderChanged = props.ThumbnailOrderChanged,
		}),

		Separator4 = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(Separator, {
			LayoutOrder = 9,
		}),

		Genre = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(TitledFrame, {
			Title = "Genre",
			MaxHeight = 38,
			LayoutOrder = 10,
		}, {
			Selector = Roact.createElement(Dropdown, {
				Entries = genreEntries,
				Enabled = props.Genre ~= nil,
				Current = props.Genre,
				CurrentChanged = props.GenreChanged,

				OpenChanged = page.setPageScrollingDisabled,
				HoverChanged = page.setPageScrollingDisabled,
			}),
		}),

		Separator5 = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(Separator, {
			LayoutOrder = 11,
		}),

		Devices = Roact.createElement(CheckBoxSet, {
			Title = "Playable Devices",
			LayoutOrder = 12,
			Boxes = {{
					Id = "Computer",
					Selected = devices and devices.Computer or false
				}, {
					Id = "Phone",
					Selected = devices and devices.Phone or false
				}, {
					Id = "Tablet",
					Selected = devices and devices.Tablet or false
				}, {
					Id = "Console",
					Selected = devices and devices.Console or false
				},
			},
			Enabled = devices ~= nil,
			ErrorMessage = (props.DevicesError and "You must select at least one playable device.") or nil,
			--Functionality
			EntryClicked = function(box)
				if box.Id == "Console" and not box.Selected then
					local dialogProps = {
						Size = Vector2.new(460, 308),
						Title = "Content Agreement",
						Header = "Do you agree that your game is controller compatible "
							.. "and contains NONE of the following?",
						Entries = {
							"Blood or Gore",
							"Intense Violence",
							"Strong Language (Swearing)",
							"Robux Gambling",
							"Drug Reference or Use",
						},
						Buttons = {"Disagree", "Agree"},
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