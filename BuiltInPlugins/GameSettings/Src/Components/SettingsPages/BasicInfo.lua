--[[
	Settings page for Basic Info settings.
		- Game name and description
		- Game privacy settings (who is allowed to play the game)
		- Playable Devices (which devices can run this game)

	Settings:
		string Name - The game name
		bool IsActive - Whether the game is public or private
		bool IsFriendsOnly - Whether the game is open to everyone or only friends
		string Description - The game description
		table Devices - A map of which devices are playable

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local nameErrors = {
	Moderated = "The name didn't go through our moderation. Please revise it and try again.",
	Empty = "Name cannot be empty.",
}

local descriptionErrors = {
	Moderated = "The description didn't go through our moderation. Please revise it and try again.",
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
local Separator = require(Plugin.Src.Components.Separator)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)
local ListDialog = require(Plugin.Src.Components.Dialog.ListDialog)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)

local BasicInfo = Roact.PureComponent:extend("BasicInfo")

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
			Content = {
				TextBox = Roact.createElement(RoundTextBox, {
					Active = self.props.Name ~= nil,
					ErrorMessage = nameErrors[self.props.NameError],
					MaxLength = MAX_NAME_LENGTH,
					Text = self.props.Name or "",

					SetText = self.props.NameChanged,
				})
			}
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = "Description",
			MaxHeight = 150,
			LayoutOrder = 2,
			Content = {
				TextBox = Roact.createElement(RoundTextBox, {
					Height = 130,
					Multiline = true,

					Active = self.props.Description ~= nil,
					ErrorMessage = descriptionErrors[self.props.DescriptionError],
					MaxLength = MAX_DESCRIPTION_LENGTH,
					Text = self.props.Description or "",

					SetText = self.props.DescriptionChanged,
				})
			}
		}),

		Separator = Roact.createElement(Separator, {
			LayoutOrder = 3,
		}),

		Playability = Roact.createElement(RadioButtonSet, {
			Title = "Playability",
			Description = "Who can see this game?",
			LayoutOrder = 4,
			Buttons = {{
					Id = true,
					Title = "Public",
					Description = "Anyone on Roblox"
				}, {
					Id = "Friends",
					Title = "Friends",
					Description = "Friends on Roblox"
				}, {
					Id = false,
					Title = "Only Me",
					Description = "Only available to yourself"
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
			end,
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Devices = Roact.createElement(CheckBoxSet, {
			Title = "Playable Devices",
			LayoutOrder = 6,
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
			Description = settingFromState(state.Settings, "description"),
			Devices = settingFromState(state.Settings, "playableDevices"),

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
			IsActiveChanged = function(button)
				dispatch(AddChange("isActive", button.Id))
			end,
			IsFriendsOnlyChanged = function(isFriendsOnly)
				dispatch(AddChange("isFriendsOnly", isFriendsOnly))
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