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
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
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

local BasicInfo = Roact.PureComponent:extend("BasicInfo")

function BasicInfo:init()
	self.setPageScrollingDisabled = function(elementSelected)
		self.props.SetScrollbarEnabled(not elementSelected)
	end
end

function BasicInfo:render()
	local devices = self.props.Devices

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, Constants.ELEMENT_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
			end,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = "Name",
			MaxHeight = 60,
			LayoutOrder = 1,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = self.props.Name ~= nil,
				ErrorMessage = nameErrors[self.props.NameError],
				MaxLength = MAX_NAME_LENGTH,
				Text = self.props.Name or "",

				SetText = self.props.NameChanged,
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

				Active = self.props.Description ~= nil,
				ErrorMessage = descriptionErrors[self.props.DescriptionError],
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = self.props.Description or "",

				SetText = self.props.DescriptionChanged,

				FocusChanged = self.setPageScrollingDisabled,
				HoverChanged = self.setPageScrollingDisabled,
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
					Title = self.props.Group and "Group Members" or "Friends",
					Description = self.props.Group and ("Members of " .. self.props.Group) or "Friends on Roblox"
				}, {
					Id = false,
					Title = "Private",
					Description = "Only developers of this game"
				},
			},
			Enabled = self.props.IsActive ~= nil,
			--Functionality
			Selected = self.props.IsFriendsOnly and "Friends" or self.props.IsActive,
			SelectionChanged = function(button)
				if button.Id == "Friends" then
					self.props.IsFriendsOnlyChanged(true)
					self.props.IsActiveChanged({Id = true})
				else
					if FFlagGameSettingsShowWarningsOnSave then
						self.props.IsFriendsOnlyChanged(false)
						local willShutdown = self.props.IsActive and not button.Id
						self.props.IsActiveChanged(button, willShutdown)
					else
						if button.Id == false then
							local dialogProps = {
								Title = "Make Private",
								Header = "Would you like to make it private?",
								Description = "Making a game private will shut down any running games.",
								Buttons = {"No", "Yes"},
							}
							if not showDialog(self, WarningDialog, dialogProps):await() then
								return
							end
						end
						self.props.IsFriendsOnlyChanged(false)
						self.props.IsActiveChanged(button)
					end
				end
			end,
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Icon = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(GameIconWidget, {
			LayoutOrder = 6,
			Enabled = self.props.GameIcon ~= nil,
			Icon = self.props.GameIcon,
			AddIcon = function()
				-- TODO: Replace this with an actual solution when able to upload images
				BrowserUtils.OpenPlaceSettings(self.props.RootPlaceId)
			end,
		}),

		Separator3 = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(Separator, {
			LayoutOrder = 7,
		}),

		Thumbnails = FFlagStudioLuaGameSettingsDialog3 and Roact.createElement(ThumbnailController, {
			LayoutOrder = 8,
			Enabled = self.props.Thumbnails ~= nil,
			Thumbnails = self.props.Thumbnails,
			Order = self.props.ThumbnailOrder,
			AddThumbnail = function()
				-- TODO: Replace this with an actual solution when able to upload images
				BrowserUtils.OpenPlaceSettings(self.props.RootPlaceId)
			end,
			ThumbnailsChanged = self.props.ThumbnailsChanged,
			ThumbnailOrderChanged = self.props.ThumbnailOrderChanged,
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
				Enabled = self.props.Genre ~= nil,
				Current = self.props.Genre,
				CurrentChanged = self.props.GenreChanged,

				OpenChanged = self.setPageScrollingDisabled,
				HoverChanged = self.setPageScrollingDisabled,
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
			ErrorMessage = (self.props.DevicesError and "You must select at least one playable device.") or nil,
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
					if not showDialog(self, ListDialog, dialogProps):await() then
						return
					end
				end
				local newDevices = Cryo.Dictionary.join(devices, {
					[box.Id] = not box.Selected,
				})
				self.props.DevicesChanged(newDevices)
			end,
		}),
	})
end

BasicInfo = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			Name = settingFromState(state.Settings, "name"),
			IsActive = settingFromState(state.Settings, "isActive"),
			IsFriendsOnly = settingFromState(state.Settings, "isFriendsOnly"),
			Group = settingFromState(state.Settings, "creatorType") == "Group"
				and settingFromState(state.Settings, "creatorName"),
			Description = settingFromState(state.Settings, "description"),
			Genre = settingFromState(state.Settings, "genre"),
			Devices = settingFromState(state.Settings, "playableDevices"),
			Thumbnails = settingFromState(state.Settings, "thumbnails"),
			ThumbnailOrder = settingFromState(state.Settings, "thumbnailOrder"),
			GameIcon = settingFromState(state.Settings, "gameIcon"),
			RootPlaceId = settingFromState(state.Settings, "rootPlaceId"),

			NameError = state.Settings.Errors.name,
			DescriptionError = state.Settings.Errors.description,
			DevicesError = state.Settings.Errors.playableDevices,
		}
	end,
	function(dispatch)
		return {
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
			IsFriendsOnlyChanged = function(isFriendsOnly)
				dispatch(AddChange("isFriendsOnly", isFriendsOnly))
			end,
			ThumbnailsChanged = function(thumbnails)
				dispatch(AddChange("thumbnails", thumbnails))
			end,
			ThumbnailOrderChanged = function(thumbnailOrder)
				dispatch(AddChange("thumbnailOrder", thumbnailOrder))
			end,
			GenreChanged = function(genre)
				dispatch(AddChange("genre", genre))
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
)(BasicInfo)

return BasicInfo